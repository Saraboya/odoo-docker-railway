#!/bin/bash

echo "📦 ENTRYPOINT: INIT_DB=$INIT_DB, POSTGRES_DB=$POSTGRES_DB"

if [ "$INIT_DB" = "1" ]; then
    echo "🟢 Initializing database: $POSTGRES_DB"
    exec odoo -d "$POSTGRES_DB" --init=base --without-demo=all
else
    echo "🔁 Starting Odoo normally"
    exec odoo
fi
