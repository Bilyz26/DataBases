USE [master]
GO
/****** Object:  Database [DB_Support_School]    Script Date: 21/09/2023 18:58:50 ******/
CREATE DATABASE [DB_Support_School]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Support_School', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\DB_Support_School.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Support_School_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\DB_Support_School_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Support_School].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Support_School] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Support_School] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Support_School] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Support_School] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Support_School] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Support_School] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_Support_School] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Support_School] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Support_School] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Support_School] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Support_School] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Support_School] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Support_School] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Support_School] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Support_School] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_Support_School] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Support_School] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Support_School] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Support_School] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Support_School] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Support_School] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Support_School] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Support_School] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_Support_School] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Support_School] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Support_School] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Support_School] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Support_School] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_Support_School] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DB_Support_School]
GO
/****** Object:  Table [dbo].[Annee]    Script Date: 21/09/2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Annee](
	[annee] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[annee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[emp]    Script Date: 21/09/2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emp](
	[nomemp] [varchar](50) NOT NULL,
	[tele] [varchar](50) NULL,
	[fonction] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[pw] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[nomemp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[grp]    Script Date: 21/09/2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[grp](
	[codegrp] [varchar](50) NOT NULL,
	[#idmat] [varchar](50) NULL,
	[#codeNiv] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codegrp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[inscStd]    Script Date: 21/09/2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[inscStd](
	[#cin] [varchar](10) NULL,
	[qui] [varchar](5) NULL,
	[nom] [varchar](50) NOT NULL,
	[tele] [varchar](20) NULL,
	[frinsc] [decimal](18, 0) NULL,
	[dateD] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[nom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[matier]    Script Date: 21/09/2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[matier](
	[idmat] [varchar](50) NOT NULL,
	[nomMat] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idmat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[niveauMat]    Script Date: 21/09/2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[niveauMat](
	[codeNiv] [varchar](50) NOT NULL,
	[#idmat] [varchar](50) NULL,
	[nomMat] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codeNiv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pay]    Script Date: 21/09/2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pay](
	[#nom] [varchar](50) NOT NULL,
	[#codegrp] [varchar](50) NOT NULL,
	[#nomprof] [varchar](50) NOT NULL,
	[#idmat] [varchar](50) NOT NULL,
	[#annee] [int] NOT NULL,
	[#codeNiv] [varchar](50) NULL,
	[datep] [datetime] NULL,
	[monthp] [varchar](50) NOT NULL,
	[prix] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[#nom] ASC,
	[#codegrp] ASC,
	[#nomprof] ASC,
	[#idmat] ASC,
	[monthp] ASC,
	[#annee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[prof]    Script Date: 21/09/2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[prof](
	[nomprof] [varchar](50) NOT NULL,
	[teleprof] [varchar](50) NULL,
	[#idmat] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[nomprof] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Raff]    Script Date: 21/09/2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Raff](
	[#nom] [varchar](50) NOT NULL,
	[#codegrp] [varchar](50) NOT NULL,
	[annee] [int] NOT NULL,
	[#nomprof] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[#nom] ASC,
	[#nomprof] ASC,
	[#codegrp] ASC,
	[annee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[seance]    Script Date: 21/09/2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[seance](
	[#codegrp] [varchar](50) NOT NULL,
	[#annee] [int] NOT NULL,
	[#nomprof] [varchar](50) NOT NULL,
	[dayy] [varchar](50) NOT NULL,
	[heureD] [time](7) NULL,
	[heureF] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[#codegrp] ASC,
	[#annee] ASC,
	[#nomprof] ASC,
	[dayy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[grp]  WITH CHECK ADD FOREIGN KEY([#idmat])
REFERENCES [dbo].[matier] ([idmat])
GO
ALTER TABLE [dbo].[niveauMat]  WITH CHECK ADD FOREIGN KEY([#idmat])
REFERENCES [dbo].[matier] ([idmat])
GO
ALTER TABLE [dbo].[pay]  WITH CHECK ADD FOREIGN KEY([#annee])
REFERENCES [dbo].[Annee] ([annee])
GO
ALTER TABLE [dbo].[pay]  WITH CHECK ADD FOREIGN KEY([#codegrp])
REFERENCES [dbo].[grp] ([codegrp])
GO
ALTER TABLE [dbo].[pay]  WITH CHECK ADD FOREIGN KEY([#idmat])
REFERENCES [dbo].[matier] ([idmat])
GO
ALTER TABLE [dbo].[pay]  WITH CHECK ADD FOREIGN KEY([#nom])
REFERENCES [dbo].[inscStd] ([nom])
GO
ALTER TABLE [dbo].[pay]  WITH CHECK ADD FOREIGN KEY([#nomprof])
REFERENCES [dbo].[prof] ([nomprof])
GO
ALTER TABLE [dbo].[prof]  WITH CHECK ADD FOREIGN KEY([#idmat])
REFERENCES [dbo].[matier] ([idmat])
GO
ALTER TABLE [dbo].[Raff]  WITH CHECK ADD FOREIGN KEY([#codegrp])
REFERENCES [dbo].[grp] ([codegrp])
GO
ALTER TABLE [dbo].[Raff]  WITH CHECK ADD FOREIGN KEY([#nom])
REFERENCES [dbo].[inscStd] ([nom])
GO
ALTER TABLE [dbo].[Raff]  WITH CHECK ADD FOREIGN KEY([#nomprof])
REFERENCES [dbo].[prof] ([nomprof])
GO
ALTER TABLE [dbo].[Raff]  WITH CHECK ADD FOREIGN KEY([annee])
REFERENCES [dbo].[Annee] ([annee])
GO
ALTER TABLE [dbo].[seance]  WITH CHECK ADD FOREIGN KEY([#annee])
REFERENCES [dbo].[Annee] ([annee])
GO
ALTER TABLE [dbo].[seance]  WITH CHECK ADD FOREIGN KEY([#codegrp])
REFERENCES [dbo].[grp] ([codegrp])
GO
ALTER TABLE [dbo].[seance]  WITH CHECK ADD FOREIGN KEY([#nomprof])
REFERENCES [dbo].[prof] ([nomprof])
GO
USE [master]
GO
ALTER DATABASE [DB_Support_School] SET  READ_WRITE 
GO
