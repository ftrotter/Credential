#!/bin/sh
#Get the structure of everything using the -d flag
mysqldump -d -u root -p cred > cred_structure.sql
#Get the contents of the following tables
mysqldump -u root -p cred Boards > Boards.sql
mysqldump -u root -p cred Carriers > Carriers.sql
mysqldump -u root -p cred EducationInstitutions > EducationInstitutions.sql
mysqldump -u root -p cred EducationLevels > EducationLevels.sql
mysqldump -u root -p cred Genders > Genders.sql
mysqldump -u root -p cred Specialitys > Specialitys.sql

