#################### STRING    #######################
use dummy;
#WASQ FULLNAME OF CUSTOMER AND CUSTYOMER NUMBER

SELECT * FROM CUSTOMERS;

SELECT CONCAT(CONTACTFIRSTNAME, ' ', CONTACTLASTNAME) AS NAME, CUSTOMERNUMBER FROM CUSTOMERS;

SELECT * FROM PRODUCTS;

SELECT LENGTH (PRODUCTDESCRIPTION) FROM PRODUCTS;

########################################################################################################

SELECT LEFT("WELCOME TO CYBROM",7);

SELECT RIGHT("WELCOME TO CYBROM",6);

SELECT SUBSTRING("WELCOME TO CYBROM",-6,6);

#WASQ THAT RETURN THE FIRST NAME OF EMPLOYEE THAT STATRTS WITH VOVEL AND ENDS WITH VOVEL...
SELECT * FROM EMPLOYEES;

SELECT FIRSTNAME FROM EMPLOYEES
WHERE LEFT(FIRSTNAME,1) IN ('A','E','I','O','U')
or RIGHT(FIRSTNAME,1) IN ('a','e','i','o','u');
