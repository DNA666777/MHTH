-- Creating table 'QuestTemplates'
-- Creating table 'QuestTemplates'
-- Creating table 'QuestTemplates'
-- Creating table 'QuestTemplates'
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
-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [QuestTemplateNameId] in table 'QuestTemplates'
-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [QuestTemplateNameId] in table 'QuestTemplates'
-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [QuestTemplateNameId] in table 'QuestTemplates'
-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [QuestTemplateNameId] in table 'QuestTemplates'
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
-- Creating foreign key on [QuestTemplateLoreId] in table 'QuestTemplates'
-- Creating foreign key on [QuestTemplateLoreId] in table 'QuestTemplates'
-- Creating foreign key on [QuestTemplateLoreId] in table 'QuestTemplates'
-- Creating foreign key on [QuestTemplateLoreId] in table 'QuestTemplates'
-- Creating foreign key on [QuestTemplateLoreId] in table 'QuestTemplates'
ALTER TABLE [dbo].[QuestTemplates]
ADD CONSTRAINT [FK_QuestTemplateLoreQuestTemplate]
    FOREIGN KEY ([QuestTemplateLoreId])
    REFERENCES [dbo].[QuestTemplateLores]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating foreign key on [QuestTemplateClientId] in table 'QuestTemplates'
-- Creating foreign key on [QuestTemplateClientId] in table 'QuestTemplates'
-- Creating foreign key on [QuestTemplateClientId] in table 'QuestTemplates'
-- Creating foreign key on [QuestTemplateClientId] in table 'QuestTemplates'
-- Creating foreign key on [QuestTemplateClientId] in table 'QuestTemplates'
ALTER TABLE [dbo].[QuestTemplates]
ADD CONSTRAINT [FK_QuestTemplateQuestTemplateClient]
    FOREIGN KEY ([QuestTemplateClientId])
    REFERENCES [dbo].[QuestTemplateClients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating primary key on [Id] in table 'QuestTemplates'
-- Creating primary key on [Id] in table 'QuestTemplates'
-- Creating primary key on [Id] in table 'QuestTemplates'
-- Creating primary key on [Id] in table 'QuestTemplates'
-- Creating primary key on [Id] in table 'QuestTemplates'
ALTER TABLE [dbo].[QuestTemplates]
ADD CONSTRAINT [PK_QuestTemplates]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateName'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateName'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateName'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateName'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateName'
CREATE INDEX [IX_FK_QuestTemplateQuestTemplateName]
ON [dbo].[QuestTemplates]
    ([QuestTemplateNameId]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateLoreQuestTemplate'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateLoreQuestTemplate'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateLoreQuestTemplate'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateLoreQuestTemplate'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateLoreQuestTemplate'
CREATE INDEX [IX_FK_QuestTemplateLoreQuestTemplate]
ON [dbo].[QuestTemplates]
    ([QuestTemplateLoreId]);
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateClient'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateClient'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateClient'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateClient'
-- Creating non-clustered index for FOREIGN KEY 'FK_QuestTemplateQuestTemplateClient'
CREATE INDEX [IX_FK_QuestTemplateQuestTemplateClient]
ON [dbo].[QuestTemplates]
    ([QuestTemplateClientId]);
GO
-- Creating foreign key on [MonsterId] in table 'QuestTemplates'
-- Creating foreign key on [MonsterId] in table 'QuestTemplates'
-- Creating foreign key on [MonsterId] in table 'QuestTemplates'
-- Creating foreign key on [MonsterId] in table 'QuestTemplates'
ALTER TABLE [dbo].[QuestTemplates]
ADD CONSTRAINT [FK_MonsterQuestTemplate]
    FOREIGN KEY ([MonsterId])
    REFERENCES [dbo].[Monsters]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
-- Creating non-clustered index for FOREIGN KEY 'FK_MonsterQuestTemplate'
-- Creating non-clustered index for FOREIGN KEY 'FK_MonsterQuestTemplate'
-- Creating non-clustered index for FOREIGN KEY 'FK_MonsterQuestTemplate'
-- Creating non-clustered index for FOREIGN KEY 'FK_MonsterQuestTemplate'
CREATE INDEX [IX_FK_MonsterQuestTemplate]
ON [dbo].[QuestTemplates]
    ([MonsterId]);