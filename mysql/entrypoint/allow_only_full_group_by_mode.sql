-- https://dev.mysql.com/doc/refman/8.0/en/group-by-handling.html
-- https://dev.mysql.com/doc/refman/8.0/en/sql-mode.html#sqlmode_only_full_group_by
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));
