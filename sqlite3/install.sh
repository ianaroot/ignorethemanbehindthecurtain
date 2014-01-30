brew install sqlite3
# OS X ships with sqlite3, but our curriculum
# requires a version that supports ".trace".
brew link sqlite3 --force
