FROM odoo:17

# ติดตั้งภาษาไทยเพิ่มเติมถ้าต้องการ
USER root
RUN apt-get update && apt-get install -y fonts-thai-tlwg

# ตั้งค่า Environment สำหรับ DB
ENV HOST=${dpg-d1trq0k9c44c73ccfme0-a}
ENV PORT=${5432}
ENV POSTGRES_DB=${odoo_db_fez7}
ENV USER=${odoo_db_fez7_user}
ENV PASSWORD=${ZXnLVBSRNx8w8tOV0iLOMylbdugq0kRW}

ENV DB_HOST=${HOST}
ENV DB_PORT=${PORT}
ENV DB_NAME=${POSTGRES_DB}
ENV DB_USER=${USER}
ENV DB_PASSWORD=${PASSWORD}

# กำหนดตำแหน่ง addon เสริม
USER odoo
COPY ./addons /mnt/extra-addons
