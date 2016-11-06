DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_USERS`(IN userId int, IN firstName CHAR(16), IN lastName VARCHAR(16), IN email VARCHAR(32), IN pass VARCHAR(16), IN phoneNum VARCHAR(10), IN street varchar(32), IN city varchar(20), IN zipcode int, IN state VARCHAR(2), IN country VARCHAR(16), IN isEmployee BOOL, IN signedIn BOOL)
BEGIN
	IF userId is null then
  
		INSERT INTO USERS(FirstName, LastName, Email, Pass, PhoneNum, Street, City, Zipcode, State, Country, IsEmployee, SignedIn) 
		VALUES (firstName, lastName, email, pass, phoneNum, street, city, zipcode, state, country, isEmployee, 1);
		IF isEmployee = 0 then 
			INSERT INTO PAGES(UserId, GroupId, PostCount) VALUES(LAST_INSERT_ID(), null, 0);
		end if;
    ELSE
		UPDATE USERS
		SET USERS.FirstName = firstName
        WHERE USERS.UserId = userId and firstName is not null;
        
        UPDATE USERS
		SET USERS.LastName = lastName
        WHERE USERS.UserId = userId and lastName is not null;
        
        UPDATE USERS
		SET USERS.PhoneNum = phoneNum
        WHERE USERS.UserId = userId and phoneNum is not null;
        
        UPDATE USERS
		SET USERS.Street = street
        WHERE USERS.UserId = userId and street is not null;
        
        UPDATE USERS
		SET USERS.City = city
        WHERE USERS.UserId = userId and city is not null;
        
        UPDATE USERS
		SET USERS.Zipcode = zipcode
        WHERE USERS.UserId = userId and zipcode is not null;
        
        UPDATE USERS
		SET USERS.State = state
        WHERE USERS.UserId = userId and state is not null;
        
        UPDATE USERS
		SET USERS.Country = country
        WHERE USERS.UserId = userId and country is not null;
        
        UPDATE USERS
		SET USERS.IsEmployee = isEmployee
        WHERE USERS.UserId = userId and isEmployee is not null;
        
        UPDATE USERS
		SET USERS.SignedIn = signedIn
        WHERE USERS.UserId = userId and signedIn is not null;
		
    END if;
END$$
DELIMITER ;
