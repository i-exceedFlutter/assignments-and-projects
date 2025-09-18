abstract class database{
  void connect();
  void query(String sql);
}

class OracleDatabase implements database{
  @override
  void connect() =>print("Connected to Oracle");
  void query(String sql)=>print("connected to Oracle :${sql}");
}

class SqlDatabase extends database{
  @override
  void connect() =>print("Connected to Sql");
  @override
  void query(String sql) =>print("Connected to sql:${sql}");
  
}

void main(){
  database db= OracleDatabase();
  db.connect();
  db.query("SELECT * FROM users ");
}