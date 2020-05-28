import sys
import os

path  = "/path/to/store/your/cloned/project" 
clone = "git clone gitolite@<server_ip>:/your/project/name.git" 

os.system("sshpass -p your_password ssh user_name@your_localhost")
os.chdir(path) # Specifying the path where the cloned project needs to be copied
os.system(clone) # Cloning