CREATE TABLE [dbo].[CooperativeBranchWallet] (
    [ID]                      INT     NOT NULL,
    [CooperativeBranchID]     INT     NULL,
    [WalletID]                INT     NULL,
    [IsCooperativeMainWallet] TINYINT NULL,
    CONSTRAINT [PK_CooperativeBranchWallet] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_CooperativeBranchWallet_CooperativeBranch] FOREIGN KEY ([CooperativeBranchID]) REFERENCES [dbo].[CooperativeBranch] ([CooperativeBranchID])
);

