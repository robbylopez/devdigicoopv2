CREATE TABLE [dbo].[CooperativeWallet] (
    [WalletId]            BIGINT       IDENTITY (1, 1) NOT NULL,
    [WalletCode]          VARCHAR (25) NOT NULL,
    [CooperativeID]       INT          NULL,
    [WalletAccountTypeId] INT          CONSTRAINT [DF_Wallet_WalletAccountTypeId] DEFAULT ((1)) NOT NULL,
    [CurrentBalance]      MONEY        CONSTRAINT [DF_Wallet_WalletBalance] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_wallet] PRIMARY KEY CLUSTERED ([WalletId] ASC),
    CONSTRAINT [FK_Wallet_Person] FOREIGN KEY ([CooperativeID]) REFERENCES [dbo].[Cooperative] ([CooperativeID]),
    CONSTRAINT [FK_Wallet_WalletAccountType] FOREIGN KEY ([WalletAccountTypeId]) REFERENCES [dbo].[CooperativeWalletAccountType] ([WalletAccountTypeId]),
    CONSTRAINT [IX_wallet] UNIQUE NONCLUSTERED ([WalletCode] ASC)
);

