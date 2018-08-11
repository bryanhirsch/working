Services
========

Prep work for deep dive on services.

* BH notes and comments: https://docs.google.com/spreadsheets/d/1WSUEPk8Lodv3i2q0idfh_MS6qGX5X5hMK1qZ67RrzkE/edit#gid=468077940
* BH proposal: https://docs.google.com/document/d/1So6VoNxlf8lfkzz9b0umjlPss__LmbxWnOA5ta3Gxd4/edit
* Research from Carolyn and Colin
  * https://docs.google.com/document/d/1vZ1vuox_Rtjk7ZQhjXZwZwYBJ_S1IdIxZ2s2Y9_uoVY/edit#heading=h.nacdlmuamgnl
  * https://docs.google.com/spreadsheets/d/1kPmB34JwcN-vg8k8osC_oYJ1M7vbM6XObuCY1ym5SGg/edit?zx=khnmtsz2dhfi#gid=1474942824
  * https://docs.google.com/spreadsheets/d/1HAqn94d8S9ooYxpv4ZKK5ElY-P4-iSGDMcA1de4xmPs/edit#gid=0
  * https://docs.google.com/spreadsheets/d/1HAqn94d8S9ooYxpv4ZKK5ElY-P4-iSGDMcA1de4xmPs/edit#gid=593264435


Data
----

Data here comes from Superset and Drupal Views.

Steps to merging unique page views and scores with short descriptions:

1. Create a Drupal view of services with node ids and short descriptons.
2. Make the Drupal data into a CSV. Enclose each cell in quotes.
3. Export Superset data as CSV. Enclose each cell in quotes.
4. Turn CSVs into VALUES() clauses in MySQL insert statements.
5. Create MySQL database named services. Then follow the steps below to insert, join, and export the data.

### Use MySQL to join and export Superset and Drupal data
```
mysql -uroot services< 1_create_tables.sql 
mysql -uroot services< 2_insert_superset_data.sql 
mysql -uroot services< 3_insert_drupal_data.sql 
mysql -uroot services< 4_export_top_100_to_csv.sql > services.csv 
```
