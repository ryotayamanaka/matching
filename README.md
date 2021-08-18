# matching

## Create Tables

```
sqlplus sys/<password>@<ip_address>:1521/<service_name> as sysdba
@scripts/create-user.sql
exit
```

```
sqlplus matching/WELcome123##@<ip_address>:1521/<service_name>
@scripts/create-tables.sql
@scripts/insert-data.sql
exit
```

## Create Graph

Connect:

```
opg-jshell --no_connect
var jdbcUrl = "jdbc:oracle:thin:@<ip_address>:1521/<service_name>";
var conn = DriverManager.getConnection(jdbcUrl, "matching", "WELcome123##");
conn.setAutoCommit(false);
var pgql = PgqlConnection.getConnection(conn);
```

```
pgql.prepareStatement("DROP PROPERTY GRAPH \"Matching\"").execute();
pgql.prepareStatement(Files.readString(Paths.get("./scripts/create-pg.pgql"))).execute();
conn.commit();
```

## Run Matching

pgql.setGraph("Matching");
pgql.prepareStatement("SELECT COUNT(v) FROM MATCH (v)").executeQuery().print();
pgql.prepareStatement(Files.readString(Paths.get("./scripts/match_v1.pgql"))).executeQuery().print();
