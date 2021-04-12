-- Creating table 'QuestTemplateNames'
-- Creating table 'QuestTemplateNames'
-- Creating table 'QuestTemplateNames'
-- Creating table 'QuestTemplateNames'
CREATE TABLE [dbo].[QuestTemplateNames] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EN] nvarchar(max)  NULL,
    [FR] nvarchar(max)  NULL
);
GO
-- Creating primary key on [Id] in table 'QuestTemplateNames'
-- Creating primary key on [Id] in table 'QuestTemplateNames'
-- Creating primary key on [Id] in table 'QuestTemplateNames'
-- Creating primary key on [Id] in table 'QuestTemplateNames'
ALTER TABLE [dbo].[QuestTemplateNames]
ADD CONSTRAINT [PK_QuestTemplateNames]
    PRIMARY KEY CLUSTERED ([Id] ASC);