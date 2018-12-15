USE master
GO
CREATE LOGIN [hibern8] WITH PASSWORD=N'langpaswoord123A%1', DEFAULT_DATABASE=[master]
GO
EXEC sys.sp_addsrvrolemember 'hibern8', 'dbcreator'
GO