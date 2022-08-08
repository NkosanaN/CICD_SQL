CREATE TABLE [dbo].[ProductCategory] (
    [ProductCatID] INT            IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED ([ProductCatID] ASC)
);

