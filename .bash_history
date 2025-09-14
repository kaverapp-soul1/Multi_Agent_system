cloudshell workspace ~
gcloud storage cp -r gs://qwiklabs-gcp-01-90920ee3a3d2-bucket/adk_multiagent_systems .
export PATH=$PATH:"/home/${USER}/.local/bin"
python3 -m pip install google-adk -r adk_multiagent_systems/requirements.txt
cd ~/adk_multiagent_systems
cat << EOF > parent_and_subagents/.env
GOOGLE_GENAI_USE_VERTEXAI=TRUE
GOOGLE_CLOUD_PROJECT=qwiklabs-gcp-01-90920ee3a3d2
GOOGLE_CLOUD_LOCATION=us-central1
MODEL=gemini-2.5-flash
EOF

cp parent_and_subagents/.env workflow_agents/.env
cd ~/adk_multiagent_systems
adk run parent_and_subagents
adk run parent_and_subagentsj
adk run parent_and_subagents
clear
adk web
cd ~/adk_multiagent_systems
adk web --reload_agents
git
git commit
cd ..
cd
cleardir
dir
git init
git commit -m "first commit"
git branch -M main
git config --global user.email "timeflagtbots@gmail.com"
git config --global user.name "kaverapp-soul1"
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/kaverapp-soul1/Multi_Agent_system.git
git push -u origin main
git add
git add .
git remote add origin https://github.com/kaverapp-soul1/Multi_Agent_system.git
git push -u origin main
git remote add origin https://github.com/kaverapp-soul1/Multi_Agent_system.git
git branch -M main
git push -u origin main
clear
git init
