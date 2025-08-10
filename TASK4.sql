
select * from [HumanResources].[Employee]
select * from [Person].[Person]
select * from [Production].[ProductListPriceHistory]
select * from [Production].[Product]

--avg() function
select p.Name,avg(ph.ListPrice) as avgprice
from 
[Production].[Product] p inner join [Production].[ProductListPriceHistory] ph
on p.ProductID=ph.ProductID
group by p.Name

--sum() function
select p.Name,sum(ph.ListPrice) as totalprice
from 
[Production].[Product] p inner join [Production].[ProductListPriceHistory] ph
on p.ProductID=ph.ProductID
group by p.Name

--max() function
select p.Name,max(ph.ListPrice) as maxprice
from 
[Production].[Product] p inner join [Production].[ProductListPriceHistory] ph
on p.ProductID=ph.ProductID
group by p.Name

--min() function
select p.Name,min(ph.ListPrice) as avgprice
from 
[Production].[Product] p inner join [Production].[ProductListPriceHistory] ph
on p.ProductID=ph.ProductID
group by p.Name

--all agggregate fun
select p.Name,avg(ph.ListPrice) as avgprice,max(ph.ListPrice) as maxprice,min(ph.ListPrice) as minprice,
sum(ph.ListPrice) as toalprice
from 
[Production].[Product] p inner join [Production].[ProductListPriceHistory] ph
on p.ProductID=ph.ProductID
group by p.Name

--all aggregate fun with having clause 
select p.ProductID,p.Name,avg(ph.ListPrice) as avgprice,max(ph.ListPrice) as maxprice,min(ph.ListPrice) as minprice,
sum(ph.ListPrice) as toalprice
from 
[Production].[Product] p inner join [Production].[ProductListPriceHistory] ph
on p.ProductID=ph.ProductID
group by p.Name,p.ProductID
having p.ProductID between 500 and 800

--counting how many subcatogries in a each category
select pc.Name as pcatname,count(ps.Name) as pscatname
from [Production].[ProductCategory] pc
inner join [Production].[ProductSubcategory] ps
on pc.ProductCategoryID=ps.ProductCategoryID
inner join [Production].[Product] p
on p.ProductSubcategoryID=ps.ProductSubcategoryID
group by
pc.Name 

--counting how many no of products in a each category and subcategory
select pc.Name as pcatname,ps.Name as pscatname,count(p.Name)
from [Production].[ProductCategory] pc
inner join [Production].[ProductSubcategory] ps
on pc.ProductCategoryID=ps.ProductCategoryID
inner join [Production].[Product] p
on p.ProductSubcategoryID=ps.ProductSubcategoryID
group by
pc.Name ,ps.Name


--all aggregatefun
select pc.Name as pcatname,ps.Name as pscatname,p.Name,p.ListPrice,max(p.ListPrice) maxprice,
min(p.listprice) minprice,avg(p.listprice) avgprice,sum(p.listprice) totalprice
from [Production].[ProductCategory] pc
inner join [Production].[ProductSubcategory] ps
on pc.ProductCategoryID=ps.ProductCategoryID
inner join [Production].[Product] p
on p.ProductSubcategoryID=ps.ProductSubcategoryID
group by  pc.Name ,ps.Name ,p.Name,p.ListPrice


select * from [Production].[ProductCategory]
select * from [Production].[Product]
select * from [Production].[ProductSubcategory]