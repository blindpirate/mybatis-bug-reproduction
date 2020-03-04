# MyBatis bug reproduction

## Step to reproduce:

- `mvn flyway:migrate`
- Run `Main` class:

```
DEBUG [main] - Opening JDBC Connection
DEBUG [main] - Created connection 240166646.
DEBUG [main] - Setting autocommit to false on JDBC Connection [conn0: url=jdbc:h2:file:./target/test user=ROOT]
DEBUG [main] - ==>  Preparing: select USER.id,USER.name,t.score_num from (select USER_ID,sum(SCORE) as score_num from `MATCH` group by USER_ID) t inner join USER on t.USER_ID=USER.ID 
DEBUG [main] - ==> Parameters: 
DEBUG [main] - <==      Total: 3
Result size: 2
```

The result set should be 3 rows, but MyBatis returns 2 rows.
