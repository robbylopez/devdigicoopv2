CREATE TABLE [dbo].[CooperativeTransactionHeader] (
    [BatchReferenceID]          BIGINT        IDENTITY (1, 1) NOT NULL,
    [BatchReferenceNumber]      VARCHAR (30)  NULL,
    [TransactionCode]           VARCHAR (10)  NULL,
    [DebitFromWalletID]         BIGINT        NULL,
    [TenderID]                  INT           NULL,
    [Status]                    INT           NULL,
    [ApplicationID]             INT           NULL,
    [TotalNumberOfItems]        INT           NULL,
    [TotalNumberOfItemsSuccess] INT           NULL,
    [TransactionDate]           DATE          NULL,
    [DateTimeCreated]           DATETIME      NULL,
    [DateTimeModified]          DATETIME      NULL,
    [CreatedBy]                 VARCHAR (128) NULL,
    [ModifiedBy]                VARCHAR (128) NULL,
    [RequestPayload]            TEXT          NULL,
    [ResponsePayload]           TEXT          NULL,
    CONSTRAINT [PK_CooperativeTransactionHeader] PRIMARY KEY CLUSTERED ([BatchReferenceID] ASC),
    CONSTRAINT [FK_CooperativeTransactionHeader_CooperativeTransactionCode] FOREIGN KEY ([TransactionCode]) REFERENCES [dbo].[CooperativeTransactionCode] ([TransactionCode])
);

