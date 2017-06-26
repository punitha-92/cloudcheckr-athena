CREATE EXTERNAL TABLE IF NOT EXISTS sampledb.dsc_dbr_Jan (
  `InvoiceID` bigint,
  `PayerAccountId` BIGINT,
  `LinkedAccountId` BIGINT,
  `RecordType` string,
  `ProductName` string,
  `RateId` INT,
  `SubscriptionId` bigint,
  `PricingPlanId` int,
  `UsageType` string,
  `Operation`string,
  `AvailabilityZone` string,
  `ReservedInstance` string,
  `ItemDescription` string,
  `UsageStartDate` string,
  `UsageEndDate` string,
  `UsageQuantity` int,
  `BlendedRate` float,
  `BlendedCost` float,
  `UnBlendedRate` float,
  `UnBlendedCost` float
 )
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '|'
    ESCAPED BY '\\'
      LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION 's3://dsc-dbr/psv/Jan'