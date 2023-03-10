USE [SUPDB]
GO
/****** Object:  Table [Supertrack].[tblPLCBackup]    Script Date: 08/02/2018 12:09:20 ******/
IF EXISTS (SELECT * from INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'tblPLCBackup' AND TABLE_SCHEMA = 'Supertrack')
	BEGIN
		DROP TABLE [Supertrack].[tblPLCBackup]
	END
GO
GO
/****** Object:  Table [Supertrack].[tblPLCBackup]    Script Date: 08/02/2018 12:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Supertrack].[tblPLCBackup](
	[ID] [bigint] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[TimeDate] [datetime] NOT NULL DEFAULT (getdate()),
	[PLC] [int] NOT NULL,
	[Name] [nvarchar](100) NULL DEFAULT ('n/a'),
	[Data] [text] NOT NULL,
	[Status] [varchar](20) NULL DEFAULT ('default')
	)

GO

/****** Object:  StoredProcedure [Supertrack].[uspPLCBackup_Write]    Script Date: 08/02/2018 12:09:20 ******/
IF EXISTS (SELECT * from sys.objects where name = 'uspPLCBackup_Write')
BEGIN
	DROP PROCEDURE [Supertrack].[uspPLCBackup_Write]
END
GO
/****** Object:  StoredProcedure [Supertrack].[uspPLCBackup_ReadFiles]    Script Date: 08/02/2018 12:09:20 ******/
IF EXISTS (SELECT * from sys.objects where name = 'uspPLCBackup_ReadFiles')
BEGIN
	DROP PROCEDURE [Supertrack].[uspPLCBackup_ReadFiles]
END
GO
/****** Object:  StoredProcedure [Supertrack].[uspPLCBackup_ReadData]    Script Date: 08/02/2018 12:09:20 ******/
IF EXISTS (SELECT * from sys.objects where name = 'uspPLCBackup_ReadData')
BEGIN
	DROP PROCEDURE [Supertrack].[uspPLCBackup_ReadData]
END
GO
/****** Object:  StoredProcedure [Supertrack].[uspPLCBackup_CleanUp]    Script Date: 08/02/2018 12:09:20 ******/
IF EXISTS (SELECT * from sys.objects where name = 'uspPLCBackup_CleanUp')
BEGIN
	DROP PROCEDURE [Supertrack].[uspPLCBackup_CleanUp]
END
GO
/****** Object:  StoredProcedure [Supertrack].[uspPLCBackup_CleanUp]    Script Date: 08/02/2018 12:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tim Reamsbottom
-- Create date: 03.08.2017
-- Description:	Write PLC Back up file
-- =============================================
CREATE PROCEDURE [Supertrack].[uspPLCBackup_CleanUp] 


AS	
BEGIN
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

		BEGIN	-- Delete all automatically created data after 1 day.
			UPDATE Supertrack.[tblPLCBackup]
			SET Status = 'deleted'
			WHERE [TimeDate] < DATEADD(dd,-1,CURRENT_TIMESTAMP) AND Name = 'TCP/IP Disconnect'
		END
		
		BEGIN --Keep the last tcp disconnect data regardless of timestamp.
			with cte as ( SELECT TOP 1 [status] FROM Supertrack.[tblPLCBackup] WHERE Name = 'TCP/IP Disconnect' ORDER BY TimeDate DESC)
				update cte SET [status] = 'ok'
		END

		BEGIN	-- Delete all manually created data after 60 days.
			UPDATE Supertrack.[tblPLCBackup]
			SET Status = 'deleted'
			WHERE [TimeDate] < DATEADD(dd,-60,CURRENT_TIMESTAMP) AND Name <> 'TCP/IP Disconnect'
		END
		
		BEGIN
			DELETE FROM	Supertrack.[tblPLCBackup]
			WHERE (Status = 'deleted') AND [TimeDate] < DATEADD(dd,-7,CURRENT_TIMESTAMP)
		END		

END


GO
/****** Object:  StoredProcedure [Supertrack].[uspPLCBackup_ReadData]    Script Date: 08/02/2018 12:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tim Reamsbottom
-- Create date: 03.08.2017
-- Description:	Read back up data
-- =============================================
CREATE PROCEDURE [Supertrack].[uspPLCBackup_ReadData]   
	@ID int
AS	
BEGIN
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN
			Select Data FROM
				Supertrack.[tblPLCBackup]
				WHERE ID = @ID
		END
END
GO
/****** Object:  StoredProcedure [Supertrack].[uspPLCBackup_ReadFiles]    Script Date: 08/02/2018 12:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tim Reamsbottom
-- Create date: 03.08.2017
-- Description:	Read back up file names
-- =============================================
CREATE PROCEDURE [Supertrack].[uspPLCBackup_ReadFiles]   
	@PLC int
AS	
BEGIN
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN

			EXEC [Supertrack].[uspPLCBackup_CleanUp] 
			
			Select ID, TimeDate, Name FROM
				Supertrack.[tblPLCBackup]
				WHERE Status <> 'deleted' AND PLC = @PLC
				ORDER BY TimeDate DESC
		END
END




GO
/****** Object:  StoredProcedure [Supertrack].[uspPLCBackup_Write]    Script Date: 08/02/2018 12:09:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tim Reamsbottom
-- Create date: 03.08.2017
-- Description:	Write PLC Back up file
-- =============================================
CREATE PROCEDURE [Supertrack].[uspPLCBackup_Write]   
	@PLC int,
	@Name nvarchar(100),
	@Data text,
	@TimeDate int = null	

AS	
BEGIN
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		BEGIN
			
			DECLARE @DTTimeDate as datetime
			IF @TimeDate IS NOT NUll
				Begin
					SET @DTTimeDate = dateadd(s,@TimeDate,'19700101 00:00:00')
				end
			ELSE
				begin
					SET @DTTimeDate = CURRENT_TIMESTAMP
				end

			INSERT INTO Supertrack.[tblPLCBackup]
			(
				PLC,
				Name,
				Data,
				TimeDate,
				Status
			)
			VALUES
			(
				@PLC,
				@Name,
				@Data,
				@DTTimeDate,
				'created'
			)


			EXEC [Supertrack].[uspPLCBackup_CleanUp] 
		END   

END




GO
SET ANSI_PADDING ON
GO
