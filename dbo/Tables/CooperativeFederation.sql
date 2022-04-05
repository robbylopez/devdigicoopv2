CREATE TABLE [dbo].[CooperativeFederation] (
    [CooperativeFederationID] INT          NOT NULL,
    [CooperativeID]           INT          NULL,
    [Name]                    VARCHAR (50) NULL,
    CONSTRAINT [PK_CooperativeFederation_1] PRIMARY KEY CLUSTERED ([CooperativeFederationID] ASC)
);

