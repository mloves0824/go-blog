FROM daocloud.io/golang
RUN mkdir -p /go/src/go-blog
WORKDIR /go/src/go-blog
ADD . /go/src/go-blog
RUN go-wrapper download
RUN go-wrapper install
ENV PORT 3000
EXPOSE 3000
CMD ["go-wrapper", "run"]
