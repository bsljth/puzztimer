import db_connector/db_sqlite

let puzzles: array[32, string]

proc migrate*() =
  let db = open("data.db", "", "", "")
  
  db.exec(sql("BEGIN"))
  
  db.exec(sql("DROP TABLE IF EXISTS puzzles"))
  db.exec(sql("""CREATE TABLE puzzles (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
  )"""))
  
  db.exec(sql("DROP TABLE IF EXISTS users"))
  db.exec(sql("""CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
  )"""))
  
  db.exec(sql("DROP TABLE IF EXISTS sessions"))
  db.exec(sql("""CREATE TABLE sessions (
    id INTEGER PRIMARY KEY,
    user INTEGER,
    puzzle INTEGER,
    best_time INTEGER
  )"""))
  
  db.exec(sql("COMMIT"))
  db.close()