CREATE TABLE [dbo].[CooperativeContact] (
    [CooperativeContactID] INT NOT NULL,
    [ContactOptionID]      INT NULL,
    [CooperativeID]        INT NULL,
    CONSTRAINT [PK_CooperativeContact] PRIMARY KEY CLUSTERED ([CooperativeContactID] ASC),
    CONSTRAINT [FK_CooperativeContact_Cooperative] FOREIGN KEY ([CooperativeID]) REFERENCES [dbo].[Cooperative] ([CooperativeID])
);

