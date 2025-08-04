FROM odoo:16.0

# Set the working directory inside the container
WORKDIR /odoo

# Optional: Copy any custom modules
# COPY ./custom-addons /mnt/extra-addons

# Set ownership and permissions
RUN chown -R odoo:odoo /odoo

# Expose Odoo's default port
EXPOSE 8069

# Start Odoo with external Postgres connection details pulled from environment variables
CMD ["odoo", 
     "-d", "odoo_db_main_001",
     "--db_host=${PGHOST}",
     "--db_port=${PGPORT}",
     "--db_user=${PGUSER}",
     "--db_password=${PGPASSWORD}"]
