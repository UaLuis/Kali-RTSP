FROM kalilinux/kali-rolling

RUN apt update && apt install masscan python3 python3-pip git nano -y

RUN git clone https://github.com/UaLuis/RTSPScanner.git

WORKDIR /rtsp/RTSPScanner

RUN pip3 install -r requirements.txt 
RUN chmod +x rtspscan.sh

CMD ["nano", "target.txt"]
