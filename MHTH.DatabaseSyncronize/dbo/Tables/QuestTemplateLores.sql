-- Creating table 'QuestTemplateLores'
-- Creating table 'QuestTemplateLores'
-- Creating table 'QuestTemplateLores'
-- Creating table 'QuestTemplateLores'
-- Creating table 'QuestTemplateLores'
CREATE TABLE [dbo].[QuestTemplateLores] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EN] nvarchar(max)  NULL,
    [FR] nvarchar(max)  NULL
);
GO
-- Creating primary key on [Id] in table 'QuestTemplateLores'
-- Creating primary key on [Id] in table 'QuestTemplateLores'
-- Creating primary key on [Id] in table 'QuestTemplateLores'
-- Creating primary key on [Id] in table 'QuestTemplateLores'
-- Creating primary key on [Id] in table 'QuestTemplateLores'
ALTER TABLE [dbo].[QuestTemplateLores]
ADD CONSTRAINT [PK_QuestTemplateLores]
    PRIMARY KEY CLUSTERED ([Id] ASC);