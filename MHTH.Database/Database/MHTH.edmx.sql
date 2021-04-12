
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
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Monsters'
CREATE TABLE [dbo].[Monsters] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CR] decimal(18,3)  NOT NULL
);
GO

-- Creating table 'QuestTemplates'
CREATE TABLE [dbo].[QuestTemplates] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [QuestTemplateNameId] int  NOT NULL,
    [QuestTemplateLoreId] int  NOT NULL,
    [QuestTemplateClientId] int  NOT NULL,
    [QuestTypeId] int  NOT NULL,
    [MonsterId] int  NULL
);
GO

-- Creating table 'QuestTemplateNames'
CREATE TABLE [dbo].[QuestTemplateNames] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EN] nvarchar(max)  NULL,
    [FR] nvarchar(max)  NULL
);
GO

-- Creating table 'QuestTemplateLores'
CREATE TABLE [dbo].[QuestTemplateLores] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EN] nvarchar(max)  NULL,
    [FR] nvarchar(max)  NULL
);
GO

-- Creating table 'QuestTemplateClients'
CREATE TABLE [dbo].[QuestTemplateClients] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EN] nvarchar(max)  NULL,
    [FR] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Monsters'
ALTER TABLE [dbo].[Monsters]
ADD CONSTRAINT [PK_Monsters]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QuestTemplates'
ALTER TABLE [dbo].[QuestTemplates]
ADD CONSTRAINT [PK_QuestTemplates]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QuestTemplateNames'
ALTER TABLE [dbo].[QuestTemplateNames]
ADD CONSTRAINT [PK_QuestTemplateNames]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QuestTemplateLores'
ALTER TABLE [dbo].[QuestTemplateLores]
ADD CONSTRAINT [PK_QuestTemplateLores]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'QuestTemplateClients'
ALTER TABLE [dbo].[QuestTemplateClients]
ADD CONSTRAINT [PK_QuestTemplateClients]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [QuestTemplateNameId] in table 'QuestTemplates'
ALTER TABLE [dbo].[QuestTemplates]
ADD CONSTRAINT [FK_QuestTemplateQuestTemplateName]
    FOREIGN KEY ([QuestTemplateNameId])
    REFERENCES [dbo].[QuestTemplateNames]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateName'
CREATE INDEX [IX_FK_QuestTemplateQuestTemplateName]
ON [dbo].[QuestTemplates]
    ([QuestTemplateNameId]);
GO

-- Creating foreign key on [QuestTemplateLoreId] in table 'QuestTemplates'
ALTER TABLE [dbo].[QuestTemplates]
ADD CONSTRAINT [FK_QuestTemplateLoreQuestTemplate]
    FOREIGN KEY ([QuestTemplateLoreId])
    REFERENCES [dbo].[QuestTemplateLores]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateLoreQuestTemplate'
CREATE INDEX [IX_FK_QuestTemplateLoreQuestTemplate]
ON [dbo].[QuestTemplates]
    ([QuestTemplateLoreId]);
GO

-- Creating foreign key on [QuestTemplateClientId] in table 'QuestTemplates'
ALTER TABLE [dbo].[QuestTemplates]
ADD CONSTRAINT [FK_QuestTemplateQuestTemplateClient]
    FOREIGN KEY ([QuestTemplateClientId])
    REFERENCES [dbo].[QuestTemplateClients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateClient'
CREATE INDEX [IX_FK_QuestTemplateQuestTemplateClient]
ON [dbo].[QuestTemplates]
    ([QuestTemplateClientId]);
GO

-- Creating foreign key on [MonsterId] in table 'QuestTemplates'
ALTER TABLE [dbo].[QuestTemplates]
ADD CONSTRAINT [FK_MonsterQuestTemplate]
    FOREIGN KEY ([MonsterId])
    REFERENCES [dbo].[Monsters]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MonsterQuestTemplate'
CREATE INDEX [IX_FK_MonsterQuestTemplate]
ON [dbo].[QuestTemplates]
    ([MonsterId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------