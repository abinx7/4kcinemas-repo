if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/4kcinemas/repo.git /repo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /repo
fi
cd /repo
pip3 install -U -r requirements.txt
echo "Starting SS_Linkz Botx...."
python3 bot.py
