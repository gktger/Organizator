USE [MeetupEvent]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24.09.2019 18:49:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 24.09.2019 18:49:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](50) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[ApplicationDate] [date] NOT NULL,
	[Subscribers] [int] NOT NULL,
	[EventImage] [nvarchar](max) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[PersonID] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventPeople]    Script Date: 24.09.2019 18:49:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventPeople](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NOT NULL,
	[EventID] [int] NOT NULL,
	[TotalPerson] [int] NOT NULL,
 CONSTRAINT [PK_EventPeople] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 24.09.2019 18:49:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[MessageBy] [int] NOT NULL,
	[MessageTo] [int] NOT NULL,
	[MessageDate] [datetime] NOT NULL,
	[Message] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 24.09.2019 18:49:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Goşu')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Tiyatro')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Sinema')
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Konferanas')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Event] ON 
GO
INSERT [dbo].[Event] ([EventID], [EventName], [CreatedDate], [ApplicationDate], [Subscribers], [EventImage], [CategoryID], [PersonID], [Address], [City], [Description]) VALUES (2, N'Haydin Goşalım', CAST(N'2019-05-29' AS Date), CAST(N'2019-05-30' AS Date), 5, N'https://d3vhc53cl8e8km.cloudfront.net/hello-staging/wp-content/uploads/2017/12/22223742/Events-1200x630.jpg', 1, 1, N'Polonez Göy', N'İstanbul', N'ad')
GO
INSERT [dbo].[Event] ([EventID], [EventName], [CreatedDate], [ApplicationDate], [Subscribers], [EventImage], [CategoryID], [PersonID], [Address], [City], [Description]) VALUES (6, N'Gel Tanışalım Önce', CAST(N'2019-05-29' AS Date), CAST(N'2019-05-30' AS Date), 6, N'https://d3vhc53cl8e8km.cloudfront.net/hello-staging/wp-content/uploads/2017/12/22223742/Events-1200x630.jpg', 1, 1, N'Şişli', N'İstanbul', N'asdas')
GO
INSERT [dbo].[Event] ([EventID], [EventName], [CreatedDate], [ApplicationDate], [Subscribers], [EventImage], [CategoryID], [PersonID], [Address], [City], [Description]) VALUES (8, N'Mahmut Tuncer Şov', CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 10, N'https://l-event.net/upload/43eac6c324hnk.jpg', 1, 1, N'Tarsus', N'Mersin', N'asd')
GO
INSERT [dbo].[Event] ([EventID], [EventName], [CreatedDate], [ApplicationDate], [Subscribers], [EventImage], [CategoryID], [PersonID], [Address], [City], [Description]) VALUES (9, N'Mahmut Tuncer Şov', CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 10, N'https://l-event.net/upload/43eac6c324hnk.jpg', 1, 1, N'Tarsus', N'Mersin', N'asd')
GO
INSERT [dbo].[Event] ([EventID], [EventName], [CreatedDate], [ApplicationDate], [Subscribers], [EventImage], [CategoryID], [PersonID], [Address], [City], [Description]) VALUES (10, N'Mahmut Tuncer Şov', CAST(N'2019-06-30' AS Date), CAST(N'2019-06-30' AS Date), 10, N'https://l-event.net/upload/43eac6c324hnk.jpg', 1, 1, N'Tarsus', N'Mersin', N'asd')
GO
INSERT [dbo].[Event] ([EventID], [EventName], [CreatedDate], [ApplicationDate], [Subscribers], [EventImage], [CategoryID], [PersonID], [Address], [City], [Description]) VALUES (14, N'Sabah Koşusu', CAST(N'2019-05-31' AS Date), CAST(N'2019-06-04' AS Date), 10, N'http://s3.amazonaws.com/advenport-bucket/images/2933/gallery.jpg?1456938152', 1, 2, N'Poloyez Köy', N'İstanbul', N'polonez köyde sabahın oksijen dolu güneşli havasında goşalım')
GO
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [DateOfBirth], [UserName], [Password], [Email]) VALUES (1, N'Yasin', N'Güleç', CAST(N'1994-08-18' AS Date), N'yasingulec', N'1234', N'yasingulec@gmail.com')
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [DateOfBirth], [UserName], [Password], [Email]) VALUES (2, N'İsmail', N'Işık', CAST(N'1988-05-14' AS Date), N'ismailisik', N'1234', N'ismailisik@gmail.com')
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [DateOfBirth], [UserName], [Password], [Email]) VALUES (3, N'Mahir', N'Güleçoğlu', CAST(N'1992-02-11' AS Date), N'mahirgulecoglu', N'1234', N'mahirgulecoglu@gmail.com')
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [DateOfBirth], [UserName], [Password], [Email]) VALUES (8, N'Emir', N'Balcı', CAST(N'1994-11-11' AS Date), N'emirbalci', N'1234', N'emirbalci@gmail.com')
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [DateOfBirth], [UserName], [Password], [Email]) VALUES (9, N'goktug', N'ercaliskan', CAST(N'1989-10-14' AS Date), N'goktuger', N'123', N'goktuger@hotmail.com')
GO
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Categories]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Person]
GO
ALTER TABLE [dbo].[EventPeople]  WITH CHECK ADD  CONSTRAINT [FK_EventPeople_Event] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[EventPeople] CHECK CONSTRAINT [FK_EventPeople_Event]
GO
ALTER TABLE [dbo].[EventPeople]  WITH CHECK ADD  CONSTRAINT [FK_EventPeople_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[EventPeople] CHECK CONSTRAINT [FK_EventPeople_Person]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Person] FOREIGN KEY([MessageBy])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Person]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Person1] FOREIGN KEY([MessageTo])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Person1]
GO
