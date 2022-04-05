CREATE TABLE [dbo].[CooeprativeTransactionDetails] (
    [TransactionID]                 BIGINT          IDENTITY (1, 1) NOT NULL,
    [BatchReferenceID]              BIGINT          NULL,
    [TransactionReferenceNumber]    VARCHAR (50)    NULL,
    [ItemNumber]                    INT             NULL,
    [AggregatorID]                  INT             NULL,
    [MerchantReferenceNumber]       VARCHAR (100)   NULL,
    [AggregatorReferenceNumber]     VARCHAR (100)   NULL,
    [Amount]                        INT             NULL,
    [CreditToWalletID]              BIGINT          NULL,
    [FeeChargedToCustomer]          INT             NULL,
    [FeePaidToAggregator]           INT             NULL,
    [TransactionStatusID]           INT             NULL,
    [OtherDetails]                  NVARCHAR (4000) NULL,
    [RequestPayloadToAggregator]    NVARCHAR (4000) NULL,
    [ResponsePayloadFromAggregator] NVARCHAR (4000) NULL,
    CONSTRAINT [PK_CooeprativeTransactionDetails] PRIMARY KEY CLUSTERED ([TransactionID] ASC),
    CONSTRAINT [FK_CooeprativeTransactionDetails_CooperativeTransactionHeader] FOREIGN KEY ([BatchReferenceID]) REFERENCES [dbo].[CooperativeTransactionHeader] ([BatchReferenceID])
);

