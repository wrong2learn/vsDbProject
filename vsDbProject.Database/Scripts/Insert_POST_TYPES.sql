
MERGE INTO [Lookup].[POST_TYPES] AS TARGET 
USING (VALUES 	
	(1, N'Music'),
	(2, N'Art'),
	(3, N'History'),
	(4, N'Computer Science')
) 
AS SOURCE (Id, [Description]) 
ON TARGET.Id = SOURCE.Id
-- update matched rows 
WHEN MATCHED THEN 
UPDATE SET [Description] = SOURCE.[Description]
-- insert new rows 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (Id, [Description]) 
VALUES (Id, [Description]);

