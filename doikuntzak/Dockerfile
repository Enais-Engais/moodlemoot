FROM bitnami/moodle:latest

USER root

RUN apt-get update && apt-get install -y --no-install-recommends wget unzip

RUN cp /opt/bitnami/scripts/moodle/entrypoint.sh /opt/bitnami/scripts/moodle/entrypoint-origin.sh

COPY entrypoint.sh /opt/bitnami/scripts/moodle/entrypoint.sh

RUN chmod +x /opt/bitnami/scripts/moodle/entrypoint.sh
