"""FROM odoo:16.0

WORKDIR /odoo

RUN chown -R odoo:odoo /odoo

EXPOSE 8069

CMD ["odoo", "--db_host=dpg-d28278uuk2gs73epjes0-a", "--db_port=5432", "--db_user=odoo_db_main_001_user", "--db_password=AJzkavfYwCVkSC6A9AjvDzKnFMMdf9dM", "-d", "odoo_db_main_001"]
"""
