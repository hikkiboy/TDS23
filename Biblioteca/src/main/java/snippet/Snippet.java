package snippet;

public class Snippet {
	USE [db_Biblioteca]
	GO
	
	/****** Object:  Table [dbo].[Livro]    Script Date: 18/08/2023 20:07:42 ******/
	SET ANSI_NULLS ON
	GO
	
	SET QUOTED_IDENTIFIER ON
	GO
	
	CREATE TABLE [dbo].[Livro](
		[codLivro] [int] IDENTITY(1,1) NOT NULL,
		[titulo] [varchar](50) NOT NULL,
		[autor] [varchar](50) NOT NULL,
		[numeroPaginas] [int] NOT NULL,
		[editora] [varchar](50) NOT NULL,
	PRIMARY KEY CLUSTERED 
	(
		[codLivro] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
	GO
	
}

