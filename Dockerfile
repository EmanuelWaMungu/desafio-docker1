FROM golang:alpine AS builder

WORKDIR /go/bin/

COPY ./main .


FROM scratch 


COPY --from=builder /go/bin/main /go/bin/main

ENTRYPOINT [ "/go/bin/main" ]