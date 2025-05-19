# Moodle Moot
Moodle-kin proba egiteko repositorioa
.env fitxategian jarri root eta moodleuser pasahitza. Hauek izango dira mysql-ko datuak


** docker-compose.yml fitxategia erabiltzen baduagu bitnami/moodle irudi originalarekin arrankatuko dugu gure moodle ingurunea.
.env fitxategian dauden aldagaiak erabiliko dira konfiguratzeko.


*** docker-compose.yml.1 (.1 kendu beharko diogu erabiltzeko): Gure proiketuaren karpetan "doikuntzak" izeneko direktorio bat sortu eta bertan sartuko ditugu "Dockerfile" eta "entrypoint.sh".
Lehendabizi irudi berria eraikiko dugu: "docker compose build --no-cache", ondoren exekutatu "docker-compose up -d"
