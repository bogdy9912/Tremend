# Tremend

### Get the Ubuntu image from Docker Hub
```
docker pull ubuntu
```

### Check the image
```
docker images

REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
ubuntu       latest    ca2b0f26964c   2 weeks ago   77.9MB
```

### Start the container in interactive mode
```
docker run -it --name linux_container ubuntu:latest
```

### Copy the script file in the container
To do that we will use the below command:
```
docker cp <local_path_to_file> <container_id>:<path>
```

#### Step 1
Get the container id using:
```
docker ps
  
CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS          PORTS     NAMES
46276100deaa   ubuntu:latest   "/bin/bash"   59 seconds ago   Up 58 seconds             linux_container
```

#### Step 2
Copy the file:
```
sudo docker cp ~/Documents/Useful-Resources/1-linux/create_large_file.sh 46276100deaa:/
Successfully copied 2.05kB to 46276100deaa:/
```

### Running the script
```
./create_large_file.sh

50+0 records in
50+0 records out
52428800 bytes (52 MB, 50 MiB) copied, 0.040799 s, 1.3 GB/s
mv: cannot stat 'lage_file': No such file or directory
```

Seing the above error, I inspected the script and I found a type at line 5: `lage_file` instead of `large_file`

## The following 11 actions are solved in the `script.sh`
