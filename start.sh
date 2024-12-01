if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nonamebesty/sudonew/ /sudonew
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /sudonew
fi
cd /Link-Bypasser-Bot
pip3 install -U -r requirements.txt
echo "Starting Bypass Bot...."
python3 main.py
