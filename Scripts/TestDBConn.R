install.packages(c("DBI", "dplyr","dbplyr","odbc"))
library(DBI)
library(dplyr)
library(dbplyr)
library(odbc)

DBI::dbConnect(odbc::odbc(),
               Driver = 'Snowflake',
               Server = 'sb56101.eu-central-1.snowflakecomputing.com',
               Database = '',
               SCHEMA = '',
               UID = 'ANDREA_PEDEMONTE',
               PWD = 'xxx'
)

odbc::dbConnect(odbc::odbc(),
                dns = 'Snowflake',
                server = 'sb56101.eu-central-1.snowflakecomputing.com',
                uid = 'ANDREA_PEDEMONTE',
                pwd = 'xxx')

# Apparently there are some issues with Snowflake and M2 mac laptops MADONNA INCENERITA.
