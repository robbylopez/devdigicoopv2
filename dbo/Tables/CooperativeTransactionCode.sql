CREATE TABLE [dbo].[CooperativeTransactionCode] (
    [TransactionCodeID] INT           IDENTITY (1, 1) NOT NULL,
    [TransactionCode]   VARCHAR (10)  NULL,
    [Description]       VARCHAR (255) NULL,
    CONSTRAINT [PK_CooperativeTransactionCode] PRIMARY KEY CLUSTERED ([TransactionCodeID] ASC),
    CONSTRAINT [IX_CooperativeTransactionCode] UNIQUE NONCLUSTERED ([TransactionCode] ASC)
);

