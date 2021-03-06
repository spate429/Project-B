USE [master]
GO
/****** Object:  Database [SportPortal]    Script Date: 10/13/2016 1:03:20 AM ******/
CREATE DATABASE [SportPortal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SportPortal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SportPortal.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SportPortal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SportPortal_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SportPortal] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SportPortal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SportPortal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SportPortal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SportPortal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SportPortal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SportPortal] SET ARITHABORT OFF 
GO
ALTER DATABASE [SportPortal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SportPortal] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SportPortal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SportPortal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SportPortal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SportPortal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SportPortal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SportPortal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SportPortal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SportPortal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SportPortal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SportPortal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SportPortal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SportPortal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SportPortal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SportPortal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SportPortal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SportPortal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SportPortal] SET RECOVERY FULL 
GO
ALTER DATABASE [SportPortal] SET  MULTI_USER 
GO
ALTER DATABASE [SportPortal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SportPortal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SportPortal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SportPortal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SportPortal', N'ON'
GO
USE [SportPortal]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 10/13/2016 1:03:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[TypeID] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GameTypes]    Script Date: 10/13/2016 1:03:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](150) NULL,
 CONSTRAINT [PK_GameTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Matches]    Script Date: 10/13/2016 1:03:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GameID] [int] NULL,
	[Team1] [int] NULL,
	[Team2] [int] NULL,
	[MatchDate] [datetime] NULL,
	[MatchStatus] [int] NULL,
 CONSTRAINT [PK_Matches] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Scores]    Script Date: 10/13/2016 1:03:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MatchID] [int] NULL,
	[Team1] [int] NULL,
	[Team2] [int] NULL,
 CONSTRAINT [PK_Scores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teams]    Script Date: 10/13/2016 1:03:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] NULL,
	[Name] [nvarchar](500) NULL,
	[GameID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/13/2016 1:03:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Games] ON 

INSERT [dbo].[Games] ([Id], [Name], [TypeID], [IsActive], [CreatedDate]) VALUES (1, N'Football', 1, 1, CAST(0x0000A69D0184B5BF AS DateTime))
SET IDENTITY_INSERT [dbo].[Games] OFF
SET IDENTITY_INSERT [dbo].[GameTypes] ON 

INSERT [dbo].[GameTypes] ([Id], [Type]) VALUES (1, N'Outdoor')
INSERT [dbo].[GameTypes] ([Id], [Type]) VALUES (2, N'Indoor')
SET IDENTITY_INSERT [dbo].[GameTypes] OFF
SET IDENTITY_INSERT [dbo].[Matches] ON 

INSERT [dbo].[Matches] ([Id], [GameID], [Team1], [Team2], [MatchDate], [MatchStatus]) VALUES (1, 1, 1, 3, CAST(0x0000A69B00000000 AS DateTime), 1)
INSERT [dbo].[Matches] ([Id], [GameID], [Team1], [Team2], [MatchDate], [MatchStatus]) VALUES (2, 1, 2, 5, CAST(0x0000A69B00000000 AS DateTime), 1)
INSERT [dbo].[Matches] ([Id], [GameID], [Team1], [Team2], [MatchDate], [MatchStatus]) VALUES (3, 1, 4, 1, CAST(0x0000A69E00000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Matches] OFF
SET IDENTITY_INSERT [dbo].[Scores] ON 

INSERT [dbo].[Scores] ([id], [MatchID], [Team1], [Team2]) VALUES (1, 1, 2, 3)
INSERT [dbo].[Scores] ([id], [MatchID], [Team1], [Team2]) VALUES (2, 2, 1, 0)
INSERT [dbo].[Scores] ([id], [MatchID], [Team1], [Team2]) VALUES (3, 3, 0, 0)
SET IDENTITY_INSERT [dbo].[Scores] OFF
INSERT [dbo].[Teams] ([Id], [Name], [GameID]) VALUES (1, N'Arsenal', 1)
INSERT [dbo].[Teams] ([Id], [Name], [GameID]) VALUES (2, N'Mnachester united', 1)
INSERT [dbo].[Teams] ([Id], [Name], [GameID]) VALUES (3, N'Real Madrid', 1)
INSERT [dbo].[Teams] ([Id], [Name], [GameID]) VALUES (4, N'Chelsea', 1)
INSERT [dbo].[Teams] ([Id], [Name], [GameID]) VALUES (5, N'A.C.Milan', 1)
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Password], [Status]) VALUES (1, N'admin', N'admin', N'1')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Games] ADD  CONSTRAINT [DF_Games_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Games] ADD  CONSTRAINT [DF_Games_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Matches] ADD  CONSTRAINT [DF_Matches_MatchDate]  DEFAULT (getdate()) FOR [MatchDate]
GO
ALTER TABLE [dbo].[Matches] ADD  CONSTRAINT [DF_Matches_MatchStatus]  DEFAULT ((1)) FOR [MatchStatus]
GO
USE [master]
GO
ALTER DATABASE [SportPortal] SET  READ_WRITE 
GO
