CREATE TABLE [dbo].[Cooperative] (
    [CooperativeID]       INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [CooperativeCode]     VARCHAR (20) NULL,
    [Name]                VARCHAR (50) NULL,
    [CooperativeTypeID]   INT          NULL,
    [CooperativeStatusID] INT          CONSTRAINT [DF_Cooperative_CooperativeStatusID] DEFAULT ((0)) NULL,
    [CooperativeFeeID]    INT          NULL,
    [CooperativeLevelID]  INT          NULL,
    CONSTRAINT [PK_Cooperative] PRIMARY KEY CLUSTERED ([CooperativeID] ASC),
    CONSTRAINT [FK_Cooperative_CooperativeFee] FOREIGN KEY ([CooperativeFeeID]) REFERENCES [dbo].[CooperativeTransactionFee] ([CooperativeFeeID]),
    CONSTRAINT [FK_Cooperative_CooperativeLevel] FOREIGN KEY ([CooperativeLevelID]) REFERENCES [dbo].[CooperativeLevel] ([CooperativeLevelID]),
    CONSTRAINT [FK_Cooperative_CooperativeType] FOREIGN KEY ([CooperativeTypeID]) REFERENCES [dbo].[CooperativeType] ([CooperativeTypeID]),
    CONSTRAINT [FK_CooperativeStatus_Cooperative] FOREIGN KEY ([CooperativeStatusID]) REFERENCES [dbo].[CooperativeStatus] ([CooperativeStatusID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Cooperative]
    ON [dbo].[Cooperative]([CooperativeCode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 - Pending
. 1 - Approved, 
2 - Suspended, 
3 - Rejected, 
4 - Voided. 
9 - Other', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Cooperative', @level2type = N'COLUMN', @level2name = N'CooperativeStatusID';

