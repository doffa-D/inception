FROM debian:bookworm

RUN apt-get update && apt-get install -y vsftpd

COPY ./conf/ftp.sh /ftp.sh

RUN chmod +x /ftp.sh

EXPOSE 21

ENTRYPOINT [ "./ftp.sh" ]

CMD ["vsftpd" , "/etc/vsftpd.conf"]
