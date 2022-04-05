CREATE TABLE [dbo].[CooperativeTransactionType] (
    [TransactionTypeID] INT  NOT NULL,
    [Description]       TEXT NULL,
    [EntryType]         INT  NOT NULL,
    CONSTRAINT [PK_transaction_type] PRIMARY KEY CLUSTERED ([TransactionTypeID] ASC)
);

