CREATE TABLE [dbo].[CooperativeTransactionFee] (
    [CooperativeFeeID]  INT   NOT NULL,
    [TransactionCodeID] INT   NULL,
    [InstitutionID]     INT   NULL,
    [Floor]             MONEY NOT NULL,
    [Ceiling]           MONEY NULL,
    [FeeAmount]         MONEY NULL,
    [FeeType]           INT   CONSTRAINT [DF_Fee_FeeType] DEFAULT ((1)) NULL,
    [VersionNumber]     INT   CONSTRAINT [DF_Fee_VersionNumber] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_CooperativeFee] PRIMARY KEY CLUSTERED ([CooperativeFeeID] ASC),
    CONSTRAINT [FK_CooperativeFee_CooperativeTransactionCode] FOREIGN KEY ([TransactionCodeID]) REFERENCES [dbo].[CooperativeTransactionCode] ([TransactionCodeID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1 - Fixed Fee,
2 - Percentage', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CooperativeTransactionFee', @level2type = N'COLUMN', @level2name = N'FeeType';

