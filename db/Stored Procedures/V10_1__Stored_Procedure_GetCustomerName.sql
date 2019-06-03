Create  PROCEDURE Getcustomername(@custCode nvarchar(100), @custName nvarchar(200) OUT)
AS
BEGIN
SELECT @custName = CUST_NAME FROM CUSTOMER WHERE CUST_CODE=@custCode
END