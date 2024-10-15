# Use the official Redis image as the base
FROM redis:6.2

# Set the working directory inside the container
WORKDIR /usr/local/etc/redis

# Copy the custom redis.conf file into the container
# COPY conf/redis.conf /usr/local/etc/redis/redis.conf

# Expose the Redis port (but this can be restricted in Docker Compose)
EXPOSE 6379

# Start Redis with the custom configuration file
# CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

