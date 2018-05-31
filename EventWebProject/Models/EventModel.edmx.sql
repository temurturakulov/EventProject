
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/31/2018 14:25:12
-- Generated from EDMX file: C:\Users\admin\Desktop\темур\New Project\EventWebProject\EventWebProject\Models\EventModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [NewProject];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'EventsSet'
CREATE TABLE [dbo].[EventsSet] (
    [Event_Id] int IDENTITY(1,1) NOT NULL,
    [EventName] nvarchar(max)  NOT NULL,
    [NumberOfPeople] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RegistrationSet'
CREATE TABLE [dbo].[RegistrationSet] (
    [Registration_Id] int IDENTITY(1,1) NOT NULL,
    [Person] nvarchar(max)  NOT NULL,
    [EventName] nvarchar(max)  NOT NULL,
    [EventsEvent_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Event_Id] in table 'EventsSet'
ALTER TABLE [dbo].[EventsSet]
ADD CONSTRAINT [PK_EventsSet]
    PRIMARY KEY CLUSTERED ([Event_Id] ASC);
GO

-- Creating primary key on [Registration_Id] in table 'RegistrationSet'
ALTER TABLE [dbo].[RegistrationSet]
ADD CONSTRAINT [PK_RegistrationSet]
    PRIMARY KEY CLUSTERED ([Registration_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [EventsEvent_Id] in table 'RegistrationSet'
ALTER TABLE [dbo].[RegistrationSet]
ADD CONSTRAINT [FK_EventsRegistration]
    FOREIGN KEY ([EventsEvent_Id])
    REFERENCES [dbo].[EventsSet]
        ([Event_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EventsRegistration'
CREATE INDEX [IX_FK_EventsRegistration]
ON [dbo].[RegistrationSet]
    ([EventsEvent_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------