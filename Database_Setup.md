### Setting up a PostgreSQL Database

### Step 1: Prepare your tables.

- [ ] Export the tables in your database(s) into separate .csv files
- [ ] In total, .csv files should be less than 10MB
- [ ] Upload your .csv files to the teach editor in the course-specs branch of your course.

### Step 2: Prepare your .sql file.

- [ ] Write a .sql file creating your database. (See the example_postgres.sql file in this repository.)
- [ ] Replace the links in the section "COPY table FROM ... " with the table links generated in the teach editor.
- [ ] Create one .sql file for all databases in your course.
- [ ] Upload your .sql file to the teach editor in the course-specs branch of your course.

### Step 3: Update your requirements.sh file.

- [ ] Update the requirements.sh file in the course-specs branch of your course on GitHub.
- [ ] Follow the instructions to uncomment only the lines for a PostgreSQL database.

### Step 4: Setting up the pre-exercise code.

- [ ] In the teach editor, set up the following code:
     ```
     connect('postgresql', 'DATABASENAME')
     set_options(visible_tables = ['TABLE',  'TABLE'])
     ```
- [ ] Replace DATABASENAME with the database name from the requirements.sh file.
- [ ] Replace TABLE with 1 or more table names to be visible to students for an exercise. 
- [ ] Customize this code for every exercise.


### Setting up a SQL Server Database

### Step 1: Prepare your tables.

- [ ] Export the tables in your database(s) into separate .csv files
- [ ] In total, .csv files should be less than 10MB
- [ ] Upload your .csv files to the teach editor in the course-specs branch of your course.

### Step 2: Prepare your .sql file.

- [ ] Write a .sql file creating your database. (See the example_sqlserver.sql file in this repository.)
- [ ] Create one .sql file per database in your course.
- [ ] Upload your .sql file(s) to the teach editor in the course-specs branch of your course.

### Step 3: Update your requirements.sh file.

- [ ] Update the requirements.sh file in the course-specs branch of your course on GitHub.
- [ ] Follow the instructions to uncomment only the lines for a PostgreSQL database.

### Step 4: Setting up the pre-exercise code.

- [ ] In the teach editor, set up the following code. 
     ```
     connect(full_path = "mssql+pyodbc://$DB_USER:$DB_PASSWORD@localhost:1433/DATABASE?driver=MSODBC")
     set_options(visible_tables = ['Table1', 'Table2'])
     ```
- [ ] Replace DATABASE with your requirements.sh file's database name.
- [ ] Replace Table1 and Table2 with 1 or more table names to be visible to students for an exercise.
- [ ] Customize this code for every exercise.
