--
-- TASK 1: Query to get best seller product for male and female.
--

SELECT
    product.categoryID,
    product.productID,
    product.productName,
    SUM(TRANSACTION.qty) AS TotalQty

FROM
    product
LEFT JOIN TRANSACTION ON product.productID = TRANSACTION.productID
GROUP BY
    product.productID
ORDER BY
    SUM(TRANSACTION.qty)
DESC

-- best seller product FOR MALE

SELECT
    product.categoryID,
    product.productID,
    product.productName,
    SUM(TRANSACTION.qty) AS TotalQty
FROM
    product
LEFT JOIN TRANSACTION ON product.productID = TRANSACTION.productID
WHERE
    categoryID = 'male'
GROUP BY
    productID
ORDER BY
    SUM(TRANSACTION.qty)
DESC
LIMIT 1


--
-- Task 2: Query to get customer that spends the most money.
--

SELECT
    customer.customerID,
    customer.customerName,
    SUM(TRANSACTION.qty) AS TotalQty,
    SUM(TRANSACTION.qty * product.price) AS TotalAmount
FROM
    product
LEFT JOIN TRANSACTION ON product.productID = TRANSACTION.productID
LEFT JOIN customer ON TRANSACTION
    .customerID = customer.customerID
GROUP BY
    customer.customerID
ORDER BY
    TotalAmount
DESC
    ,
    `customer`.`customerName` ASC
LIMIT 1


--
-- Task 3: Query to show number of transactions for every 2 hours.
--

-- transactions for every 2 hours in all time:

SELECT
    FROM_UNIXTIME(
        CEILING(UNIX_TIMESTAMP(`orderDate`) / 7200) * 7200
    ) AS timeslice,
    COUNT(*) AS TotalTransaction
FROM TRANSACTION
GROUP BY
    timeslice


-- transactions for every 2 hours on specific date:

SELECT
    FROM_UNIXTIME(
        CEILING(UNIX_TIMESTAMP(`orderDate`) / 7200) * 7200
    ) AS timeslice,
    COUNT(*) AS TotalTransaction
FROM TRANSACTION
WHERE
    DATE(`orderDate`) = '2021-03-19'
GROUP BY
    timeslice
