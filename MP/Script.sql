--<ScriptOptions statementTerminator=";"/>
CREATE TABLE `product` (
  `Product_Id` int(11) NOT NULL,
  `Product_Name` varchar(45) DEFAULT NULL,
  `Product_Price` int(11) DEFAULT NULL,
  `Product_Description` varchar(100) DEFAULT NULL,
  `Batch_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Product_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf-8;

