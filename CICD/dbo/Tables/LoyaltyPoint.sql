CREATE TABLE [dbo].[LoyaltyPoint] (
    [Id]     INT            IDENTITY (1, 1) NOT NULL,
    [Email]  NVARCHAR (MAX) NOT NULL,
    [Points] INT            NOT NULL,
    CONSTRAINT [PK_LoyaltyPoint] PRIMARY KEY CLUSTERED ([Id] ASC)
);

