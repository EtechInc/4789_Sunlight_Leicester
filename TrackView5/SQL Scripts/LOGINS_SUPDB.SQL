USE SUPDB
GO
	--Check that the database role exists
	IF DATABASE_PRINCIPAL_ID('sup_application') IS NULL
	Begin
		PRINT 'Create Role sup_Application'
		CREATE ROLE [sup_application]
	END
		ALTER AUTHORIZATION ON ROLE::[sup_application] TO [dbo]

		--Set the Schemas to use the database role.

		ALTER AUTHORIZATION ON SCHEMA:: Supertrack TO sup_Application
GO
		ALTER AUTHORIZATION ON SCHEMA:: PLC TO sup_Application
GO
		ALTER AUTHORIZATION ON SCHEMA:: Master TO sup_Application
GO
		ALTER AUTHORIZATION ON SCHEMA:: Config TO sup_Application
Go
		ALTER AUTHORIZATION ON SCHEMA:: Customised TO sup_Application
GO		
		ALTER AUTHORIZATION ON SCHEMA:: trackview TO sup_Application
		Print 'Updated Schema Owners'
GO


		GRANT EXECUTE on OBJECT:: [Maintenance].[uspMaintenanceBagAdd] TO sup_application
GO
		GRANT EXECUTE on OBJECT:: [Maintenance].[uspMaintenanceBagCount] TO sup_application
GO	
		GRANT EXECUTE on OBJECT:: [Maintenance].[uspMaintenanceBagCountReplyState] TO sup_application
GO	
		GRANT EXECUTE on OBJECT:: [Maintenance].[uspMaintenanceBagDone] TO sup_application
GO	
		GRANT EXECUTE on OBJECT:: [Maintenance].[uspMaintenanceBagGetState] TO sup_application
GO	
		GRANT EXECUTE on OBJECT:: [Maintenance].[uspMaintenanceBagMaintComplete] TO sup_application



GO
	--Check if user exists in imported database, if so delete
	IF Exists (SELECT Name FROM SUPDB.sys.database_principals WHERE name = 'SUP')
		BEGIN 
			DROP USER SUP
		END

GO	
	-- Check if login exists, if so delete
		IF EXISTS(Select name FROM master.dbo.syslogins WHERE name = 'SUP')
		BEGIN
			DROP LOGIN SUP
		END
GO
	-- Create the new Login to the database.
	CREATE LOGIN SUP 
		WITH PASSWORD = N'1234',
		CHECK_POlICY = OFF,
		CHECK_EXPIRATION = OFF,
		DEFAULT_DATABASE = SUPDB,
		DEFAULT_LANGUAGE = English;
GO	
	-- Create the user assign the schema	
	CREATE USER SUP FOR LOGIN SUP
		WITH DEFAULT_SCHEMA = Supertrack;

GO 
	-- Add to database role
	EXEC sp_addrolemember 
		@rolename = 'sup_Application',
		@membername = 'SUP'

GO 
	-- Add to back up role
	EXEC sp_addrolemember 
		@rolename = 'db_backupoperator',
		@membername = 'SUP'
GO
PRINT 'Complete'

