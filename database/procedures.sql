DELIMITER $$

CREATE PROCEDURE sp_create_order(IN p_user_id INT, IN p_amount DECIMAL(10, 2))
BEGIN
    START TRANSACTION;

    INSERT INTO orders (user_id, total_amount)
    VALUES (p_user_id, p_amount);

    COMMIT;
END $$

DELIMITER ;
