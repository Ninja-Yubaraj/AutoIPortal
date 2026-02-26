# Use lightweight Alpine image
FROM alpine:3.20

# Install required packages
RUN apk add --no-cache bash curl iputils

# Create working directory
WORKDIR /app

# Copy script
COPY autologin.sh /app/autologin.sh

# Make it executable
RUN chmod +x /app/autologin.sh

# Run the script
CMD ["/app/autologin.sh"]
