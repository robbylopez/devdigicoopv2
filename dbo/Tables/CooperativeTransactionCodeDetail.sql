CREATE TABLE [dbo].[CooperativeTransactionCodeDetail] (
    [ID]                INT NOT NULL,
    [TransactionCodeID] INT NULL,
    [TransactionTypeID] INT NULL,
    CONSTRAINT [PK_CooperativeTransactionCodeDetail] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_CooperativeTransactionCodeDetail_CooperativeTransactionCode] FOREIGN KEY ([TransactionCodeID]) REFERENCES [dbo].[CooperativeTransactionCode] ([TransactionCodeID]),
    CONSTRAINT [FK_CooperativeTransactionCodeDetail_CooperativeTransactionType] FOREIGN KEY ([TransactionTypeID]) REFERENCES [dbo].[CooperativeTransactionType] ([TransactionTypeID])
);

