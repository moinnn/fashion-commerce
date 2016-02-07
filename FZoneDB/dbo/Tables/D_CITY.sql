﻿CREATE TABLE [dbo].[D_CITY] (
    [ID]      INT          IDENTITY (1, 1) NOT NULL,
    [Name]    VARCHAR (50) NULL,
    [StateID] INT          NOT NULL,
    CONSTRAINT [PK_D_CITY] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_D_CITY_D_STATE] FOREIGN KEY ([StateID]) REFERENCES [dbo].[D_STATE] ([ID])
);
