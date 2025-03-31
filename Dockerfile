# Use the official Krakend watch image
FROM devopsfaith/krakend:latest

# Set working directory for better clarity
WORKDIR /etc/krakend/

# Copy all configuration files into the container
COPY . /etc/krakend/

EXPOSE 8080

# Default command to run Krakend with a template file
CMD ["run", "-dc", "/etc/krakend/krakend.tmpl"]
