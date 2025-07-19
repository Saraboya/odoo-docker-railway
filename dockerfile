FROM odoo:17

# ติดตั้งฟอนต์ภาษาไทย
USER root
RUN apt-get update && apt-get install -y fonts-thai-tlwg

# คัดลอก addon และ entrypoint script
COPY ./addons /mnt/extra-addons
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# รันด้วยสิทธิ์ user ปกติ
USER odoo

# ใช้ entrypoint ที่เราสร้างเอง
ENTRYPOINT ["/entrypoint.sh"]
