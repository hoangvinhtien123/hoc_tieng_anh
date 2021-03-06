USE [English_Quiz]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[ANSWER_ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [nvarchar](max) NULL,
	[QUESTION_ID] [nvarchar](30) NULL,
	[IS_CORRECT] [bit] NULL,
	[LIST_ORDER] [int] NULL,
 CONSTRAINT [PK_ANSWER] PRIMARY KEY CLUSTERED 
(
	[ANSWER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[CLASS_ID] [int] IDENTITY(1,1) NOT NULL,
	[CLASS_NAME] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](50) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[CLASS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PreFix] [varchar](50) NOT NULL,
	[EmployeeNo]  AS ([PreFix]+right('0000000'+CONVERT([varchar](7),[Id]),(7))) PERSISTED,
	[EmployeeName] [varchar](50) NULL,
 CONSTRAINT [PK_AutoInc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaluate]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluate](
	[EVALUATE_ID] [int] IDENTITY(1,1) NOT NULL,
	[EVALUATE_DESCRIPTION] [nvarchar](300) NULL,
	[FROM_POINT] [int] NULL,
	[TO_POINT] [int] NULL,
 CONSTRAINT [PK_Evaluate] PRIMARY KEY CLUSTERED 
(
	[EVALUATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Function]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Function](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Function_Name] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[Form_Name] [nvarchar](50) NULL,
	[Module] [nvarchar](50) NULL,
	[OrderNumber] [int] NULL,
 CONSTRAINT [PK_Function] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History_Quiz]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History_Quiz](
	[PR_KEY] [uniqueidentifier] NOT NULL,
	[Quiz_ID] [nvarchar](20) NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[Point] [float] NOT NULL,
	[Date_Take_Quiz] [date] NULL,
	[Quiz_Name] [nvarchar](250) NULL,
	[EVALUATE_ID] [int] NULL,
 CONSTRAINT [PK_History_Quiz_1] PRIMARY KEY CLUSTERED 
(
	[PR_KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Listening]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Listening](
	[LISTENING_ID] [nvarchar](20) NOT NULL,
	[LISTENING_NAME_VN] [nvarchar](250) NULL,
	[LISTENING_NAME_EN] [nvarchar](250) NULL,
	[LISTENING_TYPE_ID] [int] NULL,
	[LISTENING_FILE_NAME] [nvarchar](100) NULL,
	[IS_TEST] [bit] NOT NULL,
 CONSTRAINT [PK_LISTENING] PRIMARY KEY CLUSTERED 
(
	[LISTENING_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Listening_Type]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Listening_Type](
	[LISTENING_TYPE_ID] [int] IDENTITY(1,1) NOT NULL,
	[LISTENING_TYPE_NAME_VN] [nvarchar](150) NULL,
	[LISTENING_TYPE_NAME_EN] [nvarchar](150) NULL,
	[DESCRIPTION_VN] [nvarchar](250) NULL,
	[DESCRIPTION_EN] [nvarchar](250) NULL,
	[ORDER_BY] [int] NULL,
 CONSTRAINT [PK_LISTENING_TYPE] PRIMARY KEY CLUSTERED 
(
	[LISTENING_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_Id] [int] NULL,
	[Function_Id] [int] NULL,
	[Is_View] [bit] NULL,
	[Is_Add] [bit] NULL,
	[Is_Edit] [bit] NULL,
	[Is_Delete] [bit] NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question_Type]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question_Type](
	[TYPE_ID] [int] IDENTITY(1,1) NOT NULL,
	[TYPE_NAME] [nvarchar](250) NULL,
	[TYPE_NAME_EN] [nvarchar](250) NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
 CONSTRAINT [PK_TYPE] PRIMARY KEY CLUSTERED 
(
	[TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QUESTION_ID] [nvarchar](30) NOT NULL,
	[QUESTION_TEXT] [nvarchar](max) NULL,
	[POINT] [float] NULL,
	[TYPE_ID] [int] NULL,
	[LISTENING_ID] [nvarchar](20) NULL,
	[READING_ID] [int] NULL,
	[QUESTION_IMAGE] [nvarchar](100) NULL,
	[IS_TEST] [bit] NOT NULL,
	[LIST_ORDER] [int] NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[QUESTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions_Auto_Generate]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions_Auto_Generate](
	[PR_KEY] [uniqueidentifier] NOT NULL,
	[QUIZ_ID] [nvarchar](20) NULL,
	[TYPE_ID] [int] NULL,
	[TOTAL_QUESTION] [int] NULL,
	[LIST_ORDER] [int] NULL,
 CONSTRAINT [PK_QUESTIONS_AUTO_GENERATE] PRIMARY KEY CLUSTERED 
(
	[PR_KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[QUIZ_ID] [nvarchar](20) NOT NULL,
	[QUIZ_NAME] [nvarchar](80) NULL,
	[QUIZ_TYPE_ID] [nvarchar](20) NULL,
	[DESCRIPTION] [nvarchar](150) NULL,
	[TIME] [int] NULL,
	[SOURCE_DESCRIPTION] [nvarchar](250) NULL,
	[SOURCE_LINK] [nvarchar](250) NULL,
	[IS_TEST] [bit] NOT NULL,
	[ORDER_NUMBER] [int] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[QUIZ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz_Listening]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz_Listening](
	[PR_KEY] [uniqueidentifier] NOT NULL,
	[QUIZ_ID] [nvarchar](20) NULL,
	[LISTENING_ID] [nvarchar](20) NULL,
	[ACTIVE] [bit] NULL,
 CONSTRAINT [PK_Quiz_Listening_1] PRIMARY KEY CLUSTERED 
(
	[PR_KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz_Questions]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz_Questions](
	[QUIZ_ID] [nvarchar](20) NOT NULL,
	[QUESTION_ID] [nvarchar](30) NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[POINT] [float] NULL,
 CONSTRAINT [PK_Quiz_Questions] PRIMARY KEY CLUSTERED 
(
	[QUIZ_ID] ASC,
	[QUESTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz_Reading]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz_Reading](
	[PR_KEY] [uniqueidentifier] NOT NULL,
	[QUIZ_ID] [nvarchar](20) NULL,
	[READING_TYPE_ID] [int] NULL,
	[TOTAL_READING] [int] NULL,
	[ACTIVE] [bit] NULL,
 CONSTRAINT [PK_Quiz_Reading] PRIMARY KEY CLUSTERED 
(
	[PR_KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz_Type]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz_Type](
	[QUIZ_TYPE_ID] [nvarchar](20) NOT NULL,
	[QUIZ_TYPE_NAME] [nvarchar](150) NULL,
	[QUIZ_TYPE_DESCRIPTION] [nvarchar](150) NULL,
	[IS_TEST] [bit] NOT NULL,
 CONSTRAINT [PK_Quiz_Type] PRIMARY KEY CLUSTERED 
(
	[QUIZ_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reading]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reading](
	[READING_ID] [int] IDENTITY(1,1) NOT NULL,
	[READING_TEXT] [nvarchar](max) NULL,
	[READING_TYPE_ID] [int] NULL,
	[READING_IMAGE] [nvarchar](100) NULL,
	[IS_IMAGE] [bit] NOT NULL,
	[IS_TEST] [bit] NOT NULL,
 CONSTRAINT [PK_Reading] PRIMARY KEY CLUSTERED 
(
	[READING_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reading_Type]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reading_Type](
	[READING_TYPE_ID] [int] IDENTITY(1,1) NOT NULL,
	[READING_TYPE_NAME] [nvarchar](250) NULL,
	[READING_TYPE_NAME_EN] [nvarchar](250) NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[ACTIVE] [bit] NOT NULL,
 CONSTRAINT [PK_Reading_Type] PRIMARY KEY CLUSTERED 
(
	[READING_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ROLE_ID] [int] IDENTITY(1,1) NOT NULL,
	[ROLE_NAME] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](100) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tip]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tip](
	[TIP_ID] [int] IDENTITY(1,1) NOT NULL,
	[TIP_NAME] [nvarchar](100) NULL,
	[TIP_CONTENT] [nvarchar](max) NULL,
	[ACTIVE] [bit] NOT NULL,
	[TIP_TYPE_ID] [int] NULL,
 CONSTRAINT [PK_Tips] PRIMARY KEY CLUSTERED 
(
	[TIP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tip_Type]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tip_Type](
	[TIP_TYPE_ID] [int] IDENTITY(1,1) NOT NULL,
	[TIP_TYPE_NAME] [nvarchar](100) NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[ACTIVE] [bit] NOT NULL,
 CONSTRAINT [PK_Tip_Type] PRIMARY KEY CLUSTERED 
(
	[TIP_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Evaluate_Website]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Evaluate_Website](
	[PR_KEY] [uniqueidentifier] NOT NULL,
	[USER_NAME_EVALUATE] [nvarchar](50) NULL,
	[USER_JOB] [nvarchar](50) NULL,
	[USER_CONTENT_EVALUATE] [nvarchar](max) NULL,
	[ACTIVE] [bit] NOT NULL,
 CONSTRAINT [PK_User_Evaluate_Website] PRIMARY KEY CLUSTERED 
(
	[PR_KEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/6/2021 10:41:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[USER_ID] [int] IDENTITY(1,1) NOT NULL,
	[FULL_NAME] [nvarchar](50) NULL,
	[PROFILE_IMAGE] [varchar](50) NULL,
	[PASSWORD] [varchar](250) NULL,
	[ADDRESS] [nvarchar](100) NULL,
	[PHONE_NUMBER] [int] NULL,
	[ROLE_ID] [int] NULL,
	[USER_NAME] [nvarchar](50) NULL,
	[IS_MANAGE] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Listening] ADD  CONSTRAINT [DF_Listening_IS_TEST]  DEFAULT ((1)) FOR [IS_TEST]
GO
ALTER TABLE [dbo].[Questions] ADD  CONSTRAINT [DF_Questions_QUESTION_ID]  DEFAULT ('') FOR [QUESTION_ID]
GO
ALTER TABLE [dbo].[Questions] ADD  CONSTRAINT [DF_Questions_IS_TEST]  DEFAULT ((1)) FOR [IS_TEST]
GO
ALTER TABLE [dbo].[Quiz] ADD  CONSTRAINT [DF_Quiz_IS_TEST]  DEFAULT ((1)) FOR [IS_TEST]
GO
ALTER TABLE [dbo].[Quiz_Questions] ADD  CONSTRAINT [DF_Quiz_Questions_ACTIVE]  DEFAULT ((0)) FOR [ACTIVE]
GO
ALTER TABLE [dbo].[Quiz_Questions] ADD  CONSTRAINT [DF_Quiz_Questions_POINT]  DEFAULT ((0)) FOR [POINT]
GO
ALTER TABLE [dbo].[Quiz_Type] ADD  CONSTRAINT [DF_Quiz_Type_IS_TEST]  DEFAULT ((1)) FOR [IS_TEST]
GO
ALTER TABLE [dbo].[Reading] ADD  CONSTRAINT [DF_Reading_IS_IMAGE]  DEFAULT ((0)) FOR [IS_IMAGE]
GO
ALTER TABLE [dbo].[Reading] ADD  CONSTRAINT [DF_Reading_IS_TEST]  DEFAULT ((1)) FOR [IS_TEST]
GO
ALTER TABLE [dbo].[Reading_Type] ADD  CONSTRAINT [DF_Reading_Type_ACTIVE]  DEFAULT ((1)) FOR [ACTIVE]
GO
ALTER TABLE [dbo].[Tip] ADD  CONSTRAINT [DF_Tips_ACTIVE]  DEFAULT ((1)) FOR [ACTIVE]
GO
ALTER TABLE [dbo].[Tip_Type] ADD  CONSTRAINT [DF_Tip_Type_ACTIVE]  DEFAULT ((1)) FOR [ACTIVE]
GO
ALTER TABLE [dbo].[User_Evaluate_Website] ADD  CONSTRAINT [DF_User_Evaluate_Website_ACTIVE]  DEFAULT ((1)) FOR [ACTIVE]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IS_MANAGE]  DEFAULT ((1)) FOR [IS_MANAGE]
GO
ALTER TABLE [dbo].[History_Quiz]  WITH CHECK ADD  CONSTRAINT [FK_History_Quiz_Evaluate] FOREIGN KEY([EVALUATE_ID])
REFERENCES [dbo].[Evaluate] ([EVALUATE_ID])
GO
ALTER TABLE [dbo].[History_Quiz] CHECK CONSTRAINT [FK_History_Quiz_Evaluate]
GO
ALTER TABLE [dbo].[Listening]  WITH CHECK ADD  CONSTRAINT [FK_Listening_Listening_Type] FOREIGN KEY([LISTENING_TYPE_ID])
REFERENCES [dbo].[Listening_Type] ([LISTENING_TYPE_ID])
GO
ALTER TABLE [dbo].[Listening] CHECK CONSTRAINT [FK_Listening_Listening_Type]
GO
ALTER TABLE [dbo].[Permission]  WITH CHECK ADD  CONSTRAINT [FK_Permission_Role] FOREIGN KEY([Function_Id])
REFERENCES [dbo].[Function] ([Id])
GO
ALTER TABLE [dbo].[Permission] CHECK CONSTRAINT [FK_Permission_Role]
GO
ALTER TABLE [dbo].[Permission]  WITH CHECK ADD  CONSTRAINT [FK_Permission_Role_Id] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Role] ([ROLE_ID])
GO
ALTER TABLE [dbo].[Permission] CHECK CONSTRAINT [FK_Permission_Role_Id]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Listening] FOREIGN KEY([LISTENING_ID])
REFERENCES [dbo].[Listening] ([LISTENING_ID])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Listening]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Reading] FOREIGN KEY([READING_ID])
REFERENCES [dbo].[Reading] ([READING_ID])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Reading]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Type] FOREIGN KEY([TYPE_ID])
REFERENCES [dbo].[Question_Type] ([TYPE_ID])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Type]
GO
ALTER TABLE [dbo].[Questions_Auto_Generate]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Auto_Generate_Type] FOREIGN KEY([TYPE_ID])
REFERENCES [dbo].[Question_Type] ([TYPE_ID])
GO
ALTER TABLE [dbo].[Questions_Auto_Generate] CHECK CONSTRAINT [FK_Questions_Auto_Generate_Type]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Quiz_Type] FOREIGN KEY([QUIZ_TYPE_ID])
REFERENCES [dbo].[Quiz_Type] ([QUIZ_TYPE_ID])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Quiz_Type]
GO
ALTER TABLE [dbo].[Quiz_Listening]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Listening_Listening] FOREIGN KEY([LISTENING_ID])
REFERENCES [dbo].[Listening] ([LISTENING_ID])
GO
ALTER TABLE [dbo].[Quiz_Listening] CHECK CONSTRAINT [FK_Quiz_Listening_Listening]
GO
ALTER TABLE [dbo].[Quiz_Questions]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Questions_Questions] FOREIGN KEY([QUESTION_ID])
REFERENCES [dbo].[Questions] ([QUESTION_ID])
GO
ALTER TABLE [dbo].[Quiz_Questions] CHECK CONSTRAINT [FK_Quiz_Questions_Questions]
GO
ALTER TABLE [dbo].[Quiz_Questions]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Questions_Quiz] FOREIGN KEY([QUIZ_ID])
REFERENCES [dbo].[Quiz] ([QUIZ_ID])
GO
ALTER TABLE [dbo].[Quiz_Questions] CHECK CONSTRAINT [FK_Quiz_Questions_Quiz]
GO
ALTER TABLE [dbo].[Quiz_Reading]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Reading_Reading_Type] FOREIGN KEY([READING_TYPE_ID])
REFERENCES [dbo].[Reading_Type] ([READING_TYPE_ID])
GO
ALTER TABLE [dbo].[Quiz_Reading] CHECK CONSTRAINT [FK_Quiz_Reading_Reading_Type]
GO
ALTER TABLE [dbo].[Reading]  WITH CHECK ADD  CONSTRAINT [FK_Reading_Reading_Type] FOREIGN KEY([READING_TYPE_ID])
REFERENCES [dbo].[Reading_Type] ([READING_TYPE_ID])
GO
ALTER TABLE [dbo].[Reading] CHECK CONSTRAINT [FK_Reading_Reading_Type]
GO
ALTER TABLE [dbo].[Tip]  WITH CHECK ADD  CONSTRAINT [FK_Tip_Tip_Type] FOREIGN KEY([TIP_TYPE_ID])
REFERENCES [dbo].[Tip_Type] ([TIP_TYPE_ID])
GO
ALTER TABLE [dbo].[Tip] CHECK CONSTRAINT [FK_Tip_Tip_Type]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([ROLE_ID])
REFERENCES [dbo].[Role] ([ROLE_ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
