FROM odoo:16.0

# Set the working directory inside the container
WORKDIR /odoo

# Copy your custom files if you have any (optional)
# COPY ./your-addons /mnt/extra-addons

# Set permissions
RUN chown -R odoo:odoo /odoo

# Expose default Odoo port
EXPOSE 8069

# Start Odoo
CMD ["odoo"]
