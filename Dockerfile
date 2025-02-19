# Use the official Mosquitto image
FROM eclipse-mosquitto:latest

# Copy the Mosquitto configuration file
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Expose the WebSockets port (Render requires HTTP-based ports)
EXPOSE 10000

# Start Mosquitto in verbose mode
CMD ["mosquitto", "-c", "/mosquitto/config/mosquitto.conf", "-v"]

