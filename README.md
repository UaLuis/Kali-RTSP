Kali-RTSP

This is a Docker image for finding RTSP cameras.

It is based on the kalilinux/kali-rolling image and there is also a script https://github.com/UaLuis/RTSPScanner.git

How to install and run:

1. ```git clone https://github.com/UaLuis/Kali-RTSP.git && cd Kali-RTSP```

2. ```ls && docker build -t kali-rtsp .```

3. After the build, run the container.

4. ```docker images```

5. Find the kali-rtsp.

6. ```docker run -it kali-rtsp /bin/bash```

After starting the container, the nano editor will open. You should enter the IP ranges there, then save the file and run the script (How to run the script, see the repository https://github.com/UaLuis/RTSPScanner.git