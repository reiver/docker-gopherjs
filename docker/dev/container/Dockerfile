FROM golang:1.7


RUN	apt-get update && apt-get install -y \
	apt-utils                            \
	ca-certificates                      \
	supervisor                           #


RUN mkdir -p /app
WORKDIR /app

COPY payload/ /app
COPY magic.sh /app

RUN chmod 775 /app/magic.sh

# Set the PORT environment variable inside the container
ENV PORT 8080

# Expose port 8080 to the host so we can access our application
EXPOSE 8080


CMD ["sh","magic.sh"]

RUN go get github.com/constabulary/gb/...
RUN go get github.com/gopherjs/gopherjs
