USE [Libyana]
GO
/****** Object:  StoredProcedure [dbo].[C_SITE_GET_BY_ID]    Script Date: 7/28/2019 1:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- AUTHOR:		ZADAH
-- CREATE DATE: 28-	JUN-2019
-- =============================================
create PROCEDURE [dbo].[C_SITE_GET_BY_ID]
	@ID					INT
AS
BEGIN
	SELECT 
		*
	FROM 
		C_SITE 
	WHERE 
		ID		=		@ID
END

GO
/****** Object:  StoredProcedure [dbo].[C_SITE_UPDATE]    Script Date: 7/28/2019 1:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- AUTHOR:		ZADAH
-- CREATE DATE: 28-	JUN-2019
-- =============================================
create PROCEDURE [dbo].[C_SITE_UPDATE]
	@IS_ACTIVE			BIT,
	@ID					INT
AS
BEGIN
	UPDATE 
		C_SITE
	SET
		IS_ACTIVE	=	@IS_ACTIVE
	WHERE 
		ID			=	@ID  
END

GO
/****** Object:  Table [dbo].[C_SITE]    Script Date: 7/28/2019 1:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_SITE](
	[ID] [int] NOT NULL,
	[IS_ACTIVE] [bit] NOT NULL,
 CONSTRAINT [PK_C_SITE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[C_SITE] ([ID], [IS_ACTIVE]) VALUES (1, 1)
ALTER TABLE [dbo].[C_SITE] ADD  CONSTRAINT [DF_C_SITE_IS_ACTIVE]  DEFAULT ((0)) FOR [IS_ACTIVE]
GO
