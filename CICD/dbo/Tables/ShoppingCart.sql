CREATE TABLE [dbo].[ShoppingCart] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [Count]             INT            NOT NULL,
    [ProductId]         INT            NOT NULL,
    [ApplicationUserId] NVARCHAR (450) NOT NULL,
    CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ShoppingCart_AspNetUsers_ApplicationUserId] FOREIGN KEY ([ApplicationUserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_ShoppingCart_Product_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ShoppingCart_ApplicationUserId]
    ON [dbo].[ShoppingCart]([ApplicationUserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_ShoppingCart_ProductId]
    ON [dbo].[ShoppingCart]([ProductId] ASC);

