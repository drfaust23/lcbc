sudo dpkg -r `dpkg -l | grep cuda | awk '{print $2}'`
sudo dpkg -P `dpkg -l | grep cuda | awk '{print $2}'`
