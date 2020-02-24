﻿-- <Migration ID="3a7d5041-7c8e-4b24-a0da-6b5faf7083ed" TransactionHandling="Custom" />
GO

USE [master];
GO

ALTER AUTHORIZATION ON DATABASE::[$(DatabaseName)] to sa;
GO

USE [$(DatabaseName)];
GO
 
ALTER DATABASE CURRENT COLLATE Latin1_General_100_CI_AS;
GO
 
ALTER DATABASE CURRENT SET RECOVERY SIMPLE;
GO
 
ALTER DATABASE CURRENT SET AUTO_UPDATE_STATISTICS_ASYNC ON;
GO
-- Dynamic SQL must be used in the following query due to limitations in the TSqlDom script parser
EXEC(' 
ALTER DATABASE CURRENT
SET QUERY_STORE
(
    OPERATION_MODE = READ_WRITE,
    CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30),
    DATA_FLUSH_INTERVAL_SECONDS = 3000,
    MAX_STORAGE_SIZE_MB = 500,
    INTERVAL_LENGTH_MINUTES = 15,
    SIZE_BASED_CLEANUP_MODE = AUTO,
    QUERY_CAPTURE_MODE = AUTO,
    MAX_PLANS_PER_QUERY = 1000
);
');
GO
 