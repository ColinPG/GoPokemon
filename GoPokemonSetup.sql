USE [master]
GO
/****** Object:  Database [GoPokemon]    Script Date: 2021-03-26 6:33:47 PM ******/
CREATE DATABASE [GoPokemon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GoPokemon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\GoPokemon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GoPokemon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\GoPokemon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GoPokemon] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GoPokemon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GoPokemon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GoPokemon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GoPokemon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GoPokemon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GoPokemon] SET ARITHABORT OFF 
GO
ALTER DATABASE [GoPokemon] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GoPokemon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GoPokemon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GoPokemon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GoPokemon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GoPokemon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GoPokemon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GoPokemon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GoPokemon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GoPokemon] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GoPokemon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GoPokemon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GoPokemon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GoPokemon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GoPokemon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GoPokemon] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [GoPokemon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GoPokemon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GoPokemon] SET  MULTI_USER 
GO
ALTER DATABASE [GoPokemon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GoPokemon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GoPokemon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GoPokemon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GoPokemon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GoPokemon] SET QUERY_STORE = OFF
GO
USE [GoPokemon]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2021-03-26 6:33:47 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[Id] [nvarchar](450) NOT NULL,
	[SetId] [nvarchar](450) NOT NULL,
	[CollectionNumber] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[TrackingNo] [nvarchar](30) NOT NULL,
	[IsFirstEdition] [bit] NOT NULL,
	[Value] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardCondition]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardCondition](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardSet]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardSet](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MaxCards] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardStage]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardStage](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardType]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardType](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnergyCard]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnergyCard](
	[Id] [nvarchar](450) NOT NULL,
	[CardId] [nvarchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonsterCard]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonsterCard](
	[Id] [nvarchar](450) NOT NULL,
	[CardId] [nvarchar](450) NOT NULL,
	[CardTypeId] [nvarchar](450) NOT NULL,
	[StageId] [nvarchar](450) NOT NULL,
	[Hp] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainerCard]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainerCard](
	[Id] [nvarchar](450) NOT NULL,
	[CardId] [nvarchar](450) NOT NULL,
	[EffectText] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCard]    Script Date: 2021-03-26 6:33:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCard](
	[UserId] [nvarchar](450) NOT NULL,
	[CardId] [nvarchar](450) NOT NULL,
	[ConditionId] [nvarchar](450) NOT NULL,
	[quantity] [int] NULL,
	[dateCreated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[CardId] ASC,
	[ConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'5.0.3')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'62f64d34-cfe8-4ce1-90dc-5e51ae0c10d9', N'TestMember1@test.com', N'TESTMEMBER1@TEST.COM', N'TestMember1@test.com', N'TESTMEMBER1@TEST.COM', 1, N'AQAAAAEAACcQAAAAEEV88YfOfBZyE3mHo1ZJwJ1rm0NY6QBF6Co3QQZP0OPyK6bM3FQ8LAM3n7o4HHzU1g==', N'QKRKJHPWHKV6Z2ZKFWESA4M3WO4KJFJ7', N'66396e8d-50f2-4052-b065-0d5df2e79cce', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ca8680dd-3dab-4ff1-ab92-6989f2c4a1fd', N'test@test.com', N'TEST@TEST.COM', N'test@test.com', N'TEST@TEST.COM', 1, N'AQAAAAEAACcQAAAAEGS1zJqgmxR48xnboX+cF99+RoOWHh2FClyf0kfu8X3GHkgn9HrZJ/OgU7EDdBorxw==', N'QQEG57FLR2UFSHNXHZSQLTCV2FNUYSWQ', N'4f85e3e2-10d7-495c-94ef-98d78f0d2abf', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'1', N'1', 1, N'Alakazam', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'10', N'1', 10, N'Mewtwo', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'100', N'1', 100, N'Lightning Energy', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'101', N'1', 101, N'Pyschic Energy', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'102', N'1', 102, N'Water Energy', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'11', N'1', 11, N'Nidoking', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'12', N'1', 12, N'Ninetales', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'13', N'1', 13, N'Poliwrath', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'14', N'1', 14, N'Raichu', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'15', N'1', 15, N'Venusaur', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'16', N'1', 16, N'Zapdos', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'17', N'1', 17, N'Bedrill', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'18', N'1', 18, N'Dragonair', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'19', N'1', 19, N'Dugtrio', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'2', N'1', 2, N'Blastoise', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'20', N'1', 20, N'Electabuzz', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'21', N'1', 21, N'Electrode', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'22', N'1', 22, N'Pidgeotto', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'23', N'1', 23, N'Arcanine', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'24', N'1', 24, N'Charmeleon', N'0 ', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'25', N'1', 25, N'Dewgong', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'26', N'1', 26, N'Dratini', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'27', N'1', 27, N'Farfetch''d', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'28', N'1', 28, N'Growlithe', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'29', N'1', 29, N'Haunter', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'3', N'1', 3, N'Chansey', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'30', N'1', 30, N'Ivysaur', N'0 ', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'31', N'1', 31, N'Jynx', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'32', N'1', 32, N'Kadabra', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'33', N'1', 33, N'Kakuna', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'34', N'1', 34, N'Machoke', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'35', N'1', 35, N'Magikarp', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'36', N'1', 36, N'Magmar', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'37', N'1', 37, N'Nidorino', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'38', N'1', 38, N'Poliwhirl', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'39', N'1', 39, N'Porygon', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'4', N'1', 4, N'Charizard', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'40', N'1', 40, N'Raticate', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'41', N'1', 41, N'Seel', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'42', N'1', 42, N'Wartortle', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'43', N'1', 43, N'Abra', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'44', N'1', 44, N'Bulbasaur', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'45', N'1', 45, N'Caterpie', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'46', N'1', 46, N'Charmander', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'47', N'1', 47, N'Diglett', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'48', N'1', 48, N'Doduo', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'49', N'1', 49, N'Drowzee', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'5', N'1', 5, N'Clefairy', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'50', N'1', 50, N'Gastly', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'51', N'1', 51, N'Koffing', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'52', N'1', 52, N'Machop', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'53', N'1', 53, N'Magnemite', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'54', N'1', 54, N'Metapod', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'55', N'1', 55, N'Nidoran', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'56', N'1', 56, N'Onix', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'57', N'1', 57, N'Pidgey', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'58', N'1', 58, N'Pikachu', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'59', N'1', 59, N'Poliwag', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'6', N'1', 6, N'Gyarados', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'60', N'1', 60, N'Ponyta', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'61', N'1', 61, N'Rattata', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'62', N'1', 62, N'Sandshrew', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'63', N'1', 63, N'Squirtle', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'64', N'1', 64, N'Starmie', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'65', N'1', 65, N'Staryu', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'66', N'1', 66, N'Tangela', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'67', N'1', 66, N'Voltorb', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'68', N'1', 68, N'Vulpix', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'69', N'1', 69, N'Weedle', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'7', N'1', 7, N'Hitmonchan', N'0 ', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'70', N'1', 70, N'Clefairy Doll', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'71', N'1', 71, N'Computer Search', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'72', N'1', 72, N'Devolution Spray', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'73', N'1', 73, N'Imposter Professor Oak', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'74', N'1', 74, N'Item Finder', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'75', N'1', 75, N'Lass', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'76', N'1', 76, N'Pokemon Breeder', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'77', N'1', 77, N'Pokemon Trader', N'0 ', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'78', N'1', 78, N'Scoop Up', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'79', N'1', 79, N'Super Energy Removal', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'8', N'1', 8, N'Machamp', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'80', N'1', 80, N'Defender', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'81', N'1', 81, N'Energy Retrieval', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'82', N'1', 82, N'Full Heal', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'83', N'1', 83, N'Maintenance', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'84', N'1', 84, N'PlusPower', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'85', N'1', 85, N'Pokemon Center', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'86', N'1', 86, N'Pokemon Flute', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'87', N'1', 87, N'Pokedex', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'88', N'1', 88, N'Professor Oak', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'89', N'1', 89, N'Revive', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'9', N'1', 9, N'Magneton', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'90', N'1', 90, N'Super Potion', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'91', N'1', 91, N'Bill', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'92', N'1', 92, N'Energy Removal', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'93', N'1', 93, N'Gust of Wind', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'94', N'1', 94, N'Potion', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'95', N'1', 95, N'Switch', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'96', N'1', 96, N'Double Colorless Energy', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'97', N'1', 97, N'Figthing Energy', N'0', 0, NULL)
GO
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'98', N'1', 98, N'Fire Energy', N'0', 0, NULL)
INSERT [dbo].[Card] ([Id], [SetId], [CollectionNumber], [Name], [TrackingNo], [IsFirstEdition], [Value]) VALUES (N'99', N'1', 99, N'Grass Energy', N'0', 0, NULL)
INSERT [dbo].[CardCondition] ([Id], [Name]) VALUES (N'1', N'Mint')
INSERT [dbo].[CardCondition] ([Id], [Name]) VALUES (N'2', N'Near Mint')
INSERT [dbo].[CardCondition] ([Id], [Name]) VALUES (N'3', N'Played')
INSERT [dbo].[CardSet] ([Id], [Name], [MaxCards]) VALUES (N'1', N'Base Set', 102)
INSERT [dbo].[CardStage] ([Id], [Name]) VALUES (N'1', N'Starter')
INSERT [dbo].[CardStage] ([Id], [Name]) VALUES (N'2', N'Second Stage')
INSERT [dbo].[CardStage] ([Id], [Name]) VALUES (N'3', N'Third Stage')
INSERT [dbo].[CardType] ([Id], [Name]) VALUES (N'1', N'Colorless')
INSERT [dbo].[CardType] ([Id], [Name]) VALUES (N'2', N'Fighting')
INSERT [dbo].[CardType] ([Id], [Name]) VALUES (N'3', N'Fire')
INSERT [dbo].[CardType] ([Id], [Name]) VALUES (N'4', N'Grass')
INSERT [dbo].[CardType] ([Id], [Name]) VALUES (N'5', N'Lightning')
INSERT [dbo].[CardType] ([Id], [Name]) VALUES (N'6', N'Psychic')
INSERT [dbo].[CardType] ([Id], [Name]) VALUES (N'7', N'Water')
INSERT [dbo].[EnergyCard] ([Id], [CardId]) VALUES (N'1', N'96')
INSERT [dbo].[EnergyCard] ([Id], [CardId]) VALUES (N'2', N'97')
INSERT [dbo].[EnergyCard] ([Id], [CardId]) VALUES (N'3', N'98')
INSERT [dbo].[EnergyCard] ([Id], [CardId]) VALUES (N'4', N'99')
INSERT [dbo].[EnergyCard] ([Id], [CardId]) VALUES (N'5', N'100')
INSERT [dbo].[EnergyCard] ([Id], [CardId]) VALUES (N'6', N'101')
INSERT [dbo].[EnergyCard] ([Id], [CardId]) VALUES (N'7', N'102')
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'1', N'1', N'6', N'3', 80)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'10', N'10', N'6', N'1', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'11', N'11', N'4', N'3', 90)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'12', N'12', N'3', N'2', 80)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'13', N'13', N'7', N'3', 90)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'14', N'14', N'5', N'2', 80)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'15', N'15', N'4', N'3', 100)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'16', N'16', N'5', N'1', 90)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'17', N'17', N'4', N'3', 80)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'18', N'18', N'1', N'2', 80)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'19', N'19', N'2', N'2', 70)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'2', N'2', N'7', N'3', 100)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'20', N'20', N'5', N'1', 70)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'21', N'21', N'5', N'2', 80)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'22', N'22', N'1', N'2', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'23', N'23', N'3', N'2', 100)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'24', N'24', N'3', N'2', 80)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'25', N'25', N'7', N'2', 80)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'26', N'26', N'1', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'27', N'27', N'1', N'1', 50)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'28', N'28', N'3', N'1', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'29', N'29', N'6', N'2', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'3', N'3', N'1', N'1', 120)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'30', N'30', N'4', N'2', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'31', N'31', N'6', N'1', 70)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'32', N'32', N'6', N'2', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'33', N'33', N'4', N'2', 80)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'34', N'34', N'2', N'2', 80)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'35', N'35', N'7', N'1', 30)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'36', N'36', N'3', N'1', 50)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'37', N'37', N'4', N'2', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'38', N'38', N'7', N'2', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'39', N'39', N'1', N'1', 30)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'4', N'4', N'3', N'3', 120)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'40', N'40', N'1', N'2', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'41', N'41', N'7', N'1', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'42', N'42', N'7', N'1', 70)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'43', N'43', N'6', N'1', 30)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'44', N'44', N'4', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'45', N'45', N'4', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'46', N'46', N'3', N'1', 50)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'47', N'47', N'2', N'1', 30)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'48', N'48', N'1', N'1', 50)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'49', N'49', N'6', N'1', 50)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'5', N'5', N'1', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'50', N'50', N'6', N'1', 30)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'51', N'51', N'4', N'1', 50)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'52', N'52', N'2', N'1', 50)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'53', N'53', N'5', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'54', N'54', N'4', N'2', 70)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'55', N'55', N'4', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'56', N'56', N'2', N'1', 90)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'57', N'57', N'1', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'58', N'58', N'5', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'59', N'59', N'7', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'6', N'6', N'7', N'2', 100)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'60', N'60', N'3', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'61', N'61', N'1', N'1', 30)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'62', N'62', N'2', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'63', N'63', N'7', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'64', N'64', N'7', N'2', 60)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'65', N'65', N'7', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'66', N'66', N'4', N'1', 50)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'67', N'67', N'5', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'68', N'68', N'3', N'1', 50)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'69', N'69', N'4', N'1', 40)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'7', N'7', N'2', N'1', 70)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'8', N'8', N'2', N'3', 100)
INSERT [dbo].[MonsterCard] ([Id], [CardId], [CardTypeId], [StageId], [Hp]) VALUES (N'9', N'9', N'5', N'2', 60)
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'1', N'70', N'Play Clefairy Doll as if it were a Basic Pokémon. While in play, Clefairy Doll counts as a Pokémon (instead of a Trainer card). Clefairy Doll has no attacks, can''t retreat, and can''t be Asleep, Confused, Paralyzed, or Poisoned. If Clefairy Doll is Knocked Out, it doesn''t count as a Knocked-Out Pokémon. At any time during your turn before your attack, you may discard Clefairy Doll.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'10', N'79', N'Discard 1 Energy card attached to 1 of your own Pokémon in order to choose 1 of your opponent''s Pokémon and up to 2 Energy cards attached to it. Discard those Energy cards.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'11', N'80', N'Attach Defender to 1 of your Pokémon. At the end of your opponent''s next turn, discard Defender. Damage done to that Pokémon by attacks is reduced by 20 (after applying Weakness and Resistance).')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'12', N'81', N'
Trade 1 of the other cards in your hand for up to 2 basic Energy cards from your discard pile')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'13', N'82', N'Your Active Pokémon is no longer Asleep, Confused, Paralyzed, or Poisoned.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'14', N'83', N'
Shuffle 2 of the other cards from your hand into your deck in order to draw a card.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'15', N'84', N'Attach PlusPower to your Active Pokémon. At the end of your turn, discard PlusPower. If this Pokémon''s attack does damage to the Defending Pokémon (after applying Weakness and Resistance), the attack does 10 more damage to the Defending Pokémon.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'16', N'85', N'Remove all damage counters from all of your own Pokémon with damage counters on them, then discard all Energy cards attached to those Pokémon.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'17', N'86', N'Choose 1 Basic Pokémon card from your opponent''s discard pile and put it onto his or her Bench. (You can''t play Pokémon Flute if your opponent''s Bench is full.)')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'18', N'87', N'
Look at up to 5 cards from the top of your deck and rearrange them as you like.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'19', N'88', N'Discard your hand, then draw 7 cards.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'2', N'71', N'Discard 2 of the other cards from your hand in order to search your deck for any card and put it into your hand. Shuffle your deck afterward.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'20', N'89', N'Put 1 Basic Pokémon card from your discard pile onto your Bench. Put damage counters on that Pokémon equal to half its HP (rounded down to the nearest 10). (You can''t play Revive if your Bench is full.)')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'21', N'90', N'
Discard 1 Energy card attached to 1 of your own Pokémon in order to remove up to 4 damage counters from that Pokémon.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'22', N'91', N'
Draw 2 cards.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'23', N'92', N'Choose 1 Energy card attached to 1 of your opponent''s Pokémon and discard it.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'24', N'93', N'Choose 1 of your opponent''s Benched Pokémon and switch it with his or her Active Pokémon.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'25', N'94', N'Remove up to 2 damage counters from 1 of your Pokémon.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'26', N'95', N'Switch 1 of your Benched Pokémon with your Active Pokémon.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'3', N'72', N'Choose 1 of your own Pokémon in play and a Stage of Evolution. Discard all Evolution cards of that Stage or higher attached to that Pokémon. That Pokémon is no longer Asleep, Confused, Paralyzed, Poisoned, or anything else that might be the result of an attack (just as if you had evolved it).')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'4', N'73', N'
Your opponent shuffles his or her hand into his or her deck, then draws 7 cards.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'5', N'74', N'Discard 2 of the other cards from your hand in order to put a Trainer card from your discard pile into your hand.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'6', N'75', N'
You and your opponent show each other your hands, then shuffle all the Trainer cards from your hands into your decks.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'7', N'76', N'Put a Stage 2 Evolution card from your hand on the matching Basic Pokémon. You can only play this card when you would be allowed to evolve that Pokémon anyway.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'8', N'77', N'
Trade 1 of the Basic Pokémon or Evolution cards in your hand for 1 of the Basic Pokémon or Evolution cards from your deck. Show both cards to your opponent. Shuffle your deck afterward.')
INSERT [dbo].[TrainerCard] ([Id], [CardId], [EffectText]) VALUES (N'9', N'78', N'
Choose 1 of your Pokémon in play and return its Basic Pokémon card to your hand. (Discard all cards attached to that card.)')
INSERT [dbo].[UserCard] ([UserId], [CardId], [ConditionId], [quantity], [dateCreated]) VALUES (N'62f64d34-cfe8-4ce1-90dc-5e51ae0c10d9', N'1', N'1', 4, CAST(N'2021-03-26T16:55:18.067' AS DateTime))
INSERT [dbo].[UserCard] ([UserId], [CardId], [ConditionId], [quantity], [dateCreated]) VALUES (N'ca8680dd-3dab-4ff1-ab92-6989f2c4a1fd', N'1', N'1', 3, CAST(N'2021-03-26T16:20:16.950' AS DateTime))
INSERT [dbo].[UserCard] ([UserId], [CardId], [ConditionId], [quantity], [dateCreated]) VALUES (N'ca8680dd-3dab-4ff1-ab92-6989f2c4a1fd', N'1', N'2', 1, CAST(N'2021-03-26T16:20:26.977' AS DateTime))
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2021-03-26 6:33:47 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2021-03-26 6:33:47 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2021-03-26 6:33:47 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2021-03-26 6:33:47 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2021-03-26 6:33:47 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2021-03-26 6:33:47 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2021-03-26 6:33:47 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Card] ADD  DEFAULT ((0)) FOR [Value]
GO
ALTER TABLE [dbo].[UserCard] ADD  DEFAULT ((1)) FOR [quantity]
GO
ALTER TABLE [dbo].[UserCard] ADD  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD FOREIGN KEY([SetId])
REFERENCES [dbo].[CardSet] ([Id])
GO
ALTER TABLE [dbo].[EnergyCard]  WITH CHECK ADD FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([Id])
GO
ALTER TABLE [dbo].[MonsterCard]  WITH CHECK ADD FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([Id])
GO
ALTER TABLE [dbo].[MonsterCard]  WITH CHECK ADD FOREIGN KEY([CardTypeId])
REFERENCES [dbo].[CardType] ([Id])
GO
ALTER TABLE [dbo].[MonsterCard]  WITH CHECK ADD FOREIGN KEY([StageId])
REFERENCES [dbo].[CardStage] ([Id])
GO
ALTER TABLE [dbo].[TrainerCard]  WITH CHECK ADD FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([Id])
GO
ALTER TABLE [dbo].[UserCard]  WITH CHECK ADD FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([Id])
GO
ALTER TABLE [dbo].[UserCard]  WITH CHECK ADD FOREIGN KEY([ConditionId])
REFERENCES [dbo].[CardCondition] ([Id])
GO
ALTER TABLE [dbo].[UserCard]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
USE [master]
GO
ALTER DATABASE [GoPokemon] SET  READ_WRITE 
GO
