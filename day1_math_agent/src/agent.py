"""
Day 1 – Math Agent
- Uses LangChain + OpenAI
- Adds a calculator tool
"""
import os
from dotenv import load_dotenv
from langchain_openai import ChatOpenAI
from langchain.agents import initialize_agent, load_tools

load_dotenv()

def build_math_agent():
    """Build a math agent with a calculator tool."""
    llm = ChatOpenAI(model="gpt-4o-mini", temperature=0)
    tools = load_tools(["llm-math"], llm=llm)
    return initialize_agent(tools, llm, agent="zero-shot-react-description", verbose=True)

def run_agent(query: str) -> str:
    """Run the math agent on a query."""
    agent = build_math_agent()
    return agent.run(query)
