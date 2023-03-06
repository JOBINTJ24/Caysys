CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_staf`(IN e_namei varchar(20),IN salari int)
BEGIN
insert into staff (s_name ,salary) values(e_namei,salari);
END