# Run cqlsh against an SSL-secured Instaclustr cluster 

# ln -s /Users/Steve/.cassandra/ ./.cassandra


# create a cqlshrc file as described in https://support.instaclustr.com/hc/en-us/articles/216238308
# copy it and the certificate pem file to this directory
# build the image using this command (m4-cshrc is an example tag, you can call it what you like):
# docker build -t m4-cshrc .
# run as follows:

FROM cassandra

MAINTAINER Steve Bell <steve.bell@worldpay.com>

#ARG CQLSHRC 
#=/Users/Steve/.cassandra/cqlshrc

COPY ./.cassandra/ /root/.cassandra/

CMD ["cqlsh", "--ssl"]
