CREATE TABLE [dbo].[CooperativeBranch] (
    [CooperativeBranchID] INT            IDENTITY (1, 1) NOT NULL,
    [CooperativeID]       INT            NULL,
    [CityID]              INT            NULL,
    [Name]                VARCHAR (50)   NULL,
    [Address2]            NCHAR (10)     NULL,
    [Address1]            NVARCHAR (500) NULL,
    [ZipCode]             VARCHAR (5)    NULL,
    [IsActive]            TINYINT        NULL,
    [IsApproved]          TINYINT        NULL,
    [CreditLimit]         INT            NULL,
    [Remarks]             VARCHAR (50)   NULL,
    [VersionNumber]       INT            CONSTRAINT [DF_CooperativeBranch_VersionNumber] DEFAULT ((1)) NULL,
    CONSTRAINT [PK_CooperativeBranch] PRIMARY KEY CLUSTERED ([CooperativeBranchID] ASC),
    CONSTRAINT [FK_CooperativeBranch_Cooperative] FOREIGN KEY ([CooperativeID]) REFERENCES [dbo].[Cooperative] ([CooperativeID])
);

