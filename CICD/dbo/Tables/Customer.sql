CREATE TABLE [dbo].[Customer] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]         NVARCHAR (50)  NOT NULL,
    [LastName]          NVARCHAR (50)  NOT NULL,
    [Email]             NVARCHAR (MAX) NOT NULL,
    [MobilePhoneNumber] NVARCHAR (MAX) NOT NULL,
    [CreationDate]      DATETIME2 (7)  NOT NULL,
    [isCollected]       BIT            NOT NULL,
    [Catergory]         NVARCHAR (MAX) NOT NULL,
    [StreetAddress1]    NVARCHAR (MAX) NOT NULL,
    [StreetAddress2]    NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([Id] ASC)
);

