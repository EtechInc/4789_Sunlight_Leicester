--SCRIPT TO ADD CUSTOMER POOL LINEN HANDLING--
-- T.REAMSBOTTOM 15/08/2018
USE SUPDB
GO

--Check if the column exists before creating it.
IF NOT EXISTS(SELECT *
          FROM   INFORMATION_SCHEMA.COLUMNS
          WHERE TABLE_SCHEMA = 'Supertrack' 
				AND	TABLE_NAME = 'tblCustomers'
                 AND COLUMN_NAME = 'isPool') 
Begin
	ALTER TABLE Supertrack.tblCustomers
		ADD  isPool bit DEFAULT 0
	
	--Remove all NULL values.
	UPDATE Supertrack.tblCustomers
		SET isPool = 0
		WHERE isPool IS NULL

end

/****** Object:  StoredProcedure [Supertrack].[uspCustomerWrite]    Script Date: 15/08/2018 09:07:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Tim Reamsbottom
-- Create date: 15.08.2018
-- Description:	Loading Program Write Data
-- =============================================
ALTER PROCEDURE [Supertrack].[uspCustomerWrite]   
	
	@Num int,
	@Name nvarchar(50),
	@Long nvarchar(25),
	@BackColor int,
	@ForeColor int,
	@LoadingProg nvarchar(32),
	@IsPool bit,
	@Status nvarchar(10),
	@myOut int OUTPUT
AS	
BEGIN
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF NOT EXISTS (SELECT Num FROM Supertrack.tblCustomers WHERE Num = @Num)
		BEGIN
			INSERT INTO Supertrack.tblCustomers
			(
				Num,
				Name,
				Long,
				BackColor,
				ForeColor,
				LoadingPrg,
				isPool,
				Status
			)
			VALUES
			(
				@Num,
				@Name,
				@Long,
				@BackColor,
				@ForeColor,
				@LoadingProg,
				@IsPool,
				@Status				
			)
		END
	
	ELSE
		BEGIN
			UPDATE		Supertrack.tblCustomers
			SET			Num = @Num,
						Name = @Name,
						Long = @Long,
						BackColor = @BackColor,
						ForeColor = @ForeColor,
						LoadingPrg = @LoadingProg,
						isPool	= @IsPool,
						Status = @Status
						
			WHERE		Num = @Num
		END
	
	   
END

GO


IF NOT EXISTS (SELECT ID FROM [Supertrack].[tblLanguage] WHERE ID =  970)
BEGIN
	INSERT INTO [Supertrack].[tblLanguage]
			   ([ID]
			   ,[LastUsed]
			   ,[Description]
			   ,[English]
			   ,[German]
			   )
		 VALUES(
			   970
			   ,CURRENT_TIMESTAMP
			   ,'Pool Customer'
			   ,'Pool Customer'
			   ,'Pool Kunde'
			   )
END
GO
IF NOT EXISTS (SELECT ID FROM [Supertrack].[tblLanguage] WHERE ID =  971)
BEGIN
	INSERT INTO [Supertrack].[tblLanguage]
           ([ID]
           ,[LastUsed]
           ,[Description]
           ,[English]
           ,[German]
		   )
     VALUES(
           971
           ,CURRENT_TIMESTAMP
           ,'Is the Customer pool'
           ,'Is Pool'
           ,'Ist Pool'
		   )
END

GO




