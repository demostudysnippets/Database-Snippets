
SELECT name,case when social > science then 
					(case when social>math then 'social' else 'math' end)
				  else
				     (case when science>math then 'science' else 'math' end)
					 end as Maxmark from StudentMarks
  
  

CREATE TABLE #TempTable4(
	[name] [nvarchar](255) NULL,
	[Maxmark] [nvarchar](255) NULL
	)



	INSERT INTO #TempTable4 ([name], [Maxmark])
SELECT name,case when social > science then 
					(case when social>math then 'social' else 'math' end)
				  else
				     (case when science>math then 'science' else 'math' end)
					 end as Maxmark from StudentMarks

					 select * from #TempTable4



--[class],[social],[science],[math]
--  FROM [dbo].[StudentMarks]
--GO