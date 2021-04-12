-- Creating table 'QuestTemplateClients'
-- Creating table 'QuestTemplateClients'
-- Creating table 'QuestTemplateClients'
-- Creating table 'QuestTemplateClients'
-- Creating table 'QuestTemplateClients'
CREATE TABLE [dbo].[QuestTemplateClients] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EN] nvarchar(max)  NULL,
    [FR] nvarchar(max)  NULL
);
GO
-- Creating primary key on [Id] in table 'QuestTemplateClients'
-- Creating primary key on [Id] in table 'QuestTemplateClients'
-- Creating primary key on [Id] in table 'QuestTemplateClients'
-- Creating primary key on [Id] in table 'QuestTemplateClients'
-- Creating primary key on [Id] in table 'QuestTemplateClients'
ALTER TABLE [dbo].[QuestTemplateClients]
ADD CONSTRAINT [PK_QuestTemplateClients]
    PRIMARY KEY CLUSTERED ([Id] ASC);