if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/itskissu/AutoFilterWithStream_Upload /AutoFilterWithStream_Upload
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoFilterWithStream
fi
cd /AutoFilterWithStream_Upload
pip3 install -U -r requirements.txt
echo "Starting AutoFilterWithStream...."
python3 bot.py
