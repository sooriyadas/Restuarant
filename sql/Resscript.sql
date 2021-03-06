USE [Restuarant]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 2/6/2017 7:29:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [varchar](250) NULL,
	[Category] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([Id], [ItemName], [Price], [Description], [Category]) VALUES (1, N'CocaCola', 40, N'', N'Beverage')
INSERT [dbo].[Item] ([Id], [ItemName], [Price], [Description], [Category]) VALUES (2, N'Pasta', 400, N'roasted butternut,creamy Italian cheese and spinach', N'Food')
INSERT [dbo].[Item] ([Id], [ItemName], [Price], [Description], [Category]) VALUES (3, N'Coffee', 100, N'prepared from roasted coffee beans', N'Beverage')
SET IDENTITY_INSERT [dbo].[Item] OFF
