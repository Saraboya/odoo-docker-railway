FROM odoo:17

# ติดตั้งภาษาไทยเพิ่มถ้าต้องการ
USER root
RUN apt-get update && apt-get install -y fonts-thai-tlwg

# กำหนดตำแหน่ง addon เสริม
USER odoo
COPY ./addons /mnt/extra-addons
