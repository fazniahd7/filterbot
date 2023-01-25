if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/fazniahd7/filterbot /Faznifilterbot4GB 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Faznifilterbot4GB
fi
cd /Faznifilterbot4GB
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
