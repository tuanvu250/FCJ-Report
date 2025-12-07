---
title: "Week 9 Worklog"
date: "2025-09-14"
weight: 1
chapter: false
pre: " <b> 1.9. </b> "
---

### Week 9 Objectives:

- **Project Initialization**: Initialize project with Next.js 16, React 19, TypeScript, and configure ESLint, Husky.
- **Design System Setup**: Set up Neobrutalism design system, install Tailwind CSS and Shadcn UI.
- **Authentication Flow**: Integrate AWS Cognito, build Login/Register pages with Zod validation.
- **Dashboard Development**: Build responsive layout for User/Admin and core interface components.
- **State Management & API**: Configure Axios client, Redux/Zustand store, and integrate React Query.
- **Repository**: [https://gitlab.com/vicobi/vicobi-frontend](https://gitlab.com/vicobi/vicobi-frontend)

### Tasks to be carried out this week:

| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 1 | - **Project Setup**: Initialize project with Next.js 16.0.1 (App Router), React 19, and TypeScript. <br> - **Dev Tools**: Configure Git hook process with Husky, control commit messages with Commitlint, and setup standard ESLint/Prettier. | 03/11/2025 | 03/11/2025 | [Next.js 16](https://nextjs.org/), [Husky](https://typicode.github.io/husky/) |
| 2 | - **Design System Setup**: Install Tailwind CSS and configure Design Tokens for Neobrutalism style (bold, hard shadows). Customize Shadcn UI components and add Framer Motion for animation. | 04/11/2025 | 04/11/2025 | [Framer Motion](https://www.framer.com/motion/) |
| 3 | - **Authentication Flow**: Integrate AWS Cognito Identity Provider. Build Login/Register/Forgot Password forms using React Hook Form combined with Zod validation. Connect `authService`. | 05/11/2025 | 05/11/2025 | [AWS Cognito](https://aws.amazon.com/cognito/) |
| 4 | - **Dashboard Layout**: Build separate Layouts for Group Route `(member)` and `(admin)`. Implement complete responsive Sidebar navigation and Neobrutalist style system Widgets. | 06/11/2025 | 06/11/2025 | |
| 5 | - **API Client & Store**: Setup Axios Interceptor (`lib/api/core.ts`) to attach Token and refresh token automatically. Configure Global State with Zustand (`authStore`) and integrate React Query (`apiStore`). | 07/11/2025 | 07/11/2025 | [Zustand](https://zustand-demo.pmnd.rs/) |
| 6 | - **Wallet Management Start**: Analyze Swagger API, implement `fetchWallet` service and `useWallet` custom hook. Build wallet list UI and create new wallet modal. <br> - **Weekly Review**: Review directory structure and code conventions. | 08/11/2025 | 08/11/2025 | |

### Week 9 Achievements:

- **Development Environment**: Successfully initialized Next.js 16/React 19 project, standard ESLint/Prettier configuration.
- **Neobrutalism Design System**: Synchronized setup of UI components, typography, and color palette.
- **Authentication System**: Completed registration/login flow with AWS Cognito and strict form validation.
- **Dashboard UI**: Operational responsive Dashboard interface for Admin and User.
- **Foundation Layer**: Completed configuration for API Client (Axios) and State Management (Zustand/TanStack Query).
