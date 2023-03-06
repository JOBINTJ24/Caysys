CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_staff`(IN sid int)
BEGIN
DELETE from staff where id=sid;
END