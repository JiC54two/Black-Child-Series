if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/JiC54lab/Black-Child-Pro.git /Black-Child-Pro
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Black-Child-Pro
fi
cd /Black-Child-Pro
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
