CREATE TABLE [dbo].[OrderDetail] (
    [OrderDetailCode] INT            IDENTITY (1, 1) NOT NULL,
    [Count]           INT            NOT NULL,
    [Items]           NVARCHAR (MAX) NULL,
    [Price]           FLOAT (53)     NOT NULL,
    [OrdHeaderCode]   NVARCHAR (450) NOT NULL,
    [isCompleted]     BIT            NOT NULL,
    [Email]           NVARCHAR (MAX) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED ([OrderDetailCode] ASC),
    CONSTRAINT [FK_OrderDetail_OrderHeader_OrdHeaderCode] FOREIGN KEY ([OrdHeaderCode]) REFERENCES [dbo].[OrderHeader] ([OrdHeaderCode]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_OrderDetail_OrdHeaderCode]
    ON [dbo].[OrderDetail]([OrdHeaderCode] ASC);

