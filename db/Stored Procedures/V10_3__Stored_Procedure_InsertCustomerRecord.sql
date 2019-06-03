Create Procedure InsertCustomerRecord
(
	@custCode nvarchar(6),
	@custName nvarchar(40),
	@custCity nvarchar(35),
	@workingArea nvarchar(35),
	@custCountry nvarchar(20),
	@grade int,
	@openingAmt decimal(12, 2),
	@receiveAmt decimal(12, 2),
	@paymentAmt decimal(12, 2),
	@outstandingAmt decimal(12, 2),
	@phone_no nvarchar(17),
	@agentCode nvarchar(6)
	
) 
As
 Begin
   Insert into CUSTOMER(CUST_CODE, CUST_NAME, CUST_CITY, WORKING_AREA, CUST_COUNTRY, GRADE, OPENING_AMT, RECEIVE_AMT, 
   PAYMENT_AMT, OUTSTANDING_AMT, PHONE_NO, AGENT_CODE)
   Values(@custCode, @custName, @custCity, @workingArea, @custCountry, @grade, @openingAmt, @receiveAmt, 
   @paymentAmt, @outstandingAmt, @phone_no, @agentCode)
 End