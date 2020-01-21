/* **********************************************************************

Author			:  VINOD KHOT
Creation Date	:  / /2020
Description		:  THIS CODE IS USED TO  -----

*************************************************************************
Change History :
===============

DATE			:
CHANGED BY		:
CHANGE CODE		:	
DESCRIPTION		:

Sample (TRIAL VERSION)
======

	   Exec usp_SampleTemplate_StoredProcedure 42
	
*************************************************************************/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
GO

	
ALTER PROCEDURE [dbo].[Usp_sampletemplate_storedprocedure]
(
@person_id INT -- 1 
) 
AS 
  BEGIN 
      DECLARE @RowCount1 INTEGER 
      DECLARE @MessageText NVARCHAR(2048); 

      BEGIN try 
          BEGIN TRANSACTION; 

          -- select * from OrderDetails 
          --UPDATE [dbo].[orderdetails] 
          --SET    quantity = 200 
          --WHERE  productid = @person_id 





          SELECT @RowCount1 = @@ROWCOUNT 

          IF( @RowCount1 = 0 ) 
            BEGIN 
                --  select @MessageText=FORMATMESSAGE(50010,'User Object',23,25,25,'gh');    
                --THROW 50012, @MessageText, 1;  
                RAISERROR ( N'Updation Does Not Take place',16,1); 
            END 

          COMMIT TRANSACTION; 

          PRINT 'TRANSACTIONS ARE COMMITTED' 
      END try 

      BEGIN catch 
          -- report exception 
          ROLLBACK TRANSACTION; 

          EXEC Usp_geterrorreportsdetails; 

          PRINT 'TRANSACTIONS ARE ROLLBACKED' 
      END catch 
  END; 
--SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED 