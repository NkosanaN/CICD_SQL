CREATE TABLE [dbo].[OrderHeader] (
    [OrdHeaderCode] NVARCHAR (450) NOT NULL,
    [FirstName]     NVARCHAR (MAX) NOT NULL,
    [Surname]       NVARCHAR (MAX) NOT NULL,
    [Email]         NVARCHAR (MAX) NOT NULL,
    [ItemNr]        INT            NOT NULL,
    [TotalLine]     FLOAT (53)     NOT NULL,
    [isCompleted]   BIT            NOT NULL,
    CONSTRAINT [PK_OrderHeader] PRIMARY KEY CLUSTERED ([OrdHeaderCode] ASC)
);

