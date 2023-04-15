FROM alpine:latest
COPY create-users.sh /create-users.sh
RUN apk update && apk --no-cache add samba bash && chmod +x /create-users.sh
#COPY smb.conf /etc/samba/smb.conf
EXPOSE 137/udp 138/udp 139/tcp 445/tcp
CMD sh /create-users.sh && chmod -R 777 /mnt && sleep infinity
