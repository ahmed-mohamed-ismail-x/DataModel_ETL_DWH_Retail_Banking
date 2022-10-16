USE [RetailBank]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/16/2022 9:43:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [varchar](50) NOT NULL,
	[district_id] [varchar](50) NULL,
	[frequency] [varchar](50) NULL,
	[parseddate] [varchar](50) NULL,
	[year] [varchar](50) NULL,
	[month] [varchar](50) NULL,
	[day] [varchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 10/16/2022 9:43:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[card_id] [varchar](50) NOT NULL,
	[disp_id] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[year] [varchar](50) NULL,
	[month] [varchar](50) NULL,
	[day] [varchar](50) NULL,
	[fulldate] [varchar](50) NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[card_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 10/16/2022 9:43:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[client_id] [varchar](50) NOT NULL,
	[sex] [varchar](50) NULL,
	[fulldate] [varchar](50) NULL,
	[day] [varchar](50) NULL,
	[month] [varchar](50) NULL,
	[year] [varchar](50) NULL,
	[age] [varchar](50) NULL,
	[social] [varchar](50) NULL,
	[first] [varchar](50) NULL,
	[middle] [varchar](50) NULL,
	[last] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[address_1] [varchar](50) NULL,
	[address_2] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zipcode] [varchar](50) NULL,
	[district_id] [varchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CRM_Call_Center]    Script Date: 10/16/2022 9:43:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRM_Call_Center](
	[Date received] [varchar](50) NULL,
	[Complaint ID] [varchar](50) NOT NULL,
	[rand client] [varchar](50) NULL,
	[phonefinal] [varchar](50) NULL,
	[vru+line] [varchar](50) NULL,
	[call_id] [varchar](50) NULL,
	[priority] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[outcome] [varchar](50) NULL,
	[server] [varchar](50) NULL,
	[ser_start] [varchar](50) NULL,
	[ser_exit] [varchar](50) NULL,
	[ser_time] [varchar](50) NULL,
 CONSTRAINT [PK_CRM_Call_Center] PRIMARY KEY CLUSTERED 
(
	[Complaint ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CRM_Event]    Script Date: 10/16/2022 9:43:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRM_Event](
	[Date received] [varchar](50) NULL,
	[Product] [varchar](50) NULL,
	[Sub-product] [varchar](50) NULL,
	[Issue] [varchar](50) NULL,
	[Sub-issue] [varchar](50) NULL,
	[Tags] [varchar](50) NULL,
	[Consumer consent provided?] [varchar](50) NULL,
	[Submitted via] [varchar](50) NULL,
	[Date sent to company] [varchar](50) NULL,
	[Company response to consumer] [varchar](50) NULL,
	[Timely response?] [varchar](50) NULL,
	[Consumer disputed?] [varchar](50) NULL,
	[Complaint ID] [varchar](50) NOT NULL,
	[Client_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CRM_Event] PRIMARY KEY CLUSTERED 
(
	[Complaint ID] ASC,
	[Client_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CRM_Reviews]    Script Date: 10/16/2022 9:43:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRM_Reviews](
	[Date] [varchar](50) NOT NULL,
	[Stars] [varchar](50) NULL,
	[Product] [varchar](50) NULL,
	[district_id] [varchar](50) NOT NULL,
	[RID] [int] NOT NULL,
 CONSTRAINT [PK_CRM_Reviews] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disposition]    Script Date: 10/16/2022 9:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disposition](
	[disp_id] [varchar](50) NOT NULL,
	[client_id] [varchar](50) NULL,
	[account_id] [varchar](50) NULL,
	[type] [varchar](50) NULL,
 CONSTRAINT [PK_Disposition] PRIMARY KEY CLUSTERED 
(
	[disp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 10/16/2022 9:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[district_id] [varchar](50) NOT NULL,
	[city] [varchar](50) NULL,
	[state_name] [varchar](50) NULL,
	[state_abbrev] [varchar](50) NULL,
	[region] [varchar](50) NULL,
	[division] [varchar](50) NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loan]    Script Date: 10/16/2022 9:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan](
	[loan_id] [varchar](50) NOT NULL,
	[account_id] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
	[duration] [varchar](50) NULL,
	[payments] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[year] [varchar](50) NULL,
	[month] [varchar](50) NULL,
	[day] [varchar](50) NULL,
	[fulldate] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[purpose] [varchar](50) NULL,
 CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED 
(
	[loan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/16/2022 9:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [varchar](50) NOT NULL,
	[account_id] [varchar](50) NULL,
	[bank_to] [varchar](50) NULL,
	[account_to] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
	[k_symbol] [varchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 10/16/2022 9:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[""] [varchar](50) NULL,
	["trans_id"] [varchar](50) NOT NULL,
	["account_id"] [varchar](50) NULL,
	["type"] [varchar](50) NULL,
	["operation"] [varchar](50) NULL,
	["amount"] [varchar](50) NULL,
	["balance"] [varchar](50) NULL,
	["k_symbol"] [varchar](50) NULL,
	["bank"] [varchar](50) NULL,
	["account"] [varchar](50) NULL,
	["year"] [varchar](50) NULL,
	["month"] [varchar](50) NULL,
	["day"] [varchar](50) NULL,
	["fulldate"] [varchar](50) NULL,
	["fulltime"] [varchar](50) NULL,
	["fulldatewithtime"] [varchar](50) NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	["trans_id"] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_District] FOREIGN KEY([district_id])
REFERENCES [dbo].[District] ([district_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_District]
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD  CONSTRAINT [FK_Card_Disposition] FOREIGN KEY([disp_id])
REFERENCES [dbo].[Disposition] ([disp_id])
GO
ALTER TABLE [dbo].[Card] CHECK CONSTRAINT [FK_Card_Disposition]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_District] FOREIGN KEY([district_id])
REFERENCES [dbo].[District] ([district_id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_District]
GO
ALTER TABLE [dbo].[CRM_Event]  WITH CHECK ADD  CONSTRAINT [FK_CRM_Event_Client] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Client] ([client_id])
GO
ALTER TABLE [dbo].[CRM_Event] CHECK CONSTRAINT [FK_CRM_Event_Client]
GO
ALTER TABLE [dbo].[CRM_Event]  WITH CHECK ADD  CONSTRAINT [FK_CRM_Event_CRM_Call_Center] FOREIGN KEY([Complaint ID])
REFERENCES [dbo].[CRM_Call_Center] ([Complaint ID])
GO
ALTER TABLE [dbo].[CRM_Event] CHECK CONSTRAINT [FK_CRM_Event_CRM_Call_Center]
GO
ALTER TABLE [dbo].[CRM_Reviews]  WITH CHECK ADD  CONSTRAINT [FK_CRM_Reviews_District] FOREIGN KEY([district_id])
REFERENCES [dbo].[District] ([district_id])
GO
ALTER TABLE [dbo].[CRM_Reviews] CHECK CONSTRAINT [FK_CRM_Reviews_District]
GO
ALTER TABLE [dbo].[Disposition]  WITH CHECK ADD  CONSTRAINT [FK_Disposition_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Disposition] CHECK CONSTRAINT [FK_Disposition_Account]
GO
ALTER TABLE [dbo].[Disposition]  WITH CHECK ADD  CONSTRAINT [FK_Disposition_Client] FOREIGN KEY([client_id])
REFERENCES [dbo].[Client] ([client_id])
GO
ALTER TABLE [dbo].[Disposition] CHECK CONSTRAINT [FK_Disposition_Client]
GO
ALTER TABLE [dbo].[Loan]  WITH CHECK ADD  CONSTRAINT [FK_Loan_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Loan] CHECK CONSTRAINT [FK_Loan_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Account] FOREIGN KEY(["account_id"])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_Account]
GO
