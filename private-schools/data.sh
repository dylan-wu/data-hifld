xsv headers raw/Private_Schools.csv > data/headers.txt
sqlite-utils insert data/schools.db school raw/Private_Schools.csv --pk=FID --csv
sqlite-utils transform data/schools.db school --type FID integer
sqlite-utils transform data/schools.db school --type POPULATION integer
sqlite-utils transform data/schools.db school --type ENROLLMENT integer
sqlite-utils transform data/schools.db school --type START_GRADE integer
sqlite-utils transform data/schools.db school --type END_GRADE integer
sqlite-utils transform data/schools.db school --type FT_TEACHER integer
