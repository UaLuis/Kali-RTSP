FROM kalilinux/kali-rolling

RUN apt update && apt install masscan python3 python3-pip git nano -y

WORKDIR /rtsp

RUN git clone https://github.com/UaLuis/RTSPScanner.git
RUN pip3 install -r requirements.txt && chmod +x rtspscan.sh

CMD ["nano", "target.txt"]
