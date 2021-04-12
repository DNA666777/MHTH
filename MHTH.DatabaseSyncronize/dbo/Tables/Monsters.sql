-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Monsters'
-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Monsters'
-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Monsters'
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
-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Monsters'
-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Monsters'
-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Monsters'
-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Monsters'
ALTER TABLE [dbo].[Monsters]
ADD CONSTRAINT [PK_Monsters]
    PRIMARY KEY CLUSTERED ([Id] ASC);