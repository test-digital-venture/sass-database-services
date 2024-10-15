FROM postgres:16

# ENV key=value
# Copy the custom postgresql.conf to the container
COPY ./conf/postgresql.conf /etc/postgresql/postgresql.conf

# Start PostgreSQL with the custom configuration
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]