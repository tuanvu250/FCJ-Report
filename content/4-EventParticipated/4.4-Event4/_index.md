---
title: "Event 4"
date: "2025-09-09"
weight: 1
chapter: false
pre: " <b> 4.4. </b> "
---

# Workshop Harvest Report: “AWS Cloud Mastery Series #1: GENERATIVE AI, RAG & AWS AGENTIC AI”

### Event Objectives

- Master the art of **Prompt Engineering** to effectively control AI models.
- Explore the ecosystem of **Pretrained AI Services** available on AWS.
- Gain a deep understanding of building AI applications using **RAG (Retrieval-Augmented Generation)**.
- Update on the latest trends in **Agentic AI** and how to move AI Agents from prototype (POC) to production using **Amazon Bedrock AgentCore**.
- Explore the **Pipecat** Framework for building real-time voice-based virtual assistants.

### Speakers

- **Lam Tuan Kiet** - Sr. DevOps Engineer (FPT Software)
- **Danh Hoang Hieu Nghi** - AI Engineer (Renova Cloud)
- **Dinh Le Hoang Anh** - Cloud Engineer Trainee (First Cloud AI Journey)

### Key Highlights

#### **1. Prompt Engineering & Foundation Models (The Core Foundation)**

Before diving into complex services, the event emphasized the importance of understanding and communicating with Foundation Models via Amazon Bedrock.

- **Zero-shot / Few-shot Prompting:** Techniques involving direct instructions or providing examples to guide the model's output format.
- **Chain of Thought (CoT):** A crucial technique requiring the model to "think step-by-step," significantly improving accuracy for complex logical problems.

#### **2. Pretrained AWS AI Services (Ready-to-Use APIs)**

Introduction to "ready-to-use" APIs that integrate intelligent features without model training:

- **Image/Video:** Amazon Rekognition.
- **Language:** Amazon Translate, Comprehend, Textract (OCR).
- **Audio:** Amazon Polly (Text-to-Speech), Transcribe (Speech-to-Text).

#### **3. RAG - Retrieval Augmented Generation**

A process helping AI answer based on enterprise data, reducing hallucinations:

- **Embeddings:** Using _Amazon Titan Text Embeddings V2_ to vectorise text for semantic search.
- **Knowledge Bases for Amazon Bedrock:** Fully managed process handling Chunking -> Vector Store -> Retrieval -> Generation.

#### **4. The Evolution to Agentic AI**

The event introduced the next evolution of GenAI:

1.  **GenAI Assistants:** Follow rules, automate repetitive tasks.
2.  **GenAI Agents:** Goal-oriented, handling a broader range of tasks.
3.  **Agentic AI Systems:** Multi-agent systems acting fully autonomously with minimal human oversight.

**The "Prototype to Production Chasm":**
Moving Agents from POC to Production faces major hurdles regarding:

- **Performance & Scalability.**
- **Security & Governance.**
- **Complexity:** Difficulties in managing Memory, access controls, and auditing Agent interactions.

#### **5. Amazon Bedrock AgentCore: Bridging the Gap**

To solve these challenges, AWS introduced **AgentCore** - a comprehensive platform for building and operating Agents:

- **Key Components:**
  - **Runtime & Memory:** Execution environment and the ability to "remember" interaction history/learning.
  - **Identity & Gateway:** Identity management and secure connection gateways.
  - **Code Interpreter:** Allows Agents to write and execute code to process complex data.
  - **Observability:** Tools to monitor and audit agent activities.
- **Benefit:** Allows developers to focus on business logic rather than infrastructure security or context management.

#### **6. Pipecat: Framework for Real-time Voice AI**

An interesting Open Source framework introduced for building Multimodal Virtual Assistants:

- **Focus:** Optimized for Real-time interactions and conversational streaming.
- **Pipeline Mechanism:**
  1.  **WebRTC Input:** Receives audio signals from the user.
  2.  **STT (Speech-to-Text):** Converts voice to text.
  3.  **LLM Processing:** Processes natural language to generate a response.
  4.  **TTS (Text-to-Speech):** Converts text back to voice.
  5.  **Output:** Streams audio back to the user with ultra-low latency.

### Event Experience & Reflection

Participating in this workshop expanded my perspective from basic concepts to the cutting-edge technologies shaping the future of AI.

#### 1. The Shift from "Q&A" to "Action" (Agentic AI)

The most impressive concept for me was **Agentic AI**. Previously, I viewed AI primarily for chatting or summarization. However, through the **AgentCore** presentation, I see a future of "virtual employees" capable of planning, using tools (like web browsers or code interpreters), and solving complex workflows without constant human hand-holding.

#### 2. Solving the "Production" Puzzle

I resonated deeply with the discussion on the "Chasm" between POC and Production. Tools like **Amazon Bedrock AgentCore** are essentially the key to building enterprise trust. They provide the necessary security layers (Identity) and control mechanisms (Observability) that allow businesses to confidently delegate tasks to AI.

#### 3. The Potential of Voice AI with Pipecat

The **Pipecat** demo was fascinating. Combining WebRTC with AI models to create fluid, low-latency conversations opens up endless practical applications, such as intelligent virtual call centers, AI interview assistants, or real-time language tutors.

### Conclusion

The **“Generative AI & Agentic AI on AWS”** workshop provided a valuable panoramic view:

- **Present:** We rely on **RAG** and **Prompt Engineering** to work effectively with data.
- **Future:** We are entering the era of **Agentic AI**, where Autonomous Agents will transform business operations.
- **Tools:** With the AWS ecosystem (Bedrock, AgentCore) and Frameworks (Pipecat, LangChain), technical barriers are being removed, empowering engineers to turn breakthrough ideas into reality.

#### Some photos from the event

<!-- ## ![](/images/4-EventParticipated/event4-3-1.png) -->
