#!/bin/sh
#Get the structure of everything using the -d flag
mysqldump -d -u root -p cred > cred_structure.sql
#Get the contents of the following tables
mysqldump -u root -p cred Boards > Boards.sql
mysqldump -u root -p cred Carriers > Carriers.sql
mysqldump -u root -p cred EducationInstitutions > EducationInstitutions.sql
mysqldump -u root -p cred EducationLevels > EducationLevels.sql
mysqldump -u root -p cred Ethniccodes > Ethniccodes.sql
mysqldump -u root -p cred Genders > Genders.sql
mysqldump -u root -p cred Specialitys > Specialitys.sql
mysqldump -u root -p cred Languages > Languages.sql
mysqldump -u root -p cred Licensecodes > Licensecodes.sql
mysqldump -u root -p cred CredentialOrganizations > CredentialOrganizations.sql
mysqldump -u root -p cred Licensecodes > Licensecodes.sql
mysqldump -u root -p cred Hospitals > Hospitals.sql
mysqldump -u root -p cred Medicalboards > Medicalboards.sql
mysqldump -u root -p cred Notetypes > Notetypes.sql
mysqldump -u root -p cred Panels > Panels.sql
mysqldump -u root -p cred Patientacceptcodes > Patientacceptcodes.sql
mysqldump -u root -p cred Phonecoveragecodes > Phonecoveragecodes.sql
mysqldump -u root -p cred Privileges > Privileges.sql
mysqldump -u root -p cred Professioncodes > Professioncodes.sql
mysqldump -u root -p cred Servicecodes > Servicecodes.sql
mysqldump -u root -p cred Specialitys > Specialitys.sql
mysqldump -u root -p cred Countrys > Countrys.sql

