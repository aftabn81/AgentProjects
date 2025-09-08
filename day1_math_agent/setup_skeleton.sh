#!/bin/bash

# Root ignore
echo "__pycache__/
*.pyc
.env
.venv/
.DS_Store" > .gitignore

# Root README
echo "# AgentProjects 🚀
Gamified 10-day fast track to learn AI Agents with clean engineering practices.
" > README.md

# Loop to create day folders
for i in {1..10}
do
  folder="day${i}_project"
  mkdir -p $folder/src $folder/tests
  echo "# Day $i Project" > $folder/README.md
  echo "langchain==0.2.0" > $folder/requirements.txt
done

# Rename with actual project names
mv day1_project day1_math_agent
mv day2_project day2_memory_agent
mv day3_project day3_travel_agent
mv day4_project day4_multi_agent
mv day5_project day5_web_automation
mv day6_project day6_rag_agent
mv day7_project day7_fastapi_support_agent
mv day8_project day8_mcp_server
mv day9_project day9_mcp_docs_agent
mv day10_project day10_capstone

# Boss Projects
mkdir -p boss_projects/twilio_whatsapp_agent/src boss_projects/twilio_whatsapp_agent/tests
mkdir -p boss_projects/slack_agent/src boss_projects/slack_agent/tests
echo "# Twilio/WhatsApp Agent" > boss_projects/twilio_whatsapp_agent/README.md
echo "# Slack Agent" > boss_projects/slack_agent/README.md

