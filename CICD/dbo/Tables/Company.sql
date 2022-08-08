CREATE TABLE [dbo].[Company] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (MAX) NOT NULL,
    [StreetAddress] NVARCHAR (MAX) NULL,
    [City]          NVARCHAR (MAX) NULL,
    [State]         NVARCHAR (MAX) NULL,
    [PostalCode]    NVARCHAR (MAX) NULL,
    [PhoneNumber]   NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED ([Id] ASC)
);

