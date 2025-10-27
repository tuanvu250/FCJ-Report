---
title: "Blog 3"
date: "2025-09-09"
weight: 1
chapter: false
pre: " <b> 3.3. </b> "
---

# **Cách thiết lập cảnh báo tự động cho các AWS Savings Plans mới mua**

_Bởi Syed Muhammad Tawha và Dan Johns | ngày 26/06/2025 | [Amazon Simple Notification Service (SNS)](https://aws.amazon.com/vi/blogs/aws-cloud-financial-management/category/messaging/amazon-simple-notification-service-sns/), [AWS Cloud Financial Management](https://aws.amazon.com/vi/blogs/aws-cloud-financial-management/category/aws-cloud-financial-management/), [AWS CloudFormation](https://aws.amazon.com/vi/blogs/aws-cloud-financial-management/category/management-tools/aws-cloudformation/), [Cloud Cost Optimization](https://aws.amazon.com/vi/blogs/aws-cloud-financial-management/category/business-intelligence/cloud-cost-optimization/)_

###

Khi tổ chức phát triển, các nhóm FinOps cần một cái nhìn tổng thể về [AWS Savings Plans](https://aws.amazon.com/savingsplans/) để tối ưu hóa việc sử dụng. Giải pháp này giúp giám sát tự động và thiết lập cảnh báo nhằm phát hiện các Savings Plans sử dụng kém hiệu quả trong thời hạn hoàn trả hợp lệ.

Khi mua Savings Plan, bạn cam kết sử dụng trong 1 hoặc 3 năm. Các Savings Plan có cam kết theo giờ ≤ \$100 có thể được hoàn trả nếu được mua trong vòng 7 ngày gần nhất và trong cùng tháng dương lịch, miễn là bạn chưa vượt quá giới hạn hoàn trả. Sau khi tháng kết thúc (theo UTC), Savings Plans đó không thể hoàn trả.

Ở bài viết này, chúng tôi cung cấp các [AWS CloudFormation](https://aws.amazon.com/vi/cloudformation/) templates giúp tạo [AWS Step Functions](https://aws.amazon.com/step-functions/) state machine, [Amazon Simple Notification Service](https://aws.amazon.com/sns/) (SNS) topic, [Amazon EventBridge](https://aws.amazon.com/vi/eventbridge/) scheduler, và các [AWS Identity and Access Management](https://aws.amazon.com/iam/) (IAM) roles cần thiết để giám sát tự động các Savings Plans mới mua và phát hiện những gói sử dụng thấp.  

### **Tổng quan giải pháp**

Giải pháp này tuân theo AWS security best practices bằng cách tách triển khai trên hai tài khoản. Một CloudFormation stack sẽ được tạo trong [Management account](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#management-account) để thiết lập các IAM roles cần thiết để truy xuất dữ liệu sử dụng của Savings Plans. Một CloudFormation stack khác sẽ được triển khai trong [Member Account](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#member-account) đã chọn trong [AWS Organization](https://aws.amazon.com/vi/organizations/) của bạn.

CloudFormation stack trong Member Account tạo một state machine thực hiện assume role trong Management Account của bạn và phân tích tất cả Savings Plans trong Management Account, bao gồm cả những gói đã được mua trong toàn bộ tổ chức của bạn. Workflow lọc các Savings Plans hoạt động theo ngày mua, tập trung vào các plan được mua trong 7 ngày gần nhất và tháng hiện tại. Sau đó, hệ thống đánh giá tỷ lệ sử dụng của chúng và xác định các plan dưới ngưỡng định sẵn.

State machine sẽ thực thi theo tần suất bạn chỉ định và sử dụng Amazon SNS để gửi cảnh báo qua email đến các địa chỉ bạn cung cấp khi tạo CloudFormation stack. Các cảnh báo này sẽ chứa thông tin chi tiết về các Savings Plans sử dụng thấp và hướng dẫn về quy trình hoàn trả.

![Hình 1](/images/3-BlogsTranslated/3.3-Blog3/1.png) 
_Hình 1: Kiến trúc AWS - Member Account nhận quyền đọc dữ liệu từ Management Account và kích hoạt Step Function để gửi cảnh báo qua SNS._

### **Triển khai giải pháp**

#### **Điều kiện tiên quyết**

- Có AWS Account  

- Có IAM permissions để tạo CloudFormation Stack và IAM Role trong Management Account  

- Có IAM permissions để tạo Step Functions, SNS, IAM Roles, và EventBridge trong Member Account

### **Triển khai giải pháp**

Trong phần này, chúng ta sẽ triển khai các tài nguyên cho giải pháp này trong tài khoản của bạn:

#### **Phần 1 - Triển khai trong Member Account**

Trong phần này, chúng ta sẽ triển khai các tài nguyên cho giải pháp này trong Member Account đã chọn.

- Đăng nhập vào AWS Management Console của Member Account nơi bạn muốn triển khai giải pháp.  

- Triển khai CloudFormation Stack này [Launch Stack](https://us-west-2.signin.aws.amazon.com/oauth?client_id=arn%3Aaws%3Asignin%3A%3A%3Aconsole%2Fcloudformation&code_challenge=YJomWY7VmTPOJTzQ9JLD33u0lzPXCPrvnWvQYND8jCQ&code_challenge_method=SHA-256&response_type=code&redirect_uri=https%3A%2F%2Fus-west-2.console.aws.amazon.com%2Fcloudformation%2Fhome%3FhashArgs%3D%2523%252Fstacks%252Fcreate%252Freview%253FtemplateURL%253Dhttps%253A%252F%252Faws-well-architected-labs.s3.us-west-2.amazonaws.com%252FCost%252FBlogs%252Fsample-aws-new-savings-plan-utilization-alert%252Fsample-aws-new-savings-plan-utilization-alert_member.yaml%2526stackName%253Dnew-savings-plan-utilization-alert-member%26isauthcode%3Dtrue%26oauthStart%3D1759740140665%26region%3Dus-west-2%26state%3DhashArgsFromTB_us-west-2_b5fd02355eaf6afe)

- Cung cấp Stack Name là new-sp-utilization-alert-member.  

- Trong tham số AlertEmails, nhập danh sách email cách nhau bởi dấu phẩy mà sẽ nhận thông báo về Savings Plans sử dụng kém.  

- Trong tham số ManagementAccountId, nhập 12 chữ số AWS Account ID của Management Account.  

- Trong tham số ScheduleExpression, chỉ định tần suất thực thi cho Step Functions state machine theo định dạng cron (mặc định là hàng ngày vào lúc 9 AM UTC).  

- Trong tham số UtilizationThreshold, chỉ định tỷ lệ sử dụng tối thiểu cho Savings Plans của bạn. Bạn sẽ nhận thông báo khi tỷ lệ sử dụng giảm dưới ngưỡng này.  

- Nhấn Next, chọn ô acknowledgment, và tạo stack.  

- Chờ cho đến khi stack hoàn thành và hiển thị trạng thái CREATE-COMPLETE.  

- Bạn sẽ nhận một email để xác nhận đăng ký nhận thông báo từ SNS topic do stack này tạo. Vui lòng xác nhận đăng ký để bắt đầu nhận thông báo.  

- Truy cập vào tab Outputs của stack vừa tạo và ghi lại các giá trị của ExecutionRoleArn và StateMachineArn, bạn sẽ cần chúng trong phần tiếp theo.

#### **Phần 2 - Triển khai trong Management Account**

- Đăng nhập vào AWS Management Console. Lưu ý: Đây phải là tài khoản giống như tài khoản đã nhập trong tham số ManagementAccountId ở phần trước.  

- Triển khai CloudFormation Stack này  [Launch Stack](https://us-west-2.console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/create/review?templateURL=https://aws-well-architected-labs.s3.us-west-2.amazonaws.com/Cost/Blogs/sample-aws-new-savings-plan-utilization-alert/sample-aws-new-savings-plan-utilization-alert_management.yaml&stackName=aws-new-savings-plan-utilization-alert-management)

- Cung cấp Stack Name là new-sp-utilization-alert-management.  

- Trong tham số ExecutionRoleArn, cung cấp giá trị đã sao chép từ stack outputs của stack đã triển khai trong Member Account.  

- Trong tham số StateMachineArn, cung cấp giá trị đã sao chép từ stack outputs của stack đã triển khai trong Member Account.  

- Nhấn Next, chọn ô acknowledgment, và tạo stack.  

- Chờ cho đến khi stack hoàn thành và hiển thị trạng thái **CREATE-COMPLETE.**

### **Kiểm thử giải pháp**

Bây giờ mà Step Functions state machine và các tài nguyên liên quan đã được triển khai trong Member Account, chúng ta sẽ kiểm tra việc triển khai:

- Đăng nhập lại vào AWS Management Console của Member Account nơi bạn đã triển khai phần 1 của giải pháp này.  

- Truy cập vào tab Resources trong CloudFormation stack và tìm SavingsPlansAlerts Step Functions state machine. Nhấp vào hyperlink màu xanh dương.  

- Bạn sẽ được chuyển hướng đến Step Functions console. Nhấn Start execution ở bên phải.  

- Xem chi tiết execution trong mục Events để theo dõi tiến trình của state machine. Nếu có Savings Plans được mua trong vòng 7 ngày gần nhất và tháng hiện tại, bạn sẽ nhận email thông báo.  

- Một execution thành công được hiển thị bằng ô màu xanh lá trong Graph view. Nếu bất kỳ Savings Plans nào rơi dưới ngưỡng tỷ lệ sử dụng đã chỉ định, bạn sẽ nhận email tại địa chỉ đã cung cấp.

### **Dọn dẹp tài nguyên**

Tất cả các tài nguyên đã triển khai cho giải pháp này có thể được xóa bằng cách xóa CloudFormation stacks. Bạn có thể xóa stack thông qua AWS Management Console hoặc AWS CLI.

Để xóa stack trong Management Account (CLI):
```
aws cloudformation delete-stack --stack-name new-sp-utilization-alert_management
```

Để xóa stack trong Member Account (CLI):
```
aws cloudformation delete-stack --stack-name new-sp-utilization-alert_member
```
### **Hiểu và xử lý cảnh báo**

Khi bạn nhận được cảnh báo về Savings Plans sử dụng thấp, bạn nên xem lại chi tiết sử dụng được cung cấp trong thông báo email. Phân tích các chỉ số sử dụng của bạn so với cam kết ban đầu khi mua Savings Plan, và điều tra xem tỷ lệ sử dụng thấp có phải là điều đã dự kiến hay do các yếu tố khác như di chuyển khối lượng công việc, thay đổi kiến trúc, hoặc ước tính sai nhu cầu công suất. Hãy cân nhắc hoàn trả Savings Plan nếu tỷ lệ sử dụng vẫn duy trì dưới ngưỡng của bạn, plan được mua trong vòng 7 ngày gần nhất, mua trong tháng hiện tại, và cam kết mỗi giờ ≤ \$100. Ghi lại lý do hoàn trả để tham khảo và lập kế hoạch cho tương lai.

### **Kết luận**

Bài viết đã hướng dẫn cách sử dụng Savings Plan và Cost Explorer APIs để xác định Savings Plans sử dụng thấp trong tổ chức của bạn. Sau đó, chúng tôi đã minh họa cách sử dụng Step Functions State Machine để lọc các Savings Plans được mua trong 7 ngày gần nhất và tháng hiện tại, điều này rất quan trọng vì bạn có thể hoàn trả Savings Plans trong thời gian hoàn trả hợp lệ nếu chúng không được sử dụng hiệu quả. Để biết thêm chi tiết về việc hoàn trả Savings Plan, tham khảo tài liệu [Returning a Purchased Savings Plan](https://docs.aws.amazon.com/savingsplans/latest/userguide/return-sp.html)

|     |     |
| --- | --- |
| ![Hình 2](/images/3-BlogsTranslated/3.3-Blog3/2.png)   | **Syed Muhammad Tawha** <br> Syed Muhammad Tawha là Principal Technical Account Manager tại AWS, có trụ sở tại Dublin, Ireland. Tawha chuyên môn về Storage, Resilience và Cloud Cost Optimization. Anh đam mê giúp đỡ khách hàng của AWS tối ưu hóa chi phí và cải thiện hiệu suất. Ngoài công việc, Tawha còn yêu thích dành thời gian với bạn bè và gia đình |
|  ![Hình 3](/images/3-BlogsTranslated/3.3-Blog3/3.png)    | **Dan Johns** <br> Dan Johns là Senior Solutions Architect Engineer, hỗ trợ khách hàng xây dựng trên AWS và đáp ứng các yêu cầu kinh doanh. Ngoài công việc, anh thích đọc sách, dành thời gian với gia đình và tự động hóa các tác vụ trong nhà. |