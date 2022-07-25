use Pub1

Select *
From Titles

-- list of currect bookprices
Select Titles.partnum, Titles.bktitle, Titles.slprice
From Titles

--list of all books with a price of $50 or more
Select Titles.partnum, Titles.bktitle, Titles.slprice
From Titles
where slprice >= 50

--list the details of the book that has "sailing" as the booktitle
Select Titles.partnum, Titles.bktitle, Titles.slprice
From Titles
where bktitle = 'Sailing'

--Add column ,Provide 7% off on all books for which the sale price is grater than $45 after the discount
Select Titles.partnum, Titles.bktitle, Titles.slprice-slprice *0.07 as discounted_price
From Titles
where slprice - slprice *0.07 >= 45


--Take a look on customers table
Select*
From Customers

-- List all the customers who live in either the state ofMassachusetts ot New York.
Select Customers.city, Customers.state, Customers.custname
From Customers
Where state = 'NY' or State = 'MA'

--List costumers whose sales representative ID is S01 and who are either from MA or NY ( the AND operation happens first then OR happens)
Select Customers.city, Customers.state, Customers.custname, Customers.repid
From Customers
Where state = 'NY' or State = 'MA' And repid = 'S01'

--List costumers whose sales representative ID is S01 and who are either from MA or NY( the OR operation happens before AND)
Select Customers.city, Customers.state, Customers.custname, Customers.repid
From Customers
Where (state = 'NY' or State = 'MA') And repid = 'S01'

--Searching Fora Range of Values and Null Values
--List of all books that are prices between $35 and $70, to get discound for the customers later
Select Bktitle, slprice
From Titles
Where slprice Between 35 And 70

--List the books that do not have the development cost recorded
Select Bktitle, slprice, devcost
From Titles
Where devcost Is Null

--List the books that do have the development cost recorded
Select Bktitle, slprice, devcost
From Titles
Where devcost Is Not Null


--Retrieving Data Based on String Patterns
--List of books that have the characters "art" in the title
Select Titles.bktitle, Titles.partnum, Titles.slprice
From Titles
Where bktitle Like '%art%'

--List of books for which the titles begin with A,M, or C
Select Titles.bktitle, Titles.partnum, Titles.slprice
From Titles
Where bktitle Like '[AMC]%'

--List of books for which the titles begin with the characters from A to G
Select Titles.bktitle, Titles.partnum, Titles.slprice
From Titles
Where bktitle Like '[A-G]%'

--List the customers details from the customers table for those who havea 4 digit customers number
Select Customers.custnum, Customers.custname, Customers.city
From Customers
Where custnum Like '____'


--List the customers details from the customers table for those who 
--have a 4 digit customers number with the last digit begin either 1 or 9
Select Customers.custnum, Customers.custname, Customers.city
From Customers
Where custnum Like '____[19]'











