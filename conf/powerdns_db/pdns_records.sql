USE pdns;

INSERT INTO domains (name, master, type, account) VALUES ('lab', '', 'NATIVE', '');
INSERT INTO domains (name, master, type, account) VALUES ('infra.lab', '', 'NATIVE', '');
INSERT INTO domains (name, master, type, account) VALUES ('home.lab', '', 'NATIVE', '');

INSERT INTO records (domain_id, name, type, content, ttl, prio)  VALUES (1, 'lab', 'SOA', 'ns1.gtld-servers.dns dns.admin 0 10800 3600 604800 3600', 3600, 0);
INSERT INTO records (domain_id, name, type, content, ttl, prio)  VALUES (1, 'lab', 'NS', 'ns1.gtld-servers.dns', 3600, 0);

INSERT INTO records (domain_id, name, type, content, ttl, prio)  VALUES (2, 'infra.lab', 'SOA', 'ns1.gtld-servers.dns dns.admin 0 10800 3600 604800 3600', 3600, 0);
INSERT INTO records (domain_id, name, type, content, ttl, prio)  VALUES (2, 'infra.lab', 'NS', 'ns1.gtld-servers.dns', 3600, 0);

INSERT INTO records (domain_id, name, type, content, ttl, prio)  VALUES (3, 'home.lab', 'SOA', 'ns1.gtld-servers.dns dns.admin 0 10800 3600 604800 3600', 3600, 0);
INSERT INTO records (domain_id, name, type, content, ttl, prio)  VALUES (3, 'home.lab', 'NS', 'ns1.gtld-servers.dns', 3600, 0);

INSERT INTO records (domain_id, name, type, content, ttl, prio)  VALUES (2, 'ntp.infra.lab', 'A', '127.0.0.1', 3600, 0);
INSERT INTO records (domain_id, name, type, content, ttl, prio)  VALUES (2, 'doh.infra.lab', 'CNAME', 'dns.quad9.net', 30, 0);

INSERT INTO records (domain_id, name, type, content, ttl, prio)  VALUES (3, 'welcome.home.lab', 'A', '10.0.0.100', 3600, 0);
INSERT INTO records (domain_id, name, type, content, ttl, prio)  VALUES (3, 'hello.home.lab', 'TXT', '"world"', 3600, 0);
