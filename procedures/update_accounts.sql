DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_ACCOUNTS`(in accountId int, in userId int, in creditCardNum varchar(16))
BEGIN
	if accountId is not null and exists(
		select * from Accounts
        where Accounts.AccountId = accountId
	) then
		#update
		update accounts
        set accounts.CreditCardNum = creditCardNum
        where accounts.AccountId = accountId;
	else
		if userId is not null and exists(
			select * from users
            where users.UserId = userId
        ) then
			insert into accounts(CustomerId, CreditCardNum, DateCreated)
            values(userId, creditCardNum, NOW());
		end if;
	end if;
        
END$$
DELIMITER ;
