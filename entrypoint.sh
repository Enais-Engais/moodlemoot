#!/bin/bash

# entrypoint originala exekutatzen du bigarren planoan
/opt/bitnami/scripts/moodle/entrypoint-origin.sh "$@" &

# Moodle instalatu arte itxaroten du (config.php sortu arte)
while [ ! -f /bitnami/moodle/config.php ]; do
    sleep 5
done

# euskarazko paketea jeitxi eta hizkuntza ezarri
if [ ! -d /bitnami/moodle/lang/eu ]; then
    mkdir -p /bitnami/moodle/lang/eu
    wget -q https://download.moodle.org/download.php/direct/langpack/4.3/eu.zip -O /tmp/eu.zip
    unzip -q /tmp/eu.zip -d /bitnami/moodle/lang/eu
    chown -R 1001:root /bitnami/moodle/lang/eu
    rm /tmp/eu.zip
fi

php /opt/bitnami/moodle/admin/cli/install_language.php --lang=eu

wait
