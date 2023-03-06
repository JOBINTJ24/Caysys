CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_staff`(IN s_namee varchar(20),s_uid int)
BEGIN
UPDATE staff SET s_name=s_namee WHERE id=s_uid;
END