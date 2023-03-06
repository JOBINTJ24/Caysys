CREATE DEFINER=`root`@`localhost` PROCEDURE `view_staff`()
BEGIN
select * from staff;
END