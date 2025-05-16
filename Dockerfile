FROM bitnami/moodle:latest

USER root

RUN apt-get update && apt-get install -y --no-install-recommends wget unzip

# Euskarazko hizkuntza paketea jeixi (basque)
RUN wget https://download.moodle.org/download.php/direct/langpack/2.0/eu.zip -P /tmp/
# Deskonprimitu dagokion tokian
RUN unzip /tmp/eu.zip -d /opt/bitnami/moodle/lang/

# fitxategiaren jabetza aldatu
RUN chown -R daemon:root /opt/bitnami/moodle/lang/eu

USER 1001