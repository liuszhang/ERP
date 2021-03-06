USE [master]
GO
CREATE DATABASE [SMALLERP] ON  PRIMARY 
( NAME = N'SMALLERP_Data', FILENAME = N'E:\_MyPro\GitHub\ERP\SampleERP\SMALLERP_Data.MDF' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'SMALLERP_Log', FILENAME = N'E:\_MyPro\GitHub\ERP\SampleERP\SMALLERP_Data_Log.LDF' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'SMALLERP', @new_cmptlevel=80
GO
ALTER DATABASE [SMALLERP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SMALLERP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SMALLERP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SMALLERP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SMALLERP] SET ARITHABORT OFF 
GO
ALTER DATABASE [SMALLERP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SMALLERP] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SMALLERP] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [SMALLERP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SMALLERP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SMALLERP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SMALLERP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SMALLERP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SMALLERP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SMALLERP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SMALLERP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SMALLERP] SET  MULTI_USER 
GO
ALTER DATABASE [SMALLERP] SET TORN_PAGE_DETECTION ON 
GO
if ( ((@@microsoftversion / power(2, 24) = 8) and (@@microsoftversion & 0xffff >= 760)) or 
		(@@microsoftversion / power(2, 24) >= 9) )begin 
	exec dbo.sp_dboption @dbname =  N'SMALLERP', @optname = 'db chaining', @optvalue = 'OFF'
 end
GO
USE [SMALLERP]
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[P_QueryForeignConstraint]
@PrimaryTable varchar(50)
 AS
SELECT (SELECT Name
          FROM syscolumns
          WHERE colid = b.rkey AND id = b.rkeyid) AS primaryColumn, 
      OBJECT_NAME(b.fkeyid) AS foreignTable,
          (SELECT name
         FROM syscolumns
         WHERE colid = b.fkey AND id = b.fkeyid) AS foreignColumn
FROM sysobjects a INNER JOIN
      sysforeignkeys b ON a.id = b.constid INNER JOIN
      sysobjects c ON a.parent_obj = c.id
WHERE (a.xtype = 'f') AND (c.xtype = 'U') AND (OBJECT_NAME(b.rkeyid) = @PrimaryTable)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSAccount](
	[AccountCode] [varchar](19) NOT NULL,
	[AccountName] [varchar](50) NOT NULL,
	[BankAccount] [varchar](19) NULL,
	[AccSubject] [varchar](10) NULL,
	[AccMoney] [decimal](12, 2) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSBom](
	[ProInvenCode] [varchar](10) NOT NULL,
	[MatInvenCode] [varchar](10) NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_BSBom] PRIMARY KEY CLUSTERED 
(
	[ProInvenCode] ASC,
	[MatInvenCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSCost](
	[CostCode] [varchar](10) NOT NULL,
	[CostName] [varchar](20) NOT NULL,
	[CostTypeCode] [varchar](10) NULL,
	[Remark] [text] NULL,
 CONSTRAINT [PK_BSCost] PRIMARY KEY CLUSTERED 
(
	[CostCode] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSCostType](
	[CostTypeCode] [varchar](10) NOT NULL,
	[CostTypeName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_BSCostType] PRIMARY KEY CLUSTERED 
(
	[CostTypeCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSCustomer](
	[CustomerCode] [varchar](10) NOT NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[EmployeeCode] [varchar](10) NULL,
	[AtrMan] [varchar](10) NULL,
	[TelephoneCode] [varchar](13) NULL,
	[FaxCode] [varchar](13) NULL,
	[PostCode] [varchar](6) NULL,
	[Email] [varchar](20) NULL,
	[Linkman] [varchar](10) NULL,
	[Url] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[GradeCode] [varchar](10) NULL,
	[StateCode] [varchar](10) NULL,
	[CreditCode] [varchar](10) NULL,
	[TradeCode] [varchar](10) NULL,
 CONSTRAINT [PK_BSCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSDepartment](
	[DepartmentCode] [varchar](10) NOT NULL,
	[DepartmentName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_BSDepartType] PRIMARY KEY CLUSTERED 
(
	[DepartmentCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSEmployee](
	[EmployeeCode] [varchar](10) NOT NULL,
	[EmployeeName] [varchar](10) NOT NULL,
	[DepartmentCode] [varchar](10) NOT NULL,
	[Age] [int] NULL,
	[Sex] [char](1) NULL,
	[EduLevel] [char](1) NULL,
	[Job] [varchar](20) NULL,
	[JoinDate] [datetime] NULL,
	[TelephoneCode] [varchar](13) NULL,
	[Remark] [text] NULL,
 CONSTRAINT [PK_TABLE1] PRIMARY KEY CLUSTERED 
(
	[EmployeeCode] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSInven](
	[InvenCode] [varchar](10) NOT NULL,
	[InvenName] [varchar](40) NOT NULL,
	[InvenTypeCode] [varchar](10) NOT NULL,
	[SpecsModel] [varchar](30) NULL,
	[MeaUnit] [varchar](10) NULL,
	[SelPrice] [decimal](12, 2) NULL,
	[PurPrice] [decimal](12, 2) NULL,
	[SmallStockNum] [int] NULL,
	[BigStockNum] [int] NULL,
 CONSTRAINT [PK_BSInven] PRIMARY KEY CLUSTERED 
(
	[InvenCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSInvenType](
	[InvenTypeCode] [varchar](10) NOT NULL,
	[InvenTypeName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_InvenType] PRIMARY KEY CLUSTERED 
(
	[InvenTypeCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSStore](
	[StoreCode] [varchar](10) NOT NULL,
	[StoreName] [varchar](20) NOT NULL,
	[Area] [numeric](10, 0) NULL,
	[EmployeeCode] [varchar](10) NULL,
	[Remark] [text] NULL,
 CONSTRAINT [PK_BSStock] PRIMARY KEY CLUSTERED 
(
	[StoreCode] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BSSupplier](
	[SupplierCode] [varchar](10) NOT NULL,
	[SupplierName] [varchar](50) NOT NULL,
	[TelephoneCode] [varchar](13) NULL,
	[Email] [varchar](20) NULL,
	[PostCode] [varchar](6) NULL,
	[Linkman] [varchar](10) NULL,
	[Url] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
 CONSTRAINT [PK_BSSupplier] PRIMARY KEY CLUSTERED 
(
	[SupplierCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUAfterService](
	[AfterId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](10) NOT NULL,
	[SerDate] [datetime] NULL,
	[EmployeeCode] [varchar](10) NOT NULL,
	[Linkman] [varchar](10) NULL,
	[TelephoneCode] [varchar](13) NULL,
	[SerDays] [int] NULL,
	[SerContent] [text] NULL,
	[Resolvent] [text] NULL,
 CONSTRAINT [PK_CUAfterService] PRIMARY KEY CLUSTERED 
(
	[AfterId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUChance](
	[ChanceCode] [varchar](10) NOT NULL,
	[ChanceName] [varchar](20) NULL,
 CONSTRAINT [PK_CUChance] PRIMARY KEY CLUSTERED 
(
	[ChanceCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUCredit](
	[CreditCode] [varchar](10) NOT NULL,
	[CreditName] [varchar](20) NULL,
 CONSTRAINT [PK_CUCredit] PRIMARY KEY CLUSTERED 
(
	[CreditCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUGrade](
	[GradeCode] [varchar](10) NOT NULL,
	[GradeName] [varchar](20) NULL,
 CONSTRAINT [PK_CUGrade] PRIMARY KEY CLUSTERED 
(
	[GradeCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CURelRecord](
	[RelId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](10) NOT NULL,
	[RelDate] [datetime] NULL,
	[RelManner] [varchar](2) NOT NULL,
	[Linkman] [varchar](10) NULL,
	[TelephoneCode] [varchar](13) NULL,
	[NextDate] [datetime] NULL,
	[RelContent] [text] NULL,
	[FeeInfo] [text] NULL,
 CONSTRAINT [PK_CURelRecord] PRIMARY KEY CLUSTERED 
(
	[RelId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSellChance](
	[SellId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](10) NOT NULL,
	[Theme] [varchar](50) NULL,
	[RegDate] [datetime] NULL,
	[ChanceCode] [varchar](10) NOT NULL,
	[ForeDate] [datetime] NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[Quantity] [int] NULL,
	[CUMoney] [decimal](12, 2) NULL,
	[Remark] [text] NULL,
 CONSTRAINT [PK_CUSellChance] PRIMARY KEY CLUSTERED 
(
	[SellId] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUState](
	[StateCode] [varchar](10) NOT NULL,
	[StateName] [varchar](20) NULL,
 CONSTRAINT [PK_CUState] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUTrade](
	[TradeCode] [varchar](10) NOT NULL,
	[TradeName] [varchar](20) NULL,
 CONSTRAINT [PK_UCTrade] PRIMARY KEY CLUSTERED 
(
	[TradeCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIDeposit](
	[FIDepositCode] [varchar](20) NOT NULL,
	[FIDepositDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[OutAccCode] [varchar](19) NOT NULL,
	[InAccCode] [varchar](19) NOT NULL,
	[FIMoney] [decimal](12, 2) NULL,
	[EmployeeCode] [varchar](10) NOT NULL,
	[Remark] [text] NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_FIDeposit] PRIMARY KEY CLUSTERED 
(
	[FIDepositCode] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FIPurCost](
	[FIPurCode] [varchar](20) NOT NULL,
	[FIPurDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[SupplierCode] [varchar](10) NULL,
	[AccountCode] [varchar](19) NOT NULL,
	[EmployeeCode] [varchar](10) NOT NULL,
	[CostCode] [varchar](10) NOT NULL,
	[FIMoney] [decimal](12, 2) NULL,
	[Remark] [text] NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_FIPurCost] PRIMARY KEY CLUSTERED 
(
	[FIPurCode] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FISelCost](
	[FISelCode] [varchar](20) NOT NULL,
	[FISelDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[CustomerCode] [varchar](10) NULL,
	[AccountCode] [varchar](19) NOT NULL,
	[EmployeeCode] [varchar](10) NOT NULL,
	[CostCode] [varchar](10) NOT NULL,
	[FIMoney] [decimal](12, 2) NULL,
	[Remark] [text] NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_FISelCost] PRIMARY KEY CLUSTERED 
(
	[FISelCode] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INAccSubject](
	[Code] [varchar](10) NOT NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INBaseType](
	[Code] [varchar](20) NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_INBaseType] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INCheckFlag](
	[Code] [char](1) NOT NULL,
	[Name] [varchar](10) NULL,
 CONSTRAINT [PK_INflag] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INEduLevel](
	[Code] [varchar](2) NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_INEduLevel] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INModule](
	[ModuleTag] [varchar](10) NOT NULL,
	[ModuleName] [varchar](40) NULL,
 CONSTRAINT [PK_INModule] PRIMARY KEY CLUSTERED 
(
	[ModuleTag] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INRelManner](
	[Code] [varchar](2) NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_INRelManner] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INRight](
	[RightTag] [varchar](10) NOT NULL,
	[RightName] [varchar](20) NULL,
 CONSTRAINT [PK_INRight] PRIMARY KEY CLUSTERED 
(
	[RightTag] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INSex](
	[Code] [char](1) NOT NULL,
	[Name] [char](2) NULL,
 CONSTRAINT [PK_INSex] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRInStore](
	[PRInCode] [varchar](20) NOT NULL,
	[PRInDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[PRProduceCode] [varchar](20) NOT NULL,
	[StoreCode] [varchar](10) NOT NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[PRQuantity] [int] NULL,
	[InQuantity] [int] NULL,
	[EmployeeCode] [varchar](10) NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_PRInStore] PRIMARY KEY CLUSTERED 
(
	[PRInCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRPlan](
	[PRPlanCode] [varchar](20) NOT NULL,
	[PRPlanDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[SEOrderCode] [varchar](20) NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[Quantity] [int] NULL,
	[FinishDate] [datetime] NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_PRPlan] PRIMARY KEY CLUSTERED 
(
	[PRPlanCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRProduce](
	[PRProduceCode] [varchar](20) NOT NULL,
	[PRProduceDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[PRPlanCode] [varchar](20) NOT NULL,
	[DepartmentCode] [varchar](10) NOT NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[Quantity] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsFlag] [char](1) NULL,
	[IsComplete] [char](1) NULL,
 CONSTRAINT [PK_PRProduce] PRIMARY KEY CLUSTERED 
(
	[PRProduceCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRProduceItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PRProduceCode] [varchar](20) NOT NULL,
	[InvenCode] [varchar](10) NULL,
	[Quantity] [int] NULL,
	[GetQuantity] [int] NULL,
	[UseQuantity] [int] NULL,
 CONSTRAINT [PK_PRProduceItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PUInStore](
	[PUInCode] [varchar](20) NOT NULL,
	[PUInDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[SupplierCode] [varchar](10) NOT NULL,
	[StoreCode] [varchar](10) NOT NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[Quantity] [int] NULL,
	[PUMoney] [decimal](12, 2) NULL,
	[PUOrderCode] [varchar](20) NULL,
	[EmployeeCode] [varchar](10) NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_PUPutIn] PRIMARY KEY CLUSTERED 
(
	[PUInCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PUOrder](
	[PUOrderCode] [varchar](20) NOT NULL,
	[PUOrderDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[SupplierCode] [varchar](10) NOT NULL,
	[StoreCode] [varchar](10) NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[Quantity] [int] NULL,
	[PUMoney] [decimal](12, 0) NULL,
	[RecInvenDate] [datetime] NULL,
	[EmployeeCode] [varchar](10) NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_PUBill] PRIMARY KEY CLUSTERED 
(
	[PUOrderCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PUPay](
	[PUPayCode] [varchar](20) NOT NULL,
	[PUPayDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[PUInCode] [varchar](20) NOT NULL,
	[PUInDate] [datetime] NULL,
	[SupplierCode] [varchar](10) NOT NULL,
	[PUMoney] [decimal](12, 2) NULL,
	[AccountCode] [varchar](19) NOT NULL,
	[EmployeeCode] [varchar](10) NULL,
	[Remark] [text] NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_PUPay] PRIMARY KEY CLUSTERED 
(
	[PUPayCode] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEGather](
	[SEGatherCode] [varchar](20) NOT NULL,
	[SEGatherDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[SEOutCode] [varchar](20) NOT NULL,
	[SEOutDate] [datetime] NULL,
	[CustomerCode] [varchar](10) NOT NULL,
	[SEMoney] [decimal](12, 2) NULL,
	[AccountCode] [varchar](19) NOT NULL,
	[EmployeeCode] [varchar](10) NULL,
	[Remark] [text] NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_SEGather] PRIMARY KEY CLUSTERED 
(
	[SEGatherCode] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEOrder](
	[SEOrderCode] [varchar](20) NOT NULL,
	[SEOrderDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[CustomerCode] [varchar](10) NOT NULL,
	[StoreCode] [varchar](10) NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[SellPrice] [decimal](12, 2) NULL,
	[Quantity] [int] NULL,
	[SEMoney] [decimal](12, 2) NULL,
	[SenInvenDate] [datetime] NULL,
	[EmployeeCode] [varchar](10) NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_SEOrder] PRIMARY KEY CLUSTERED 
(
	[SEOrderCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEOutStore](
	[SEOutCode] [varchar](20) NOT NULL,
	[SEOutDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[SEOrderCode] [varchar](20) NULL,
	[CustomerCode] [varchar](10) NOT NULL,
	[StoreCode] [varchar](10) NOT NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[SellPrice] [decimal](12, 2) NULL,
	[Quantity] [int] NULL,
	[SEMoney] [decimal](12, 2) NULL,
	[EmployeeCode] [varchar](10) NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_SEOutStore] PRIMARY KEY CLUSTERED 
(
	[SEOutCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STCheck](
	[STCheckCode] [varchar](20) NOT NULL,
	[STCheckDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[StoreCode] [varchar](10) NOT NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[AccQuantity] [int] NULL,
	[CheckQuantity] [int] NULL,
	[BalQuantity] [int] NULL,
	[AvePrice] [decimal](12, 2) NULL,
	[BalMoney] [decimal](12, 2) NULL,
	[EmployeeCode] [varchar](10) NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_STCheck] PRIMARY KEY CLUSTERED 
(
	[STCheckCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STGetMaterial](
	[STGetCode] [varchar](20) NOT NULL,
	[STGetDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[PRProduceCode] [varchar](20) NOT NULL,
	[StoreCode] [varchar](10) NOT NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[Quantity] [int] NULL,
	[BillType] [char](1) NULL,
	[EmployeeCode] [varchar](10) NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_STGetMaterial] PRIMARY KEY CLUSTERED 
(
	[STGetCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STLoss](
	[STLossCode] [varchar](20) NOT NULL,
	[STLossDate] [datetime] NULL,
	[OperatorCode] [varchar](10) NOT NULL,
	[StoreCode] [varchar](10) NOT NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[LossQuantity] [int] NULL,
	[LossMoney] [decimal](12, 2) NULL,
	[EmployeeCode] [varchar](10) NULL,
	[Remark] [text] NULL,
	[IsFlag] [char](1) NULL,
 CONSTRAINT [PK_STLoss] PRIMARY KEY CLUSTERED 
(
	[STLossCode] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STStock](
	[StoreCode] [varchar](10) NOT NULL,
	[InvenCode] [varchar](10) NOT NULL,
	[Quantity] [int] NULL,
	[LossQuantity] [int] NULL,
	[AvePrice] [decimal](12, 2) NULL,
	[STMoney] [decimal](12, 2) NULL,
	[LossMoney] [decimal](12, 2) NULL,
 CONSTRAINT [PK_STInvenStock] PRIMARY KEY CLUSTERED 
(
	[StoreCode] ASC,
	[InvenCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYAssignRight](
	[OperatorCode] [varchar](10) NOT NULL,
	[ModuleTag] [varchar](10) NOT NULL,
	[RightTag] [varchar](10) NOT NULL,
	[IsRight] [char](1) NULL,
 CONSTRAINT [PK_SYModuleRight] PRIMARY KEY CLUSTERED 
(
	[OperatorCode] ASC,
	[ModuleTag] ASC,
	[RightTag] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYOperator](
	[OperatorCode] [varchar](10) NOT NULL,
	[OperatorName] [varchar](10) NOT NULL,
	[PassWord] [varchar](20) NULL,
	[IsAdmin] [char](1) NULL,
 CONSTRAINT [PK_SYOperator] PRIMARY KEY CLUSTERED 
(
	[OperatorCode] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_BomStruct]
AS
SELECT InvenCode, InvenName
FROM dbo.BSInven
WHERE (InvenCode IN
          (SELECT ProInvenCode
         FROM BSBom))

GO
INSERT [dbo].[BSAccount] ([AccountCode], [AccountName], [BankAccount], [AccSubject], [AccMoney]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'现金帐'), CONVERT(TEXT, N''), CONVERT(TEXT, N'1'), CAST(900.00 AS Decimal(12, 2)))
INSERT [dbo].[BSAccount] ([AccountCode], [AccountName], [BankAccount], [AccSubject], [AccMoney]) VALUES (CONVERT(TEXT, N'02'), CONVERT(TEXT, N'银行存款帐'), CONVERT(TEXT, N'1234567890123456789'), CONVERT(TEXT, N'2'), CAST(2085.00 AS Decimal(12, 2)))
INSERT [dbo].[BSBom] ([ProInvenCode], [MatInvenCode], [Quantity]) VALUES (CONVERT(TEXT, N'02-1'), CONVERT(TEXT, N'01-1'), 1)
INSERT [dbo].[BSBom] ([ProInvenCode], [MatInvenCode], [Quantity]) VALUES (CONVERT(TEXT, N'02-1'), CONVERT(TEXT, N'01-2'), 2)
INSERT [dbo].[BSBom] ([ProInvenCode], [MatInvenCode], [Quantity]) VALUES (CONVERT(TEXT, N'02-1'), CONVERT(TEXT, N'01-3'), 1)
INSERT [dbo].[BSBom] ([ProInvenCode], [MatInvenCode], [Quantity]) VALUES (CONVERT(TEXT, N'02-1'), CONVERT(TEXT, N'01-4'), 1)
INSERT [dbo].[BSCost] ([CostCode], [CostName], [CostTypeCode], [Remark]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'差旅费'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'zhd'))
INSERT [dbo].[BSCost] ([CostCode], [CostName], [CostTypeCode], [Remark]) VALUES (CONVERT(TEXT, N'02'), CONVERT(TEXT, N'差旅费'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'zhd'))
INSERT [dbo].[BSCostType] ([CostTypeCode], [CostTypeName]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'采购费用'))
INSERT [dbo].[BSCostType] ([CostTypeCode], [CostTypeName]) VALUES (CONVERT(TEXT, N'02'), CONVERT(TEXT, N'销售费用'))
INSERT [dbo].[BSCustomer] ([CustomerCode], [CustomerName], [EmployeeCode], [AtrMan], [TelephoneCode], [FaxCode], [PostCode], [Email], [Linkman], [Url], [Address], [GradeCode], [StateCode], [CreditCode], [TradeCode]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'中国实业公司'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), NULL, NULL, NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[BSCustomer] ([CustomerCode], [CustomerName], [EmployeeCode], [AtrMan], [TelephoneCode], [FaxCode], [PostCode], [Email], [Linkman], [Url], [Address], [GradeCode], [StateCode], [CreditCode], [TradeCode]) VALUES (CONVERT(TEXT, N'03'), CONVERT(TEXT, N'英国实业公司'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'dd'), CONVERT(TEXT, N'3'), CONVERT(TEXT, N'2'), CONVERT(TEXT, N'3'), CONVERT(TEXT, N'2'))
INSERT [dbo].[BSCustomer] ([CustomerCode], [CustomerName], [EmployeeCode], [AtrMan], [TelephoneCode], [FaxCode], [PostCode], [Email], [Linkman], [Url], [Address], [GradeCode], [StateCode], [CreditCode], [TradeCode]) VALUES (CONVERT(TEXT, N'26'), CONVERT(TEXT, N'芬兰实业公司'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'445'), CONVERT(TEXT, N'43'), CONVERT(TEXT, N'43443'), CONVERT(TEXT, N'434'), CONVERT(TEXT, N'434'), CONVERT(TEXT, N'434'), CONVERT(TEXT, N'3434'), CONVERT(TEXT, N'4334'), CONVERT(TEXT, N'3'), CONVERT(TEXT, N'1'), NULL, NULL)
INSERT [dbo].[BSDepartment] ([DepartmentCode], [DepartmentName]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'采购部'))
INSERT [dbo].[BSDepartment] ([DepartmentCode], [DepartmentName]) VALUES (CONVERT(TEXT, N'02'), CONVERT(TEXT, N'销售部'))
INSERT [dbo].[BSDepartment] ([DepartmentCode], [DepartmentName]) VALUES (CONVERT(TEXT, N'03'), CONVERT(TEXT, N'生产一车间'))
INSERT [dbo].[BSDepartment] ([DepartmentCode], [DepartmentName]) VALUES (CONVERT(TEXT, N'04'), CONVERT(TEXT, N'生产二车间'))
INSERT [dbo].[BSEmployee] ([EmployeeCode], [EmployeeName], [DepartmentCode], [Age], [Sex], [EduLevel], [Job], [JoinDate], [TelephoneCode], [Remark]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'zhd'), CONVERT(TEXT, N'01'), 45, CONVERT(TEXT, N'1'), CONVERT(TEXT, N'1'), CONVERT(TEXT, N'1'), CAST(0x00009B6900000000 AS DateTime), CONVERT(TEXT, N'13123'), CONVERT(TEXT, N''))
INSERT [dbo].[BSEmployee] ([EmployeeCode], [EmployeeName], [DepartmentCode], [Age], [Sex], [EduLevel], [Job], [JoinDate], [TelephoneCode], [Remark]) VALUES (CONVERT(TEXT, N'02'), CONVERT(TEXT, N'ydq'), CONVERT(TEXT, N'02'), 11, CONVERT(TEXT, N'2'), CONVERT(TEXT, N'2'), CONVERT(TEXT, N'2'), CAST(0x0000971D00000000 AS DateTime), CONVERT(TEXT, N'2112'), CONVERT(TEXT, N''))
INSERT [dbo].[BSEmployee] ([EmployeeCode], [EmployeeName], [DepartmentCode], [Age], [Sex], [EduLevel], [Job], [JoinDate], [TelephoneCode], [Remark]) VALUES (CONVERT(TEXT, N'03'), CONVERT(TEXT, N'main'), CONVERT(TEXT, N'01'), 36, CONVERT(TEXT, N'1'), CONVERT(TEXT, N'5'), CONVERT(TEXT, N'经理'), CAST(0x00009C7400000000 AS DateTime), CONVERT(TEXT, N''), CONVERT(TEXT, N'经理'))
INSERT [dbo].[BSEmployee] ([EmployeeCode], [EmployeeName], [DepartmentCode], [Age], [Sex], [EduLevel], [Job], [JoinDate], [TelephoneCode], [Remark]) VALUES (CONVERT(TEXT, N'04'), CONVERT(TEXT, N'7878'), CONVERT(TEXT, N'01'), NULL, NULL, NULL, CONVERT(TEXT, N''), CAST(0x0000000000000000 AS DateTime), CONVERT(TEXT, N''), CONVERT(TEXT, N''))
INSERT [dbo].[BSEmployee] ([EmployeeCode], [EmployeeName], [DepartmentCode], [Age], [Sex], [EduLevel], [Job], [JoinDate], [TelephoneCode], [Remark]) VALUES (CONVERT(TEXT, N'05'), CONVERT(TEXT, N'7789789'), CONVERT(TEXT, N'01'), NULL, NULL, NULL, CONVERT(TEXT, N''), CAST(0x0000000000000000 AS DateTime), CONVERT(TEXT, N''), CONVERT(TEXT, N''))
INSERT [dbo].[BSInven] ([InvenCode], [InvenName], [InvenTypeCode], [SpecsModel], [MeaUnit], [SelPrice], [PurPrice], [SmallStockNum], [BigStockNum]) VALUES (CONVERT(TEXT, N'01-1'), CONVERT(TEXT, N'显示器'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'xsq'), CONVERT(TEXT, N'台'), NULL, CAST(500.00 AS Decimal(12, 2)), 1, 20)
INSERT [dbo].[BSInven] ([InvenCode], [InvenName], [InvenTypeCode], [SpecsModel], [MeaUnit], [SelPrice], [PurPrice], [SmallStockNum], [BigStockNum]) VALUES (CONVERT(TEXT, N'01-2'), CONVERT(TEXT, N'CPU'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'cpu'), CONVERT(TEXT, N'个'), NULL, CAST(500.00 AS Decimal(12, 2)), 1, NULL)
INSERT [dbo].[BSInven] ([InvenCode], [InvenName], [InvenTypeCode], [SpecsModel], [MeaUnit], [SelPrice], [PurPrice], [SmallStockNum], [BigStockNum]) VALUES (CONVERT(TEXT, N'01-3'), CONVERT(TEXT, N'主板'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'zb'), CONVERT(TEXT, N'个'), NULL, CAST(300.00 AS Decimal(12, 2)), 1, NULL)
INSERT [dbo].[BSInven] ([InvenCode], [InvenName], [InvenTypeCode], [SpecsModel], [MeaUnit], [SelPrice], [PurPrice], [SmallStockNum], [BigStockNum]) VALUES (CONVERT(TEXT, N'01-4'), CONVERT(TEXT, N'硬盘'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'44545'), CONVERT(TEXT, N'个'), NULL, CAST(300.00 AS Decimal(12, 2)), 1, NULL)
INSERT [dbo].[BSInven] ([InvenCode], [InvenName], [InvenTypeCode], [SpecsModel], [MeaUnit], [SelPrice], [PurPrice], [SmallStockNum], [BigStockNum]) VALUES (CONVERT(TEXT, N'02-1'), CONVERT(TEXT, N'商用电脑'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'sydn'), CONVERT(TEXT, N'台'), CAST(2500.00 AS Decimal(12, 2)), NULL, 1, NULL)
INSERT [dbo].[BSInvenType] ([InvenTypeCode], [InvenTypeName]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'原材料'))
INSERT [dbo].[BSInvenType] ([InvenTypeCode], [InvenTypeName]) VALUES (CONVERT(TEXT, N'02'), CONVERT(TEXT, N'产成品'))
INSERT [dbo].[BSInvenType] ([InvenTypeCode], [InvenTypeName]) VALUES (CONVERT(TEXT, N'03'), CONVERT(TEXT, N'半成品'))
INSERT [dbo].[BSInvenType] ([InvenTypeCode], [InvenTypeName]) VALUES (CONVERT(TEXT, N'04'), CONVERT(TEXT, N'在产品'))
INSERT [dbo].[BSInvenType] ([InvenTypeCode], [InvenTypeName]) VALUES (CONVERT(TEXT, N'06'), CONVERT(TEXT, N'终结物'))
INSERT [dbo].[BSInvenType] ([InvenTypeCode], [InvenTypeName]) VALUES (CONVERT(TEXT, N'07'), CONVERT(TEXT, N'半成品'))
INSERT [dbo].[BSStore] ([StoreCode], [StoreName], [Area], [EmployeeCode], [Remark]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'第一号'), NULL, CONVERT(TEXT, N'02'), CONVERT(TEXT, N''))
INSERT [dbo].[BSStore] ([StoreCode], [StoreName], [Area], [EmployeeCode], [Remark]) VALUES (CONVERT(TEXT, N'03'), CONVERT(TEXT, N'第三号'), NULL, CONVERT(TEXT, N'02'), CONVERT(TEXT, N'14zhd'))
INSERT [dbo].[BSSupplier] ([SupplierCode], [SupplierName], [TelephoneCode], [Email], [PostCode], [Linkman], [Url], [Address]) VALUES (CONVERT(TEXT, N'02'), CONVERT(TEXT, N'中国'), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''))
INSERT [dbo].[BSSupplier] ([SupplierCode], [SupplierName], [TelephoneCode], [Email], [PostCode], [Linkman], [Url], [Address]) VALUES (CONVERT(TEXT, N'03'), CONVERT(TEXT, N'美国'), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''))
INSERT [dbo].[BSSupplier] ([SupplierCode], [SupplierName], [TelephoneCode], [Email], [PostCode], [Linkman], [Url], [Address]) VALUES (CONVERT(TEXT, N'0555'), CONVERT(TEXT, N'荷兰'), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''))
INSERT [dbo].[BSSupplier] ([SupplierCode], [SupplierName], [TelephoneCode], [Email], [PostCode], [Linkman], [Url], [Address]) VALUES (CONVERT(TEXT, N'09'), CONVERT(TEXT, N'德国'), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''), CONVERT(TEXT, N''))
SET IDENTITY_INSERT [dbo].[CUAfterService] ON 

INSERT [dbo].[CUAfterService] ([AfterId], [CustomerCode], [SerDate], [EmployeeCode], [Linkman], [TelephoneCode], [SerDays], [SerContent], [Resolvent]) VALUES (2, CONVERT(TEXT, N'03'), CAST(0x00009C8600000000 AS DateTime), CONVERT(TEXT, N'03'), NULL, NULL, 45, CONVERT(TEXT, N'456'), CONVERT(TEXT, N'123'))
INSERT [dbo].[CUAfterService] ([AfterId], [CustomerCode], [SerDate], [EmployeeCode], [Linkman], [TelephoneCode], [SerDays], [SerContent], [Resolvent]) VALUES (5, CONVERT(TEXT, N'03'), CAST(0x00009EB500000000 AS DateTime), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'67'), CONVERT(TEXT, N'67'), 67, CONVERT(TEXT, N'67'), CONVERT(TEXT, N'67'))
SET IDENTITY_INSERT [dbo].[CUAfterService] OFF
INSERT [dbo].[CUChance] ([ChanceCode], [ChanceName]) VALUES (CONVERT(TEXT, N'1'), CONVERT(TEXT, N'高'))
INSERT [dbo].[CUChance] ([ChanceCode], [ChanceName]) VALUES (CONVERT(TEXT, N'2'), CONVERT(TEXT, N'中'))
INSERT [dbo].[CUChance] ([ChanceCode], [ChanceName]) VALUES (CONVERT(TEXT, N'3'), CONVERT(TEXT, N'低'))
INSERT [dbo].[CUCredit] ([CreditCode], [CreditName]) VALUES (CONVERT(TEXT, N'1'), CONVERT(TEXT, N'一般'))
INSERT [dbo].[CUCredit] ([CreditCode], [CreditName]) VALUES (CONVERT(TEXT, N'2'), CONVERT(TEXT, N'较好'))
INSERT [dbo].[CUCredit] ([CreditCode], [CreditName]) VALUES (CONVERT(TEXT, N'3'), CONVERT(TEXT, N'非常好'))
INSERT [dbo].[CUGrade] ([GradeCode], [GradeName]) VALUES (CONVERT(TEXT, N'1'), CONVERT(TEXT, N'普通'))
INSERT [dbo].[CUGrade] ([GradeCode], [GradeName]) VALUES (CONVERT(TEXT, N'2'), CONVERT(TEXT, N'比较重要'))
INSERT [dbo].[CUGrade] ([GradeCode], [GradeName]) VALUES (CONVERT(TEXT, N'3'), CONVERT(TEXT, N'VIP'))
SET IDENTITY_INSERT [dbo].[CURelRecord] ON 

INSERT [dbo].[CURelRecord] ([RelId], [CustomerCode], [RelDate], [RelManner], [Linkman], [TelephoneCode], [NextDate], [RelContent], [FeeInfo]) VALUES (3, CONVERT(TEXT, N'03'), CAST(0x00009C8700000000 AS DateTime), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'4545'), NULL, CAST(0x00009C8700000000 AS DateTime), CONVERT(TEXT, N'456'), NULL)
INSERT [dbo].[CURelRecord] ([RelId], [CustomerCode], [RelDate], [RelManner], [Linkman], [TelephoneCode], [NextDate], [RelContent], [FeeInfo]) VALUES (4, CONVERT(TEXT, N'03'), CAST(0x00009C8700000000 AS DateTime), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'd'), CONVERT(TEXT, N'45gh'), CAST(0x00009C8700000000 AS DateTime), CONVERT(TEXT, N'd'), CONVERT(TEXT, N'd'))
SET IDENTITY_INSERT [dbo].[CURelRecord] OFF
SET IDENTITY_INSERT [dbo].[CUSellChance] ON 

INSERT [dbo].[CUSellChance] ([SellId], [CustomerCode], [Theme], [RegDate], [ChanceCode], [ForeDate], [InvenCode], [UnitPrice], [Quantity], [CUMoney], [Remark]) VALUES (2, CONVERT(TEXT, N'03'), CONVERT(TEXT, N'商用电脑采购'), CAST(0x00009C8700000000 AS DateTime), CONVERT(TEXT, N'3'), CAST(0x00009C9000000000 AS DateTime), CONVERT(TEXT, N'01-3'), CAST(2000.00 AS Decimal(12, 2)), 10, CAST(20000.00 AS Decimal(12, 2)), NULL)
INSERT [dbo].[CUSellChance] ([SellId], [CustomerCode], [Theme], [RegDate], [ChanceCode], [ForeDate], [InvenCode], [UnitPrice], [Quantity], [CUMoney], [Remark]) VALUES (6, CONVERT(TEXT, N'03'), CONVERT(TEXT, N'秋季采购会'), CAST(0x00009CB000000000 AS DateTime), CONVERT(TEXT, N'1'), CAST(0x00009CB000000000 AS DateTime), CONVERT(TEXT, N'02-1'), CAST(3000.00 AS Decimal(12, 2)), 10, CAST(30000.00 AS Decimal(12, 2)), NULL)
INSERT [dbo].[CUSellChance] ([SellId], [CustomerCode], [Theme], [RegDate], [ChanceCode], [ForeDate], [InvenCode], [UnitPrice], [Quantity], [CUMoney], [Remark]) VALUES (7, CONVERT(TEXT, N'03'), CONVERT(TEXT, N'67'), CAST(0x00009EB500000000 AS DateTime), CONVERT(TEXT, N'2'), CAST(0x00009EB500000000 AS DateTime), CONVERT(TEXT, N'01-2'), CAST(76.00 AS Decimal(12, 2)), 67, CAST(5092.00 AS Decimal(12, 2)), CONVERT(TEXT, N'67'))
SET IDENTITY_INSERT [dbo].[CUSellChance] OFF
INSERT [dbo].[CUState] ([StateCode], [StateName]) VALUES (CONVERT(TEXT, N'1'), CONVERT(TEXT, N'意向'))
INSERT [dbo].[CUState] ([StateCode], [StateName]) VALUES (CONVERT(TEXT, N'2'), CONVERT(TEXT, N'筹划'))
INSERT [dbo].[CUState] ([StateCode], [StateName]) VALUES (CONVERT(TEXT, N'3'), CONVERT(TEXT, N'采购'))
INSERT [dbo].[CUTrade] ([TradeCode], [TradeName]) VALUES (CONVERT(TEXT, N'1'), CONVERT(TEXT, N'汽车'))
INSERT [dbo].[CUTrade] ([TradeCode], [TradeName]) VALUES (CONVERT(TEXT, N'2'), CONVERT(TEXT, N'医药'))
INSERT [dbo].[CUTrade] ([TradeCode], [TradeName]) VALUES (CONVERT(TEXT, N'3'), CONVERT(TEXT, N'电子'))
INSERT [dbo].[FIDeposit] ([FIDepositCode], [FIDepositDate], [OperatorCode], [OutAccCode], [InAccCode], [FIMoney], [EmployeeCode], [Remark], [IsFlag]) VALUES (CONVERT(TEXT, N'20091013-0001'), CAST(0x00009CA100000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02'), CAST(10.00 AS Decimal(12, 2)), CONVERT(TEXT, N'01'), NULL, CONVERT(TEXT, N'0'))
INSERT [dbo].[FIDeposit] ([FIDepositCode], [FIDepositDate], [OperatorCode], [OutAccCode], [InAccCode], [FIMoney], [EmployeeCode], [Remark], [IsFlag]) VALUES (CONVERT(TEXT, N'20091013-0003'), CAST(0x00009CA100000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02'), CAST(85.00 AS Decimal(12, 2)), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'ddd'), CONVERT(TEXT, N'1'))
INSERT [dbo].[FIDeposit] ([FIDepositCode], [FIDepositDate], [OperatorCode], [OutAccCode], [InAccCode], [FIMoney], [EmployeeCode], [Remark], [IsFlag]) VALUES (CONVERT(TEXT, N'20110329-0001'), CAST(0x00009EB500000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'01'), CAST(76.00 AS Decimal(12, 2)), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'5754784684'), CONVERT(TEXT, N'0'))
INSERT [dbo].[FIPurCost] ([FIPurCode], [FIPurDate], [OperatorCode], [SupplierCode], [AccountCode], [EmployeeCode], [CostCode], [FIMoney], [Remark], [IsFlag]) VALUES (CONVERT(TEXT, N'20090928-0001'), CAST(0x00009C9200000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01'), CAST(10.00 AS Decimal(12, 2)), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[FISelCost] ([FISelCode], [FISelDate], [OperatorCode], [CustomerCode], [AccountCode], [EmployeeCode], [CostCode], [FIMoney], [Remark], [IsFlag]) VALUES (CONVERT(TEXT, N'20090928-0001'), CAST(0x00009C9200000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'02'), CAST(5.00 AS Decimal(12, 2)), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[INAccSubject] ([Code], [Name]) VALUES (CONVERT(TEXT, N'1'), CONVERT(TEXT, N'现金'))
INSERT [dbo].[INAccSubject] ([Code], [Name]) VALUES (CONVERT(TEXT, N'2'), CONVERT(TEXT, N'银行存款'))
INSERT [dbo].[INBaseType] ([Code], [Name]) VALUES (CONVERT(TEXT, N'CUChance'), CONVERT(TEXT, N'机会等级'))
INSERT [dbo].[INBaseType] ([Code], [Name]) VALUES (CONVERT(TEXT, N'CUCredit'), CONVERT(TEXT, N'信用等级'))
INSERT [dbo].[INBaseType] ([Code], [Name]) VALUES (CONVERT(TEXT, N'CUGrade'), CONVERT(TEXT, N'客户等级'))
INSERT [dbo].[INBaseType] ([Code], [Name]) VALUES (CONVERT(TEXT, N'CUState'), CONVERT(TEXT, N'客户状态'))
INSERT [dbo].[INBaseType] ([Code], [Name]) VALUES (CONVERT(TEXT, N'CUTrade'), CONVERT(TEXT, N'行业分类'))
INSERT [dbo].[INCheckFlag] ([Code], [Name]) VALUES (CONVERT(TEXT, N'0'), CONVERT(TEXT, N'否'))
INSERT [dbo].[INCheckFlag] ([Code], [Name]) VALUES (CONVERT(TEXT, N'1'), CONVERT(TEXT, N'是'))
INSERT [dbo].[INEduLevel] ([Code], [Name]) VALUES (CONVERT(TEXT, N'1'), CONVERT(TEXT, N'初中'))
INSERT [dbo].[INEduLevel] ([Code], [Name]) VALUES (CONVERT(TEXT, N'2'), CONVERT(TEXT, N'高中'))
INSERT [dbo].[INEduLevel] ([Code], [Name]) VALUES (CONVERT(TEXT, N'3'), CONVERT(TEXT, N'大专'))
INSERT [dbo].[INEduLevel] ([Code], [Name]) VALUES (CONVERT(TEXT, N'4'), CONVERT(TEXT, N'大本'))
INSERT [dbo].[INEduLevel] ([Code], [Name]) VALUES (CONVERT(TEXT, N'5'), CONVERT(TEXT, N'硕士'))
INSERT [dbo].[INEduLevel] ([Code], [Name]) VALUES (CONVERT(TEXT, N'6'), CONVERT(TEXT, N'博士'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'111'), CONVERT(TEXT, N'存货分类'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'112'), CONVERT(TEXT, N'部门分类'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'113'), CONVERT(TEXT, N'费用类别'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'121'), CONVERT(TEXT, N'存货档案'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'122'), CONVERT(TEXT, N'供应商档案'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'123'), CONVERT(TEXT, N'客户档案
'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'124'), CONVERT(TEXT, N'费用档案'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'125'), CONVERT(TEXT, N'仓库档案'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'126'), CONVERT(TEXT, N'员工档案'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'130'), CONVERT(TEXT, N'结算账户'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'140'), CONVERT(TEXT, N'物料清单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'150'), CONVERT(TEXT, N'初始化库存'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'210'), CONVERT(TEXT, N'采购订单
'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'220'), CONVERT(TEXT, N'采购入库单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'230'), CONVERT(TEXT, N'采购付款单
'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'310'), CONVERT(TEXT, N'销售订单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'320'), CONVERT(TEXT, N'销售出库单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'330'), CONVERT(TEXT, N'销售收款单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'410'), CONVERT(TEXT, N'领料单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'420'), CONVERT(TEXT, N'退料单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'430'), CONVERT(TEXT, N'报损清单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'440'), CONVERT(TEXT, N'库存盘点'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'450'), CONVERT(TEXT, N'库存清单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'510'), CONVERT(TEXT, N'主生产计划'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'520'), CONVERT(TEXT, N'生产单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'530'), CONVERT(TEXT, N'生产完工处理'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'540'), CONVERT(TEXT, N'生产入库单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'610'), CONVERT(TEXT, N'客户进程'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'620'), CONVERT(TEXT, N'基础分类
'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'630'), CONVERT(TEXT, N'类型分析'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'710'), CONVERT(TEXT, N'银行存取款单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'720'), CONVERT(TEXT, N'采购费用单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'730'), CONVERT(TEXT, N'销售费用单'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'810'), CONVERT(TEXT, N'源材料采购明细表'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'820'), CONVERT(TEXT, N'原材料采购汇总表'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'830'), CONVERT(TEXT, N'产品销售明细表'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'840'), CONVERT(TEXT, N'产品销售汇总表'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'850'), CONVERT(TEXT, N'产品销售毛利明细表'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'860'), CONVERT(TEXT, N'产品销售毛利汇总表'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'870'), CONVERT(TEXT, N'库存预警明细表'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'910'), CONVERT(TEXT, N'操作员管理'))
INSERT [dbo].[INModule] ([ModuleTag], [ModuleName]) VALUES (CONVERT(TEXT, N'930'), CONVERT(TEXT, N'操作权限'))
INSERT [dbo].[INRelManner] ([Code], [Name]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'电话联系'))
INSERT [dbo].[INRelManner] ([Code], [Name]) VALUES (CONVERT(TEXT, N'02'), CONVERT(TEXT, N'传真联系'))
INSERT [dbo].[INRelManner] ([Code], [Name]) VALUES (CONVERT(TEXT, N'03'), CONVERT(TEXT, N'邮件联系'))
INSERT [dbo].[INRelManner] ([Code], [Name]) VALUES (CONVERT(TEXT, N'04'), CONVERT(TEXT, N'派人拜访'))
INSERT [dbo].[INRelManner] ([Code], [Name]) VALUES (CONVERT(TEXT, N'05'), CONVERT(TEXT, N'QQ或MSN联系'))
INSERT [dbo].[INRelManner] ([Code], [Name]) VALUES (CONVERT(TEXT, N'06'), CONVERT(TEXT, N'其它方式'))
INSERT [dbo].[INRight] ([RightTag], [RightName]) VALUES (CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'添加'))
INSERT [dbo].[INRight] ([RightTag], [RightName]) VALUES (CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'修改'))
INSERT [dbo].[INRight] ([RightTag], [RightName]) VALUES (CONVERT(TEXT, N'Check'), CONVERT(TEXT, N'审核'))
INSERT [dbo].[INRight] ([RightTag], [RightName]) VALUES (CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'删除'))
INSERT [dbo].[INRight] ([RightTag], [RightName]) VALUES (CONVERT(TEXT, N'Export'), CONVERT(TEXT, N'导出'))
INSERT [dbo].[INRight] ([RightTag], [RightName]) VALUES (CONVERT(TEXT, N'Print'), CONVERT(TEXT, N'打印'))
INSERT [dbo].[INRight] ([RightTag], [RightName]) VALUES (CONVERT(TEXT, N'Query'), CONVERT(TEXT, N'查询'))
INSERT [dbo].[INRight] ([RightTag], [RightName]) VALUES (CONVERT(TEXT, N'Save'), CONVERT(TEXT, N'保存'))
INSERT [dbo].[INRight] ([RightTag], [RightName]) VALUES (CONVERT(TEXT, N'UnCheck'), CONVERT(TEXT, N'弃审'))
INSERT [dbo].[INSex] ([Code], [Name]) VALUES (CONVERT(TEXT, N'1'), CONVERT(TEXT, N'男'))
INSERT [dbo].[INSex] ([Code], [Name]) VALUES (CONVERT(TEXT, N'2'), CONVERT(TEXT, N'女'))
INSERT [dbo].[PRInStore] ([PRInCode], [PRInDate], [OperatorCode], [PRProduceCode], [StoreCode], [InvenCode], [PRQuantity], [InQuantity], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090916-0001'), CAST(0x00009C8600000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090914-0001'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), 2, 2, NULL, CONVERT(TEXT, N'0'))
INSERT [dbo].[PRPlan] ([PRPlanCode], [PRPlanDate], [OperatorCode], [SEOrderCode], [InvenCode], [Quantity], [FinishDate], [IsFlag]) VALUES (CONVERT(TEXT, N'20090908-0001'), CAST(0x00009C7E00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090905-0001'), CONVERT(TEXT, N'02-1'), 2, CAST(0x00009C8F00000000 AS DateTime), CONVERT(TEXT, N'1'))
INSERT [dbo].[PRPlan] ([PRPlanCode], [PRPlanDate], [OperatorCode], [SEOrderCode], [InvenCode], [Quantity], [FinishDate], [IsFlag]) VALUES (CONVERT(TEXT, N'20090914-0001'), CAST(0x00009C8400000000 AS DateTime), CONVERT(TEXT, N'0000'), NULL, CONVERT(TEXT, N'02-1'), 3, CAST(0x00009C8A00000000 AS DateTime), CONVERT(TEXT, N'1'))
INSERT [dbo].[PRPlan] ([PRPlanCode], [PRPlanDate], [OperatorCode], [SEOrderCode], [InvenCode], [Quantity], [FinishDate], [IsFlag]) VALUES (CONVERT(TEXT, N'20090927-0001'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), NULL, CONVERT(TEXT, N'02-1'), 1, CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0'))
INSERT [dbo].[PRPlan] ([PRPlanCode], [PRPlanDate], [OperatorCode], [SEOrderCode], [InvenCode], [Quantity], [FinishDate], [IsFlag]) VALUES (CONVERT(TEXT, N'20091022-0001'), CAST(0x00009CAA00000000 AS DateTime), CONVERT(TEXT, N'mr'), NULL, CONVERT(TEXT, N'02-1'), 1, CAST(0x00009CAB00000000 AS DateTime), CONVERT(TEXT, N'1'))
INSERT [dbo].[PRPlan] ([PRPlanCode], [PRPlanDate], [OperatorCode], [SEOrderCode], [InvenCode], [Quantity], [FinishDate], [IsFlag]) VALUES (CONVERT(TEXT, N'20100410-0001'), CAST(0x00009D5400000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'20090909-0001'), CONVERT(TEXT, N'02-1'), 2, CAST(0x00009D5400000000 AS DateTime), CONVERT(TEXT, N'1'))
INSERT [dbo].[PRPlan] ([PRPlanCode], [PRPlanDate], [OperatorCode], [SEOrderCode], [InvenCode], [Quantity], [FinishDate], [IsFlag]) VALUES (CONVERT(TEXT, N'20100410-0002'), CAST(0x00009D5400000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'20090905-0002'), CONVERT(TEXT, N'02-1'), 1, CAST(0x00009D5400000000 AS DateTime), CONVERT(TEXT, N'1'))
INSERT [dbo].[PRProduce] ([PRProduceCode], [PRProduceDate], [OperatorCode], [PRPlanCode], [DepartmentCode], [InvenCode], [Quantity], [StartDate], [EndDate], [IsFlag], [IsComplete]) VALUES (CONVERT(TEXT, N'20090914-0001'), CAST(0x00009C8400000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090908-0001'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'02-1'), 2, CAST(0x00009C8400000000 AS DateTime), CAST(0x00009C8F00000000 AS DateTime), CONVERT(TEXT, N'1'), CONVERT(TEXT, N'1'))
INSERT [dbo].[PRProduce] ([PRProduceCode], [PRProduceDate], [OperatorCode], [PRPlanCode], [DepartmentCode], [InvenCode], [Quantity], [StartDate], [EndDate], [IsFlag], [IsComplete]) VALUES (CONVERT(TEXT, N'20090927-0001'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090914-0001'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'02-1'), 3, CAST(0x00009C9100000000 AS DateTime), CAST(0x00009C9400000000 AS DateTime), CONVERT(TEXT, N'1'), CONVERT(TEXT, N'0'))
INSERT [dbo].[PRProduce] ([PRProduceCode], [PRProduceDate], [OperatorCode], [PRPlanCode], [DepartmentCode], [InvenCode], [Quantity], [StartDate], [EndDate], [IsFlag], [IsComplete]) VALUES (CONVERT(TEXT, N'20100410-0001'), CAST(0x00009D5400000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'20091022-0001'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'02-1'), 1, CAST(0x00009D5400000000 AS DateTime), CAST(0x00009D5E00000000 AS DateTime), CONVERT(TEXT, N'0'), CONVERT(TEXT, N'0'))
INSERT [dbo].[PRProduce] ([PRProduceCode], [PRProduceDate], [OperatorCode], [PRPlanCode], [DepartmentCode], [InvenCode], [Quantity], [StartDate], [EndDate], [IsFlag], [IsComplete]) VALUES (CONVERT(TEXT, N'20100410-0002'), CAST(0x00009D5400000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'20100410-0001'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'02-1'), 2, CAST(0x00009D5400000000 AS DateTime), CAST(0x00009D5E00000000 AS DateTime), CONVERT(TEXT, N'0'), CONVERT(TEXT, N'0'))
INSERT [dbo].[PRProduce] ([PRProduceCode], [PRProduceDate], [OperatorCode], [PRPlanCode], [DepartmentCode], [InvenCode], [Quantity], [StartDate], [EndDate], [IsFlag], [IsComplete]) VALUES (CONVERT(TEXT, N'20100410-0003'), CAST(0x00009D5400000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'20100410-0002'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'02-1'), 1, CAST(0x00009D5400000000 AS DateTime), CAST(0x00009D5900000000 AS DateTime), CONVERT(TEXT, N'0'), CONVERT(TEXT, N'0'))
SET IDENTITY_INSERT [dbo].[PRProduceItem] ON 

INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (40, CONVERT(TEXT, N'20090914-0001'), CONVERT(TEXT, N'01-1'), 2, 2, 2)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (41, CONVERT(TEXT, N'20090914-0001'), CONVERT(TEXT, N'01-2'), 4, 4, 4)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (42, CONVERT(TEXT, N'20090914-0001'), CONVERT(TEXT, N'01-3'), 2, 2, 2)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (46, CONVERT(TEXT, N'20090927-0001'), CONVERT(TEXT, N'01-1'), 3, 3, 3)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (47, CONVERT(TEXT, N'20090927-0001'), CONVERT(TEXT, N'01-2'), 6, 6, 6)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (48, CONVERT(TEXT, N'20090927-0001'), CONVERT(TEXT, N'01-3'), 3, 3, 3)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (58, CONVERT(TEXT, N'20100410-0001'), CONVERT(TEXT, N'01-1'), 1, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (59, CONVERT(TEXT, N'20100410-0001'), CONVERT(TEXT, N'01-2'), 2, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (60, CONVERT(TEXT, N'20100410-0001'), CONVERT(TEXT, N'01-3'), 1, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (61, CONVERT(TEXT, N'20100410-0001'), CONVERT(TEXT, N'01-4'), 1, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (62, CONVERT(TEXT, N'20100410-0002'), CONVERT(TEXT, N'01-1'), 2, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (63, CONVERT(TEXT, N'20100410-0002'), CONVERT(TEXT, N'01-2'), 4, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (64, CONVERT(TEXT, N'20100410-0002'), CONVERT(TEXT, N'01-3'), 2, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (65, CONVERT(TEXT, N'20100410-0002'), CONVERT(TEXT, N'01-4'), 2, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (66, CONVERT(TEXT, N'20100410-0003'), CONVERT(TEXT, N'01-1'), 1, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (67, CONVERT(TEXT, N'20100410-0003'), CONVERT(TEXT, N'01-2'), 2, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (68, CONVERT(TEXT, N'20100410-0003'), CONVERT(TEXT, N'01-3'), 1, NULL, NULL)
INSERT [dbo].[PRProduceItem] ([Id], [PRProduceCode], [InvenCode], [Quantity], [GetQuantity], [UseQuantity]) VALUES (69, CONVERT(TEXT, N'20100410-0003'), CONVERT(TEXT, N'01-4'), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PRProduceItem] OFF
INSERT [dbo].[PUInStore] ([PUInCode], [PUInDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [PUOrderCode], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090904-0001'), CAST(0x00009C7A00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-1'), CAST(12.00 AS Decimal(12, 2)), 2, CAST(24.00 AS Decimal(12, 2)), CONVERT(TEXT, N'20090903-0002'), CONVERT(TEXT, N'05'), CONVERT(TEXT, N'1'))
INSERT [dbo].[PUInStore] ([PUInCode], [PUInDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [PUOrderCode], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090904-0002'), CAST(0x00009C7A00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-2'), CAST(5.00 AS Decimal(12, 2)), 1, CAST(5.00 AS Decimal(12, 2)), CONVERT(TEXT, N'20090904-0003'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'1'))
INSERT [dbo].[PUInStore] ([PUInCode], [PUInDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [PUOrderCode], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090927-0001'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-2'), CAST(5.00 AS Decimal(12, 2)), 50, CAST(250.00 AS Decimal(12, 2)), CONVERT(TEXT, N''), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[PUInStore] ([PUInCode], [PUInDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [PUOrderCode], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090927-0002'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-3'), CAST(5.00 AS Decimal(12, 2)), 100, CAST(500.00 AS Decimal(12, 2)), CONVERT(TEXT, N''), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[PUInStore] ([PUInCode], [PUInDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [PUOrderCode], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20091013-0001'), CAST(0x00009CA100000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-4'), CAST(200.00 AS Decimal(12, 2)), 1, CAST(200.00 AS Decimal(12, 2)), CONVERT(TEXT, N''), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'0'))
INSERT [dbo].[PUOrder] ([PUOrderCode], [PUOrderDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [RecInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090901-0001'), CAST(0x00009C7700000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-1'), CAST(10.00 AS Decimal(12, 2)), 2, CAST(20 AS Decimal(12, 0)), CAST(0x00009B8400000000 AS DateTime), CONVERT(TEXT, N'04'), CONVERT(TEXT, N'0'))
INSERT [dbo].[PUOrder] ([PUOrderCode], [PUOrderDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [RecInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090903-0001'), CAST(0x00009C7900000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-2'), CAST(10.00 AS Decimal(12, 2)), 5, CAST(50 AS Decimal(12, 0)), CAST(0x00009C7900000000 AS DateTime), NULL, CONVERT(TEXT, N'0'))
INSERT [dbo].[PUOrder] ([PUOrderCode], [PUOrderDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [RecInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090903-0002'), CAST(0x00009C7900000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-1'), CAST(12.00 AS Decimal(12, 2)), 2, CAST(24 AS Decimal(12, 0)), CAST(0x00009C7900000000 AS DateTime), CONVERT(TEXT, N'05'), CONVERT(TEXT, N'1'))
INSERT [dbo].[PUOrder] ([PUOrderCode], [PUOrderDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [RecInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090904-0001'), CAST(0x00009C7A00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'0555'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-2'), CAST(10.00 AS Decimal(12, 2)), 1, CAST(10 AS Decimal(12, 0)), CAST(0x00009C7A00000000 AS DateTime), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'1'))
INSERT [dbo].[PUOrder] ([PUOrderCode], [PUOrderDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [RecInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090904-0002'), CAST(0x00009C7A00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-2'), CAST(20.00 AS Decimal(12, 2)), 1, CAST(20 AS Decimal(12, 0)), CAST(0x00009C7A00000000 AS DateTime), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'0'))
INSERT [dbo].[PUOrder] ([PUOrderCode], [PUOrderDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [RecInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090904-0003'), CAST(0x00009C7A00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-2'), CAST(5.00 AS Decimal(12, 2)), 1, CAST(5 AS Decimal(12, 0)), CAST(0x00009C7B00000000 AS DateTime), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'1'))
INSERT [dbo].[PUOrder] ([PUOrderCode], [PUOrderDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [RecInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090928-0001'), CAST(0x00009C9200000000 AS DateTime), CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-1'), CAST(3.00 AS Decimal(12, 2)), 1, CAST(3 AS Decimal(12, 0)), CAST(0x00009C9200000000 AS DateTime), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'1'))
INSERT [dbo].[PUOrder] ([PUOrderCode], [PUOrderDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [RecInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20091005-0001'), CAST(0x00009C9900000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-1'), CAST(10.00 AS Decimal(12, 2)), 1, CAST(10 AS Decimal(12, 0)), CAST(0x00009C9900000000 AS DateTime), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'0'))
INSERT [dbo].[PUOrder] ([PUOrderCode], [PUOrderDate], [OperatorCode], [SupplierCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [PUMoney], [RecInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20110329-0001'), CAST(0x00009EB500000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-4'), CAST(9.00 AS Decimal(12, 2)), 1, CAST(9 AS Decimal(12, 0)), CAST(0x00009EB500000000 AS DateTime), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'0'))
INSERT [dbo].[PUPay] ([PUPayCode], [PUPayDate], [OperatorCode], [PUInCode], [PUInDate], [SupplierCode], [PUMoney], [AccountCode], [EmployeeCode], [Remark], [IsFlag]) VALUES (CONVERT(TEXT, N'20090905-0001'), CAST(0x00009C7B00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090904-0001'), CAST(0x00009C7A00000000 AS DateTime), CONVERT(TEXT, N'02'), CAST(24.00 AS Decimal(12, 2)), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'02'), CONVERT(TEXT, N''), CONVERT(TEXT, N'0'))
INSERT [dbo].[PUPay] ([PUPayCode], [PUPayDate], [OperatorCode], [PUInCode], [PUInDate], [SupplierCode], [PUMoney], [AccountCode], [EmployeeCode], [Remark], [IsFlag]) VALUES (CONVERT(TEXT, N'20090905-0002'), CAST(0x00009C7B00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090904-0002'), CAST(0x00009C7A00000000 AS DateTime), CONVERT(TEXT, N'03'), CAST(5.00 AS Decimal(12, 2)), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'88'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SEGather] ([SEGatherCode], [SEGatherDate], [OperatorCode], [SEOutCode], [SEOutDate], [CustomerCode], [SEMoney], [AccountCode], [EmployeeCode], [Remark], [IsFlag]) VALUES (CONVERT(TEXT, N'20090907-0001'), CAST(0x00009C7D00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090907-0002'), CAST(0x00009C7D00000000 AS DateTime), CONVERT(TEXT, N'26'), CAST(40.00 AS Decimal(12, 2)), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N''), CONVERT(TEXT, N'1'))
INSERT [dbo].[SEGather] ([SEGatherCode], [SEGatherDate], [OperatorCode], [SEOutCode], [SEOutDate], [CustomerCode], [SEMoney], [AccountCode], [EmployeeCode], [Remark], [IsFlag]) VALUES (CONVERT(TEXT, N'20090908-0001'), CAST(0x00009C7E00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090907-0002'), CAST(0x00009C7D00000000 AS DateTime), CONVERT(TEXT, N'26'), CAST(40.00 AS Decimal(12, 2)), CONVERT(TEXT, N'02'), NULL, CONVERT(TEXT, N''), CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOrder] ([SEOrderCode], [SEOrderDate], [OperatorCode], [CustomerCode], [StoreCode], [InvenCode], [SellPrice], [Quantity], [SEMoney], [SenInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090905-0001'), CAST(0x00009C7B00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'26'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), CAST(20.00 AS Decimal(12, 2)), 2, CAST(40.00 AS Decimal(12, 2)), CAST(0x00009C7B00000000 AS DateTime), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOrder] ([SEOrderCode], [SEOrderDate], [OperatorCode], [CustomerCode], [StoreCode], [InvenCode], [SellPrice], [Quantity], [SEMoney], [SenInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090905-0002'), CAST(0x00009C7B00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'26'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), CAST(20.00 AS Decimal(12, 2)), 1, CAST(20.00 AS Decimal(12, 2)), CAST(0x00009C7B00000000 AS DateTime), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOrder] ([SEOrderCode], [SEOrderDate], [OperatorCode], [CustomerCode], [StoreCode], [InvenCode], [SellPrice], [Quantity], [SEMoney], [SenInvenDate], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090909-0001'), CAST(0x00009C7F00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'26'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), CAST(22.00 AS Decimal(12, 2)), 2, CAST(44.00 AS Decimal(12, 2)), CAST(0x00009C7F00000000 AS DateTime), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090907-0001'), CAST(0x00009C7D00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N''), CONVERT(TEXT, N'26'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), CAST(4971.46 AS Decimal(12, 2)), CAST(10.00 AS Decimal(12, 2)), 1, CAST(10.00 AS Decimal(12, 2)), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090907-0002'), CAST(0x00009C7D00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090905-0001'), CONVERT(TEXT, N'26'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), CAST(0.00 AS Decimal(12, 2)), CAST(20.00 AS Decimal(12, 2)), 2, CAST(40.00 AS Decimal(12, 2)), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090908-0001'), CAST(0x00009C7E00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090905-0001'), CONVERT(TEXT, N'26'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-3'), CAST(20.00 AS Decimal(12, 2)), CAST(20.00 AS Decimal(12, 2)), 2, CAST(40.00 AS Decimal(12, 2)), CONVERT(TEXT, N'02'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090909-0002'), CAST(0x00009C7F00000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090909-0001'), CONVERT(TEXT, N'26'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), NULL, CAST(22.00 AS Decimal(12, 2)), 2, CAST(44.00 AS Decimal(12, 2)), NULL, CONVERT(TEXT, N'0'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090927-0001'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N''), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), CAST(9731.37 AS Decimal(12, 2)), CAST(2000.00 AS Decimal(12, 2)), 1, CAST(2000.00 AS Decimal(12, 2)), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090927-0002'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N''), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), CAST(9731.37 AS Decimal(12, 2)), CAST(20000.00 AS Decimal(12, 2)), 10, CAST(200000.00 AS Decimal(12, 2)), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090927-0003'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N''), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-3'), CAST(5.00 AS Decimal(12, 2)), CAST(20.00 AS Decimal(12, 2)), 10, CAST(200.00 AS Decimal(12, 2)), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090927-0004'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N''), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-3'), CAST(5.00 AS Decimal(12, 2)), CAST(5000.00 AS Decimal(12, 2)), 20, CAST(100000.00 AS Decimal(12, 2)), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20091013-0001'), CAST(0x00009CA100000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N''), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), NULL, CAST(100.00 AS Decimal(12, 2)), 1, CAST(100.00 AS Decimal(12, 2)), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20091013-0002'), CAST(0x00009CA100000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N''), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'03'), CONVERT(TEXT, N'02-1'), NULL, CAST(12000.00 AS Decimal(12, 2)), 1, CAST(12000.00 AS Decimal(12, 2)), NULL, CONVERT(TEXT, N'0'))
INSERT [dbo].[SEOutStore] ([SEOutCode], [SEOutDate], [OperatorCode], [SEOrderCode], [CustomerCode], [StoreCode], [InvenCode], [UnitPrice], [SellPrice], [Quantity], [SEMoney], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20091020-0001'), CAST(0x00009CA800000000 AS DateTime), CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'20090909-0001'), CONVERT(TEXT, N'26'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), NULL, CAST(50.00 AS Decimal(12, 2)), 2, CAST(100.00 AS Decimal(12, 2)), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'0'))
INSERT [dbo].[STGetMaterial] ([STGetCode], [STGetDate], [OperatorCode], [PRProduceCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [BillType], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090915-0001'), CAST(0x00009C8500000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090914-0001'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-1'), CAST(11.64 AS Decimal(12, 2)), 2, CONVERT(TEXT, N'1'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'1'))
INSERT [dbo].[STGetMaterial] ([STGetCode], [STGetDate], [OperatorCode], [PRProduceCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [BillType], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090915-0002'), CAST(0x00009C8500000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090914-0001'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-2'), CAST(4.98 AS Decimal(12, 2)), 4, CONVERT(TEXT, N'1'), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[STGetMaterial] ([STGetCode], [STGetDate], [OperatorCode], [PRProduceCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [BillType], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090915-0003'), CAST(0x00009C8500000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090914-0001'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-3'), CAST(5.00 AS Decimal(12, 2)), 2, CONVERT(TEXT, N'1'), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[STGetMaterial] ([STGetCode], [STGetDate], [OperatorCode], [PRProduceCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [BillType], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090927-0001'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090927-0001'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-1'), CAST(11.64 AS Decimal(12, 2)), 3, CONVERT(TEXT, N'1'), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[STGetMaterial] ([STGetCode], [STGetDate], [OperatorCode], [PRProduceCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [BillType], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090927-0002'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090927-0001'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-2'), CAST(4.98 AS Decimal(12, 2)), 6, CONVERT(TEXT, N'1'), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[STGetMaterial] ([STGetCode], [STGetDate], [OperatorCode], [PRProduceCode], [StoreCode], [InvenCode], [UnitPrice], [Quantity], [BillType], [EmployeeCode], [IsFlag]) VALUES (CONVERT(TEXT, N'20090927-0003'), CAST(0x00009C9100000000 AS DateTime), CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'20090927-0001'), CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-3'), CAST(5.00 AS Decimal(12, 2)), 3, CONVERT(TEXT, N'1'), NULL, CONVERT(TEXT, N'1'))
INSERT [dbo].[STStock] ([StoreCode], [InvenCode], [Quantity], [LossQuantity], [AvePrice], [STMoney], [LossMoney]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-1'), 45, 0, CAST(11.64 AS Decimal(12, 2)), CAST(523.80 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)))
INSERT [dbo].[STStock] ([StoreCode], [InvenCode], [Quantity], [LossQuantity], [AvePrice], [STMoney], [LossMoney]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'01-3'), 75, 0, CAST(5.00 AS Decimal(12, 2)), CAST(375.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)))
INSERT [dbo].[STStock] ([StoreCode], [InvenCode], [Quantity], [LossQuantity], [AvePrice], [STMoney], [LossMoney]) VALUES (CONVERT(TEXT, N'01'), CONVERT(TEXT, N'02-1'), 36, 0, CAST(147230.33 AS Decimal(12, 2)), CAST(5300291.88 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)))
INSERT [dbo].[STStock] ([StoreCode], [InvenCode], [Quantity], [LossQuantity], [AvePrice], [STMoney], [LossMoney]) VALUES (CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-2'), 0, NULL, CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), NULL)
INSERT [dbo].[STStock] ([StoreCode], [InvenCode], [Quantity], [LossQuantity], [AvePrice], [STMoney], [LossMoney]) VALUES (CONVERT(TEXT, N'03'), CONVERT(TEXT, N'01-4'), 10, 0, CAST(300.00 AS Decimal(12, 2)), CAST(3000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)))
INSERT [dbo].[STStock] ([StoreCode], [InvenCode], [Quantity], [LossQuantity], [AvePrice], [STMoney], [LossMoney]) VALUES (CONVERT(TEXT, N'03'), CONVERT(TEXT, N'02-1'), 10, 0, CAST(36100.00 AS Decimal(12, 2)), CAST(361000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'111'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'111'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'111'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'121'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'121'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'121'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'140'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'140'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'140'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'530'), CONVERT(TEXT, N'Check'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'530'), CONVERT(TEXT, N'UnCheck'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'111'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'111'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'111'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'112'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'112'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'112'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'113'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'113'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'113'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'121'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'121'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'121'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'122'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'122'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'122'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'125'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'125'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'125'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'126'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'126'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'126'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'130'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'130'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'130'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'210'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'210'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'210'), CONVERT(TEXT, N'Check'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'210'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'210'), CONVERT(TEXT, N'UnCheck'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'330'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'330'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'330'), CONVERT(TEXT, N'Check'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'330'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'330'), CONVERT(TEXT, N'UnCheck'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'450'), CONVERT(TEXT, N'Query'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'510'), CONVERT(TEXT, N'Add'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'510'), CONVERT(TEXT, N'Amend'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'510'), CONVERT(TEXT, N'Check'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'510'), CONVERT(TEXT, N'Delete'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'510'), CONVERT(TEXT, N'UnCheck'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYAssignRight] ([OperatorCode], [ModuleTag], [RightTag], [IsRight]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'870'), CONVERT(TEXT, N'Query'), CONVERT(TEXT, N'1'))
INSERT [dbo].[SYOperator] ([OperatorCode], [OperatorName], [PassWord], [IsAdmin]) VALUES (CONVERT(TEXT, N'0000'), CONVERT(TEXT, N'测试0'), CONVERT(TEXT, N'1'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYOperator] ([OperatorCode], [OperatorName], [PassWord], [IsAdmin]) VALUES (CONVERT(TEXT, N'0001'), CONVERT(TEXT, N'测试1'), CONVERT(TEXT, N'1'), CONVERT(TEXT, N'0'))
INSERT [dbo].[SYOperator] ([OperatorCode], [OperatorName], [PassWord], [IsAdmin]) VALUES (CONVERT(TEXT, N'mr'), CONVERT(TEXT, N'系统管理员'), CONVERT(TEXT, N'mrsoft'), CONVERT(TEXT, N'1'))
ALTER TABLE [dbo].[FIDeposit] ADD  CONSTRAINT [DF_FIDeposit_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[FIPurCost] ADD  CONSTRAINT [DF_FI_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[FISelCost] ADD  CONSTRAINT [DF_FISelCost_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[PRInStore] ADD  CONSTRAINT [DF_PRInStore_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[PRPlan] ADD  CONSTRAINT [DF_PRPlan_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[PRProduce] ADD  CONSTRAINT [DF_PRProduce_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[PRProduce] ADD  CONSTRAINT [DF_PRProduce_IsComplete]  DEFAULT (0) FOR [IsComplete]
GO
ALTER TABLE [dbo].[PUInStore] ADD  CONSTRAINT [DF_PUInStore_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[PUOrder] ADD  CONSTRAINT [DF_PUOrder_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[PUPay] ADD  CONSTRAINT [DF_PUPay_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[SEGather] ADD  CONSTRAINT [DF_SEGather_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[SEOrder] ADD  CONSTRAINT [DF_SEOrder_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[SEOutStore] ADD  CONSTRAINT [DF_SEOutStore_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[STCheck] ADD  CONSTRAINT [DF_STCheck_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[STGetMaterial] ADD  CONSTRAINT [DF_STGetMaterial_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[STLoss] ADD  CONSTRAINT [DF_STLoss_IsFlag]  DEFAULT (0) FOR [IsFlag]
GO
ALTER TABLE [dbo].[BSBom]  WITH NOCHECK ADD  CONSTRAINT [FK_BSBom_BSInven] FOREIGN KEY([ProInvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[BSBom] CHECK CONSTRAINT [FK_BSBom_BSInven]
GO
ALTER TABLE [dbo].[BSBom]  WITH NOCHECK ADD  CONSTRAINT [FK_BSBom_BSInven1] FOREIGN KEY([MatInvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[BSBom] CHECK CONSTRAINT [FK_BSBom_BSInven1]
GO
ALTER TABLE [dbo].[BSCost]  WITH CHECK ADD  CONSTRAINT [FK_BSCost_BSCostType] FOREIGN KEY([CostTypeCode])
REFERENCES [dbo].[BSCostType] ([CostTypeCode])
GO
ALTER TABLE [dbo].[BSCost] CHECK CONSTRAINT [FK_BSCost_BSCostType]
GO
ALTER TABLE [dbo].[BSEmployee]  WITH NOCHECK ADD  CONSTRAINT [FK_TABLE1_BSDepartment] FOREIGN KEY([DepartmentCode])
REFERENCES [dbo].[BSDepartment] ([DepartmentCode])
GO
ALTER TABLE [dbo].[BSEmployee] CHECK CONSTRAINT [FK_TABLE1_BSDepartment]
GO
ALTER TABLE [dbo].[BSInven]  WITH NOCHECK ADD  CONSTRAINT [FK_BSInven_BSInvenType] FOREIGN KEY([InvenTypeCode])
REFERENCES [dbo].[BSInvenType] ([InvenTypeCode])
GO
ALTER TABLE [dbo].[BSInven] CHECK CONSTRAINT [FK_BSInven_BSInvenType]
GO
ALTER TABLE [dbo].[CUAfterService]  WITH NOCHECK ADD  CONSTRAINT [FK_CUAfterService_BSCustomer] FOREIGN KEY([CustomerCode])
REFERENCES [dbo].[BSCustomer] ([CustomerCode])
GO
ALTER TABLE [dbo].[CUAfterService] CHECK CONSTRAINT [FK_CUAfterService_BSCustomer]
GO
ALTER TABLE [dbo].[CUAfterService]  WITH NOCHECK ADD  CONSTRAINT [FK_CUAfterService_BSEmployee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[BSEmployee] ([EmployeeCode])
GO
ALTER TABLE [dbo].[CUAfterService] CHECK CONSTRAINT [FK_CUAfterService_BSEmployee]
GO
ALTER TABLE [dbo].[CURelRecord]  WITH CHECK ADD  CONSTRAINT [FK_CURelRecord_BSCustomer] FOREIGN KEY([CustomerCode])
REFERENCES [dbo].[BSCustomer] ([CustomerCode])
GO
ALTER TABLE [dbo].[CURelRecord] CHECK CONSTRAINT [FK_CURelRecord_BSCustomer]
GO
ALTER TABLE [dbo].[CURelRecord]  WITH CHECK ADD  CONSTRAINT [FK_CURelRecord_INRelManner] FOREIGN KEY([RelManner])
REFERENCES [dbo].[INRelManner] ([Code])
GO
ALTER TABLE [dbo].[CURelRecord] CHECK CONSTRAINT [FK_CURelRecord_INRelManner]
GO
ALTER TABLE [dbo].[CUSellChance]  WITH NOCHECK ADD  CONSTRAINT [FK_CUSellChance_BSCustomer] FOREIGN KEY([CustomerCode])
REFERENCES [dbo].[BSCustomer] ([CustomerCode])
GO
ALTER TABLE [dbo].[CUSellChance] CHECK CONSTRAINT [FK_CUSellChance_BSCustomer]
GO
ALTER TABLE [dbo].[CUSellChance]  WITH CHECK ADD  CONSTRAINT [FK_CUSellChance_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[CUSellChance] CHECK CONSTRAINT [FK_CUSellChance_BSInven]
GO
ALTER TABLE [dbo].[CUSellChance]  WITH CHECK ADD  CONSTRAINT [FK_CUSellChance_CUChance] FOREIGN KEY([ChanceCode])
REFERENCES [dbo].[CUChance] ([ChanceCode])
GO
ALTER TABLE [dbo].[CUSellChance] CHECK CONSTRAINT [FK_CUSellChance_CUChance]
GO
ALTER TABLE [dbo].[FIDeposit]  WITH NOCHECK ADD  CONSTRAINT [FK_FIDeposit_BSAccount] FOREIGN KEY([OutAccCode])
REFERENCES [dbo].[BSAccount] ([AccountCode])
GO
ALTER TABLE [dbo].[FIDeposit] CHECK CONSTRAINT [FK_FIDeposit_BSAccount]
GO
ALTER TABLE [dbo].[FIDeposit]  WITH NOCHECK ADD  CONSTRAINT [FK_FIDeposit_BSAccount1] FOREIGN KEY([InAccCode])
REFERENCES [dbo].[BSAccount] ([AccountCode])
GO
ALTER TABLE [dbo].[FIDeposit] CHECK CONSTRAINT [FK_FIDeposit_BSAccount1]
GO
ALTER TABLE [dbo].[FIDeposit]  WITH NOCHECK ADD  CONSTRAINT [FK_FIDeposit_BSEmployee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[BSEmployee] ([EmployeeCode])
GO
ALTER TABLE [dbo].[FIDeposit] CHECK CONSTRAINT [FK_FIDeposit_BSEmployee]
GO
ALTER TABLE [dbo].[FIDeposit]  WITH NOCHECK ADD  CONSTRAINT [FK_FIDeposit_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[FIDeposit] CHECK CONSTRAINT [FK_FIDeposit_SYOperator]
GO
ALTER TABLE [dbo].[FIPurCost]  WITH NOCHECK ADD  CONSTRAINT [FK_FIPurCost_BSAccount] FOREIGN KEY([AccountCode])
REFERENCES [dbo].[BSAccount] ([AccountCode])
GO
ALTER TABLE [dbo].[FIPurCost] CHECK CONSTRAINT [FK_FIPurCost_BSAccount]
GO
ALTER TABLE [dbo].[FIPurCost]  WITH NOCHECK ADD  CONSTRAINT [FK_FIPurCost_BSCost] FOREIGN KEY([CostCode])
REFERENCES [dbo].[BSCost] ([CostCode])
GO
ALTER TABLE [dbo].[FIPurCost] CHECK CONSTRAINT [FK_FIPurCost_BSCost]
GO
ALTER TABLE [dbo].[FIPurCost]  WITH NOCHECK ADD  CONSTRAINT [FK_FIPurCost_BSEmployee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[BSEmployee] ([EmployeeCode])
GO
ALTER TABLE [dbo].[FIPurCost] CHECK CONSTRAINT [FK_FIPurCost_BSEmployee]
GO
ALTER TABLE [dbo].[FIPurCost]  WITH NOCHECK ADD  CONSTRAINT [FK_FIPurCost_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[FIPurCost] CHECK CONSTRAINT [FK_FIPurCost_SYOperator]
GO
ALTER TABLE [dbo].[FISelCost]  WITH NOCHECK ADD  CONSTRAINT [FK_FISelCost_BSAccount] FOREIGN KEY([AccountCode])
REFERENCES [dbo].[BSAccount] ([AccountCode])
GO
ALTER TABLE [dbo].[FISelCost] CHECK CONSTRAINT [FK_FISelCost_BSAccount]
GO
ALTER TABLE [dbo].[FISelCost]  WITH NOCHECK ADD  CONSTRAINT [FK_FISelCost_BSCost] FOREIGN KEY([CostCode])
REFERENCES [dbo].[BSCost] ([CostCode])
GO
ALTER TABLE [dbo].[FISelCost] CHECK CONSTRAINT [FK_FISelCost_BSCost]
GO
ALTER TABLE [dbo].[FISelCost]  WITH NOCHECK ADD  CONSTRAINT [FK_FISelCost_BSEmployee] FOREIGN KEY([EmployeeCode])
REFERENCES [dbo].[BSEmployee] ([EmployeeCode])
GO
ALTER TABLE [dbo].[FISelCost] CHECK CONSTRAINT [FK_FISelCost_BSEmployee]
GO
ALTER TABLE [dbo].[FISelCost]  WITH NOCHECK ADD  CONSTRAINT [FK_FISelCost_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[FISelCost] CHECK CONSTRAINT [FK_FISelCost_SYOperator]
GO
ALTER TABLE [dbo].[PRInStore]  WITH NOCHECK ADD  CONSTRAINT [FK_PRInStore_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[PRInStore] CHECK CONSTRAINT [FK_PRInStore_BSInven]
GO
ALTER TABLE [dbo].[PRInStore]  WITH CHECK ADD  CONSTRAINT [FK_PRInStore_BSStore] FOREIGN KEY([StoreCode])
REFERENCES [dbo].[BSStore] ([StoreCode])
GO
ALTER TABLE [dbo].[PRInStore] CHECK CONSTRAINT [FK_PRInStore_BSStore]
GO
ALTER TABLE [dbo].[PRInStore]  WITH NOCHECK ADD  CONSTRAINT [FK_PRInStore_PRProduce] FOREIGN KEY([PRProduceCode])
REFERENCES [dbo].[PRProduce] ([PRProduceCode])
GO
ALTER TABLE [dbo].[PRInStore] CHECK CONSTRAINT [FK_PRInStore_PRProduce]
GO
ALTER TABLE [dbo].[PRInStore]  WITH NOCHECK ADD  CONSTRAINT [FK_PRInStore_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[PRInStore] CHECK CONSTRAINT [FK_PRInStore_SYOperator]
GO
ALTER TABLE [dbo].[PRPlan]  WITH NOCHECK ADD  CONSTRAINT [FK_PRPlan_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[PRPlan] CHECK CONSTRAINT [FK_PRPlan_BSInven]
GO
ALTER TABLE [dbo].[PRPlan]  WITH NOCHECK ADD  CONSTRAINT [FK_PRPlan_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[PRPlan] CHECK CONSTRAINT [FK_PRPlan_SYOperator]
GO
ALTER TABLE [dbo].[PRProduce]  WITH CHECK ADD  CONSTRAINT [FK_PRProduce_BSDepartment] FOREIGN KEY([DepartmentCode])
REFERENCES [dbo].[BSDepartment] ([DepartmentCode])
GO
ALTER TABLE [dbo].[PRProduce] CHECK CONSTRAINT [FK_PRProduce_BSDepartment]
GO
ALTER TABLE [dbo].[PRProduce]  WITH CHECK ADD  CONSTRAINT [FK_PRProduce_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[PRProduce] CHECK CONSTRAINT [FK_PRProduce_BSInven]
GO
ALTER TABLE [dbo].[PRProduce]  WITH CHECK ADD  CONSTRAINT [FK_PRProduce_PRPlan] FOREIGN KEY([PRPlanCode])
REFERENCES [dbo].[PRPlan] ([PRPlanCode])
GO
ALTER TABLE [dbo].[PRProduce] CHECK CONSTRAINT [FK_PRProduce_PRPlan]
GO
ALTER TABLE [dbo].[PRProduce]  WITH CHECK ADD  CONSTRAINT [FK_PRProduce_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[PRProduce] CHECK CONSTRAINT [FK_PRProduce_SYOperator]
GO
ALTER TABLE [dbo].[PRProduceItem]  WITH CHECK ADD  CONSTRAINT [FK_PRProduceItem_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[PRProduceItem] CHECK CONSTRAINT [FK_PRProduceItem_BSInven]
GO
ALTER TABLE [dbo].[PRProduceItem]  WITH CHECK ADD  CONSTRAINT [FK_PRProduceItem_PRProduce] FOREIGN KEY([PRProduceCode])
REFERENCES [dbo].[PRProduce] ([PRProduceCode])
GO
ALTER TABLE [dbo].[PRProduceItem] CHECK CONSTRAINT [FK_PRProduceItem_PRProduce]
GO
ALTER TABLE [dbo].[PUInStore]  WITH NOCHECK ADD  CONSTRAINT [FK_PUInStore_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[PUInStore] CHECK CONSTRAINT [FK_PUInStore_BSInven]
GO
ALTER TABLE [dbo].[PUInStore]  WITH NOCHECK ADD  CONSTRAINT [FK_PUInStore_BSStore] FOREIGN KEY([StoreCode])
REFERENCES [dbo].[BSStore] ([StoreCode])
GO
ALTER TABLE [dbo].[PUInStore] CHECK CONSTRAINT [FK_PUInStore_BSStore]
GO
ALTER TABLE [dbo].[PUInStore]  WITH NOCHECK ADD  CONSTRAINT [FK_PUInStore_BSSupplier] FOREIGN KEY([SupplierCode])
REFERENCES [dbo].[BSSupplier] ([SupplierCode])
GO
ALTER TABLE [dbo].[PUInStore] CHECK CONSTRAINT [FK_PUInStore_BSSupplier]
GO
ALTER TABLE [dbo].[PUInStore]  WITH NOCHECK ADD  CONSTRAINT [FK_PUInStore_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[PUInStore] CHECK CONSTRAINT [FK_PUInStore_SYOperator]
GO
ALTER TABLE [dbo].[PUOrder]  WITH NOCHECK ADD  CONSTRAINT [FK_PUBill_BSSupplier] FOREIGN KEY([SupplierCode])
REFERENCES [dbo].[BSSupplier] ([SupplierCode])
GO
ALTER TABLE [dbo].[PUOrder] CHECK CONSTRAINT [FK_PUBill_BSSupplier]
GO
ALTER TABLE [dbo].[PUOrder]  WITH NOCHECK ADD  CONSTRAINT [FK_PUOrder_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[PUOrder] CHECK CONSTRAINT [FK_PUOrder_BSInven]
GO
ALTER TABLE [dbo].[PUOrder]  WITH NOCHECK ADD  CONSTRAINT [FK_PUOrder_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[PUOrder] CHECK CONSTRAINT [FK_PUOrder_SYOperator]
GO
ALTER TABLE [dbo].[PUPay]  WITH NOCHECK ADD  CONSTRAINT [FK_PUPay_BSAccount] FOREIGN KEY([AccountCode])
REFERENCES [dbo].[BSAccount] ([AccountCode])
GO
ALTER TABLE [dbo].[PUPay] CHECK CONSTRAINT [FK_PUPay_BSAccount]
GO
ALTER TABLE [dbo].[PUPay]  WITH NOCHECK ADD  CONSTRAINT [FK_PUPay_BSSupplier] FOREIGN KEY([SupplierCode])
REFERENCES [dbo].[BSSupplier] ([SupplierCode])
GO
ALTER TABLE [dbo].[PUPay] CHECK CONSTRAINT [FK_PUPay_BSSupplier]
GO
ALTER TABLE [dbo].[PUPay]  WITH NOCHECK ADD  CONSTRAINT [FK_PUPay_PUInStore] FOREIGN KEY([PUInCode])
REFERENCES [dbo].[PUInStore] ([PUInCode])
GO
ALTER TABLE [dbo].[PUPay] CHECK CONSTRAINT [FK_PUPay_PUInStore]
GO
ALTER TABLE [dbo].[PUPay]  WITH NOCHECK ADD  CONSTRAINT [FK_PUPay_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[PUPay] CHECK CONSTRAINT [FK_PUPay_SYOperator]
GO
ALTER TABLE [dbo].[SEGather]  WITH NOCHECK ADD  CONSTRAINT [FK_SEGather_BSAccount] FOREIGN KEY([AccountCode])
REFERENCES [dbo].[BSAccount] ([AccountCode])
GO
ALTER TABLE [dbo].[SEGather] CHECK CONSTRAINT [FK_SEGather_BSAccount]
GO
ALTER TABLE [dbo].[SEGather]  WITH NOCHECK ADD  CONSTRAINT [FK_SEGather_BSCustomer] FOREIGN KEY([CustomerCode])
REFERENCES [dbo].[BSCustomer] ([CustomerCode])
GO
ALTER TABLE [dbo].[SEGather] CHECK CONSTRAINT [FK_SEGather_BSCustomer]
GO
ALTER TABLE [dbo].[SEGather]  WITH NOCHECK ADD  CONSTRAINT [FK_SEGather_SEOutStore] FOREIGN KEY([SEOutCode])
REFERENCES [dbo].[SEOutStore] ([SEOutCode])
GO
ALTER TABLE [dbo].[SEGather] CHECK CONSTRAINT [FK_SEGather_SEOutStore]
GO
ALTER TABLE [dbo].[SEGather]  WITH NOCHECK ADD  CONSTRAINT [FK_SEGather_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[SEGather] CHECK CONSTRAINT [FK_SEGather_SYOperator]
GO
ALTER TABLE [dbo].[SEOrder]  WITH NOCHECK ADD  CONSTRAINT [FK_SEOrder_BSCustomer] FOREIGN KEY([CustomerCode])
REFERENCES [dbo].[BSCustomer] ([CustomerCode])
GO
ALTER TABLE [dbo].[SEOrder] CHECK CONSTRAINT [FK_SEOrder_BSCustomer]
GO
ALTER TABLE [dbo].[SEOrder]  WITH CHECK ADD  CONSTRAINT [FK_SEOrder_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[SEOrder] CHECK CONSTRAINT [FK_SEOrder_BSInven]
GO
ALTER TABLE [dbo].[SEOrder]  WITH NOCHECK ADD  CONSTRAINT [FK_SEOrder_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[SEOrder] CHECK CONSTRAINT [FK_SEOrder_SYOperator]
GO
ALTER TABLE [dbo].[SEOutStore]  WITH NOCHECK ADD  CONSTRAINT [FK_SEOutStore_BSCustomer] FOREIGN KEY([CustomerCode])
REFERENCES [dbo].[BSCustomer] ([CustomerCode])
GO
ALTER TABLE [dbo].[SEOutStore] CHECK CONSTRAINT [FK_SEOutStore_BSCustomer]
GO
ALTER TABLE [dbo].[SEOutStore]  WITH NOCHECK ADD  CONSTRAINT [FK_SEOutStore_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[SEOutStore] CHECK CONSTRAINT [FK_SEOutStore_BSInven]
GO
ALTER TABLE [dbo].[SEOutStore]  WITH NOCHECK ADD  CONSTRAINT [FK_SEOutStore_BSStore] FOREIGN KEY([StoreCode])
REFERENCES [dbo].[BSStore] ([StoreCode])
GO
ALTER TABLE [dbo].[SEOutStore] CHECK CONSTRAINT [FK_SEOutStore_BSStore]
GO
ALTER TABLE [dbo].[SEOutStore]  WITH NOCHECK ADD  CONSTRAINT [FK_SEOutStore_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[SEOutStore] CHECK CONSTRAINT [FK_SEOutStore_SYOperator]
GO
ALTER TABLE [dbo].[STCheck]  WITH CHECK ADD  CONSTRAINT [FK_STCheck_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[STCheck] CHECK CONSTRAINT [FK_STCheck_BSInven]
GO
ALTER TABLE [dbo].[STCheck]  WITH NOCHECK ADD  CONSTRAINT [FK_STCheck_BSStore] FOREIGN KEY([StoreCode])
REFERENCES [dbo].[BSStore] ([StoreCode])
GO
ALTER TABLE [dbo].[STCheck] CHECK CONSTRAINT [FK_STCheck_BSStore]
GO
ALTER TABLE [dbo].[STCheck]  WITH NOCHECK ADD  CONSTRAINT [FK_STCheck_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[STCheck] CHECK CONSTRAINT [FK_STCheck_SYOperator]
GO
ALTER TABLE [dbo].[STGetMaterial]  WITH NOCHECK ADD  CONSTRAINT [FK_STGetMaterial_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[STGetMaterial] CHECK CONSTRAINT [FK_STGetMaterial_BSInven]
GO
ALTER TABLE [dbo].[STGetMaterial]  WITH NOCHECK ADD  CONSTRAINT [FK_STGetMaterial_BSStore] FOREIGN KEY([StoreCode])
REFERENCES [dbo].[BSStore] ([StoreCode])
GO
ALTER TABLE [dbo].[STGetMaterial] CHECK CONSTRAINT [FK_STGetMaterial_BSStore]
GO
ALTER TABLE [dbo].[STGetMaterial]  WITH NOCHECK ADD  CONSTRAINT [FK_STGetMaterial_PRProduce] FOREIGN KEY([PRProduceCode])
REFERENCES [dbo].[PRProduce] ([PRProduceCode])
GO
ALTER TABLE [dbo].[STGetMaterial] CHECK CONSTRAINT [FK_STGetMaterial_PRProduce]
GO
ALTER TABLE [dbo].[STGetMaterial]  WITH NOCHECK ADD  CONSTRAINT [FK_STGetMaterial_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[STGetMaterial] CHECK CONSTRAINT [FK_STGetMaterial_SYOperator]
GO
ALTER TABLE [dbo].[STLoss]  WITH NOCHECK ADD  CONSTRAINT [FK_STLoss_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[STLoss] CHECK CONSTRAINT [FK_STLoss_BSInven]
GO
ALTER TABLE [dbo].[STLoss]  WITH NOCHECK ADD  CONSTRAINT [FK_STLoss_BSStore] FOREIGN KEY([StoreCode])
REFERENCES [dbo].[BSStore] ([StoreCode])
GO
ALTER TABLE [dbo].[STLoss] CHECK CONSTRAINT [FK_STLoss_BSStore]
GO
ALTER TABLE [dbo].[STLoss]  WITH NOCHECK ADD  CONSTRAINT [FK_STLoss_SYOperator] FOREIGN KEY([OperatorCode])
REFERENCES [dbo].[SYOperator] ([OperatorCode])
GO
ALTER TABLE [dbo].[STLoss] CHECK CONSTRAINT [FK_STLoss_SYOperator]
GO
ALTER TABLE [dbo].[STStock]  WITH NOCHECK ADD  CONSTRAINT [FK_STInvenStock_BSInven] FOREIGN KEY([InvenCode])
REFERENCES [dbo].[BSInven] ([InvenCode])
GO
ALTER TABLE [dbo].[STStock] CHECK CONSTRAINT [FK_STInvenStock_BSInven]
GO
ALTER TABLE [dbo].[STStock]  WITH NOCHECK ADD  CONSTRAINT [FK_STInvenStock_BSStore] FOREIGN KEY([StoreCode])
REFERENCES [dbo].[BSStore] ([StoreCode])
GO
ALTER TABLE [dbo].[STStock] CHECK CONSTRAINT [FK_STInvenStock_BSStore]
GO
ALTER TABLE [dbo].[SYAssignRight]  WITH CHECK ADD  CONSTRAINT [FK_SYModuleRight_INModule] FOREIGN KEY([ModuleTag])
REFERENCES [dbo].[INModule] ([ModuleTag])
GO
ALTER TABLE [dbo].[SYAssignRight] CHECK CONSTRAINT [FK_SYModuleRight_INModule]
GO
ALTER TABLE [dbo].[SYAssignRight]  WITH CHECK ADD  CONSTRAINT [FK_SYModuleRight_INRight] FOREIGN KEY([RightTag])
REFERENCES [dbo].[INRight] ([RightTag])
GO
ALTER TABLE [dbo].[SYAssignRight] CHECK CONSTRAINT [FK_SYModuleRight_INRight]
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户编号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSAccount', @level2type=N'COLUMN',@level2name=N'AccountCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户名称' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSAccount', @level2type=N'COLUMN',@level2name=N'AccountName'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'银行帐号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSAccount', @level2type=N'COLUMN',@level2name=N'BankAccount'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'会计科目' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSAccount', @level2type=N'COLUMN',@level2name=N'AccSubject'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'期初金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSAccount', @level2type=N'COLUMN',@level2name=N'AccMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'母件（如：产成品代码），来自存货档案' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSBom', @level2type=N'COLUMN',@level2name=N'ProInvenCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'子件（如：原料代码），来自存货档案' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSBom', @level2type=N'COLUMN',@level2name=N'MatInvenCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'子件数量' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSBom', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'费用类别代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSCostType', @level2type=N'COLUMN',@level2name=N'CostTypeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'费用类别名称(采购费用或销售费用)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSCostType', @level2type=N'COLUMN',@level2name=N'CostTypeName'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'客户代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSCustomer', @level2type=N'COLUMN',@level2name=N'CustomerCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'客户名称' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSCustomer', @level2type=N'COLUMN',@level2name=N'CustomerName'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'业务员（左或右连接，非主外键）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSCustomer', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'客户等级（左或右连接，非主外键）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSCustomer', @level2type=N'COLUMN',@level2name=N'GradeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'客户状态' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSCustomer', @level2type=N'COLUMN',@level2name=N'StateCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'信用等级' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSCustomer', @level2type=N'COLUMN',@level2name=N'CreditCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'行业' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSCustomer', @level2type=N'COLUMN',@level2name=N'TradeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'教育水平' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSEmployee', @level2type=N'COLUMN',@level2name=N'EduLevel'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'入职日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSEmployee', @level2type=N'COLUMN',@level2name=N'JoinDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'存货代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSInven', @level2type=N'COLUMN',@level2name=N'InvenCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'存货名称' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSInven', @level2type=N'COLUMN',@level2name=N'InvenName'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'存货类别代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSInven', @level2type=N'COLUMN',@level2name=N'InvenTypeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'规格型号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSInven', @level2type=N'COLUMN',@level2name=N'SpecsModel'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'计量单位' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSInven', @level2type=N'COLUMN',@level2name=N'MeaUnit'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'参考售价' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSInven', @level2type=N'COLUMN',@level2name=N'SelPrice'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'参考进价' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSInven', @level2type=N'COLUMN',@level2name=N'PurPrice'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'最小库存' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSInven', @level2type=N'COLUMN',@level2name=N'SmallStockNum'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库面积' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSStore', @level2type=N'COLUMN',@level2name=N'Area'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员名称' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSStore', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSSupplier', @level2type=N'COLUMN',@level2name=N'SupplierCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商名称' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSSupplier', @level2type=N'COLUMN',@level2name=N'SupplierName'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSSupplier', @level2type=N'COLUMN',@level2name=N'TelephoneCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSSupplier', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSSupplier', @level2type=N'COLUMN',@level2name=N'Linkman'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSSupplier', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BSSupplier', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'客户代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUAfterService', @level2type=N'COLUMN',@level2name=N'CustomerCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'服务日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUAfterService', @level2type=N'COLUMN',@level2name=N'SerDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'服务人员' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUAfterService', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'服务内容' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUAfterService', @level2type=N'COLUMN',@level2name=N'SerContent'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'解决办法' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUAfterService', @level2type=N'COLUMN',@level2name=N'Resolvent'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'联系方式' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CURelRecord', @level2type=N'COLUMN',@level2name=N'RelManner'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CURelRecord', @level2type=N'COLUMN',@level2name=N'Linkman'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'下次预约日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CURelRecord', @level2type=N'COLUMN',@level2name=N'NextDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'联系内容' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CURelRecord', @level2type=N'COLUMN',@level2name=N'RelContent'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈信息' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CURelRecord', @level2type=N'COLUMN',@level2name=N'FeeInfo'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'销售机会流水号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSellChance', @level2type=N'COLUMN',@level2name=N'SellId'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSellChance', @level2type=N'COLUMN',@level2name=N'Theme'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'登记日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSellChance', @level2type=N'COLUMN',@level2name=N'RegDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'机会等级（高、中、低）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSellChance', @level2type=N'COLUMN',@level2name=N'ChanceCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'预计成交日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSellChance', @level2type=N'COLUMN',@level2name=N'ForeDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'预计销售价额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSellChance', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'预计销售数量' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSellChance', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'预计销售金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSellChance', @level2type=N'COLUMN',@level2name=N'CUMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'具体详细描述' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CUSellChance', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'存取款单据代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIDeposit', @level2type=N'COLUMN',@level2name=N'FIDepositCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'单据日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIDeposit', @level2type=N'COLUMN',@level2name=N'FIDepositDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'存取款人' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIDeposit', @level2type=N'COLUMN',@level2name=N'OperatorCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'转出帐户(帐户类别)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIDeposit', @level2type=N'COLUMN',@level2name=N'OutAccCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'转入帐户(帐户类别)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIDeposit', @level2type=N'COLUMN',@level2name=N'InAccCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'存取金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIDeposit', @level2type=N'COLUMN',@level2name=N'FIMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'存取款人（员工代码）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIDeposit', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIDeposit', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'采购费用单号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPurCost', @level2type=N'COLUMN',@level2name=N'FIPurCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'单据日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPurCost', @level2type=N'COLUMN',@level2name=N'FIPurDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'结算帐户(帐户类别)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPurCost', @level2type=N'COLUMN',@level2name=N'AccountCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'报销人（员工代码）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPurCost', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'费用代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPurCost', @level2type=N'COLUMN',@level2name=N'CostCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'费用金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPurCost', @level2type=N'COLUMN',@level2name=N'FIMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPurCost', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'采购费用单号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FISelCost', @level2type=N'COLUMN',@level2name=N'FISelCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'单据日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FISelCost', @level2type=N'COLUMN',@level2name=N'FISelDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'结算帐户(帐户类别)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FISelCost', @level2type=N'COLUMN',@level2name=N'AccountCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'报销人（员工代码）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FISelCost', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'费用代码（如运输费、差旅费等等）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FISelCost', @level2type=N'COLUMN',@level2name=N'CostCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'费用金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FISelCost', @level2type=N'COLUMN',@level2name=N'FIMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FISelCost', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'入库单据日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRInStore', @level2type=N'COLUMN',@level2name=N'PRInDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRInStore', @level2type=N'COLUMN',@level2name=N'OperatorCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'生产单号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRInStore', @level2type=N'COLUMN',@level2name=N'PRProduceCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRInStore', @level2type=N'COLUMN',@level2name=N'StoreCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'产成品代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRInStore', @level2type=N'COLUMN',@level2name=N'InvenCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'生产数量' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRInStore', @level2type=N'COLUMN',@level2name=N'PRQuantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'入库数量(验收后，合格的产品入库)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRInStore', @level2type=N'COLUMN',@level2name=N'InQuantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'入库人员' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRInStore', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRInStore', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'微机操作员代码（操作员）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRPlan', @level2type=N'COLUMN',@level2name=N'OperatorCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'销售订单号（销售订单直接转为主生产计划）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRPlan', @level2type=N'COLUMN',@level2name=N'SEOrderCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRPlan', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'生产单号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduce', @level2type=N'COLUMN',@level2name=N'PRProduceCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'（操作员代码）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduce', @level2type=N'COLUMN',@level2name=N'OperatorCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'主生产计划号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduce', @level2type=N'COLUMN',@level2name=N'PRPlanCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'生产车间代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduce', @level2type=N'COLUMN',@level2name=N'DepartmentCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'产成品编码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduce', @level2type=N'COLUMN',@level2name=N'InvenCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'产成品的数量' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduce', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduce', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否完工标记（是1；否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduce', @level2type=N'COLUMN',@level2name=N'IsComplete'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'生产单号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduceItem', @level2type=N'COLUMN',@level2name=N'PRProduceCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'原材料代码（存货代码）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduceItem', @level2type=N'COLUMN',@level2name=N'InvenCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'需求数量(物料清单结构中规定的原材料配置量)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduceItem', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'领料量' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduceItem', @level2type=N'COLUMN',@level2name=N'GetQuantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'使用数量(完工时需要输入)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRProduceItem', @level2type=N'COLUMN',@level2name=N'UseQuantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'入库单据日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUInStore', @level2type=N'COLUMN',@level2name=N'PUInDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUInStore', @level2type=N'COLUMN',@level2name=N'OperatorCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'原材料入库单价（不一定等于库存的成本价/平均价）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUInStore', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'入库单金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUInStore', @level2type=N'COLUMN',@level2name=N'PUMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'库管员' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUInStore', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUInStore', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'微机操作员代码（操作员）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUOrder', @level2type=N'COLUMN',@level2name=N'OperatorCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUOrder', @level2type=N'COLUMN',@level2name=N'SupplierCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'订货仓库代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUOrder', @level2type=N'COLUMN',@level2name=N'StoreCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'订单金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUOrder', @level2type=N'COLUMN',@level2name=N'PUMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'收货日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUOrder', @level2type=N'COLUMN',@level2name=N'RecInvenDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'采购员(业务员)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUOrder', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUOrder', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'付款单据日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUPay', @level2type=N'COLUMN',@level2name=N'PUPayDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'本次付款金额，默认情况下等于入库单金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUPay', @level2type=N'COLUMN',@level2name=N'PUMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户类别' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUPay', @level2type=N'COLUMN',@level2name=N'AccountCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'付款人' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUPay', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PUPay', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'收款单据日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEGather', @level2type=N'COLUMN',@level2name=N'SEGatherDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'本次收款金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEGather', @level2type=N'COLUMN',@level2name=N'SEMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户类别' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEGather', @level2type=N'COLUMN',@level2name=N'AccountCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'业务员' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEGather', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEGather', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'（操作员代码）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOrder', @level2type=N'COLUMN',@level2name=N'OperatorCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'客户代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOrder', @level2type=N'COLUMN',@level2name=N'CustomerCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'订货仓库代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOrder', @level2type=N'COLUMN',@level2name=N'StoreCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'销售订单中的“销售价”，而非库存成本价' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOrder', @level2type=N'COLUMN',@level2name=N'SellPrice'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'发出日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOrder', @level2type=N'COLUMN',@level2name=N'SenInvenDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'业务员代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOrder', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOrder', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'入库单据日期' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOutStore', @level2type=N'COLUMN',@level2name=N'SEOutDate'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOutStore', @level2type=N'COLUMN',@level2name=N'OperatorCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'出库时的即时成本价（用于弃审）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOutStore', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'产成品的销售单价（与成本没有必然的联系）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOutStore', @level2type=N'COLUMN',@level2name=N'SellPrice'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEOutStore', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点人(员工代码)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STCheck', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STCheck', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'领料单号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STGetMaterial', @level2type=N'COLUMN',@level2name=N'STGetCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'（操作员代码）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STGetMaterial', @level2type=N'COLUMN',@level2name=N'OperatorCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'生产单号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STGetMaterial', @level2type=N'COLUMN',@level2name=N'PRProduceCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STGetMaterial', @level2type=N'COLUMN',@level2name=N'StoreCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型(领料1;退料2)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STGetMaterial', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'领料人' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STGetMaterial', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STGetMaterial', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'领料单号' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STLoss', @level2type=N'COLUMN',@level2name=N'STLossCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'（操作员代码）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STLoss', @level2type=N'COLUMN',@level2name=N'OperatorCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STLoss', @level2type=N'COLUMN',@level2name=N'StoreCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'成本价(平均价格)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STLoss', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'损失数量' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STLoss', @level2type=N'COLUMN',@level2name=N'LossQuantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'损失金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STLoss', @level2type=N'COLUMN',@level2name=N'LossMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'报损人(员工代码)' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STLoss', @level2type=N'COLUMN',@level2name=N'EmployeeCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核（是1;否0）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STLoss', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STStock', @level2type=N'COLUMN',@level2name=N'StoreCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'存货代码' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STStock', @level2type=N'COLUMN',@level2name=N'InvenCode'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STStock', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'损失数量（暂保留）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STStock', @level2type=N'COLUMN',@level2name=N'LossQuantity'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'原材料或产成品的成本价格（都是平均价格），其中产成品的成本价=即时的原材料成本之和，成本价在其入库时，也做平均处理；对于原材料指进价，而对于产品指使用原材料的直接成本（不包括其它任何费用，如管理费、车间费用、采购费用等）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STStock', @level2type=N'COLUMN',@level2name=N'AvePrice'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'库存金额（合计金额）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STStock', @level2type=N'COLUMN',@level2name=N'STMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'损失金额' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'STStock', @level2type=N'COLUMN',@level2name=N'LossMoney'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有权限（1：有；0：没有）' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYAssignRight', @level2type=N'COLUMN',@level2name=N'IsRight'
GO
EXEC dbo.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统管理员标志(逻辑概念,表示是/否)，系统管理员只有一个' , @level0type=N'USER',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYOperator', @level2type=N'COLUMN',@level2name=N'IsAdmin'
GO
USE [master]
GO
ALTER DATABASE [SMALLERP] SET  READ_WRITE 
GO
