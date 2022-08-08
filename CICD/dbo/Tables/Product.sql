CREATE TABLE [dbo].[Product] (
    [ProductID]         INT            IDENTITY (1, 1) NOT NULL,
    [ProductName]       NVARCHAR (MAX) NOT NULL,
    [ListPrice]         FLOAT (53)     NOT NULL,
    [ImgUrl]            NVARCHAR (MAX) NULL,
    [SessionId]         NVARCHAR (MAX) NULL,
    [PaymentIntentId]   NVARCHAR (MAX) NULL,
    [ProductCategoryID] INT            NOT NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [FK_Product_ProductCategory_ProductCategoryID] FOREIGN KEY ([ProductCategoryID]) REFERENCES [dbo].[ProductCategory] ([ProductCatID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Product_ProductCategoryID]
    ON [dbo].[Product]([ProductCategoryID] ASC);

