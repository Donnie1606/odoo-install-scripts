FROM odoo:16.0

# Set the working directory
WORKDIR /odoo

# (Optional) Copy custom modules
# COPY ./custom-addons /mnt/extra-addons

# Set permissions
RUN chown -R odoo:odoo /odoo

# Expose Odoo's default port
EXPOSE 8069

# Start Odoo with DB connection settings from env vars
CMD ["odoo", "--db_host=${PGHOST}", "--db_port=${PGPORT}", "--db_user=${PGUSER}", "--db_password=${PGPASSWORD}", "-d", "odoo_db_main_001"]
