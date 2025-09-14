# Multi-Agent Systems with Google Agent Development Kit (ADK)

This repository provides an overview and practical guide to orchestrating multi-agent systems using the **Google Agent Development Kit (Google ADK)**. It covers key concepts, architectural benefits, and provides examples of different agent types and workflows.

---

## 🚀 What is the Agent Development Kit?

The **Google ADK** empowers developers to create sophisticated, multi-step behaviors from generative models.  
Instead of relying on long, complex prompts, you can construct a flow of multiple, simple agents that collaborate on complex problems by dividing tasks and responsibilities.

### ✅ Key Advantages
- **Easier to design** – Think in terms of agents with specific jobs and skills.  
- **Specialized functions with reliable performance** – Agents trained on clear examples perform better at specific tasks.  
- **Organization** – Workflows divided into distinct agents are easier to manage.  
- **Improvability & maintainability** – Improve or fix a specialized agent without modifying the whole system.  
- **Modularity** – Reuse agents across different workflows easily.  

---

## 🌳 Hierarchical Agent Structure

In ADK, agents are organized in a **tree-like hierarchy**. This ensures controlled and predictable conversation flows.

### Benefits
- Inspired by real-world collaborative teams – intuitive to design.  
- Provides greater control over task delegation and debugging.  
- The structure always begins with the **`root_agent`**, which can have one or more sub-agents.  

---

## 🧩 Core Concepts

### 1. Agent Relationships & Flow
- **Parent → Sub-agent Relationships** – Organize agents in a hierarchy.  
- **Session State** – Store conversation data across multiple turns in a session state dictionary.  
- **Context from State** – Agents can read from session state to maintain context.  
- **Workflow Agents** – Pass conversations between agents directly (without user input).  

---

## ⚙️ Getting Started: Installation & Setup

### 1. Enable Vertex AI APIs
Make sure Vertex AI APIs are enabled in your Google Cloud project.

### 2. Download and Install ADK
Open **Cloud Shell** and run:

```bash
# Open Cloud Shell Editor to your home directory
cloudshell workspace ~

# Copy code files from Cloud Storage bucket
gcloud storage cp -r gs://qwiklabs-gcp-01-90920ee3a3d2-bucket/adk_multiagent_systems .

# Update PATH and install dependencies
export PATH=$PATH:"/home/${USER}/.local/bin"
python3 -m pip install google-adk -r adk_multiagent_systems/requirements.txt
3. Run the Agent
To start the web server locally:

bash
Copy code
cd ~/adk_multiagent_systems
adk web --reload_agents
🔄 Workflow Agents
Workflow agents allow agents to act automatically in predefined ways without user intervention.

Built-in Workflow Agents
1. SequentialAgent
Executes sub-agents in order.

Ideal for Plan → Execute workflows.

2. LoopAgent
Repeats actions until a condition is met.

Perfect for Draft → Revise loops.

Use the exit tool to stop looping:

python
Copy code
from google.adk.tools import exit_loop
3. ParallelAgent
Runs sub-agents concurrently.

Useful when agents can work independently, e.g., gathering info from multiple sources.

🛠️ Custom Workflow Agents
For advanced scenarios, use CustomAgent to define:

Conditional execution

Flow control

Custom state management

This gives ultimate flexibility to integrate custom business logic within ADK.

📖 Learn More
For deeper insights and hands-on labs, visit the Cloud Skills Boost course: https://www.cloudskillsboost.google/course_templates/1382/labs/583507
👉 Multi-Agent Systems with ADK
