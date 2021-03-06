USE [Расчет_премии]
GO
/****** Object:  Table [dbo].[Control_Employes]    Script Date: 26.02.2021 14:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Control_Employes](
	[ID_Row] [int] IDENTITY(1,1) NOT NULL,
	[ID_Manager] [int] NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[Data_Create] [date] NULL,
 CONSTRAINT [PK_Control_Employes] PRIMARY KEY CLUSTERED 
(
	[ID_Row] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Control_Tasks]    Script Date: 26.02.2021 14:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Control_Tasks](
	[ID_Row] [int] IDENTITY(1,1) NOT NULL,
	[ID_Employee] [int] NOT NULL,
	[ID_Task] [int] NOT NULL,
	[Data] [date] NULL,
	[TimeBegin] [time](7) NULL,
	[TimeEnd] [time](7) NULL,
 CONSTRAINT [PK_Control_Tasks] PRIMARY KEY CLUSTERED 
(
	[ID_Row] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 26.02.2021 14:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID_Employee] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[ID_Position] [int] NOT NULL,
	[Phone] [nchar](13) NULL,
	[Email] [nchar](30) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID_Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grades]    Script Date: 26.02.2021 14:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[ID_Grade] [int] IDENTITY(1,1) NOT NULL,
	[Level] [int] NOT NULL,
	[Min_Salary] [money] NULL,
	[Max_Salary] [money] NULL,
 CONSTRAINT [PK_Grades] PRIMARY KEY CLUSTERED 
(
	[ID_Grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 26.02.2021 14:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[ID_Position] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ID_Grade] [int] NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[ID_Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 26.02.2021 14:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[ID_Task] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [nchar](15) NULL,
	[DeadLine] [date] NULL,
	[Data_Creation] [date] NULL,
	[Norma_Time_In_Minutes] [numeric](18, 0) NULL,
	[Factor_Difficulty] [numeric](18, 2) NULL,
	[Factor_Priority] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[ID_Task] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Control_Employes] ON 

INSERT [dbo].[Control_Employes] ([ID_Row], [ID_Manager], [ID_Employee], [Data_Create]) VALUES (1, 7, 1, CAST(N'2019-01-01' AS Date))
INSERT [dbo].[Control_Employes] ([ID_Row], [ID_Manager], [ID_Employee], [Data_Create]) VALUES (2, 7, 2, CAST(N'2019-01-01' AS Date))
INSERT [dbo].[Control_Employes] ([ID_Row], [ID_Manager], [ID_Employee], [Data_Create]) VALUES (3, 7, 3, CAST(N'2020-01-01' AS Date))
INSERT [dbo].[Control_Employes] ([ID_Row], [ID_Manager], [ID_Employee], [Data_Create]) VALUES (4, 7, 6, CAST(N'2020-01-01' AS Date))
INSERT [dbo].[Control_Employes] ([ID_Row], [ID_Manager], [ID_Employee], [Data_Create]) VALUES (5, 8, 5, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[Control_Employes] ([ID_Row], [ID_Manager], [ID_Employee], [Data_Create]) VALUES (6, 8, 4, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[Control_Employes] ([ID_Row], [ID_Manager], [ID_Employee], [Data_Create]) VALUES (7, 8, 9, CAST(N'2021-01-01' AS Date))
INSERT [dbo].[Control_Employes] ([ID_Row], [ID_Manager], [ID_Employee], [Data_Create]) VALUES (8, 7, 11, CAST(N'2021-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[Control_Employes] OFF
SET IDENTITY_INSERT [dbo].[Control_Tasks] ON 

INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (1, 6, 9, CAST(N'2022-02-28' AS Date), CAST(N'09:00:00' AS Time), NULL)
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (2, 3, 10, CAST(N'2022-02-10' AS Date), CAST(N'10:00:00' AS Time), NULL)
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (3, 3, 3, CAST(N'2022-02-04' AS Date), CAST(N'09:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (4, 3, 6, CAST(N'2022-02-14' AS Date), CAST(N'14:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (5, 6, 4, CAST(N'2022-02-20' AS Date), CAST(N'11:00:00' AS Time), CAST(N'13:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (6, 5, 8, CAST(N'2022-02-10' AS Date), CAST(N'10:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (16, 5, 8, CAST(N'2022-02-11' AS Date), CAST(N'10:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (17, 5, 8, CAST(N'2022-02-14' AS Date), CAST(N'10:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (18, 5, 8, CAST(N'2022-02-15' AS Date), CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (7, 9, 2, CAST(N'2022-02-15' AS Date), CAST(N'09:00:00' AS Time), NULL)
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (8, 2, 5, CAST(N'2022-01-18' AS Date), CAST(N'10:00:00' AS Time), CAST(N'17:30:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (9, 9, 11, CAST(N'2022-02-20' AS Date), CAST(N'14:00:00' AS Time), NULL)
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (10, 1, 12, CAST(N'2022-02-02' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (11, 6, 14, CAST(N'2022-01-14' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (12, 1, 1, CAST(N'2022-02-02' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (13, 3, 15, CAST(N'2022-01-15' AS Date), CAST(N'13:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (14, 4, 16, CAST(N'2022-02-28' AS Date), CAST(N'09:00:00' AS Time), NULL)
INSERT [dbo].[Control_Tasks] ([ID_Row], [ID_Employee], [ID_Task], [Data], [TimeBegin], [TimeEnd]) VALUES (15, 4, 17, CAST(N'2022-02-01' AS Date), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[Control_Tasks] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (1, N'Иванов Иван Иванович', 2, N'+79235634554 ', N'ml.progIvanov@mail.ru         ')
INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (2, N'Петрова Марина Николаевна', 3, N'87643565621  ', N'texnikPetrova@mail.ru         ')
INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (3, N'Козлов Александ Григорьевич', 3, N'83812546734  ', N'texnikKozlova@mail.ru         ')
INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (4, N'Огарев Сергей Петрович', 5, N'84954524345  ', N'analitikOgarev@mail.ru        ')
INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (5, N'Симонов Олег Петрович', 6, N'+79854567645 ', N'proektSimonov@mail.ru         ')
INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (6, N'Поль Олег Иванович', 2, N'+79507653409 ', N'ml.progPol@mail.ru            ')
INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (7, N'Омм Иван Андреевич', 8, N'+79003456789 ', N'menegOmm@mail.ru              ')
INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (8, N'Никонова Елена Васильевна', 8, N'83814543218  ', N'menegNikonova@mail.ru         ')
INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (9, N'Росс Иван Олегович', 2, N'89657890600  ', N'ml.progRoss@mail.ru           ')
INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (10, N'Главный Петр Петрович', 7, N'83812375767  ', N'supervisorGlavnyi@mail.ru     ')
INSERT [dbo].[Employees] ([ID_Employee], [FIO], [ID_Position], [Phone], [Email]) VALUES (11, N'Иванова Ирина Юрьевна', 2, N'+79235634554 ', N'ml.progIvanov@mail.ru         ')
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Grades] ON 

INSERT [dbo].[Grades] ([ID_Grade], [Level], [Min_Salary], [Max_Salary]) VALUES (1, 1, 20000.0000, 30000.0000)
INSERT [dbo].[Grades] ([ID_Grade], [Level], [Min_Salary], [Max_Salary]) VALUES (2, 2, 30000.0000, 45000.0000)
INSERT [dbo].[Grades] ([ID_Grade], [Level], [Min_Salary], [Max_Salary]) VALUES (3, 3, 450000.0000, 55000.0000)
INSERT [dbo].[Grades] ([ID_Grade], [Level], [Min_Salary], [Max_Salary]) VALUES (4, 4, 55000.0000, 65000.0000)
SET IDENTITY_INSERT [dbo].[Grades] OFF
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([ID_Position], [Name], [ID_Grade]) VALUES (1, N'техник', 1)
INSERT [dbo].[Positions] ([ID_Position], [Name], [ID_Grade]) VALUES (2, N'младший программист', 2)
INSERT [dbo].[Positions] ([ID_Position], [Name], [ID_Grade]) VALUES (3, N'техник-специалист', 2)
INSERT [dbo].[Positions] ([ID_Position], [Name], [ID_Grade]) VALUES (4, N'старший техник', 2)
INSERT [dbo].[Positions] ([ID_Position], [Name], [ID_Grade]) VALUES (5, N'аналитик', 3)
INSERT [dbo].[Positions] ([ID_Position], [Name], [ID_Grade]) VALUES (6, N'проектировщик', 3)
INSERT [dbo].[Positions] ([ID_Position], [Name], [ID_Grade]) VALUES (7, N'руководитель отдела', 4)
INSERT [dbo].[Positions] ([ID_Position], [Name], [ID_Grade]) VALUES (8, N'менеджер', 4)
SET IDENTITY_INSERT [dbo].[Positions] OFF
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (1, N'Установка оборудования', NULL, N'Отменена       ', CAST(N'2022-03-01' AS Date), CAST(N'2022-02-01' AS Date), CAST(300 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (2, N'Разработка приложения', NULL, N'Выполняется    ', CAST(N'2022-02-26' AS Date), CAST(N'2022-01-01' AS Date), CAST(3000 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (3, N'Настройка оборудования', NULL, N'Завершена      ', CAST(N'2022-02-14' AS Date), CAST(N'2022-02-01' AS Date), CAST(480 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(1.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (4, N'Обновление приложения', NULL, N'Завершена      ', CAST(N'2022-02-20' AS Date), CAST(N'2022-02-19' AS Date), CAST(60 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(1.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (5, N'Анализ требований', NULL, N'Завершена      ', CAST(N'2022-02-05' AS Date), CAST(N'2022-01-01' AS Date), CAST(540 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(1.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (6, N'Ремонт оборудования', NULL, N'Завершена      ', CAST(N'2022-02-28' AS Date), CAST(N'2022-02-01' AS Date), CAST(90 AS Numeric(18, 0)), CAST(1.50 AS Numeric(18, 2)), CAST(1.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (7, N'Установка оборудования', NULL, N'Запланирована  ', CAST(N'2022-02-28' AS Date), CAST(N'2022-02-13' AS Date), CAST(300 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (8, N'Проектирование системы', NULL, N'Завершена      ', CAST(N'2022-02-15' AS Date), CAST(N'2021-12-12' AS Date), CAST(600 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(0.50 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (9, N'Обновление приложения', NULL, N'Выполняется    ', CAST(N'2022-02-28' AS Date), CAST(N'2022-02-25' AS Date), CAST(60 AS Numeric(18, 0)), CAST(1.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (10, N'Оборудование', NULL, N'Выполняется     ', CAST(N'2022-02-14' AS Date), CAST(N'2022-02-02' AS Date), CAST(240 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (11, N'Разработка приложения', NULL, N'Выполняется    ', CAST(N'2022-02-28' AS Date), CAST(N'2022-02-20' AS Date), CAST(300 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(0.50 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (12, N'Сопровождение приложения', NULL, N'Завершена      ', CAST(N'2022-02-15' AS Date), CAST(N'2022-01-15' AS Date), CAST(780 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(1.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (13, N'Настройка оборудования', NULL, N'Запланирована  ', CAST(N'2022-03-03' AS Date), CAST(N'2022-02-02' AS Date), CAST(600 AS Numeric(18, 0)), NULL, NULL)
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (14, N'Анализ требований', NULL, N'Завершена      ', CAST(N'2022-01-15' AS Date), CAST(N'2022-01-10' AS Date), CAST(120 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(0.50 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (15, N'Настройка оборудования', NULL, N'Отменена       ', CAST(N'2022-02-10' AS Date), CAST(N'2022-01-01' AS Date), CAST(120 AS Numeric(18, 0)), CAST(1.50 AS Numeric(18, 2)), CAST(0.50 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (16, N'Анализ проекта', NULL, N'Выполняется    ', CAST(N'2022-03-30' AS Date), CAST(N'2022-02-15' AS Date), CAST(600 AS Numeric(18, 0)), CAST(2.00 AS Numeric(18, 2)), CAST(1.00 AS Numeric(18, 2)))
INSERT [dbo].[Tasks] ([ID_Task], [Title], [Description], [Status], [DeadLine], [Data_Creation], [Norma_Time_In_Minutes], [Factor_Difficulty], [Factor_Priority]) VALUES (17, N'Анализ настроек', NULL, N'Отменена       ', CAST(N'2022-02-12' AS Date), CAST(N'2022-01-15' AS Date), CAST(300 AS Numeric(18, 0)), CAST(1.00 AS Numeric(18, 2)), CAST(1.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[Tasks] OFF
ALTER TABLE [dbo].[Control_Employes]  WITH CHECK ADD  CONSTRAINT [FK_Control_Employes_Employees] FOREIGN KEY([ID_Manager])
REFERENCES [dbo].[Employees] ([ID_Employee])
GO
ALTER TABLE [dbo].[Control_Employes] CHECK CONSTRAINT [FK_Control_Employes_Employees]
GO
ALTER TABLE [dbo].[Control_Employes]  WITH CHECK ADD  CONSTRAINT [FK_Control_Employes_Employees1] FOREIGN KEY([ID_Employee])
REFERENCES [dbo].[Employees] ([ID_Employee])
GO
ALTER TABLE [dbo].[Control_Employes] CHECK CONSTRAINT [FK_Control_Employes_Employees1]
GO
ALTER TABLE [dbo].[Control_Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Control_Tasks_Employees] FOREIGN KEY([ID_Employee])
REFERENCES [dbo].[Employees] ([ID_Employee])
GO
ALTER TABLE [dbo].[Control_Tasks] CHECK CONSTRAINT [FK_Control_Tasks_Employees]
GO
ALTER TABLE [dbo].[Control_Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Control_Tasks_Tasks] FOREIGN KEY([ID_Task])
REFERENCES [dbo].[Tasks] ([ID_Task])
GO
ALTER TABLE [dbo].[Control_Tasks] CHECK CONSTRAINT [FK_Control_Tasks_Tasks]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Positions] FOREIGN KEY([ID_Position])
REFERENCES [dbo].[Positions] ([ID_Position])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Positions]
GO
ALTER TABLE [dbo].[Positions]  WITH CHECK ADD  CONSTRAINT [FK_Positions_Grades] FOREIGN KEY([ID_Grade])
REFERENCES [dbo].[Grades] ([ID_Grade])
GO
ALTER TABLE [dbo].[Positions] CHECK CONSTRAINT [FK_Positions_Grades]
