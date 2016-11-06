DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_PAGES`(IN pageId INT, IN postCount INT)
BEGIN
	UPDATE PAGES
    SET PAGES.PostCount = PAGES.PostCount + postCount
    WHERE PAGES.PageId = pageId; 
END$$
DELIMITER ;
