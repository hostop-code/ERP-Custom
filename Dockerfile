FROM tomsik68/xampp

COPY . /opt/lampp/htdocs

RUN chmod 777 -R /opt/lampp/htdocs/storage/

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Add the command to stop MySQL
ENTRYPOINT ["/entrypoint.sh"]

# docker build -f Dockerfile-xampp -t xampp-sample .
# docker run --rm -p 8181:80 xampp-sample 