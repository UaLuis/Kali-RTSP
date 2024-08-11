FROM kalilinux/kali-rolling

RUN apt update && apt install masscan python3 python3-pip git nano -y

RUN git clone https://github.com/UaLuis/RTSPScanner.git

# Set the working directory to RTSPScanner
WORKDIR /RTSPScanner

RUN pip3 install -r requirements.txt 
RUN chmod +x rtspscan.sh

COPY start.sh
RUN chmod +x start.sh .

# Change CMD to the correct default command if needed; here, for example, it opens nano
ENTRYPOINT ["./start.sh"]
