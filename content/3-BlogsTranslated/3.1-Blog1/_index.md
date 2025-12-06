---
title: "Blog 1"
date: "2025-09-09"
weight: 1
chapter: false
pre: " <b> 3.1. </b> "
---

# **Running and Optimizing Small Language Models On-Premises and at the Edge**

_By Chris McEvilly, Fernando Galves Guy Ben Baruchn | Date: 23/06/2025_

_| [In Advanced (300)](https://aws.amazon.com/blogs/compute/category/learning-levels/advanced-300/), [AWS Outposts](https://aws.amazon.com/blogs/compute/category/compute/aws-outposts/), [Technical How-to](https://aws.amazon.com/blogs/compute/category/post-types/technical-how-to/)_

As you move your generative AI deployments from the prototype stage to production, you may find the need to run foundation models (FMs) on-premises or at the edge to meet data residency requirements, information security (InfoSec) policies, or low latency needs. For example, customers in highly regulated industries such as financial services, healthcare, and telecom may want to leverage chatbots to support customer queries, optimize internal workflows for complex reporting, and automate request approvals - while keeping data within national borders. Similarly, some organizations choose to deploy their own small language models (SLMs) to align with strict internal InfoSec requirements. In another example, manufacturers might want to deploy SLMs right on their factory floors to analyze production data and provide real-time equipment diagnostics. To meet user data residency, latency, and InfoSec needs, this article provides guidance on deploying [generative AI](https://aws.amazon.com/ai/generative-ai/) FMs to [AWS Local Zones](https://aws.amazon.com/about-aws/global-infrastructure/localzones/) and [AWS Outposts](https://aws.amazon.com/outposts/rack/). The goal is to present a framework for running various types of SLMs to satisfy data processing requirements based on customer engagements.

### **Generative AI Deployment Options**

The growth of generative AI in deployment and testing has accelerated with two main enterprise deployment options. The first option is using a [large language model (LLM)](https://aws.amazon.com/what-is/large-language-model/) to meet business needs. LLMs have incredible versatility: a single model can perform completely different tasks, such as answering questions, coding, summarizing documents, translating languages, and content generation. LLMs have the potential to change how humans create content as well as how search engines and virtual assistants are used. The second deployment option is using small language models (SLMs), focused on a specific use case. SLMs are compact transformer models primarily using decoder-only or encoder-decoder architectures, generally having fewer than 20 billion parameters, although this definition is evolving as larger models emerge. SLMs can achieve comparable or even superior performance when fine-tuned for specific domains or tasks, making them an excellent alternative for specialized applications.

Additionally, SLMs offer faster inference times, lower resource requirements, and are suitable for deployment on a wider range of devices, which is particularly useful for specialized applications and edge computing where space and power are limited. Although SLMs have a more limited scope and accuracy compared to LLMs, you can enhance their performance for a specific task through [Retrieval Augmented Generation (RAG)](https://aws.amazon.com/what-is/retrieval-augmented-generation/) and fine-tuning. This combination creates an SLM capable of answering queries related to a specific domain with an accuracy level comparable to an LLM, while minimizing hallucinations. Overall, SLMs provide effective solutions that balance user needs and cost efficiency.

### **Architecture Overview**

The solution presented in this article uses Llama.cpp, an optimized framework written in C/C++ to efficiently run various types of SLMs. [Llama.cpp](https://github.com/ggml-org/llama.cpp) can operate effectively in diverse computing environments, allowing generative AI models to function in [Local Zones or Outposts](https://aws.amazon.com/hybrid/) without requiring massive GPU clusters often seen when running LLMs in their native frameworks. This framework expands model selection and increases operational performance when deploying SLMs to Local Zones and Outposts.

This architecture provides a template for deploying various types of SLMs to support use cases such as chatbots or content generation. The solution consists of a front-end application that receives user queries, formats prompts to present to the model, and returns responses from the model to the user. To support a scalable solution, application servers and Amazon EC2 G4dn GPU-enabled instances are placed behind an [Application Load Balancer (ALB)](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html).

In cases where the volume of incoming prompts exceeds the processing capability of the SLMs, a message queue can be deployed in front of the SLMs. For example, you can deploy a [RabbitMQ](https://www.rabbitmq.com/) cluster to act as a queue manager for the system.

![Figure 1](/images/3-BlogsTranslated/3.1-Blog1/1.png)
_Figure 1: Architecture overview_

### **Solution Deployment**

The following instructions describe how to launch an SLM using Llama.cpp in Local Zones or on Outposts. Although the previous architecture overview presented a complete solution with multiple components, this article focuses specifically on the steps necessary to deploy an SLM in an EC2 instance using Llama.cpp.

### **Prerequisites**

To deploy this solution, you need to prepare the following:

- An AWS account that has been allowlisted for Local Zones, or has a logical Outpost installed, configured, and operational.
- Access to G4dn instances in your account at the selected location
    _(check in [AWS Service Quotas](https://console.aws.amazon.com/servicequotas/home))._
- A VPC created to host the deployment environment.
- Public and private subnets to support the environment in the VPC.
- A security group associated with your EC2 instance.
- An [AWS Identity and Access Management (IAM)](https://aws.amazon.com/iam/) role with [AWS Systems Manager Session Manager permissions](https://docs.aws.amazon.com/systems-manager/latest/userguide/getting-started-create-iam-instance-profile.html).

### **1\. Launch GPU instance for SLM**

Log in to the [AWS Management Console](https://aws.amazon.com/console/), open the Amazon EC2 console,
and launch a **g4dn.12xlarge** EC2 instance in your Local Zone or Outposts environment.

Configuration includes:

- Red Hat Enterprise Linux 9 (HVM), SSD Volume Type
- Private subnet associated with the Local Zone or Outposts rack
- 30 GiB gp2 root volume and an additional 300 GiB gp2 EBS volume
- IAM role configured with necessary permissions for Systems Manager
- SSM Agent installed to connect to the instance
    _(refer to instructions in [Install SSM Agent on RHEL 8.x and 9.x](https://docs.aws.amazon.com/systems-manager/latest/userguide/agent-install-rhel-8-9.html) in the [Systems Manager User Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/what-is-systems-manager.html))_

For detailed instructions on launching an EC2 instance, refer to: _Launch an [EC2 instance using the launch instance wizard in the console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-instance-wizard.html)_ or _[Launch an instance on your Outposts rack](https://docs.aws.amazon.com/outposts/latest/userguide/launch-instance.html)_.

![Figure 2](/images/3-BlogsTranslated/3.1-Blog1/2.png)
_Figure 2: SLM instance launched_

### **2\. Install NVIDIA drivers**

- Connect to the SLM instance using Systems Manager.
    You can follow the instructions at [Connect to your Amazon EC2 instance using Session Manager](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connect-with-systems-manager-session-manager.html) in the [Amazon EC2 User Guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html).

- Install kernel packages and necessary tools:
```bash
 sudo su -  
 dnf update -y  
 subscription-manager repos --enable codeready-builder-for-rhel-9-x86_64-rpms  
 dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm  
 dnf install -y ccache cmake gcc-c++ git git-lfs htop python3-pip unzip wget  
 dnf install -y dkms elfutils-libelf-devel kernel-devel kernel-modules-extra \
 libglvnd-devel vulkan-devel xorg-x11-server-Xorg  
 systemctl enable --now dkms  
 reboot 
```

- Install [Miniconda3](https://www.anaconda.com/docs/getting-started/miniconda/install#macos-linux-installation) in the /opt/miniconda3 directory or another compatible package manager to manage Python dependencies.

- Install NVIDIA drivers:

```bash
dnf config-manager --add-repo \
http://developer.download.nvidia.com/compute/cuda/repos/rhel9/x86_64/cuda-rhel9.repo  
dnf module install -y nvidia-driver:latest-dkms  
dnf install -y cuda-toolkit  
echo 'export PATH=/usr/local/cuda/bin:$PATH' >> ~/.bashrc  
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc  
source ~/.bashrc
```

### **3\. Download and Install Llama.cpp**

- Create and mount the filesystem of the Amazon EBS volume you created earlier to the /opt/slm directory. See instructions at [Make an Amazon EBS volume available for use](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-using-volumes.html) in the [Amazon EBS User Guide](https://docs.aws.amazon.com/ebs/latest/userguide/what-is-ebs.html).

- Run the following commands to download and install Llama.cpp:

```bash
cd /opt/slm

git clone -b b4942 https://github.com/ggerganov/llama.cpp.git

cd llama.cpp  
cmake -B build -DGGML_CUDA=ON

cmake --build build --config Release -j$(nproc)  
conda install python=3.12

pip install -r requirements.txt

pip install nvitop
```

### **4\. Download and Convert SLM model**

To run SLMs efficiently with Llama.cpp, you need to convert the model to the GGUF (GPT-Generated Unified Format) format. This conversion optimizes performance and memory usage for resource-constrained edge deployments. GGUF is designed specifically to work with the Llama.cpp inference engine. The following steps illustrate how to download SmolLM2 1.7B and convert it to GGUF format:

```bash
mkdir /opt/slm/models  
cd /opt/slm/models  
git lfs install  
git clone https://huggingface.co/HuggingFaceTB/SmolLM2-1.7B-Instruct  
cd /opt/slm/llama.cpp  
python3 convert_hf_to_gguf.py --outtype f16 \
--outfile /opt/slm/llama.cpp/models/SmolLM2-1.7B-Instruct-f16.gguf \
/opt/slm/models/SmolLM2-1.7B-Instruct  
echo 'export PATH=/opt/slm/llama.cpp/build/bin:$PATH' >> ~/.bashrc  
echo 'export LD_LIBRARY_PATH=/opt/slm/llama.cpp/build/bin:$LD_LIBRARY_PATH' >> ~/.bashrc  
source ~/.bashrc
```
You can also download other publicly available models from [Hugging Face](https://huggingface.co/) if needed,
and perform a similar conversion process.

### **SLM Operation and Optimization**

Deploying SLMs via Llama.cpp offers high operational flexibility, allowing environment customization and optimization for specific use cases. With Llama.cpp, you can choose various parameters to optimize system resource usage and model operation, effectively utilizing resources without unnecessary waste or impacting performance. Common parameters when running Llama.cpp to control model behavior include:

- `-ngl N, --n-gpu-layers N`: When compiling with GPU support, this option allows offloading some layers to the GPU for computation, increasing processing performance.
- `-t N, --threads N`: Determines the number of threads used during content generation. For optimal performance, set this value equal to the number of physical CPU cores in the system.
- `-n N, --n-predict N`: Determines the number of tokens to generate when creating text.
    Adjusting this value affects the output length of the text.
- `-sm, --split-mode`: Determines how to split the model across multiple GPUs when running in a multi-GPU environment. Try the "row" splitting mode, as in some cases it offers better performance than the default layer-based splitting.
- `--temp N`: Temperature controls the randomness in the SLM's output. Lower values (e.g., 0.2-0.5) produce more consistent and deterministic responses, while higher values (e.g., 0.9-1.2) allow the model to be more creative and diverse (default: 0.88).
- `-s SEED, --seed SEED`: Provides a method to control model randomness. Setting a fixed seed helps reproduce consistent results across multiple runs (default: -1, -1 = random seed).
- `-c, --ctx-size N`: Determines the context size, the number of tokens the FM can process in a prompt. This value affects the required RAM and model accuracy. For example: with Phi-3, it is recommended to reduce context size to 8k or 16k to optimize performance. Sample command: `--ctx-size XXXX` where XXXX is the context size.

This section illustrates how to optimize SLM performance for specific use cases using Llama.cpp, covering two common scenarios: Chatbot interactions and Text summarization.

### **Chatbot Use Case Example**

#### **Token Size Requirements**

For chatbot applications, typical token sizes: Input: approximately 50-150 tokens, supporting 1-2 user questions, and Output: approximately 100-300 tokens, helping the model respond concisely but with detail.

#### **Sample Command**

```bash
./build/bin/llama-cli -m ./models/SmolLM2-1.7B-Instruct-f16.gguf \
-ngl 99 -n 512 --ctx-size 8192 -sm row --temp 0
--single-turn \
-sys "You are a helpful assistant" -p "Hello"
```
![Figure 3](/images/3-BlogsTranslated/3.1-Blog1/3.png)
_Figure 3: Chatbot example_

#### **Command Explanation**

- `-m ./models/SmolLM2-1.7B-Instruct-f16.gguf` : Specifies the model file to use
- `-ngl 99` : Assigns 99 GPU layers for optimal performance
- `-n 512` : Maximum 512 output tokens (sufficient for the needed 100-300 tokens)
- `--ctx-size 8192` : Sets context window size to handle complex conversations
- `-sm row` : Splits across GPUs by row
- `--temp 0` : Sets temperature to 0 to reduce creativity
- `--single-turn` : Optimized for single-turn responses
- `-sys "You are a helpful assistant"` : Sets system prompt defining the assistant role
- `-p "Hello"` : User prompt input

### **Text Summarization Example**

The command line below shows SmolLM2-1.7B running a text summarization task:

```bash
PROMPT_TEXT="Summarize the following text: Amazon DynamoDB is a serverless,  
NoSQL database service that allows you to develop modern applications  
at any scale. As a serverless database, you only pay for what you use  
and DynamoDB scales to zero, has no cold starts, no version upgrades,  
no maintenance windows, no patching, and no downtime maintenance.  
DynamoDB offers a broad set of security controls and compliance  
standards. For globally distributed applications, DynamoDB global  
tables is a multi-Region, multi-active database with a 99.999%  
availability SLA and increased resilience. DynamoDB reliability is  
supported with managed backups, point-in-time recovery, and more.  
With DynamoDB streams, you can build serverless event-driven applications."  
./build/bin/llama-cli -m ./models/SmolLM2-1.7B-Instruct-f16.gguf \
-ngl 99 -n 512 --ctx-size 8192 -sm row --single-turn \
-sys "You are a technical writer" \
--prompt "$PROMPT_TEXT"
```
![Figure 4](/images/3-BlogsTranslated/3.1-Blog1/4.png)
_Figure 4: Summarization example_

### **Cleaning Up**

To avoid unnecessary costs, perform the following steps to delete resources after completion:

- [Terminate EC2 instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html) to stop charges. Verify that the 300 GiB EBS volume was deleted correctly by checking the Volumes section under Elastic Block Store. If the volume remains, select it and perform: Actions > Delete volume.

### **Conclusion**

This article has guided you step-by-step through deploying SLMs to an AWS on-premises or edge environment to meet local data processing needs. The beginning of the article discussed the business benefits of SLMs, including: Faster inference time, reduced operational costs, and improved model outputs. SLMs deployed using Llama.cpp and optimized for specific use cases can deliver efficient user services from the edge in a scalable manner. The optimization parameters described in this article provide various configuration methods to tune the model for diverse deployment scenarios. You can follow the steps and techniques presented to deploy generative AI tailored to data residency, latency, or InfoSec compliance requirements, while operating efficiently within the resource constraints of edge computing environments. To learn more, visit [AWS Local Zones](https://aws.amazon.com/about-aws/global-infrastructure/localzones/) and [AWS Outposts](https://aws.amazon.com/outposts/rack/).