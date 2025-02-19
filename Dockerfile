FROM eclipse-mosquitto:latest

# Copy custom Mosquitto configuration (optional)
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Expose MQTT ports
EXPOSE 10000

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf", "-v"]

