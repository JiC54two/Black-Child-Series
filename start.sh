if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jooma001/Black-Child-Series.git /Black-Child-Series
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Black-Child-Series
fi
cd /Black-Child-Series
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
