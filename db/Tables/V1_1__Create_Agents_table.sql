CREATE TABLE  "AGENTS" 
   (	
    "AGENT_CODE" nvarchar(6) NOT NULL PRIMARY KEY, 
	"AGENT_NAME" nvarchar(40), 
	"WORKING_AREA" nvarchar(35), 
	"COMMISSION" int, 
	"PHONE_NO" nvarchar(15), 
	"COUNTRY" nvarchar(25) 
	 );
