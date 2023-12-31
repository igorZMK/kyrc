USE [master]
GO
/****** Object:  Database [Ak_Bars_Galleryyy]    Script Date: 17.12.2023 23:40:21 ******/
CREATE DATABASE [Ak_Bars_Galleryyy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ak_Bars_Galleryyy', FILENAME = N'C:\Users\god19\Ak_Bars_Galleryyy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ak_Bars_Galleryyy_log', FILENAME = N'C:\Users\god19\Ak_Bars_Galleryyy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ak_Bars_Galleryyy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET  MULTI_USER 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET QUERY_STORE = OFF
GO
USE [Ak_Bars_Galleryyy]
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 17.12.2023 23:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[Artist_Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[Artist_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buy]    Script Date: 17.12.2023 23:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buy](
	[Buy_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name_Id] [int] NOT NULL,
	[Price_Id] [int] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[RealName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Buy] PRIMARY KEY CLUSTERED 
(
	[Buy_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exibit]    Script Date: 17.12.2023 23:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exibit](
	[Exibit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Artist] [int] NOT NULL,
 CONSTRAINT [PK_Exibit] PRIMARY KEY CLUSTERED 
(
	[Exibit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 17.12.2023 23:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Gender_Id] [int] IDENTITY(1,1) NOT NULL,
	[Gendere_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Gender_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lvl]    Script Date: 17.12.2023 23:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lvl](
	[Lvl_Id] [int] IDENTITY(1,1) NOT NULL,
	[Lvl_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lvl] PRIMARY KEY CLUSTERED 
(
	[Lvl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Newcollection]    Script Date: 17.12.2023 23:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Newcollection](
	[NewCollection_Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Artist_Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Newcollection] PRIMARY KEY CLUSTERED 
(
	[NewCollection_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserExibit]    Script Date: 17.12.2023 23:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserExibit](
	[UserExibit_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Exibit_Id] [int] NOT NULL,
 CONSTRAINT [PK_UserExibit] PRIMARY KEY CLUSTERED 
(
	[UserExibit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 17.12.2023 23:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [int] NOT NULL,
	[Lvl] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([Artist_Id], [FIO], [Description]) VALUES (1, N'Шишкин Василий Николаевич', N'Артист')
INSERT [dbo].[Artist] ([Artist_Id], [FIO], [Description]) VALUES (2, N'Еленцин Евгеша Наилович', N'Художник')
INSERT [dbo].[Artist] ([Artist_Id], [FIO], [Description]) VALUES (3, N'Козылев Иван Андреевич', N'Певец')
INSERT [dbo].[Artist] ([Artist_Id], [FIO], [Description]) VALUES (4, N'Баренцев Виктор Семенович', N'Пианист')
INSERT [dbo].[Artist] ([Artist_Id], [FIO], [Description]) VALUES (1003, N'Титов Игорь Дмитриевич', N'Гитарист')
INSERT [dbo].[Artist] ([Artist_Id], [FIO], [Description]) VALUES (1005, N'Белов Артем Сергеевич', N'Программист')
INSERT [dbo].[Artist] ([Artist_Id], [FIO], [Description]) VALUES (1006, N'Медведев Владислав Александрович', N'Бэкэндер')
SET IDENTITY_INSERT [dbo].[Artist] OFF
GO
SET IDENTITY_INSERT [dbo].[Buy] ON 

INSERT [dbo].[Buy] ([Buy_Id], [Name_Id], [Price_Id], [Phone], [RealName]) VALUES (1, 1, 12000, N'89033405791', N'igor')
INSERT [dbo].[Buy] ([Buy_Id], [Name_Id], [Price_Id], [Phone], [RealName]) VALUES (5, 4, 35000, N'89922856781', N'Artem')
INSERT [dbo].[Buy] ([Buy_Id], [Name_Id], [Price_Id], [Phone], [RealName]) VALUES (6, 4, 35000, N'89242856781', N'Egor')
INSERT [dbo].[Buy] ([Buy_Id], [Name_Id], [Price_Id], [Phone], [RealName]) VALUES (7, 6, 120000, N'8921456781', N'Oleg')
SET IDENTITY_INSERT [dbo].[Buy] OFF
GO
SET IDENTITY_INSERT [dbo].[Exibit] ON 

INSERT [dbo].[Exibit] ([Exibit_Id], [Photo], [Name], [Artist]) VALUES (2, N'exibition1.jpg', N'Шишкин лес', 1)
INSERT [dbo].[Exibit] ([Exibit_Id], [Photo], [Name], [Artist]) VALUES (3, N'exibition2.jpg', N'Баренцево море', 2)
INSERT [dbo].[Exibit] ([Exibit_Id], [Photo], [Name], [Artist]) VALUES (4, N'exibition3.jpg', N'Плющ', 1)
INSERT [dbo].[Exibit] ([Exibit_Id], [Photo], [Name], [Artist]) VALUES (5, N'exibition4.jpg', N'Лес', 3)
INSERT [dbo].[Exibit] ([Exibit_Id], [Photo], [Name], [Artist]) VALUES (1003, N'exibition5.jpg', N'Новострой', 4)
INSERT [dbo].[Exibit] ([Exibit_Id], [Photo], [Name], [Artist]) VALUES (1005, N'exibition6.jpg', N'Город', 1005)
INSERT [dbo].[Exibit] ([Exibit_Id], [Photo], [Name], [Artist]) VALUES (1006, N'exibition7.jpg', N'Земельник', 1006)
INSERT [dbo].[Exibit] ([Exibit_Id], [Photo], [Name], [Artist]) VALUES (1007, N'exibition8.jpg', N'Вологда', 1005)
INSERT [dbo].[Exibit] ([Exibit_Id], [Photo], [Name], [Artist]) VALUES (1008, N'exibition9.jpg', N'Париж', 1003)
SET IDENTITY_INSERT [dbo].[Exibit] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Gender_Id], [Gendere_Name]) VALUES (1, N'Мужчина')
INSERT [dbo].[Gender] ([Gender_Id], [Gendere_Name]) VALUES (2, N'Женщина')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Lvl] ON 

INSERT [dbo].[Lvl] ([Lvl_Id], [Lvl_Name]) VALUES (1, N'Новый')
INSERT [dbo].[Lvl] ([Lvl_Id], [Lvl_Name]) VALUES (2, N'Вип')
INSERT [dbo].[Lvl] ([Lvl_Id], [Lvl_Name]) VALUES (3, N'Супер-вип')
SET IDENTITY_INSERT [dbo].[Lvl] OFF
GO
SET IDENTITY_INSERT [dbo].[Newcollection] ON 

INSERT [dbo].[Newcollection] ([NewCollection_Id], [Photo], [Artist_Id], [Name], [Price]) VALUES (1, N'Newcollection1.jpg', 1, N'Погода', 12000)
INSERT [dbo].[Newcollection] ([NewCollection_Id], [Photo], [Artist_Id], [Name], [Price]) VALUES (3, N'Newcollection2.jpg', 2, N'Солнечный рай', 2000)
INSERT [dbo].[Newcollection] ([NewCollection_Id], [Photo], [Artist_Id], [Name], [Price]) VALUES (4, N'Newcollection3.jpg', 3, N'Филигранный алмаз', 35000)
INSERT [dbo].[Newcollection] ([NewCollection_Id], [Photo], [Artist_Id], [Name], [Price]) VALUES (6, N'Newcollection4.jpg', 1, N'Дерево', 120000)
INSERT [dbo].[Newcollection] ([NewCollection_Id], [Photo], [Artist_Id], [Name], [Price]) VALUES (1003, N'Newcollection5.jpg', 4, N'Волжск', 500)
INSERT [dbo].[Newcollection] ([NewCollection_Id], [Photo], [Artist_Id], [Name], [Price]) VALUES (1005, N'Newcollection6.jpg', 1003, N'Зеленодольск', 2580)
INSERT [dbo].[Newcollection] ([NewCollection_Id], [Photo], [Artist_Id], [Name], [Price]) VALUES (1007, N'Newcollection7.jpg', 1005, N'Голубой масштаб', 9000)
INSERT [dbo].[Newcollection] ([NewCollection_Id], [Photo], [Artist_Id], [Name], [Price]) VALUES (1008, N'Newcollection8.jpg', 1006, N'Баренцево море', 7600)
INSERT [dbo].[Newcollection] ([NewCollection_Id], [Photo], [Artist_Id], [Name], [Price]) VALUES (1010, N'Newcollection9.jpg', 3, N'Жилево', 21234)
SET IDENTITY_INSERT [dbo].[Newcollection] OFF
GO
SET IDENTITY_INSERT [dbo].[UserExibit] ON 

INSERT [dbo].[UserExibit] ([UserExibit_Id], [User_Id], [Exibit_Id]) VALUES (4, 1, 2)
INSERT [dbo].[UserExibit] ([UserExibit_Id], [User_Id], [Exibit_Id]) VALUES (5, 1, 2)
INSERT [dbo].[UserExibit] ([UserExibit_Id], [User_Id], [Exibit_Id]) VALUES (6, 1, 2)
INSERT [dbo].[UserExibit] ([UserExibit_Id], [User_Id], [Exibit_Id]) VALUES (8, 2, 3)
INSERT [dbo].[UserExibit] ([UserExibit_Id], [User_Id], [Exibit_Id]) VALUES (9, 2, 3)
SET IDENTITY_INSERT [dbo].[UserExibit] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([User_Id], [Username], [Password], [Age], [Gender], [Lvl], [Name]) VALUES (1, N'igor', N'123', 19, 1, 2, N'Игорь')
INSERT [dbo].[Users] ([User_Id], [Username], [Password], [Age], [Gender], [Lvl], [Name]) VALUES (2, N'vacya', N'asd', 22, 1, 1, N'Вася')
INSERT [dbo].[Users] ([User_Id], [Username], [Password], [Age], [Gender], [Lvl], [Name]) VALUES (5, N'Panda', N'wasd', 22, 2, 3, N'Ангелина')
INSERT [dbo].[Users] ([User_Id], [Username], [Password], [Age], [Gender], [Lvl], [Name]) VALUES (1002, N'asd', N'asd', 24, 1, 2, N'asd')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Buy]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Newcollection] FOREIGN KEY([Name_Id])
REFERENCES [dbo].[Newcollection] ([NewCollection_Id])
GO
ALTER TABLE [dbo].[Buy] CHECK CONSTRAINT [FK_Buy_Newcollection]
GO
ALTER TABLE [dbo].[Exibit]  WITH CHECK ADD  CONSTRAINT [FK_Exibit_Artist] FOREIGN KEY([Artist])
REFERENCES [dbo].[Artist] ([Artist_Id])
GO
ALTER TABLE [dbo].[Exibit] CHECK CONSTRAINT [FK_Exibit_Artist]
GO
ALTER TABLE [dbo].[Newcollection]  WITH CHECK ADD  CONSTRAINT [FK_Newcollection_Artist] FOREIGN KEY([Artist_Id])
REFERENCES [dbo].[Artist] ([Artist_Id])
GO
ALTER TABLE [dbo].[Newcollection] CHECK CONSTRAINT [FK_Newcollection_Artist]
GO
ALTER TABLE [dbo].[UserExibit]  WITH CHECK ADD  CONSTRAINT [FK_UserExibit_Exibit] FOREIGN KEY([Exibit_Id])
REFERENCES [dbo].[Exibit] ([Exibit_Id])
GO
ALTER TABLE [dbo].[UserExibit] CHECK CONSTRAINT [FK_UserExibit_Exibit]
GO
ALTER TABLE [dbo].[UserExibit]  WITH CHECK ADD  CONSTRAINT [FK_UserExibit_Users] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([User_Id])
GO
ALTER TABLE [dbo].[UserExibit] CHECK CONSTRAINT [FK_UserExibit_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Gender] FOREIGN KEY([Gender])
REFERENCES [dbo].[Gender] ([Gender_Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Gender]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Lvl] FOREIGN KEY([Lvl])
REFERENCES [dbo].[Lvl] ([Lvl_Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Lvl]
GO
USE [master]
GO
ALTER DATABASE [Ak_Bars_Galleryyy] SET  READ_WRITE 
GO
