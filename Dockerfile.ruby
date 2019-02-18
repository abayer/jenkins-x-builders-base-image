FROM ruby:2.5.1

RUN apt-get update && apt-get install -y \
  wget \
  bzip2 \
  python-pip \
  openjdk-8-jre

RUN pip install --upgrade pip anchorecli

# chrome
RUN apt-get install -y libappindicator1 fonts-liberation libasound2 libnspr4 libnss3 libxss1 lsb-release xdg-utils libappindicator3-1 && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg -i google-chrome*.deb && \
    rm google-chrome*.deb

