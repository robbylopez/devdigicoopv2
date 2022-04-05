CREATE TABLE [dbo].[CooperativeMemberWallet] (
    [ID]       INT NOT NULL,
    [MemberID] INT NULL,
    [WalletID] INT NULL,
    CONSTRAINT [PK_MemberWallet] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_MemberWallet_Member] FOREIGN KEY ([MemberID]) REFERENCES [dbo].[CooperativeMember] ([MemberID])
);

