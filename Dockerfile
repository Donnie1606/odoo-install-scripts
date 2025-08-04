# Use the official Odoo 16 image
FROM odoo:16.0

# Set the working directory inside the container
WORKDIR /odoo

# Optional: Copy custom addons if you have any
# COPY ./your-addons /mnt/extra-addons

# Set permissions
RUN chown -R odoo:odoo /odoo

# Expose default Odoo port
EXPOSE 8069

# Start Odoo with full database connection settings
CMD ["odoo", "--db_host=dpg-d28278uuk2gs73epjes0-a", "--db_port=5432", "--db_user=odoo_db_main_001_user", "--db_password=AJzkavfYwCVkSC6A9AjvDzKnFMMdf9dM", "-d", "odoo_db_main_001"]
