USE [RetailBankDWH]
GO
/****** Object:  Table [dbo].[Dim_Date]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Date](
	[DateKey] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Day] [tinyint] NOT NULL,
	[DaySuffix] [char](2) NOT NULL,
	[Weekday] [tinyint] NOT NULL,
	[WeekDayName] [varchar](10) NOT NULL,
	[WeekDayName_Short] [char](3) NOT NULL,
	[WeekDayName_FirstLetter] [char](1) NOT NULL,
	[DOWInMonth] [tinyint] NOT NULL,
	[DayOfYear] [smallint] NOT NULL,
	[WeekOfMonth] [tinyint] NOT NULL,
	[WeekOfYear] [tinyint] NOT NULL,
	[Month] [tinyint] NOT NULL,
	[MonthName] [varchar](10) NOT NULL,
	[MonthName_Short] [char](3) NOT NULL,
	[MonthName_FirstLetter] [char](1) NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[QuarterName] [varchar](6) NOT NULL,
	[Year] [int] NOT NULL,
	[MMYYYY] [char](6) NOT NULL,
	[MonthYear] [char](7) NOT NULL,
	[IsWeekend] [bit] NOT NULL,
	[IsHoliday] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAccount]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAccount](
	[AccountSK] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [varchar](50) NOT NULL,
	[district_id] [varchar](50) NULL,
	[frequency] [varchar](50) NULL,
	[parseddate] [varchar](50) NULL,
	[year] [varchar](50) NULL,
	[month] [varchar](50) NULL,
	[day] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCallCenter]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCallCenter](
	[ComplaintID] [varchar](50) NOT NULL,
	[DateRecived] [varchar](50) NULL,
	[Phonefinal] [varchar](50) NULL,
	[Server] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ComplaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCard]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCard](
	[CardID] [varchar](50) NOT NULL,
	[Type] [varchar](50) NULL,
	[Fulldate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimClient]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimClient](
	[ClinetSK] [int] IDENTITY(1,1) NOT NULL,
	[client_id] [varchar](50) NULL,
	[sex] [varchar](50) NULL,
	[age] [varchar](50) NULL,
	[social] [varchar](50) NULL,
	[first] [varchar](50) NULL,
	[last] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[address_1] [varchar](50) NULL,
	[address_2] [varchar](50) NULL,
	[DistrictSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClinetSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DImCRMEvents]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DImCRMEvents](
	[EID] [varchar](50) NOT NULL,
	[DateSentToCompany] [varchar](50) NULL,
	[DateReceived] [varchar](50) NULL,
	[SubmittedVia] [varchar](50) NULL,
	[ComplaintID] [varchar](50) NULL,
	[Product] [varchar](50) NULL,
	[SubProduct] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCRMReviews]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCRMReviews](
	[RID] [varchar](50) NOT NULL,
	[Date] [varchar](50) NULL,
	[Product] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDistrict]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDistrict](
	[DistrictSK] [int] IDENTITY(1,1) NOT NULL,
	[district_id] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state_name] [varchar](50) NULL,
	[state_abbrev] [varchar](50) NULL,
	[region] [varchar](50) NULL,
	[division] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimLoan]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLoan](
	[Purpose] [varchar](50) NOT NULL,
	[Status] [varchar](50) NULL,
	[LoanID] [varchar](50) NOT NULL,
	[Location] [varchar](50) NULL,
	[Duration] [int] NULL,
	[FullDate] [varchar](50) NULL,
	[LoanAmount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCRM]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCRM](
	[CompanyResponse] [varchar](50) NULL,
	[TimelyResponse] [varchar](50) NULL,
	[Outcome] [varchar](50) NULL,
	[Stars] [varchar](50) NULL,
	[Issue] [varchar](50) NULL,
	[ClinetSK] [int] NOT NULL,
	[RID] [varchar](50) NULL,
	[DateKey] [int] NOT NULL,
	[DistrictSK] [int] NULL,
	[ComplaintID] [varchar](50) NOT NULL,
	[EID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClinetSK] ASC,
	[DateKey] ASC,
	[ComplaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactTransaction]    Script Date: 10/16/2022 9:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactTransaction](
	[DateKey] [int] NOT NULL,
	[ClinetSK] [int] NOT NULL,
	[AccountSK] [int] NOT NULL,
	[trans_id] [varchar](100) NOT NULL,
	[amount] [decimal](10, 2) NULL,
	[FromBank] [varchar](50) NULL,
	[ToBank] [varchar](50) NULL,
	[Operation] [varchar](50) NULL,
	[TransactionTime] [time](7) NULL,
	[LoanID] [varchar](50) NOT NULL,
	[CardID] [varchar](50) NOT NULL,
	[DistrictSK] [int] NOT NULL,
 CONSTRAINT [PK_FactTransaction] PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC,
	[ClinetSK] ASC,
	[AccountSK] ASC,
	[trans_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactCRM]  WITH CHECK ADD FOREIGN KEY([ClinetSK])
REFERENCES [dbo].[DimClient] ([ClinetSK])
GO
ALTER TABLE [dbo].[FactCRM]  WITH CHECK ADD FOREIGN KEY([ComplaintID])
REFERENCES [dbo].[DimCallCenter] ([ComplaintID])
GO
ALTER TABLE [dbo].[FactCRM]  WITH CHECK ADD FOREIGN KEY([DateKey])
REFERENCES [dbo].[Dim_Date] ([DateKey])
GO
ALTER TABLE [dbo].[FactCRM]  WITH CHECK ADD FOREIGN KEY([DistrictSK])
REFERENCES [dbo].[DimDistrict] ([DistrictSK])
GO
ALTER TABLE [dbo].[FactCRM]  WITH CHECK ADD FOREIGN KEY([EID])
REFERENCES [dbo].[DImCRMEvents] ([EID])
GO
ALTER TABLE [dbo].[FactCRM]  WITH CHECK ADD FOREIGN KEY([RID])
REFERENCES [dbo].[DimCRMReviews] ([RID])
GO
ALTER TABLE [dbo].[FactTransaction]  WITH CHECK ADD FOREIGN KEY([AccountSK])
REFERENCES [dbo].[DimAccount] ([AccountSK])
GO
ALTER TABLE [dbo].[FactTransaction]  WITH CHECK ADD FOREIGN KEY([CardID])
REFERENCES [dbo].[DimCard] ([CardID])
GO
ALTER TABLE [dbo].[FactTransaction]  WITH CHECK ADD FOREIGN KEY([ClinetSK])
REFERENCES [dbo].[DimClient] ([ClinetSK])
GO
ALTER TABLE [dbo].[FactTransaction]  WITH CHECK ADD FOREIGN KEY([DistrictSK])
REFERENCES [dbo].[DimDistrict] ([DistrictSK])
GO
ALTER TABLE [dbo].[FactTransaction]  WITH CHECK ADD FOREIGN KEY([LoanID])
REFERENCES [dbo].[DimLoan] ([LoanID])
GO
ALTER TABLE [dbo].[FactTransaction]  WITH CHECK ADD  CONSTRAINT [FK_FactTransaction_Dim_Date] FOREIGN KEY([DateKey])
REFERENCES [dbo].[Dim_Date] ([DateKey])
GO
ALTER TABLE [dbo].[FactTransaction] CHECK CONSTRAINT [FK_FactTransaction_Dim_Date]
GO
ALTER TABLE [dbo].[FactTransaction]  WITH CHECK ADD  CONSTRAINT [FK_FactTransaction_DimAccount] FOREIGN KEY([AccountSK])
REFERENCES [dbo].[DimAccount] ([AccountSK])
GO
ALTER TABLE [dbo].[FactTransaction] CHECK CONSTRAINT [FK_FactTransaction_DimAccount]
GO
ALTER TABLE [dbo].[FactTransaction]  WITH CHECK ADD  CONSTRAINT [FK_FactTransaction_DimClient] FOREIGN KEY([ClinetSK])
REFERENCES [dbo].[DimClient] ([ClinetSK])
GO
ALTER TABLE [dbo].[FactTransaction] CHECK CONSTRAINT [FK_FactTransaction_DimClient]
GO
