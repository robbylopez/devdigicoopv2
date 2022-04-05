CREATE TABLE [dbo].[CooperativeContactPerson] (
    [ID]                    INT IDENTITY (1, 1) NOT NULL,
    [CooperativeBranchID]   INT NULL,
    [PersonID]              INT NULL,
    [ContactPersonStatusID] INT CONSTRAINT [DF_CooperativeContactPerson_ContactPersonStatusID] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_CooperativeContactPerson] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 - Inactive, 
1 - Active', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CooperativeContactPerson', @level2type = N'COLUMN', @level2name = N'ContactPersonStatusID';

