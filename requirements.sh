# Use this file to install Linux software packages into the course image.
# There is a list of available Linux packages at 
# https://packages.debian.org/testing/allpackages

pip3 install --no-deps sqlwhat-ext==0.0.1

# **Write the SQL commands to COPY or BULK INSERT the data from CSV files into tables.
# **These should be in scripts named datasets/**DATABASENAME**.sql.
# **Then uncomment the code below, replacing **COURSEID** and **DATABASENAME**.
# **Links below found by copying from Assets in Teach.

# wget https://assets.datacamp.com/production/repositories/2704/datasets/79a6f55fb8292a3c7b3a7232aba528e6cfe024f3/Tripdata_sample.csv
# wget https://s3.amazonaws.com/assets.datacamp.com/production/course_**COURSEID**/datasets/**DATABASENAME**.sql


# **Uncomment only ONE section for PostgreSQL or SQL Server ONLY depending on your course -- not both!

# **PostgreSQL databases ONLY **
# service postgresql start \
#   && sudo -u postgres createdb --owner repl **DATABASENAME** \
#   && sudo -u repl psql --echo-all --dbname **DATABASENAME** --file **DATABASENAME**.sql \
# && service postgresql stop


# **SQL Server databases ONLY **
# Strip header row if it exists. If not, ignore this section.
# tail --lines +2 ./UFOData-small.csv > ./UFOData-noheader.csv

# For some reason, isql does not cope well with newlines in datasets. Replace newlines with pipe
# tr '\n' '|' < ./UFOData-noheader.csv > ./UFOData-pipe.csv

# Run the bulk insert script
# ./start_server.sh
# isql Default sa $MSSQL_SA_PASSWORD -v < ./UFOData.sql
