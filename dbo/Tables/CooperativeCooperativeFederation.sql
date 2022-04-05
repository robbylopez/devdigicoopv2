CREATE TABLE [dbo].[CooperativeCooperativeFederation] (
    [ID]                      INT NOT NULL,
    [CooperativeID]           INT NULL,
    [CooperativeFederationID] INT NULL,
    CONSTRAINT [PK_CooperativeCooperativeFederation] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_CooperativeCooperativeFederation_Cooperative] FOREIGN KEY ([CooperativeID]) REFERENCES [dbo].[Cooperative] ([CooperativeID]),
    CONSTRAINT [FK_CooperativeCooperativeFederation_CooperativeFederation] FOREIGN KEY ([CooperativeFederationID]) REFERENCES [dbo].[CooperativeFederation] ([CooperativeFederationID])
);

