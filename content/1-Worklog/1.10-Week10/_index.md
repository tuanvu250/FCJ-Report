---
title: "Week 10 Worklog"
date: "2025-11-16"
weight: 1
chapter: false
pre: " <b> 1.10. </b> "
---

### Week 10 Objectives:

- **Wallet Management**: Complete multi-wallet feature, display asset statistics chart.
- **Jar System Implementation**: Build backend/frontend for 6 Jars System.
- **Budget Allocation Logic**: Develop budget allocation logic and input data validation.
- **Transaction Features**: Create transaction form, history list, and search filters.
- **AI Service Integration**: Connect AI API and implement Voice-to-Transaction feature.

### Tasks to be carried out this week:

| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 1 | - **Wallet Management (Finish)**: Finalize total asset calculation logic, handle loading state/skeleton, and display asset allocation Pie Chart. <br> - **Jar System**: Create `components/jars`, build `fetchJars` service. Implement full CRUD for the 6 financial jars system. | 10/11/2025 | 10/11/2025 | |
| 2 | - **Budget Allocation**: Build Drag & Drop or Slider UI for allocating budget to jars. Implement total 100% validation logic with Zod schema. | 11/11/2025 | 11/11/2025 | |
| 3 | - **Transaction Creation**: Build complex add transaction form (`components/transactions`): select wallet, jar, category, date, and note. Custom Select component for optimized UX. | 12/11/2025 | 12/11/2025 | [date-fns](https://date-fns.org/) |
| 4 | - **Transaction History & Filters**: Display transaction history list with Infinite Scroll or Pagination (React Query). Build advanced filters (by date, wallet, type). | 13/11/2025 | 13/11/2025 | [TanStack Query](https://tanstack.com/query/latest) |
| 5 | - **Unit Testing**: Write high-coverage unit tests for critical business logic in `useWallet` and `useJars` hooks using Jest/Vitest. | 14/11/2025 | 14/11/2025 | |
| 6 | - **AI Service & Voice Input**: Implement `useAIService` connecting OpenAI/Gemini API. Build recording UI, handle Speech-to-Text conversion, and map data to transaction form. <br> - Participate in AWS Cloud Mastery Series #1: GENERATIVE AI, RAG & AWS AGENTIC AI | 15/11/2025 | 15/11/2025 | |

### Week 10 Achievements:

- **Wallet Management Complete**: Completed CRUD for wallets, displayed balance info and visual charts.
- **Jar System Operational**: 6 Jars system is operational with full management functionality.
- **Budget Logic Implemented**: Automated budget allocation algorithm works correctly.
- **Transaction Flow**: Create new, view list, and filter transactions features are complete.
- **AI Integration Live**: Voice input and transaction categorization suggestions are integrated.
