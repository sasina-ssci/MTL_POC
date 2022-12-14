CREATE TABLE SECUPI.TLI_TRG.st_pg_fivetran_test_performance AS
SELECT ID, 
BUSINESSENTITYID, 
PERSONTYPE, 
NAMESTYLE, 
CASE WHEN TITLE = 'MS.' THEN 'นางสาว' WHEN TITLE = 'MR.' THEN 'นาย' ELSE 'ไม่มีคำนำหน้าชื่อ' END TITLE,
TITLE ORIG_TITLE,
CASE WHEN TITLE = 'MS.' THEN 'F' WHEN TITLE = 'MR.' THEN 'M' ELSE 'U' END GENDER,
FIRSTNAME, 
MIDDLENAME, 
LASTNAME, 
SUFFIX, 
EMAILPROMOTION, 
ADDITIONALCONTACTINFO, 
DEMOGRAPHICS, 
ROWGUID, 
MODIFIEDDATE
FROM SECUPI.TLI_SRC.LD_PG_FIVETRAN_TEST_PERFORMANCE;