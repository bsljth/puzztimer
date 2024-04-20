import db_connector/db_sqlite

proc puzzles*() =
  let db = open("data.db", "", "", "")
  
  for x in db.fastRows(sql("SELECT * FROM ")):
    echo x
  echo "Puzzles!"