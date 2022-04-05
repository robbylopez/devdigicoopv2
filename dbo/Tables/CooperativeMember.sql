CREATE TABLE [dbo].[CooperativeMember] (
    [MemberID]            INT          NOT NULL,
    [MemberCode]          VARCHAR (30) NULL,
    [PersonID]            INT          NULL,
    [StatusID]            INT          CONSTRAINT [DF_Member_StatusID] DEFAULT ((0)) NULL,
    [MemberCooperativeID] INT          NULL,
    [VersionNumber]       INT          CONSTRAINT [DF_Member_VersionNumber] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED ([MemberID] ASC),
    CONSTRAINT [FK_Member_Person] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[CooperativePerson] ([PersonID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Member]
    ON [dbo].[CooperativeMember]([MemberCode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 - Pending, 
1 - Approved, 
2 - Rejected, 
3 - Suspended
9 - Others ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CooperativeMember', @level2type = N'COLUMN', @level2name = N'StatusID';

