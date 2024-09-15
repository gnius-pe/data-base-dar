FROM mongo:latest

RUN echo "Configuring MongoDB..."
COPY mongod.conf /etc/mongod.conf

RUN echo "Copying initialization script..."
COPY init-mongo.js /docker-entrypoint-initdb.d/

RUN echo "Exposing port 28000..."
EXPOSE 28000

RUN echo "Setting default command to start MongoDB..."
CMD ["mongod", "--config", "/etc/mongod.conf"]