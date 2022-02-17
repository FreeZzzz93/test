FROM alpine:3.14
RUN apk update && apk upgrade && apk add yamllint
RUN pip3 install "ansible-lint"
ENTRYPOINT ["yamllint", "--version"
COPY . .
CMD ["yamllint", "Task1.yml"]