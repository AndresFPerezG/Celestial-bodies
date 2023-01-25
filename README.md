To create a dump file you need to do the following:

1. In your terminal, out of the psql shell write: pg_dump -cC --inserts -U [username] [dbname] > sql_file_name.sql
2. The file will be saved in your current position like this: sql_file_name.sql
3. Rebuild your db from the dump file: psql -U postgres < sql_file_name.sql
4. Connect to your db: psql --username=[username] --dbname=[dbname]
