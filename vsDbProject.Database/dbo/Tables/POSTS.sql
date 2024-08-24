CREATE TABLE [dbo].[POSTS]
(
	[Id]                INT IDENTITY(1,1)           NOT NULL,
	[IdType]            INT                         NOT NULL,
    [Title]             VARCHAR(1000)               NOT NULL,
    [Published]         BIT                         NOT NULL,
    [ImageURL]          VARCHAR(1000)               NULL,
    [Content]           VARCHAR(5000)               NOT NULL,
    CONSTRAINT [PK_POSTS] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_POSTS_TYPE] FOREIGN KEY ([IdType]) REFERENCES [Lookup].[POST_TYPES] ([Id])
)