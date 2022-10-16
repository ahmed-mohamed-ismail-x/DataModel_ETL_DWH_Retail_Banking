USE [RetailBankDWH]
GO
/****** Object:  Table [dbo].[Dim_Date]    Script Date: 10/12/2022 1:00:03 PM ******/
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





/****** Object:  Table [dbo].[DimAccount]    Script Date: 10/12/2022 1:00:03 PM ******/
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


/****** Object:  Table [dbo].[DimClient]    Script Date: 10/12/2022 1:00:03 PM ******/
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




/****** Object:  Table [dbo].[DimDistrict]    Script Date: 10/12/2022 1:00:03 PM ******/
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





CREATE TABLE DimLoan
(
  Purpose [varchar](50) NOT NULL,
  [Status] [varchar](50) ,
  LoanID [varchar](50) ,
  [Location] [varchar](50) ,
  Duration INT ,
  FullDate [varchar](50) ,
  LoanAmount INT ,
  PRIMARY KEY (LoanID)
);




CREATE TABLE DimCard
(
  CardID [varchar](50) NOT NULL,
  [Type] [varchar](50),
  Fulldate [varchar](50),
  PRIMARY KEY (CardID)
);



/****** Object:  Table [dbo].[FactTransaction]    Script Date: 10/12/2022 1:00:03 PM ******/
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
	LoanID [varchar](50) NOT NULL,
	CardID [varchar](50) NOT NULL,
	[DistrictSK] INT NOT NULL,
	FOREIGN KEY (DateKey) REFERENCES Dim_Date(DateKey),
	FOREIGN KEY (ClinetSK) REFERENCES DimClient(ClinetSK),
	FOREIGN KEY ([AccountSK]) REFERENCES DimAccount([AccountSK]),
	FOREIGN KEY (LoanID) REFERENCES DimLoan(LoanID),
	FOREIGN KEY (CardID) REFERENCES DimCard(CardID),
	FOREIGN KEY ([DistrictSK]) REFERENCES DimDistrict([DistrictSK]),
	 CONSTRAINT [PK_FactTransaction] PRIMARY KEY CLUSTERED 
	(
		[DateKey] ASC,
		[ClinetSK] ASC,
		[AccountSK] ASC,
		[trans_id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	GO



  


CREATE TABLE DImCRMEvents
(
  EID [varchar](50) NOT NULL,
  DateSentToCompany [varchar](50)  NULL,
  DateReceived [varchar](50)  NULL,
  SubmittedVia [varchar](50)  NULL,
  ComplaintID [varchar](50)  NULL,
  Product [varchar](50)  NULL,
  SubProduct [varchar](50)  NULL,
  PRIMARY KEY (EID)
);

CREATE TABLE DimCallCenter
(
  ComplaintID [varchar](50) NOT NULL,
  DateRecived [varchar](50)  NULL,
  Phonefinal [varchar](50)   NULL,
  Server [varchar](50)   NULL,
  PRIMARY KEY (ComplaintID)
);

CREATE TABLE DimCRMReviews
(
  RID [varchar](50) NOT NULL,
  Date [varchar](50) NULL,
  Product [varchar](50)   NULL,
  PRIMARY KEY (RID)
);


CREATE TABLE FactCRM
(
  CompanyResponse [varchar](50)   NULL,
  TimelyResponse [varchar](50)   NULL,
  Outcome [varchar](50)   NULL,
  Stars [varchar](50)   NULL,
  Issue [varchar](50)   NULL,
  ClinetSK INT NOT NULL,
  RID [varchar](50)   NULL,
  DateKey INT NOT NULL,
  DistrictSK INT   NULL,
  ComplaintID [varchar](50) NOT NULL,
  EID [varchar](50)   NULL,
  PRIMARY KEY (ClinetSK, DateKey, ComplaintID),
  FOREIGN KEY (ClinetSK) REFERENCES [DimClient](ClinetSK),
  FOREIGN KEY (RID) REFERENCES DimCRMReviews(RID),
  FOREIGN KEY (DateKey) REFERENCES Dim_Date(DateKey),
  FOREIGN KEY (DistrictSK) REFERENCES [DimDistrict](DistrictSK),
  FOREIGN KEY (ComplaintID) REFERENCES DimCallCenter(ComplaintID),
  FOREIGN KEY (EID) REFERENCES DImCRMEvents(EID)
);