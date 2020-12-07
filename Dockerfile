FROM alpine
RUN apk update
ENV me=kathir
#RUN echo "name :-->$name   me is -->:$me "
#ENTRYPOINT ["echo","$name"]
#ENTRYPOINT [ "sh","-c"," $name" ]
CMD ["sh","-c","echo hai i am kathir"]
