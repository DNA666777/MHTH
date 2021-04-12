
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/11/2021 15:11:05
-- Generated from EDMX file: C:\Users\kevin\source\repos\MHTH.Database\Database\MHTH.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [MHTH];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

GO

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/12/2021 13:26:06
-- Generated from EDMX file: C:\Users\kevin\source\repos\MHTH.Database\Database\MHTH.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [MHTH];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateQuestTemplateName]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateQuestTemplateName];
GO

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateLoreQuestTemplate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateLoreQuestTemplate];
GO

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateQuestTemplateClient]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateQuestTemplateClient];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Monsters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Monsters];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplates];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateNames]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateNames];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateLores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateLores];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateClients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateClients];
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

GO

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/12/2021 13:49:07
-- Generated from EDMX file: C:\Users\kevin\source\repos\MHTH.Database\Database\MHTH.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [MHTH];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateQuestTemplateName]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateQuestTemplateName];
GO

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateLoreQuestTemplate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateLoreQuestTemplate];
GO

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateQuestTemplateClient]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateQuestTemplateClient];
GO

IF OBJECT_ID(N'[dbo].[FK_MonsterQuestTemplate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_MonsterQuestTemplate];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Monsters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Monsters];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplates];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateNames]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateNames];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateLores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateLores];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateClients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateClients];
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

GO

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/12/2021 13:50:31
-- Generated from EDMX file: C:\Users\kevin\source\repos\MHTH.Database\Database\MHTH.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [MHTH];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateQuestTemplateName]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateQuestTemplateName];
GO

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateLoreQuestTemplate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateLoreQuestTemplate];
GO

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateQuestTemplateClient]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateQuestTemplateClient];
GO

IF OBJECT_ID(N'[dbo].[FK_MonsterQuestTemplate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_MonsterQuestTemplate];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Monsters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Monsters];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplates];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateNames]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateNames];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateLores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateLores];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateClients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateClients];
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

GO

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/12/2021 21:10:40
-- Generated from EDMX file: C:\Users\kevin\source\repos\MHTH\MHTH.Database\Database\MHTH.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO

USE [MHTH];
GO

IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateQuestTemplateName]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateQuestTemplateName];
GO

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateLoreQuestTemplate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateLoreQuestTemplate];
GO

IF OBJECT_ID(N'[dbo].[FK_QuestTemplateQuestTemplateClient]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_QuestTemplateQuestTemplateClient];
GO

IF OBJECT_ID(N'[dbo].[FK_MonsterQuestTemplate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[QuestTemplates] DROP CONSTRAINT [FK_MonsterQuestTemplate];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Monsters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Monsters];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplates];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateNames]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateNames];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateLores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateLores];
GO

IF OBJECT_ID(N'[dbo].[QuestTemplateClients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[QuestTemplateClients];
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

GO
