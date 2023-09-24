# docker-stack-dns

Stack DNS with various DNS products like PowerDNS, CoreDNS, Bind

## Prerequisites

- Install docker: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
- Install compose plugin: https://docs.docker.com/compose/install/linux/#install-using-the-repository
- Prepare `data` folder

    ```bash
    mkdir -p data/db data/tap
    chown -R 1000:1000 data/db data/tap
    ```

## Run the complete DNS infrastructure

```bash
sudo docker compose up
```

## Init MySQL database for PowerDNS

In the first start, the nameserver will be stopped because the database is not yet ready.

```bash
sudo docker exec -i docker-stack-dns-db-1 sh -c 'exec mariadb -uroot -plabpwd' < conf/powerdns_db/pdns_database.sql
sudo docker exec -i docker-stack-dns-db-1 sh -c 'exec mariadb -updns_user -ppdns_secret' pdns < conf/powerdns_db/pdns_schema.sql
sudo docker exec -i docker-stack-dns-db-1 sh -c 'exec mariadb -updns_user -ppdns_secret' pdns < conf/powerdns_db/pdns_records.sql
```

Stop and restart your stack.

## Tests

```bash
dig @127.0.0.1 -p 5053 welcome.home.lab
```
