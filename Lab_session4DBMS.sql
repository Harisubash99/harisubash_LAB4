Create database if not exists order_directory;
use order_directory;
create table Supplier(SUPP_ID int primary key,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50),
SUPP_PHONE varchar(10) NOT NULL);

create table coustomer (CUS_ID INT NOT NULL,
CUS_NAME VARCHAR(20) NOT NULL,
CUS_PHONE VARCHAR(10) NOT NULL,
CUS_CITY varchar(30) NOT NULL,
CUS_GENDER CHAR,
PRIMARY KEY (CUS_ID));

create table Category(CAT_ID INT NOT NULL,
CAT_NAME VARCHAR(20) NOT NULL,
PRIMARY KEY (CAT_ID));

create table product(PRO_ID INT NOT NULL,
PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy",
PRO_DESC VARCHAR(60),
CAT_ID INT NOT NULL,
PRIMARY KEY (PRO_ID),
FOREIGN KEY (CAT_ID) REFERENCES CATEGORY (CAT_ID));

create table supplier_pricing(PRICING_ID INT NOT NULL,
PRO_ID INT NOT NULL,
SUPP_ID INT NOT NULL,
SUPP_PRICE INT DEFAULT 0,
PRIMARY KEY (PRICING_ID),
FOREIGN KEY (PRO_ID) REFERENCES PRODUCT (PRO_ID),
FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER(SUPP_ID));
CREATE TABLE IF NOT EXISTS `order` (
ORD_ID INT NOT NULL,
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE,
CUS_ID INT NOT NULL,
PRICING_ID INT NOT NULL,
PRIMARY KEY (ORD_ID),
FOREIGN KEY (CUS_ID) REFERENCES COUSTOMER(CUS_ID),
FOREIGN KEY (PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID)
);

CREATE TABLE IF NOT EXISTS rating (
RAT_ID INT NOT NULL,
ORD_ID INT NOT NULL,
RAT_RATSTARS INT NOT NULL,
PRIMARY KEY (RAT_ID),
FOREIGN KEY (ORD_ID) REFERENCES `order`(ORD_ID)
);

INSERT INTO SUPPLIER VALUES(1,"Rajesh Retails","Delhi",'1234567890');
INSERT INTO SUPPLIER VALUES(2,"Appario Ltd.","Mumbai",'2589631470');
INSERT INTO SUPPLIER VALUES(3,"Knome products","Banglore",'9785462315');
INSERT INTO SUPPLIER VALUES(4,"Bansal Retails","Kochi",'8975463285');
INSERT INTO SUPPLIER VALUES(5,"Mittal Ltd.","Lucknow",'7898456532');

INSERT INTO COUSTOMER VALUES(1,"AAKASH",'9999999999',"DELHI",'M');
INSERT INTO COUSTOMER VALUES(2,"AMAN",'9785463215',"NOIDA",'M');
INSERT INTO COUSTOMER VALUES(3,"NEHA",'9999999999',"MUMBAI",'F');
INSERT INTO COUSTOMER VALUES(4,"MEGHA",'9994562399',"KOLKATA",'F');
INSERT INTO COUSTOMER VALUES(5,"PULKIT",'7895999999',"LUCKNOW",'M');

INSERT INTO CATEGORY VALUES( 1,"BOOKS");
INSERT INTO CATEGORY VALUES(2,"GAMES");
INSERT INTO CATEGORY VALUES(3,"GROCERIES");
INSERT INTO CATEGORY VALUES (4,"ELECTRONICS");
INSERT INTO CATEGORY VALUES(5,"CLOTHES");

INSERT INTO PRODUCT VALUES(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
INSERT INTO PRODUCT VALUES(2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
INSERT INTO PRODUCT VALUES(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
INSERT INTO PRODUCT VALUES(4,"OATS","Highly Nutritious from Nestle",3);
INSERT INTO PRODUCT VALUES(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
INSERT INTO PRODUCT VALUES(6,"MILK","1L Toned MIlk",3);
INSERT INTO PRODUCT VALUES(7,"Boat EarPhones","1.5Meter long Dolby Atmos",4);
INSERT INTO PRODUCT VALUES(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
INSERT INTO PRODUCT VALUES(9,"Project IGI","compatible with windows 7 and above",2);
INSERT INTO PRODUCT VALUES(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
INSERT INTO PRODUCT VALUES(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
INSERT INTO PRODUCT VALUES(12,"Train Your Brain","By Shireen Stephen",1);

INSERT INTO SUPPLIER_PRICING VALUES(1,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUES(2,3,5,30000);
INSERT INTO SUPPLIER_PRICING VALUES(3,5,1,3000);
INSERT INTO SUPPLIER_PRICING VALUES(4,2,3,2500);
INSERT INTO SUPPLIER_PRICING VALUES(5,4,1,1000);
INSERT INTO SUPPLIER_PRICING VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING VALUES(16,5,2,2999);

INSERT INTO `ORDER` VALUES (101,1500,"2021-10-06",2,1);
INSERT INTO `ORDER` VALUES(102,1000,"2021-10-12",3,5);
INSERT INTO `ORDER` VALUES(103,30000,"2021-09-16",5,2);
INSERT INTO `ORDER` VALUES(104,1500,"2021-10-05",1,1);
INSERT INTO `ORDER` VALUES(105,3000,"2021-08-16",4,3);
INSERT INTO `ORDER` VALUES(106,1450,"2021-08-18",1,9);
INSERT INTO `ORDER` VALUES(107,789,"2021-09-01",3,7);
INSERT INTO `ORDER` VALUES(108,780,"2021-09-07",5,6);
INSERT INTO `ORDER` VALUES(109,3000,"2021-09-10",5,3);
INSERT INTO `ORDER` VALUES(110,2500,"2021-09-10",2,4);
INSERT INTO `ORDER` VALUES(111,1000,"2021-09-15",4,5);
INSERT INTO `ORDER` VALUES(112,789,"2021-09-16",4,7);
INSERT INTO `ORDER` VALUES(113,31000,"2021-09-16",1,8);
INSERT INTO `ORDER` VALUES(114,1000,"2021-09-16",3,5);
INSERT INTO `ORDER` VALUES(115,3000,"2021-09-16",5,3);
INSERT INTO `ORDER` VALUES(116,99,"2021-09-17",2,14);

INSERT INTO RATING VALUES(1,101,4);
INSERT INTO RATING VALUES(2,102,3);
INSERT INTO RATING VALUES(3,103,1);
INSERT INTO RATING VALUES(4,104,2);
INSERT INTO RATING VALUES(5,105,4);
INSERT INTO RATING VALUES(6,106,3);
INSERT INTO RATING VALUES(7,107,4);
INSERT INTO RATING VALUES(8,108,4);
INSERT INTO RATING VALUES(9,109,3);
INSERT INTO RATING VALUES(10,110,5);
INSERT INTO RATING VALUES(11,111,3);
INSERT INTO RATING VALUES(12,112,4);
INSERT INTO RATING VALUES(13,113,2);
INSERT INTO RATING VALUES(14,114,1);
INSERT INTO RATING VALUES(15,115,1);
INSERT INTO RATING VALUES(16,116,0);

/* Q3*/
select count(Y.CUS_GENDER) as NoofCoustomers, Y.CUS_GENDER from
(select X.CUS_ID, X.ord_amt, X.CUS_GENDER, X.CUS_NAME from
(select `order`.CUS_ID,`order`.ord_amt,coustomer.CUS_GENDER, coustomer.CUS_NAME
FROM `order`
 inner join COUSTOMER 
 on `order`.CUS_ID= COUSTOMER.CUS_ID 
 HAVING `order`.ORD_AMOUNT >= 3000 ) as X ) as Y


/*Q4*/
select `order`.*,Q.pro_name from`order` inner join
(select product.pro_id, product.pro_name,supplier_pricing.pricing_id from product inner join 
supplier_pricing on product.pro_id = supplier_pricing.pro_id) as Q 
on `order`.pricing_id = Q.pricing_id where `order`.cus_id = 2


/*Q5*/
select supplier.* from supplier inner join
(select supp_id from supplier_pricing group by supp_id having count(supp_id)>1) as P on P.supp_id = supplier.supp_id


/*Q6*/
select category.cat_name,category.cat_id, min(X.least_expansive),X.pro_name from category inner join
(select product.pro_id,product.cat_id,product.pro_name,W.least_expansive from product inner join
(select pro_id , min(supp_price) as least_expansive from supplier_pricing group by supplier_pricing.pro_id) as W on product.pro_id = W.pro_id) as X on category.cat_id = X.cat_id group by X.cat_id


/*Q7*/
select X.pro_id,X.pro_name from `order` inner join
(select supplier_pricing.pricing_id,Q.pro_id,Q.pro_name from supplier_pricing inner join
(select pro_id,pro_name from product) as Q on supplier_pricing.pro_id = Q.pro_id) as X on `order`.pricing_id = X.pricing_id where `order`.ORD_Date > '2021-10-05'

/*Q8*/
select cus_name, cus_gender from coustomer where cus_name like 'A%' or cus_name like '%A'


/*Q9*/
select A5.supp_id,A5.average_rating,A5.supp_name
Case
when A5.average_rating = 5  then 'excellent service'
when A5.average_rating > 4  then 'good service'
when A5.average_rating > 2  then 'average service'
Else 'poor service'
End as Types_of_service from
(select A4.supp_id,A4.supp_name,sum(A4.rat_ratstars)/count(A4.rat_ratstars) as average_rating from
(select rating.rat_ratstars,A3.supp_id,A3.supp_name from rating inner join
(select A2.supp_id,A2.supp_name, `order`.ord_id from `order` inner join 
(select A1.supp_id,A1.supp_name,supplier_pricing.pricing_id from supplier_pricing inner join
(select supp_id,supp_name from supplier) as A1 on supplier_pricing.supp_id = A1.supp_id) as A2 on `order`.pricing_id = A2.pricing_id)as A3 on A3.ord_id = rating.ord_id)as A4) as A5


