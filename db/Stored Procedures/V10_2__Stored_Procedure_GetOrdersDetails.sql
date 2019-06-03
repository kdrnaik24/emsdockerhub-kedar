Create  PROCEDURE GetOrderDetails(@orderNum decimal(6, 0), @orderDetails nvarchar(200) OUT)
AS
BEGIN
SELECT * FROM ORDERS WHERE ORD_NUM=@orderNum
END