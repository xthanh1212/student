USE [StudentManagement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BellNotification]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BellNotification](
	[Id] [int] NOT NULL,
	[DateCreated] [datetime] NULL,
	[IsRead] [bit] NULL,
	[NotifiId] [int] NULL,
 CONSTRAINT [PK_BellNotification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](250) NULL,
	[Activities] [nvarchar](250) NULL,
	[Act] [nvarchar](250) NULL,
	[PowerExerted] [nvarchar](250) NULL,
	[PowerDev] [nvarchar](250) NULL,
	[Think] [nchar](10) NULL,
	[ListEventId] [int] NULL,
	[Status] [int] NULL,
	[SchoolYear] [nvarchar](250) NULL,
	[SchoolYearId] [int] NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListEvents]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListEvents](
	[ListEventId] [int] IDENTITY(1,1) NOT NULL,
	[ListEventName] [nvarchar](250) NULL,
	[Icon] [nvarchar](250) NULL,
 CONSTRAINT [PK_ListEvents] PRIMARY KEY CLUSTERED 
(
	[ListEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessagesId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](500) NULL,
	[Timestamp] [datetime] NULL,
	[EventId] [int] NULL,
	[UserId] [nvarchar](250) NULL,
	[SkillId] [int] NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessagesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolYears]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolYears](
	[SchoolYearId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolYearName] [nvarchar](250) NULL,
 CONSTRAINT [PK_SchoolYears] PRIMARY KEY CLUSTERED 
(
	[SchoolYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](250) NULL,
	[Style] [nvarchar](250) NULL,
	[Tags] [nvarchar](50) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](250) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](250) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](250) NULL,
	[Active] [bit] NULL,
	[CreateDate] [date] NULL,
	[LastLogin] [date] NULL,
	[Avatar] [nvarchar](250) NULL,
	[ScholasticId] [int] NULL,
	[ParentId] [int] NULL,
	[bellNotifiId] [int] NULL,
	[UserName] [nvarchar](250) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](250) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[StudentCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSchoolYears]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSchoolYears](
	[UserId] [nvarchar](250) NOT NULL,
	[SchoolYearId] [int] NOT NULL,
 CONSTRAINT [PK_UserSchoolYears_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[SchoolYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 11/23/2021 11:32:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](250) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211111042114_UpdateIdentity', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (13, N'001', N'ádfsdaf', N'zxcv', N'Không có', N'Không có', N'hehee  ád ', 3, 2, N'Class 2', 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (15, N'001', N'ádasd', N'ádsadad', N'ádsad', N'ádsad', N'ádsad     ', 4, 1, N'Class 2', 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (20, N'001', N'sdf', N'gsdf', N'dsfg', N'413213', N'123123    ', 5, 2, N'Class 2', 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (23, N'82ca568b-07b6-4e1d-889d-de43c735228f', N'sadfsaf', N'asdfasf', N'sadfsadf', N'sadfsaf', N'sadfsdaf  ', 1, 1, NULL, 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (24, N'001', N'sadfsadf', N'á', N'á', N'á', N'á         ', 1, 2, N'Class 2', 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (25, N'001', N'asdfsa', N'sadfsaf', N'sadfsa', N'dfsadfasdf', N'safsaf    ', 6, 2, N'Class 1', 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (27, N'001', N'sadfsaf', N'asdfsaf', N'asfsaf', N'sadfasdf', N'asdfsadf  ', 8, 2, NULL, 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (29, N'001', N'zx', N'zxzhehe', N'zx', N'zx', N'zx        ', 1, 2, NULL, 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (30, N'001', N'Không có', N'Không có', N'Không có', N'Không có', N'có        ', 1, 1, NULL, 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (32, N'001', N'á', N'á', N'á', N'á', N's         ', 7, 1, NULL, 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (34, N'001', N'á', N'á', N'á', N'áa ', N's         ', 4, 1, NULL, 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (37, N'001', N'ád', N'Labore eos et volup', N'Accusamus iusto natu', N'á', N'á         ', 8, 2, NULL, 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYear], [SchoolYearId]) VALUES (42, N'001', N'non', N'non', N'gà', N'gà', N'gà        ', 5, 2, N'Class 2', 1)
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
SET IDENTITY_INSERT [dbo].[ListEvents] ON 

INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (1, N'Swimmer', N'fas fa-swimmer')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (2, N'Football', N'fas fa-futbol')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (3, N'Baseball Ball', N'fas fa-baseball-ball')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (4, N'Volleyball Ball', N'fas fa-volleyball-ball')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (5, N'Sing', N'fas fa-microphone')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (6, N'Read', N'fas fa-book')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (7, N'Chess', N'fas fa-chess-knight')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (8, N'Table Tennis', N'fas fa-table-tennis
')
SET IDENTITY_INSERT [dbo].[ListEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (65, N'aaa', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 34, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (66, N'aaa', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 34, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (67, N'aaa', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 34, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (68, N'ok', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (69, N'aaa', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (70, N'ádsa', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (71, N'aa', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (72, N'aa', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 34, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (73, N'bbbb', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 34, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (74, N'aaaa', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 34, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (75, N'áda', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 34, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (76, N'ádasd', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 34, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (80, N'aaa', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (81, N'nmm', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (82, N'ádasd', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (85, N'ád', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (87, N'ok', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (88, N'as

', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (89, N'ádsad', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 32, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (90, N'a', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 30, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (91, N'đâsdad', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 30, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (92, N'édfsd', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 30, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (93, N'ádsad', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 30, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (94, N'bn', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 30, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (95, N'abc

', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 30, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (96, N'ok', CAST(N'2021-11-21T00:00:00.000' AS DateTime), 30, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (97, N'aaaa', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (98, N'aaa2', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (99, N'aaa', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (100, N'ok', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (101, N'sdasd', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (102, N'áa', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (103, N'ok', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (104, N'hi say', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (105, N'thank bạn', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (106, N'😕', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (107, N'why>?', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (108, N'sy hi', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (109, N'sy hi', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (110, N'sy hi', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (111, N'hiha', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (112, N'hiha', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (113, N'a', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (114, N'ok', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (115, N'ôk', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (116, N'ok', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (117, N'hihe', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (118, N'ok baby', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (119, N'daj', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (120, N'hihhi', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (121, N'ơi', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (122, N'bạn đnag làm gì đso', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (123, N'tui đang ngòi chơi

', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (124, N'ok', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (125, N'say hai', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (126, N'oh no', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (127, N'ok', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'004', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (128, N'xin chào', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (129, N'ok

', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'004', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (130, N'ok', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 25, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (131, N'hihi', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'004', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (132, N'ok babuy', CAST(N'2021-11-22T00:00:00.000' AS DateTime), 20, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (141, N'sdfdf', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 34, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (143, N'aaa', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (144, N'ádaa', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (145, N'ok baby', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (146, N'ưewew', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (148, N'aaaaaa222aasadasd', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (149, N'hi', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (150, N'sayy ok', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'002', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (151, N'adas', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 37, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (152, N'ádas', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 37, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (153, N'sadasd', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 37, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (154, N'a', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 37, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (155, N'a', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 37, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (156, N'aa', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 37, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (157, N'aaa', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 37, N'004', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (158, N'ádas', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 37, N'004', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (159, N'adsad', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 37, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (160, N'aaaaa', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 37, N'001', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (164, N'ngu', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'004', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (165, N'🧐', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'004', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (166, N'do ngu', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'004', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (167, N'😡', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'004', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (168, N'🏑', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'004', NULL)
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId], [SkillId]) VALUES (169, N'cxvgfdg', CAST(N'2021-11-23T00:00:00.000' AS DateTime), 42, N'004', NULL)
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'001', N'Student', N'Student', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'002', N'Teacher', N'Teacher', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'003', N'Family', N'Family', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'004', N'Doctor', N'Dotor', NULL)
GO
SET IDENTITY_INSERT [dbo].[SchoolYears] ON 

INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (1, N'Class 1')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (2, N'Class 2')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (3, N'Class 3')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (4, N'Class 4')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (5, N'Class 5')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (6, N'Class 6')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (7, N'Class 7')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (8, N'Class 8')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (9, N'Class 9')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (10, N'Class 10')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (11, N'Class 11')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (12, N'Class 12')
SET IDENTITY_INSERT [dbo].[SchoolYears] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (1, N'Independence', N'#f44336', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (2, N'Encourage', N'#e91e63', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (3, N'Practical', N'#9c27b0', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (4, N'ProblemDetection', N'#ff5722', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (5, N'Make a Plan', N'#2196f3', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (6, N'Creation', N'#00bcd4', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (7, N'Communicate', N'#009688', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (8, N'Listen', N'#8bc34a', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (9, N'Flexible', N'#607d8b', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (10, N'Grasp The Situation', N'#795548', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (11, N'Discipline', N'#009688', N'#')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style], [Tags]) VALUES (12, N'Stress Management', N'#9e9e9e', N'#')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'001', N'001')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'82ca568b-07b6-4e1d-889d-de43c735228f', N'001')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'002', N'002')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'003', N'003')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'004', N'004')
GO
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode]) VALUES (N'001', NULL, NULL, NULL, NULL, N'/images/student.png', NULL, NULL, NULL, N'xuanthanh', N'XUANTHANH', N'xuanthanh@gmail.com', N'xuanthanh@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, N'ST0001')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode]) VALUES (N'002', NULL, NULL, NULL, NULL, N'/images/teacher.png', NULL, NULL, NULL, N'teacher', N'TEACHER', N'teacher@gmail.com', N'teacher@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, NULL)
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode]) VALUES (N'003', NULL, NULL, NULL, NULL, N'/images/dad.png', NULL, NULL, NULL, N'family', N'FAMILY', N'family@gmail.com', N'family@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, NULL)
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode]) VALUES (N'004', NULL, NULL, NULL, NULL, N'/images/doctor.png', NULL, NULL, NULL, N'doctor', N'DOCTOR', N'doctor@gmail.com', N'doctor@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, NULL)
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode]) VALUES (N'82ca568b-07b6-4e1d-889d-de43c735228f', NULL, NULL, NULL, NULL, N'/images/student.png', NULL, NULL, NULL, N'sakura', N'SAKURA', N'sakura@gmail.com', N'sakura@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, N'ST0002')
GO
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'001', 1)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'001', 2)
GO
ALTER TABLE [dbo].[BellNotification]  WITH CHECK ADD  CONSTRAINT [FK_BellNotification_Messages] FOREIGN KEY([NotifiId])
REFERENCES [dbo].[Messages] ([MessagesId])
GO
ALTER TABLE [dbo].[BellNotification] CHECK CONSTRAINT [FK_BellNotification_Messages]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_ListEvents] FOREIGN KEY([ListEventId])
REFERENCES [dbo].[ListEvents] ([ListEventId])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_ListEvents]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Users]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([EventId])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Events]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Skills] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Skills]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_BellNotification] FOREIGN KEY([bellNotifiId])
REFERENCES [dbo].[BellNotification] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_BellNotification]
GO
ALTER TABLE [dbo].[UserSchoolYears]  WITH CHECK ADD  CONSTRAINT [FK_UserSchoolYears_SchoolYears1] FOREIGN KEY([SchoolYearId])
REFERENCES [dbo].[SchoolYears] ([SchoolYearId])
GO
ALTER TABLE [dbo].[UserSchoolYears] CHECK CONSTRAINT [FK_UserSchoolYears_SchoolYears1]
GO
ALTER TABLE [dbo].[UserSchoolYears]  WITH CHECK ADD  CONSTRAINT [FK_UserSchoolYears_Users1] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserSchoolYears] CHECK CONSTRAINT [FK_UserSchoolYears_Users1]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
