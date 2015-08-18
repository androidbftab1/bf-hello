FROM busybox
COPY ./hello /hello
CMD ["/hello"]
