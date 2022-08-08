CREATE TABLE [dbo].[AuditTray] (
    [OrdHeaderCode] NVARCHAR (450) NOT NULL,
    [Name]          NVARCHAR (MAX) NOT NULL,
    [Items]         NVARCHAR (MAX) NOT NULL,
    [Price]         FLOAT (53)     NOT NULL,
    CONSTRAINT [PK_AuditTray] PRIMARY KEY CLUSTERED ([OrdHeaderCode] ASC)
);

