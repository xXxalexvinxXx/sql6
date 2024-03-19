CREATE FUNCTION ConvertSecondsToTimeFormat(seconds INT)
RETURNS VARCHAR(255)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE remainder_seconds INT;
    DECLARE time_format VARCHAR(255);
    
    SET days = FLOOR(seconds / (24 * 60 * 60));
    SET seconds = seconds - (days * 24 * 60 * 60);
    SET hours = FLOOR(seconds / (60 * 60));
    SET seconds = seconds - (hours * 60 * 60);
    SET minutes = FLOOR(seconds / 60);
    SET remainder_seconds = seconds - (minutes * 60);
    
    SET time_format = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', remainder_seconds, ' seconds');
    
    RETURN time_format;
END;
