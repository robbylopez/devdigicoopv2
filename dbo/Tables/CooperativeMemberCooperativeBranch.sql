CREATE TABLE [dbo].[CooperativeMemberCooperativeBranch] (
    [ID]                  INT NOT NULL,
    [CooperativeBranchID] INT NOT NULL,
    [MemberID]            INT NULL,
    CONSTRAINT [PK_MemberCooperativeBranch] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_MemberCooperativeBranch_CooperativeBranch] FOREIGN KEY ([CooperativeBranchID]) REFERENCES [dbo].[CooperativeBranch] ([CooperativeBranchID]),
    CONSTRAINT [FK_MemberCooperativeBranch_Member] FOREIGN KEY ([MemberID]) REFERENCES [dbo].[CooperativeMember] ([MemberID])
);

