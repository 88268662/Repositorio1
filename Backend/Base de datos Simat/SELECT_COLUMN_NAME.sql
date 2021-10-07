SELECT COLUMN_NAME
 from INFORMATION_SCHEMA.COLUMNS
 where TABLE_SCHEMA = 'tablassimatsql'
 and TABLE_NAME = 'estudiante'
 order by ORDINAL_POSITION
       