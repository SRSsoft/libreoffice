FROM microsoft/windowsservercore

MAINTAINER Brandon Boone
LABEL Description="LibreOffice" Vendor="The Document Foundation" Version="5.4.4"

ADD https://ftp.osuosl.org/pub/tdf/libreoffice/stable/5.4.4/win/x86_64/LibreOffice_5.4.4_Win_x64.msi .

RUN msiexec.exe /i LibreOffice_5.4.4_Win_x64.msi
RUN del LibreOffice_5.4.4_Win_x64.msi

EXPOSE 8100

ENTRYPOINT ["C:\\Program Files\\LibreOffice 5\\program\\soffice.exe"]
CMD ["-accept=\"socket,host=0.0.0.0,port=8100;urp;\"", "-headless", "-nofirststartwizard"]
