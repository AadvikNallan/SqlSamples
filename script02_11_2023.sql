USE [AcuiteRating02_11_2023]
GO
/****** Object:  Table [dbo].[CompanyRelationships]    Script Date: 02-11-2023 11:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyRelationships](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InitiateID] [int] NULL,
	[CompanyId] [int] NULL,
	[GroupId] [int] NULL,
	[ParentCompanyId] [int] NULL,
	[SisterConcernId] [int] NULL,
	[Subsidary_AssociateId] [int] NULL,
	[ScreenId] [int] NOT NULL,
	[LoginId] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[HostName] [varchar](50) NOT NULL,
	[UpdatedBy] [varchar](50) NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CorrespondanceDetails_Call]    Script Date: 02-11-2023 11:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CorrespondanceDetails_Call](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InitiateID] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[DateOfInteraction] [datetime] NOT NULL,
	[Salutation] [varchar](10) NOT NULL,
	[ContactPersonFirstName] [varchar](50) NOT NULL,
	[ContactpersonLastName] [varchar](50) NOT NULL,
	[ContactpersonDesignation] [varchar](100) NOT NULL,
	[ContactNumber] [varchar](10) NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
	[PersonalAccompanied] [varchar](100) NULL,
	[FeedBack] [varchar](200) NOT NULL,
	[FinalStatus] [varchar](50) NOT NULL,
	[UploadPath] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
	[ScreenId] [int] NULL,
	[LoginId] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[HostName] [varchar](50) NOT NULL,
	[UpdatedBy] [varchar](50) NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DA_CasePriority]    Script Date: 02-11-2023 11:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DA_CasePriority](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InitiateID] [int] NULL,
	[Priority] [varchar](10) NOT NULL,
	[Reason] [varchar](200) NOT NULL,
	[IRRTargetDate] [datetime] NOT NULL,
	[ScreenId] [int] NULL,
	[LoginId] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[HostName] [varchar](50) NOT NULL,
	[UpdatedBy] [varchar](50) NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InitiateCaseType]    Script Date: 02-11-2023 11:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InitiateCaseType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CaseType] [varchar](20) NOT NULL,
	[RatingNoteId] [int] NOT NULL,
	[ScreenId] [int] NULL,
	[LoginId] [int] NULL,
	[CreationDate] [datetime] NULL,
	[HostName] [varchar](50) NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IntiateCaseAllocation]    Script Date: 02-11-2023 11:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IntiateCaseAllocation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InitiateCaseId] [varchar](20) NULL,
	[CaseId] [int] NOT NULL,
	[CaseTypeId] [int] NOT NULL,
	[RateType] [varchar](20) NOT NULL,
	[ExecutedOffline] [bit] NOT NULL,
	[ScreenId] [int] NOT NULL,
	[LoginId] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[HostName] [varchar](50) NOT NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IRRTimelineDuration]    Script Date: 02-11-2023 11:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IRRTimelineDuration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InitiateID] [int] NOT NULL,
	[RevisedTargetIRR] [int] NOT NULL,
	[WEF] [datetime] NOT NULL,
	[ScreenId] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[LoginId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[HostName] [varchar](50) NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginAcitivity]    Script Date: 02-11-2023 11:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginAcitivity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[IPAdress] [varchar](50) NULL,
	[LoginInTime] [datetime] NULL,
	[LoginOutTime] [datetime] NULL,
	[Status] [datetime] NULL,
	[JsonBody] [varchar](max) NULL,
	[ScreenId] [int] NOT NULL,
	[HostName] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingNoteType]    Script Date: 02-11-2023 11:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingNoteType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoteType] [varchar](60) NOT NULL,
	[ScreenId] [int] NOT NULL,
	[LoginId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[HostName] [varchar](50) NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenName]    Script Date: 02-11-2023 11:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScreenType] [varchar](20) NOT NULL,
	[ScreenName] [varchar](5) NOT NULL,
	[LoginId] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[HostName] [varchar](50) NOT NULL,
	[UpdatedBy] [varchar](50) NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02-11-2023 11:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[userId] [int] NULL,
	[WindowId] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[PasswordHash] [varbinary](max) NULL,
	[EmailID] [varchar](50) NULL,
	[Token] [varchar](100) NULL,
	[TokenExpiration] [datetime] NULL,
	[IsTokenExpired] [bit] NULL,
	[IsLocked] [bit] NULL,
	[HostName] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
	[LWD] [datetime] NOT NULL,
	[Department] [varchar](50) NOT NULL,
	[Functions] [varchar](50) NOT NULL,
	[ReportingTo] [varchar](50) NOT NULL,
	[UpdatedBy] [varchar](50) NOT NULL,
	[UpdatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CompanyRelationships]  WITH CHECK ADD FOREIGN KEY([InitiateID])
REFERENCES [dbo].[IntiateCaseAllocation] ([Id])
GO
ALTER TABLE [dbo].[CompanyRelationships]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[CompanyRelationships]  WITH CHECK ADD FOREIGN KEY([ScreenId])
REFERENCES [dbo].[ScreenName] ([Id])
GO
ALTER TABLE [dbo].[CorrespondanceDetails_Call]  WITH CHECK ADD FOREIGN KEY([InitiateID])
REFERENCES [dbo].[IntiateCaseAllocation] ([Id])
GO
ALTER TABLE [dbo].[CorrespondanceDetails_Call]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[CorrespondanceDetails_Call]  WITH CHECK ADD FOREIGN KEY([ScreenId])
REFERENCES [dbo].[ScreenName] ([Id])
GO
ALTER TABLE [dbo].[DA_CasePriority]  WITH CHECK ADD FOREIGN KEY([InitiateID])
REFERENCES [dbo].[IntiateCaseAllocation] ([Id])
GO
ALTER TABLE [dbo].[DA_CasePriority]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DA_CasePriority]  WITH CHECK ADD FOREIGN KEY([ScreenId])
REFERENCES [dbo].[ScreenName] ([Id])
GO
ALTER TABLE [dbo].[InitiateCaseType]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[InitiateCaseType]  WITH CHECK ADD FOREIGN KEY([RatingNoteId])
REFERENCES [dbo].[RatingNoteType] ([Id])
GO
ALTER TABLE [dbo].[InitiateCaseType]  WITH CHECK ADD FOREIGN KEY([ScreenId])
REFERENCES [dbo].[ScreenName] ([Id])
GO
ALTER TABLE [dbo].[IntiateCaseAllocation]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[IntiateCaseAllocation]  WITH CHECK ADD FOREIGN KEY([ScreenId])
REFERENCES [dbo].[ScreenName] ([Id])
GO
ALTER TABLE [dbo].[IRRTimelineDuration]  WITH CHECK ADD FOREIGN KEY([InitiateID])
REFERENCES [dbo].[IntiateCaseAllocation] ([Id])
GO
ALTER TABLE [dbo].[IRRTimelineDuration]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[IRRTimelineDuration]  WITH CHECK ADD FOREIGN KEY([ScreenId])
REFERENCES [dbo].[ScreenName] ([Id])
GO
ALTER TABLE [dbo].[LoginAcitivity]  WITH CHECK ADD FOREIGN KEY([ScreenId])
REFERENCES [dbo].[ScreenName] ([Id])
GO
ALTER TABLE [dbo].[LoginAcitivity]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[RatingNoteType]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[RatingNoteType]  WITH CHECK ADD FOREIGN KEY([ScreenId])
REFERENCES [dbo].[ScreenName] ([Id])
GO
ALTER TABLE [dbo].[ScreenName]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Users] ([Id])
GO
