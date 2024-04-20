from std/os import paramCount, paramStr
from app import app
from migrate import migrate
from puzzles import puzzles

if (paramCount() == 0):
  app()

if paramStr(1) in ["-m", "--migrate"]:
  echo "Migrating..."
  echo "Run this command only once!"
  migrate()
elif paramStr(1) in ["-p", "--puzzles"]:
  puzzles()
else:
  echo "Invalid argument!"
  echo "Exiting puzztimer..."