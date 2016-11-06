CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_PREFERENCES`(in UserId int)
BEGIN
	SELECT Preference
    FROM PREFERENCES p
    WHERE p.UserId = UserId;
END