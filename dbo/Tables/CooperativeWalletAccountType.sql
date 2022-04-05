CREATE TABLE [dbo].[CooperativeWalletAccountType] (
    [WalletAccountTypeId] INT          NOT NULL,
    [Name]                VARCHAR (50) NULL,
    CONSTRAINT [PK_WalletAccountType_1] PRIMARY KEY CLUSTERED ([WalletAccountTypeId] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'List of wallet account types', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CooperativeWalletAccountType';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Primary Key. Identity', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CooperativeWalletAccountType', @level2type = N'COLUMN', @level2name = N'WalletAccountTypeId';


GO
EXECUTE sp_addextendedproperty @name = N'Description', @value = N'Name / description of the wallet accopunt type', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CooperativeWalletAccountType', @level2type = N'COLUMN', @level2name = N'Name';

