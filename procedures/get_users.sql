DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_USERS`(IN userID INT, IN email VARCHAR(32))
BEGIN
	if userId is not null and userId > 0 then
		select * from users
        where users.UserId = userId;
	else 
		if email is not null and email != "" then
			select * from users
			where users.Email = email;
		else
			select * from users;
		end if;
    end if;
END$$
DELIMITER ;
