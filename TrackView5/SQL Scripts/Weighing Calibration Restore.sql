USE [SUPDB]
GO

/****** Object:  StoredProcedure [Supertrack].[uspCalibrationHistory_GetLastValues]    Script Date: 02/01/2018 11:24:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Tim Reamsbottom
-- Create date: 02.01.2018
-- Description:	Get last calibration values
-- =============================================

CREATE PROCEDURE [Supertrack].[uspCalibrationHistory_GetLastValues]

	@PLC as int
AS	
BEGIN
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRY
		
	IF OBJECT_ID('tempdb..#CalibValues') IS NOT NULL DROP TABLE #CalibValues

		SELECT  [Station]
		  ,[PLCStn]
		  ,[EmptyValue]
		  ,[GainValue]
		  ,[TestWeight]
		  ,RANK() OVER(partition by station order by Timedate desc) as [rank]
		into #CalibValues
		FROM [Supertrack].[tblCalibrationHistory]
		where PLCStn = @PLC

		Select PLCStn,Station,EmptyValue,GainValue,TestWeight from #CalibValues
		where [rank] = 1

		drop table #CalibValues	
		
	END TRY
	BEGIN CATCH
		EXEC [dbo].[uspWriteDatabaseError] 

	END CATCH
	

END


GO

