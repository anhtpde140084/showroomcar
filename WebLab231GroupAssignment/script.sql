USE [NewShowRoomCar]
GO
/****** Object:  Table [dbo].[_Car]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Car](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[brand] [nvarchar](100) NULL,
	[price] [float] NULL,
	[image] [nvarchar](max) NULL,
	[event] [int] NULL,
	[url] [nchar](10) NULL,
 CONSTRAINT [PK___Car__3213E83F644B32AF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[username] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[role] [int] NOT NULL,
	[description] [nvarchar](50) NULL,
	[avatar] [nvarchar](max) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](20) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[date] [date] NULL,
	[author_id] [int] NULL,
	[viewer] [int] NULL,
	[like] [int] NULL,
	[dislike] [int] NULL,
	[img] [nvarchar](max) NULL,
	[category] [int] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Borrow]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Borrow](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Car_ID] [int] NOT NULL,
	[Borrowed] [int] NOT NULL,
	[time] [nvarchar](50) NULL,
	[note] [nvarchar](max) NULL,
	[name_customer] [nvarchar](50) NULL,
	[phone] [nvarchar](15) NULL,
	[email] [nvarchar](100) NULL,
	[User_ID] [int] NULL,
	[FeedBack] [nvarchar](max) NULL,
 CONSTRAINT [PK_Car_Borrow] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Detail]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Detail](
	[id_car] [int] NOT NULL,
	[LxWxH] [nvarchar](max) NULL,
	[Wheelbase] [float] NULL,
	[fullload] [float] NULL,
	[fuel] [float] NULL,
	[engine] [nvarchar](50) NULL,
	[time_per_100] [float] NULL,
	[gear] [nvarchar](50) NULL,
	[img_list] [nvarchar](max) NULL,
	[preorderprice] [float] NULL,
	[contentList] [nvarchar](max) NULL,
 CONSTRAINT [PK_Car_Detail] PRIMARY KEY CLUSTERED 
(
	[id_car] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](20) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_car] [int] NOT NULL,
	[Color] [nvarchar](50) NULL,
	[Img_color] [nvarchar](max) NULL,
	[Color_code] [nvarchar](50) NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[date] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[date_begin] [date] NULL,
	[date_close] [date] NULL,
	[content] [nvarchar](max) NULL,
	[discount] [float] NULL,
 CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[author] [nvarchar](50) NULL,
	[create_time] [date] NULL,
	[id_author] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[page_content_car]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[page_content_car](
	[Id] [int] NOT NULL,
	[id_car] [int] NOT NULL,
	[banner_img] [nvarchar](max) NULL,
	[img_front] [nvarchar](max) NULL,
	[car_logo] [nvarchar](50) NULL,
 CONSTRAINT [PK_page_content_car] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Page_view]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Page_view](
	[id] [int] NOT NULL,
	[name_page] [nvarchar](50) NULL,
	[viewer] [int] NULL,
	[date_time] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/13/2021 9:41:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Ro_ID] [int] NOT NULL,
	[Ro_Name] [varchar](50) NOT NULL,
	[Ro_Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Rule] PRIMARY KEY CLUSTERED 
(
	[Ro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[_Car] ON 

INSERT [dbo].[_Car] ([id], [name], [brand], [price], [image], [event], [url]) VALUES (1, N'LUX A2.0', N'VINFAST', 1020000000, N'luxA2.0', NULL, N'luxA2.jsp ')
INSERT [dbo].[_Car] ([id], [name], [brand], [price], [image], [event], [url]) VALUES (2, N'LUX SA2.0', N'VINFAST', 1469000000, N'luxSA2.0', NULL, N'luxSa2.jsp')
INSERT [dbo].[_Car] ([id], [name], [brand], [price], [image], [event], [url]) VALUES (3, N'FADIL', N'VINFAST', 400000000, N'fadil', NULL, N'fadil.jsp ')
INSERT [dbo].[_Car] ([id], [name], [brand], [price], [image], [event], [url]) VALUES (4, N'PRESIDENT', N'VINFAST', 4000000000, N'luxSA2.0', NULL, N'preSa2.jsp')
INSERT [dbo].[_Car] ([id], [name], [brand], [price], [image], [event], [url]) VALUES (29, N'A', N'Lambor', 14, N'a', NULL, N'a         ')
INSERT [dbo].[_Car] ([id], [name], [brand], [price], [image], [event], [url]) VALUES (30, N'a', N'a', 14, N'a', NULL, N'a         ')
INSERT [dbo].[_Car] ([id], [name], [brand], [price], [image], [event], [url]) VALUES (31, N'president 2', N'Vinfast', 400000000, N'https://shop.vinfastauto.com/on/demandware.static/-/Sites-app_vinfast_vn-Library/default/dwfd31fe7f/images/President/CE16.png', NULL, N'aa        ')
SET IDENTITY_INSERT [dbo].[_Car] OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [name], [username], [pass], [email], [role], [description], [avatar], [address], [phone]) VALUES (4, N'phi anh', N'phianh', N'B2TYhDXa', N'tranphianh1518@gmail.com', 1, N'Hello mình ở đây để giúp các bạn', N'https://halotravel.vn/wp-content/uploads/2020/07/thach_trangg_101029297_573874646879779_1794923475739360981_n.jpg', N'', N'0941404225')
INSERT [dbo].[Account] ([ID], [name], [username], [pass], [email], [role], [description], [avatar], [address], [phone]) VALUES (36, N'Nam Huynh', N'phuongnam', N'123', N'dongtrangdn@gmail.com', 1, N'leaderr', N'', N'3470 East 47th Avenue', N'06047257096')
INSERT [dbo].[Account] ([ID], [name], [username], [pass], [email], [role], [description], [avatar], [address], [phone]) VALUES (44, N'Hoàng Đức Long', N'user4', N'longlong11', N'Longhdde140081@fpt.edu.vn', 2, N'mệt mỏi', N'https://i.imgur.com/6nB2Ksc.jpeg', N'', N'0941404225')
INSERT [dbo].[Account] ([ID], [name], [username], [pass], [email], [role], [description], [avatar], [address], [phone]) VALUES (47, N'Trần Phi Anh', N'user5', N'anhanh11', N'conacmong5@gmail.com', 2, N'', N'https://ichef.bbci.co.uk/news/640/cpsprodpb/0CC7/production/_105917230_bugatti_bbc.jpg', N'Giao hàng tại cầu Trắng', N'0941404225')
INSERT [dbo].[Account] ([ID], [name], [username], [pass], [email], [role], [description], [avatar], [address], [phone]) VALUES (48, N'Trần Phi Anh', N'usertest', N'anhanh11', N'tranphianh@gmail.com', 2, N'', N'', N'', N'')
INSERT [dbo].[Account] ([ID], [name], [username], [pass], [email], [role], [description], [avatar], [address], [phone]) VALUES (49, N'Trần Phi Anh', N'user2', N'anhanh11', N'tranphianh20087@gmail.com', 2, N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (41, N'Đánh giá sơ bộ xe Vinfast LUX A2.0 2020', N'<div class="desc">
<h1>&#272;&aacute;nh gi&aacute; s&#417; b&#7897; xe Vinfast LUX A2.0 2020</h1>
<div class="meta"><span class="date full-width">Gi&aacute;: 896 tri&#7879;u</span></div>
<p><img class="responsive-img normal" src="https://files01.danhgiaxe.com/E2oMfwJgniJSx6CmMpEI-L4xgpc=/fit-in/1280x0/20190909/img_7745-000119.jpg" /></p>
</div>
<div class="reg-tab">
<div id="tongquan">
<div class="title">
<h2>T&#7892;NG QUAN</h2>
</div>
<div class="block-wrap">
<div class="row">
<div class="col m6">
<h5 class="title-normal">Thang &#273;i&#7875;m nh&oacute;m &#273;&aacute;nh gi&aacute;</h5>
<div class="row reg-rate">
<div class="col m7">
<table>
<tbody>
<tr>
<td>Ki&#7875;u d&aacute;ng</td>
<td>
<div class="starrr" data-connected-input="teamKieudang">&nbsp;</div>
</td>
</tr>
<tr>
<td>V&#7853;n h&agrave;nh</td>
<td>
<div class="starrr" data-connected-input="teamVanhanh">&nbsp;</div>
</td>
</tr>
<tr>
<td>Ti&#7879;n nghi</td>
<td>
<div class="starrr" data-connected-input="teamTiennghi">&nbsp;</div>
</td>
</tr>
<tr>
<td>An to&agrave;n</td>
<td>
<div class="starrr" data-connected-input="teamAntoan">&nbsp;</div>
</td>
</tr>
<tr>
<td>Gi&aacute; c&#7843;</td>
<td>
<div class="starrr" data-connected-input="teamGiaca">&nbsp;</div>
</td>
</tr>
</tbody>
</table>
</div>
<div class="col m5">
<p class="point">4.2</p>
</div>
</div>
</div>
<div class="col m6 border-left">
<p>B&#7841;n &#273;ang quan t&acirc;m &#273;&#7871;n s&#7843;n ph&#7849;m n&agrave;y? G&#7903;i th&ocirc;ng tin c&#7911;a b&#7841;n &#273;&#7871;n ch&uacute;ng t&ocirc;i &#273;&#7875; nh&#7853;n &#273;&#432;&#7907;c b&aacute;o gi&aacute; nh&#7845;t m&#7899;i nh&#7845;t t&#7915; h&atilde;ng</p>
</div>
</div>
</div>
</div>
<h2 id="review1">Gi&#7899;i thi&#7879;u chung</h2>
<p>Vinfast l&agrave; h&atilde;ng xe nh&#7853;n &#273;&#432;&#7907;c r&#7845;t nhi&#7873;u s&#7921; ch&uacute; &yacute; ngay t&#7915; khi ra m&#7855;t b&#7903;i m&#7909;c ti&ecirc;u mang ng&agrave;nh c&ocirc;ng nghi&#7879;p &ocirc; t&ocirc; Vi&#7879;t Nam ra th&#7871; gi&#7899;i. Hai m&#7851;u xe sang &#273;&#7847;u ti&ecirc;n &#273;&#432;&#7907;c h&atilde;ng gi&#7899;i thi&#7879;u t&#7841;i tri&#7875;n l&atilde;m Paris Motorshow l&agrave; chi&#7871;c sedan Lux A2.0 v&agrave; m&#7851;u SUV SA2.0. &#272;&acirc;y c&#361;ng &#273;&#432;&#7907;c xem l&agrave; ti&#7873;n &#273;&#7873; trong vi&#7879;c &#273;&#7883;nh h&#432;&#7899;ng ph&aacute;t tri&#7875;n cho nh&#7919;ng m&#7851;u xe ti&#7871;p theo c&#7911;a h&atilde;ng xe c&oacute; ph&#7847;n non tr&#7867;. Trong b&agrave;i vi&#7871;t n&agrave;y, danhgiaXe s&#7869; mang &#273;&#7871;n c&aacute;i nh&igrave;n s&#417; b&#7897; v&#7873; m&#7851;u sedan Lux A2.0 t&#7915; Vinfast.</p>
<h2 id="review2">Gi&aacute; b&aacute;n&nbsp;</h2>
<p class="">Vinfast LUX A2.0 &#273;&#432;&#7907;c s&#7843;n xu&#7845;t v&agrave; l&#7855;p r&aacute;p trong n&#432;&#7899;c v&#7899;i ba phi&ecirc;n b&#7843;n nh&#432; sau:&nbsp;</p>
<blockquote>LUX A2.0 ti&ecirc;u chu&#7849;n: 990 tri&#7879;u &#273;&#7891;ng<br />LUX A2.0 n&acirc;ng cao: 1078 tri&#7879;u &#273;&#7891;ng<br />LUX A2.0 cao c&#7845;p: 1228 tri&#7879;u &#273;&#7891;ng</blockquote>
<h2 id="review3">Ngo&#7841;i th&#7845;t</h2>
<div class="medium-insert-images"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/9wjwa8dtwQ7WgudMdQN2MR95SEc=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg" rel="gallery"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/v3Bcx6WfCdIKwgJ1kPboY7wiAQw=/fit-in/360x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg" sizes="689px" srcset="https://files01.danhgiaxe.com/V07TckIeNU1LtaappL5lAV9Zszg=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 480w, https://files01.danhgiaxe.com/NzE8h1rM0GWpJa4zn1osZl_zW78=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 640w, https://files01.danhgiaxe.com/DQsKtjlo-aYlMzCHHrIV4ly-UWU=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 800w, https://files01.danhgiaxe.com/9wjwa8dtwQ7WgudMdQN2MR95SEc=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 1280w, https://files01.danhgiaxe.com/5VS_GUAj1SbDWgZa32Gn88oG8sg=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 1600w, https://files01.danhgiaxe.com/FJvpMn1phJSbwt0GbhW87GfbTpI=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/V07TckIeNU1LtaappL5lAV9Zszg=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 480w, https://files01.danhgiaxe.com/NzE8h1rM0GWpJa4zn1osZl_zW78=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 640w, https://files01.danhgiaxe.com/DQsKtjlo-aYlMzCHHrIV4ly-UWU=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 800w, https://files01.danhgiaxe.com/9wjwa8dtwQ7WgudMdQN2MR95SEc=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 1280w, https://files01.danhgiaxe.com/5VS_GUAj1SbDWgZa32Gn88oG8sg=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 1600w, https://files01.danhgiaxe.com/FJvpMn1phJSbwt0GbhW87GfbTpI=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-5-123408.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<p>D&ugrave; y&ecirc;u hay gh&eacute;t Vinfast th&igrave; c&#361;ng kh&oacute; ai c&oacute; th&#7875; ph&agrave;n n&agrave;n v&#7873; ngo&#7841;i th&#7845;t c&#7911;a Lux A2.0. Chi&#7871;c sedan n&agrave;y s&#7903; h&#7919;u thi&#7871;t k&#7871; ngo&#7841;i th&#7845;t m&#7841;nh m&#7869; nh&#432;ng kh&ocirc;ng k&eacute;m ph&#7847;n thanh l&#7883;ch v&agrave; s&#7855;c s&#7843;o.&nbsp;</p>
<p class="">&nbsp;</p>
<div class="row">
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/WdY2XpaXsN_nipy7fLgMG-86w-g=/fit-in/1280x0/20190912/danhgiaxe.com-3-123418.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/fCaBsKPNJkRrrBR4ojMOVJ6OYs4=/fit-in/360x0/20190912/danhgiaxe.com-3-123418.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/d_E7YSY2aEznLdZ34Z2ihPrhd18=/fit-in/480x0/20190912/danhgiaxe.com-3-123418.jpg 480w, https://files01.danhgiaxe.com/jG4N8hQk3tXAHa9TUkfICv7bX14=/fit-in/640x0/20190912/danhgiaxe.com-3-123418.jpg 640w, https://files01.danhgiaxe.com/ZEC_smbcezKmJzLwgnSlv6phB50=/fit-in/800x0/20190912/danhgiaxe.com-3-123418.jpg 800w, https://files01.danhgiaxe.com/WdY2XpaXsN_nipy7fLgMG-86w-g=/fit-in/1280x0/20190912/danhgiaxe.com-3-123418.jpg 1280w, https://files01.danhgiaxe.com/FCJe7YV6tRRbuHg4vkJ5j_aqYw0=/fit-in/1600x0/20190912/danhgiaxe.com-3-123418.jpg 1600w, https://files01.danhgiaxe.com/qxXCfJxC14w5sCJLFJ2NrL-_s3I=/fit-in/2560x0/20190912/danhgiaxe.com-3-123418.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/d_E7YSY2aEznLdZ34Z2ihPrhd18=/fit-in/480x0/20190912/danhgiaxe.com-3-123418.jpg 480w, https://files01.danhgiaxe.com/jG4N8hQk3tXAHa9TUkfICv7bX14=/fit-in/640x0/20190912/danhgiaxe.com-3-123418.jpg 640w, https://files01.danhgiaxe.com/ZEC_smbcezKmJzLwgnSlv6phB50=/fit-in/800x0/20190912/danhgiaxe.com-3-123418.jpg 800w, https://files01.danhgiaxe.com/WdY2XpaXsN_nipy7fLgMG-86w-g=/fit-in/1280x0/20190912/danhgiaxe.com-3-123418.jpg 1280w, https://files01.danhgiaxe.com/FCJe7YV6tRRbuHg4vkJ5j_aqYw0=/fit-in/1600x0/20190912/danhgiaxe.com-3-123418.jpg 1600w, https://files01.danhgiaxe.com/qxXCfJxC14w5sCJLFJ2NrL-_s3I=/fit-in/2560x0/20190912/danhgiaxe.com-3-123418.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/GLAIFtI64Sb7F3vfao0CoCIdRlY=/fit-in/1280x0/20190912/danhgiaxe.com-2-123418.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/xr91qX8FTH__GiFaY35xIBO91-c=/fit-in/360x0/20190912/danhgiaxe.com-2-123418.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/NboTd7Qh7T82YWSR6sPo8Wx46Aw=/fit-in/480x0/20190912/danhgiaxe.com-2-123418.jpg 480w, https://files01.danhgiaxe.com/pmiV4sEk9Ez9imnUyeUd1YkP8f4=/fit-in/640x0/20190912/danhgiaxe.com-2-123418.jpg 640w, https://files01.danhgiaxe.com/o-qRPHJRmJ7_cjPO3cv12O5A6DU=/fit-in/800x0/20190912/danhgiaxe.com-2-123418.jpg 800w, https://files01.danhgiaxe.com/GLAIFtI64Sb7F3vfao0CoCIdRlY=/fit-in/1280x0/20190912/danhgiaxe.com-2-123418.jpg 1280w, https://files01.danhgiaxe.com/Ii2L4_3nRwQ5Zj4wg6x2D0xu-7M=/fit-in/1600x0/20190912/danhgiaxe.com-2-123418.jpg 1600w, https://files01.danhgiaxe.com/iJtUlaI5dZrrPZ0qrvQLwWzmDlQ=/fit-in/2560x0/20190912/danhgiaxe.com-2-123418.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/NboTd7Qh7T82YWSR6sPo8Wx46Aw=/fit-in/480x0/20190912/danhgiaxe.com-2-123418.jpg 480w, https://files01.danhgiaxe.com/pmiV4sEk9Ez9imnUyeUd1YkP8f4=/fit-in/640x0/20190912/danhgiaxe.com-2-123418.jpg 640w, https://files01.danhgiaxe.com/o-qRPHJRmJ7_cjPO3cv12O5A6DU=/fit-in/800x0/20190912/danhgiaxe.com-2-123418.jpg 800w, https://files01.danhgiaxe.com/GLAIFtI64Sb7F3vfao0CoCIdRlY=/fit-in/1280x0/20190912/danhgiaxe.com-2-123418.jpg 1280w, https://files01.danhgiaxe.com/Ii2L4_3nRwQ5Zj4wg6x2D0xu-7M=/fit-in/1600x0/20190912/danhgiaxe.com-2-123418.jpg 1600w, https://files01.danhgiaxe.com/iJtUlaI5dZrrPZ0qrvQLwWzmDlQ=/fit-in/2560x0/20190912/danhgiaxe.com-2-123418.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/YbK_yiqLDiwhjZdE8qpdlvFRNYE=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/Wshg2wPKBmbFBfqY7icGVGf6woE=/fit-in/360x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/shFXliAV5BO3JK57GYi-d5SD-Jk=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 480w, https://files01.danhgiaxe.com/uE0YTQmlHkDIDjRGdtQKT5E8B04=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 640w, https://files01.danhgiaxe.com/sQIGyTvWGCHGgUutxTI0CV4A1Gg=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 800w, https://files01.danhgiaxe.com/YbK_yiqLDiwhjZdE8qpdlvFRNYE=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 1280w, https://files01.danhgiaxe.com/p5jRq8pEcF7IS1Eha3rzXWGWUos=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 1600w, https://files01.danhgiaxe.com/9xHgTgtO5a77GQVMjgyqJ9oOg88=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/shFXliAV5BO3JK57GYi-d5SD-Jk=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 480w, https://files01.danhgiaxe.com/uE0YTQmlHkDIDjRGdtQKT5E8B04=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 640w, https://files01.danhgiaxe.com/sQIGyTvWGCHGgUutxTI0CV4A1Gg=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 800w, https://files01.danhgiaxe.com/YbK_yiqLDiwhjZdE8qpdlvFRNYE=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 1280w, https://files01.danhgiaxe.com/p5jRq8pEcF7IS1Eha3rzXWGWUos=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 1600w, https://files01.danhgiaxe.com/9xHgTgtO5a77GQVMjgyqJ9oOg88=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-8-123940.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/v_RZ8TQxecTp4Xbjy80CT0b-B1U=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/i2qIN5ChBlPOMeYtZlQxl8uxhzg=/fit-in/360x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/uEonPcY46pVGAsvmJO6Wwg747GM=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 480w, https://files01.danhgiaxe.com/NPTFsPoLYm4oRYloLOWJSWeuTrI=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 640w, https://files01.danhgiaxe.com/BYbkuzo5SmfMCA2usQopvuqG12M=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 800w, https://files01.danhgiaxe.com/v_RZ8TQxecTp4Xbjy80CT0b-B1U=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 1280w, https://files01.danhgiaxe.com/m3x9KYK1mJVXRxafEOdrsd6F3Qs=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 1600w, https://files01.danhgiaxe.com/QUkk4XFIsOG3H7VzvNhb7qYzTV8=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/uEonPcY46pVGAsvmJO6Wwg747GM=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 480w, https://files01.danhgiaxe.com/NPTFsPoLYm4oRYloLOWJSWeuTrI=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 640w, https://files01.danhgiaxe.com/BYbkuzo5SmfMCA2usQopvuqG12M=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 800w, https://files01.danhgiaxe.com/v_RZ8TQxecTp4Xbjy80CT0b-B1U=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 1280w, https://files01.danhgiaxe.com/m3x9KYK1mJVXRxafEOdrsd6F3Qs=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 1600w, https://files01.danhgiaxe.com/QUkk4XFIsOG3H7VzvNhb7qYzTV8=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-6-123940.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
</div>
<p>&nbsp;</p>
<p class="">M&#7863;t ca-l&#259;ng n&#7893;i b&#7853;t v&#7899;i d&#7843;i &#273;&egrave;n LED &#273;&#7883;nh v&#7883; m&#7887;ng &#273;ang tr&#7903; th&agrave;nh xu h&#432;&#7899;ng, k&#7871;t h&#7907;p v&#7899;i d&#7843;i chi&#7871;u s&aacute;ng ch&#7919; V &ocirc;m l&#7845;y l&#432;&#7901;i t&#7843;n nhi&#7879;t v&agrave; logo Vinfast m&#7841; chrome &#273;&#7847;y ph&aacute; c&aacute;ch. &#272;&acirc;y c&#361;ng l&agrave; chi ti&#7871;t &#273;&#7863;c tr&#432;ng gi&uacute;p nh&#7853;n di&#7879;n m&#7851;u xe sang c&#7911;a Vinfast tr&ecirc;n &#273;&#432;&#7901;ng.</p>
<p class="">&nbsp;</p>
<div class="row">
<div class="col m6 s12"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/GsLPwBX6I9d5DUg-CGDcMpmxSM0=/fit-in/1280x0/20190912/danhgiaxe.com-1-copy-124036.jpg" rel="gallery2"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/ilsn9INHyOcGtMogCmPf8gc4qyk=/fit-in/360x0/20190912/danhgiaxe.com-1-copy-124036.jpg" sizes="334px" srcset="https://files01.danhgiaxe.com/wFHxnpOs3mgGnMrW5gbgIu2g0V8=/fit-in/640x0/20190912/danhgiaxe.com-1-copy-124036.jpg 640w, https://files01.danhgiaxe.com/GsLPwBX6I9d5DUg-CGDcMpmxSM0=/fit-in/1280x0/20190912/danhgiaxe.com-1-copy-124036.jpg 1280w, https://files01.danhgiaxe.com/oBs5piSeYzly8HnTYMmF0IJJikk=/fit-in/2560x0/20190912/danhgiaxe.com-1-copy-124036.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/wFHxnpOs3mgGnMrW5gbgIu2g0V8=/fit-in/640x0/20190912/danhgiaxe.com-1-copy-124036.jpg 640w, https://files01.danhgiaxe.com/GsLPwBX6I9d5DUg-CGDcMpmxSM0=/fit-in/1280x0/20190912/danhgiaxe.com-1-copy-124036.jpg 1280w, https://files01.danhgiaxe.com/oBs5piSeYzly8HnTYMmF0IJJikk=/fit-in/2560x0/20190912/danhgiaxe.com-1-copy-124036.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m6 s12"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/yvkJ_fnNajK28cPLk3agJnLDzFg=/fit-in/1280x0/20190912/danhgiaxe.com-4-124036.jpg" rel="gallery2"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/xGm8cO-TrMarhv68NN3ujb-KFog=/fit-in/360x0/20190912/danhgiaxe.com-4-124036.jpg" sizes="334px" srcset="https://files01.danhgiaxe.com/KsK0qrCjywipWbMgYc8FAIcpEOg=/fit-in/640x0/20190912/danhgiaxe.com-4-124036.jpg 640w, https://files01.danhgiaxe.com/yvkJ_fnNajK28cPLk3agJnLDzFg=/fit-in/1280x0/20190912/danhgiaxe.com-4-124036.jpg 1280w, https://files01.danhgiaxe.com/W7mz2jSz_g4qBA3hJD4Nl50aogM=/fit-in/2560x0/20190912/danhgiaxe.com-4-124036.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/KsK0qrCjywipWbMgYc8FAIcpEOg=/fit-in/640x0/20190912/danhgiaxe.com-4-124036.jpg 640w, https://files01.danhgiaxe.com/yvkJ_fnNajK28cPLk3agJnLDzFg=/fit-in/1280x0/20190912/danhgiaxe.com-4-124036.jpg 1280w, https://files01.danhgiaxe.com/W7mz2jSz_g4qBA3hJD4Nl50aogM=/fit-in/2560x0/20190912/danhgiaxe.com-4-124036.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
</div>
<p>&nbsp;</p>
<p>H&ocirc;ng xe c&#7911;a Lux A2.0 s&#7917; d&#7909;ng nh&#7919;ng &#273;&#432;&#7901;ng g&acirc;n n&#7893;i k&eacute;o d&agrave;i t&#7915; n&#7855;p ca-p&ocirc; &#273;&#7871;n c&#7917;a tr&#432;&#7899;c, k&#7871;t h&#7907;p v&#7899;i b&#7897; m&acirc;m k&iacute;ch th&#432;&#7899;c 19 inch &#7903; b&#7843;n cao c&#7845;p v&agrave; 18 inch &#7903; b&#7843;n ti&ecirc;u chu&#7849;n t&#7841;o n&ecirc;n &#7845;n t&#432;&#7907;ng th&#7875; thao cho m&#7851;u sedan nh&agrave; Vin. &#272;&#7863;c bi&#7879;t, v&agrave;nh xe 5 ch&#7845;u v&#7899;i thi&#7871;t k&#7871; b&#7855;t m&#7855;t, logo ch&iacute;nh gi&#7919;a c&ugrave;ng 2 m&agrave;u &#273;en k&#7871;t h&#7907;p v&#7899;i m&agrave;u kim lo&#7841;i gi&uacute;p "d&agrave;n ch&acirc;n" c&#7911;a xe kh&#7887;e kho&#7855;n v&agrave; v&#7919;ng ch&atilde;i h&#417;n.</p>
<p class="">&nbsp;</p>
<div class="row">
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/BuL4AWT3L3kWY9azC7rm42hIRl8=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/JMOXszqMhdKDzM5tTQoRBrNeuSw=/fit-in/360x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/ENURd9UktFZuX79jEtgsszIBZgo=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 480w, https://files01.danhgiaxe.com/OQG4tN0Xh-N7rpvca6iE_nzVqRY=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 640w, https://files01.danhgiaxe.com/nKcavzkljZ8YDMD6mzLaxq1RiyE=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 800w, https://files01.danhgiaxe.com/BuL4AWT3L3kWY9azC7rm42hIRl8=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 1280w, https://files01.danhgiaxe.com/rYVaR2uPzJ18Dl91J_IdhFIxjPI=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 1600w, https://files01.danhgiaxe.com/NeFEZNrZa3XlEXJHHkzrsV-Qp18=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/ENURd9UktFZuX79jEtgsszIBZgo=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 480w, https://files01.danhgiaxe.com/OQG4tN0Xh-N7rpvca6iE_nzVqRY=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 640w, https://files01.danhgiaxe.com/nKcavzkljZ8YDMD6mzLaxq1RiyE=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 800w, https://files01.danhgiaxe.com/BuL4AWT3L3kWY9azC7rm42hIRl8=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 1280w, https://files01.danhgiaxe.com/rYVaR2uPzJ18Dl91J_IdhFIxjPI=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 1600w, https://files01.danhgiaxe.com/NeFEZNrZa3XlEXJHHkzrsV-Qp18=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-4-124136.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/mRxoOGhS3qLXvt0QCP_22gAEmgo=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/Ye7XjypdSltKBGQkCxlMRdYLq7Q=/fit-in/360x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/jdzV_z2H_edwte_-4xajEKdsbDc=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 480w, https://files01.danhgiaxe.com/a4gTkjh5Jel6w9xddtdijrAzxvk=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 640w, https://files01.danhgiaxe.com/xEIuSb2HEhUZ0iMNmrxT8CqOffY=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 800w, https://files01.danhgiaxe.com/mRxoOGhS3qLXvt0QCP_22gAEmgo=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 1280w, https://files01.danhgiaxe.com/l9EfrcK9pEX5OCxgUWP0N0YI3sc=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 1600w, https://files01.danhgiaxe.com/N6QIE3dIIpJLMbR1o8n8mz_4h6s=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/jdzV_z2H_edwte_-4xajEKdsbDc=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 480w, https://files01.danhgiaxe.com/a4gTkjh5Jel6w9xddtdijrAzxvk=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 640w, https://files01.danhgiaxe.com/xEIuSb2HEhUZ0iMNmrxT8CqOffY=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 800w, https://files01.danhgiaxe.com/mRxoOGhS3qLXvt0QCP_22gAEmgo=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 1280w, https://files01.danhgiaxe.com/l9EfrcK9pEX5OCxgUWP0N0YI3sc=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 1600w, https://files01.danhgiaxe.com/N6QIE3dIIpJLMbR1o8n8mz_4h6s=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-10-124136.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/jnsyncLhCXNnAUPm0lbYh2cDhVQ=/fit-in/1280x0/20190912/danhgiaxe.com-1-2-124136.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/SxGTnSuaZktT0YbrfXXm2ARy074=/fit-in/360x0/20190912/danhgiaxe.com-1-2-124136.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/pgeC_KgFYsQIWWmJmwFOnKNUkws=/fit-in/480x0/20190912/danhgiaxe.com-1-2-124136.jpg 480w, https://files01.danhgiaxe.com/Exm3e1wjN4_HLjloqSS_RkiiYK8=/fit-in/640x0/20190912/danhgiaxe.com-1-2-124136.jpg 640w, https://files01.danhgiaxe.com/Ey2RVnqPRF2PKDYrQQO7t4jyU8Q=/fit-in/800x0/20190912/danhgiaxe.com-1-2-124136.jpg 800w, https://files01.danhgiaxe.com/jnsyncLhCXNnAUPm0lbYh2cDhVQ=/fit-in/1280x0/20190912/danhgiaxe.com-1-2-124136.jpg 1280w, https://files01.danhgiaxe.com/idDoHtHTUSYgOfk14y6720KFXQo=/fit-in/1600x0/20190912/danhgiaxe.com-1-2-124136.jpg 1600w, https://files01.danhgiaxe.com/_lJgGJJf6Coe-39lgVMgAMR22qY=/fit-in/2560x0/20190912/danhgiaxe.com-1-2-124136.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/pgeC_KgFYsQIWWmJmwFOnKNUkws=/fit-in/480x0/20190912/danhgiaxe.com-1-2-124136.jpg 480w, https://files01.danhgiaxe.com/Exm3e1wjN4_HLjloqSS_RkiiYK8=/fit-in/640x0/20190912/danhgiaxe.com-1-2-124136.jpg 640w, https://files01.danhgiaxe.com/Ey2RVnqPRF2PKDYrQQO7t4jyU8Q=/fit-in/800x0/20190912/danhgiaxe.com-1-2-124136.jpg 800w, https://files01.danhgiaxe.com/jnsyncLhCXNnAUPm0lbYh2cDhVQ=/fit-in/1280x0/20190912/danhgiaxe.com-1-2-124136.jpg 1280w, https://files01.danhgiaxe.com/idDoHtHTUSYgOfk14y6720KFXQo=/fit-in/1600x0/20190912/danhgiaxe.com-1-2-124136.jpg 1600w, https://files01.danhgiaxe.com/_lJgGJJf6Coe-39lgVMgAMR22qY=/fit-in/2560x0/20190912/danhgiaxe.com-1-2-124136.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/T2VapJ8qA8X5LSZ9hY82iL-Nj-o=/fit-in/1280x0/20190912/danhgiaxe.com-5-124136.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/bsfHRaSYJkNzflozGT6bauVJpgI=/fit-in/360x0/20190912/danhgiaxe.com-5-124136.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/V9qSeWQjl0_kH4BmGpBEQfaiy3o=/fit-in/480x0/20190912/danhgiaxe.com-5-124136.jpg 480w, https://files01.danhgiaxe.com/Jc5oi6GQeCNj0HzqmmLh6zsrVLs=/fit-in/640x0/20190912/danhgiaxe.com-5-124136.jpg 640w, https://files01.danhgiaxe.com/iQ4P-SecvBgahMfGxZwwuUCjIzg=/fit-in/800x0/20190912/danhgiaxe.com-5-124136.jpg 800w, https://files01.danhgiaxe.com/T2VapJ8qA8X5LSZ9hY82iL-Nj-o=/fit-in/1280x0/20190912/danhgiaxe.com-5-124136.jpg 1280w, https://files01.danhgiaxe.com/LyorL8bt4ZqGHV_3A9QC4YqkD5w=/fit-in/1600x0/20190912/danhgiaxe.com-5-124136.jpg 1600w, https://files01.danhgiaxe.com/d9secVu_6AhGD9lPeSjAdJ4KY7k=/fit-in/2560x0/20190912/danhgiaxe.com-5-124136.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/V9qSeWQjl0_kH4BmGpBEQfaiy3o=/fit-in/480x0/20190912/danhgiaxe.com-5-124136.jpg 480w, https://files01.danhgiaxe.com/Jc5oi6GQeCNj0HzqmmLh6zsrVLs=/fit-in/640x0/20190912/danhgiaxe.com-5-124136.jpg 640w, https://files01.danhgiaxe.com/iQ4P-SecvBgahMfGxZwwuUCjIzg=/fit-in/800x0/20190912/danhgiaxe.com-5-124136.jpg 800w, https://files01.danhgiaxe.com/T2VapJ8qA8X5LSZ9hY82iL-Nj-o=/fit-in/1280x0/20190912/danhgiaxe.com-5-124136.jpg 1280w, https://files01.danhgiaxe.com/LyorL8bt4ZqGHV_3A9QC4YqkD5w=/fit-in/1600x0/20190912/danhgiaxe.com-5-124136.jpg 1600w, https://files01.danhgiaxe.com/d9secVu_6AhGD9lPeSjAdJ4KY7k=/fit-in/2560x0/20190912/danhgiaxe.com-5-124136.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
</div>
<p>&nbsp;</p>
<p>Ph&#7847;n &#273;u&ocirc;i xe c&#361;ng l&agrave; &#273;i&#7875;m nh&#7845;n ch&iacute;nh trong ng&ocirc;n ng&#7919; thi&#7871;t k&#7871; c&#7911;a Lux A2.0. Khu v&#7921;c n&agrave;y n&#7893;i b&#7853;t v&#7899;i c&#7909;m &#273;&egrave;n h&#7853;u LED v&#7899;i hai d&#7843;i chi&#7871;u s&aacute;ng m&#7887;ng &#273;&#432;&#7907;c k&eacute;o d&agrave;i &#273;&#7871;n khu v&#7921;c trung t&acirc;m v&agrave; vu&#7889;t xu&#7889;ng l&agrave;m n&#7893;i b&#7853;t logo ch&#7919; V. Chi ti&#7871;t n&agrave;y t&#7841;o s&#7921; th&#7889;ng nh&#7845;t trong t&#7893;ng th&#7875; c&#7911;a xe, gi&uacute;p Lux A tr&#7903; n&ecirc;n h&agrave;i h&ograve;a, li&#7873;n l&#7841;c v&agrave; t&#7841;o &#273;&#432;&#7907;c n&eacute;t &#273;&#7863;c tr&#432;ng ri&ecirc;ng so v&#7899;i nh&#7919;ng m&#7851;u sedan kh&aacute;c tr&ecirc;n th&#7883; tr&#432;&#7901;ng.</p>
<p>Tuy nhi&ecirc;n, vi&#7879;c Vinfast s&#7917; d&#7909;ng &#273;&#7871;n hai h&agrave;ng ch&#7919; cho t&ecirc;n th&#432;&#417;ng hi&#7879;u v&agrave; t&ecirc;n xe ph&#7847;n n&agrave;o t&#7841;o c&#7843;m gi&aacute;c h&#417;i r&#7889;i cho khu v&#7921;c c&#7843;n sau. Tuy nhi&ecirc;n, chi ti&#7871;t n&agrave;y c&#361;ng &#273;&#432;&#7907;c b&ugrave; &#273;&#7855;p b&#7903;i thi&#7871;t k&#7871; ch&#7909;p &#7889;ng x&#7843; k&eacute;p m&#7841; chrome &#273;&#7865;p m&#7855;t v&agrave; th&#7875; thao.</p>
<h2 id="review4">N&#7897;i th&#7845;t v&agrave; trang b&#7883; ti&#7879;n nghi</h2>
<div class="medium-insert-images"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/ra1UFg767psLimJQl1BmKLfTZ_A=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg" rel="gallery"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/DogjCxutm8q2kbOzA8ssbRqIcGs=/fit-in/360x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg" sizes="689px" srcset="https://files01.danhgiaxe.com/sdUSlwD-Tg6zwJfmdYCm8LihYzA=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 480w, https://files01.danhgiaxe.com/Va4NOBzsgosfLXeF43IprvMQi4c=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 640w, https://files01.danhgiaxe.com/y228j8svl4Vz_ZyBkbFT6fyBGLo=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 800w, https://files01.danhgiaxe.com/ra1UFg767psLimJQl1BmKLfTZ_A=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 1280w, https://files01.danhgiaxe.com/coBO99nqY3kpQcSPVOchOZkM3Y4=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 1600w, https://files01.danhgiaxe.com/lhWINdnsQfhItgjTval4VGLFkxI=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/sdUSlwD-Tg6zwJfmdYCm8LihYzA=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 480w, https://files01.danhgiaxe.com/Va4NOBzsgosfLXeF43IprvMQi4c=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 640w, https://files01.danhgiaxe.com/y228j8svl4Vz_ZyBkbFT6fyBGLo=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 800w, https://files01.danhgiaxe.com/ra1UFg767psLimJQl1BmKLfTZ_A=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 1280w, https://files01.danhgiaxe.com/coBO99nqY3kpQcSPVOchOZkM3Y4=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 1600w, https://files01.danhgiaxe.com/lhWINdnsQfhItgjTval4VGLFkxI=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-16-124409.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<p>Khoang n&#7897;i th&#7845;t c&#7911;a Lux A2.0 g&acirc;y &#7845;n t&#432;&#7907;ng v&#7899;i ng&#432;&#7901;i d&ugrave;ng v&#7899;i l&#7889;i thi&#7871;t k&#7871; sang tr&#7885;ng, s&#7855;c s&#7843;o v&agrave; g&#7885;n g&agrave;ng. C&aacute;c v&#7853;t li&#7879;u ch&iacute;nh b&ecirc;n trong khoang cabin l&agrave; nh&ocirc;m, g&#7895; v&agrave; da mang &#273;&#7871;n c&#7843;m gi&aacute;c cao c&#7845;p v&agrave; trang nh&atilde; cho h&agrave;nh kh&aacute;ch. &#272;i&#7875;m nh&#7845;n ch&iacute;nh &#7903; khu v&#7921;c b&#7843;ng t&aacute;p l&ocirc; l&agrave; m&agrave;n h&igrave;nh c&#7843;m &#7913;ng trung t&acirc;m k&iacute;ch th&#432;&#7899;c l&#7899;n 10.4 inch &#273;i&#7873;u khi&#7875;n h&#7847;u h&#7871;t c&aacute;c ch&#7913;c n&#259;ng trong xe. Chi ti&#7871;t mang nhi&#7873;u t&iacute;nh c&ocirc;ng ngh&#7879; n&agrave;y c&#361;ng &#273;&#432;&#7907;c t&igrave;m th&#7845;y tr&ecirc;n nh&#7919;ng chi&#7871;c Tesla ch&#7841;y &#273;i&#7879;n n&#7893;i ti&#7871;ng.</p>
<p class="">&nbsp;</p>
<div class="row">
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/E0lu6sPAA97DrAPG8M7q3oVY2kk=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/essjVrsV7XBwOBhXYMuHLhAe-Rk=/fit-in/360x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/2FdAqH6gIeriVUdebEB3apbXblg=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 480w, https://files01.danhgiaxe.com/EAuVYKPBWY1CeMdk1vs661Y2o1A=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 640w, https://files01.danhgiaxe.com/UzlNbR0c2bpNCbqz_zh06KNEUoM=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 800w, https://files01.danhgiaxe.com/E0lu6sPAA97DrAPG8M7q3oVY2kk=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 1280w, https://files01.danhgiaxe.com/r8rVUSmtOPOd11hlM77fjS9OSCo=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 1600w, https://files01.danhgiaxe.com/tLX21KTu0yMeuG13vNZYmv8KaC0=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/2FdAqH6gIeriVUdebEB3apbXblg=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 480w, https://files01.danhgiaxe.com/EAuVYKPBWY1CeMdk1vs661Y2o1A=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 640w, https://files01.danhgiaxe.com/UzlNbR0c2bpNCbqz_zh06KNEUoM=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 800w, https://files01.danhgiaxe.com/E0lu6sPAA97DrAPG8M7q3oVY2kk=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 1280w, https://files01.danhgiaxe.com/r8rVUSmtOPOd11hlM77fjS9OSCo=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 1600w, https://files01.danhgiaxe.com/tLX21KTu0yMeuG13vNZYmv8KaC0=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-13-124439.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/dVb5DsySfRK77vZKfA5AKQNZ_zY=/fit-in/1280x0/20190912/danhgiaxe.com-6-124439.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/9oPC6GEMODasVg8sJxfYA4NJQac=/fit-in/360x0/20190912/danhgiaxe.com-6-124439.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/bLG2IHWNkHGGPkeq4XfQjZYry10=/fit-in/480x0/20190912/danhgiaxe.com-6-124439.jpg 480w, https://files01.danhgiaxe.com/peRKsD5935IP1pk75ohe0q0JcpY=/fit-in/640x0/20190912/danhgiaxe.com-6-124439.jpg 640w, https://files01.danhgiaxe.com/KnOh4j9LlWYZ23udagP914kOxFI=/fit-in/800x0/20190912/danhgiaxe.com-6-124439.jpg 800w, https://files01.danhgiaxe.com/dVb5DsySfRK77vZKfA5AKQNZ_zY=/fit-in/1280x0/20190912/danhgiaxe.com-6-124439.jpg 1280w, https://files01.danhgiaxe.com/RUAoA8Waq6jxSWKpPI-LMLPtSHs=/fit-in/1600x0/20190912/danhgiaxe.com-6-124439.jpg 1600w, https://files01.danhgiaxe.com/VBUYA98yz1yuFFWdQUW73zexriw=/fit-in/2560x0/20190912/danhgiaxe.com-6-124439.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/bLG2IHWNkHGGPkeq4XfQjZYry10=/fit-in/480x0/20190912/danhgiaxe.com-6-124439.jpg 480w, https://files01.danhgiaxe.com/peRKsD5935IP1pk75ohe0q0JcpY=/fit-in/640x0/20190912/danhgiaxe.com-6-124439.jpg 640w, https://files01.danhgiaxe.com/KnOh4j9LlWYZ23udagP914kOxFI=/fit-in/800x0/20190912/danhgiaxe.com-6-124439.jpg 800w, https://files01.danhgiaxe.com/dVb5DsySfRK77vZKfA5AKQNZ_zY=/fit-in/1280x0/20190912/danhgiaxe.com-6-124439.jpg 1280w, https://files01.danhgiaxe.com/RUAoA8Waq6jxSWKpPI-LMLPtSHs=/fit-in/1600x0/20190912/danhgiaxe.com-6-124439.jpg 1600w, https://files01.danhgiaxe.com/VBUYA98yz1yuFFWdQUW73zexriw=/fit-in/2560x0/20190912/danhgiaxe.com-6-124439.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/jvD5PrC6PZf_aqvRFgx0oUvQk7A=/fit-in/1280x0/20190912/danhgiaxe.com-7-124439.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/d1tdAZX0x7_b3gt26JOAwKskonA=/fit-in/360x0/20190912/danhgiaxe.com-7-124439.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/UpFb0MK2PM37H5sSpPEot5Y902w=/fit-in/480x0/20190912/danhgiaxe.com-7-124439.jpg 480w, https://files01.danhgiaxe.com/woVpRSuaqo4vz_SIYCwtK8RJo-A=/fit-in/640x0/20190912/danhgiaxe.com-7-124439.jpg 640w, https://files01.danhgiaxe.com/A7UmS1nxlqXK3zBOEgL2oYCmQZ0=/fit-in/800x0/20190912/danhgiaxe.com-7-124439.jpg 800w, https://files01.danhgiaxe.com/jvD5PrC6PZf_aqvRFgx0oUvQk7A=/fit-in/1280x0/20190912/danhgiaxe.com-7-124439.jpg 1280w, https://files01.danhgiaxe.com/2FJNPaUq9fD2o3dv2xKkgRQaVe8=/fit-in/1600x0/20190912/danhgiaxe.com-7-124439.jpg 1600w, https://files01.danhgiaxe.com/WbC32CWnO4096lbzFng5XIxsRwQ=/fit-in/2560x0/20190912/danhgiaxe.com-7-124439.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/UpFb0MK2PM37H5sSpPEot5Y902w=/fit-in/480x0/20190912/danhgiaxe.com-7-124439.jpg 480w, https://files01.danhgiaxe.com/woVpRSuaqo4vz_SIYCwtK8RJo-A=/fit-in/640x0/20190912/danhgiaxe.com-7-124439.jpg 640w, https://files01.danhgiaxe.com/A7UmS1nxlqXK3zBOEgL2oYCmQZ0=/fit-in/800x0/20190912/danhgiaxe.com-7-124439.jpg 800w, https://files01.danhgiaxe.com/jvD5PrC6PZf_aqvRFgx0oUvQk7A=/fit-in/1280x0/20190912/danhgiaxe.com-7-124439.jpg 1280w, https://files01.danhgiaxe.com/2FJNPaUq9fD2o3dv2xKkgRQaVe8=/fit-in/1600x0/20190912/danhgiaxe.com-7-124439.jpg 1600w, https://files01.danhgiaxe.com/WbC32CWnO4096lbzFng5XIxsRwQ=/fit-in/2560x0/20190912/danhgiaxe.com-7-124439.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m3 s6"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/mK4-Ut2BmyFYqHHh1qyX6JPng2s=/fit-in/1280x0/20190912/danhgiaxe.com-9-124440.jpg" rel="gallery3"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/8YCJDfy7FKsHygZGXNgaQYAueqw=/fit-in/360x0/20190912/danhgiaxe.com-9-124440.jpg" sizes="157px" srcset="https://files01.danhgiaxe.com/vaTkccLsvwZ2KvXy9zzGR7Mqo-I=/fit-in/480x0/20190912/danhgiaxe.com-9-124440.jpg 480w, https://files01.danhgiaxe.com/WWomdwsNdAlbku7QLBeI1gC9kWw=/fit-in/640x0/20190912/danhgiaxe.com-9-124440.jpg 640w, https://files01.danhgiaxe.com/zImCxejNPycNCS63Af2T-Sjm0-c=/fit-in/800x0/20190912/danhgiaxe.com-9-124440.jpg 800w, https://files01.danhgiaxe.com/mK4-Ut2BmyFYqHHh1qyX6JPng2s=/fit-in/1280x0/20190912/danhgiaxe.com-9-124440.jpg 1280w, https://files01.danhgiaxe.com/80lLKPYfY08GyqQRhrrC0T1rEq4=/fit-in/1600x0/20190912/danhgiaxe.com-9-124440.jpg 1600w, https://files01.danhgiaxe.com/_BC_n1GJPle1XrMhWFhTdbqh8S4=/fit-in/2560x0/20190912/danhgiaxe.com-9-124440.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/vaTkccLsvwZ2KvXy9zzGR7Mqo-I=/fit-in/480x0/20190912/danhgiaxe.com-9-124440.jpg 480w, https://files01.danhgiaxe.com/WWomdwsNdAlbku7QLBeI1gC9kWw=/fit-in/640x0/20190912/danhgiaxe.com-9-124440.jpg 640w, https://files01.danhgiaxe.com/zImCxejNPycNCS63Af2T-Sjm0-c=/fit-in/800x0/20190912/danhgiaxe.com-9-124440.jpg 800w, https://files01.danhgiaxe.com/mK4-Ut2BmyFYqHHh1qyX6JPng2s=/fit-in/1280x0/20190912/danhgiaxe.com-9-124440.jpg 1280w, https://files01.danhgiaxe.com/80lLKPYfY08GyqQRhrrC0T1rEq4=/fit-in/1600x0/20190912/danhgiaxe.com-9-124440.jpg 1600w, https://files01.danhgiaxe.com/_BC_n1GJPle1XrMhWFhTdbqh8S4=/fit-in/2560x0/20190912/danhgiaxe.com-9-124440.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
</div>
<p>&nbsp;</p>
<p>Trang ch&#7911; m&agrave;n h&igrave;nh s&#7869; ch&#7881; c&oacute; 03 bi&#7875;u t&#432;&#7907;ng truy c&#7853;p (g&#7891;m &#273;i&#7879;n tho&#7841;i - &#273;&#7883;nh v&#7883; - &acirc;m thanh) v&agrave; d&ograve;ng tr&#7841;ng th&aacute;i hi&#7875;n th&#7883; h&#7879; th&#7889;ng ki&#7875;m so&aacute;t kh&iacute; h&#7853;u tr&ecirc;n xe. Bao l&#7845;y m&agrave;n h&igrave;nh l&agrave; hai c&#7917;a gi&oacute; &#273;i&#7873;u h&ograve;a d&#7841;ng ng&#361; gi&aacute;c ch&#7841;y d&#7885;c t&#7841;o c&#7843;m gi&aacute;c g&#7885;n g&agrave;ng v&agrave; li&#7873;n m&#7841;ch. H&#7879; th&#7889;ng &acirc;m thanh tr&ecirc;n xe l&agrave; lo&#7841;i 8 loa &#7903; b&#7843;n ti&ecirc;u chu&#7849;n v&agrave; 13 loa &#7903; b&#7843;n cao c&#7845;p.</p>
<p class="">&nbsp;</p>
<div class="row">
<div class="col m6 s12"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/TXfeY7173Mgq71h-tMc9f_uOF64=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-20-124515.jpg" rel="gallery2"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/0IBnIdVi7smSHYOw09axRu_EK6w=/fit-in/360x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-20-124515.jpg" sizes="334px" srcset="https://files01.danhgiaxe.com/cSMtPTO0eyZrs-H_xMDXYl3I5MQ=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-20-124515.jpg 640w, https://files01.danhgiaxe.com/TXfeY7173Mgq71h-tMc9f_uOF64=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-20-124515.jpg 1280w, https://files01.danhgiaxe.com/YPaqJ5963vbF_0bUkwatD3j-7UA=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-20-124515.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/cSMtPTO0eyZrs-H_xMDXYl3I5MQ=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-20-124515.jpg 640w, https://files01.danhgiaxe.com/TXfeY7173Mgq71h-tMc9f_uOF64=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-20-124515.jpg 1280w, https://files01.danhgiaxe.com/YPaqJ5963vbF_0bUkwatD3j-7UA=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-20-124515.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<div class="col m6 s12"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/M-pJGjq0yDahAQ_oEqRPYDTI3w8=/fit-in/1280x0/20190912/danhgiaxe.com-9-124516.jpg" rel="gallery2"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/1kb4FjLkJB9NKFZZ7xv66hmJdkg=/fit-in/360x0/20190912/danhgiaxe.com-9-124516.jpg" sizes="334px" srcset="https://files01.danhgiaxe.com/5eSvbHPACzPDFBdLCdcwB-nUb74=/fit-in/640x0/20190912/danhgiaxe.com-9-124516.jpg 640w, https://files01.danhgiaxe.com/M-pJGjq0yDahAQ_oEqRPYDTI3w8=/fit-in/1280x0/20190912/danhgiaxe.com-9-124516.jpg 1280w, https://files01.danhgiaxe.com/45ZJJp_mD3eymJffWTvR6b9CpfU=/fit-in/2560x0/20190912/danhgiaxe.com-9-124516.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/5eSvbHPACzPDFBdLCdcwB-nUb74=/fit-in/640x0/20190912/danhgiaxe.com-9-124516.jpg 640w, https://files01.danhgiaxe.com/M-pJGjq0yDahAQ_oEqRPYDTI3w8=/fit-in/1280x0/20190912/danhgiaxe.com-9-124516.jpg 1280w, https://files01.danhgiaxe.com/45ZJJp_mD3eymJffWTvR6b9CpfU=/fit-in/2560x0/20190912/danhgiaxe.com-9-124516.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
</div>
<p>&nbsp;</p>
<p>V&#7873; trang b&#7883; h&#7895; tr&#7907; l&aacute;i, Vinfast trang b&#7883; cho m&#7851;u sedan c&#7911;a m&igrave;nh v&ocirc; l&#259;ng 3 ch&#7845;u b&#7885;c da t&iacute;ch h&#7907;p c&aacute;c n&uacute;t &#273;i&#7873;u khi&#7875;n ch&#7913;c n&#259;ng v&#7899;i logo V n&#7893;i b&#7853;t &#7903; ch&iacute;nh gi&#7919;a. &#272;&#7863;t ngay ph&iacute;a sau l&agrave; c&#7909;m &#273;&#7891;ng h&#7891; l&aacute;i v&#7899;i m&agrave;n h&igrave;nh hi&#7875;n th&#7883; &#273;a th&ocirc;ng tin 7 inch k&#7871;t h&#7907;p hai &#273;&#7891;ng h&#7891; analog b&aacute;o t&#7889;c &#273;&#7897; xe v&agrave; v&ograve;ng tua m&aacute;y. V&ocirc; l&#259;ng b&#7885;c da, ch&#7881;nh c&#417; 4 h&#432;&#7899;ng v&agrave; c&oacute; t&iacute;ch h&#7907;p &#273;i&#7873;u ch&#7881;nh &acirc;m l&#432;&#7907;ng, t&#7921; &#273;i&#7873;u ch&#7881;nh khi l&ugrave;i, ki&#7875;m so&aacute;t h&agrave;nh tr&igrave;nh.</p>
<p class="">&nbsp;</p>
<p>To&agrave;n b&#7897; h&#7879; th&#7889;ng gh&#7871; ng&#7891;i &#273;&#7873;u b&#7885;c da cao c&#7845;p v&#7899;i nhi&#7873;u t&ugrave;y ch&#7885;n m&agrave;u kh&aacute;c nhau. &#272;&#432;&#7907;c &#273;&#7883;nh v&#7883; &#7903; ph&acirc;n kh&uacute;c xe sang n&ecirc;n VinFast LUX A2.0 mang &#273;&#7871;n cho ng&#432;&#7901;i d&ugrave;ng r&#7845;t nhi&#7873;u ti&#7879;n nghi &#273;&aacute;ng ti&#7873;n nh&#432;: h&#7879; th&#7889;ng s&#7841;c kh&ocirc;ng d&acirc;y, &#273;&egrave;n trang tr&iacute; n&#7897;i th&#7845;t, h&#7879; th&#7889;ng ph&aacute;t wifi, r&egrave;m che n&#7855;ng ch&#7881;nh &#273;i&#7879;n, kh&#7903;i &#273;&#7897;ng b&#7857;ng n&uacute;t b&#7845;m, &#273;i&#7873;u h&ograve;a t&#7921; &#273;&#7897;ng &#273;&#7897;c l&#7853;p 2 v&ugrave;ng, gh&#7871; ch&#7881;nh &#273;i&#7879;n...&nbsp;</p>
<div class="medium-insert-images"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/kZtcCR3VT71pbsnZG1BmXMPVnlM=/fit-in/1280x0/20190909/img_7763-000844.jpg" rel="gallery"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/4kCHSaaLQrx3M2ds6FoAm7bIDbs=/fit-in/360x0/20190909/img_7763-000844.jpg" sizes="689px" srcset="https://files01.danhgiaxe.com/XppGtLiljjHwMUvPZGDtTmXyl9s=/fit-in/480x0/20190909/img_7763-000844.jpg 480w, https://files01.danhgiaxe.com/6K-4fuDOglMK9pXlGMHXQESIUyw=/fit-in/640x0/20190909/img_7763-000844.jpg 640w, https://files01.danhgiaxe.com/UgOp6ju2T-HKe11os4Imv_ElDI4=/fit-in/800x0/20190909/img_7763-000844.jpg 800w, https://files01.danhgiaxe.com/kZtcCR3VT71pbsnZG1BmXMPVnlM=/fit-in/1280x0/20190909/img_7763-000844.jpg 1280w, https://files01.danhgiaxe.com/PQTSoaOK28rVPryXp25ZjVYKUI8=/fit-in/1600x0/20190909/img_7763-000844.jpg 1600w, https://files01.danhgiaxe.com/oSDBZzYHOfbW3VjX4tq12_Ywr_k=/fit-in/2560x0/20190909/img_7763-000844.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/XppGtLiljjHwMUvPZGDtTmXyl9s=/fit-in/480x0/20190909/img_7763-000844.jpg 480w, https://files01.danhgiaxe.com/6K-4fuDOglMK9pXlGMHXQESIUyw=/fit-in/640x0/20190909/img_7763-000844.jpg 640w, https://files01.danhgiaxe.com/UgOp6ju2T-HKe11os4Imv_ElDI4=/fit-in/800x0/20190909/img_7763-000844.jpg 800w, https://files01.danhgiaxe.com/kZtcCR3VT71pbsnZG1BmXMPVnlM=/fit-in/1280x0/20190909/img_7763-000844.jpg 1280w, https://files01.danhgiaxe.com/PQTSoaOK28rVPryXp25ZjVYKUI8=/fit-in/1600x0/20190909/img_7763-000844.jpg 1600w, https://files01.danhgiaxe.com/oSDBZzYHOfbW3VjX4tq12_Ywr_k=/fit-in/2560x0/20190909/img_7763-000844.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<h2 id="review5">V&#7853;n h&agrave;nh v&agrave; an to&agrave;n</h2>
<div class="medium-insert-images"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/KVeNwlpnnjwxIDceIgqMjKH4tG4=/fit-in/1280x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg" rel="gallery"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/HPKwi54XtO1RDRgsvkJe6J11Uts=/fit-in/360x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg" sizes="689px" srcset="https://files01.danhgiaxe.com/PIZdnOWUNiWxbXzaZOm_yj-IjHw=/fit-in/480x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 480w, https://files01.danhgiaxe.com/Jw_2ItX2W5MH9_wUstMlM4BHMDE=/fit-in/640x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 640w, https://files01.danhgiaxe.com/yth60-3MACTvGy-b_muhxfESjF8=/fit-in/800x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 800w, https://files01.danhgiaxe.com/KVeNwlpnnjwxIDceIgqMjKH4tG4=/fit-in/1280x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 1280w, https://files01.danhgiaxe.com/Pa_8uzdjDw4rBXelyE4YBcSSvbY=/fit-in/1600x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 1600w, https://files01.danhgiaxe.com/2HB8yuD4eTAmTw-GOdhazegCD9E=/fit-in/2560x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/PIZdnOWUNiWxbXzaZOm_yj-IjHw=/fit-in/480x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 480w, https://files01.danhgiaxe.com/Jw_2ItX2W5MH9_wUstMlM4BHMDE=/fit-in/640x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 640w, https://files01.danhgiaxe.com/yth60-3MACTvGy-b_muhxfESjF8=/fit-in/800x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 800w, https://files01.danhgiaxe.com/KVeNwlpnnjwxIDceIgqMjKH4tG4=/fit-in/1280x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 1280w, https://files01.danhgiaxe.com/Pa_8uzdjDw4rBXelyE4YBcSSvbY=/fit-in/1600x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 1600w, https://files01.danhgiaxe.com/2HB8yuD4eTAmTw-GOdhazegCD9E=/fit-in/2560x0/20190912/danhgiaxe.com-1-copy-2-124910.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<p>VinFast LUX SA2.0 v&agrave; LUX A2.0 &#273;&#7873;u s&#7917; d&#7909;ng chung &#273;&#7897;ng c&#417; x&#259;ng t&#259;ng &aacute;p 2.0L t&#7915; n&#7873;n t&#7843;ng c&#7911;a&nbsp;<a title="BMW" href="https://www.danhgiaxe.com/bmw">BMW</a>&nbsp;N20. Tuy nhi&ecirc;n, b&#7843;n sedan cho ra hai m&#7913;c c&ocirc;ng su&#7845;t l&#7847;n l&#432;&#7907;t l&agrave; 228 m&atilde; l&#7921;c v&agrave; moment xo&#7855;n c&#7921;c &#273;&#7841;i &#273;&#7841;t 350 Nm cho b&#7843;n cao c&#7845;p v&agrave; 174 m&atilde; l&#7921;c / 300 Nm cho b&#7843;n ti&ecirc;u chu&#7849;n. S&#7913;c m&#7841;nh truy&#7873;n &#273;&#7871;n b&aacute;nh sau (RWD) th&ocirc;ng qua h&#7897;p s&#7889; t&#7921; &#273;&#7897;ng ZF 8 c&#7845;p.</p>
<div class="medium-insert-images medium-insert-active"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/q1lrL_955BQAx1IY_xsGks3rwts=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg" rel="gallery"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/BqO0hkJtegvQLU5w0lQpK1BU51c=/fit-in/360x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg" sizes="689px" srcset="https://files01.danhgiaxe.com/0FRO_yuVSGHMs_APreUMZhjzNDk=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 480w, https://files01.danhgiaxe.com/2p7k1dgEl1GzkUiupKjiX81nFrg=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 640w, https://files01.danhgiaxe.com/k90gwdsBmm-CZWjbryEy9td9Kao=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 800w, https://files01.danhgiaxe.com/q1lrL_955BQAx1IY_xsGks3rwts=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 1280w, https://files01.danhgiaxe.com/0DMg0fqoYcc8ImFOepDhzaw_tcA=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 1600w, https://files01.danhgiaxe.com/DM1V-W2tZbZveQGokWVv9_-PF6I=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/0FRO_yuVSGHMs_APreUMZhjzNDk=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 480w, https://files01.danhgiaxe.com/2p7k1dgEl1GzkUiupKjiX81nFrg=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 640w, https://files01.danhgiaxe.com/k90gwdsBmm-CZWjbryEy9td9Kao=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 800w, https://files01.danhgiaxe.com/q1lrL_955BQAx1IY_xsGks3rwts=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 1280w, https://files01.danhgiaxe.com/0DMg0fqoYcc8ImFOepDhzaw_tcA=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 1600w, https://files01.danhgiaxe.com/DM1V-W2tZbZveQGokWVv9_-PF6I=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-12-124937.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<p>C&#7843; hai m&#7851;u VinFast LUX A2.0 v&agrave; LUX SA2.0 &#273;&#7873;u c&oacute; h&#7879; th&#7889;ng treo &#273;&#7897;c l&#7853;p bao g&#7891;m &#7903; ph&iacute;a tr&#432;&#7899;c l&agrave; lo&#7841;i 2 &#273;&ograve;n treo v&#7899;i c&agrave;ng ch&#7919; A d&#432;&#7899;i lo&#7841;i 2 tr&#7909;c v&agrave; c&oacute; thanh t&#259;ng c&#7913;ng, h&#7879; th&#7889;ng treo b&#7857;ng nh&ocirc;m; &#7903; ph&iacute;a sau, lo&#7841;i 5 thanh n&#7889;i c&oacute; r&ocirc; tuyn kh&#7899;p c&#7847;u v&agrave; thanh c&acirc;n b&#7857;ng d&#7841;ng &#7889;ng.</p>
<div class="medium-insert-images"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/ywddfmM-VI5D__I4EPw9yt-J38k=/fit-in/1280x0/20190909/img_7761-001304.jpg" rel="gallery"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/j5VZ5An-4-kX9R4400aHJGN2HsY=/fit-in/360x0/20190909/img_7761-001304.jpg" sizes="689px" srcset="https://files01.danhgiaxe.com/5VnHDikF52cRvrPn9N2IgRChr10=/fit-in/480x0/20190909/img_7761-001304.jpg 480w, https://files01.danhgiaxe.com/rQXNCM4pI6sDvGIJDd15MFY-XGg=/fit-in/640x0/20190909/img_7761-001304.jpg 640w, https://files01.danhgiaxe.com/UEGkFDmZUi2D32yVAYVC1PPUrjs=/fit-in/800x0/20190909/img_7761-001304.jpg 800w, https://files01.danhgiaxe.com/ywddfmM-VI5D__I4EPw9yt-J38k=/fit-in/1280x0/20190909/img_7761-001304.jpg 1280w, https://files01.danhgiaxe.com/Cr1UOt-S9L9tLPdguF1NBnIGGEc=/fit-in/1600x0/20190909/img_7761-001304.jpg 1600w, https://files01.danhgiaxe.com/r8aL_FvuVWpD7-7WE-CJlBY6-h4=/fit-in/2560x0/20190909/img_7761-001304.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/5VnHDikF52cRvrPn9N2IgRChr10=/fit-in/480x0/20190909/img_7761-001304.jpg 480w, https://files01.danhgiaxe.com/rQXNCM4pI6sDvGIJDd15MFY-XGg=/fit-in/640x0/20190909/img_7761-001304.jpg 640w, https://files01.danhgiaxe.com/UEGkFDmZUi2D32yVAYVC1PPUrjs=/fit-in/800x0/20190909/img_7761-001304.jpg 800w, https://files01.danhgiaxe.com/ywddfmM-VI5D__I4EPw9yt-J38k=/fit-in/1280x0/20190909/img_7761-001304.jpg 1280w, https://files01.danhgiaxe.com/Cr1UOt-S9L9tLPdguF1NBnIGGEc=/fit-in/1600x0/20190909/img_7761-001304.jpg 1600w, https://files01.danhgiaxe.com/r8aL_FvuVWpD7-7WE-CJlBY6-h4=/fit-in/2560x0/20190909/img_7761-001304.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<p>V&#7873; m&#7863;t an to&agrave;n, Vinfast kh&#7859;ng &#273;&#7883;nh m&#7851;u sedan c&#7911;a m&igrave;nh s&#7903; h&#7919;u khung xe c&#7913;ng c&aacute;p l&agrave;m t&#7915; nh&ocirc;m v&agrave; th&eacute;p d&#7853;p n&oacute;ng v&#7899;i &#273;&#7897; b&#7873;n cao. M&#7895;i b&#7897; khung xe &#273;&#432;&#7907;c tinh ch&#7881;nh &#273;&#7875; c&oacute; c&oacute; t&#7847;n s&#7889; dao &#273;&#7897;ng t&#7921; nhi&ecirc;n cao gi&uacute;p ch&#7889;ng rung v&agrave; kh&#7889;ng ch&#7871; l&#7921;c v&#7863;n xo&#7855;n, l&#7921;c u&#7889;n, t&#7915; &#273;&oacute; gi&uacute;p ng&#432;&#7901;i l&aacute;i ki&#7875;m so&aacute;t xe t&#7889;t h&#417;n.</p>
<div class="medium-insert-images"><a class="fancybox" title="" href="https://files01.danhgiaxe.com/b1oadtex6YDVx5fv995oLkn4Nvg=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg" rel="gallery"><img class="lazyautosizes lazyloaded" src="https://files01.danhgiaxe.com/qP3b4Z4zlb-GoTlE9-IdDYxfyxg=/fit-in/360x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg" sizes="689px" srcset="https://files01.danhgiaxe.com/LDwFNNH6dH0nDUv0QC3E7ZMYgP0=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 480w, https://files01.danhgiaxe.com/4mVrcnyBvyzeV4btFYLMYBt50Dw=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 640w, https://files01.danhgiaxe.com/Zpf_XgA0Al-nk4rxwvRS49LOUDQ=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 800w, https://files01.danhgiaxe.com/b1oadtex6YDVx5fv995oLkn4Nvg=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 1280w, https://files01.danhgiaxe.com/Z6ruv9AVqWI50Yry-a3eXIKgAbU=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 1600w, https://files01.danhgiaxe.com/-zsUjEvSqLmnJ39HYJ4nHcmvZHk=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 2560w" alt="" width="100%" data-srcset="https://files01.danhgiaxe.com/LDwFNNH6dH0nDUv0QC3E7ZMYgP0=/fit-in/480x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 480w, https://files01.danhgiaxe.com/4mVrcnyBvyzeV4btFYLMYBt50Dw=/fit-in/640x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 640w, https://files01.danhgiaxe.com/Zpf_XgA0Al-nk4rxwvRS49LOUDQ=/fit-in/800x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 800w, https://files01.danhgiaxe.com/b1oadtex6YDVx5fv995oLkn4Nvg=/fit-in/1280x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 1280w, https://files01.danhgiaxe.com/Z6ruv9AVqWI50Yry-a3eXIKgAbU=/fit-in/1600x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 1600w, https://files01.danhgiaxe.com/-zsUjEvSqLmnJ39HYJ4nHcmvZHk=/fit-in/2560x0/20190912/danhgiaxe.com-vinfast-lux-a2.0-14-124800.jpg 2560w" data-sizes="auto" data-optimumx="1.6" /></a></div>
<p>H&#417;n n&#7919;a, xe c&ograve;n &#273;&#432;&#7907;c l&#7855;p &#273;&#7863;t &#273;&#7871;n 06 t&uacute;i kh&iacute; (02 t&uacute;i kh&iacute; tr&#432;&#7899;c, 02 t&uacute;i kh&iacute; b&ecirc;n v&agrave; t&uacute;i kh&iacute; r&egrave;m) &#7903; m&#7885;i phi&ecirc;n b&#7843;n. C&aacute;c h&#7879; th&#7889;ng an to&agrave;n ch&#7911; &#273;&#7897;ng bao g&#7891;m: c&ocirc;ng ngh&#7879; ki&#7875;m so&aacute;t g&oacute;c cua v&agrave; ch&#7889;ng l&#7853;t, camera to&agrave;n c&#7843;nh 360, phanh tay &#273;i&#7879;n t&#7917;, kh&#7903;i h&agrave;nh ngang d&#7889;c, phanh ch&#7889;ng b&oacute; c&#7913;ng ABS, h&#7895; tr&#7907; ph&acirc;n ph&#7889;i l&#7921;c phanh &#273;i&#7879;n t&#7917; EBD, h&#7895; tr&#7907; phanh kh&#7849;n c&#7845;p.</p>
<h2 id="review6">&#272;&aacute;nh gi&aacute; chung</h2>
<p>L&agrave; m&#7897;t th&#432;&#417;ng hi&#7879;u non tr&#7867; v&#7915;a ra m&#7855;t th&#7883; tr&#432;&#7901;ng, r&otilde; r&agrave;ng kh&aacute;ch h&agrave;ng c&oacute; quy&#7873;n &#273;&#7863;t d&#7845;u ch&#7845;m h&#7887;i v&#7873; ch&#7845;t l&#432;&#7907;ng c&#7911;a nh&#7919;ng m&#7851;u xe Vinfast. Tuy nhi&ecirc;n, ph&#7843;n &#7913;ng ban &#273;&#7847;u c&#7911;a gi&#7899;i truy&#7873;n th&ocirc;ng c&#361;ng nh&#432; c&#7897;ng &#273;&#7891;ng v&#7873; hai m&#7851;u Lux A v&agrave; Lux SA l&agrave; kh&aacute; t&iacute;ch c&#7921;c, h&#7913;a h&#7865;n s&#7869; &#273;&#432;&#7907;c &#273;&oacute;n nh&#7853;n t&#7889;t tr&ecirc;n th&#7883; tr&#432;&#7901;ng. C&ugrave;ng v&#7899;i vi&#7879;c &#273;&#432;&#7907;c xu&#7845;t th&acirc;n t&#7915; m&#7897;t t&#7853;p &#273;o&agrave;n l&#7899;n nh&#432; Vingroup, m&#7851;u sedan h&#7841;ng sang c&#7911;a Vinfast cho th&#7845;y ti&#7873;m n&#259;ng tr&#7903; th&agrave;nh m&#7897;t &#273;&#7889;i th&#7911; &#273;&aacute;ng g&#7901;m cho c&aacute;c h&atilde;ng xe &ldquo;g&#7841;o c&#7897;i&rdquo; tr&ecirc;n th&#7883; tr&#432;&#7901;ng nh&#432; Honda, Toyota,&hellip;</p>
<p>&nbsp;</p>
<div id="thongso">
<div class="title">
<h2>TH&Ocirc;NG S&#7888; K&#7928; THU&#7852;T</h2>
</div>
<div class="desc">
<table>
<tbody>
<tr>
<td>
<h4>Vinfast LUX A2.0</h4>
<h5>896 tri&#7879;u</h5>
</td>
</tr>
<tr>
<td>D&aacute;ng xe<br />Sedan</td>
</tr>
<tr>
<td>S&#7889; ch&#7895; ng&#7891;i<br />5</td>
</tr>
<tr>
<td>S&#7889; c&#7917;a s&#7893;<br />5.00</td>
</tr>
<tr>
<td>Ki&#7875;u &#273;&#7897;ng c&#417;</td>
</tr>
<tr>
<td>Dung t&iacute;ch &#273;&#7897;ng c&#417;<br />2.00L</td>
</tr>
<tr>
<td>C&ocirc;ng su&#7845;t c&#7921;c &#273;&#7841;i<br />174.00 m&atilde; l&#7921;c , t&#7841;i 4500.00 v&ograve;ng/ph&uacute;t</td>
</tr>
<tr>
<td>Momen xo&#7855;n c&#7921;c &#273;&#7841;i<br />300.00 Nm , t&#7841;i 1750.00 - 4000.00 v&ograve;ng/ph&uacute;t</td>
</tr>
<tr>
<td>H&#7897;p s&#7889;<br />8.00 c&#7845;p</td>
</tr>
<tr>
<td>Ki&#7875;u d&#7851;n &#273;&#7897;ng</td>
</tr>
<tr>
<td>M&#7913;c ti&ecirc;u hao nhi&ecirc;n li&#7879;u<br />0.00l/100km</td>
</tr>
<tr>
<td>&#272;i&#7873;u h&ograve;a<br />T&#7921; &#273;&#7897;ng v&ugrave;ng</td>
</tr>
<tr>
<td>S&#7889; l&#432;&#7907;ng t&uacute;i kh&iacute;<br />6 t&uacute;i kh&iacute;</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>', CAST(N'2021-02-18' AS Date), NULL, 8, NULL, NULL, N'https://files01.danhgiaxe.com/E2oMfwJgniJSx6CmMpEI-L4xgpc=/fit-in/1280x0/20190909/img_7745-000119.jpg', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (42, N'VinFast Lux SA 2.0, Giá lăn bánh, thông số, đánh giá', N'<h1 class="title_news_detail fbold" data-id="200293">VinFast Lux SA2.0: Gi&aacute; l&#259;n b&aacute;nh, th&ocirc;ng s&#7889;, &#273;&aacute;nh gi&aacute; (02/2021)</h1>
<p class="typo_news_detail fbold">VinFast Lux SA2.0 2021 l&agrave; m&#7851;u SUV sang tr&#7885;ng &#273;&#7871;n t&#7915; th&#432;&#417;ng hi&#7879;u Vi&#7879;t, xe c&oacute; gi&aacute; ni&ecirc;m y&#7871;t t&#7915; 1,226 t&#7927; &#273;&#7891;ng. Th&aacute;ng 02/2021, kh&aacute;ch h&agrave;ng mua Lux SA2.0 &#273;&#432;&#7907;c h&#7895; tr&#7907; 100% ph&iacute; tr&#432;&#7899;c b&#7841; v&agrave; nhi&#7873;u &#432;u &#273;&atilde;i kh&aacute;c.</p>
<div id="main-detail" class="img-container txt_content_detail">
<h2><strong>Gi&#7899;i thi&#7879;u v&#7873; VinFast Lux SA2.0</strong></h2>
<p>VinFast Lux SA2.0 l&agrave; m&#7851;u xe th&#7875; thao &#273;a d&#7909;ng h&#7841;ng sang (Luxury SUV) 5+2 ch&#7895; &#273;&#432;&#7907;c s&#7843;n xu&#7845;t b&#7903;i h&atilde;ng xe &ocirc; t&ocirc; VinFast, thu&#7897;c t&#7853;p &#273;o&agrave;n Vingroup. Lux SA2.0 &#273;&atilde; t&#7915;ng &#273;&#432;&#7907;c gi&#7899;i thi&#7879;u t&#7841;i Tri&#7875;n l&atilde;m xe h&#417;i Paris 2018 v&agrave; nh&#7853;n &#273;&#432;&#7907;c nhi&#7873;u k&#7923; v&#7885;ng t&#7915; gi&#7899;i y&ecirc;u xe n&#432;&#7899;c nh&agrave;.</p>
<p>T&#7841;i Vi&#7879;t Nam, VinFast Lux SA2.0 ch&iacute;nh th&#7913;c l&#7855;p r&aacute;p, s&#7843;n xu&#7845;t t&#7915; 2019. M&#7851;u xe n&agrave;y &#273;&#432;&#7907;c gi&#7899;i chuy&ecirc;n gia &#273;&aacute;nh gi&aacute; cao v&#7873; s&#7921; sang tr&#7885;ng, hi&#7879;n &#273;&#7841;i nh&#432;ng v&#7851;n gi&#7919; &#273;&#432;&#7907;c phong c&aacute;ch ri&ecirc;ng c&#7911;a th&#432;&#417;ng hi&#7879;u Vi&#7879;t.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/09/24/vinfast-lux-sa20-gia-lan-banh-thong-so-uu-dai-09-2020-153903-1.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/namvu/2020/09/24/vinfast-lux-sa20-gia-lan-banh-thong-so-uu-dai-09-2020-153903-1.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/namvu/2020/09/24/vinfast-lux-sa20-gia-lan-banh-thong-so-uu-dai-09-2020-153903-1.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/namvu/2020/09/24/vinfast-lux-sa20-gia-lan-banh-thong-so-uu-dai-09-2020-153903-1.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/namvu/2020/09/24/vinfast-lux-sa20-gia-lan-banh-thong-so-uu-dai-09-2020-153903-1.jpg"><img class="img-responsive loaded" title="" src="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/09/24/vinfast-lux-sa20-gia-lan-banh-thong-so-uu-dai-09-2020-153903-1.jpg" alt="VinFast Lux SA2.0" data-ll-status="loaded" /></a></figure>
<p>&#272;&#7889;i th&#7911; c&#7911;a VinFast Lux SA2.0 t&#7841;i Vi&#7879;t Nam g&#7891;m m&#7897;t s&#7889; m&#7851;u xe n&#7893;i b&#7853;t nh&#432;:&nbsp;<a class="" href="https://thethao247.vn/305-toyota-fortuner-d207815.html" target="_blank" rel="dofollow noopener">Toyota Fortuner</a>, Hyundai SantaFe, Ford Everest, Kia Sorento, Mazda CX-8.</p>
<h2><strong>Gi&aacute; xe VinFast Lux SA2.0 2021</strong></h2>
<div class="table-responsive-247">
<table border="1">
<tbody>
<tr>
<td colspan="3">
<div><strong>B&#7842;NG GI&Aacute; XE VINFAST LUX SA2.0 TH&Aacute;NG 02/2021</strong></div>
<div><em>(&#272;&#417;n v&#7883;: &#273;&#7891;ng)</em></div>
</td>
</tr>
<tr>
<td rowspan="2"><strong>Phi&ecirc;n b&#7843;n</strong></td>
<td colspan="2">
<div><strong>Gi&aacute; ni&ecirc;m y&#7871;t th&aacute;ng 01 &amp; 02/2021</strong></div>
<div><em>(&#273;&atilde; bao g&#7891;m h&#7895; tr&#7907; 100% ph&iacute; tr&#432;&#7899;c b&#7841; cho d&ograve;ng xe VinFast Lux)</em></div>
</td>
</tr>
<tr>
<td>
<div><strong>Gi&aacute; xe tr&#7843; th&#7859;ng</strong></div>
<div><em>(100% gi&aacute; tr&#7883; xe)</em></div>
</td>
<td>
<div><strong>Gi&aacute; xe tr&#7843; g&oacute;p</strong></div>
<div><em>(0% l&atilde;i su&#7845;t trong 2 n&#259;m &#273;&#7847;u)</em></div>
</td>
</tr>
<tr>
<td>Ti&ecirc;u chu&#7849;n (Base)</td>
<td>1.226.165.000</td>
<td>1.362.490.000</td>
</tr>
<tr>
<td>N&acirc;ng cao (Plus)</td>
<td>1.298.840.000</td>
<td>1.443.240.000</td>
</tr>
<tr>
<td>Cao c&#7845;p (Premium)</td>
<td>1.451.600.000</td>
<td>1.612.625.000</td>
</tr>
</tbody>
</table>
</div>
<h2><strong>Gi&aacute; l&#259;n b&aacute;nh VinFast Lux SA2.0 l&agrave; bao nhi&ecirc;u?</strong></h2>
<p>Gi&aacute; xe VinFast Lux SA2.0 2021 l&#259;n b&aacute;nh s&#7869; t&ugrave;y thu&#7897;c v&agrave;o &#273;&#7883;a ph&#432;&#417;ng &#273;&#259;ng k&yacute; xe. Theo &#273;&oacute;, gi&aacute; l&#259;n b&aacute;nh c&#7911;a VinFast Lux SA2.0 b&#7843;n Ti&ecirc;u chu&#7849;n (Base) t&#7915; 1,396 t&#7927; &#273;&#7891;ng t&#7841;i H&agrave; N&#7897;i; t&#7915; 1,371 t&#7927; &#273;&#7891;ng t&#7841;i TP.HCM; t&#7915; 1,352 t&#7927; &#273;&#7891;ng t&#7841;i t&#7881;nh th&agrave;nh kh&aacute;c.</p>
<p>D&#432;&#7899;i &#273;&acirc;y l&agrave; chi ti&#7871;t gi&aacute; l&#259;n b&aacute;nh VinFast Lux SA2.0 2021 t&#7841;i H&agrave; N&#7897;i, TP.HCM v&agrave; c&aacute;c t&#7881;nh th&agrave;nh kh&aacute;c. Gi&aacute; bao g&#7891;m c&aacute;c chi ph&iacute; b&#7855;t bu&#7897;c: ph&iacute; tr&#432;&#7899;c b&#7841;, ti&#7873;n bi&#7875;n s&#7889;, ph&iacute; &#273;&#259;ng ki&#7875;m, ph&iacute; s&#7917; d&#7909;ng &#273;&#432;&#7901;ng b&#7897;, b&#7843;o hi&#7875;m TNDS. &#272;&#7891;ng th&#7901;i, gi&aacute; &#273;&atilde; kh&#7845;u tr&#7915; c&aacute;c &#432;u &#273;&atilde;i theo c&ocirc;ng b&#7889; c&#7911;a VinFast trong th&aacute;ng 01 &amp; 02/2021.</p>
<h2><strong>B&#7843;ng t&iacute;nh gi&aacute; l&#259;n b&aacute;nh VinFast Lux SA2.0&nbsp;</strong><strong>2021</strong></h2>
<div class="table-responsive-247">
<table border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td colspan="4">
<div><strong>Gi&aacute; l&#259;n b&aacute;nh VinFast Lux SA2.0 Ti&ecirc;u chu&#7849;n (Base)</strong></div>
<div>(<em>&#272;VT: &#273;&#7891;ng</em>)</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div><strong>Chi ph&iacute;</strong></div>
</td>
<td valign="top" width="210">
<div align="center"><strong>H&agrave; N&#7897;i</strong></div>
</td>
<td valign="top" width="308">
<div align="center"><strong>TP.HCM</strong></div>
</td>
<td valign="top" width="308">
<div><strong>C&aacute;c t&#7881;nh/th&agrave;nh kh&aacute;c</strong></div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div align="center">Gi&aacute; ni&ecirc;m y&#7871;t</div>
</td>
<td valign="top" width="210">
<div align="center">1.226.165.000</div>
</td>
<td valign="top" width="308">
<div align="center">1.226.165.000</div>
</td>
<td valign="top" width="308">
<div>1.226.165.000</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div align="center">Ph&iacute; tr&#432;&#7899;c b&#7841;</div>
</td>
<td valign="top" width="210">
<div align="center">147.139.800</div>
</td>
<td valign="top" width="308">
<div align="center">122.616.500</div>
</td>
<td valign="top" width="308">
<div>122.616.500</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div align="center">Ph&iacute; bi&#7875;n s&#7889;</div>
</td>
<td valign="top" width="210">
<div align="center">20.000.000</div>
</td>
<td>
<div align="center">20.000.000</div>
</td>
<td>
<div align="center">1.000.000</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div align="center">Ph&iacute; &#273;&#259;ng ki&#7875;m</div>
</td>
<td valign="top" width="210">
<div align="center">340.000</div>
</td>
<td>
<div align="center">340.000</div>
</td>
<td>
<div align="center">340.000</div>
</td>
</tr>
<tr>
<td>
<div align="center">Ph&iacute; &#273;&#432;&#7901;ng b&#7897; (1 n&#259;m)</div>
</td>
<td>
<div align="center">1.560.000</div>
</td>
<td>
<div align="center">1.560.000</div>
</td>
<td>
<div align="center">1.560.000</div>
</td>
</tr>
<tr>
<td>
<div align="center">B&#7843;o hi&#7875;m TNDS 1 n&#259;m</div>
</td>
<td>
<div align="center">873.400</div>
</td>
<td>
<div align="center">873.400</div>
</td>
<td>
<div align="center">873.400</div>
</td>
</tr>
<tr>
<td>
<div align="center">B&#7843;o hi&#7875;m v&#7853;t ch&#7845;t xe (kh&ocirc;ng b&#7855;t bu&#7897;c)</div>
</td>
<td>
<div align="center">18.392.475</div>
</td>
<td>
<div align="center">18.392.475</div>
</td>
<td>
<div align="center">18.392.475</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div align="center"><strong>Gi&aacute; l&#259;n b&aacute;nh</strong></div>
</td>
<td valign="top" width="210">
<div align="center"><strong>1.396.078.200</strong></div>
</td>
<td valign="top" width="308">
<div align="center"><strong>1.371.554.900</strong></div>
</td>
<td valign="top" width="308">
<div><strong>1.352.554.900</strong></div>
</td>
</tr>
</tbody>
</table>
</div>
<p>&nbsp;</p>
<div class="table-responsive-247">
<table border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td colspan="4">
<div><strong>Gi&aacute; l&#259;n b&aacute;nh VinFast Lux SA2.0 N&acirc;ng cao (Plus)</strong></div>
<div>(<em><span class="" data-suggestions="&#272;&#7862;T,&#272;&#7840;T,&#272;&#7882;T">&#272;VT</span>: &#273;&#7891;ng</em>)</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div><strong>Chi ph&iacute;</strong></div>
</td>
<td valign="top" width="210">
<div><strong>H&agrave; N&#7897;i</strong></div>
</td>
<td valign="top" width="308">
<div><strong>TP.HCM</strong></div>
</td>
<td valign="top" width="308">
<div><strong>C&aacute;c t&#7881;nh/th&agrave;nh kh&aacute;c</strong></div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div>Gi&aacute; ni&ecirc;m y&#7871;t</div>
</td>
<td valign="top" width="210">
<div>1.298.840.000</div>
</td>
<td valign="top" width="308">
<div>1.298.840.000</div>
</td>
<td valign="top" width="308">
<div>1.298.840.000</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div>Ph&iacute; tr&#432;&#7899;c b&#7841;</div>
</td>
<td valign="top" width="210">
<div>155.860.800</div>
</td>
<td valign="top" width="308">
<div>129.884.000</div>
</td>
<td valign="top" width="308">
<div>129.884.000</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div>Ph&iacute; bi&#7875;n s&#7889;</div>
</td>
<td valign="top" width="210">
<div>20.000.000</div>
</td>
<td>
<div>20.000.000</div>
</td>
<td>
<div>1.000.000</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div>Ph&iacute; &#273;&#259;ng ki&#7875;m</div>
</td>
<td valign="top" width="210">
<div>340.000</div>
</td>
<td>
<div>340.000</div>
</td>
<td>
<div>340.000</div>
</td>
</tr>
<tr>
<td>
<div>Ph&iacute; &#273;&#432;&#7901;ng b&#7897; (1 n&#259;m)</div>
</td>
<td>
<div>1.560.000</div>
</td>
<td>
<div>1.560.000</div>
</td>
<td>
<div>1.560.000</div>
</td>
</tr>
<tr>
<td>
<div>B&#7843;o hi&#7875;m TNDS 1 n&#259;m</div>
</td>
<td>
<div>873.400</div>
</td>
<td>
<div>873.400</div>
</td>
<td>
<div>873.400</div>
</td>
</tr>
<tr>
<td>
<div>B&#7843;o hi&#7875;m v&#7853;t ch&#7845;t xe (kh&ocirc;ng b&#7855;t bu&#7897;c)</div>
</td>
<td>
<div>19.482.600</div>
</td>
<td>
<div>19.482.600</div>
</td>
<td>
<div>19.482.600</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div><strong>Gi&aacute; l&#259;n b&aacute;nh</strong></div>
</td>
<td valign="top" width="210">
<div><strong>1.477.474.200</strong></div>
</td>
<td valign="top" width="308">
<div><strong>1.451.497.400</strong></div>
</td>
<td valign="top" width="308">
<div><strong>1.432.497.400</strong></div>
</td>
</tr>
</tbody>
</table>
</div>
<div class="table-responsive-247">
<table border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td colspan="4">
<div><strong>Gi&aacute; l&#259;n b&aacute;nh VinFast Lux SA2.0 Cao c&#7845;p (Premium)</strong></div>
<div>(<em><span class="" data-suggestions="&#272;&#7862;T,&#272;&#7840;T,&#272;&#7882;T">&#272;VT</span>: &#273;&#7891;ng</em>)</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div><strong>Chi ph&iacute;</strong></div>
</td>
<td valign="top" width="210">
<div><strong>H&agrave; N&#7897;i</strong></div>
</td>
<td valign="top" width="308">
<div><strong>TP.HCM</strong></div>
</td>
<td valign="top" width="308">
<div><strong>C&aacute;c t&#7881;nh/th&agrave;nh kh&aacute;c</strong></div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div>Gi&aacute; ni&ecirc;m y&#7871;t</div>
</td>
<td valign="top" width="210">
<div>1.451.600.000</div>
</td>
<td valign="top" width="308">
<div>1.451.600.000</div>
</td>
<td valign="top" width="308">
<div>1.451.600.000</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div>Ph&iacute; tr&#432;&#7899;c b&#7841;</div>
</td>
<td valign="top" width="210">
<div>174.192.000</div>
</td>
<td valign="top" width="308">
<div>145.160.000</div>
</td>
<td valign="top" width="308">
<div>145.160.000</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div>Ph&iacute; bi&#7875;n s&#7889;</div>
</td>
<td valign="top" width="210">
<div>20.000.000</div>
</td>
<td>
<div>20.000.000</div>
</td>
<td>
<div>1.000.000</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div>Ph&iacute; &#273;&#259;ng ki&#7875;m</div>
</td>
<td valign="top" width="210">
<div>340.000</div>
</td>
<td>
<div>340.000</div>
</td>
<td>
<div>340.000</div>
</td>
</tr>
<tr>
<td>
<div>Ph&iacute; &#273;&#432;&#7901;ng b&#7897; (1 n&#259;m)</div>
</td>
<td>
<div>1.560.000</div>
</td>
<td>
<div>1.560.000</div>
</td>
<td>
<div>1.560.000</div>
</td>
</tr>
<tr>
<td>
<div>B&#7843;o hi&#7875;m TNDS 1 n&#259;m</div>
</td>
<td>
<div>873.400</div>
</td>
<td>
<div>873.400</div>
</td>
<td>
<div>873.400</div>
</td>
</tr>
<tr>
<td>
<div>B&#7843;o hi&#7875;m v&#7853;t ch&#7845;t xe (kh&ocirc;ng b&#7855;t bu&#7897;c)</div>
</td>
<td>
<div>21.774.000</div>
</td>
<td>
<div>21.774.000</div>
</td>
<td>
<div>21.774.000</div>
</td>
</tr>
<tr>
<td valign="top" width="259">
<div><strong>Gi&aacute; l&#259;n b&aacute;nh</strong></div>
</td>
<td valign="top" width="210">
<div><strong>1.648.565.400</strong></div>
</td>
<td valign="top" width="308">
<div><strong>1.619.533.400</strong></div>
</td>
<td valign="top" width="308">
<div><strong>1.600.533.400</strong></div>
</td>
</tr>
</tbody>
</table>
</div>
<h2><strong>VinFast Lux SA2.0 c&oacute; khuy&#7871;n m&atilde;i g&igrave; th&aacute;ng 02/2021?</strong></h2>
<p>Th&aacute;ng 02/2021, kh&aacute;ch h&agrave;ng khi mua xe VinFast Lux SA2.0 s&#7869; &#273;&#432;&#7907;c h&#432;&#7903;ng nhi&#7873;u &#432;u &#273;&atilde;i h&#7845;p d&#7851;n bao g&#7891;m:</p>
<ul>
<li>H&#7895; tr&#7907; 100% l&#7879; ph&iacute; tr&#432;&#7899;c b&#7841; cho xe LUX (&#273;&atilde; kh&#7845;u tr&#7915; v&agrave;o gi&aacute; ni&ecirc;m y&#7871;t).</li>
<li>Gi&aacute; mua &#432;u &#273;&atilde;i khi tr&#7843; th&#7859;ng 100% gi&aacute; tr&#7883; xe.</li>
<li>&#431;u &#273;&atilde;i l&atilde;i su&#7845;t tr&#7843; g&oacute;p 0% trong 2 n&#259;m &#273;&#7847;u.</li>
<li>B&#7843;o h&agrave;nh ch&iacute;nh h&atilde;ng 5 n&#259;m ho&#7863;c 165.000 km (tu&#7923; &#273;i&#7873;u ki&#7879;n n&agrave;o &#273;&#7871;n tr&#432;&#7899;c)</li>
<li>Mi&#7877;n ph&iacute; g&#7917;i xe 6h/l&#7847;n t&#7841;i Vinhomes v&agrave; Vincom.</li>
<li>C&#7913;u h&#7897; mi&#7877;n ph&iacute; 24/7 trong su&#7889;t th&#7901;i gian b&#7843;o h&agrave;nh.</li>
<li>Mi&#7877;n ph&iacute; g&#7917;i xe theo th&aacute;ng cho c&aacute;c ch&#7911; nh&acirc;n nh&agrave; Vinhomes.</li>
</ul>
<p>Ngo&agrave;i ra, kh&aacute;ch h&agrave;ng c&oacute; th&#7875; s&#7917; d&#7909;ng Voucher Vinhomes &#273;&#7875; &#273;&#432;&#7907;c chi&#7871;t kh&#7845;u tr&#7921;c ti&#7871;p l&ecirc;n t&#7899;i 200 tri&#7879;u &#273;&#7891;ng khi mua xe. Kh&aacute;ch h&agrave;ng c&#361;ng s&#7869; &#273;&#432;&#7907;c h&#7895; tr&#7907; "&#273;&#7893;i c&#361; l&#7845;y m&#7899;i" gi&aacute; cao, t&#7863;ng th&ecirc;m &#273;&#7871;n 50 tri&#7879;u khi mua xe VinFast Lux SA2.0.</p>
<h2><strong>Xe VinFast Lux SA2.0 c&oacute; m&#7845;y m&agrave;u?</strong></h2>
<p>VinFast Lux SA2.0 2021 c&oacute; 8 m&agrave;u s&#7855;c ngo&#7841;i th&#7845;t kh&aacute;c nhau &#273;&#7875; kh&aacute;ch h&agrave;ng ch&#7885;n l&#7921;a g&#7891;m: X&aacute;m, &#272;&#7887;, Xanh D&#432;&#417;ng, &#272;en, B&#7841;c, N&acirc;u, Tr&#7855;ng, Cam. Gi&aacute; b&aacute;n c&#7911;a&nbsp;<span class="" data-suggestions="L&#361;">Lux</span>&nbsp;SA 2.0 theo t&#7915;ng m&agrave;u xe l&agrave; nh&#432; nhau.</p>
<h2><strong>So s&aacute;nh gi&aacute; VinFast Lux SA2.0 v&#7899;i m&#7897;t s&#7889; &#273;&#7889;i th&#7911;:</strong></h2>
<div class="table-responsive-247">
<table border="1">
<tbody>
<tr>
<td><strong>M&#7851;u xe</strong></td>
<td>
<div><strong>Gi&aacute; xe</strong></div>
<div>(&#272;VT: tri&#7879;u &#273;&#7891;ng)</div>
</td>
<td>
<div><strong>VinFast Lux SA2.0 Ti&ecirc;u chu&#7849;n</strong></div>
<div>(&#272;VT: tri&#7879;u &#273;&#7891;ng)</div>
</td>
<td><strong>Ch&ecirc;nh l&#7879;nh</strong></td>
</tr>
<tr>
<td>Toyota Fortuner 2.7AT 4x2</td>
<td>1.138</td>
<td rowspan="5">1.226</td>
<td>-88</td>
</tr>
<tr>
<td>Ford Everest Titanium 2.0L AT 4x2</td>
<td>1.181</td>
<td>-45</td>
</tr>
<tr>
<td>Hyundai SantaFe 2.4L x&#259;ng ti&ecirc;u chu&#7849;n</td>
<td>995</td>
<td>-231</td>
</tr>
<tr>
<td>Kia Sorento 2.5G Luxury</td>
<td>1.099</td>
<td>-127</td>
</tr>
<tr>
<td>Mazda CX-8 2.5L Premium</td>
<td>1.169</td>
<td>-57</td>
</tr>
</tbody>
</table>
</div>
<p>Nh&igrave;n chung, VinFast Lux SA2.0 c&oacute; gi&aacute; ni&ecirc;m y&#7871;t cao h&#417;n so v&#7899;i c&aacute;c &#273;&#7889;i th&#7911;. Tuy nhi&ecirc;n, m&#7851;u xe n&agrave;y l&#7841;i c&oacute; ch&iacute;nh s&aacute;ch &#432;u &#273;&atilde;i kh&aacute; h&#7845;p d&#7851;n. B&ecirc;n c&#7841;nh &#273;&oacute;, thi&#7871;t k&#7871; ri&ecirc;ng "&#273;&#7853;m ch&#7845;t" Vi&#7879;t c&ugrave;ng ch&iacute;nh s&aacute;ch h&#7853;u m&atilde;i c&#7911;a VinFast c&#361;ng l&agrave; &#273;i&#7875;m c&#7897;ng l&#7899;n &#273;&#7875; kh&aacute;ch h&agrave;ng "xu&#7889;ng ti&#7873;n".</p>
<h2><strong>Th&ocirc;ng s&#7889; k&#7929; thu&#7853;t VinFast Lux SA2.0 2021</strong></h2>
<div class="table-responsive-247">
<table border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td>
<div><strong>Phi&ecirc;n b&#7843;n</strong></div>
</td>
<td>
<div><strong>Ti&ecirc;u chu&#7849;n (Base)</strong></div>
</td>
<td>
<div><strong>N&acirc;ng cao (Plus)</strong></div>
</td>
<td>
<div><strong>Cao c&#7845;p (Premium)</strong></div>
</td>
</tr>
<tr>
<td>
<div>Ki&#7875;u d&aacute;ng</div>
</td>
<td colspan="3">
<div>SUV</div>
</td>
</tr>
<tr>
<td>
<div>S&#7889; ch&#7895;</div>
</td>
<td colspan="3">
<div>07</div>
</td>
</tr>
<tr>
<td>
<div>K&iacute;ch th&#432;&#7899;c t&#7893;ng th&#7875; (DxRxC)</div>
</td>
<td colspan="3">
<div>4.940 x 1.960 x 1.773 mm</div>
</td>
</tr>
<tr>
<td>
<div>Chi&#7873;u d&agrave;i c&#417; s&#7903;</div>
</td>
<td colspan="3">
<div>2.933 mm</div>
</td>
</tr>
<tr>
<td>
<div>Kho&#7843;ng s&aacute;ng g&#7847;m</div>
</td>
<td colspan="3">
<div>195 mm</div>
</td>
</tr>
<tr>
<td>
<div>Tr&#7885;ng l&#432;&#7907;ng kh&ocirc;ng t&#7843;i/to&agrave;n t&#7843;i</div>
</td>
<td colspan="3">
<div>2.140/710 kg</div>
</td>
</tr>
<tr>
<td>
<div>Dung t&iacute;ch th&ugrave;ng nhi&ecirc;n li&#7879;u</div>
</td>
<td colspan="3">
<div>85 l&iacute;t</div>
</td>
</tr>
<tr>
<td>
<div>M&acirc;m xe</div>
</td>
<td>
<div>H&#7907;p kim 19 inch</div>
</td>
<td>
<div>H&#7907;p kim 19 inch</div>
</td>
<td>
<div>H&#7907;p kim 20 inch</div>
</td>
</tr>
<tr>
<td>
<div>L&#7889;p tr&#432;&#7899;c</div>
</td>
<td>
<div>255/50&nbsp;<span class="" data-suggestions="">R19</span></div>
</td>
<td>
<div>255/50 R19</div>
</td>
<td>
<div>275/40 R20</div>
</td>
</tr>
<tr>
<td>
<div>L&#7889;p sau</div>
</td>
<td>
<div>285/45 R19</div>
</td>
<td>
<div>285/45 R19</div>
</td>
<td>
<div>315/35 R20</div>
</td>
</tr>
<tr>
<td colspan="4">
<div><strong>&#272;&#7897;ng c&#417; - V&#7853;n h&agrave;nh</strong></div>
</td>
</tr>
<tr>
<td>
<div>&#272;&#7897;ng c&#417;</div>
</td>
<td colspan="3">
<div>2.0L, I4, DOHC, t&#259;ng &aacute;p, van bi&#7871;n thi&ecirc;n, phun x&#259;ng tr&#7921;c ti&#7871;p</div>
</td>
</tr>
<tr>
<td>
<div>Ch&#7913;c n&#259;ng t&#7921; &#273;&#7897;ng t&#7855;t &#273;&#7897;ng c&#417; t&#7841;m th&#7901;i</div>
</td>
<td colspan="3">
<div>C&oacute;</div>
</td>
</tr>
<tr>
<td>
<div>H&#7897;p s&#7889;</div>
</td>
<td colspan="3">
<div>T&#7921; &#273;&#7897;ng 8 c&#7845;p ZF</div>
</td>
</tr>
<tr>
<td>
<div>C&ocirc;ng su&#7845;t c&#7921;c &#273;&#7841;i</div>
</td>
<td colspan="3">
<div>288 m&atilde; l&#7921;c t&#7841;i 5.000-6.000 v&ograve;ng/ph&uacute;t</div>
</td>
</tr>
<tr>
<td>
<div>M&ocirc;-men xo&#7855;n c&#7921;c &#273;&#7841;i</div>
</td>
<td colspan="3">
<div>350 Nm t&#7841;i 1.750-4.500 v&ograve;ng/ph&uacute;t</div>
</td>
</tr>
<tr>
<td>
<div>D&#7851;n &#273;&#7897;ng</div>
</td>
<td>
<div>C&#7847;u sau - RWD</div>
</td>
<td>
<div>C&#7847;u sau - RWD</div>
</td>
<td>
<div>4 b&aacute;nh to&agrave;n th&#7901;i gian - AWD</div>
</td>
</tr>
<tr>
<td>
<div>H&#7879; th&#7889;ng treo tr&#432;&#7899;c</div>
</td>
<td colspan="3">
<div>&#272;&#7897;c l&#7853;p, tay &#273;&ograve;n d&#432;&#7899;i k&eacute;p, gi&aacute; &#273;&#7905; b&#7857;ng nh&ocirc;m</div>
</td>
</tr>
<tr>
<td>
<div>H&#7879; th&#7889;ng treo sau</div>
</td>
<td colspan="3">
<div>&#272;&#7897;c l&#7853;p, 5 li&ecirc;n k&#7871;t v&#7899;i &#273;&ograve;n d&#7851;n h&#432;&#7899;ng v&agrave; thanh &#7893;n &#273;&#7883;nh ngang, gi&#7843;m ch&#7845;n kh&iacute; n&eacute;n</div>
</td>
</tr>
<tr>
<td>
<div>Phanh tr&#432;&#7899;c/sau</div>
</td>
<td colspan="3">
<div>&#272;&#297;a t&#7843;n nhi&#7879;t/ &#272;&#297;a &#273;&#7863;c</div>
</td>
</tr>
<tr>
<td>
<div>Tr&#7907; l&#7921;c l&aacute;i</div>
</td>
<td colspan="3">
<div>Th&#7911;y l&#7921;c, &#273;i&#7873;u khi&#7875;n &#273;i&#7879;n</div>
</td>
</tr>
<tr>
<td colspan="4">
<div><strong>Ti&ecirc;u th&#7909; nhi&ecirc;n li&#7879;u</strong></div>
</td>
</tr>
<tr>
<td>
<div>M&#7913;c ti&ecirc;u th&#7909; nhi&ecirc;n li&#7879;u k&#7871;t h&#7907;p</div>
</td>
<td>
<div>8,39 (l&iacute;t/100km)</div>
</td>
<td>
<div>8,39 (l&iacute;t/100km)</div>
</td>
<td>
<div>10,92 (l&iacute;t/100km)</div>
</td>
</tr>
<tr>
<td>
<div>M&#7913;c ti&ecirc;u th&#7909; nhi&ecirc;n li&#7879;u trong &#273;&ocirc; th&#7883;</div>
</td>
<td>
<div>10,46 (l&iacute;t/100km)</div>
</td>
<td>
<div>10,46 (l&iacute;t/100km)</div>
</td>
<td>
<div>15,81 (l&iacute;t/100km)</div>
</td>
</tr>
<tr>
<td>
<div>M&#7913;c ti&ecirc;u th&#7909; nhi&ecirc;n li&#7879;u ngo&agrave;i &#273;&ocirc; th&#7883;</div>
</td>
<td>
<div>7,18 (l&iacute;t/100km)</div>
</td>
<td>
<div>7,18 (l&iacute;t/100km)</div>
</td>
<td>
<div>8,01 (l&iacute;t/100km)</div>
</td>
</tr>
<tr>
<td colspan="4">
<div><strong>Ngo&#7841;i th&#7845;t</strong></div>
</td>
</tr>
<tr>
<td>
<div>&nbsp;</div>
</td>
<td>
<div><strong>Ti&ecirc;u chu&#7849;n (Base)</strong></div>
</td>
<td>
<div><strong>N&acirc;ng cao (Plus)</strong></div>
</td>
<td>
<div><strong>Cao c&#7845;p (Premium)</strong></div>
</td>
</tr>
<tr>
<td>
<div>&#272;&egrave;n pha</div>
</td>
<td colspan="3">
<div>LED</div>
</td>
</tr>
<tr>
<td>
<div>&#272;&egrave;n chi&#7871;u s&aacute;ng ban ng&agrave;y</div>
</td>
<td colspan="3">
<div>LED</div>
</td>
</tr>
<tr>
<td>
<div>T&#7921; &#273;&#7897;ng b&#7853;t/t&#7855;t</div>
</td>
<td colspan="3">
<div>C&oacute;</div>
</td>
</tr>
<tr>
<td>
<div>&#272;&egrave;n s&#432;&#417;ng m&ugrave; tr&#432;&#7899;c</div>
</td>
<td colspan="3">
<div>C&oacute;, t&iacute;ch h&#7907;p ch&#7913;c n&#259;ng chi&#7871;u g&oacute;c</div>
</td>
</tr>
<tr>
<td>
<div>&#272;&egrave;n phanh th&#7913; 3 tr&ecirc;n cao</div>
</td>
<td colspan="3">
<div>LED</div>
</td>
</tr>
<tr>
<td>
<div>C&#7909;m &#273;&egrave;n h&#7853;u</div>
</td>
<td colspan="3">
<div>LED</div>
</td>
</tr>
<tr>
<td>
<div>&#272;&egrave;n ch&agrave;o m&#7915;ng</div>
</td>
<td colspan="3">
<div>C&oacute; (v&#7899;i &#273;&egrave;n t&iacute;ch h&#7907;p tay n&#7855;m c&#7917;a)</div>
</td>
</tr>
<tr>
<td>
<div>G&#432;&#417;ng chi&#7871;u h&#7853;u</div>
</td>
<td colspan="3">
<div>Ch&#7881;nh/g&#7853;p &#273;i&#7879;n, t&iacute;ch h&#7907;p &#273;&egrave;n b&aacute;o r&#7869;, ch&#7913;c n&#259;ng s&#7845;y g&#432;&#417;ng, t&#7921; &#273;&#7897;ng &#273;i&#7873;u ch&#7881;nh khi v&agrave;o s&#7889; l&ugrave;i</div>
</td>
</tr>
<tr>
<td>
<div>G&#7841;t m&#432;a tr&#432;&#7899;c</div>
</td>
<td colspan="3">
<div>T&#7921; &#273;&#7897;ng</div>
</td>
</tr>
<tr>
<td>
<div>K&iacute;nh c&#7917;a s&#7893;</div>
</td>
<td colspan="3">
<div>Ch&#7881;nh &#273;i&#7879;n, l&ecirc;n/xu&#7889;ng m&#7897;t ch&#7841;m, ch&#7889;ng k&#7865;t (t&#7845;t c&#7843; c&aacute;c c&#7917;a)</div>
</td>
</tr>
<tr>
<td>
<div>K&iacute;nh c&aacute;ch nhi&#7879;t t&#7889;i m&agrave;u</div>
</td>
<td>
<div>Kh&ocirc;ng</div>
</td>
<td colspan="2">
<div>2 k&iacute;nh c&#7917;a s&#7893; h&agrave;ng gh&#7871; sau, 2 k&iacute;nh &ocirc; tho&aacute;ng sau &amp; k&iacute;nh sau</div>
</td>
</tr>
<tr>
<td>Vi&#7873;n trang tr&iacute; Chrome b&ecirc;n ngo&agrave;i</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>Thanh trang tr&iacute; n&oacute;c</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>B&#7897; d&#7909;ng c&#7909; v&aacute; l&#7889;p nhanh</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td colspan="4">
<div><strong>N&#7897;i th&#7845;t</strong></div>
</td>
</tr>
<tr>
<td>
<div>&nbsp;</div>
</td>
<td>
<div><strong>Ti&ecirc;u chu&#7849;n (Base)</strong></div>
</td>
<td>
<div><strong>N&acirc;ng cao (Plus)</strong></div>
</td>
<td>
<div><strong>Cao c&#7845;p (Premium)</strong></div>
</td>
</tr>
<tr>
<td>
<div>M&agrave;u n&#7897;i th&#7845;t</div>
</td>
<td>
<div>1 m&agrave;u (&#272;en)</div>
</td>
<td>
<div>1 m&agrave;u (&#272;en)</div>
</td>
<td>
<div>T&ugrave;y ch&#7885;n 1 trong 3 m&agrave;u (NAPA - N&acirc;u - &#272;en)</div>
</td>
</tr>
<tr>
<td>Ch&#7845;t li&#7879;u gh&#7871;</td>
<td colspan="3">Da t&#7893;ng h&#7907;p</td>
</tr>
<tr>
<td>
<div>H&agrave;ng gh&#7871; tr&#432;&#7899;c</div>
</td>
<td colspan="2">
<div>Ch&#7881;nh &#273;i&#7879;n 4 h&#432;&#7899;ng, ch&#7881;nh c&#417; 2 h&#432;&#7899;ng</div>
</td>
<td>12 h&#432;&#7899;ng (8 h&#432;&#7899;ng &#273;i&#7879;n + 4 h&#432;&#7899;ng &#273;&#7879;m l&#432;ng)</td>
</tr>
<tr>
<td>H&agrave;ng gh&#7871; th&#7913; 2</td>
<td colspan="3">G&#7853;p c&#417;, chia t&#7927; l&#7879; 40:20:40, tr&#432;&#7907;t, ch&#7881;nh &#273;&#7897; nghi&ecirc;ng l&#432;ng gh&#7871;</td>
</tr>
<tr>
<td>H&agrave;ng gh&#7871; th&#7913; 3</td>
<td colspan="3">G&#7853;p c&#417;, chia t&#7927; l&#7879; 50:50</td>
</tr>
<tr>
<td>&#272;i&#7873;u ho&agrave; h&agrave;ng gh&#7871; 1</td>
<td colspan="3">T&#7921; &#273;&#7897;ng, 2 v&ugrave;ng &#273;&#7897;c l&#7853;p</td>
</tr>
<tr>
<td>&#272;i&#7873;u ho&agrave; h&agrave;ng gh&#7871; 2</td>
<td colspan="3">C&#7917;a th&ocirc;ng gi&oacute; &#273;i&#7873;u h&ograve;a</td>
</tr>
<tr>
<td>&#272;i&#7873;u ho&agrave; h&agrave;ng gh&#7871; 3</td>
<td colspan="3">C&#7917;a gi&oacute; &#7903; gi&#7919;a hai gh&#7871;</td>
</tr>
<tr>
<td>&#272;i&#7873;u ho&agrave; ch&#7913;c n&#259;ng</td>
<td colspan="3">L&#7885;c gi&oacute;, ki&#7875;m so&aacute;t ch&#7845;t l&#432;&#7907;ng kh&ocirc;ng kh&iacute; b&#7857;ng ion</td>
</tr>
<tr>
<td colspan="4">
<div><strong>V&ocirc; l&#259;ng</strong></div>
</td>
</tr>
<tr>
<td>V&ocirc; l&#259;ng 3 ch&#7845;u</td>
<td colspan="3">B&#7885;c da</td>
</tr>
<tr>
<td>&#272;i&#7873;u ch&#7881;nh v&ocirc; l&#259;ng</td>
<td colspan="3">Ch&#7881;nh tay 4 h&#432;&#7899;ng</td>
</tr>
<tr>
<td>T&iacute;ch h&#7907;p tr&ecirc;n v&ocirc; l&#259;ng</td>
<td colspan="3">T&iacute;ch h&#7907;p &#273;i&#7873;u khi&#7875;n &acirc;m thanh, &#273;&agrave;m tho&#7841;i r&#7843;nh tay</td>
</tr>
<tr>
<td>Ch&#7913;c n&#259;ng ki&#7875;m so&aacute;t h&agrave;nh tr&igrave;nh (Cruise control)</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td colspan="4">
<div><strong>Trang b&#7883; ti&#7879;n nghi - gi&#7843;i tr&iacute;</strong></div>
</td>
</tr>
<tr>
<td>
<div>&nbsp;</div>
</td>
<td>
<div><strong>Ti&ecirc;u chu&#7849;n (Base)</strong></div>
</td>
<td>
<div><strong>N&acirc;ng cao (Plus)</strong></div>
</td>
<td>
<div><strong>Cao c&#7845;p (Premium)</strong></div>
</td>
</tr>
<tr>
<td>M&agrave;n h&igrave;nh m&agrave;u</td>
<td colspan="3">Hi&#7875;n th&#7883; th&ocirc;ng tin l&aacute;i 7 inch</td>
</tr>
<tr>
<td>M&agrave;n h&igrave;nh c&#7843;m &#7913;ng</td>
<td colspan="3">10.4 inch, m&agrave;u</td>
</tr>
<tr>
<td>Ch&igrave;a kh&oacute;a th&ocirc;ng minh/kh&#7903;i &#273;&#7897;ng b&#7857;ng n&uacute;t b&#7845;m</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>K&#7871;t n&#7889;i</td>
<td colspan="3">Radio AM/FM, C&#7893;ng USB, Bluetooth</td>
</tr>
<tr>
<td>S&#7841;c kh&ocirc;ng d&acirc;y</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>Wifi</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>H&#7879; th&#7889;ng &acirc;m thanh</td>
<td>8 loa</td>
<td colspan="2">13 loa c&oacute; &acirc;m-ly &amp; Ch&#7913;c n&#259;ng &#273;&#7883;nh v&#7883;, b&#7843;n &#273;&#7891; (t&iacute;ch h&#7907;p trong m&agrave;n h&igrave;nh trung t&acirc;m)</td>
</tr>
<tr>
<td>H&#7879; th&#7889;ng &aacute;nh s&aacute;ng trang tr&iacute;</td>
<td>Kh&ocirc;ng</td>
<td>Kh&ocirc;ng</td>
<td>&#272;&egrave;n chi&#7871;u b&#7853;c c&#7917;a/ &#272;&egrave;n chi&#7871;u khoang &#273;&#7875; ch&acirc;n/ &#272;&egrave;n trang tr&iacute;</td>
</tr>
<tr>
<td>&#272;&egrave;n chi&#7871;u s&aacute;ng ng&#259;n ch&#7913;a &#273;&#7891; tr&#432;&#7899;c</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>&#272;&egrave;n chi&#7871;u s&aacute;ng c&#7889;p xe</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>G&#432;&#417;ng chi&#7871;u h&#7853;u trong xe</td>
<td colspan="3">Ch&#7889;ng ch&oacute;i t&#7921; &#273;&#7897;ng</td>
</tr>
<tr>
<td>G&#432;&#417;ng tr&ecirc;n t&#7845;m ch&#7855;n n&#7855;ng</td>
<td colspan="3">C&oacute; &#273;&egrave;n t&iacute;ch h&#7907;p</td>
</tr>
<tr>
<td>&#272;&egrave;n tr&#7847;n/&#273;&egrave;n &#273;&#7885;c b&#7843;n &#273;&#7891;</td>
<td colspan="3">Tr&#432;&#7899;c/sau</td>
</tr>
<tr>
<td>&#7892; &#273;i&#7879;n xoay chi&#7873;u 230V</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>&#7892; c&#7855;m &#273;i&#7879;n 12V</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>&#7888;p b&#7853;c c&#7917;a xe, c&oacute; logo VinFast</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>M&oacute;c ch&#7857;ng h&agrave;nh l&yacute; c&#7889;p xe</td>
<td colspan="3">C&oacute; ray di chuy&#7875;n</td>
</tr>
<tr>
<td>Gi&aacute; &#273;&#7875; c&#7889;c</td>
<td>-</td>
<td>-</td>
<td>H&agrave;ng th&#7871; th&#7913; 2 v&agrave; 3</td>
</tr>
<tr>
<td>Ch&#7895; &#273;&#7875; ch&acirc;n gh&#7871; l&aacute;i&nbsp;</td>
<td>-</td>
<td>-</td>
<td>&#272;&#432;&#7907;c &#7889;p b&#7857;ng th&eacute;p kh&ocirc;ng g&#7881;</td>
</tr>
<tr>
<td colspan="4">
<div><strong>H&#7879; th&#7889;ng an to&agrave;n</strong></div>
</td>
</tr>
<tr>
<td>
<div>&nbsp;</div>
</td>
<td>
<div><strong>Ti&ecirc;u chu&#7849;n (Base)</strong></div>
</td>
<td>
<div><strong>N&acirc;ng cao (Plus)</strong></div>
</td>
<td>
<div><strong>Cao c&#7845;p (Premium)</strong></div>
</td>
</tr>
<tr>
<td>S&#7889; t&uacute;i kh&iacute;</td>
<td colspan="3">6</td>
</tr>
<tr>
<td>H&#7879; th&#7889;ng ch&#7889;ng b&oacute; c&#7913;ng phanh (ABS)</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>H&#7879; th&#7889;ng ph&acirc;n ph&#7889;i l&#7921;c phanh &#273;i&#7879;n t&#7917; (EBD)</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>H&#7879; th&#7889;ng c&acirc;n b&#7857;ng &#273;i&#7879;n t&#7917; (ESC)</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>H&#7895; tr&#7907; l&#7921;c phanh kh&#7849;n c&#7845;p (BA)</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>H&#7895; tr&#7907; kh&#7903;i h&agrave;nh ngang d&#7889;c (HSA)</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>H&#7895; tr&#7907; xu&#7889;ng d&#7889;c (HDC)</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>Ch&#7913;c n&#259;ng ch&#7889;ng tr&#432;&#7907;t (TCS)</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>
<div>Ch&#7913;c n&#259;ng ch&#7889;ng l&#7853;t (ROM)</div>
</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>&#272;&egrave;n b&aacute;o phanh kh&#7849;n c&#7845;p (ESS)</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>H&#7879; th&#7889;ng c&#259;ng &#273;ai kh&#7849;n c&#7845;p, h&#7841;n ch&#7871; l&#7921;c</td>
<td colspan="3">H&agrave;ng gh&#7871; tr&#432;&#7899;c</td>
</tr>
<tr>
<td>M&oacute;c c&#7889; &#273;&#7883;nh gh&#7871; tr&#7867; em ISOFIX</td>
<td colspan="3">H&agrave;ng gh&#7871; 2, gh&#7871; ngo&agrave;i</td>
</tr>
<tr>
<td>Ch&#7913;c n&#259;ng t&#7921; &#273;&#7897;ng kh&oacute;a c&#7917;a khi xe di chuy&#7875;n</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>H&#7879; th&#7889;ng c&#7843;nh b&aacute;o ch&#7889;ng tr&#7897;m &amp; ch&igrave;a kh&oacute;a m&atilde; h&oacute;a</td>
<td colspan="3">C&oacute;</td>
</tr>
<tr>
<td>C&#7843;m bi&#7871;n ph&iacute;a tr&#432;&#7899;c h&#7895; tr&#7907; &#273;&#7895; xe</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>Ch&#7913;c n&#259;ng c&#7843;nh b&aacute;o &#273;i&#7875;m m&ugrave;</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>Camera 360 &#273;&#7897;</td>
<td>Kh&ocirc;ng</td>
<td>T&iacute;ch h&#7907;p v&#7899;i m&agrave;n h&igrave;nh</td>
<td>T&iacute;ch h&#7907;p v&#7899;i m&agrave;n h&igrave;nh</td>
</tr>
<tr>
<td>C&#7889;p xe c&oacute; ch&#7913;c n&#259;ng &#273;&oacute;ng/m&#7903; &#273;i&#7879;n&nbsp;&amp; m&#7903; b&#7857;ng &#273;&aacute; ch&acirc;n</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
<td>C&oacute;</td>
</tr>
</tbody>
</table>
</div>
<p>&nbsp;</p>
<h2><strong>&#272;&aacute;nh gi&aacute; ngo&#7841;i th&#7845;t VinFast Lux SA2.0 2021</strong></h2>
<p>VinFast Lux SA2.0 2021 &#273;&#432;&#7907;c &#273;&#7883;nh v&#7883; &#7903; ph&acirc;n kh&uacute;c SUV h&#7841;ng sang, v&igrave; v&#7853;y ti&ecirc;u ch&iacute; thi&#7871;t k&#7871; c&#7911;a xe l&agrave; sang tr&#7885;ng, &#273;&#7859;ng c&#7845;p nh&#432;ng &#273;&#7891;ng th&#7901;i c&#361;ng c&oacute; s&#7921; m&#7841;nh m&#7869; th&#7875; thao.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/12/22/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-172432-1.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/namvu/2020/12/22/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-172432-1.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/namvu/2020/12/22/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-172432-1.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/namvu/2020/12/22/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-172432-1.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/namvu/2020/12/22/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-172432-1.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/12/22/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-172432-1.jpg" alt="Ngo&#7841;i th&#7845;t VinFast Lux SA2.0" data-ll-status="loading" /></a>
<figcaption>VinFast Lux SA2.0 c&oacute; thi&#7871;t k&#7871; ngo&#7841;i th&#7845;t v&ocirc; c&ugrave;ng b&#7855;t m&#7855;t, mang ch&#7845;t ri&ecirc;ng c&#7911;a Vin</figcaption>
</figure>
<p><strong><em>&#272;&#7847;u xe:</em></strong></p>
<p>V&#7899;i phong c&aacute;ch &#273;&#417;n gi&#7843;n nh&#432;ng tinh t&#7871;, t&#7853;p trung nhi&#7873;u v&agrave;o c&aacute;c &#273;&#432;&#7901;ng n&eacute;t mang t&iacute;nh th&#7875; thao. Ngay t&#7915; &#273;&#7847;u xe, thi&#7871;t k&#7871; &#273;&#7847;y t&aacute;o b&#7841;o c&#7911;a bi&#7875;u t&#432;&#7907;ng ch&#7919; &ldquo;V&rdquo; v&agrave; &ldquo;F&rdquo; k&#7871;t h&#7907;p c&ugrave;ng c&aacute;c chi ti&#7871;t mang m&agrave;u s&#7855;c t&#432;&#417;ng ph&#7843;n gi&#7919;a &#273;en m&#7901; v&agrave; m&#7841; crom s&aacute;ng b&oacute;ng l&agrave;m gi&#7843;m b&#7899;t s&#7921; n&#7863;ng n&#7873; cho ph&#7847;n &#273;&#7847;u c&#7911;a chi&#7871;c xe 7 ch&#7895; VinFast.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_1.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_1.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_1.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_1.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_1.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_1.jpg" alt="VinFast Lux SA2.0 2021" data-ll-status="loading" /></a></figure>
<p>&#7888;p c&#7843;n tr&#432;&#7899;c c&#7911;a VinFast Lux SA2.0 c&#361;ng mang nhi&#7873;u chi ti&#7871;t &#273;&#7853;m t&iacute;nh ngh&#7879; thu&#7853;t v&agrave; th&#7875; thao nh&#432; &#273;&egrave;n s&#432;&#417;ng m&ugrave;, h&#7889;c h&uacute;t gi&oacute; cho &#273;&#7871;n &#273;&egrave;n pha l&ecirc;. Ngo&agrave;i ra, h&#7879; th&#7889;ng chi&#7871;u s&aacute;ng LED t&acirc;n ti&#7871;n tr&ecirc;n chi&#7871;c VinFast Lux SA2.0 c&#361;ng c&oacute; n&eacute;t &#273;&#7897;c &#273;&aacute;o ri&ecirc;ng khi thi&#7871;t k&#7871; c&#7911;a n&oacute; kh&ocirc;ng h&#7873; tu&acirc;n theo truy&#7873;n th&#7889;ng m&agrave; s&#7855;p x&#7871;p theo th&#7913; t&#7921; m&#7899;i: &#273;&egrave;n ch&#7841;y ban ng&agrave;y tr&ecirc;n cao nh&#7845;t - &#273;&egrave;n pha &#7903; gi&#7919;a - &#273;&egrave;n s&#432;&#417;ng m&ugrave; d&#432;&#7899;i c&ugrave;ng.</p>
<p>C&aacute;c &#273;i&#7875;m nh&#7845;n kim lo&#7841;i m&#7841; crome s&aacute;ng b&oacute;ng c&ugrave;ng nh&#7919;ng &#273;&#432;&#7901;ng vi&#7873;n &#273;en m&#7901; c&#361;ng gi&uacute;p l&agrave;m t&#259;ng th&ecirc;m ph&#7847;n sang tr&#7885;ng, th&#7901;i th&#432;&#7907;ng v&agrave; ch&#7855;c ch&#7855;n cho ph&#7847;n &#273;&#7847;u c&#7911;a chi&#7871;c VinFast Lux SA2.0.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_2.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_2.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_2.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_2.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_2.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_2.jpg" alt="&#272;&#7847;u xe VinFast Lux SA2.0" data-ll-status="loading" /></a></figure>
<p><strong><em>Th&acirc;n xe:</em></strong></p>
<p>Nh&igrave;n t&#7915; th&acirc;n xe, VinFast Lux SA2.0 tr&ocirc;ng kh&aacute; &#273;&#417;n gi&#7843;n. Tuy nhi&ecirc;n, h&atilde;ng c&#361;ng r&#7845;t bi&#7871;t n&#7855;m b&#7855;t xu h&#432;&#7899;ng chung tr&ecirc;n nh&#7919;ng d&ograve;ng xe Ch&acirc;u &Acirc;u khi C&#7897;t C v&agrave; D tr&ecirc;n chi&#7871;c VinFast Lux SA2.0 c&#361;ng &#273;&#432;&#7907;c thi&#7871;t k&#7871; cao g&#7847;n ngang nhau mang &#273;&#7871;n t&#7841;o h&igrave;nh vu&ocirc;ng v&#7913;c chu&#7849;n SUV.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_3.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_3.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_3.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_3.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_3.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_3.jpg" alt="Th&acirc;n xe VinFast Lux SA2.0" data-ll-status="loading" /></a></figure>
<p>Nh&#7919;ng &#273;&#432;&#7901;ng g&acirc;n d&#7853;p n&#7893;i n&#7889;i d&agrave;i t&#7915; n&#7855;p capo &#273;&#7871;n c&#7917;a tr&#432;&#7899;c v&agrave; t&#7915; c&#7917;a sau k&eacute;o d&agrave;i &#273;&#7871;n &#273;u&ocirc;i xe ch&iacute;nh l&agrave; &#273;i&#7875;m nh&#7845;n gi&uacute;p chi&#7871;c xe th&ecirc;m ph&#7847;n li&#7873;n l&#7841;c kh&#7887;e kh&#7855;n.</p>
<p>Ngo&agrave;i ra, &#273;&#7875; t&#259;ng th&ecirc;m t&iacute;nh th&#7875; thao v&agrave; th&#7849;m m&#7929;, VinFast c&#361;ng &#273;&atilde; th&#7917;a ri&ecirc;ng cho d&ograve;ng xe SUV Lux SA2.0 b&#7897; m&acirc;m h&#7907;p kim &#273;a ch&#7845;u v&#7899;i thi&#7871;t k&#7871; &#273;&#7847;y &#7845;n t&#432;&#7907;ng.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_5.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_5.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_5.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_5.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_5.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_5.jpg" alt="M&acirc;m v&agrave; l&#7889;p xe VinFast Lux SA2.0" data-ll-status="loading" /></a></figure>
<p><strong><em>&#272;u&ocirc;i xe:</em></strong></p>
<p>&#272;u&ocirc;i xe c&#7911;a chi&#7871;c VinFast Lux SA2.0 c&oacute; thi&#7871;t k&#7871; t&#7889;i gi&#7843;n h&#417;n r&#7845;t nhi&#7873;u. V&#7853;y nh&#432;ng n&oacute; v&#7851;n r&#7845;t tinh t&#7871;, v&agrave; c&#361;ng ph&#7847;n n&agrave;o g&oacute;p s&#7913;c gi&uacute;p cho t&#7893;ng th&#7875; c&#7911;a chi&#7871;c VinFast Lux SA2.0 nh&igrave;n sang tr&#7885;ng h&#417;n, cao c&#7845;p h&#417;n.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_4.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_4.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_4.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_4.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_4.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_4.jpg" alt="&#272;u&ocirc;i xe VinFast Lux SA2.0" data-ll-status="loading" /></a></figure>
<p>Theo &#273;&oacute;, logo ch&#7919; V ti&#7871;p t&#7909;c n&#7857;m gi&#7919;a hai &#273;&#432;&#7901;ng vi&#7873;n &#273;&egrave;n LED k&eacute;o d&agrave;i &#273;&#7871;n c&#7909;m &#273;&egrave;n h&#7853;u hai b&ecirc;n &#273;u&ocirc;i xe. Ph&iacute;a b&ecirc;n d&#432;&#7899;i d&ograve;ng ch&#7919;&nbsp;<span class="" data-suggestions="m&agrave;">m&#7841;</span>&nbsp;crom&nbsp;VinFast k&iacute;ch th&#432;&#7899;c l&#7899;n &#273;&#7847;y n&#7893;i b&#7853;t. Ngo&agrave;i ra, c&#7843;n sau t&iacute;ch h&#7907;p h&#7879; th&#7889;ng &#7889;ng x&#7843; k&eacute;p h&igrave;nh thang c&#361;ng l&agrave; &#273;i&#7875;m nh&#7845;n quan tr&#7885;ng l&agrave;m t&#259;ng th&ecirc;m v&#7867; th&#7875; thao &#273;&#7859;ng c&#7845;p cho chi&#7871;c VinFast Lux SA 2.0.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-101207-1.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-101207-1.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-101207-1.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-101207-1.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-101207-1.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-101207-1.jpg" alt="&#272;u&ocirc;i xe Lux SA2.0" data-ll-status="loading" /></a></figure>
<p>&nbsp;</p>
<h2><strong>&#272;&aacute;nh gi&aacute; n&#7897;i th&#7845;t VinFast Lux SA2.0 2021</strong></h2>
<p><strong><em>V&ocirc; l&#259;ng 3 ch&#7845;u b&#7885;c da th&#7875; thao sang tr&#7885;ng:</em></strong></p>
<p>C&#7909;m v&ocirc; l&#259;ng c&#7911;a chi&#7871;c VinFast Lux SA2.0 &#273;&#432;&#7907;c thi&#7871;t k&#7871; 3 ch&#7845;u b&#7885;c da t&iacute;ch h&#7907;p m&#7897;t s&#7889; n&uacute;t b&#7845;m &#273;i&#7873;u khi&#7875;n xe n&#7857;m &#7903; hai b&ecirc;n, v&agrave; logo ch&#7919; V m&#7841; crom s&aacute;ng b&oacute;ng n&#7857;m &#7903; gi&#7919;a. Chi ti&#7871;t n&agrave;y gi&uacute;p l&agrave;m t&#259;ng th&ecirc;m n&eacute;t th&#7875; thao v&agrave; hi&#7879;n &#273;&#7841;i cho khoang n&#7897;i th&#7845;t c&#7911;a xe.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_6.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_6.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_6.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_6.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_6.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_6.jpg" alt="Khoang l&aacute;i n&#7897;i th&#7845;t VinFast Lux SA2.0" data-ll-status="loading" /></a></figure>
<p><strong><em>Gh&#7871; b&#7885;c da ch&#7881;nh &#273;i&#7879;n cao c&#7845;p:</em></strong></p>
<p>To&agrave;n b&#7897; c&aacute;c h&agrave;ng gh&#7871; trong chi&#7871;c VinFast Lux SA2.0 &#273;&#7873;u &#273;&#432;&#7907;c b&#7885;c da ch&#7881;nh &#273;i&#7879;n cao c&#7845;p. Ngo&agrave;i ra, c&aacute;ch b&#7889; tr&iacute; gh&#7871; theo ki&#7875;u 5+2 gi&uacute;p h&agrave;ng gh&#7871; th&#7913; nh&#7845;t v&agrave; h&agrave;ng gh&#7871; th&#7913; hai c&oacute; th&#7875; tho&#7843;i m&aacute;i ng&#7843; l&#432;ng du&#7895;i ch&acirc;n tr&ecirc;n su&#7889;t &#273;o&#7841;n h&agrave;nh tr&igrave;nh.</p>
<p>Trong khi &#273;&oacute; h&agrave;ng gh&#7871; th&#7913; ba v&#7899;i 2 ch&#7895; ng&#7891;i s&#7869; ph&ugrave; h&#7907;p cho tr&#7867; em, ho&#7863;c c&oacute; th&#7875; x&#7871;p l&#7841;i &#273;&#7875; l&agrave;m khoang ch&#7913;a &#273;&#7891; c&#361;ng r&#7845;t ti&#7879;n nghi.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_11.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_11.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_11.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_11.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_11.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_11.jpg" alt="Gh&#7871; ng&#7891;i tr&ecirc;n VinFast Lux SA2.0" data-ll-status="loading" /></a></figure>
<p><strong><em>H&#7879; th&#7889;ng &#273;i&#7873;u h&ograve;a t&#7921; &#273;&#7897;ng 2 v&ugrave;ng &#273;&#7897;c l&#7853;p:</em></strong></p>
<p>V&#7899;i h&#7879; th&#7889;ng &#273;i&#7873;u h&ograve;a t&#7921; &#273;&#7897;ng hai v&ugrave;ng &#273;&#7897;c l&#7853;p, ng&#432;&#7901;i l&aacute;i v&agrave; h&agrave;nh kh&aacute;ch&nbsp;c&oacute; th&#7875; t&ugrave;y &yacute; thay &#273;&#7893;i nhi&#7879;t &#273;&#7897; theo nhu c&#7847;u c&#7911;a m&igrave;nh ngay t&#7841;i v&#7883; tr&iacute; ng&#7891;i. Nh&#7901; &#273;&oacute; gi&uacute;p to&agrave;n b&#7897; kh&ocirc;ng gian c&#7911;a xe &#273;&#432;&#7907;c l&agrave;m m&aacute;t nhanh v&agrave; s&acirc;u h&#417;n, &#273;&#7891;ng th&#7901;i lu&ocirc;n t&#7841;o c&#7843;m gi&aacute;c tho&#7843;i m&aacute;i cho ng&#432;&#7901;i ng&#7891;i khi di chuy&#7875;n xa.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-100657-1.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-100657-1.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-100657-1.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-100657-1.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-100657-1.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/12/30/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-100657-1.jpg" alt="&#272;i&#7873;u ho&agrave; tr&ecirc;n VinFast Lux SA2.0" data-ll-status="loading" /></a></figure>
<p>&nbsp;</p>
<h2><strong>Ti&ecirc;n &iacute;ch v&agrave; gi&#7843;i tr&iacute; tr&ecirc;n VinFast Lux SA2.0</strong></h2>
<p><strong><em>&#272;&agrave;m tho&#7841;i r&#7843;nh tay v&agrave; ki&#7875;m so&aacute;t h&agrave;nh tr&igrave;nh:</em></strong></p>
<p>Hi&#7875;u &#273;&#432;&#7907;c th&oacute;i quen s&#7917; d&#7909;ng &#273;i&#7879;n tho&#7841;i khi &#273;ang l&aacute;i xe ng&agrave;y c&agrave;ng t&#259;ng c&#7911;a ng&#432;&#7901;i ti&ecirc;u d&ugrave;ng, VinFast &#273;&atilde; t&iacute;ch h&#7907;p n&uacute;t b&#7845;m nh&#7853;n cu&#7897;c g&#7885;i sau khi &#273;i&#7879;n tho&#7841;i &#273;&#432;&#7907;c k&#7871;t n&#7889;i v&#7899;i h&#7879; th&#7889;ng gi&#7843;i tr&iacute; tr&ecirc;n xe VinFast Lux SA2.0 b&#7857;ng Bluetooth ho&#7863;c h&#7879; &#273;i&#7873;u h&agrave;nh.</p>
<p>Ch&#7913;c n&#259;ng &#273;&agrave;m tho&#7841;i r&#7843;nh tay th&ocirc;ng qua n&uacute;t b&#7845;m s&#7869; gi&uacute;p cho t&agrave;i x&#7871; h&#7841;n ch&#7871; vi&#7879;c m&#7845;t t&#7853;p trung d&#7851;n &#273;&#7871;n nguy hi&#7875;m khi &#273;ang l&#432;u th&ocirc;ng.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_9.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_9.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_9.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_9.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_9.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_9.jpg" alt="H&#7879; th&#7889;ng ki&#7875;m so&aacute;t h&agrave;nh tr&igrave;nh t&iacute;ch h&#7907;p tr&ecirc;n c&#7909;m &#273;&#7891;ng h&#7891; c&#7911;a xe VinFast Lux SA2.0." data-ll-status="loading" /></a>
<figcaption>H&#7879; th&#7889;ng ki&#7875;m so&aacute;t h&agrave;nh tr&igrave;nh t&iacute;ch h&#7907;p tr&ecirc;n c&#7909;m &#273;&#7891;ng h&#7891; c&#7911;a xe VinFast Lux SA2.0</figcaption>
</figure>
<p>B&ecirc;n c&#7841;nh &#273;&oacute;, VinFast Lux SA2.0 2020 c&ograve;n trang b&#7883; th&ecirc;m h&#7879; th&#7889;ng ki&#7875;m so&aacute;t h&agrave;nh tr&igrave;nh - ch&#7913;c n&#259;ng c&oacute; kh&#7843; n&#259;ng &ldquo;&#273;&#7841;p ga&rdquo; gi&uacute;p b&#7841;n tho&#7843;i m&aacute;i r&#7843;nh ch&acirc;n h&#417;n. Nh&#7845;t l&agrave; khi di chuy&#7875;n tr&ecirc;n nh&#7919;ng &#273;o&#7841;n &#273;&#432;&#7901;ng qu&#7889;c l&#7897; ho&#7863;c cao t&#7889;c, b&#7841;n c&ograve;n c&oacute; th&#7875; thi&#7871;t l&#7853;p t&#7889;c &#273;&#7897; gi&#7899;i h&#7841;n t&#7889;i &#273;a &#273;&#7875; t&#7889;i &#273;a h&oacute;a s&#7921; an to&agrave;n khi s&#7917; d&#7909;ng t&iacute;nh n&#259;ng n&agrave;y.</p>
<p><strong><em>M&agrave;n h&igrave;nh gi&#7843;i tr&iacute; c&#7843;m &#7913;ng trung t&acirc;m:</em></strong></p>
<p>Xe VinFast Lux A2.0 s&#7903; h&#7919;u m&agrave;n h&igrave;nh gi&#7843;i tr&iacute; c&#7843;m &#7913;ng c&oacute; k&iacute;ch th&#432;&#7899;c 10.4 inch v&#7899;i c&aacute;c ch&#7913;c n&#259;ng c&#417; b&#7843;n gi&uacute;p ng&#432;&#7901;i d&ugrave;ng d&#7877; d&agrave;ng l&#432;&#7899;t ch&#7841;m s&#7917; d&#7909;ng t&#432;&#417;ng t&#7921; nh&#432; tr&ecirc;n c&aacute;c d&ograve;ng smartphone Android ho&#7863;c iOS.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_8.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_8.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_8.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_8.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_8.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_8.jpg" alt="M&agrave;n h&igrave;nh gi&#7843;i tr&iacute; c&#7843;m &#7913;ng trung t&acirc;m tr&ecirc;n xe VinFast Lux SA2.0" data-ll-status="loading" /></a>
<figcaption>M&agrave;n h&igrave;nh gi&#7843;i tr&iacute; c&#7843;m &#7913;ng trung t&acirc;m tr&ecirc;n xe VinFast Lux SA2.0</figcaption>
</figure>
<div class="ads_content ads-detail-inline" data-id="359">
<div id="AdAsia"></div>
<div id="bs_mobileinpage"></div>
<div id="bdb398f5bd47907074cbf67f6c3c3567_sync"></div>
</div>
<p>H&#417;n n&#7919;a, h&#7879; th&#7889;ng gi&#7843;i tr&iacute; c&ograve;n &#273;&#432;&#7907;c t&iacute;ch h&#7907;p MAP d&#7851;n &#273;&#432;&#7901;ng, b&#7897; ph&aacute;t Wifi 4G LTE k&egrave;m theo d&agrave;n loa 13 chi&#7871;c Amplifier &#7903; b&#7843;n cao c&#7845;p v&agrave; 8 chi&#7871;c &#273;&#7889;i v&#7899;i phi&ecirc;n b&#7843;n ti&ecirc;u chu&#7849;n, d&ugrave; l&agrave; lo&#7841;i n&agrave;o &#273;i n&#7919;a th&igrave; d&agrave;n &acirc;m thanh hi&#7879;n &#273;&#7841;i v&#7851;n &#273;&#7911; s&#7913;c khu&#7845;y &#273;&#7897;ng kh&ocirc;ng kh&iacute; trong kho&#7843;ng th&#7901;i gian l&aacute;i xe c&#7911;a b&#7841;n.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_10.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_10.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_10.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_10.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_10.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_10.jpg" alt="C&#7909;m c&#7847;n s&#7889; xe VinFast Lux SA2.0" data-ll-status="loading" /></a>
<figcaption>C&#7909;m c&#7847;n s&#7889; xe VinFast Lux SA2.0</figcaption>
</figure>
<p>Ngo&agrave;i ra, ch&#7913;c n&#259;ng &#273;i&#7873;u khi&#7875;n b&#7857;ng gi&#7885;ng n&oacute;i c&#361;ng &#273;&#432;&#7907;c t&iacute;ch h&#7907;p cho c&#7843; hai phi&ecirc;n b&#7843;n. &#272;i&#7873;u n&agrave;y cho th&#7845;y, n&#7897;i th&#7845;t xe VinFast Lux A2.0 &#273;&atilde; &#273;&#432;&#7907;c nh&agrave; s&#7843;n xu&#7845;t &#273;&#7847;u t&#432; v&ocirc; c&ugrave;ng k&#7929; l&#432;&#7905;ng v&agrave; quy&#7871;t t&acirc;m v&#432;&#417;n xa nh&#7857;m c&#7841;nh tranh c&aacute;c &#273;&agrave;n anh l&#7899;n trong c&ocirc;ng nghi&#7879;p s&#7843;n xu&#7845;t xe h&#417;i cao c&#7845;p.</p>
<h2><strong>&#272;&#7897;ng c&#417; v&agrave; v&#7853;n h&agrave;nh VinFast Lux SA2.0 2021</strong></h2>
<p><strong><em>&#272;&#7897;ng c&#417;:</em></strong></p>
<p>Cung c&#7845;p s&#7913;c m&#7841;nh cho chi&#7871;c VinFast Lux SA 2.0 l&agrave; &#273;&#7897;ng c&#417; 2.0L DOHC, i4, t&#259;ng &aacute;p &#7889;ng k&eacute;p, van bi&#7871;n thi&ecirc;n, phun nhi&ecirc;n li&#7879;u tr&#7921;c ti&#7871;p. Kh&#7889;i &#273;&#7897;ng c&#417; s&#7843;n sinh c&ocirc;ng su&#7845;t t&#7889;i &#273;a&nbsp;<span class="" data-suggestions="">288 m&atilde; l&#7921;c</span>&nbsp;t&#7841;i v&ograve;ng tua 5000-6000 v&ograve;ng/ph&uacute;t, m&ocirc; men xo&#7855;n c&#7921;c &#273;&#7841;i 350 Nm &#7903; v&ograve;ng tua 1750-4500 v&ograve;ng/ph&uacute;t.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_13.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_13.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_13.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_13.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_13.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_13.jpg" alt="&#272;&#7897;ng c&#417; xe VinFast Lux SA2.0" data-ll-status="loading" /></a>
<figcaption>VinFast Lux SA2.0 2021 &#273;&#432;&#7907;c trang b&#7883; kh&#7889;i &#273;&#7897;ng c&#417; m&#7841;nh m&#7869; l&ecirc;n t&#7899;i 288 m&atilde; l&#7921;c</figcaption>
</figure>
<p>S&#7913;c m&#7841;nh c&#7911;a kh&#7889;i &#273;&#7897;ng c&#417; n&agrave;y s&#7869; truy&#7873;n &#273;&#7871;n b&#7889;n b&aacute;nh th&ocirc;ng c&oacute; h&#7897;p s&#7889; t&#7921; &#273;&#7897;ng 8 c&#7845;p ZF. H&#7879; d&#7851;n &#273;&#7897;ng c&#7847;u sau (RWD) ho&#7863;c d&#7851;n &#273;&#7897;ng to&agrave;n th&#7901;i gian (AWD/t&ugrave;y ch&#7885;n n&acirc;ng cao) mang l&#7841;i cho ng&#432;&#7901;i l&aacute;i c&#7843;m gi&aacute;c l&aacute;i m&#432;&#7907;t m&agrave; v&agrave; ph&#7845;n kh&iacute;ch sau m&#7895;i c&uacute; &#273;&#7841;p ga.</p>
<p><strong><em>Kh&#7843; n&#259;ng v&#7853;n h&agrave;nh trong &#273;&ocirc; th&#7883;:</em></strong></p>
<p>V&#7873; kh&#7843; n&#259;ng v&#7853;n h&agrave;nh trong &#273;&ocirc; th&#7883;, VinFast Lux SA2.0 s&#7903; h&#7919;u nh&#7919;ng c&ocirc;ng ngh&#7879; v&agrave; t&iacute;nh n&#259;ng ti&ecirc;n ti&#7871;n nh&#432; t&#7921; &#273;&#7897;ng t&#7855;t &#273;&#7897;ng c&#417; t&#7841;m th&#7901;i, gi&uacute;p cho chuy&#7871;n h&agrave;nh tr&igrave;nh c&#7911;a kh&aacute;ch h&agrave;ng th&ecirc;m tho&#7843;i m&aacute;i, v&agrave; ti&#7871;t ki&#7879;m nhi&ecirc;n li&#7879;u h&#417;n khi ph&#7843;i &#273;i tr&ecirc;n nh&#7919;ng &#273;o&#7841;n &#273;&#432;&#7901;ng c&oacute; nhi&#7873;u c&#7897;t &#273;&egrave;n giao th&ocirc;ng trong ph&#7889;.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_14.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_14.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_14.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_14.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_14.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/VinFast-Lux-SA20_14.jpg" alt="Kh&#7843; n&#259;ng v&#7853;n h&agrave;nh VinFast Lux SA2.0" data-ll-status="loading" /></a>
<figcaption>Lux SA2.0 &#273;&#432;&#7907;c trang b&#7883; d&#7851;n &#273;&#7897;ng c&#7847;u sau tr&ecirc;n phi&ecirc;n b&#7843;n ti&ecirc;u chu&#7849;n v&agrave; d&#7851;n &#273;&#7897;ng 4 b&aacute;nh to&agrave;n th&#7901;i gian tr&ecirc;n phi&ecirc;n b&#7843;n cao c&#7845;p</figcaption>
</figure>
<p>VinFast Lux SA2.0 s&#7917; d&#7909;ng h&#7879; th&#7889;ng treo &#273;&#7897;c l&#7853;p, tay &#273;&ograve;n d&#432;&#7899;i k&eacute;p, gi&aacute; &#273;&#7905; b&#7857;ng nh&ocirc;m &#7903; h&#7879; th&#7889;ng treo tr&#432;&#7899;c. Li&ecirc;n k&#7871;t &#273;&#7897;c l&#7853;p, 5 li&ecirc;n k&#7871;t v&#7899;i&nbsp;<span class="" data-suggestions="&#273;&agrave;n">&#273;&ograve;n</span>&nbsp;h&#432;&#7899;ng d&#7851;n, thanh ngang &#7893;n &#273;&#7883;nh, gi&#7843;m ch&#7845;n kh&iacute; n&eacute;n. &#272;&#7843;m b&#7843;o xe v&#7853;n h&agrave;nh &ecirc;m &aacute;i v&#7899;i &#273;&#7883;a h&igrave;nh giao th&ocirc;ng t&#7841;i Vi&#7879;t Nam.</p>
<p>Ngo&agrave;i ra, n&#7897;i th&#7845;t r&#7897;ng r&atilde;i v&agrave; cao c&#7845;p v&#7899;i nhi&#7873;u ti&#7879;n nghi trong xe c&#361;ng g&oacute;p ph&#7847;n t&#7889;i &#432;u kh&#7843; n&#259;ng v&#7853;n h&agrave;nh c&#7911;a chi&#7871;c VinFast Lux SA2.0 trong &#273;&ocirc; th&#7883;. Gh&#7871; b&#7885;c da t&iacute;ch h&#7907;p ch&#7881;nh &#273;i&#7879;n cao c&#7845;p s&#7869; gi&uacute;p cho c&#7843; h&agrave;nh kh&aacute;ch l&#7851;n t&agrave;i x&#7871; s&#7869; c&#7843;m nh&#7853;n &#273;&#432;&#7907;c s&#7921; tho&#7843;i m&aacute;i trong kho&#7843;ng th&#7901;i gian &#273;ang di chuy&#7875;n c&#7911;a xe.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/lux-sa20.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/hiep95/2020/03/06/lux-sa20.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/hiep95/2020/03/06/lux-sa20.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/hiep95/2020/03/06/lux-sa20.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/hiep95/2020/03/06/lux-sa20.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/hiep95/2020/03/06/lux-sa20.jpg" alt="Gh&#7871; ng&#7891;i b&#7885;c da tr&ecirc;n xe VinFast Lux SA2.0" data-ll-status="loading" /></a></figure>
<h2><strong>Trang b&#7883; an to&agrave;n VinFast Lux SA2.0 2021</strong></h2>
<p>VinFast Lux SA2.0 &#273;&#432;&#7907;c trang b&#7883; h&agrave;ng lo&#7841;t c&aacute;c t&iacute;nh n&#259;ng c&ocirc;ng ngh&#7879; an to&agrave;n hi&#7879;n &#273;&#7841;i h&agrave;ng &#273;&#7847;u hi&#7879;n nay &#273;&#7875; &#273;&#7843;m b&#7843;o s&#7921; y&ecirc;n t&acirc;m nh&#7845;t &#273;&#7889;i v&#7899;i kh&aacute;ch h&agrave;ng bao g&#7891;m:</p>
<ul>
<li>H&#7879; th&#7889;ng ch&#7889;ng b&oacute; c&#7913;ng phanh ABS</li>
<li>Ph&acirc;n ph&#7889;i l&#7921;c phanh &#273;i&#7879;n t&#7917; EBD</li>
<li>H&#7895; tr&#7907; phanh g&#7845;p BA</li>
<li>H&#7879; th&#7889;ng c&acirc;n b&#7857;ng &#273;i&#7879;n t&#7917; ESC</li>
<li>Ki&#7875;m so&aacute;t l&#7921;c k&eacute;o TCS</li>
<li>H&#7895; tr&#7907; kh&#7903;i h&agrave;nh ngang d&#7889;c HAS</li>
<li>Ch&#7913;c n&#259;ng ch&#7889;ng l&#7853;t ROM</li>
<li>Camera v&agrave; rada c&#7843;nh b&aacute;o &#273;i&#7875;m m&ugrave;</li>
<li>H&#7879; th&#7889;ng 6 t&uacute;i kh&iacute; an to&agrave;n</li>
</ul>
<h2><strong>So s&aacute;nh c&aacute;c phi&ecirc;n b&#7843;n VinFast Lux SA2.0</strong></h2>
<p>Hi&#7879;n nay, VinFast Lux SA 2.0 &#273;&#432;&#7907;c ph&acirc;n ph&#7889;i v&#7899;i 3 phi&ecirc;n b&#7843;n: Ti&ecirc;u chu&#7849;n, N&acirc;ng cao, Cao c&#7845;p. Gi&aacute; l&#259;n b&aacute;nh ch&ecirc;nh l&#7879;ch gi&#7919;a b&#7843;n Ti&ecirc;u chu&#7849;n v&agrave; N&acirc;ng cao l&agrave; 76,5 tri&#7879;u &#273;&#7891;ng, v&agrave; ch&ecirc;nh l&#7879;ch gi&#7919;a b&#7843;n N&acirc;ng cao v&agrave; Cao c&#7845;p l&agrave; 160,8 tri&#7879;u &#273;&#7891;ng.</p>
<p>V&#7899;i nhi&#7873;u &#273;i&#7875;m kh&aacute;c nhau v&#7873; trang b&#7883; c&#361;ng nh&#432; gi&aacute; b&aacute;n, kh&aacute;ch h&agrave;ng Vi&#7879;t s&#7869; c&#7847;n ph&#7843;i c&acirc;n nh&#7855;c khi ch&#7885;n mua xe VinFast Lux SA2.0.</p>
<p><em><strong>So s&aacute;nh Lux SA2.0 Ti&ecirc;u chu&#7849;n v&agrave; N&acirc;ng cao:</strong></em></p>
<div class="table-responsive-247">
<table border="1">
<tbody>
<tr>
<td><strong>Trang b&#7883;</strong></td>
<td><strong>Lux SA2.0 Ti&ecirc;u chu&#7849;n</strong></td>
<td><strong>Lux SA2.0 N&acirc;ng cao</strong></td>
</tr>
<tr>
<td>K&iacute;nh c&aacute;ch nhi&#7879;t t&#7889;i m&agrave;u</td>
<td>Kh&ocirc;ng</td>
<td>2 k&iacute;nh c&#7917;a s&#7893; h&agrave;ng gh&#7871; sau, 2 k&iacute;nh &ocirc; tho&aacute;ng sau &amp; k&iacute;nh sau</td>
</tr>
<tr>
<td>Vi&#7873;n trang tr&iacute; Crom b&ecirc;n ngo&agrave;i</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>Thanh trang tr&iacute; n&oacute;c</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>S&#7841;c kh&ocirc;ng d&acirc;y</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>Wifi</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>H&#7879; th&#7889;ng &acirc;m thanh</td>
<td>8 loa</td>
<td>13 loa c&oacute; &acirc;m-ly &amp; Ch&#7913;c n&#259;ng &#273;&#7883;nh v&#7883;, b&#7843;n &#273;&#7891; (t&iacute;ch h&#7907;p trong m&agrave;n h&igrave;nh trung t&acirc;m)</td>
</tr>
<tr>
<td>C&#7843;m bi&#7871;n ph&iacute;a tr&#432;&#7899;c h&#7895; tr&#7907; &#273;&#7895; xe</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>Ch&#7913;c n&#259;ng c&#7843;nh b&aacute;o &#273;i&#7875;m m&ugrave;</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>C&#7889;p xe c&oacute; ch&#7913;c n&#259;ng &#273;&oacute;ng/m&#7903; &#273;i&#7879;n&nbsp;&amp; m&#7903; b&#7857;ng &#273;&aacute; ch&acirc;n</td>
<td>Kh&ocirc;ng</td>
<td>C&oacute;</td>
</tr>
<tr>
<td>Camera 360 &#273;&#7897;</td>
<td>Kh&ocirc;ng</td>
<td>T&iacute;ch h&#7907;p v&#7899;i m&agrave;n h&igrave;nh</td>
</tr>
</tbody>
</table>
</div>
<p>So s&aacute;nh Lux SA2.0 b&#7843;n Ti&ecirc;u chu&#7849;n v&agrave; N&acirc;ng cao, v&#7899;i gi&aacute; ch&ecirc;nh l&#7879;ch 76,5 tri&#7879;u &#273;&#7891;ng, Lux SA N&acirc;ng cao c&oacute; th&ecirc;m c&aacute;c trang b&#7883; g&#7891;m: k&iacute;nh c&aacute;ch nhi&#7879;t t&#7889;i m&agrave;u, vi&#7873;n chrome trang tr&iacute;, thanh trang tr&iacute; n&oacute;c, s&#7841;c kh&ocirc;ng d&acirc;y, k&#7871;t n&#7889;i Wifi, c&#7889;p &#273;i&#7879;n, c&#7843;m bi&#7871;n ph&iacute;a tr&#432;&#7899;c h&#7895; tr&#7907; &#273;&#7895; xe, c&#7843;nh b&aacute;o &#273;i&#7875;m m&ugrave;,&nbsp;<span class="" data-suggestions="c&#7889;p,l&#7889;p,c&#7845;p,c&#7855;p,c&aacute;p">c&#7889;p</span>&nbsp;xe c&oacute; ch&#7913;c n&#259;ng &#273;&oacute;ng/m&#7903; &#273;i&#7879;n &amp; m&#7903; b&#7857;ng &#273;&aacute; ch&acirc;n.</p>
<p>H&#7879; th&#7889;ng gi&#7843;i tr&iacute; tr&ecirc;n b&#7843;n N&acirc;ng cao c&#361;ng &#273;&#432;&#7907;c n&acirc;ng c&#7845;p h&#417;n v&#7899;i 13 loa c&oacute; &acirc;m-<span class="" data-suggestions="l&yacute;">ly</span>&nbsp;trong khi &#7903; b&#7843;n Ti&ecirc;u chu&#7849;n ch&#7881; l&agrave; 8 loa. Lux SA2.0 N&acirc;ng cao c&#361;ng &#273;&#432;&#7907;c b&#7893; sung th&ecirc;m ch&#7913;c n&#259;ng &#273;&#7883;nh v&#7883;, b&#7843;n &#273;&#7891; (t&iacute;ch h&#7907;p trong m&agrave;n h&igrave;nh trung t&acirc;m) v&agrave; camera 360 &#273;&#7897; t&iacute;ch h&#7907;p v&#7899;i m&agrave;n h&igrave;nh.</p>
<p><em><strong>So s&aacute;nh Lux SA2.0 N&acirc;ng cao v&agrave; Cao c&#7845;p:</strong></em></p>
<div class="table-responsive-247">
<table border="1">
<tbody>
<tr>
<td><strong>Trang b&#7883;</strong></td>
<td><strong>Lux SA2.0 N&acirc;ng cao</strong></td>
<td><strong>Lux SA2.0 Cao c&#7845;p</strong></td>
</tr>
<tr>
<td>M&acirc;m xe</td>
<td>19 inch</td>
<td>20 inch</td>
</tr>
<tr>
<td>D&#7851;n &#273;&#7897;ng</td>
<td>C&#7847;u sau - RWD</td>
<td>4 b&aacute;nh to&agrave;n th&#7901;i gian - AWD</td>
</tr>
<tr>
<td>Ti&ecirc;u th&#7909; nhi&ecirc;n li&#7879;u</td>
<td>
<div>8,39 L/100km (&#273;&#432;&#7901;ng k&#7871;t h&#7907;p)</div>
<div>10,46 L/100km (trong &#273;&ocirc; th&#7883;)</div>
<div>7,18 L/100km (ngo&agrave;i &#273;&ocirc; th&#7883;)</div>
</td>
<td>
<div>10,92 L/100km (&#273;&#432;&#7901;ng k&#7871;t h&#7907;p)</div>
<div>15,81 L/100km (trong &#273;&ocirc; th&#7883;)</div>
<div>8,01 L/100km (ngo&agrave;i &#273;&ocirc; th&#7883;)</div>
</td>
</tr>
<tr>
<td>Tu&#7923; ch&#7885;n m&agrave;u n&#7897;i th&#7845;t</td>
<td>1 m&agrave;u (&#272;en)</td>
<td>1 trong 3 m&agrave;u (NAPA - N&acirc;u - &#272;en)</td>
</tr>
<tr>
<td>H&agrave;ng gh&#7871; tr&#432;&#7899;c</td>
<td>Ch&#7881;nh &#273;i&#7879;n 4 h&#432;&#7899;ng, ch&#7881;nh c&#417; 2 h&#432;&#7899;ng</td>
<td>12 h&#432;&#7899;ng (8 h&#432;&#7899;ng &#273;i&#7879;n + 4 h&#432;&#7899;ng &#273;&#7879;m l&#432;ng)</td>
</tr>
<tr>
<td>H&#7879; th&#7889;ng &aacute;nh s&aacute;ng trang tr&iacute;</td>
<td>Kh&ocirc;ng</td>
<td>&#272;&egrave;n chi&#7871;u b&#7853;c c&#7917;a/ &#272;&egrave;n chi&#7871;u khoang &#273;&#7875; ch&acirc;n/ &#272;&egrave;n trang tr&iacute;</td>
</tr>
<tr>
<td>Gi&aacute; &#273;&#7875; c&#7889;c</td>
<td>Kh&ocirc;ng</td>
<td>H&agrave;ng th&#7871; th&#7913; 2 v&agrave; 3</td>
</tr>
<tr>
<td>Ch&#7895; &#273;&#7875; ch&acirc;n gh&#7871; l&aacute;i</td>
<td>Kh&ocirc;ng</td>
<td>&#272;&#432;&#7907;c &#7889;p b&#7857;ng th&eacute;p kh&ocirc;ng g&#7881;</td>
</tr>
</tbody>
</table>
</div>
<p>V&#7899;i m&#7913;c gi&aacute; ch&ecirc;nh l&#7879;ch 160,8 tri&#7879;u &#273;&#7891;ng, &#273;i&#7875;m kh&aacute;c bi&#7879;t l&#7899;n nh&#7845;t gi&#7919;a Lux SA2.0 phi&ecirc;n b&#7843;n Cao c&#7845;p v&agrave; N&acirc;ng cao n&#7857;m &#7903; h&#7879; th&#7889;ng truy&#7873;n &#273;&#7897;ng v&agrave; trang b&#7883; n&#7897;i th&#7845;t.</p>
<p>Phi&ecirc;n b&#7843;n Cao c&#7845;p s&#7917; d&#7909;ng d&#7851;n &#273;&#7897;ng 4 b&aacute;nh to&agrave;n th&#7901;i gian (AWD) gi&uacute;p xe c&oacute; kh&#7843; n&#259;ng b&aacute;m &#273;&#432;&#7901;ng t&#7889;t h&#417;n b&#7843;n Ti&ecirc;u chu&#7849;n (s&#7917; d&#7909;ng RWD) trong c&aacute;c &#273;i&#7873;u ki&#7879;n v&#7853;n h&agrave;nh tr&#7901;i m&#432;a, hay s&igrave;nh l&#7847;y nh&#7865;. Tuy nhi&ecirc;n phi&ecirc;n b&#7843;n n&agrave;y c&#361;ng ti&ecirc;u t&#7889;n nhi&ecirc;n li&#7879;u h&#417;n khi v&#7853;n h&agrave;nh.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111452-1.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111452-1.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111452-1.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111452-1.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111452-1.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111452-1.jpg" alt="Lux SA2.0 2021" data-ll-status="loading" /></a></figure>
<p>V&#7873; n&#7897;i th&#7845;t, Lux SA2.0 Cao c&#7845;p c&#361;ng c&oacute; nh&#7919;ng n&acirc;ng c&#7845;p &#273;&aacute;ng k&#7875; cho v&#7899;i Lux SA2.0 N&acirc;ng cao g&#7891;m: t&ugrave;y ch&#7885;n 1 trong 3 m&agrave;u n&#7897;i th&#7845;t, gh&#7871; tr&#432;&#7899;c ch&#7881;nh 12 h&#432;&#7899;ng, h&#7879; th&#7889;ng &#273;&egrave;n chi&#7871;u b&#7853;c c&#7917;a/ khoang &#273;&#7875; ch&acirc;n/ &#273;&egrave;n trang tr&iacute;, gi&aacute; &#273;&#7875; c&#7889;c v&agrave; ch&#7895; &#273;&#7875; ch&acirc;n ph&iacute;a gh&#7871; l&aacute;i.</p>
<p><em><strong>N&ecirc;n ch&#7885;n phi&ecirc;n b&#7843;n Lux SA2.0 n&agrave;o?</strong></em></p>
<p>Nh&igrave;n chung, VinFast Lux SA2.0 Ti&ecirc;u chu&#7849;n &#273;&atilde; &#273;&aacute;p &#7913;ng kh&aacute; &#7893;n c&aacute;c nhu c&#7847;u s&#7917; d&#7909;ng th&ocirc;ng th&#432;&#7901;ng. Tuy v&#7853;y, phi&ecirc;n b&#7843;n Lux SA2.0 N&acirc;ng cao v&#7899;i m&#7913;c gi&aacute; ch&ecirc;nh l&#7879;ch kh&ocirc;ng qu&aacute; l&#7899;n, &#273;&#432;&#7907;c b&#7893; sung c&aacute;c trang b&#7883; ti&#7879;n nghi v&agrave; h&#7895; tr&#7907; l&aacute;i xe an to&agrave;n... B&#7843;n N&acirc;ng cao &#273;&#432;&#7907;c &#273;&aacute;nh gi&aacute; l&agrave; s&#7921; l&#7921;a ch&#7885;n h&#7907;p l&yacute; v&agrave; v&#7915;a t&#7847;m v&#7899;i nhu c&#7847;u s&#7917; d&#7909;ng chung c&#7911;a ng&#432;&#7901;i d&ugrave;ng ph&acirc;n kh&uacute;c n&agrave;y.</p>
<p>C&ograve;n n&#7871;u kh&aacute;ch h&agrave;ng d&#432; d&#7843; t&agrave;i ch&iacute;nh h&#417;n, mu&#7889;n tr&#7843;i nghi&#7879;m nh&#7919;ng c&ocirc;ng ngh&#7879; &#273;&#7881;nh cao, c&#7843;m gi&aacute;c l&aacute;i m&#7841;nh m&#7869; v&agrave; nh&#7919;ng trang b&#7883; &#273;&#7859;ng c&#7845;p, kh&aacute;ch h&agrave;ng c&oacute; th&#7875; l&#7921;a ch&#7885;n VinFast Lux SA2.0 Cao c&#7845;p.</p>
<figure class="expNoEdit"><a class="thumb_detail" href="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111222-1.jpg" data-caption="" data-at-450="https://cdn-thethao247.com/origin_450x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111222-1.jpg" data-at-800="https://cdn-thethao247.com/origin_800x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111222-1.jpg" data-at-1366="https://cdn-thethao247.com/origin_1366x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111222-1.jpg" data-at-1920="https://cdn-thethao247.com/origin_1920x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111222-1.jpg"><img class="img-responsive loading" title="" src="https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/12/26/vinfast-lux-sa20-thong-so-gia-lan-banh-khuyen-mai-12-2020-111222-1.jpg" alt="xe VinFast Lux SA2.0 2020" data-ll-status="loading" /></a></figure>
<h2><strong>&#431;u nh&#432;&#7907;c &#273;i&#7875;m c&#7911;a VinFast Lux SA2.0 l&agrave; g&igrave;?</strong></h2>
<p><em><strong>&#431;u &#273;i&#7875;m:</strong></em></p>
<ul>
<li>Thi&#7871;t k&#7871; &#7845;n t&#432;&#7907;ng, phong c&aacute;ch ri&ecirc;ng</li>
<li>Trang b&#7883; ti&#7879;n nghi &#273;&#7911; d&ugrave;ng</li>
<li>V&#7853;n h&agrave;nh &ecirc;m &aacute;i</li>
<li>&#272;&#7897;ng c&#417; t&aacute;i thi&#7871;t k&#7871; t&#7915; N20 c&#7911;a BMW</li>
<li>H&#7897;p s&#7889; 8 c&#7845;p ZF</li>
<li>H&#7879; th&#7889;ng treo &ecirc;m, khung g&#7847;m s&#7917; d&#7909;ng n&#7873;n t&#7843;ng BMW X5</li>
<li>Chi ph&iacute; b&#7843;o d&#432;&#7905;ng, thay th&#7871; ph&#7909; t&ugrave;ng</li>
<li>C&aacute;c ch&iacute;nh s&aacute;ch khuy&#7871;n m&atilde;i v&agrave; h&#7853;u m&atilde;i h&#7845;p d&#7851;n</li>
</ul>
<p><em><strong>Nh&#432;&#7907;c &#273;i&#7875;m:</strong></em></p>
<ul>
<li>Kh&ocirc;ng gian xe h&#417;i ch&#7853;t so v&#7899;i k&iacute;ch th&#432;&#7899;c t&#7893;ng th&#7875;</li>
<li>H&agrave;ng gh&#7871; th&#7913; 3 gh&#7871; nh&#7887; v&agrave; m&#7887;ng</li>
<li>Kh&ocirc;ng c&oacute; l&#7851;y chuy&#7875;n s&#7889;, gi&#7919; phanh t&#7921; &#273;&#7897;ng, l&#7889;p d&#7921; ph&ograve;ng</li>
</ul>
<p><iframe src="https://www.youtube.com/embed/F2oQMOWNqyE" width="100%" height="450" frameborder="0" allowfullscreen="allowfullscreen" data-mce-fragment="1"></iframe></p>
<p><em>&#272;&aacute;nh gi&aacute; v&agrave; tr&#7843;i nghi&#7879;m VinFast Lux SA2.0 (VIDEO: XeHay)</em></p>
<h2><strong>K&#7871;t lu&#7853;n</strong></h2>
<p>R&#7845;t nhi&#7873;u c&acirc;u h&#7887;i &#273;&#7863;t ra xe VinFast Lux SA2.0 c&oacute; t&#7889;t kh&ocirc;ng, c&oacute; b&#7873;n kh&ocirc;ng. V&#7899;i m&#7897;t m&#7851;u xe ho&agrave;n to&agrave;n m&#7899;i &#273;&#7871;n t&#7915; h&atilde;ng xe &ocirc; t&ocirc; Vi&#7879;t th&igrave; c&#7847;n &iacute;t nh&#7845;t 5 - 10 n&#259;m &#273;&#7875; c&oacute; th&#7875; &#273;&aacute;nh gi&aacute; ch&#7845;t l&#432;&#7907;ng, &#273;&#7897; b&#7873;n c&#7911;a chi&#7871;c xe.</p>
<p>Tuy nhi&ecirc;n, ph&#7843;i c&ocirc;ng nh&#7853;n r&#7857;ng m&#7851;u SUV &#273;&#7847;u ti&ecirc;n n&agrave;y c&#7911;a Vi&#7879;t Nam s&#7903; h&#7919;u r&#7845;t nhi&#7873;u &#432;u &#273;i&#7875;m n&#7893;i b&#7853;t c&ugrave;ng h&agrave;ng lo&#7841;t c&ocirc;ng ngh&#7879; hi&#7879;n &#273;&#7841;i. Ch&#432;a k&#7875; c&aacute;c ch&iacute;nh s&aacute;ch h&#7853;u m&atilde;i c&#361;ng nh&#432; ch&#259;m s&oacute;c kh&aacute;ch h&agrave;ng l&agrave; m&#7897;t &#273;i&#7875;m c&#7897;ng l&#7899;n cho VinFast Lux SA2.0. V&igrave; th&#7871;, &#273;&acirc;y v&#7851;n l&agrave; m&#7897;t s&#7921; l&#7921;a ch&#7885;n &#273;&aacute;ng &#273;&#7875; kh&aacute;ch h&agrave;ng c&acirc;n nh&#7855;c tr&#432;&#7899;c khi xu&#7889;ng ti&#7873;n.</p>
<h2><strong>C&acirc;u h&#7887;i th&#432;&#7901;ng g&#7863;p v&#7873; VinFast Lux SA2.0</strong></h2>
<p><em><strong>VinFast Lux SA2.0 thu&#7897;c ph&acirc;n kh&uacute;c n&agrave;o?</strong></em></p>
<p>T&#7841;i th&#7883; tr&#432;&#7901;ng Vi&#7879;t Nam hi&#7879;n nay, VinFast Lux SA2.0 &#273;&#432;&#7907;c &#273;&#7883;nh h&igrave;nh &#7903; ph&acirc;n kh&uacute;c h&#417;i l&#7905; c&#7905;. So v&#7899;i c&aacute;c m&#7851;u CUV/SUV h&#7841;ng D quen thu&#7897;c nh&#432; Toyota Fortuner, Hyundai SantaFe, Ford Everest, Kia Sorento, Mazda CX-8, Peugeot 5008, Mitsubishi Pajero Sport hay Nissan Terra, gi&aacute; Lux SA2.0 c&oacute; s&#7921; ch&ecirc;nh l&#7879;ch kh&ocirc;ng nh&#7887;.</p>
<p>Trong khi &#273;&oacute;, n&#7871;u &#273;em so s&aacute;nh v&#7899;i c&aacute;c m&#7851;u xe ch&acirc;u &Acirc;u nh&#432; Mercedes GLC200, Volkswagen Tiguan Allspace,&nbsp; Ford Explorer&hellip; th&igrave; Lux SA2.0 l&#7841;i th&#7845;p h&#417;n.</p>
<p><em><strong>Vinfast Lux sa2.0 c&oacute; m&#7845;y m&agrave;u?</strong></em></p>
<p>Lux SA2.0 c&oacute; 8 m&agrave;u xe g&#7891;m X&aacute;m, &#272;&#7887;, Xanh D&#432;&#417;ng, &#272;en, B&#7841;c, N&acirc;u, Tr&#7855;ng, Cam.</p>
<p><em><strong>Nh&#7919;ng &#273;&#7891; ch&#417;i xe VinFast Lux SA2.0 n&agrave;o &#273;&aacute;ng mua?</strong></em></p>
<p>Hi&#7879;n nay nhi&#7873;u c&#7917;a h&agrave;ng c&oacute; b&aacute;n c&aacute;c lo&#7841;i &#273;&#7891; ch&#417;i cho xe VinFast Lux SA2.0, kh&aacute;ch h&agrave;ng c&oacute; th&#7875; tham kh&#7843;o nh&#432;: &#272;&#7897; c&#7917;a h&iacute;t, &#273;&#7897; c&#7889;p &#273;i&#7879;n, b&#7853;c &#273;i&#7879;n l&ecirc;n xu&#7889;ng...</p>
</div>', CAST(N'2021-02-18' AS Date), NULL, 8, NULL, NULL, N'https://cdn-thethao247.com/origin_850x0/upload/namvu/2020/09/24/vinfast-lux-sa20-gia-lan-banh-thong-so-uu-dai-09-2020-153903-1.jpg', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (43, N'VinFast cho ra mắt 3 dòng xe điện', N'<h2 class="font-weight-bold news-content-sapo mb-4">Ng&agrave;y 22/01/2021, C&ocirc;ng ty TNHH Sản xuất v&agrave; Kinh doanh VinFast c&ocirc;ng bố 3 d&ograve;ng xe SUV điện th&ocirc;ng minh, sử dụng c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo với những t&iacute;nh năng th&ocirc;ng minh vượt trội. Đ&acirc;y l&agrave; cột mốc quan trọng, khẳng định tầm nh&igrave;n trở th&agrave;nh h&atilde;ng xe điện th&ocirc;ng minh to&agrave;n cầu của VinFast; đồng thời g&oacute;p phần đưa Việt Nam l&ecirc;n vị thế mới tr&ecirc;n bản đồ c&ocirc;ng nghiệp &ocirc; t&ocirc; thế giới.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p><em>Với định hướng chiến</em>&nbsp;lược l&agrave; trở th&agrave;nh thương hiệu &ocirc; t&ocirc; c&ocirc;ng nghệ cao to&agrave;n cầu, chỉ sau 3 năm đi v&agrave;o hoạt động, VinFast đ&atilde; nghi&ecirc;n cứu v&agrave; ph&aacute;t triển th&agrave;nh c&ocirc;ng ba d&ograve;ng xe th&ocirc;ng minh đầu ti&ecirc;n l&agrave; VF31, VF32, VF33, trong đ&oacute; VF31 l&agrave; d&ograve;ng SUV cỡ vừa (Ph&acirc;n kh&uacute;c C) v&agrave; chỉ c&oacute; một phi&ecirc;n bản xe điện, VF32 l&agrave; xe SUV cỡ trung (Ph&acirc;n kh&uacute;c D), VF33 l&agrave; xe SUV cỡ đại (Ph&acirc;n kh&uacute;c E). VF32 v&agrave; VF33 mỗi xe đều c&oacute; 2 phi&ecirc;n bản điện v&agrave; xăng.</p>
<p><img src="https://storage.googleapis.com/vinfast-data-01/VF31_frontview_0.jpg" alt="VF31_Frontview" data-align="center" data-entity-type="file" data-entity-uuid="fef27c52-add2-4e01-9d82-ffbd3945fb7c" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>Cả 3 d&ograve;ng xe đều sở hữu t&iacute;nh năng tự h&agrave;nh cấp độ 2-3, với 30 t&iacute;nh năng th&ocirc;ng minh chia l&agrave;m 7 nh&oacute;m gồm: hệ thống trợ l&aacute;i th&ocirc;ng minh, hệ thống kiểm so&aacute;t l&agrave;n th&iacute;ch ứng, hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh chủ động, hệ thống cảnh b&aacute;o va chạm đa điểm, hệ thống giảm thiểu va chạm to&agrave;n diện, hệ thống đỗ xe tự động th&ocirc;ng minh v&agrave; hệ thống gi&aacute;m s&aacute;t người l&aacute;i.&nbsp;<strong>Đ&acirc;y cũng l&agrave; c&aacute;c mẫu SUV nằm trong nh&oacute;m &iacute;t c&aacute;c xe tr&ecirc;n thế giới c&oacute; nhiều t&iacute;nh năng tự h&agrave;nh cấp độ 3</strong>, khẳng định năng lực R&amp;D v&agrave; năng lực triển khai c&aacute;c sản phẩm đẳng cấp cao, mang t&iacute;nh ti&ecirc;n phong của VinFast.</p>
<p>Đặc biệt, bản cao cấp của VF31, VF32 v&agrave; VF33 đều sở hữu&nbsp;<strong>hệ thống cảm biến hiệu suất cao</strong>&nbsp;gồm cảm biến LiDAR; 14 camera c&oacute; khả năng ph&aacute;t hiện vật thể c&aacute;ch xa tới 687m; 19 cảm biến 360 độ cho ph&eacute;p cảnh b&aacute;o v&agrave; xử l&yacute; ở tốc độ cao tr&ecirc;n 100km/h. Hệ thống tự l&aacute;i được điều khiển bởi chip Orin-X c&oacute; thể xử l&iacute; tới 200 GB dữ liệu/1s, cho ph&eacute;p điều khiển v&agrave; dẫn đường nhanh gấp 8 lần so với c&aacute;c thế hệ hiện tại. Ngo&agrave;i ra, bản cao cấp của cả 3 d&ograve;ng xe đều được trang bị th&ecirc;m một số t&iacute;nh năng tự h&agrave;nh cấp độ 4 như tự động thiết lập bản đồ 3 chiều (duy nhất tr&ecirc;n thị trường), cho ph&eacute;p tự động t&igrave;m chỗ v&agrave; đỗ xe; triệu hồi xe&hellip; c&ugrave;ng khả năng kết nối với hệ thống giao th&ocirc;ng v&agrave; đ&ocirc; thị th&ocirc;ng minh, mang đến trải nghiệm tiện nghi, an to&agrave;n v&agrave; đẳng cấp cho người d&ugrave;ng.</p>
<p><img src="https://storage.googleapis.com/vinfast-data-01/VF32_sideview01.jpg" alt="VF32_Sideview" data-align="center" data-entity-type="file" data-entity-uuid="c95a61fc-ce6c-44a2-96e5-2733e4b4dbfa" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>B&ecirc;n cạnh t&iacute;nh năng tự h&agrave;nh vượt trội &ndash; với&nbsp;<strong>triết l&yacute; ph&aacute;t triển &ldquo;lấy người d&ugrave;ng l&agrave;m trung t&acirc;m&rdquo;</strong>&nbsp;&ndash; VinFast đặc biệt đầu tư cho&nbsp;<strong>t&iacute;nh năng th&ocirc;ng minh (buồng l&aacute;i ảo e-cockpit)</strong>&nbsp;với những c&ocirc;ng nghệ ti&ecirc;n tiến h&agrave;ng đầu thế giới như: c&ocirc;ng nghệ tr&iacute; tuệ nh&acirc;n tạo (AI), m&aacute;y học v&agrave; học s&acirc;u (Deep Learning), nhận diện gương mặt, trợ l&yacute; ảo đa ng&ocirc;n ngữ&hellip; C&aacute;c t&iacute;nh năng tr&ecirc;n kh&ocirc;ng chỉ mở ra kh&ocirc;ng gian hưởng thụ tiện nghi v&agrave; giải tr&iacute; ho&agrave;n hảo trong xe, m&agrave; c&ograve;n t&ugrave;y biến tối đa để c&aacute; nh&acirc;n h&oacute;a xe theo đặc t&iacute;nh v&agrave; th&oacute;i quen sử dụng của chủ nh&acirc;n. Đ&acirc;y ch&iacute;nh l&agrave; điểm kh&aacute;c biệt nổi trội, được h&atilde;ng ch&uacute; trọng ph&aacute;t triển nhằm n&acirc;ng cao trải nghiệm người d&ugrave;ng, tạo n&ecirc;n từng khoảnh khắc đ&aacute;ng gi&aacute; nhất, chỉ c&oacute; ở xe điện VinFast.</p>
<p>Về độ an to&agrave;n, cả ba d&ograve;ng xe đều đạt c&aacute;c ti&ecirc;u chuẩn an to&agrave;n cao nhất của thế giới như NHTSA 5 sao, Euro NCAP 5 sao&hellip; c&ugrave;ng hệ thống tự động ph&aacute;t hiện, cảnh b&aacute;o v&agrave; th&ocirc;ng b&aacute;o tới cơ sở y tế trong trường hợp xảy ra tai nạn. C&aacute;c bộ pin đều được bố tr&iacute; dưới s&agrave;n xe để chống lật, với khả năng chịu nhiệt từ -400C đến 800C đảm bảo an to&agrave;n tuyệt đối trong qu&aacute; tr&igrave;nh di chuyển. Ngo&agrave;i ra, c&aacute;c xe đều c&oacute; t&iacute;nh năng cập nhật phần mềm từ xa, tự động ph&aacute;t hiện lỗi tr&ecirc;n xe v&agrave; tự động li&ecirc;n hệ với trạm dịch vụ&hellip;&nbsp;</p>
<p><img src="https://storage.googleapis.com/vinfast-data-01/VF33_frontview_1.jpg" alt="VF33_Frontview" data-align="center" data-entity-type="file" data-entity-uuid="da35e3e3-0126-4d1b-aebf-50b287aeee32" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>Dự kiến xe VF31 phi&ecirc;n bản ti&ecirc;u chuẩn sẽ bắt đầu nhận đặt h&agrave;ng tại Việt Nam từ th&aacute;ng 5/2021, b&agrave;n giao xe từ th&aacute;ng 11/2021. Xe VF32 v&agrave; VF33 sẽ nhận đặt h&agrave;ng tại Việt Nam từ th&aacute;ng 9/2021, b&agrave;n giao xe từ th&aacute;ng 2/2022; tại Mỹ, Canada v&agrave; ch&acirc;u &Acirc;u sẽ nhận đặt h&agrave;ng từ th&aacute;ng 11/2021, b&agrave;n giao xe từ th&aacute;ng 6/2022.</p>
<p>Việc ra mắt c&aacute;c d&ograve;ng xe điện c&ocirc;ng nghệ cao, bao gồm cả xe m&aacute;y điện, xe bu&yacute;t điện v&agrave; &ocirc; t&ocirc; điện c&aacute; nh&acirc;n nằm trong lộ tr&igrave;nh định sẵn của VinFast ngay từ khi gia nh&acirc;p thị trường &ocirc; t&ocirc; 3 năm trước. Ngo&agrave;i tổ hợp nh&agrave; m&aacute;y hiện đại bậc nhất khu vực Đ&ocirc;ng Nam &Aacute; tại Việt Nam, VinFast hiện đang sở hữu mạng lưới trung t&acirc;m R&amp;D tại Australia, Đức v&agrave; Mỹ; trung t&acirc;m thử nghiệm xe đẳng cấp thế giới tại Australia. Đ&acirc;y l&agrave; cơ sở vững chắc để VinFast hiện thực h&oacute;a tầm nh&igrave;n to&agrave;n cầu &ndash; trở th&agrave;nh h&atilde;ng xe điện c&ocirc;ng nghệ cao được ưa chuộng tr&ecirc;n thế giới, g&oacute;p phần ph&aacute;t triển giao th&ocirc;ng xanh v&agrave; giảm thiểu kh&iacute; thải tr&ecirc;n tr&aacute;i đất./.</p>
<p>**************<br /><strong>Th&ocirc;ng số kỹ thuật của 3 d&ograve;ng xe mới của VinFast</strong></p>
<p><strong>VinFast VF31 - xe SUV điện ph&acirc;n kh&uacute;c C</strong></p>
<p><img src="https://storage.googleapis.com/vinfast-data-01/VF31_interior%202_0.jpg" alt="VF31_NoiThat" data-align="center" data-entity-type="file" data-entity-uuid="c703db1a-edac-43f4-a380-efb0c2f86e8a" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>&bull; Tổng thể: d&agrave;i 4.300mm, trục cơ sở d&agrave;i 2.611mm; m&agrave;n h&igrave;nh trung t&acirc;m từ 10-12,8 inch, hệ thống điều h&ograve;a sử dụng m&agrave;ng lọc HEPA với m&agrave;ng lọc than hoạt t&iacute;nh; sưởi v&ocirc;-lăng, sưởi ghế v&agrave; th&ocirc;ng gi&oacute; (bản cao cấp)&hellip;<br />&bull; Động cơ điện nam ch&acirc;m vĩnh cửu: c&ocirc;ng suất 85kW, m&ocirc;-men xoắn cực đại 190Nm. Pin dung lượng 42kWh. Qu&atilde;ng đường đi được sau mỗi lần sạc đầy l&agrave; 300km.<br />&bull; Ti&ecirc;u chuẩn an to&agrave;n: EURO NCAP 5 sao (bản cao cấp); ASEAN NCAP 4 sao (bản ti&ecirc;u chuẩn)</p>
<p><strong>VinFast VF32 - SUV cỡ trung ph&acirc;n kh&uacute;c D</strong></p>
<p><img src="https://storage.googleapis.com/vinfast-data-01/VF32_frontview%201.jpg" alt="VF32_Frontview" data-align="center" data-entity-type="file" data-entity-uuid="bdf222d6-1d5e-4f1e-87a5-27e222325ae0" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>&bull; Tổng thể: d&agrave;i 4.750mm, trục cơ sở d&agrave;i 2.950mm; m&agrave;n h&igrave;nh trung t&acirc;m 15,4 inch; hệ thống đ&egrave;n nội thất điều chỉnh đa m&agrave;u, hệ thống điều h&ograve;a sử dụng m&agrave;ng lọc HEPA với m&agrave;ng lọc than hoạt t&iacute;nh; sưởi v&ocirc;-lăng, sưởi ghế v&agrave; th&ocirc;ng gi&oacute;&hellip;<br />&bull;&nbsp;<strong>Xe điện:&nbsp;</strong>2 động cơ điện nam ch&acirc;m vĩnh cửu, c&ocirc;ng suất 300 kW v&agrave; m&ocirc; men xoắn cực đại 640 Nm (bản cao cấp). 1 động cơ điện nam ch&acirc;m vĩnh cửu c&ocirc;ng suất 150kW, 320Nm (bản ti&ecirc;u chuẩn). Pin dung lượng 90kWh v&agrave; hệ dẫn động 4 b&aacute;nh to&agrave;n thời gian. Qu&atilde;ng đường đi được sau mỗi lần sạc đầy l&agrave; 504km. Đạt ti&ecirc;u chuẩn an to&agrave;n cao nhất: NHTSA 5 sao, Euro NCAP 5 sao.<br />&bull;&nbsp;<strong>Xe xăng:</strong>&nbsp;sử dụng động cơ cao cấp 2.0L, c&ocirc;ng suất 141kW (189 m&atilde; lực), m&ocirc;-men xoắn cực đại 280 Nm.</p>
<p><strong>VinFast VF33 - SUV cỡ đại ph&acirc;n kh&uacute;c E</strong></p>
<p><img src="https://storage.googleapis.com/vinfast-data-01/VF33_interior31.jpg" alt="VF33_Noithat" data-align="center" data-entity-type="file" data-entity-uuid="ba99c3f6-8af7-4792-b87b-23963ee33fc0" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>&bull; Tổng thể: d&agrave;i 5.120mm, trục cơ sở d&agrave;i 3.150mm, m&agrave;n h&igrave;nh trung t&acirc;m 15,4 inch, hệ thống đ&egrave;n LED Matrix; k&iacute;nh trần to&agrave;n cảnh, diện t&iacute;ch 2.63m2, chống tia UV 99% (bản cao cấp)<br />&bull;&nbsp;<strong>Xe điện:</strong>&nbsp;sử dụng 2 động cơ điện nam ch&acirc;m vĩnh cửu c&ocirc;ng suất 150kW. Pin c&oacute; dung lượng l&ecirc;n tới 106kW. Qu&atilde;ng đường đi được sau mỗi lần sạc đầy l&agrave; 550km. Ti&ecirc;u chuẩn an to&agrave;n cao nhất: NHTSA 5 sao, Euro NCAP 5 sao.<br />&bull;&nbsp;<strong>Xe xăng:</strong>&nbsp;sử dụng động cơ cao cấp 2.0L, c&ocirc;ng suất 170kW (228 m&atilde; lực), m&ocirc;-men xoắn cực đại 350 Nm.</p>
<p>"</p>', CAST(N'2021-02-20' AS Date), 4, 5, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_360x200/public/2021-01/VF33_frontview_0.jpg?itok=ZLWW9tpc', 3)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (44, N'Battista Pininfarina Cha đẻ của nghành thiết kế hiện đại.', N'<h2 class="font-weight-bold news-content-sapo mb-4">Từ một người "em &uacute;t" trong gia đ&igrave;nh 11 anh chị em, Battista Pininfarina đ&atilde; trở th&agrave;nh "người khổng lồ" trong ng&agrave;nh c&ocirc;ng nghiệp &ocirc; t&ocirc; bằng những mẫu thiết kế chạm đến cảm x&uacute;c của mọi người y&ecirc;u xe tr&ecirc;n to&agrave;n thế giới.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>M&ugrave;a thu năm 1946, triển l&atilde;m xe hơi Paris Motor Show lần đầu ti&ecirc;n mở cửa trở lại sau 6 năm v&igrave; đại chiến thế giới lần thứ 2, v&igrave; vậy lượng người tới xem sự kiện n&agrave;y đạt mức kỷ lục, gấp đ&ocirc;i so với những năm trước đ&oacute;. Kh&aacute;ch đến xem triển l&atilde;m xếp một h&agrave;ng d&agrave;i từ cổng Grand Palais &ndash; nơi tổ chức sự kiện - cho đến tận bờ s&ocirc;ng Seine.&nbsp;</p>
<p>Nhưng c&oacute; một vấn đề, với trọng t&acirc;m l&agrave; t&aacute;i thiết v&agrave; phục hồi sau chiến tranh, ban tổ chức quyết định chỉ cho ph&eacute;p xe của c&aacute;c nước phe Đồng minh tham gia sự kiện.</p>
<p><img style="box-sizing: border-box; font-family: Mulish; border: 0px none; vertical-align: middle; max-width: 100%; height: auto !important; padding: 10px; width: 760px; color: #000000; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" src="https://storage.googleapis.com/vinfast-data-01/hinh-anh-paris-motor-show-1946.jpg" alt="triển l&atilde;m paris motor show 1946" data-caption="Triển l&atilde;m Paris Motor Show năm 1946, nơi c&aacute;c nh&agrave; sản xuất xe hơi của những nước phe Trục như Đức v&agrave; Italy bị cấm tham gia. Ảnh: &lt;em&gt;Wikimedia Common.&lt;/em&gt;" data-entity-type="file" data-entity-uuid="a1fab923-9f74-4cd1-8af5-ea87aa3ee3da" /></p>
<p class="text-center cap-style mt-2">Triển l&atilde;m Paris Motor Show năm 1946, nơi c&aacute;c nh&agrave; sản xuất xe hơi của những nước phe Trục như Đức v&agrave; Italy bị cấm tham gia. Ảnh:&nbsp;<em>Wikimedia Common.</em></p>
<h2>&nbsp;</h2>
<h2>Người đ&agrave;n &ocirc;ng bướng bỉnh</h2>
<p>Battista Pinin Farina kh&ocirc;ng vui với quyết định n&agrave;y của ban tổ chức, &ocirc;ng đ&atilde; d&agrave;nh h&agrave;ng th&aacute;ng trời trước đ&oacute; để tạo ra một chiếc Alfa Romeo 6C tuyệt đẹp với mục đ&iacute;ch mang đến sự kiện danh gi&aacute; ở thủ đ&ocirc; nước Ph&aacute;p. C&ugrave;ng với con trai m&igrave;nh l&agrave; Sergio, Pinin Farina quyết định sẽ tự l&aacute;i chiếc xe của m&igrave;nh đến Paris. &Ocirc;ng quyết định đỗ chiếc Alfa Romeo do m&igrave;nh l&aacute;i v&agrave; chiếc Lancia do con trai Sergio l&aacute;i - ở đại lộ Winston Churchill, ngay trước cửa Grand Palais, nơi tổ chức Paris Motor Show.</p>
<p>Chiếc Alfa Romeo mui trần với th&acirc;n xe l&agrave;m ho&agrave;n to&agrave;n bằng nh&ocirc;m, c&oacute; kiểu d&aacute;ng đẹp v&agrave; hiện đại hơn bất kỳ thứ g&igrave; tr&ecirc;n thị trường v&agrave;o l&uacute;c đ&oacute;. Nội thất được bọc da trang nh&atilde; v&agrave; c&oacute; vừa đủ những chi tiết mạ chrome, l&agrave;m nổi bật m&agrave;u sơn của xe. Kh&ocirc;ng chỉ vậy, tr&ecirc;n nắp capo c&ograve;n cắm một l&aacute; cờ &Yacute; nhỏ, như để gửi một th&ocirc;ng điệp th&aacute;ch thức tới ban tổ chức.</p>
<p>Ch&acirc;u &Acirc;u khi đ&oacute; vừa mới trải qua cuộc chiến tranh khủng khiếp nhất trong lịch sử, v&agrave; hoạt động sản xuất chưa thể trở lại mức như trước kia. C&aacute;c h&atilde;ng xe Mỹ, Anh v&agrave; Ph&aacute;p phần lớn đem tới Paris Motor Show 1946 những chiếc xe cũ từ trước chiến tranh v&agrave; họ coi sự kiện n&agrave;y như l&agrave; cơ hội để tiếp cận nguồn nguy&ecirc;n liệu th&ocirc; cho tương lai thay v&igrave; để tr&igrave;nh diễn những mẫu xe mới nhất. V&igrave; vậy 2 t&aacute;c phẩm mềm mại của Pinin Farina nhanh ch&oacute;ng thu h&uacute;t mọi &aacute;nh nh&igrave;n của kh&aacute;ch tham quan.</p>
<p>&ldquo;Farina quỷ quyệt đ&atilde; mở triển l&atilde;m ri&ecirc;ng của &ocirc;ng ta&rdquo;, b&aacute;o ch&iacute; Ph&aacute;p đưa tin nhưng người d&acirc;n Paris lại b&agrave;y tỏ sự th&iacute;ch th&uacute; với 2 chiếc xe cũng như ngưỡng mộ sự &ldquo;cứng đầu&rdquo; của nh&agrave; thiết kế người &Yacute;. C&aacute;c chuy&ecirc;n gia về lịch sử xe hơi sau n&agrave;y nhận định h&agrave;nh động của Farina đ&atilde; gi&uacute;p t&aacute;i sinh ng&agrave;nh thiết kế &ocirc; t&ocirc; Italia sau thế chiến.</p>
<p><img style="box-sizing: border-box; font-family: Mulish; border: 0px none; vertical-align: middle; max-width: 100%; height: auto !important; padding: 10px; width: 760px; color: #000000; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" src="https://storage.googleapis.com/vinfast-data-01/hinh-anh-thiet-ke-xe-cua-pininfarina-2.jpg" alt="Alfa Romeo 6C 2500 by Pininfarina" data-caption="Bất chấp lệnh cấm của ban tổ chức, Pininfarina đỗ chiếc xe của m&igrave;nh ở đối diện cổng triển l&atilde;m v&agrave; ngay lập tức vẻ đẹp của n&oacute; đ&atilde; thu h&uacute;t mọi &aacute;nh nh&igrave;n. Ảnh: &lt;em&gt;Hemming Motors.&lt;/em&gt;" data-entity-type="file" data-entity-uuid="c87faff6-99f2-4d9c-801b-54d8b5eea988" /></p>
<p class="text-center cap-style mt-2">Bất chấp lệnh cấm của ban tổ chức, Pininfarina đỗ chiếc xe của m&igrave;nh ở đối diện cổng triển l&atilde;m v&agrave; ngay lập tức vẻ đẹp của n&oacute; đ&atilde; thu h&uacute;t mọi &aacute;nh nh&igrave;n. Ảnh:&nbsp;<em>Hemming Motors.</em></p>
<p>&nbsp;</p>
<p>Danh tiếng l&agrave; vậy, nhưng Battista Farina kh&ocirc;ng sinh ra trong một gia đ&igrave;nh c&oacute; truyền thống mỹ thuật. L&agrave; đứa trẻ thứ 10 trong một gia đ&igrave;nh ngh&egrave;o với 11 anh em, &ocirc;ng được gọi l&agrave; Pinin Farina v&igrave; l&agrave; em trai &uacute;t trong gia đ&igrave;nh, v&igrave; pinin theo ngữ &acirc;m Piedmonte c&oacute; nghĩa l&agrave; &ldquo;em b&eacute;&rdquo;. Mẹ của &ocirc;ng y&ecirc;u cầu c&aacute;c th&agrave;nh vi&ecirc;n phải l&agrave;m tất cả để gi&uacute;p đỡ gia đ&igrave;nh ngay từ khi c&ograve;n nhỏ tuổi, v&agrave; v&igrave; l&agrave; em &uacute;t, Battista được giao nhiệm vụ lau sạch nồi v&agrave; chảo của mẹ.</p>
<p>Trong cuốn hồi k&yacute; của m&igrave;nh, &ocirc;ng viết rằng c&ocirc;ng việc n&agrave;y l&agrave;m &ocirc;ng nhận ra m&igrave;nh thấy hứng th&uacute; như thế n&agrave;o với việc cảm nhận những đường cong của kim loại.</p>
<p>Giovanni, anh trai của Battista, rời nh&agrave; từ năm 12 tuổi để l&agrave;m việc tại một xưởng coachbuilder ở Turin. Một thập kỷ sau đ&oacute; &ocirc;ng mở xưởng chế t&aacute;c th&acirc;n vỏ xe hơi của ri&ecirc;ng m&igrave;nh, v&agrave; thu&ecirc; cậu em trai Battista, khi đ&oacute; mới 18 tuổi, về l&agrave;m việc. Ch&iacute;nh tại xưởng của anh trai, Battista Pinin Farina c&oacute; cơ hội gửi bản thiết kế lưới tản nhiệt của m&igrave;nh cho mẫu Fiat Zero.</p>
<p>Khi được hỏi rằng liệu &ocirc;ng c&oacute; th&iacute;ch thiết kế của m&igrave;nh hơn bản vẽ đề xuất của Fiat, Pinin Farina n&oacute;i thẳng với nh&agrave; s&aacute;ng lập h&atilde;ng xe Giovanni Agnelli: &ldquo;T&ocirc;i th&iacute;ch thiết kế của t&ocirc;i hơn v&igrave; t&ocirc;i l&agrave; người l&agrave;m ra n&oacute;&rdquo;.</p>
<p>C&oacute; vẻ như nh&agrave; tư bản h&agrave;ng đầu Italy bị ấn tượng bởi c&acirc;u n&oacute;i n&agrave;y, v&igrave; sau đ&oacute; mẫu thiết kế của Pinin Farina gi&agrave;nh giải v&agrave; được Fiat chọn để lắp tr&ecirc;n chiếc Zero.</p>
<h2>Giấc mơ khởi nghiệp</h2>
<p>Đến thập ni&ecirc;n 1920, ng&agrave;nh c&ocirc;ng nghiệp &ocirc; t&ocirc; ở Mỹ đ&atilde; ph&aacute;t triển với tốc độ đ&aacute;ng kinh ngạc, cả về năng lực sản xuất lẫn c&ocirc;ng nghệ. Sự t&ograve; m&ograve; đ&atilde; đưa Battista Farina đến Mỹ, nơi &ocirc;ng gặp Henry Ford v&agrave; được mời l&agrave;m việc, nhưng đ&atilde; chọn quay trở lại Italy với ước mơ khởi nghiệp của ri&ecirc;ng m&igrave;nh.</p>
<p>&Ocirc;ng cũng tham gia v&agrave;o c&aacute;c cuộc đua, tự l&aacute;i chiếc xe của m&igrave;nh gi&agrave;nh chiến thắng ở cuộc đua Aosta-Gran San Bernado v&agrave;o năm 1921. Ch&iacute;nh thời gian n&agrave;y đ&atilde; gi&uacute;p &ocirc;ng tạo dựng những mối quan hệ tốt đẹp với c&aacute;c nh&acirc;n vật c&oacute; tầm ảnh hưởng ở Italy, trong đ&oacute; c&oacute; Vincenzo Lancia, tay đua đồng hương, người sau n&agrave;y s&aacute;ng lập ra h&atilde;ng Lancia.</p>
<p>Trải qua một thập kỷ ph&aacute;t triển c&ocirc;ng nghệ cũng như c&aacute;c thiết kế mới được thử nghiệm tr&ecirc;n đường đua, với sự hỗ trợ của Lancia v&agrave; gia đ&igrave;nh, Battista Farina rời khỏi c&ocirc;ng ty của anh trai v&agrave; th&agrave;nh lập xưởng chế t&aacute;c th&acirc;n vỏ của ri&ecirc;ng m&igrave;nh - Carrozzeria Pinin Farina. Xưởng thiết kế của &ocirc;ng phục vụ cả những kh&aacute;ch h&agrave;ng ri&ecirc;ng lẻ, cũng như sản xuất c&aacute;c mẫu xe số lượng &iacute;t dựa tr&ecirc;n hệ thống khung gầm của c&aacute;c h&atilde;ng xe Italy như Lancia, Fiat v&agrave; Alfa Romeo.</p>
<p>Sau th&agrave;nh c&ocirc;ng ở Paris, Pinin Farina cho ra đời một thiết kế đi v&agrave;o lịch sử - chiếc xe m&agrave; nhiều người cho l&agrave; t&aacute;c phẩm tuyệt vời nhất của &ocirc;ng &ndash; 1947 Cisitalia 202 Coupe. Tham gia trực tiếp v&agrave;o qu&aacute; tr&igrave;nh thiết kế từ khung gầm, Pinin Farina quyết định mọi chi tiết m&agrave; &ocirc;ng cho l&agrave; ph&ugrave; hợp, bao gồm cả bộ tản nhiệt nằm ngang v&agrave; chắn b&ugrave;n liền mạch với th&acirc;n xe. Chiếc xe g&acirc;y ấn tượng tới mức Bảo t&agrave;ng Nghệ thuật Hiện đại ở New York bầu chọn n&oacute; l&agrave; một trong 10 thiết kế xe hơi đẹp nhất mọi thời đại, v&agrave; mua hẳn một chiếc về để trưng b&agrave;y.</p>
<p><img style="box-sizing: border-box; font-family: Mulish; border: 0px none; vertical-align: middle; max-width: 100%; height: auto !important; padding: 10px; width: 760px; color: #000000; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" src="https://storage.googleapis.com/vinfast-data-01/hinh-anh-thiet-ke-xe-cua-pininfarina.jpg" alt="1947 Cisitalia 202" data-caption="Cisitalia 202 Coupe - chiếc xe đưa t&ecirc;n tuổi của nh&agrave; thiết kế Battista Pininfarina nổi tiếng khắp thế giới v&agrave;o năm 1947. Ảnh: &lt;em&gt;Bloomberg.&lt;/em&gt;" data-entity-type="file" data-entity-uuid="88c6f3a2-699c-4728-b7ba-6fe5ad68fa2d" /></p>
<p class="text-center cap-style mt-2">Cisitalia 202 Coupe - chiếc xe đưa t&ecirc;n tuổi của nh&agrave; thiết kế Battista Pininfarina nổi tiếng khắp thế giới v&agrave;o năm 1947. Ảnh:&nbsp;<em>Bloomberg.</em></p>
<p>&nbsp;</p>
<p>Tất nhi&ecirc;n, Ferrari l&agrave; c&aacute;i t&ecirc;n thường được nhắc tới nhiều nhất khi n&oacute;i đến Pininfarina, nhưng sự hợp t&aacute;c giữa 2 c&ocirc;ng ty phải m&atilde;i tới năm 1951 mới bắt đầu. Cũng như Battista Farina, Enzo Ferrari cũng l&agrave; một người nổi tiếng &ldquo;cứng đầu&rdquo; v&agrave; c&oacute; lẽ ch&iacute;nh v&igrave; vậy n&ecirc;n cuộc gặp đầu ti&ecirc;n giữa hai người đ&agrave;n &ocirc;ng diễn ra ở một nh&agrave; h&agrave;ng tại Tortona, thị trấn nhỏ nằm ch&iacute;nh giữa Turin &ndash; nơi đặt trụ sở của Pininfarina &ndash; v&agrave; Modena &ndash; nơi Ferrari đăt tổng h&agrave;nh dinh. Hai con người n&agrave;y đơn giản l&agrave; kh&ocirc;ng chịu đến l&atilde;nh địa của người c&ograve;n lại.</p>
<p>B&aacute;o ch&iacute; Italy khi đ&oacute; cho rằng mối quan hệ hợp t&aacute;c giữa Ferrari v&agrave; Pinin sẽ kh&ocirc;ng k&eacute;o d&agrave;i, v&igrave; họ đều c&oacute; c&aacute; t&iacute;nh qu&aacute; mạnh. Bất chấp điều đ&oacute;, mối lương duy&ecirc;n n&agrave;y đ&atilde; tạo n&ecirc;n một loạt những chiếc xe được coi l&agrave; đẹp nhất lịch sử ng&agrave;nh c&ocirc;ng nghiệp xe hơi, v&agrave; n&oacute; vẫn tiếp tục đến nay với 200 mẫu Ferrari được thiết kế bởi Pininfarina.</p>
<p>Đến năm 1961, sau nửa thế kỷ tạo n&ecirc;n những mẫu xe đầy cảm x&uacute;c, Battista Pinin Farina ch&iacute;nh thức đổi họ của &ocirc;ng th&agrave;nh Pininfarina, v&agrave; giao lại sự quản l&yacute; cho con trai Sergio, người l&atilde;nh đạo h&atilde;ng thiết kế trong v&ograve;ng 40 năm tiếp theo.</p>
<h2>Hơn cả một k&yacute; ức về vẻ đẹp</h2>
<p>Trong nửa sau của thế kỷ 20, Pininfarina kh&ocirc;ng chỉ l&agrave;m việc với c&aacute;c thương hiệu hạng sang m&agrave; c&ograve;n thiết kế c&aacute;c mẫu xe b&igrave;nh d&acirc;n cho Peugeot hay Mitsubishi. Sự đa dạng trong thiết kế của c&ocirc;ng ty ch&iacute;nh l&agrave; ch&igrave;a kh&oacute;a để tồn tại v&agrave; ph&aacute;t triển. C&aacute;c gi&aacute; trị cốt l&otilde;i của Pininfarina l&agrave; Thanh lịch, Tinh khiết v&agrave; Đổi mới, v&agrave; điều n&agrave;y được phản &aacute;nh trong tất cả c&aacute;c thiết kế của họ.</p>
<p>&ldquo;Nếu bạn hỏi t&ocirc;i phong c&aacute;ch &Yacute; nghĩa l&agrave; g&igrave;, th&igrave; đ&oacute; l&agrave; cảm gi&aacute;c về tỷ lệ, sự đơn giản v&agrave; h&agrave;i h&ograve;a của đường n&eacute;t, để d&ugrave; sau một thời gian nhất định, vẫn c&ograve;n thứ g&igrave; đ&oacute; sống động chứ kh&ocirc;ng chỉ l&agrave; k&yacute; ức về n&eacute;t đẹp&rdquo;, Battista Pinin Farina từng n&oacute;i.</p>
<p><img src="https://storage.googleapis.com/vinfast-data-01/hinh-anh-pinin-farina-va-enzo-ferrari.jpg" alt="pininfarina v&agrave; enzo ferrari" data-caption="Từ tr&aacute;i qua: Battista Pinin Farina, nh&agrave; s&aacute;ng lập&nbsp;Carrozzeria Pinin Farina; Enzo Ferrari - nh&agrave; s&aacute;ng lập Ferrari v&agrave; Sergio Pininfarina, con trai của Battista." data-entity-type="file" data-entity-uuid="a2352c90-0b18-4873-ac6d-0c7a334f6fe2" /></p>
<p class="text-center cap-style mt-2">Từ tr&aacute;i qua: Battista Pinin Farina, nh&agrave; s&aacute;ng lập&nbsp;Carrozzeria Pinin Farina; Enzo Ferrari - nh&agrave; s&aacute;ng lập Ferrari v&agrave; Sergio Pininfarina, con trai của Battista.</p>
<p>&nbsp;</p>
<p>Trải qua 90 năm lịch sử, những thiết kế của Pininfarina lu&ocirc;n trường tồn v&agrave; nằm trong top những chiếc xe đẹp nhất mọi thời đại. Ba thế hệ nh&agrave; Pininfarina đ&atilde; chiếm trọn tr&iacute; tưởng tượng của những người đam m&ecirc; xe hơi tr&ecirc;n to&agrave;n thế giới, với nhiều chiếc xe được coi l&agrave; hiện th&acirc;n của sức mạnh, tốc độ v&agrave; sự tinh tế.</p>
<p>Tại Việt Nam, VinFast l&agrave; h&atilde;ng xe Việt đầu ti&ecirc;n trong lịch sử hợp t&aacute;c với Pininfarina trong những mẫu xe của m&igrave;nh. Hai mẫu sedan v&agrave; SUV của VinFast được thừa hưởng những tinh hoa thiết kế với kinh nghiệm gần một thế kỷ của nh&agrave; thiết kế Italy, nhưng vẫn kết hợp h&agrave;i h&ograve;a với bản sắc Việt để tạo n&ecirc;n một sản phẩm c&oacute; vẻ đẹp thời thượng v&agrave; đẳng cấp quốc tế.</p>
<p>"</p>
<p>"</p>', CAST(N'2021-03-07' AS Date), 36, 26, NULL, NULL, N'https://banxevinfast.vn/wp-content/uploads/2021/02/2.png', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (46, N'VinFast President, đánh giá, giá lăn bánh, thông số', N'<h2 class="font-weight-bold news-content-sapo mb-4">&#272;&#432;&#7907;c trang b&#7883; &#273;&#7897;ng c&#417; V8 m&#7841;nh m&#7869;, tr&#7909;c c&#417; s&#7903; k&eacute;o d&agrave;i v&agrave; s&#7889; l&#432;&#7907;ng gi&#7899;i h&#7841;n, m&#7851;u xe VinFast President nh&#7853;n &#273;&#432;&#7907;c nhi&#7873;u &#273;&aacute;nh gi&aacute; t&iacute;ch c&#7921;c t&#7915; gi&#7899;i truy&#7873;n th&ocirc;ng chuy&ecirc;n vi&#7871;t v&#7873; ng&agrave;nh c&ocirc;ng nghi&#7879;p &ocirc; t&ocirc; qu&#7889;c t&#7871;.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<h2><strong>&nbsp;Th&#7901;i th&#7871; t&#7841;o anh h&ugrave;ng</strong></h2>
<p>Ngay khi &#273;&#7841;i d&#7883;ch Covid-19 b&ugrave;ng ph&aacute;t, c&aacute;c nh&agrave; s&#7843;n xu&#7845;t &ocirc; t&ocirc; c&#7911;a M&#7929; nh&#432; General Motors v&agrave; Ford &#273;&atilde; &#273;&oacute;ng c&#7917;a c&aacute;c nh&agrave; m&aacute;y v&agrave; b&#7855;t &#273;&#7847;u s&#7843;n xu&#7845;t m&aacute;y th&#7903; theo y&ecirc;u c&#7847;u c&#7911;a ch&iacute;nh ph&#7911; M&#7929;. C&aacute;c h&atilde;ng xe &ocirc; t&ocirc; kh&aacute;c &#273;&#7891;ng lo&#7841;t h&#7841;n ch&#7871; vi&#7879;c ra m&#7855;t c&aacute;c m&#7851;u xe m&#7899;i trong n&#259;m nay b&#7903;i chu&#7895;i cung &#7913;ng to&agrave;n c&#7847;u b&#7883; &#273;&oacute;ng b&#259;ng.<br />&ldquo;M&#7897;t kh&#7843;o s&aacute;t g&#7847;n &#273;&acirc;y v&#7899;i 46 c&ocirc;ng ty trong chu&#7895;i cung &#7913;ng vi m&#7841;ch &ocirc; t&ocirc; cho th&#7845;y, 2/3 trong s&#7889; &#273;&oacute; ph&#7843;i &#273;&#7889;i m&#7863;t v&#7899;i s&#7921; tr&igrave; ho&atilde;n l&#7899;n trong vi&#7879;c tri&#7875;n khai c&ocirc;ng ngh&#7879; cho c&aacute;c s&#7843;n ph&#7849;m &ocirc; t&ocirc; m&#7899;i trong n&#259;m 2020&rdquo;, &ocirc;ng Phil Amsrud &ndash; chuy&ecirc;n gia ph&acirc;n t&iacute;ch trong ng&agrave;nh c&ocirc;ng nghi&#7879;p &ocirc; t&ocirc; t&#7841;i IHS Markit cho bi&#7871;t.</p>
<p><img src="https://storage.googleapis.com/vin3s-data-01/VinFast-President-%E2%80%93-Cam-hung-moi-cua-gioi-binh-xe-quoc-te-anh-1.jpg" alt="VinFast-President-&ndash;-Cam-hung-moi-cua-gioi-binh-xe-quoc-te-anh-1" data-align="center" data-entity-type="file" data-entity-uuid="c7812891-4732-4c99-82e1-b2a605ef602e" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>&nbsp;</p>
<p>H&#7847;u h&#7871;t c&aacute;c tri&#7875;n l&atilde;m xe h&#417;i bi&#7875;u t&#432;&#7907;ng nh&#432; Moscow, Paris, Los Angeles, Geneva&hellip; ch&iacute;nh th&#7913;c c&ocirc;ng b&#7889; kh&ocirc;ng t&#7893; ch&#7913;c trong n&#259;m 2020 do &#7843;nh h&#432;&#7903;ng c&#7911;a &#273;&#7841;i d&#7883;ch.<br />Th&#7871; nh&#432;ng, t&#7841;i Vi&#7879;t Nam &ndash; m&#7897;t &#273;&#7845;t n&#432;&#7899;c v&#7899;i ng&agrave;nh c&ocirc;ng nghi&#7879;p &ocirc; t&ocirc; c&ograve;n non tr&#7867; &#273;&atilde; &ldquo;tr&igrave;nh l&agrave;ng&rdquo; m&#7851;u xe VinFast President v&#7899;i nhi&#7873;u c&ocirc;ng ngh&#7879; hi&#7879;n &#273;&#7841;i. VinFast &#273;&atilde; tr&#7903; th&agrave;nh ngu&#7891;n c&#7843;m h&#7913;ng m&#7899;i trong gi&#7899;i b&igrave;nh xe qu&#7889;c t&#7871;. V&#7853;y, &#273;&acirc;u l&agrave; nh&#7919;ng y&#7871;u t&#7889; khi&#7871;n gi&#7899;i chuy&ecirc;n gia h&agrave;o h&#7913;ng, b&agrave;n lu&#7853;n v&#7873; m&#7851;u si&ecirc;u xe c&#7911;a ng&#432;&#7901;i Vi&#7879;t?<br />&nbsp;</p>
<h2><strong>S&#7903; h&#7919;u &ldquo;tr&aacute;i tim m&atilde;nh th&uacute;&rdquo;</strong></h2>
<p>Nh&#7855;c t&#7899;i m&#7851;u &#273;&#7897;ng c&#417; h&igrave;nh ch&#7919; V, ch&#7855;c ch&#7855;n ng&#432;&#7901;i m&ecirc; xe s&#7869; nh&#7899; ngay t&#7899;i nh&#7919;ng m&#7851;u si&ecirc;u xe &#273;&#7859;ng c&#7845;p th&#7871; gi&#7899;i. Nh&acirc;n s&#7921; ki&#7879;n ra m&#7855;t VinFast President, Madhusudan Grover &ndash; c&acirc;y vi&#7871;t c&#7911;a t&#7901; Drive Tribe (M&#7929;) &#273;&atilde; li&#7879;t k&ecirc; nh&#7919;ng m&#7851;u xe &#273;&igrave;nh &#273;&aacute;m nh&#432; Ferrari California, McLaren 720S, Koenigsegg v&agrave; Mercedes-Benz AMG GT R &#273;&#7873;u &#273;ang s&#7917; d&#7909;ng &#273;&#7897;ng c&#417; V8. Kh&ocirc;ng ri&ecirc;ng si&ecirc;u xe, &#273;&#7897;ng c&#417; V8 b&#7855;t &#273;&#7847;u &#273;&#432;&#7907;c c&aacute;c nh&agrave; s&#7843;n xu&#7845;t s&#7917; d&#7909;ng tr&ecirc;n nh&#7919;ng m&#7851;u SUV cao c&#7845;p nh&#7845;t nh&#432;: Porche Caynne Turbo S, Cadillac Escalade, Lexus 570&hellip;<br />Theo ph&acirc;n t&iacute;ch c&#7911;a Kris Culmer&ndash; nh&agrave; nghi&ecirc;n c&#7913;u v&#7873; xe vi&#7871;t tr&ecirc;n trang AutoCar (Anh), &#273;&#7863;t &#273;&#7897;ng c&#417; V8 l&ecirc;n c&#7895; m&aacute;y 4 b&aacute;nh &#273;&#432;&#7907;c coi l&agrave; c&#7845;u h&igrave;nh &#273;&#7897;ng c&#417; t&#7889;i &#432;u c&#7911;a t&#432;&#417;ng lai. B&#7903;i v&igrave;, thi&#7871;t k&#7871; g&oacute;c ch&#7919; V k&#7871;t h&#7907;p c&ugrave;ng c&aacute;c tr&#7909;c c&acirc;n b&#7857;ng s&#7869; khi&#7871;n c&acirc;n b&#7857;ng &#273;&#7897;ng c&#417; t&#7889;t d&#7851;n &#273;&#7871;n &#273;&#7897; rung th&#7845;p, s&#7843;n sinh ra c&ocirc;ng su&#7845;t &ldquo;kh&#7893;ng l&#7891;&rdquo; c&ugrave;ng ti&#7871;ng g&#7847;m &#273;&#7847;y n&#7897;i l&#7921;c, t&#7841;o n&ecirc;n c&#7843;m x&uacute;c c&oacute; &ldquo;m&#7897;t kh&ocirc;ng hai&rdquo; cho ng&#432;&#7901;i s&#7903; h&#7919;u.</p>
<p><br />&nbsp;</p>
<p><img src="https://storage.googleapis.com/vin3s-data-01/VinFast-President-%E2%80%93-Cam-hung-moi-cua-gioi-binh-xe-quoc-te-anh-2.jpg" alt="VinFast-President-&ndash;-Cam-hung-moi-cua-gioi-binh-xe-quoc-te-anh-2" data-align="center" data-entity-type="file" data-entity-uuid="aa8f54b2-d0fd-4559-9a53-4505f8eeb8d3" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>&nbsp;</p>
<p>&#272;i&#7875;n h&igrave;nh tr&ecirc;n m&#7851;u xe VinFast President, &#273;&#7897;ng c&#417; V8 6,2 l&iacute;t k&#7871;t h&#7907;p c&ugrave;ng h&#7897;p s&#7889; t&#7921; &#273;&#7897;ng ZF 8 c&#7845;p gi&uacute;p chi&#7871;c xe &#273;&#7841;t c&ocirc;ng su&#7845;t t&#7889;i &#273;a 455 m&atilde; l&#7921;c, m&ocirc;-men c&#7921;c &#273;&#7841;i 624 Nm v&agrave; kh&#7843; n&#259;ng t&#259;ng t&#7889;c t&#7915; 0-100km/h ch&#7881; trong 6,8 gi&acirc;y. &ldquo;Vi&#7879;c VinFast quy&#7871;t &#273;&#7883;nh &lsquo;ch&#7883;u ch&#417;i&rsquo; &#273;&#432;a &#273;&#7897;ng c&#417; V8 l&ecirc;n m&#7851;u xe President l&agrave; m&#7897;t s&#7921; c&#7889; g&#7855;ng kh&ocirc;ng h&#7873; nh&#7887; c&#7911;a VinFast. Ch&#7855;c ch&#7855;n &#273;i&#7873;u n&agrave;y kh&ocirc;ng d&#7877; d&agrave;ng&rdquo;. Dan Mihalascu&ndash; C&acirc;y vi&#7871;t chuy&ecirc;n xe v&#7899;i h&#417;n 15 n&#259;m trong ng&agrave;nh nh&#7845;n m&#7841;nh tr&ecirc;n t&#7901; Carscoops (M&#7929;).</p>
<h2><br /><strong>Nh&#7919;ng c&#7843;i ti&#7871;n v&#432;&#7907;t tr&#7897;i</strong></h2>
<p>Ph&oacute;ng vi&ecirc;n Gerard Lye c&#7911;a chuy&ecirc;n trang xe &ocirc; t&ocirc; Paultan (Malaysia), ng&#432;&#7901;i &#273;&atilde; tr&#7921;c ti&#7871;p t&#7899;i th&#259;m nh&agrave; m&aacute;y VinFast v&agrave;o n&#259;m 2018 nh&#7853;n &#273;&#7883;nh: &ldquo;H&atilde;ng xe Vi&#7879;t &#273;&atilde; &lsquo;m&#7841;nh tay&rsquo; khi k&eacute;o d&agrave;i 200mm tr&#7909;c c&#417; s&#7903; c&#7911;a m&#7851;u xe Lux SA2.0 l&ecirc;n 3133mm tr&ecirc;n m&#7851;u xe President &#273;&#7875; tr&#7903; th&agrave;nh m&#7851;u xe c&oacute; chi&#7873;u d&agrave;i d&#7851;n &#273;&#7847;u ph&acirc;n kh&uacute;c, d&agrave;i h&#417;n m&#7851;u xe BMW X7 v&#7899;i chi&#7873;u d&agrave;i c&#417; s&#7903; 3.105 mm.&rdquo;<br />&nbsp;</p>
<p><img src="https://storage.googleapis.com/vin3s-data-01/VinFast-President-%E2%80%93-Cam-hung-moi-cua-gioi-binh-xe-quoc-te-anh-3.jpg" alt="VinFast-President-&ndash;-Cam-hung-moi-cua-gioi-binh-xe-quoc-te-anh-3" data-align="center" data-entity-type="file" data-entity-uuid="cd306f9c-d1d0-4daf-b049-bdfbd04c265c" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>&#272;&#7889;i &#273;&#7889;i v&#7899;i khoang n&#7897;i th&#7845;t, chi&#7873;u d&agrave;i c&#417; s&#7903; c&agrave;ng l&#7899;n, khoang h&agrave;nh kh&aacute;ch c&agrave;ng r&#7897;ng r&atilde;i, &#273;&#7863;c bi&#7879;t &#7903; v&#7883; tr&iacute; &ldquo;&ocirc;ng ch&#7911;&rdquo; l&agrave; y&#7871;u t&#7889; &#273;&#432;&#7907;c VinFast &#273;&#7863;t &#432;u ti&ecirc;n h&agrave;ng &#273;&#7847;u b&#7903;i y&#7871;u t&#7889; ti&#7879;n nghi. X&eacute;t v&#7873; kh&#7843; n&#259;ng v&#7853;n h&agrave;nh, &#273;&#7875; song h&agrave;nh c&ugrave;ng &ldquo;tr&aacute;i tim c&#7911;a m&atilde;nh th&uacute;&rdquo;, tr&#7909;c c&#417; s&#7903; d&agrave;i c&ugrave;ng b&#7897; m&acirc;m l&#7899;n &#7843;nh h&#432;&#7903;ng tr&#7921;c ti&#7871;p t&#7899;i &#273;&#7897; &#7893;n &#273;&#7883;nh c&#7911;a xe v&agrave; t&#259;ng kh&#7843; n&#259;ng b&aacute;m &#273;&#432;&#7901;ng ngay c&#7843; khi t&#259;ng/gi&#7843;m t&#7889;c &#273;&#7897;t ng&#7897;t.</p>
<h2><strong>Ti&#7871;c v&igrave; xe ch&#7881; d&agrave;nh cho ng&#432;&#7901;i Vi&#7879;t</strong></h2>
<p>Vi&#7879;c gi&#7899;i h&#7841;n ch&#7881; s&#7843;n xu&#7845;t 500 chi&#7871;c t&#7841;i th&#7883; tr&#432;&#7901;ng Vi&#7879;t Nam l&agrave;m d&#7845;y l&ecirc;n s&#7921; ti&#7871;c nu&#7889;i v&agrave; mong ch&#7901; c&#7911;a c&#7897;ng &#273;&#7891;ng &ldquo;ng&#432;&#7901;i m&ecirc; xe&rdquo; tr&ecirc;n to&agrave;n c&#7847;u.<br />&ldquo;V&#7899;i thi&#7871;t k&#7871; sang tr&#7885;ng v&agrave; &#273;&#7863;c t&iacute;nh &#273;&#7853;m ch&#7845;t th&#7875; thao, VinFast President ch&iacute;nh l&agrave; m&#7851;u xe ph&ugrave; h&#7907;p &lsquo;kh&#7849;u v&#7883;&rsquo; c&#7911;a ng&#432;&#7901;i M&#7929;&rdquo;, Fran Romero &ndash; c&acirc;y vi&#7871;t n&#7893;i ti&#7871;ng trong &ldquo;l&agrave;ng xe h&#417;i&rdquo; qu&#7889;c t&#7871; v&#7899;i g&#7847;n 4.000 b&agrave;i vi&#7871;t b&igrave;nh lu&#7853;n tr&ecirc;n trang Motor.es (T&acirc;y Ban Nha). C&ograve;n nh&agrave; b&aacute;o Bruce Newton c&#7911;a Motoring (Australia) b&igrave;nh lu&#7853;n trong ti&#7871;c nu&#7889;i: &ldquo;N&#7871;u mu&#7889;n s&#7903; h&#7919;u chi&#7871;c xe n&agrave;y, th&igrave; b&#7841;n ph&#7843;i l&agrave; ng&#432;&#7901;i Vi&#7879;t Nam. V&igrave; n&oacute; ch&#7881; &#273;&#432;&#7907;c b&aacute;n &#7903; th&#7883; tr&#432;&#7901;ng Vi&#7879;t Nam&rdquo;.</p>
<p><img src="https://storage.googleapis.com/vin3s-data-01/VinFast-President-%E2%80%93-Cam-hung-moi-cua-gioi-binh-xe-quoc-te-anh-4.jpg" alt="VinFast-President-&ndash;-Cam-hung-moi-cua-gioi-binh-xe-quoc-te-anh-4" data-align="center" data-entity-type="file" data-entity-uuid="b7332173-855a-442a-88aa-fa4f9d5968f8" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>&ldquo;Vi&#7879;t Nam &#273;&#432;&#7907;c bi&#7871;t &#273;&#7871;n l&agrave; qu&#7889;c gia v&#7899;i v&ocirc; s&#7889; xe m&aacute;y ch&#7841;y tr&ecirc;n &#273;&#432;&#7901;ng ph&#7889;, ch&#7913; kh&ocirc;ng ph&#7843;i nh&#7919;ng chi&#7871;c SUV h&#7841;ng sang c&#7905; l&#7899;n. Nh&#432;ng b&acirc;y gi&#7901;, t&#7845;t c&#7843; &#273;&#7873;u c&oacute; th&#7875; thay &#273;&#7893;i nh&#7901; VinFast.&rdquo; Karl Furlong - ph&oacute;ng vi&ecirc;n chuy&ecirc;n xe chia s&#7867; tr&ecirc;n trang CarBuzz (M&#7929;).</p>
<p>C&oacute; th&#7875; n&oacute;i, VinFast President mang trong m&igrave;nh nhi&#7873;u tr&#7885;ng tr&aacute;ch: l&#7901;i tri &acirc;n t&#7899;i nh&#7919;ng kh&aacute;ch h&agrave;ng &#7911;ng h&#7897; th&#432;&#417;ng hi&#7879;u Vi&#7879;t, l&#7901;i kh&#7859;ng &#273;&#7883;nh v&#7873; n&#259;ng l&#7921;c v&#7899;i th&#7883; tr&#432;&#7901;ng c&#7911;a VinFast v&agrave; l&agrave; m&#7897;t minh ch&#7913;ng v&#7899;i th&#7871; gi&#7899;i r&#7857;ng Vi&#7879;t Nam c&oacute; kh&#7843; n&#259;ng l&agrave;m nhi&#7873;u h&#417;n nh&#7919;ng g&igrave; c&aacute;c b&#7841;n ngh&#297;.</p>
<p>&Ocirc;ng Ilia Seliktar - Ch&#7911; t&#7883;ch Autobest, H&#7897;i &#273;&#7891;ng th&#7849;m &#273;&#7883;nh xe ch&acirc;u &Acirc;u nh&#7853;n &#273;&#7883;nh: &ldquo;VinFast l&agrave; m&#7897;t v&iacute; d&#7909; &#273;i&#7875;n h&igrave;nh trong ng&agrave;nh c&ocirc;ng nghi&#7879;p &ocirc; t&ocirc; to&agrave;n c&#7847;u. &#272;i&#7875;n h&igrave;nh b&#7903;i vi&#7879;c &lsquo;h&#7897;i t&#7909; tinh hoa&rsquo; tr&ecirc;n th&#7871; gi&#7899;i &#273;&#7875; s&#7843;n xu&#7845;t ra nh&#7919;ng m&#7851;u xe ch&#7845;t l&#432;&#7907;ng nh&#7845;t cho th&#7883; tr&#432;&#7901;ng. T&ocirc;i ngh&#297; r&#7857;ng t&#432;&#417;ng lai c&#7911;a VinFast s&#7869; r&#7845;t t&#432;&#417;i s&aacute;ng.&rdquo;</p>', CAST(N'2021-02-18' AS Date), NULL, 6, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_360x200/public/2020-12/hinh-anh-VinFast-President-Cam-hung-moi-cua-gioi-binh-xe-quoc-te.jpg?itok=ecvuGkSd', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (47, N'VinFast President, khi người Việt vươn tầm thế giới', N'<h2 class="font-weight-bold news-content-sapo mb-4">Th&#7875; hi&#7879;n r&otilde; n&#259;ng l&#7921;c chuy&ecirc;n m&ocirc;n c&#361;ng nh&#432; kh&#7843; n&#259;ng v&#432;&#417;n t&#7847;m qu&#7889;c t&#7871;, VinFast President &#273;&#432;&#7907;c ph&aacute;t tri&#7875;n s&#7889; l&#432;&#7907;ng gi&#7899;i h&#7841;n d&agrave;nh cho kh&aacute;ch h&agrave;ng &#273;&#7863;c bi&#7879;t. Chi&#7871;c SUV 7 ch&#7895; Full-size mang th&#432;&#417;ng hi&#7879;u Vi&#7879;t kh&ocirc;ng ch&#7881; l&agrave; xe h&#7841;ng sang m&agrave; c&ograve;n l&agrave; c&#7895; m&aacute;y th&uacute; v&#7883; &#273;&#7875; c&#7847;m l&aacute;i.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>VinFast President t&#7915;ng khi&#7871;n nhi&#7873;u ng&#432;&#7901;i &ldquo;s&#7917;ng s&#7889;t&rdquo; &#7903; th&#7901;i &#273;i&#7875;m ra m&#7855;t th&#7883; tr&#432;&#7901;ng Vi&#7879;t Nam khi s&#7917; d&#7909;ng c&#7845;u h&igrave;nh &#273;&#7897;ng c&#417; V8 c&ugrave;ng k&iacute;ch th&#432;&#7899;c &ldquo;kh&#7911;ng" nh&#7901; &nbsp;tr&#7909;c c&#417; s&#7903; &#273;&#432;&#7907;c k&eacute;o d&agrave;i h&#417;n 200 mm so v&#7899;i VinFast Lux SA2.0, khi&#7871;n cho VinFast President kh&ocirc;ng nh&#7919;ng th&#7875; hi&#7879;n s&#7921; uy nghi&ecirc;m c&#7911;a xe sang phong c&aacute;ch VIP m&agrave; c&ograve;n ch&#7845;t &#273;&#7847;y c&#7843;m x&uacute;c khi c&#7847;m l&aacute;i. Vi&#7879;c s&#7843;n xu&#7845;t gi&#7899;i h&#7841;n 500 chi&#7871;c c&#361;ng cho th&#7845;y &#273;&acirc;y l&agrave; chi&#7871;c xe ch&#7881; d&agrave;nh cho nh&#7919;ng ng&#432;&#7901;i &#273;&#7863;c bi&#7879;t.</p>
<p><img src="https://vinfastauto.com/sites/default/files/inline-images/VinFast-President-1-9915-1596526753_0.jpg" alt="sdasds" data-align="center" data-caption="VinFast President, m&#7851;u xe th&#7875; hi&#7879;n kh&#7843; n&#259;ng v&agrave; t&#7847;m v&oacute;c c&#7911;a ng&#432;&#7901;i Vi&#7879;t" data-entity-type="file" data-entity-uuid="bb000e4d-7ae6-4030-9a86-3b3f94cea48d" /></p>
<p class="text-center cap-style mt-2">VinFast President, m&#7851;u xe th&#7875; hi&#7879;n kh&#7843; n&#259;ng v&agrave; t&#7847;m v&oacute;c c&#7911;a ng&#432;&#7901;i Vi&#7879;t</p>
<h2>&#272;&#7897;ng c&#417; V8 - Linh h&#7891;n c&#7911;a VinFast President</h2>
<p>Tr&ecirc;n th&#7871; gi&#7899;i xe hi&#7879;n nay, kh&ocirc;ng nhi&#7873;u xe SUV s&#7917; d&#7909;ng &#273;&#7897;ng c&#417; V8. C&#7845;u h&igrave;nh &#273;&#7897;ng c&#417; n&agrave;y th&#432;&#7901;ng &#273;&#432;&#7907;c &#7913;ng d&#7909;ng tr&ecirc;n c&aacute;c d&ograve;ng xe sang v&agrave; si&ecirc;u sang. Trong b&#7889;i c&#7843;nh nhi&#7873;u m&#7851;u xe m&#7899;i chuy&#7875;n sang s&#7917; d&#7909;ng &#273;&#7897;ng c&#417; 4 xi-lanh, cao c&#7845;p h&#417;n l&agrave; V6 k&#7871;t h&#7907;p t&#259;ng &aacute;p hay h&#7879; th&#7889;ng si&ecirc;u n&#7841;p, nh&#7919;ng m&#7851;u xe trang b&#7883; &#273;&#7897;ng c&#417; V8 h&uacute;t kh&iacute; t&#7921; nhi&ecirc;n v&#7851;n mang m&#7897;t gi&aacute; tr&#7883; kh&aacute;c v&#7873; m&#7863;t &#273;&#7859;ng c&#7845;p. VinFast President h&#432;&#7899;ng t&#7899;i &#273;&#7889;i t&#432;&#7907;ng kh&aacute;ch h&agrave;ng &#273;&#7863;c bi&#7879;t, nh&#7919;ng ng&#432;&#7901;i c&oacute; y&ecirc;u c&#7847;u cao v&#7873; t&iacute;nh n&#259;ng v&#7853;n h&agrave;nh ph&#7843;i &#273;i k&egrave;m v&#7899;i s&#7921; sang tr&#7885;ng v&agrave; ti&#7879;n nghi.<br />&nbsp;<br />&#272;&#7889;i v&#7899;i ng&#432;&#7901;i th&iacute;ch c&#7847;m l&aacute;i, &#273;&#7897;ng c&#417; V8 lu&ocirc;n mang &#273;&#7871;n c&#7843;m x&uacute;c kh&aacute;c bi&#7879;t. Thi&#7871;t k&#7871; g&oacute;c ch&#7919; V k&#7871;t h&#7907;p c&aacute;c tr&#7909;c gia c&#7889; gi&uacute;p c&acirc;n b&#7857;ng &#273;&#7897;ng c&#417; t&#7889;t, &#273;&#7897; rung th&#7845;p, t&#7915; &#273;&oacute; s&#7843;n sinh ra c&ocirc;ng su&#7845;t kh&#7893;ng l&#7891; c&ugrave;ng ti&#7871;ng g&#7847;m n&#7897;i l&#7921;c. &#272;i&#7875;n h&igrave;nh nh&#432; tr&ecirc;n m&#7851;u xe VinFast President, &#273;&#7897;ng c&#417; V8 6,2 l&iacute;t k&#7871;t h&#7907;p h&#7897;p s&#7889; t&#7921; &#273;&#7897;ng ZF 8 c&#7845;p, gi&uacute;p xe s&#7843;n sinh c&ocirc;ng su&#7845;t t&#7889;i &#273;a 455 m&atilde; l&#7921;c, m&ocirc; men xo&#7855;n c&#7921;c &#273;&#7841;i 624 Nm v&agrave; kh&#7843; n&#259;ng t&#259;ng t&#7889;c 0-100 km/gi&#7901; trong 6,8 gi&acirc;y.</p>
<p><img src="https://vinfastauto.com/sites/default/files/inline-images/Xehay-VF-260820-8_0.jpg" alt="sas" data-align="center" data-entity-type="file" data-entity-uuid="d900d78f-ab3d-49a0-b8e6-b16c6f1b4c92" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>&Iacute;t ng&#432;&#7901;i bi&#7871;t r&#7857;ng, &ldquo;tr&aacute;i tim" c&#7911;a VinFast President l&agrave; m&#7897;t &ldquo;huy&#7873;n tho&#7841;i s&#7889;ng&rdquo;. &#272;&#7897;ng c&#417; n&agrave;y do General Motors (GM) ph&aacute;t tri&#7875;n, &#273;ang s&#7917; d&#7909;ng tr&ecirc;n c&aacute;c m&#7851;u xe sang v&agrave; th&#7875; thao h&agrave;ng &#273;&#7847;u c&#7911;a M&#7929; nh&#432; Cadillac Escalade, Chevrolet Camaro hay Chevrolet Corvette. C&#7895; m&aacute;y n&agrave;y n&#7893;i ti&#7871;ng &#273;&#7889;i v&#7899;i d&acirc;n ch&#417;i xe th&#7875; thao v&agrave; c&aacute;c l&ograve; &#273;&#7897; xe h&agrave;ng &#273;&#7847;u c&#7911;a M&#7929;, th&#7853;m ch&iacute; s&#7913;c m&#7841;nh c&#7911;a n&oacute; c&ograve;n c&oacute; th&#7875; gia t&#259;ng th&ecirc;m do v&#7853;t li&#7879;u ch&#7871; t&#7841;o &#273;&#7897;ng c&#417; thu&#7897;c lo&#7841;i si&ecirc;u b&#7873;n.</p>
<p>N&#7897;i l&#7921;c VinFast President ph&aacute;t ra ngay t&#7915; khi xe &#7903; v&#7883; tr&iacute; &#273;&#7913;ng y&ecirc;n, ti&#7871;ng g&#7847;m g&#7915; t&#7915; &#273;&#7897;ng c&#417; cho th&#7845;y uy l&#7921;c &#273;&aacute;ng n&#7875;. Kh&ocirc;ng &ldquo;g&agrave;o th&eacute;t&rdquo; v&#432;&#7907;t ng&#432;&#7905;ng ch&#7883;u &#273;&#7921;ng c&#7911;a &#273;&ocirc;i tai nh&#432; &#273;&#7897;ng c&#417; V10 hay V12 (&ldquo;linh h&#7891;n&rdquo; c&#7911;a si&ecirc;u xe th&#7875; thao), &acirc;m thanh ph&aacute;t ra t&#7915; &#273;&#7897;ng c&#417; V8 &#273;&#432;&#7907;c xem l&agrave; &ldquo;ti&#7871;ng g&#7847;m g&#7915; c&#7911;a &#273;&agrave;n s&#432; t&#7917; d&#361;ng m&atilde;nh&rdquo;.</p>
<h3>M&#7841;nh m&#7869; nh&#432;ng v&#7851;n &ecirc;m &aacute;i</h3>
<p>N&#7871;u so s&aacute;nh tr&#7921;c ti&#7871;p v&#7899;i &ldquo;&#273;&agrave;n em&rdquo; VinFast Lux SA2.0 v&#7889;n &#273;&atilde; &#273;&#432;&#7907;c nhi&#7873;u ng&#432;&#7901;i d&ugrave;ng &#273;&aacute;nh gi&aacute; cao v&#7873; &#273;&#7897; &ecirc;m &aacute;i v&agrave; c&#7843;m gi&aacute;c l&aacute;i &#273;&#7853;m ch&#7845;t ch&acirc;u &Acirc;u, khung g&#7847;m c&#7911;a VinFast President c&ograve;n &#273;&#7859;ng c&#7845;p h&#417;n th&#7871;. Ngo&agrave;i kh&#7843; n&#259;ng c&aacute;ch &acirc;m &#7845;n t&#432;&#7907;ng, chi&#7871;c xe n&agrave;y c&ograve;n th&#7875; hi&#7879;n &#273;&#7897; &#7893;n &#273;&#7883;nh b&#7845;t ng&#7901; &#7903; t&#7889;c &#273;&#7897; cao, d&ugrave; &#273;&acirc;y l&agrave; m&#7897;t chi&#7871;c SUV c&oacute; k&iacute;ch th&#432;&#7899;c l&#7899;n v&agrave; tr&#7885;ng t&acirc;m cao.</p>
<p><br />&#272;&aacute;ng ch&uacute; &yacute;, v&ocirc; l&#259;ng tr&ecirc;n VinFast President r&#7845;t nh&#7865; nh&agrave;ng nh&#432;ng v&#7851;n &#273;em l&#7841;i c&#7843;m gi&aacute;c l&aacute;i ch&acirc;n th&#7921;c. &#272;i&#7873;u n&agrave;y gi&uacute;p cho vi&#7879;c &#273;i&#7873;u khi&#7875;n m&#7897;t chi&#7871;c xe to l&#7899;n tr&#7903; n&ecirc;n d&#7877; d&agrave;ng h&#417;n, ng&#432;&#7901;i l&aacute;i h&#7847;u nh&#432; qu&ecirc;n &#273;i s&#7921; c&#7891;ng k&#7873;nh c&#7911;a chi&#7871;c xe.</p>', CAST(N'2021-02-18' AS Date), NULL, 15, NULL, NULL, N'https://image.thanhnien.vn/660/uploaded/chicuong/2020_11_16/president/ngoaihinh-vinfast-president-thanhnien2_kyzb.jpg', 2)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (48, N'VinFast hợp tác với ProLogium sản xuất pin thể rắn ở Việt Nam.', N'<h2 class="font-weight-bold news-content-sapo mb-4">Ng&agrave;y 03/03/2021, C&ocirc;ng ty TNHH Sản xuất v&agrave; Kinh doanh VinFast v&agrave; C&ocirc;ng ty C&ocirc;ng nghệ ProLogium (Đ&agrave;i Loan) đ&atilde; k&yacute; kết bi&ecirc;n bản ghi nhớ về việc hợp t&aacute;c chiến lược. Theo đ&oacute;, VinFast được quyền sử dụng c&aacute;c bằng s&aacute;ng chế của ProLogium để sản xuất pin thể rắn (Solid-state battery) ở Việt Nam.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>Theo thỏa thuận, VinFast v&agrave; ProLogium sẽ th&agrave;nh lập li&ecirc;n doanh sản xuất pin thể rắn cho xe &ocirc; t&ocirc; điện tại Việt Nam. Li&ecirc;n doanh n&agrave;y sẽ được tiếp cận c&aacute;c bằng s&aacute;ng chế v&agrave; được ph&eacute;p sử dụng c&ocirc;ng nghệ đ&oacute;ng g&oacute;i pin thể rắn MAB (Multi-Axis Bipolar + Technology - c&ocirc;ng nghệ lưỡng cực đa trục +) của ProLogium để sản xuất g&oacute;i pin thể rắn CIM/CIP tại Việt Nam.</p>
<p>Đ&acirc;y l&agrave; một bước đi chiến lược trong việc tự chủ c&ocirc;ng nghệ pin d&agrave;nh cho xe điện của VinFast, l&agrave; tiền đề cho việc nghi&ecirc;n cứu, ph&aacute;t triển ra c&aacute;c d&ograve;ng xe điện th&ocirc;ng minh, ti&ecirc;n tiến trong tương lai.</p>
<p><img src="https://storage.googleapis.com/vinfast-data-01/VF33_sideview.jpg" alt="VF33_ProLogium" data-align="center" data-entity-type="file" data-entity-uuid="7b707f2f-5ee8-42b0-8a63-97cd4de5ab55" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>ProLogium l&agrave; c&ocirc;ng ty đi đầu thế giới về việc thương mại ho&aacute; c&ocirc;ng nghệ pin thể rắn từ năm 2013. Năm 2017, ProLogium trở th&agrave;nh đơn vị đầu ti&ecirc;n tr&ecirc;n thế giới c&oacute; d&acirc;y chuyền thử nghiệm c&ocirc;ng nghệ pin thể rắn ứng dụng cho &ocirc; t&ocirc;.</p>
<p>Đến nay, c&aacute;c bản mẫu pin thể rắn d&agrave;nh cho &ocirc; t&ocirc; của ProLogium đ&atilde; vượt qua nhiều b&agrave;i kiểm tra về an to&agrave;n ở ch&acirc;u &Acirc;u v&agrave; Trung Quốc - những thị trường xe điện lớn nhất thế giới. ProLogium cũng đang hợp t&aacute;c với c&aacute;c nh&agrave; sản xuất xe điện lớn h&agrave;ng đầu thế giới để thử nghiệm c&ocirc;ng nghệ pin mới tr&ecirc;n c&aacute;c d&ograve;ng &ocirc; t&ocirc;, v&agrave; dự kiến sẽ đưa v&agrave;o khai th&aacute;c, sản xuất đại tr&agrave; từ năm 2023-2024. Việc sử dụng pin thể rắn sẽ gi&uacute;p cho c&aacute;c xe &ocirc; t&ocirc; điện VinFast c&oacute; thể đi được qu&atilde;ng đường d&agrave;i hơn, giảm thời gian sạc v&agrave; tăng tổng số lần c&oacute; thể sạc pin.</p>
<p>Việc hợp t&aacute;c với ProLogium l&agrave; bước đi tiếp theo của VinFast trong lộ tr&igrave;nh hướng đến mục ti&ecirc;u trở th&agrave;nh thương hiệu xe điện th&ocirc;ng minh được ưa chuộng to&agrave;n cầu. Trước đ&oacute;, VinFast đ&atilde; c&ocirc;ng bố 3 d&ograve;ng &ocirc; t&ocirc; điện đầu ti&ecirc;n c&oacute; khả năng tự h&agrave;nh cấp độ 2-3 mang t&ecirc;n VF31, VF32, VF33 v&agrave; đang triển khai lắp đặt hệ thống trạm sạc tr&ecirc;n khắp cả nước, với mục ti&ecirc;u c&oacute; hơn 40.000 cổng sạc cho xe m&aacute;y điện v&agrave; &ocirc; t&ocirc; điện v&agrave;o cuối năm nay.<br />&nbsp;</p>', CAST(N'2021-03-04' AS Date), NULL, NULL, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_360x200/public/2021-03/VF33_sideview.jpg?itok=1CXL7gQy', NULL)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (49, N'Xe điện làm thay đổi hoàn toàn cuộc đua mã lực', N'<h2 class="font-weight-bold news-content-sapo mb-4">Cuộc chiến m&atilde; lực v&agrave; gia tốc đ&atilde; bước v&agrave;o một giai đoạn mới, với sự xuất hiện của những chiếc xe chạy điện.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>Trong nhiều thập kỷ, c&aacute;c h&atilde;ng xe cạnh tranh gay gắt để cho ra mắt chiếc xe với động cơ đốt trong c&oacute; khả năng đạt c&ocirc;ng suất 1.000 m&atilde; lực. Nhưng chỉ trong v&agrave;i năm qua, nhiều chiếc<strong>&nbsp;xe điện</strong>&nbsp;dễ d&agrave;ng vượt qua cột mốc n&agrave;y với gi&aacute; th&agrave;nh sản xuất c&ograve;n thấp hơn.&nbsp;</p>
<p>V&agrave;o năm 1967, Ford GT40 l&agrave; chiếc xe nhanh nhất tr&ecirc;n thế giới. N&oacute; ch&iacute;nh l&agrave; phi&ecirc;n bản đường phố của chiếc xe tham gia giải đua đường trường Le Mans 24 giờ của đội Ford, trong một nỗ lực lật đổ sự thống trị của Ferrari ở trời &Acirc;u. Với một động cơ V8 306 m&atilde; lực, chiếc GT40 c&oacute; thể tăng tốc từ 0 đến 100 km trong hơn 5 gi&acirc;y.&nbsp;</p>
<p>Chỉ nửa thế kỷ sau, một chiếc sedan gia đ&igrave;nh hạng trung cũng c&oacute; thể đạt được khả năng tăng tốc như vậy. Nếu t&iacute;nh đến d&ograve;ng xe hạng sang, SUV v&agrave; xe thể thao, c&ocirc;ng suất động cơ trung b&igrave;nh c&oacute; thể rơi v&agrave;o 400 đến 600 m&atilde; lực. Si&ecirc;u xe bắt đầu đạt đến cột mốc 1.000 m&atilde; lực từ năm 2005, với sự xuất hiện của chiếc Bugatti Veyron Super Sport.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-dong-co-vinfast-president.jpg" alt="hinh anh dong co vinfast president" data-caption="C&aacute;c h&atilde;ng lu&ocirc;n cố gắng để mang tới những động cơ mạnh mẽ nhất cho d&ograve;ng xe cao cấp." data-entity-type="file" data-entity-uuid="84696247-4688-463c-acdd-45d9afcf4b86" /></h2>
<p class="text-center cap-style mt-2">C&aacute;c h&atilde;ng lu&ocirc;n cố gắng để mang tới những động cơ mạnh mẽ nhất cho d&ograve;ng xe cao cấp.</p>
<h2>&nbsp;</h2>
<h2>Cuộc chơi đ&atilde; thay đổi&nbsp;</h2>
<p>Nhưng giờ đ&acirc;y, cuộc chiến m&atilde; lực đ&atilde; bước v&agrave;o một giai đoạn mới, với sự xuất hiện của những chiếc xe chạy điện. Nếu như si&ecirc;u xe chạy xăng phải mất cả thế kỷ để c&aacute;n mốc n&agrave;y, những chiếc xe điện mới dễ d&agrave;ng đạt c&ocirc;ng suất 1.000 m&atilde; lực, v&agrave; thậm ch&iacute; l&agrave; 2.000 m&atilde; lực.&nbsp;</p>
<p>Lucid Air, một chiếc sedan thuần điện của h&atilde;ng Lucid Air c&oacute; trụ sở tại California, sử dụng 2 motor điện cho trục trước v&agrave; sau v&agrave; phi&ecirc;n bản cao cấp nhất sản sinh tới 1.080 m&atilde; lực, c&ugrave;ng tầm hoạt động l&ecirc;n tới 800 km cho mỗi lần sạc đầy.&nbsp;</p>
<p>Peter Rawlinson, gi&aacute;m đốc điều h&agrave;nh của Lucid, người từng l&agrave; cựu kỹ sư trưởng dự &aacute;n Model S của Tesla, n&oacute;i rằng ch&uacute;ng ta sẽ kh&ocirc;ng thể đạt được những con số như vậy với một chiếc xe sử dụng động cơ đốt trong. Ở một động cơ chạy xăng, m&atilde; lực v&agrave; qu&atilde;ng đường hoạt động c&oacute; xu hướng loại trừ lẫn nhau. Động cơ mạnh th&igrave; kh&oacute; m&agrave; tiết kiệm nhi&ecirc;n liệu, v&agrave; chủ xe sẽ phải đổ xăng li&ecirc;n tục.</p>
<p>&ldquo;Ch&uacute;ng t&ocirc;i kh&ocirc;ng bắt đầu với mục ti&ecirc;u tạo ra một chiếc xe c&oacute; sức mạnh đi&ecirc;n rồ. Nhưng khi bước v&agrave;o thế giới kỳ lạ của những chiếc xe điện, điều đ&oacute; sẽ thực sự khiến bạn phải suy nghĩ&rdquo;, &ocirc;ng Rawlinson n&oacute;i.&nbsp;</p>
<p>Để gi&uacute;p xe điện hoạt động trong qu&atilde;ng đường d&agrave;i, c&aacute;c nh&agrave; sản xuất c&oacute; xu hướng tăng c&ocirc;ng suất cho bộ pin, v&agrave; điều n&agrave;y v&ocirc; h&igrave;nh trung sẽ gi&uacute;p động cơ điện của xe c&oacute; một lượng năng lượng lớn để hoạt động, v&agrave; do đ&oacute; gi&uacute;p xe tăng tốc tốt hơn. Lucid Air c&oacute; chỗ cho 5 người v&agrave; nặng hơn 2 tấn nhưng c&oacute; thể tăng tốc từ 0-97 km/h chỉ trong 2,5 gi&acirc;y.&nbsp;</p>
<p>CEO của Lucid cho biết động cơ điện hoạt động hiệu quả hơn bất cứ động cơ đốt trong n&agrave;o. Hầu hết c&aacute;c động cơ xăng chỉ chuyển đổi 20% năng lượng nhi&ecirc;n liệu th&agrave;nh c&ocirc;ng c&oacute; &iacute;ch tới c&aacute;c b&aacute;nh xe, v&agrave; phần c&ograve;n lại bị l&atilde;ng ph&iacute; dưới dạng nhiệt. Đối với động cơ điện, tỷ lệ n&agrave;y l&agrave; khoảng 60%.&nbsp;</p>
<p>&ldquo;Chiếc sedan gia đ&igrave;nh của ch&uacute;ng t&ocirc;i nhanh hơn hẳn si&ecirc;u se của Maserati, điều đ&oacute; kh&ocirc;ng phải thật kỳ cục sao?&rdquo;, &ocirc;ng Rawlinson n&oacute;i, so s&aacute;nh Lucid Air với chiếc MC20 mới ra mắt của h&atilde;ng xe &Yacute;.&nbsp;</p>
<p>Hệ thống truyền động si&ecirc;u gọn của Lucid &ndash; bao gồm động cơ điện, bộ truyền động v&agrave; biến tần &ndash; c&oacute; k&iacute;ch thước đ&uacute;t vừa trong một chiếc t&uacute;i x&aacute;ch. CEO Rawlinson rất th&iacute;ch x&aacute;ch chiếc t&uacute;i n&agrave;y tới c&aacute;c buổi thuyết tr&igrave;nh để n&oacute;i về c&ocirc;ng nghệ của Lucid, nhưng &ocirc;ng cho biết thị trường chỉ lu&ocirc;n ch&uacute; &yacute; đến c&aacute;c con số.&nbsp;</p>
<p>&ldquo;99% những g&igrave; t&ocirc;i n&oacute;i l&agrave; về t&iacute;nh hiệu quả, v&agrave; chỉ c&oacute; 1 % l&agrave; về hiệu suất&rdquo;, vị CEO n&oacute;i. Mặc d&ugrave; vậy những người đam m&ecirc; tốc độ thường tập trung v&agrave;o khả năng tăng tốc ấn tượng của chiếc Lucid Air, khi n&oacute; ho&agrave;n th&agrave;nh qu&atilde;ng đường drag 400 m&eacute;t chỉ trong 9,9 gi&acirc;y với tốc độ 231 km/h.&nbsp;</p>
<p>Để so s&aacute;nh, chiếc McLaren P1 &ndash; vốn được coi l&agrave; chiếc xe động cơ đốt trong nhanh nhất lịch sử - ho&agrave;n th&agrave;nh 400 m&eacute;t trong 9,8 gi&acirc;y. Th&ecirc;m v&agrave;o đ&oacute;, chiếc P1 c&oacute; gi&aacute; tới 1,2 triệu USD trong khi phi&ecirc;n bản cao cấp nhất của Lucid Air c&oacute; gi&aacute; 169.000 USD.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-sieu-xe-pininfaria.jpg" alt="sieu xe pininfarina battista" data-caption="Sự xuất hiện của động cơ điện đ&atilde; dẫn tới những con số &quot;kh&ocirc;ng tưởng&quot; - như chiếc Battista 2.000 m&atilde; lực n&agrave;y của Pininfarina." data-entity-type="file" data-entity-uuid="c75aea5f-3a7c-4ebe-b3b8-453ce12bc7bf" /></h2>
<p class="text-center cap-style mt-2">Sự xuất hiện của động cơ điện đ&atilde; dẫn tới những con số "kh&ocirc;ng tưởng" - như chiếc Battista 2.000 m&atilde; lực n&agrave;y của Pininfarina.</p>
<p>&nbsp;</p>
<p>&ldquo;C&oacute; vẻ như tốc độ vẫn l&agrave; liều thuốc thu h&uacute;t tr&iacute; tưởng tượng&rdquo;, &ocirc;ng Rawlinson nhận định.&nbsp;</p>
<p>Một trong những người nắm bắt được điều đ&oacute; l&agrave; Mate Rimac, nh&agrave; s&aacute;ng chế 32 tuổi người Croatia đ&atilde; th&agrave;nh c&ocirc;ng trong việc tạo n&ecirc;n một thương hiệu xe điện của ri&ecirc;ng m&igrave;nh. Bắt đầu với chiếc Concept One trị gi&aacute; 1,1 triệu USD v&agrave;o năm 2011, Rimac Automobili đ&atilde; trở th&agrave;nh h&atilde;ng sản xuất si&ecirc;u xe điện đầu ti&ecirc;n tr&ecirc;n thế giới.&nbsp;</p>
<p>Sản phẩm tiếp theo của thương hiệu n&agrave;y sẽ l&agrave; chiếc C_Two, một chiếc hypercar đ&iacute;ch thực với c&ocirc;ng suất 1.888 m&atilde; lực v&agrave; chỉ mất 1,85 gi&acirc;y để đi từ 0-97 km/h. Nếu điều n&agrave;y được x&aacute;c nhận, C_Two sẽ l&agrave; chiếc xe sản xuất h&agrave;ng loạt đầu ti&ecirc;n mất &iacute;t hơn 2 gi&acirc;y để đạt tốc độ tr&ecirc;n.&nbsp;</p>
<p>Đối với c&aacute;c h&atilde;ng sản xuất v&agrave; người mua xe, nỗi &aacute;m ảnh về thời gian tăng tốc từ 0-97 km/h sẽ kh&ocirc;ng phản &aacute;nh ch&iacute;nh x&aacute;c khả năng của chiếc xe. Chỉ số n&agrave;y chỉ m&ocirc; tả khả năng tăng tốc trong qu&atilde;ng đường thẳng v&agrave; ngắn, c&ograve;n trong thực tế những chiếc xe chạy điện vẫn kh&ocirc;ng thể s&aacute;nh kịp xe chạy xăng tr&ecirc;n đường đua, hoặc ở những kh&uacute;c rẽ.</p>
<h2>Xe điện c&ograve;n nhiều tiềm năng</h2>
<p>Mấu chốt của vấn đề l&agrave; trọng lượng của tấm pin. Phần lớn xe điện sử dụng một tấm pin phẳng nằm tr&ecirc;n s&agrave;n xe, v&agrave; mặc d&ugrave; n&oacute; giữ cho trọng t&acirc;m xe ở dưới thấp, nhưng trọng t&acirc;m n&agrave;y lại d&agrave;n trải tr&ecirc;n một diện t&iacute;ch lớn hơn so với động cơ đốt trong th&ocirc;ng thường. Điều n&agrave;y c&oacute; nghĩa l&agrave; chiếc xe điện sẽ kh&oacute; b&aacute;m đường hơn ở những kh&uacute;c rẽ.&nbsp;</p>
<p>Chiếc Taycan, xe điện đầu ti&ecirc;n của h&atilde;ng Porsche, nắm giữ kỷ lục về thời gian ho&agrave;n th&agrave;nh một v&ograve;ng đường đua Nurburgring trong hạng mục xe điện, nhưng n&oacute; vẫn chậm hơn rất nhiều so với những người anh em chạy xăng Panamera Turbo S hay 911 GT2 RS.&nbsp;</p>
<p>Nhưng mặc d&ugrave; vậy, ngay cả c&aacute;c tượng đ&agrave;i trong l&agrave;ng tốc độ, những người g&acirc;y dựng cả sự nghiệp dựa tr&ecirc;n động cơ đốt trong, cũng cho rằng xe điện chứa đựng nhiều tiềm năng. Nico Rosberg, nh&agrave; v&ocirc; địch F1 năm 2016, l&agrave; một trong những kh&aacute;ch h&agrave;ng đầu ti&ecirc;n của chiếc Rimac C_Two. Tay đua người Đức cũng sở hữu một đội đua&nbsp;<u>xe điện</u>.&nbsp;</p>
<p>Sự ph&aacute;t triển của Rimac khiến nhiều người kinh ngạc. Mate Rimac bắt đầu mọi thứ năm 19 tuổi, khi cố gắng chuyển đổi chiếc BMW M3 đời cũ của m&igrave;nh từ d&ugrave;ng động cơ xăng sang chạy điện. Doanh nh&acirc;n trẻ cho biết c&ocirc;ng nghệ điện h&oacute;a đang cho ph&eacute;p c&aacute;c nh&agrave; s&aacute;ng chế theo bước Elon Musk, v&agrave; th&aacute;ch thức ng&agrave;nh c&ocirc;ng nghiệp &ocirc;t&ocirc; truyền thống,&nbsp;</p>
<p>&ldquo;Croatia chưa bao giờ c&oacute; ng&agrave;nh c&ocirc;ng nghiệp xe hơi. Kh&ocirc;ng c&oacute; chuỗi cung ứng, kh&ocirc;ng c&oacute; c&aacute;c kỹ sư. N&oacute; giống như l&agrave; th&agrave;nh lập một c&ocirc;ng ty phần mềm ở Uganda vậy&rdquo;, nh&agrave; s&aacute;ng lập Rimac chia sẻ.&nbsp;</p>
<p>Anh vẫn nhớ lại phản ứng của mọi người khi đem chiếc BMW chạy điện của m&igrave;nh tới tham dự c&aacute;c cuộc đua.&nbsp;</p>
<p>&ldquo;Mọi người hỏi: &lsquo;Tại sao anh lại mang chiếc m&aacute;y giặt n&agrave;y đến đ&acirc;y vậy?&rsquo;&rdquo;, Rimac chia sẻ.&nbsp;</p>
<p>Giờ đ&acirc;y, Mate Rimac l&agrave; &ocirc;ng chủ của một c&ocirc;ng ty với 800 nh&acirc;n vi&ecirc;n tại một khu c&ocirc;ng nghiệp gần thủ đ&ocirc; Zagreb. Th&aacute;ng 9 vừa qua, Porsche đầu tư th&ecirc;m tiền v&agrave; n&acirc;ng khoản sở hữu trong Rimac l&ecirc;n 15,5%, tuy&ecirc;n bố rằng họ sẽ hợp t&aacute;c chặt chẽ hơn với c&ocirc;ng ty khởi nghiệp của Croatia trong c&ocirc;ng nghệ pin xe điện.</p>
<p>&ldquo;Thỏa thuận đ&oacute; l&agrave; dấu ấn cho thấy sự chấp nhận đối với ch&uacute;ng t&ocirc;i&rdquo;, Mate Rimac chia sẻ. C&ocirc;ng ty cũng đang ph&aacute;t triển hai mẫu xe điện cho h&atilde;ng xe H&agrave;n Quốc Hyundai.&nbsp;</p>
<p>Rimac thừa nhận ch&iacute;nh Elon Musk đ&atilde; ti&ecirc;n phong việc thay đổi quan niệm người d&ugrave;ng về những chiếc xe điện, rằng ch&uacute;ng chậm chạp v&agrave; buồn tẻ.&nbsp;</p>
<p>&ldquo;Yếu tố cảm x&uacute;c n&agrave;y vẫn rất quan trọng, v&agrave; đ&oacute; l&agrave; những g&igrave; Tesla l&agrave;m rất tốt. Việc tạo ra một chiếc&nbsp;<em>xe điện</em>&nbsp;kh&ocirc;ng chỉ để cứu h&agrave;nh tinh, m&agrave; c&ograve;n phải tạo ra một sản phẩm hấp dẫn&rdquo;, Mate Rimac n&oacute;i.&nbsp;</p>', CAST(N'2021-03-05' AS Date), 36, 1, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_360x200/public/2020-12/hinh-anh-thiet-ke-mau-xe-dien-vinfast.jpeg?itok=R3PRU9pJ', 2)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (50, N'VinFast Fadil thêm 2 màu sơn mới: Đón đầu xu hướng thời trang 2021', N'<h2 class="font-weight-bold news-content-sapo mb-4">Hai m&agrave;u sơn mới gồm Aurora Blue (Xanh dương nhạt) v&agrave; Deep Ocean (Xanh l&aacute;) bổ sung th&ecirc;m v&agrave;o bộ sưu tập sắc m&agrave;u của VinFast Fadil những lựa chọn vừa thời trang, vừa sang trọng, đ&oacute;n đầu xu hướng m&agrave;u sắc của năm 2021.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>Nhằm đ&aacute;p ứng nhu cầu đa dạng của kh&aacute;ch h&agrave;ng, VinFast vừa&nbsp;<strong>bổ sung th&ecirc;m 2 m&agrave;u sơn mới cho d&ograve;ng xe Fadil</strong>, bao gồm&nbsp;<strong>Aurora Blue</strong>&nbsp;v&agrave;&nbsp;<strong>Deep Ocean</strong>. Trong đ&oacute;, m&agrave;u sơn Deep Ocean được lấy từ bảng m&agrave;u của d&ograve;ng xe đầu bảng President, c&ograve;n Aurora Blue l&agrave; m&agrave;u sơn ho&agrave;n to&agrave;n mới, lần đầu ti&ecirc;n xuất hiện tr&ecirc;n xe VinFast. Hai t&ugrave;y chọn m&agrave;u sơn mới được &aacute;p dụng với tất cả phi&ecirc;n bản, gi&aacute; b&aacute;n kh&ocirc;ng thay đổi.</p>
<p>Như vậy,&nbsp;<strong>VinFast Fadil hiện c&oacute; tới 8 m&agrave;u sắc kh&aacute;c nhau</strong>, bao gồm Blue (Xanh dương đậm), Grey (X&aacute;m), Orange (Cam), Red (Đỏ), Silver (Bạc), White (Trắng), c&ugrave;ng 2 m&agrave;u sơn mới Aurora Blue (Xanh dương nhạt) v&agrave; Deep Ocean (Xanh l&aacute;).</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://storage.googleapis.com/vinfast-data-01/16x9_0.jpg" alt="Fadil_004" width="1053" height="592" data-align="center" data-entity-type="file" data-entity-uuid="d004665b-7cfd-484c-ae7f-fe89086ee0a5" /></h2>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>Nhận x&eacute;t về c&aacute;c m&agrave;u sơn mới của VinFast Fadil, anh Tuấn Kiệt - một người chuy&ecirc;n kinh doanh &ocirc; t&ocirc; tại TP.HCM - cho rằng h&atilde;ng xe Việt hiểu rất r&otilde; t&acirc;m l&yacute; v&agrave; thị hiếu kh&aacute;ch h&agrave;ng. &ldquo;<em>Kh&aacute;ch h&agrave;ng trẻ - đối tượng ch&iacute;nh của Fadil - đang c&oacute; xu hướng chuyển dần sang lựa chọn c&aacute;c m&agrave;u sơn sặc sỡ khi mua xe để thể hiện c&aacute; t&iacute;nh, phong c&aacute;ch ri&ecirc;ng của bản th&acirc;n, thay v&igrave; chọn c&aacute;c m&agrave;u trung t&iacute;nh để dễ b&aacute;n lại như quan niệm cũ trước đ&acirc;y. Những người coi &ocirc; t&ocirc; l&agrave; t&agrave;i sản lớn đang dần &iacute;t đi</em>&rdquo;, anh Kiệt ph&acirc;n t&iacute;ch.</p>
<p>Theo đ&oacute;, &ocirc; t&ocirc; giờ giống như điện thoại, nhiều chủ xe sẵn s&agrave;ng mang đi d&aacute;n decal, trang tr&iacute; họa tiết để thỏa m&atilde;n c&aacute; t&iacute;nh, sở th&iacute;ch c&aacute; nh&acirc;n. Do đ&oacute;, việc bổ sung th&ecirc;m hai m&agrave;u sơn mới cho Fadil, theo anh Kiệt, l&agrave; c&aacute;ch chiều l&ograve;ng kh&aacute;ch h&agrave;ng rất tinh tế của VinFast. Theo quan niệm về phong thủy, ngũ h&agrave;nh, m&agrave;u sơn Deep Ocean sẽ rất hợp với người mệnh Hỏa, trong khi Aurora Blue ph&ugrave; hợp với người mệnh Mộc.</p>
<p>Hai m&agrave;u sơn n&agrave;y kh&ocirc;ng chỉ độc đ&aacute;o về mặt thẩm mỹ m&agrave; c&ograve;n đ&ograve;i hỏi kỹ thuật ho&agrave;n thiện phức tạp. Để đưa ra được m&agrave;u sơn như vậy, nh&agrave; sản xuất đ&atilde; phải nghi&ecirc;n cứu v&agrave; thử nghiệm kỹ lưỡng, sao cho sắc độ m&agrave;u sau khi l&ecirc;n xe phải đ&uacute;ng chuẩn v&agrave; th&iacute;ch nghi được trong nhiều điều kiện m&ocirc;i trường &aacute;nh s&aacute;ng kh&aacute;c nhau.</p>
<p>VinFast Fadil sở hữu cảm gi&aacute;c l&aacute;i tốt, khung gầm chắc chắn v&agrave; khối động cơ 1.4L mạnh mẽ nhất ph&acirc;n kh&uacute;c. B&ecirc;n cạnh đ&oacute; l&agrave; h&agrave;ng loạt t&iacute;nh năng vượt trội như m&agrave;n h&igrave;nh giải tr&iacute; 7 inch, hỗ trợ kết nối Apple CarPlay v&agrave; Android Auto, hệ thống &acirc;m thanh 6 loa, cụm đồng hồ hiển thị đa th&ocirc;ng tin c&ugrave;ng ghế ngồi bọc da.</p>
<p>Đặc biệt, VinFast Fadil l&agrave; mẫu xe an to&agrave;n nhất ph&acirc;n kh&uacute;c A, khi đạt chứng nhận 4 sao từ ASEAN NCAP, mức cao nhất đối với mẫu xe cỡ A đang b&aacute;n tại thị trường Việt Nam. Danh s&aacute;ch trang bị an to&agrave;n của Fadil bao gồm hệ thống chống b&oacute; cứng phanh ABS, ph&acirc;n phối lực phanh điện tử EBD, c&acirc;n bằng điện tử ESC, kiểm so&aacute;t lực k&eacute;o, hỗ trợ khởi h&agrave;nh ngang dốc, chống lật, cảm biến hỗ trợ đỗ xe, camera l&ugrave;i v&agrave; hệ thống 6 t&uacute;i kh&iacute;...</p>', CAST(N'2021-03-05' AS Date), 36, 9, NULL, NULL, N'https://storage.googleapis.com/vinfast-data-01/16x9_0.jpg', 3)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (51, N'Tương lai biến động không ngừng của giao thông vận tải', N'<h2 class="font-weight-bold news-content-sapo mb-4">Ng&agrave;nh c&ocirc;ng nghiệp xe hơi sẽ được định h&igrave;nh bởi những biến động kh&ocirc;ng ngừng, v&agrave; kh&ocirc;ng thể th&iacute;ch nghi với c&aacute;c thay đổi sẽ l&agrave;m cho c&aacute;c h&atilde;ng xe tụt lại ph&iacute;a sau, theo nhận định của Automotive World.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>Sau một thập kỷ tương đối &ecirc;m đềm, ng&agrave;nh c&ocirc;ng nghiệp xe hơi to&agrave;n cầu đang trải qua một giai đoạn biến động lớn. Trung Quốc đang tăng trưởng chậm lại v&agrave; nhu cầu sắm xe hơi của h&agrave;ng trăm triệu người d&acirc;n thuộc tầng lớp trung lưu của nước n&agrave;y cũng c&oacute; dấu hiệu giảm tốc. Chi ti&ecirc;u ở Ấn Độ kh&ocirc;ng mấy khả quan v&agrave; ch&acirc;u &Acirc;u tiếp tục cho thấy sự bất ổn tại c&aacute;c thị trường ch&iacute;nh. Tr&aacute;i lại, 2019 lại l&agrave; năm m&agrave; xe hơi c&oacute; doanh số khả quan nhất, mặc d&ugrave; tất cả đều lao dốc trong năm 2020.&nbsp;</p>
<p>Đại dịch Covid-19 xuất hiện khiến lợi nhuận của c&aacute;c nh&agrave; sản xuất xe hơi to&agrave;n cầu sụt giảm, v&agrave; c&aacute;c gi&aacute;m đốc điều h&agrave;nh đang cố gắng để chuẩn bị cho những kịch bản trong tương lai. Doanh số b&aacute;n h&agrave;ng chậm lại, sự bấp b&ecirc;nh của thương mại to&agrave;n cầu v&agrave; chi ph&iacute; R&amp;D đang tăng nhanh &ndash; do c&aacute;c thị trường lớn ng&agrave;y c&agrave;ng &aacute;p đặt quy định kh&iacute; thải chặt chẽ hơn, thậm ch&iacute; l&agrave; vạch ra lộ tr&igrave;nh từ bỏ động cơ đốt trong.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img style="box-sizing: border-box; font-family: Mulish; border: 0px none; vertical-align: middle; max-width: 100%; height: auto !important; padding: 10px; width: 760px; color: #000000; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;" src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-thi-truong-xe-hoi-chau-Au.jpeg" alt="thi truong xe hoi chau Au" data-caption="C&aacute;c h&atilde;ng xe hơi ch&acirc;u &Acirc;u đ&atilde; trải qua một năm v&ocirc; c&ugrave;ng kh&oacute; khăn v&igrave; Covid-19. Ch&iacute;nh phủ Ph&aacute;p phải d&agrave;nh 8,8 tỷ euro để hỗ trợ cho c&aacute;c h&atilde;ng xe nước&amp;nbsp; n&agrave;y vượt qua đại dịch. Ảnh: &lt;em&gt;AP.&lt;/em&gt;" data-entity-type="file" data-entity-uuid="9ca25d6b-a649-449e-9133-9cc8d4afbe2a" /></h2>
<p class="text-center cap-style mt-2">C&aacute;c h&atilde;ng xe hơi ch&acirc;u &Acirc;u đ&atilde; trải qua một năm v&ocirc; c&ugrave;ng kh&oacute; khăn v&igrave; Covid-19. Ch&iacute;nh phủ Ph&aacute;p phải d&agrave;nh 8,8 tỷ euro để hỗ trợ cho c&aacute;c h&atilde;ng xe nước&nbsp; n&agrave;y vượt qua đại dịch. Ảnh:&nbsp;<em>AP.</em></p>
<p>&nbsp;</p>
<p>Kh&ocirc;ng may cho ng&agrave;nh c&ocirc;ng nghiệp xe hơi, sự kh&ocirc;ng chắc chắn v&agrave; biến động giờ đ&acirc;y đ&atilde; trở th&agrave;nh điều b&igrave;nh thường mới. Thuế quan, chiến tranh thương mại v&agrave; đặc biệt l&agrave; bất ổn kinh tế do đại dịch sẽ trở th&agrave;nh một phần của c&acirc;u chuyện, li&ecirc;n tục trong những năm tới v&agrave; c&oacute; thể xa hơn nữa.&nbsp;</p>
<p>Trong khi đ&oacute;, nền tảng của m&ocirc; h&igrave;nh kinh doanh đ&atilde; duy tr&igrave; sự tồn tại của ng&agrave;nh c&ocirc;ng nghiệp xe hơi trong 100 năm qua, lại đang trải qua sự thay đổi lớn nhất kể từ khi động cơ đốt trong ra đời.&nbsp;</p>
<p>Xu hướng số một trong ng&agrave;nh v&agrave;o l&uacute;c n&agrave;y l&agrave; điện h&oacute;a, đặc biệt l&agrave; nhu cầu chuyển đổi mạnh mẽ hơn đối với xe điện (EV). Kh&ocirc;ng c&oacute; nh&agrave; sản xuất xe hơi n&agrave;o ngạc nhi&ecirc;n về điều n&agrave;y v&agrave; tr&ecirc;n thực tế, c&aacute;c h&atilde;ng xe danh tiếng đ&atilde; c&oacute; những m&agrave;n đặt cược t&aacute;o bạo v&agrave;o tương lai. Tại Mỹ, Trung Quốc v&agrave; ch&acirc;u &Acirc;u, h&agrave;ng tỷ USD đang được đổ v&agrave;o việc ph&aacute;t triển c&aacute;c loại xe chạy điện với gi&aacute; cả phải chăng, cũng như c&aacute;c loại xe hybrid nhẹ (xe lai sạc điện). Một số nh&agrave; sản xuất thậm ch&iacute; c&ograve;n ngừng ph&aacute;t triển c&aacute;c khung gầm d&agrave;nh cho xe sử dụng động cơ đốt trong (ICE).&nbsp;</p>
<h2>Nhu cầu cho xe điện v&agrave; xe lai tăng, nhưng tăng chậm&nbsp;</h2>
<p>Cuộc c&aacute;ch mạng xe điện, điều được dự đo&aacute;n sẽ xảy ra sớm chiều, tr&ecirc;n thực tế đang diễn ra kh&aacute; chậm chạp. Tại Mỹ, doanh số xe hybrid v&agrave; xe điện chỉ chiếm &iacute;t hơn 5% tổng doanh số xe mới b&aacute;n ra trong năm 2019. Thị trường trở n&ecirc;n giới hạn khi tệp kh&aacute;ch h&agrave;ng ch&iacute;nh của những d&ograve;ng xe n&agrave;y l&agrave; những người muốn &ldquo;sống xanh&rdquo; khi chọn mua xe mới. V&igrave; vậy, ng&agrave;nh c&ocirc;ng nghiệp xe hơi cần phải t&igrave;m c&aacute;ch mở rộng tệp kh&aacute;ch h&agrave;ng cho xe điện &nbsp;v&agrave; xe hybrid, v&agrave; cần c&acirc;n nhắc tới c&aacute;c ti&ecirc;u ch&iacute; kh&aacute;c.&nbsp;</p>
<p>Ch&uacute;ng ta c&oacute; thể thấy r&otilde; điều n&agrave;y ở Triển l&atilde;m &ocirc; t&ocirc; Los Angeles năm 2019, khi những mẫu xe điện mới chỉ tập trung v&agrave;o hiệu suất v&agrave; thiết kế, nhắm mục ti&ecirc;u tới những kh&aacute;ch h&agrave;ng cao cấp, những người kh&ocirc;ng sợ gi&aacute; cao v&agrave; chỉ cần c&ocirc;ng nghệ, sự sang trọng v&agrave; sức mạnh tr&ecirc;n xe của họ. C&aacute;c nh&agrave; sản xuất xe hơi rồi cũng phải nhận ra rằng, việc b&aacute;n xe điện như một sản phẩm &ldquo;phong c&aacute;ch sống&rdquo; kh&ocirc;ng phải l&agrave; con đường kinh doanh l&acirc;u d&agrave;i, v&agrave; trong bối cảnh trợ gi&aacute; của ch&iacute;nh phủ với xe điện giảm dần, c&aacute;c h&atilde;ng xe sẽ cần một c&aacute;ch tiếp cận kh&aacute;c.&nbsp;</p>
<p>Khảo s&aacute;t &ldquo;Tương lai của nhi&ecirc;n liệu&rdquo; được thực hiện bởi Ernst &amp; Young (EY) cho thấy người d&ugrave;ng lo lắng nhất về chi ph&iacute;, qu&atilde;ng đường hoạt động (sau mỗi lần sạc đầy) v&agrave; thiếu cơ sở hạ tầng trạm sạc khi muốn sở hữu một chiếc xe điện. Về mặt chi ph&iacute;, tin tốt l&agrave; gi&aacute; th&agrave;nh pin lithium-ion đang giảm nhanh ch&oacute;ng.</p>
<p>Nhưng phạm vi hoạt động l&agrave; vấn đề kh&oacute; giải quyết hơn, mặc d&ugrave; hầu hết nghi&ecirc;n cứu đều x&aacute;c định phần lớn t&agrave;i xế chỉ l&aacute;i xe 70 km mỗi ng&agrave;y &ndash; qu&aacute; đủ cho tầm hoạt động của một mẫu xe điện b&igrave;nh thường. Cơ sở hạ tầng l&agrave; một c&acirc;u hỏi lớn m&agrave; c&aacute;c h&atilde;ng xe điện kh&ocirc;ng thể tự đưa ra c&acirc;u trả lời. Tuy nhi&ecirc;n chắc chắn việc c&oacute; nhiều xe điện chạy tr&ecirc;n đường hơn sẽ l&agrave;m giảm chi ph&iacute; ph&aacute;t triển c&aacute;c trạm sạc.&nbsp;</p>
<p>C&aacute;ch tốt nhất đối với c&aacute;c h&atilde;ng sản xuất xe điện l&agrave; h&atilde;y tung ra thị trường những chiếc xe m&agrave; mọi người thực sự muốn sở hữu, v&agrave; việc n&oacute; chạy điện chỉ l&agrave; yếu tố xếp sau. Hay n&oacute;i c&aacute;ch kh&aacute;c, kh&aacute;ch h&agrave;ng cần phải cảm thấy họ muốn sở hữu&nbsp;chiếc xe trước trước khi&nbsp;</p>
<p>Cuối c&ugrave;ng, mặc d&ugrave; thị hiếu người ti&ecirc;u d&ugrave;ng đang tập trung v&agrave;o CUV, SUV v&agrave; xe b&aacute;n tải (71,8 % xe b&aacute;n ra ở Mỹ trong th&aacute;ng 11/2019 l&agrave; xe tải hạng nhẹ), hầu hết xe điện vẫn l&agrave; xe sedan hoặc hatchback. Cũng trong th&aacute;ng n&agrave;y, 81% số xe điện b&aacute;n ra ở Mỹ l&agrave; xe sedan hoặc hatchback, đơn giản v&igrave; hầu hết xe điện ở thị trường n&agrave;y l&agrave; sedan hoặc hatchback.&nbsp;</p>
<p>Việc ph&aacute;t triển c&aacute;c d&ograve;ng SUV, CUV v&agrave; xe b&aacute;n tải chạy điện, nếu được thực hiện đ&uacute;ng c&aacute;ch, c&oacute; thể l&agrave;m thay đổi nhận thức to&agrave;n cầu về xe điện &ndash; từ những chiếc xe sang trọng đắt tiền v&agrave; mỏng manh d&agrave;nh cho người gi&agrave;u đi lại trong phố - sang một phương tiện hữu &iacute;ch, đ&aacute;ng tin cậy v&agrave; c&oacute; thể sử dụng h&agrave;ng ng&agrave;y. C&aacute;c h&atilde;ng sản xuất xe điện cần đưa ra nhiều lựa chọn hơn.&nbsp;</p>
<h2>Tập trung t&aacute;i chế pin xe điện&nbsp;</h2>
<p>Điều cuối c&ugrave;ng cần ch&uacute; &yacute; l&agrave; việc t&aacute;i chế v&agrave; xử l&yacute; pin khi hết v&ograve;ng đời hoạt động. Sẽ thật tồi tệ khi thay thế một sản phẩm g&acirc;y &ocirc; nhiễm bằng một sản phẩm g&acirc;y &ocirc; nhiễm kh&aacute;c, v&igrave; vậy c&aacute;c h&atilde;ng xe cần phải trả lời c&acirc;u hỏi n&agrave;y trước khi qu&aacute; muộn.&nbsp;</p>
<p>Sau khoảng v&agrave;i ngh&igrave;n chu kỳ sạc, hiệu suất hoạt động của pin lithium-ion sẽ kh&ocirc;ng đủ để cung cấp năng lượng cho xe nữa. C&oacute; rất nhiều t&ugrave;y chọn để xử l&yacute; pin đ&atilde; qua sử dụng, nhưng kh&ocirc;ng phải tất cả t&ugrave;y chọn n&agrave;y đều ph&ugrave; hợp để bảo vệ m&ocirc;i trường.&nbsp;</p>
<p>Đ&acirc;y l&agrave; một b&agrave;i to&aacute;n đau đầu về mặt sinh th&aacute;i, v&agrave; ho&agrave;n to&agrave;n c&oacute; thể biến th&agrave;nh một thảm họa PR với xe điện. Nhiều năm qua, xe điện được quảng c&aacute;o l&agrave; phương tiện sạch, kh&ocirc;ng kh&iacute; thải v&agrave; ho&agrave;n to&agrave;n &ldquo;xanh&rdquo;. H&agrave;ng triệu người đ&atilde; mua xe điện v&agrave; tin rằng họ đang tham gia v&agrave;o nỗ lực to&agrave;n cầu để giảm kh&iacute; thải nh&agrave; k&iacute;nh. Tuy nhi&ecirc;n, hiện nay mới chỉ c&oacute; 5% pin lithium-ion được t&aacute;i chế.&nbsp;</p>
<p>Khoảng 262.000 tấn pin Lithium-on cho xe điện sẽ cần được t&aacute;i chế v&agrave;o năm 2022, v&igrave; ch&uacute;ng đ&atilde; &ldquo;chai&rdquo; v&agrave; kh&ocirc;ng c&ograve;n c&oacute; thể sử dụng nữa. Nếu tất cả xe mới b&aacute;n ra v&agrave;o năm 2040 đều l&agrave; xe điện, như tầm nh&igrave;n của một số quốc gia, th&igrave; ch&uacute;ng ta sẽ phải đối mặt với 2,5 triệu bộ pin đ&atilde; qua sử dụng trong năm đ&oacute;.</p>
<p>&nbsp;</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-nha-may-cua-northvolt-o-thuy-dien.jpg" alt="nha may cua northvolt o thuy dien" data-caption="Northvolt, startup đến từ Thụy Điển, đang l&agrave; người dẫn đầu trong việc nghi&ecirc;n cứu t&aacute;i chế pin xe điện. C&ocirc;ng ty được th&agrave;nh lập bởi Peter Carlsson, người từng l&agrave; quản l&yacute; cấp cao tại Tesla." data-entity-type="file" data-entity-uuid="3861029e-5414-48ad-b40c-1e93e4a5e2ff" /></h2>
<p class="text-center cap-style mt-2">Northvolt, startup đến từ Thụy Điển, đang l&agrave; người dẫn đầu trong việc nghi&ecirc;n cứu t&aacute;i chế pin xe điện. C&ocirc;ng ty được th&agrave;nh lập bởi Peter Carlsson, người từng l&agrave; quản l&yacute; cấp cao tại Tesla.</p>
<p>&nbsp;</p>
<p>Mặc d&ugrave; trọng t&acirc;m v&agrave;o l&uacute;c n&agrave;y l&agrave; sản xuất một loại pin hiệu quả với trọng lượng thấp, c&ocirc;ng suất cao v&agrave; gi&aacute; th&agrave;nh rẻ, trong tương lai điều n&agrave;y sẽ phải thay đổi. C&aacute;c nh&agrave; sản xuất cần phải cần phải ph&aacute;t triển pin với tuổi thọ cao, v&agrave; t&igrave;m ra c&aacute;ch thay thế hoặc t&aacute;i chế th&acirc;n thiện với với m&ocirc;i trường. Hệ thống hiện tại kh&ocirc;ng bền vững.&nbsp;</p>
<p>Nhiều c&ocirc;ng ty đ&atilde; nhận ra sự cần thiết của việc t&aacute;i chế, v&agrave; đ&atilde; thử nghiệm chương tr&igrave;nh t&acirc;n trang pin xe điện. Nhưng cuối c&ugrave;ng, mỗi tấm pin xe điện sẽ phải được chế tạo để c&oacute; thể t&aacute;i chế, v&agrave; điều đ&oacute; sẽ mang lại lợi &iacute;ch trong tất cả c&aacute;c giai đoạn. Pin được ti&ecirc;u chuẩn h&oacute;a cũng sẽ dễ sản xuất hơn, rẻ hơn trong việc sản xuất, t&aacute;i sử dụng v&agrave; t&aacute;i chế. Một chuỗi cung ứng bền vững thật sự sẽ mang lại lợi &iacute;ch cho người ti&ecirc;u d&ugrave;ng, nh&agrave; sản xuất v&agrave; cả m&ocirc;i trường, cũng như đảm bảo tương lai l&acirc;u d&agrave;i cho xe điện.&nbsp;</p>
<h2>Vai tr&ograve; của blockchain&nbsp;</h2>
<p>Ban đầu, việc hiểu v&agrave; nắm được c&ocirc;ng nghệ blockchain c&oacute; thể rất kh&oacute; khăn, nhưng đ&acirc;y sẽ l&agrave; cơ hội để c&aacute;c tổ chức thay đổi c&aacute;ch giao dịch kinh doanh, theo c&aacute;ch hiệu quả, liền mạch v&agrave; an to&agrave;n hơn. Blockchain sẽ cho ph&eacute;p ng&agrave;nh c&ocirc;ng nghiệp xe hơi triển khai c&aacute;c kh&aacute;i niệm như quyền sở hữu chung hay theo tỷ lệ với c&aacute;c đội xe, phương tiện v&agrave; phụ t&ugrave;ng theo c&aacute;ch c&oacute; thể thay đổi ho&agrave;n to&agrave;n kh&aacute;i niệm của ch&uacute;ng ta về quyền sở hữu phương tiện.&nbsp;</p>
<p>Tương lai sẽ hứa hẹn một kịch bản rằng, một th&agrave;nh phố sẽ c&oacute; một đội xe, được sở hữu từng phần bởi người d&acirc;n v&agrave; sau đ&oacute; cho người kh&aacute;c thu&ecirc; lại sử dụng, tạo ra lợi nhuận cho c&aacute;c c&aacute; nh&acirc;n. Tất cả sẽ được quản l&yacute; v&agrave; duy tr&igrave; bằng c&aacute;ch sử dụng c&ocirc;ng nghệ blockchain. N&oacute; cũng c&oacute; thể gi&uacute;p c&aacute;c doanh nghiệp v&agrave; lĩnh vực cải thiện hiệu quả chuỗi cung ứng, cung cấp c&aacute;c giao dịch t&agrave;i ch&iacute;nh v&agrave; cho thu&ecirc; một c&aacute;ch an to&agrave;n hơn.&nbsp;</p>
<p>Việc triển khai blockchain sẽ l&agrave; th&aacute;ch thức trong v&agrave;i năm tới đối với ng&agrave;nh c&ocirc;ng nghiệp xe hơi. C&aacute;c gi&aacute;m đốc trong ng&agrave;nh đều hiểu r&otilde; blockchain l&agrave; g&igrave; v&agrave; c&oacute; thể l&agrave;m g&igrave; &ndash; nhưng cụ thể n&oacute; sẽ l&agrave;m g&igrave; v&agrave;o h&ocirc;m nay để mang lại lợi thế cho doanh nghiệp v&agrave;o ng&agrave;y mai? Giống như rất nhiều lĩnh vực kh&aacute;c trong ng&agrave;nh v&agrave;o l&uacute;c n&agrave;y, c&oacute; một nguy cơ tiềm t&agrave;ng rằng c&aacute;c doanh nghiệp sẽ bị bỏ lại ph&iacute;a sau nếu kh&ocirc;ng th&iacute;ch ứng kịp thời.&nbsp;</p>', CAST(N'2021-03-05' AS Date), 36, 1, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_200x200/public/2020-12/hinh-anh-tuong-lai-cua-giao-thong-van-tai.jpg?itok=V2kLJGV0', 2)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (52, N'Thời của xe điện sẽ đến sớm hơn dự kiến?', N'<h2 class="font-weight-bold news-content-sapo mb-4">Với việc c&aacute;c quy định kh&iacute; thải ng&agrave;y c&agrave;ng thắt chặt trong khi chi ph&iacute; sản xuất ng&agrave;y c&agrave;ng giảm, xe điện sẽ l&agrave; tương lai kh&ocirc;ng thể tr&aacute;nh khỏi của ng&agrave;nh c&ocirc;ng nghiệp &ocirc; t&ocirc;.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>Gi&aacute; của pin lithium-ion &ndash; bộ phận cấu th&agrave;nh chiếm gi&aacute; trị cao nhất trong một chiếc xe điện &ndash; đang giảm nhanh ch&oacute;ng v&agrave; c&aacute;c nh&agrave; ph&acirc;n t&iacute;ch thị trường cho rằng thời kỳ m&agrave; phương tiện chạy điện trở n&ecirc;n phổ biến sẽ kh&ocirc;ng c&ograve;n xa nữa, khi gi&aacute; của xe điện sẽ ngang bằng với xe sử dụng động cơ đốt trong, bất chấp ch&iacute;nh phủ c&oacute; trợ gi&aacute; hay kh&ocirc;ng.</p>
<p>Hầu hết c&aacute;c chuy&ecirc;n gia trong ng&agrave;nh v&agrave; c&aacute;c h&atilde;ng xe đều thừa nhận<strong>&nbsp;xe điện sẽ l&agrave; tương lai của ng&agrave;nh sản xuất &ocirc;t&ocirc;.</strong></p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-xe-dien-chau-au_0.jpg" alt="xe dien o chau au" data-caption="Doanh số xe điện ở ch&acirc;u &Acirc;u đang tăng nhanh, sau khi c&aacute;c h&atilde;ng &ocirc; t&ocirc; tung ra h&agrave;ng loạt mẫu xe điện nhằm đ&aacute;p ứng quy định kh&iacute; thải ng&agrave;y c&agrave;ng chặt chẽ của Li&ecirc;n minh ch&acirc;u &Acirc;u." data-entity-type="file" data-entity-uuid="27c5d1a8-7331-451d-b03f-998a9fd63d46" /></h2>
<p class="text-center cap-style mt-2">Doanh số xe điện ở ch&acirc;u &Acirc;u đang tăng nhanh, sau khi c&aacute;c h&atilde;ng &ocirc; t&ocirc; tung ra h&agrave;ng loạt mẫu xe điện nhằm đ&aacute;p ứng quy định kh&iacute; thải ng&agrave;y c&agrave;ng chặt chẽ của Li&ecirc;n minh ch&acirc;u &Acirc;u.</p>
<h3>Xe điện b&aacute;n chạy bất chấp đại dịch</h3>
<p>ID 3 &ndash; mẫu xe thuần điện của Volkswagen, đang c&oacute; gi&aacute; ngang bằng với chiếc Golf &ndash; hatchback b&aacute;n chạy nhất trong lịch sử của h&atilde;ng. Tesla Model 3 th&igrave; c&oacute; gi&aacute; ngang ngửa với BMW 3 Series, v&agrave; gi&aacute; thu&ecirc; h&agrave;ng th&aacute;ng d&agrave;nh cho chiếc xe điện cỡ nhỏ Zoe của h&atilde;ng Renault chỉ bằng gi&aacute; một bữa tối d&agrave;nh cho hai người ở Paris.</p>
<p>Trong bối cảnh doanh số xe hơi sụt giảm mạnh ở thị trường ch&acirc;u &Acirc;u do hậu quả của đại dịch Covid-19, một ph&acirc;n kh&uacute;c lại đang chứng kiến sự tăng trưởng mạnh mẽ, đ&oacute; l&agrave; xe điện. Một trong những nguy&ecirc;n nh&acirc;n l&agrave; v&igrave; ở thị trường n&agrave;y, gi&aacute; xe chạy thuần điện đang ngang ngửa với những đối thủ sử dụng động cơ đốt trong.</p>
<p>Cũng phải n&oacute;i th&ecirc;m rằng mức gi&aacute; cạnh tranh n&agrave;y được g&oacute;p phần tạo n&ecirc;n bởi c&aacute;c chương tr&igrave;nh trợ gi&aacute; của ch&iacute;nh phủ c&aacute;c nước EU. T&ugrave;y v&agrave;o quốc gia m&agrave; mức trợ gi&aacute; c&oacute; thể l&ecirc;n đến 10.000 USD d&agrave;nh cho một phương tiện chạy điện. C&aacute;c nh&agrave; sản xuất xe hơi cũng đang đẩy nhanh việc đưa c&aacute;c mẫu xe thuần điện ra thị trường để đ&aacute;p ứng hạn ngạch kh&iacute; thải ng&agrave;y c&agrave;ng chặt chẽ hơn của EU. Tại Đức, bạn c&oacute; thể thu&ecirc; một chiếc Renault Zoe chạy điện với gi&aacute; 138 euro mỗi th&aacute;ng, tương đương 164 USD.</p>
<p>Trong khi đ&oacute; tại Mỹ, xe điện vẫn chưa thật sự phổ biến một phần do ch&iacute;nh phủ chưa c&oacute; c&aacute;c chương tr&igrave;nh trợ gi&aacute; h&agrave;o ph&oacute;ng như ở ch&acirc;u &Acirc;u. Xe chạy điện chỉ chiếm 2% lượng xe mới b&aacute;n ra ở Mỹ, trong khi con số n&agrave;y ở ch&acirc;u &Acirc;u l&agrave; gần 5%. Nếu t&iacute;nh cả xe lai &ndash; phương tiện sử dụng cả động cơ đốt trong v&agrave; motor điện &ndash; th&igrave; con số n&agrave;y l&agrave; 9% ở ch&acirc;u &Acirc;u.</p>
<p>Khi xe điện ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến, ng&agrave;nh c&ocirc;ng nghiệp sản xuất &ocirc;t&ocirc;&nbsp;đang tiệm cận thời điểm m&agrave;, ngay cả khi kh&ocirc;ng c&oacute; trợ cấp của ch&iacute;nh phủ, việc sở hữu một chiếc xe điện sẽ rẻ ngang, hoặc thậm chỉ l&agrave; rẻ hơn một chiếc xe sử dụng nhi&ecirc;n liệu h&oacute;a thạch. Đối với c&aacute;c h&atilde;ng xe th&igrave; đ&acirc;y l&agrave; một cuộc đua, v&agrave; ai đạt được cột mốc n&agrave;y trước nhiều khả năng sẽ thống trị thị trường.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-tram-sac-tesla_0.jpg" alt="tram sac tesla" data-caption="Trạm sạc tại trung t&acirc;m thiết kế của Tesla. Mỹ vẫn đang c&oacute; &iacute;t số lượng trạm sạc d&agrave;nh cho xe điện hơn so với EU." data-entity-type="file" data-entity-uuid="6f5ce286-ae64-46f2-a814-66d732faf68b" /></h2>
<p class="text-center cap-style mt-2">Trạm sạc tại trung t&acirc;m thiết kế của Tesla. Mỹ vẫn đang c&oacute; &iacute;t số lượng trạm sạc d&agrave;nh cho xe điện hơn so với EU.</p>
<p>&nbsp;</p>
<p>C&aacute;ch đ&acirc;y một v&agrave;i năm, c&aacute;c chuy&ecirc;n gia nhận định 2025 sẽ l&agrave; thời điểm m&agrave; gi&aacute; th&agrave;nh sản xuất xe điện ngang bằng xe động cơ đốt trong, nhưng c&ocirc;ng nghệ đang tiến bộ nhanh hơn dự kiến v&agrave; xu hướng n&agrave;y sẽ c&ograve;n tiếp tục. C&aacute;n c&acirc;n quyền lực trong ng&agrave;nh c&ocirc;ng nghiệp cuối c&ugrave;ng sẽ phụ thuộc v&agrave;o việc nh&agrave; sản xuất, c&ocirc;ng ty c&ocirc;ng nghệ hoặc c&ocirc;ng ty khởi nghiệp n&agrave;o th&agrave;nh c&ocirc;ng trong việc n&eacute;n nhiều năng lượng nhất v&agrave;o một khối lượng pin cụ thể - chỉ số được gọi l&agrave; mật độ năng lượng.</p>
<p>Pin c&oacute; mật độ năng lượng c&agrave;ng c&aacute;o sẽ rẻ hơn, v&igrave; n&oacute; cần &iacute;t nguy&ecirc;n liệu th&ocirc; hơn để sản xuất, nhẹ hơn nhưng vẫn cung cấp đủ năng lượng cho c&ugrave;ng một qu&atilde;ng đường.</p>
<h3>"Nhanh hơn dự kiến"</h3>
<p>&ldquo;Ch&uacute;ng ta đang thấy mật độ năng lượng tăng nhanh hơn bao giờ hết&rdquo;, &ocirc;ng Milan Thakore, nh&agrave; ph&acirc;n t&iacute;ch cấp cao tại c&ocirc;ng ty tư vấn năng lượng Wood Mackenzie, nhận định. H&atilde;ng n&agrave;y cho rằng thời điểm gi&aacute; th&agrave;nh sản xuất xe điện ngang bằng xe động cơ đốt trong sẽ đến v&agrave;o năm 2024.</p>
<p>&ldquo;Ch&uacute;ng ta đang đi nhanh hơn dự kiến. Nếu bạn hỏi ai đ&oacute; v&agrave;o năm 2010 rằng liệu ch&uacute;ng ta c&oacute; thể đạt được sự ngang gi&aacute; v&agrave;o năm 2025 hay kh&ocirc;ng, họ sẽ n&oacute;i đ&oacute; l&agrave; điều kh&ocirc;ng thể&rdquo;, &ocirc;ng Venkat Viswanathan, ph&oacute; gi&aacute;o sư khoa Kỹ thuật Cơ kh&iacute; tại Đại học Carnegie Mellon, cho hay.</p>
<p>Mặc d&ugrave; vậy, sự thay đổi sẽ đến với những ph&acirc;n kh&uacute;c kh&aacute;c nhau v&agrave;o những thời điểm kh&aacute;c nhau. Ở ph&acirc;n kh&uacute;c cao cấp, gi&aacute; th&agrave;nh xe điện đ&atilde; gần như ngang bằng xe chạy xăng. Bản base của chiếc Porsche Taycan chỉ nhỉnh hơn 100.000 USD ở thị trường Mỹ, đắt hơn 10% so với một chiếc Panamera cơ bản. Trong khi đ&oacute; Tesla Model 3 v&agrave; BMW 3 Series đều c&oacute; gi&aacute; 41.000 USD ở thị trường Mỹ.</p>
<p>Việc sở hữu một chiếc xe điện&nbsp;về l&acirc;u d&agrave;i c&oacute; thể c&ograve;n tiết kiệm hơn, v&igrave; n&oacute; &iacute;t cần bảo dưỡng hơn so với một chiếc xe động cơ đốt trong. Th&ecirc;m v&agrave;o đ&oacute; gi&aacute; th&agrave;nh của điện cũng rẻ hơn so với xăng nếu t&iacute;nh tr&ecirc;n c&ugrave;ng một qu&atilde;ng đường di chuyển.</p>
<p>Việc chọn xe n&agrave;o giờ đ&acirc;y gần như phụ thuộc v&agrave;o sở th&iacute;ch c&aacute; nh&acirc;n thay v&igrave; vấn đề kinh tế. Mặc d&ugrave; vậy, một nh&acirc;n tố quyết định l&agrave; người mua c&oacute; sẵn s&agrave;ng từ bỏ việc đổ xăng, vốn tốn &iacute;t thời gian hơn, m&agrave; thay v&agrave;o đ&oacute; chọn d&ugrave;ng trạm sạc. D&ugrave; sao th&igrave; họ cũng c&oacute; lựa chọn sạc xe tại nh&agrave; nếu mua th&ecirc;m bộ sạc của Tesla.</p>
<p>EU quy định cho đến năm 2021, mức ph&aacute;t thải trung b&igrave;nh của xe chở kh&aacute;ch v&agrave; phương tiện hạng nhẹ b&aacute;n ra ở thị trường khối kh&ocirc;ng được vượt qu&aacute; 95 g CO2 cho 1 km. Nếu kh&ocirc;ng tu&acirc;n thủ, c&aacute;c nh&agrave; sản xuất xe hơi c&oacute; thể phải đối mặt với khoản tiền phạt h&agrave;ng tỷ euro.</p>
<p><em>(Ảnh: Zuma Press, New York Times, Motor1)</em></p>', CAST(N'2021-03-05' AS Date), 36, 1, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_360x200/public/2021-01/hinh-anh-thoi-cua-xe-dien.png?itok=4W_8wKW3', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (53, N'Bán tải chạy điện – Tương lai của thị trường xe hơi Mỹ', N'<h2 class="font-weight-bold news-content-sapo mb-4">Kh&ocirc;ng phải n&oacute;i nhiều về t&igrave;nh y&ecirc;u của người Mỹ đối với những chiếc xe b&aacute;n tải. Cho đến cuối năm 2020, mẫu xe b&aacute;n chạy nhất nước Mỹ l&agrave; một chiếc b&aacute;n tải. Mẫu xe b&aacute;n chạy thứ hai cũng l&agrave; một chiếc b&aacute;n tải. V&agrave; mẫu xe b&aacute;n chạy thứ ba, c&aacute;c bạn c&oacute; đo&aacute;n được kh&ocirc;ng? &ndash; Vẫn l&agrave; một chiếc b&aacute;n tải. V&igrave; vậy, b&aacute;n tải chạy điện sẽ l&agrave; tương lai của thị trường xe lớn thứ 2 thế giới.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p class="text-align-justify">V&agrave;o thập ni&ecirc;n 1990, những chiếc xe điện của tương lai được tưởng tượng giống như mẫu EV1 của General Motors: nhỏ nhắn, kh&ocirc;ng c&oacute; lưới tản nhiệt v&agrave; một th&acirc;n h&igrave;nh mềm mại nhưng c&oacute; t&iacute;nh kh&iacute; động học cao thay v&igrave; chỉ đơn thuần l&agrave; phong c&aacute;ch thiết kế.&nbsp;</p>
<p class="text-align-justify">Gần 30 năm sau, khi xe điện thực sự trở th&agrave;nh điều &ldquo;b&igrave;nh thường mới&rdquo; trong ng&agrave;nh c&ocirc;ng nghiệp xe hơi, kh&ocirc;ng ai c&oacute; thể tưởng tượng được chiếc xe điện h&agrave;ng đầu của GM giờ đ&acirc;y lại l&agrave; một chiếc&nbsp;<strong>b&aacute;n tải chạy điện</strong>&nbsp;c&oacute; phần cục mịch, nặng tới 3 tấn v&agrave; c&ocirc;ng suất 1.000 m&atilde; lực.</p>
<h2 class="text-align-justify">Cuộc đổ bộ của những chiếc b&aacute;n tải chạy điện&nbsp;</h2>
<p class="text-align-justify">Ch&agrave;o mừng sự trở lại của Hummer &ndash; thảm họa m&ocirc;i trường một thời &ndash; giờ đ&atilde; được hồi sinh để chủ nh&acirc;n c&oacute; thể l&aacute;i xe tới bất cứ bữa tiệc n&agrave;o ở Thung lũng Silicon m&agrave; vẫn khiến c&aacute;c vị kh&aacute;ch trầm trồ. V&agrave; kh&ocirc;ng chỉ l&agrave; một sản phẩm duy nhất, thị trường xe hơi Mỹ đang chờ đ&oacute;ng những chiếc b&aacute;n tải chạy điện từ Ford, Chevrolet v&agrave; c&aacute;c h&atilde;ng xe điện khởi nghiệp như Rivian, Bollinger. Elon Musk cũng kh&ocirc;ng nằm ngo&agrave;i cuộc đua với chiếc concept Cybertruck &ndash; chiếc b&aacute;n tải với ngoại thất g&oacute;c cạnh như thể n&oacute; vừa bước ra từ phim Mad Max. &nbsp;</p>
<p class="text-align-justify">Ngo&agrave;i ph&acirc;n kh&uacute;c b&aacute;n tải, hầu hết c&aacute;c xe điện mới từ Tesla, Audi, Jaguar, Mercedes-Benz, BMW v&agrave; Cadilac đều c&oacute; đặc điểm chung: ch&uacute;ng l&agrave; SUV hạng sang, với trang bị tiện nghi, khả năng tăng tốc mạnh mẽ v&agrave; kh&ocirc;ng gian rộng r&atilde;i cho c&aacute;c gia đ&igrave;nh.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img style="box-sizing: border-box; font-family: Mulish; border: 0px none; vertical-align: middle; max-width: 100%; height: auto !important; padding: 10px; width: 760px; color: #000000; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;" src="https://storage.googleapis.com/vinfast-data-01/hinh-anh-cuoc-do-bo-cua-nhung-chiec-ban-tai-chay-dien.jpg" alt="thi truong my va xe ban tai" data-caption="H&agrave;ng chục mẫu b&aacute;n tải chạy điện sẽ đổ bộ thị trường Mỹ trong năm 2021. Đồ họa: &lt;em&gt;Jason Giibbs.&lt;/em&gt;" data-entity-type="file" data-entity-uuid="507b4a04-e7af-4ba5-be3f-57c2748e4a72" /></h2>
<p class="text-center cap-style mt-2">H&agrave;ng chục mẫu b&aacute;n tải chạy điện sẽ đổ bộ thị trường Mỹ trong năm 2021. Đồ họa:&nbsp;<em>Jason Giibbs.</em></p>
<p class="text-align-justify">Tỷ ph&uacute; Elon Musk kỳ vọng Model Y &ndash; chiếc crossover mới nhất &ndash; sẽ trở th&agrave;nh mẫu xe b&aacute;n chạy nhất của Tesla. C&aacute;c thương hiệu phổ th&ocirc;ng, bao gồm Ford, Toyota, Hyundai v&agrave; Kia cũng đang hạn chế đổ tiền v&agrave;o c&aacute;c d&ograve;ng xe nhỏ hay sedan gia đ&igrave;nh để ph&aacute;t triển những chiếc SUV chạy điện, bao gồm cả chiếc Mustang Mach-E của Ford. Trong thị trường Mỹ l&uacute;c n&agrave;y, một mẫu xe đ&ocirc; thị cỡ nhỏ chạy điện, như Mini Cooper SE hay Nissan Leaf, c&oacute; thể coi l&agrave; nh&acirc;n tố độc đ&aacute;o thay v&igrave; dự b&aacute;o cho xu hướng sắp tới.&nbsp;</p>
<p class="text-align-justify">C&acirc;u chuyện của Rivian l&agrave; một v&iacute; dụ minh họa r&otilde; n&eacute;t cho những g&igrave; đang xảy ra trong thị trường. Khi RJ Scaringe th&agrave;nh lập Rivian sau khi tốt nghiệp tiến sĩ kỹ thuật cơ kh&iacute; tại Viện C&ocirc;ng nghệ Massachusetts (MIT), &ocirc;ng v&agrave; c&aacute;c cộng sự ban đầu muốn tạo ra một chiếc xe thể thao 2 cửa chạy điện. Nhưng cuối c&ugrave;ng, họ từ bỏ kế hoạch đ&oacute; v&agrave; thay bằng 1 chiếc b&aacute;n tải v&agrave; 1 chiếc SUV, sẽ ra mắt từ giữa năm 2021.&nbsp;</p>
<p class="text-align-justify">SUV đ&atilde; trở th&agrave;nh d&ograve;ng xe thống trị to&agrave;n cầu v&agrave; RJ Scaringe thừa nhận c&aacute;c nh&agrave; sản xuất &ocirc; t&ocirc; điện c&oacute; suy nghĩ &ldquo;nếu kh&ocirc;ng thể đ&aacute;nh bại th&igrave; h&atilde;y gia nhập&rdquo;. Bất chấp c&aacute;c biện ph&aacute;p trợ gi&aacute; v&agrave; mối đe dọa về biến đổi kh&iacute; hậu, ch&iacute;nh phủ kh&ocirc;ng thể &eacute;p người ti&ecirc;u d&ugrave;ng từ bỏ chiếc xe gia đ&igrave;nh dẫn động bốn b&aacute;nh rất được ưa th&iacute;ch.&nbsp;</p>
<p class="text-align-justify">&ldquo;Nếu bắt mọi người đều phải l&aacute;i những chiếc xe cỡ nhỏ, th&igrave; đ&oacute; l&agrave; c&aacute;ch tiếp cận sai. Y&ecirc;u cầu họ phải chuyển sang một ph&acirc;n kh&uacute;c ho&agrave;n to&agrave;n kh&aacute;c thực sự l&agrave; c&acirc;u hỏi kh&oacute;&rdquo;, nh&agrave; s&aacute;ng lập Rivian nhận định.&nbsp;</p>
<p class="text-align-justify">Nhưng &ocirc;ng Scaringe, người tin rằng mọi phương tiện giao th&ocirc;ng vận tải n&ecirc;n chuyển sang sử dụng điện từ nguồn năng lượng bền vững, cho rằng c&oacute; một l&yacute; do lớn lao hơn cho việc đ&aacute;p ứng thị hiếu người ti&ecirc;u d&ugrave;ng. Nếu c&oacute; thể biến những chiếc xe d&ugrave;ng nhiều nhi&ecirc;n liệu h&oacute;a thạch nhất th&agrave;nh xe điện, điều đ&oacute; sẽ tạo ra lợi &iacute;ch về mặt m&ocirc;i trường lớn hơn so với việc chuyển h&oacute;a những chiếc xe cỡ nhỏ, vốn ăn &iacute;t xăng v&agrave; &iacute;t &ocirc; nhiễm hơn.&nbsp;</p>
<p class="text-align-justify">&ldquo;Loại xe tốn xăng nhất tr&ecirc;n đường lại đang l&agrave; ph&acirc;n kh&uacute;c được ưa th&iacute;ch nhất&rdquo;, &ocirc;ng Scaringe n&oacute;i.</p>
<h2 class="text-align-justify">B&aacute;n tải chạy điện sẽ l&agrave; con g&agrave; đẻ trứng v&agrave;ng</h2>
<p class="text-align-justify">Trong khi một số nh&agrave; ph&acirc;n t&iacute;ch tiếp tục coi xe điện l&agrave; xu hướng kh&ocirc;ng thể đảo ngược, c&oacute; một số dấu hiệu cho thấy doanh số sẽ kh&ocirc;ng tăng trưởng nhanh như c&aacute;c h&atilde;ng xe mong muốn. Jaguar I-Pace, chiếc SUV của thương hiệu Anh chỉ b&aacute;n được 2.594 xe v&agrave;o năm 2019. V&agrave; c&oacute; một sự thật l&agrave; ngo&agrave;i Tesla, chưa h&atilde;ng xe n&agrave;o thực sự c&oacute; một mẫu xe điện b&aacute;n chạy đột biến, ngay cả đối với những d&ograve;ng xe b&igrave;nh d&acirc;n hơn như Chevrolet Bolt.&nbsp;</p>
<p class="text-align-justify">&Ocirc;ng Karl Brauer, chịu tr&aacute;ch nhiệm xuất bản cho Cox Automotive (c&ocirc;ng ty tư vấn chuy&ecirc;n nghi&ecirc;n cứu thị trường xe hơi Bắc Mỹ), nhấn mạnh rằng c&aacute;c nh&agrave; sản xuất, bao gồm cả Tesla, vẫn chưa chứng minh được việc sản xuất xe điện sẽ l&agrave; hoạt động kinh doanh c&oacute; lợi nhuận l&acirc;u d&agrave;i.&nbsp;</p>
<p class="text-align-justify">&ldquo;Những ai n&oacute;i rằng &lsquo;Ch&uacute;ng t&ocirc;i l&agrave;m ra một chiếc xe tải ho&agrave;n to&agrave;n chạy điện v&agrave; c&oacute; lợi nhuận từ n&oacute;&rsquo; tức l&agrave; họ đ&atilde; đạt được th&agrave;nh c&ocirc;ng lớn&rdquo;, &ocirc;ng Brauer n&oacute;i.&nbsp;</p>
<p class="text-align-justify">Việc c&oacute; lợi nhuận hay kh&ocirc;ng bị phụ thuộc rất nhiều v&agrave;o gi&aacute; th&agrave;nh của tấm pin, ngay cả khi c&aacute;c nh&agrave; sản xuất đ&atilde; cố gắng cắt giảm chi ph&iacute; ở những nơi kh&aacute;c. V&igrave; vậy, theo &ocirc;ng Brauer, xe tải v&agrave; xe SUV sẽ l&agrave; lựa chọn tốt hơn về mặt t&agrave;i ch&iacute;nh.&nbsp;</p>
<p class="text-align-justify">&ldquo;Một chiếc xe tải đem lại lợi nhuận nhiều hơn l&agrave; c&aacute;c d&ograve;ng xe cỡ nhỏ, v&agrave; bạn c&oacute; thể chấp nhận chi ph&iacute; của những vi&ecirc;n pin n&agrave;y một c&aacute;ch dễ d&agrave;ng hơn nhiều trong một chiếc SUV gi&aacute; từ 50.000 đến 70.000 USD, thay v&igrave; một chiếc xe phổ th&ocirc;ng trị gi&aacute; 20.000 USD&rdquo;, &ocirc;ng Brauer nhận x&eacute;t.&nbsp;</p>
<p class="text-align-justify">Xe b&aacute;n tải v&agrave; xe SUV từ l&acirc;u đ&atilde; l&agrave; &ldquo;con g&agrave; đẻ trứng v&agrave;ng&rdquo; cho ba &ocirc;ng lớn ở Detroit, v&agrave; SUV giờ đ&acirc;y l&agrave; ph&acirc;n kh&uacute;c mang lại nhiều lợi nhuận nhất cho mọi h&atilde;ng xe lớn, bao gồm cả c&aacute;c thương hiệu hạng sang như Porsche, Bentley v&agrave; Lamborghini. Aston Martin thậm ch&iacute; đặt cược tương lai của họ v&agrave;o sự th&agrave;nh c&ocirc;ng của mẫu SUV DBX.&nbsp;</p>
<p class="text-align-justify">Mặc d&ugrave; vậy, việc chấp nhận chi ph&iacute; của những vi&ecirc;n pin lithium-ion vẫn l&agrave; một th&aacute;ch thức đối với c&aacute;c mẫu xe&nbsp;<em>b&aacute;n tải chạy&nbsp;điện</em>. Rivian cho biết mẫu b&aacute;n tải điện của họ c&oacute; t&iacute;nh kh&iacute; động học tốt nhất ph&acirc;n kh&uacute;c, nhưng vẫn cần rất nhiều pin để gi&uacute;p chiếc xe to lớn n&agrave;y di chuyển, đặc biệt l&agrave; khi kh&aacute;ch h&agrave;ng mong muốn n&oacute; sẽ đi được qu&atilde;ng đường đủ d&agrave;i sau mỗi lần sạc.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-xe-ban-tai-chevrolet-1950.jpg" alt="xe ban tai van hoa My" data-caption="Từ những phương tiện chuy&ecirc;n chở h&agrave;ng h&oacute;a, những chiếc xe b&aacute;n tải giờ đ&acirc;y đ&atilde; chiếm trọn cảm t&igrave;nh của một bộ phận lớn người d&acirc;n Mỹ. Ba mẫu xe b&aacute;n chạy nhất tại Mỹ v&agrave;o l&uacute;c n&agrave;y đều l&agrave; xe b&aacute;n tải, v&agrave; nghi&ecirc;n cứu cho thấy người mua kh&ocirc;ng chỉ đến từ c&aacute;c bang miền Trung m&agrave; c&ograve;n đến từ c&aacute;c khu vực đ&ocirc; thị lớn." data-entity-type="file" data-entity-uuid="d6901b30-08e8-4eb8-94de-25e98cca144f" /></h2>
<p class="text-center cap-style mt-2">Từ những phương tiện chuy&ecirc;n chở h&agrave;ng h&oacute;a, những chiếc xe b&aacute;n tải giờ đ&acirc;y đ&atilde; chiếm trọn cảm t&igrave;nh của một bộ phận lớn người d&acirc;n Mỹ. Ba mẫu xe b&aacute;n chạy nhất tại Mỹ v&agrave;o l&uacute;c n&agrave;y đều l&agrave; xe b&aacute;n tải, v&agrave; nghi&ecirc;n cứu cho thấy người mua kh&ocirc;ng chỉ đến từ c&aacute;c bang miền Trung m&agrave; c&ograve;n đến từ c&aacute;c khu vực đ&ocirc; thị lớn.</p>
<p class="text-align-justify">&nbsp;</p>
<p class="text-align-justify">Chiến lược kinh doanh của GM sẽ xoay quanh Ultium &ndash; loại pin mới của họ - ra đời từ thỏa thuận hợp t&aacute;c với người khổng lồ LG Chem của H&agrave;n Quốc. Ultium sẽ được sản xuất tại nh&agrave; m&aacute;y trị gi&aacute; 2,3 tỷ USD gần Lordstown, Ohio. Đ&acirc;y l&agrave; một phần trong khoản đầu tư 20 tỷ USD của GM v&agrave;o việc ph&aacute;t triển xe điện, với 20 mẫu xe dự kiến ra mắt v&agrave;o năm 2023, trong đ&oacute; c&oacute; chiếc Hummer t&aacute;i sinh, chiếc SUV Lyriq thuộc thương hiệu Cadillac v&agrave; một chiếc b&aacute;n tải Chevrolet Silverado chạy điện v&agrave;o năm 2025.&nbsp;</p>
<p class="text-align-justify">GM dự kiến doanh số b&aacute;n xe điện của h&atilde;ng sẽ l&ecirc;n tới 1 triệu chiếc v&agrave;o giữa thập kỷ tới, chiếm 12% trong số 8 triệu xe m&agrave; h&atilde;ng n&agrave;y b&aacute;n ra tr&ecirc;n to&agrave;n cầu.&nbsp;</p>
<p class="text-align-justify">Ken Morris, Ph&oacute; chủ tịch phụ tr&aacute;ch xe điện v&agrave; xe tự l&aacute;i của GM, cho rằng bất cứ mẫu xe điện n&agrave;o muốn sản xuất h&agrave;ng loạt cần phải đạt được phạm vi hoạt động 300 dặm (482 km) sau mỗi lần sạc. Để n&acirc;ng tầm hoạt động l&ecirc;n 400 dặm (643 km), GM sẽ xếp 24 tấm pin Ultium với nhau, với tổng c&ocirc;ng suất l&ecirc;n tới 200 KWh &ndash; gấp đ&ocirc;i c&ocirc;ng suất bộ pin lớn nhất của Tesla hiện tại.&nbsp;</p>
<p class="text-align-justify">Kh&ocirc;ng giống như c&aacute;c đối thủ cạnh tranh, &ocirc;ng Morris cho biết pin Ultium của GM c&oacute; thể được xếp chồng l&ecirc;n nhau thay v&igrave; xếp ngang h&agrave;ng như thiết kế chung hiện nay. Điều đ&oacute; sẽ gi&uacute;p ph&acirc;n bổ trọng t&acirc;m xe tốt hơn, cải thiện tốc độ ở những kh&uacute;c cua. Tuy nhi&ecirc;n một bộ pin như vậy c&oacute; thể nặng tới hơn 900 kg.&nbsp;</p>
<p class="text-align-justify">Đối với những d&ograve;ng xe mạnh nhất của GM, chuẩn sạc nhanh một chiều sẽ gi&uacute;p phương tiện chạy được 160 km sau mỗi 10 ph&uacute;t sạc. V&agrave; điều quan trọng nhất l&agrave;, thiết kế của pin Ultium cũng như năng lực sản xuất h&agrave;ng loạt của GM sẽ gi&uacute;p giảm gi&aacute; th&agrave;nh pin xuống dưới mốc 100 USD cho mỗi 1 KWh &ndash; thời điểm m&agrave; việc sản xuất xe điện ngang bằng xe động cơ đốt trong.&nbsp;</p>
<p class="text-align-justify">&Ocirc;ng Morris cũng cảnh b&aacute;o rằng c&aacute;c ph&eacute;p t&iacute;nh dự đo&aacute;n sẽ kh&ocirc;ng ho&agrave;n to&agrave;n ch&iacute;nh x&aacute;c. Nhưng với gi&aacute; 100 USD cho mỗi KWh, một tấm pin 200 KWh sẽ c&oacute; gi&aacute; 20.000 USD, cao hơn cả gi&aacute; của một số mẫu xe phổ th&ocirc;ng. Mặc d&ugrave; vậy, GM khẳng định những chiếc xe điện của họ sẽ c&oacute; lợi nhuận ngay từ khi được b&aacute;n ra. Mấu chốt của vấn đề l&agrave; đặt một mức gi&aacute; vừa đủ để khiến kh&aacute;ch h&agrave;ng từ bỏ xe động cơ đốt trong, nhưng kh&ocirc;ng qu&aacute; thấp để kh&ocirc;ng đạt lợi nhuận.&nbsp;</p>
<p class="text-align-justify">C&aacute;c gi&aacute;m đốc ng&agrave;nh sản xuất xe hơi thừa nhận rằng một chiếc xe&nbsp;<u>b&aacute;n tải chạy điện</u>&nbsp;nặng&nbsp;ba tấn sẽ kh&ocirc;ng bao giờ so s&aacute;nh được về hiệu suất năng lượng với một chiếc hatchback cỡ nhỏ. Tuy nhi&ecirc;n theo nh&agrave; s&aacute;ng lập Rivian RJ Scaringe, một chiếc hatchback cỡ nhỏ lại&nbsp;kh&ocirc;ng thể chở được 7 người, đi kh&aacute;m ph&aacute; địa h&igrave;nh hay k&eacute;o theo h&agrave;ng h&oacute;a.&nbsp;</p>', CAST(N'2021-03-05' AS Date), 36, 1, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_360x200/public/2021-01/vector-creator%20%281%29_0_0.png?itok=4wR2feF6', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (54, N'Giải thưởng VinFast mới đạt được từ ASEAN NCAP có ý nghĩa thế nào?', N'<h2 class="font-weight-bold news-content-sapo mb-4">Với giải thưởng &ldquo;H&atilde;ng xe mới c&oacute; cam kết cao về an to&agrave;n&rdquo; vừa được Chương tr&igrave;nh Đ&aacute;nh gi&aacute; xe mới khu vực Đ&ocirc;ng Nam &Aacute; (ASEAN NCAP) trao tặng, VinFast tiếp tục khẳng định vị thế đi đầu của h&atilde;ng xe lấy kh&aacute;ch h&agrave;ng v&agrave; sự an to&agrave;n của kh&aacute;ch h&agrave;ng l&agrave;m trung t&acirc;m.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p><strong>Định vị h&atilde;ng xe an to&agrave;n</strong></p>
<p>Ng&agrave;y 16/2 vừa qua (m&ugrave;ng 5 Tết T&acirc;n Sửu),&nbsp;<em>VinFast &ldquo;khai xu&acirc;n&rdquo; ấn tượng với một giải thưởng quốc tế lớn - &ldquo;H&atilde;ng xe mới c&oacute; cam kết cao về an to&agrave;n&rdquo; do ASEAN NCAP trao tặng trong khu&ocirc;n khổ sự kiện Grand Prix Awards lần thứ 4</em>. Giải thưởng được Chương tr&igrave;nh đ&aacute;nh gi&aacute; xe mới uy t&iacute;n h&agrave;ng đầu thế giới trao tặng cho c&aacute;c nh&agrave; sản xuất &ocirc; t&ocirc; c&oacute; sản phẩm đạt chứng nhận an to&agrave;n ASEAN NCAP từ mức 4 sao trở l&ecirc;n.</p>
<p>Trước đ&oacute;, v&agrave;o th&aacute;ng 10/2019, VinFast đ&atilde; trở th&agrave;nh hiện tượng thu h&uacute;t sự ch&uacute; &yacute; tr&ecirc;n thị trường khi vừa ra mắt đ&atilde; nhận được chứng chỉ an to&agrave;n danh gi&aacute; cho c&aacute;c sản phẩm của m&igrave;nh, với 5 sao (mức cao nhất) cho 2 d&ograve;ng Lux v&agrave; 4 sao cho Fadil. Đ&acirc;y được xem l&agrave; bảo chứng cho chất lượng ch&acirc;u &Acirc;u v&agrave; an to&agrave;n chuẩn quốc tế của những chiếc xe do ch&iacute;nh người Việt tạo ra.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://storage.googleapis.com/vinfast-data-01/VinFast%20award_VF32%20image.jpg" alt="NCap01" data-align="center" data-entity-type="file" data-entity-uuid="1eef9f7d-0ea5-4f4c-a0fa-b10905fca1af" /></h2>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>Theo chuy&ecirc;n gia &ocirc; t&ocirc; L&ecirc; Thọ Ph&uacute;, kh&ocirc;ng phải đến khi được nhận giải thưởng &ldquo;H&atilde;ng xe mới c&oacute; cam kết cao về an to&agrave;n&rdquo; của ASEAN NCAP m&agrave; ngay từ l&uacute;c vừa ra mắt, VinFast đ&atilde; được định vị l&agrave; h&atilde;ng xe an to&agrave;n.&nbsp;</p>
<p>&ldquo;C&oacute; h&atilde;ng xe x&acirc;y dựng h&igrave;nh ảnh thương hiệu l&agrave; giữ gi&aacute;, c&oacute; h&atilde;ng mạnh về c&ocirc;ng nghệ giải tr&iacute;, c&ograve;n VinFast lại chọn hướng đi ri&ecirc;ng khi đặt ưu ti&ecirc;n số 1 l&agrave; an to&agrave;n. Đ&acirc;y l&agrave; lựa chọn kh&ocirc;n ngoan bởi an to&agrave;n mới l&agrave; gi&aacute; trị cốt l&otilde;i của phương tiện giao th&ocirc;ng nhanh v&agrave; mạnh như &ocirc; t&ocirc;, đồng thời cũng l&agrave; yếu tố kh&aacute;ch h&agrave;ng ng&agrave;y c&agrave;ng quan t&acirc;m khi chất lượng sống dần cải thiện&rdquo;, &ocirc;ng L&ecirc; Thọ Ph&uacute; ph&acirc;n t&iacute;ch.&nbsp;</p>
<p>Cũng theo vị chuy&ecirc;n gia, thời gian đ&atilde; chứng minh, với VinFast, chứng nhận ASEAN NCAP kh&ocirc;ng phải l&agrave; một &ldquo;m&oacute;n trang sức&rdquo;, m&agrave; l&agrave; sự cam kết của một nh&agrave; sản xuất c&oacute; tr&aacute;ch nhiệm với kh&aacute;ch h&agrave;ng về chất lượng v&agrave; độ an to&agrave;n của mỗi chiếc xe. Cam kết đ&oacute; được h&atilde;ng xe Việt tu&acirc;n thủ tuyệt đối, từng sản phẩm đều phải đạt được ti&ecirc;u chuẩn an to&agrave;n quốc tế trước khi ch&iacute;nh thức lăn b&aacute;nh tr&ecirc;n đường.&nbsp;</p>
<p>&ldquo;Trong kinh doanh, chữ t&iacute;n qu&yacute; hơn v&agrave;ng. Giải thưởng lần n&agrave;y từ ASEAN NCAP l&agrave; minh chứng cho thấy h&atilde;ng xe Việt rất biết giữ chữ t&iacute;n, trước sau như một&rdquo;, &ocirc;ng Ph&uacute; nhận định.</p>
<p><img src="https://storage.googleapis.com/vinfast-data-01/IMG_1199.JPG" alt="Ncap02" data-entity-type="file" data-entity-uuid="c79655f3-dc83-4b66-8a55-1c29a88d4352" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>Gần 2 năm qua, c&ugrave;ng với ch&iacute;nh s&aacute;ch kinh doanh kh&aacute;c biệt &ldquo;lấy kh&aacute;ch h&agrave;ng l&agrave;m trung t&acirc;m&rdquo;, &nbsp;chất lượng v&agrave; độ an to&agrave;n vượt trội ch&iacute;nh l&agrave; đ&ograve;n bẩy đưa VinFast từ h&atilde;ng xe non trẻ l&ecirc;n vị tr&iacute; dẫn đầu c&aacute;c ph&acirc;n kh&uacute;c, đạt doanh số b&aacute;n h&agrave;ng kỷ lục - hơn 41.000 xe chỉ trong chưa đầy 2 năm. &ldquo;Luồng gi&oacute; mới&rdquo; VinFast thậm ch&iacute; c&ograve;n thay đổi tư duy của người Việt về &ocirc; t&ocirc;, đồng thời xoay trục c&aacute;ch vận h&agrave;nh của thị trường m&agrave; ở đ&oacute; quyền lợi của kh&aacute;ch h&agrave;ng được đặt l&ecirc;n tr&ecirc;n hết.&nbsp;</p>
<p><strong>Lợi thế cạnh tranh để xe Việt đi ra thế giới</strong></p>
<p>Tại thị trường Việt Nam, chứng nhận ASEAN NCAP ho&agrave;n to&agrave;n kh&ocirc;ng bắt buộc. Trước khi &ldquo;t&acirc;n binh&rdquo; VinFast gia nhập thị trường, ASEAN NCAP vẫn c&ograve;n l&agrave; kh&aacute;i niệm xa lạ, thậm ch&iacute; c&ograve;n được coi l&agrave; một &ldquo;m&oacute;n xa xỉ&rdquo; với c&aacute;c h&atilde;ng xe. C&ograve;n với kh&aacute;ch h&agrave;ng, gi&aacute; rẻ v&agrave; t&iacute;nh thanh khoản cao vẫn l&agrave; ti&ecirc;u ch&iacute; h&agrave;ng đầu khi chọn mua phương tiện gắn với sự an to&agrave;n của bản th&acirc;n.&nbsp;</p>
<p>Th&ocirc;ng thường, doanh nghiệp hoạt động ở thị trường n&agrave;o th&igrave; sản phẩm sẽ được sản xuất theo ti&ecirc;u chuẩn của thị trường đ&oacute;. Rất &iacute;t doanh nghiệp chủ động v&agrave; tự nguyện chịu tốn k&eacute;m để tạo ra c&aacute;c sản phẩm vượt chuẩn. Tuy nhi&ecirc;n, theo c&aacute;c chuy&ecirc;n gia &ocirc; t&ocirc;, với VinFast, th&ocirc;ng lệ n&agrave;y đ&atilde; bị ph&aacute; vỡ, an to&agrave;n của kh&aacute;ch h&agrave;ng dường như đ&atilde; trở th&agrave;nh ti&ecirc;u chuẩn sống c&ograve;n.</p>
<p>Kh&ocirc;ng đ&aacute;nh đổi chất lượng lấy gi&aacute; rẻ v&agrave; tự &aacute;p m&igrave;nh v&agrave;o những ti&ecirc;u chuẩn quốc tế khắt khe ch&iacute;nh l&agrave; điều thể hiện tầm nh&igrave;n xa của h&atilde;ng xe Việt. Ngay từ khi c&ograve;n đang thai ngh&eacute;n, tư duy của VinFast đ&atilde; vượt ra ngo&agrave;i bi&ecirc;n giới Việt Nam, hướng tới c&aacute;c ti&ecirc;u chuẩn an to&agrave;n cao nhất của khu vực v&agrave; thế giới.&nbsp;</p>
<p>&ldquo;<em>Với giải thưởng vừa đạt được, x&eacute;t về g&oacute;c độ c&aacute;c sản phẩm an to&agrave;n, VinFast đ&atilde; tạo được chỗ đứng trong thị trường xe Đ&ocirc;ng Nam &Aacute;</em>&rdquo;, PGS.TS. L&yacute; H&ugrave;ng Anh, gi&aacute;m khảo người Việt duy nhất trong Hội đồng kỹ thuật của ASEAN NCAP, đ&aacute;nh gi&aacute;.&nbsp;</p>
<p>Thực tế, thị trường quốc tế, nơi đ&ograve;i hỏi những điều kiện chất lượng khắt khe, mới l&agrave; mục ti&ecirc;u của VinFast. Mới đ&acirc;y, c&ugrave;ng với việc c&ocirc;ng bố tầm nh&igrave;n trở th&agrave;nh h&atilde;ng xe điện th&ocirc;ng minh được ưa chuộng to&agrave;n cầu, h&atilde;ng đ&atilde; giới thiệu 3 d&ograve;ng SUV điện th&ocirc;ng minh đầu ti&ecirc;n c&oacute; khả năng tự h&agrave;nh cấp độ 2-3, thậm ch&iacute; c&oacute; nhiều t&iacute;nh năng cấp độ 4. Trong đ&oacute; sẽ c&oacute; 2 d&ograve;ng xe được xuất khẩu sang Mỹ, Canada v&agrave; ch&acirc;u &Acirc;u.&nbsp;<em>Đ&aacute;ng ch&uacute; &yacute;, như một &ldquo;tuy&ecirc;n ng&ocirc;n&rdquo; về chất lượng, VinFast tiếp tục cam kết đạt c&aacute;c chứng nhận an to&agrave;n cao nhất của những tổ chức đ&aacute;nh gi&aacute; xe h&agrave;ng đầu thế giới như NHTSA (Bắc Mỹ), EURO NCAP (ch&acirc;u &Acirc;u), ASEAN NCAP (Đ&ocirc;ng Nam &Aacute;)... cho 3 d&ograve;ng xe n&agrave;y.</em>&nbsp;</p>
<p><img src="https://storage.googleapis.com/vinfast-data-01/VF33_frontview01.jpg" alt="VF33_11" data-entity-type="file" data-entity-uuid="925a9960-feb7-4def-8617-75e1bdb8a216" /></p>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>Theo c&aacute;c chuy&ecirc;n gia, mục ti&ecirc;u m&agrave; VinFast đặt ra l&agrave; kh&ocirc;ng dễ d&agrave;ng nhưng cũng kh&ocirc;ng hề viển v&ocirc;ng. &ldquo;Bảo chứng&rdquo; ASEAN NCAP c&ugrave;ng giải thưởng &ldquo;H&atilde;ng xe mới c&oacute; cam kết cao về an to&agrave;n&rdquo; c&oacute; thể xem l&agrave; những cột mốc &yacute; nghĩa, mang lại cho h&atilde;ng xe Việt &ldquo;tấm hộ chiếu v&agrave;ng&rdquo; để chinh phục kh&aacute;ch h&agrave;ng thế giới, đặc biệt l&agrave; Mỹ, thị trường nổi tiếng về sự khắt khe với c&aacute;c ti&ecirc;u chuẩn an to&agrave;n.</p>
<p>&ldquo;<em>Giải thưởng của ASEAN NCAP sẽ mang lại cho h&atilde;ng xe lợi thế cạnh tranh so với c&aacute;c đối thủ kh&ocirc;ng cung cấp c&aacute;c c&ocirc;ng nghệ an to&agrave;n tương tự, d&ugrave; c&oacute; c&aacute;c c&ocirc;ng nghệ an to&agrave;n thụ động tốt hơn hay sự hỗ trợ an to&agrave;n ti&ecirc;n tiến</em>&rdquo;, TS. Khairil Anwar Abu Kassim, Tổng Thư k&yacute; ki&ecirc;m Quyền Chủ tịch ASEAN NCAP, khẳng định.</p>', CAST(N'2021-03-05' AS Date), 36, 1, NULL, NULL, N'https://storage.googleapis.com/vinfast-data-01/IMG_1199.JPG', 2)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (55, N'VinFast ra mắt 2 dòng xe máy điện mới Theon, Feliz và công bố mô hình trải nghiệm mua sắm O2O', N'<h2 class="font-weight-bold news-content-sapo mb-4">Ng&agrave;y 21/01/2021, C&ocirc;ng ty TNHH Sản xuất v&agrave; Kinh doanh VinFast c&ocirc;ng bố mở b&aacute;n hai d&ograve;ng xe m&aacute;y điện mới Theon v&agrave; Feliz, khẳng định năng lực nghi&ecirc;n cứu ph&aacute;t triển c&ocirc;ng nghệ h&agrave;ng đầu tr&ecirc;n thị trường xe điện th&ocirc;ng minh. Đặc biệt, C&ocirc;ng ty cũng ch&iacute;nh thức ra mắt m&ocirc; h&igrave;nh mua sắm O2O (online to offline) nằm trong hệ sinh th&aacute;i sản phẩm - dịch vụ đa ng&agrave;nh của Vingroup, hứa hẹn mang tới những trải nghiệm mua sắm ưu việt nhất cho kh&aacute;ch h&agrave;ng.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>Trong đ&oacute;, Theon l&agrave; d&ograve;ng xe m&aacute;y điện đại diện cho tốc độ, sự s&aacute;ng tạo, ph&aacute;t triển kh&ocirc;ng ngừng của VinFast. Xe sở hữu đường n&eacute;t mạnh mẽ, đẳng cấp, thời thượng, vận h&agrave;nh vượt trội v&agrave; dẫn đầu về c&ocirc;ng nghệ th&ocirc;ng minh.</p>
<p>Theon được trang bị động cơ đặt giữa c&ugrave;ng với hệ truyền động bằng d&acirc;y x&iacute;ch c&oacute; c&ocirc;ng suất l&ecirc;n đến 7.100 W, c&oacute; thể đạt được 9.000 W tương đương với 12 m&atilde; lực v&agrave; m&ocirc;-men xoắn cực đại 22,27 Nm. Sức mạnh n&agrave;y gi&uacute;p Theon tăng tốc từ 0 đến 50km chỉ trong 6 gi&acirc;y, tốc độ tối đa 90 km/h.</p>
<p>Di chuyển ở tốc độ cao nhưng Theon đặc biệt an to&agrave;n nhờ hệ thống treo, khung gầm chịu lực chắc chắn, phuộc trước v&agrave; sau của nh&agrave; cung cấp danh tiếng Showa, phanh của Nissin. Ngo&agrave;i ra, Theon c&ograve;n được trang bị t&iacute;nh năng an to&agrave;n chỉ xuất hiện ở những d&ograve;ng xe cao cấp, đ&oacute; l&agrave; hệ thống chống b&oacute; cứng phanh ABS 2 k&ecirc;nh của Continental, hỗ trợ người l&aacute;i duy tr&igrave; được khả năng kiểm so&aacute;t tốt trong điều kiện thời tiết xấu phải phanh gấp hay di chuyển tr&ecirc;n mặt đường hiểm trở.</p>
<p>Theon sử dụng cụm 2 pin thế hệ mới chạy song song cho ph&eacute;p xe c&oacute; thể đi được qu&atilde;ng đường l&ecirc;n tới 101km trong 1 lần sạc đầy. Tuổi thọ của thế hệ pin mới cũng ưu việt khi trải qua 2.000 lần sạc vẫn c&ograve;n 70% dung lượng.&nbsp;</p>
<p>Đặc biệt, xe đạt ti&ecirc;u chuẩn chống nước v&agrave; bụi cao nhất tr&ecirc;n thị trường (IP67), cho ph&eacute;p hoạt động tốt trong điều kiện nước ngập s&acirc;u tới 1m &iacute;t nhất 30 ph&uacute;t li&ecirc;n tục.&nbsp;</p>
<p>Về thiết kế, Theon sử dụng m&agrave;n h&igrave;nh LCD m&agrave;u cho đồng hồ, thể hiện nhiều th&ocirc;ng số như tốc độ, trạng th&aacute;i pin, nhiệt độ&hellip; Hệ thống đ&egrave;n Led sử dụng c&ocirc;ng nghệ Projector tạo ra những mặt cắt &aacute;nh s&aacute;ng kh&ocirc;ng l&agrave;m l&oacute;a mắt người đối diện.</p>
<p>D&ograve;ng xe m&aacute;y điện mới được VinFast đặc biệt đầu tư c&ocirc;ng nghệ th&ocirc;ng minh. Theon được trang bị c&ocirc;ng nghệ hiện đại h&agrave;ng đầu thế giới hiện nay &ndash; PAAK (Phone As A Key), gi&uacute;p người l&aacute;i dễ d&agrave;ng khởi động/tắt m&aacute;y, mở cốp, bật v&agrave; tắt t&iacute;nh năng chống trộm từ xa th&ocirc;ng qua ứng dụng tr&ecirc;n điện thoại. Xe cũng được thiết kế ch&igrave;a kh&oacute;a th&ocirc;ng minh (smartkey) cho ph&eacute;p bật/tắt xe trong khoảng c&aacute;ch 1m, hệ thống kết nối HMI t&iacute;ch hợp ESIM c&oacute; khả năng tự động chuẩn đo&aacute;n v&agrave; cảnh b&aacute;o lỗi, tự động cập nhật phần mềm v&agrave; định vị xe (GPS) to&agrave;n cầu, quản l&yacute; mọi h&agrave;nh tr&igrave;nh...</p>
<p>C&ugrave;ng ra mắt với Theon l&agrave; Feliz với kiểu d&aacute;ng thanh lịch, gọn g&agrave;ng v&agrave; tiện dụng được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển ph&ugrave; hợp với nhu cầu di chuyển trong đ&ocirc; thị của số đ&ocirc;ng người Việt Nam.</p>
<p>Xe Feliz được trang bị động cơ c&ocirc;ng suất lớn 2.250W, tốc độ l&ecirc;n tới 60km/h v&agrave; c&oacute; khả năng đi được qu&atilde;ng đường 90km trong 1 lần sạc, cốp xe rộng r&atilde;i với thể t&iacute;ch 20 l&iacute;t. \</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://storage.googleapis.com/vinfast-data-01/Theon_SlideBanner_Tintuc.jpg" alt="Theon_Feliz" data-align="center" data-entity-type="file" data-entity-uuid="e0b1774e-dbec-4515-9d2c-f6b8e8806e43" /></h2>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>Với những ưu điểm vượt trội, gi&aacute; b&aacute;n c&ocirc;ng bố của d&ograve;ng xe Theon l&agrave; 63.900.000 đồng; kh&aacute;ch h&agrave;ng c&oacute; thể t&ugrave;y chọn mua pin với gi&aacute; 17.200.000 đồng hoặc thu&ecirc; bao pin với gi&aacute; ưu đ&atilde;i 350.000 đồng/th&aacute;ng. D&ograve;ng xe Feliz c&oacute; gi&aacute; c&ocirc;ng bố l&agrave; 24.900.000 đồng, đ&atilde; bao gồm ắc quy v&agrave; sạc.&nbsp;</p>
<p>Nh&acirc;n dịp n&agrave;y, VinFast ch&iacute;nh thức c&ocirc;ng bố m&ocirc; h&igrave;nh trải nghiệm mua sắm O2O (online to offline) nhằm đem đến c&aacute;c trải nghiệm thuận tiện, dễ d&agrave;ng v&agrave; th&uacute; vị cho kh&aacute;ch h&agrave;ng. Từ ng&agrave;y 21/1/2021, kh&aacute;ch h&agrave;ng c&oacute; thể truy cập trang thương mại điện tử của VinFast tại địa chỉ&nbsp;<a href="https://vinfastauto.com/">https://vinfastauto.com</a>&nbsp;để đăng k&yacute; l&aacute;i thử, đặt h&agrave;ng hoặc trải nghiệm trực tiếp tại c&aacute;c showroom v&agrave; đại l&yacute; ch&iacute;nh thức của VinFast.</p>
<p>&ldquo;Nhằm mục ti&ecirc;u thay đổi định nghĩa của người ti&ecirc;u d&ugrave;ng về xe m&aacute;y điện, VinFast đ&atilde; nghi&ecirc;n cứu, ph&aacute;t triển c&aacute;c d&ograve;ng xe m&aacute;y điện c&oacute; hiệu suất vận h&agrave;nh tương đương xe xăng v&agrave; chi ph&iacute; vận h&agrave;nh rẻ hơn. Ch&uacute;ng t&ocirc;i cũng rất ch&uacute; trọng đến kh&acirc;u thiết kế để cho ra đời c&aacute;c sản phẩm đẹp, an to&agrave;n, tiện dụng v&agrave; đẳng cấp. Kh&ocirc;ng chỉ thế, c&aacute;c d&ograve;ng xe m&aacute;y điện của VinFast được ứng dụng c&ocirc;ng nghệ cao đem đến c&aacute;c t&iacute;nh năng th&ocirc;ng minh v&agrave; trải nghiệm vượt trội cho kh&aacute;ch h&agrave;ng. VinFast sẽ tiếp tục s&aacute;ng tạo kh&ocirc;ng ngừng để gia tăng gi&aacute; trị cho kh&aacute;ch h&agrave;ng, th&uacute;c đẩy chuyển đổi th&oacute;i quen sử dụng phương tiện bảo vệ m&ocirc;i trường v&igrave; một tương lai xanh cho c&aacute;c thế hệ tương lai&rdquo;, b&agrave; Th&aacute;i Thanh Hải &ndash; Tổng gi&aacute;m đốc VinFast chia sẻ.</p>
<p>Như vậy, chỉ trong hơn 2 năm, VinFast đ&atilde; ra mắt thị trường 6 mẫu xe m&aacute;y điện gồm: Klara, KlaraS, Ludo, Impes, Feliz v&agrave; Theon, trong đ&oacute; c&oacute; 2 mẫu xe m&aacute;y phi&ecirc;n bản giới hạn được thiết kế ri&ecirc;ng kết hợp với Sơn T&ugrave;ng MTP d&agrave;nh cho giới trẻ. Đến thời điểm n&agrave;y, VinFast đang sở hữu hệ thống gồm 120 showroom, đại l&yacute; v&agrave; 85 xưởng dịch vụ. Dự kiến năm 2021, c&ocirc;ng ty sẽ mở th&ecirc;m 200 - 400 cửa h&agrave;ng v&agrave; hơn 2.000 trạm sạc tr&ecirc;n to&agrave;n quốc nhằm đảm bảo sự tiện lợi cho kh&aacute;ch h&agrave;ng.</p>
<p><strong>TH&Ocirc;NG TIN ƯU Đ&Atilde;I:</strong></p>
<p>Nh&acirc;n dịp ra mắt hai sản phẩm mới v&agrave; m&ocirc; h&igrave;nh trải nghiệm mua sắm O2O, VinFast &aacute;p dụng ch&iacute;nh s&aacute;ch ưu đ&atilde;i đặc biệt hấp dẫn. Tất cả c&aacute;c kh&aacute;ch h&agrave;ng đặt xe trước trong thời gian từ 21/1 &ndash; 31/1/2021 sẽ được ưu đ&atilde;i tối đa l&ecirc;n tới 3 triệu đồng khi đăng k&yacute; xe Feliz v&agrave; tới 8,1 triệu đồng với d&ograve;ng xe Theon.</p>', CAST(N'2021-03-05' AS Date), 36, 1, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_200x200/public/2021-01/xe%20may%20dien%20vinfast.jpg?itok=YzDoiHah', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (56, N'gVDAS khởi xướng cuộc thi thiết kế showroom VinFast toàn cầu với tổng giải thưởng hơn 60,000 USD', N'<h2 class="font-weight-bold news-content-sapo mb-4">Ng&agrave;y 25/01/2021, Hiệp hội Thiết kế Th&agrave;nh phố Hồ Ch&iacute; Minh (VDAS) ch&iacute;nh thức c&ocirc;ng bố tổ chức cuộc thi thiết kế showroom VinFast to&agrave;n cầu mang t&ecirc;n "VinFast Global Showroom Design Competition 2021" (VFDC 2021) với mục ti&ecirc;u t&igrave;m kiếm &yacute; tưởng thiết kế showroom VinFast xuất sắc nhất v&agrave; sẽ được triển khai tại c&aacute;c thị trường quốc tế của thương hiệu xe th&ocirc;ng minh đến từ Việt Nam. VFDC 2021 hứa hẹn mang đến cho c&aacute;c nh&agrave; thiết kế cơ hội khẳng định t&agrave;i năng, được sự ghi nhận của c&aacute;c tổ chức kiến tr&uacute;c quốc tế uy t&iacute;n, đồng thời nhận được c&aacute;c giải thưởng c&oacute; tổng gi&aacute; trị hơn 60.000 USD.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>Với sứ mệnh ti&ecirc;n phong, kết nối cộng đồng c&aacute;c nh&agrave; thiết kế, c&aacute;c doanh nghiệp c&oacute; t&acirc;m huyết, c&oacute; tầm nh&igrave;n v&agrave; c&oacute; tr&igrave;nh độ sẵn s&agrave;ng g&oacute;p phần n&acirc;ng cao nền c&ocirc;ng nghiệp thiết kế, th&uacute;c đẩy sự ph&aacute;t triển chung của x&atilde; hội v&agrave; n&acirc;ng tầm vị thế quốc gia tr&ecirc;n trường quốc tế, VDAS đ&atilde; tổ chức cuộc thi VFDC 2021 lấy cảm hứng từ VinFast - thương hiệu &ocirc; t&ocirc; duy nhất của Việt Nam bởi đ&acirc;y l&agrave; thương hiệu đ&atilde; truyền cảm hứng mạnh mẽ đến h&agrave;ng triệu người tr&ecirc;n to&agrave;n cầu về h&igrave;nh ảnh một Việt Nam hiện đại, năng động, s&aacute;ng tạo, tr&iacute; tuệ v&agrave; th&ocirc;ng minh.&nbsp;</p>
<p>VinFast l&agrave; c&ocirc;ng ty con của Tập đo&agrave;n Vingroup - một trong những tập đo&agrave;n h&agrave;ng đầu Ch&acirc;u &Aacute;, hiện đang l&agrave; thương hiệu xe dẫn đầu tại tất cả c&aacute;c ph&acirc;n kh&uacute;c tại thị trường quốc nội với c&aacute;c mẫu xe chủ lực bao gồm VinFast Lux SA2.0, VinFast Lux A2.0 v&agrave; VinFast Fadil. Đặc biệt, VinFast đ&atilde; nghi&ecirc;n cứu v&agrave; ph&aacute;t triển th&agrave;nh c&ocirc;ng 3 d&ograve;ng &ocirc; t&ocirc; điện tự l&aacute;i th&ocirc;ng minh cấp độ 3 - 4 với 30 t&iacute;nh năng th&ocirc;ng minh, khẳng định tầm nh&igrave;n trở th&agrave;nh h&atilde;ng xe điện th&ocirc;ng minh to&agrave;n cầu. Sự kiện đ&atilde; thu h&uacute;t sự quan t&acirc;m lớn của truyền th&ocirc;ng thế giới.</p>
<p>Cuộc thi VFDC 2021 được VDAS tổ chức nhằm lựa chọn, hiện thực ho&aacute; &yacute; tưởng thiết kế showroom xuất sắc hội tụ được tầm nh&igrave;n, gi&aacute; trị cốt l&otilde;i của VinFast, đồng thời mang đậm gi&aacute; trị, bản sắc văn ho&aacute; của c&aacute;c thị trường m&agrave; h&atilde;ng xe n&agrave;y sẽ hiện diện tr&ecirc;n thế giới. Sự kiện đ&aacute;nh dấu bước tiến mạnh mẽ cho chiến lược tiến ra to&agrave;n cầu tại c&aacute;c thị trường Mỹ, Ch&acirc;u &nbsp;u, Ch&acirc;u &Uacute;c v&agrave; Ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh Dương của thương hiệu VinFast.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://storage.googleapis.com/vinfast-data-01/[Final]%2022.01_VinFast%20Competition%20KV_ngang%20.jpg.png" alt="KV" data-align="center" data-caption="Cuộc thi thiết kế showroom VinFast to&agrave;n cầu sẽ nhận b&agrave;i thi đến ng&agrave;y 25/2/2021" data-entity-type="file" data-entity-uuid="f8bb4e8d-57c2-400f-9b88-8159ded7a6a9" /></h2>
<p class="text-center cap-style mt-2">Cuộc thi thiết kế showroom VinFast to&agrave;n cầu sẽ nhận b&agrave;i thi đến ng&agrave;y 25/2/2021</p>
<p>Để tổ chức cuộc thi thiết kế tr&ecirc;n phạm vi to&agrave;n cầu dưới sự bảo trợ của VinFast, VDAS hợp t&aacute;c đồng tổ chức với c&aacute;c tổ chức Thiết kế Nội thất v&agrave; Kiến tr&uacute;c uy t&iacute;n to&agrave;n cầu như Trung t&acirc;m thiết kế Ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh Dương - Asia Pacific Design Center (APDC), chuy&ecirc;n trang về Kiến tr&uacute;c - Thiết kế Competitions Archi. B&ecirc;n cạnh đ&oacute;, VFDC 2021 cũng nhận được sự đồng h&agrave;nh của c&aacute;c đối t&aacute;c truyền th&ocirc;ng uy t&iacute;n trong lĩnh vực kiến tr&uacute;c thiết kế như ArchDaily, Young Architects Competitions v&agrave; h&atilde;ng truyền th&ocirc;ng PR Newswire.</p>
<p>VFDC 2021 quy tụ hội đồng ban gi&aacute;m khảo danh gi&aacute; gồm c&aacute;c gi&aacute;o sư, chuy&ecirc;n gia thiết kế đẳng cấp h&agrave;ng đầu quốc tế, l&agrave; đại diện cấp cao, chủ tịch c&aacute;c hiệp hội, tổ chức s&aacute;ng tạo uy t&iacute;n tr&ecirc;n thế giới; v&agrave; Ban gi&aacute;m khảo danh dự gồm c&aacute;c l&atilde;nh đạo cao cấp của VinFast to&agrave;n cầu. Đ&acirc;y l&agrave; những người sẽ đưa ra những đ&aacute;nh gi&aacute; c&ocirc;ng bằng, kh&aacute;ch quan v&agrave; ch&iacute;nh x&aacute;c về t&agrave;i năng, thẩm mỹ, sức s&aacute;ng tạo v&agrave; gi&aacute; trị ứng dụng của c&aacute;c t&aacute;c phẩm tham gia cuộc thi năm nay.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://storage.googleapis.com/vinfast-data-01/21.01_JuryBoard_Viet.jpg" alt="Board" data-align="center" data-caption="Hội đồng Ban gi&aacute;m khảo danh gi&aacute; của cuộc thi" data-entity-type="file" data-entity-uuid="99ab1be4-c670-452f-999f-7da551a92129" /></h2>
<p class="text-center cap-style mt-2">Hội đồng Ban gi&aacute;m khảo danh gi&aacute; của cuộc thi</p>
<p>Cuộc thi thiết kế showroom VinFast ch&agrave;o đ&oacute;n tất cả c&aacute;c kiến tr&uacute;c sư, c&aacute;c nh&agrave; thiết kế, c&aacute;c tổ chức v&agrave; c&ocirc;ng ty kiến tr&uacute;c - thiết kế từ khắp nơi tr&ecirc;n thế giới. Người dự thi thi sẽ nộp b&agrave;i thi từ nay đến hết ng&agrave;y 25/2/2021. B&agrave;i thi gồm thiết kế 3D thể hiện r&otilde; n&eacute;t c&aacute;c đặc điểm kiến tr&uacute;c của showroom VinFast ở 3 hạng mục ch&iacute;nh: kh&ocirc;ng gian kiến tr&uacute;c ngoại thất c&oacute; diện t&iacute;ch tối thiểu 30m x 20m, kh&ocirc;ng gian kiến tr&uacute;c khu trưng b&agrave;y xe ti&ecirc;u chuẩn c&oacute; diện t&iacute;ch tối thiểu 10m x 7m v&agrave; kh&ocirc;ng gian kiến tr&uacute;c khu trưng b&agrave;y s&aacute;ng tạo theo phong c&aacute;ch sắp đặt (Installation Art) với diện t&iacute;ch tối thiểu 10m x 7m. Đặc biệt, khu trưng b&agrave;y s&aacute;ng tạo l&agrave; nơi c&aacute;c nh&agrave; thiết kế thoả sức thể hiện t&agrave;i năng, sự s&aacute;ng tạo nhằm t&ocirc;n vinh sự đa dạng văn ho&aacute; v&agrave; phong c&aacute;ch thiết kế của người dự thi.</p>
<p>C&aacute;c &yacute; tưởng thiết kế độc đ&aacute;o ấn tượng nhất sẽ được tr&igrave;nh chiếu tại quảng trường Times Square, New York (Mỹ) v&agrave;o th&aacute;ng 4/2021. Đặc biệt, VFDC 2021 d&agrave;nh tới hơn 60,000 USD d&agrave;nh tặng cho những nh&agrave; thiết kế xuất sắc nhất với cơ cấu giải thưởng bao gồm: 01 Giải Nhất trị gi&aacute; 40.000 USD; 03 Giải Nh&igrave; mỗi giải c&oacute; trị gi&aacute; 3.000 USD, 05 Giải Ba mỗi giải c&oacute; trị gi&aacute; 1.000 USD v&agrave; 41 Giải khuyến kh&iacute;ch mỗi giải c&oacute; trị gi&aacute; 200 USD. Ngo&agrave;i ra, những người thắng cuộc cũng sẽ nhận được chứng nhận từ c&aacute;c tổ chức kiến tr&uacute;c - thiết kế quốc tế uy t&iacute;n đồng tổ chức giải thưởng v&agrave; được ưu ti&ecirc;n trao cơ hội hợp t&aacute;c với VinFast về c&aacute;c dự &aacute;n thiết kế trong tương lai.</p>
<p>Diễn ra ngay thời điểm khởi đầu năm mới, VFDC 2021 được đ&aacute;nh gi&aacute; l&agrave; một trong những cuộc thi kiến tr&uacute;c hấp dẫn nhất hiện nay cả về quy m&ocirc;, mức độ uy t&iacute;n v&agrave; gi&aacute; trị của giải thưởng d&agrave;nh cho c&aacute;c nh&agrave; thiết kế tr&ecirc;n to&agrave;n thế giới. Với h&agrave;nh tr&igrave;nh đầy cảm hứng, VinFast đ&atilde; chứng minh tầm nh&igrave;n to&agrave;n cầu khi đề cao sự đa dạng về văn ho&aacute; v&agrave; phong c&aacute;ch thiết kế của c&aacute;c nh&agrave; thiết kế từ khắp thế giới, VFDC 2021 đ&atilde; thực sự vượt tr&ecirc;n khu&ocirc;n khổ một cuộc thi thiết kế showroom đơn thuần để trở th&agrave;nh dấu mốc quan trọng chiến lược của VinFast tr&ecirc;n h&agrave;nh tr&igrave;nh chinh phục kh&aacute;ch h&agrave;ng to&agrave;n cầu.&nbsp;</p>
<p><strong>Để biết th&ecirc;m th&ocirc;ng tin chi tiết v&agrave; thủ tục đăng k&yacute;, xin vui l&ograve;ng truy cập website:&nbsp;</strong>https://vinfastcompetition.com</p>
<p><strong>Về Đơn vị tổ chức cuộc thi - VDAS</strong><br />Hiệp Hội Thiết Kế TP.HCM (VDAS) l&agrave; một trong những tổ chức uy t&iacute;n nhất Việt Nam li&ecirc;n quan lĩnh vực thiết kế s&aacute;ng tạo v&agrave; kiến tr&uacute;c.</p>
<p><strong>Để biết th&ecirc;m th&ocirc;ng tin, vui l&ograve;ng li&ecirc;n hệ:</strong><br />Ban Truyền Th&ocirc;ng cuộc thi thiết kế showroom showroom VinFast to&agrave;n cầu.<br />Email:&nbsp;info@vinfastcompetition.com&nbsp;</p>', CAST(N'2021-03-05' AS Date), 36, 1, NULL, NULL, N'https://storage.googleapis.com/vinfast-data-01/[Final]%2022.01_VinFast%20Competition%20KV_ngang%20.jpg.png', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (57, N'Cựu phó thủ tướng Đức trải nghiệm xe VinFast', N'<h2 style="font-weight: 600 !important;">Trong khu&ocirc;n khổ sự kiện kỷ niệm 45 quan hệ ngoại giao Đức &ndash; Việt Nam được tổ chức tại Ng&ocirc;i nh&agrave; Đức (Deutsches Haus) ở 33 L&ecirc; Duẩn, Quận 1 h&ocirc;m 2/12/2020 cựu ph&oacute; thủ tướng Đức Philip Roesler đ&atilde; gh&eacute; thăm kh&ocirc;ng gian trưng b&agrave;y v&agrave; trải nghiệm c&aacute;c mẫu xe của VinFast.</h2>
<p style="font-weight: 500;">Sự kiện Kỉ niệm 45 năm quan hệ ngoại giao Đức &ndash; Việt Nam được tổ chức tại Ng&ocirc;i nh&agrave; Đức, 33 L&ecirc; Duẩn, Quận 1, TP. Hồ Ch&iacute; Minh. H&atilde;ng xe Việt VinFast cũng xuất hiện v&agrave; thu h&uacute;t đ&ocirc;ng đảo sự ch&uacute; &yacute; của kh&aacute;ch tham quan.</p>
<p style="font-weight: 500;">Một kh&aacute;ch mời rất đặc biệt l&agrave; Cựu Ph&oacute; Thủ tướng Đức gốc Việt &ndash; &Ocirc;ng&nbsp;<strong style="font-weight: 800;">Philipp Rosler</strong>. &Ocirc;ng trở th&agrave;nh Bộ trưởng Y tế Đức v&agrave;o th&aacute;ng 10/2009, trong nội c&aacute;c của Thủ tướng Angela Merkel. Khi đ&oacute; &ocirc;ng Rosler l&agrave; bộ trưởng li&ecirc;n bang trẻ nhất đất nước.</p>
<p style="font-weight: 500;">Cựu ph&oacute; thủ tướng Đức Philipp Rosler v&agrave; Ph&oacute; chủ tịch Tập đo&agrave;n Vingroup V&otilde; Quang Huệ tại sự kiện.</p>
<p style="font-weight: 500;">&nbsp;</p>
<p style="font-weight: 500;">Đến năm 2001, &ocirc;ng được bầu chủ tịch đảng D&acirc;n chủ Tự do FDP v&agrave; trở th&agrave;nh ph&oacute; thủ tướng Đức. Từ đầu năm 2019, &ocirc;ng trở về Việt Nam để l&agrave;m việc trong hội đồng cố vấn của quỹ đầu tư VinaCapital.</p>
<p style="font-weight: 500;">Tại sự kiện h&ocirc;m 2/12, &ocirc;ng&nbsp;<em>Rosler</em>&nbsp;tỏ ra th&iacute;ch th&uacute; v&agrave; h&agrave;o hứng khi tận mắt chứng kiến những sản phẩm &ocirc;t&ocirc;, xe m&aacute;y của thương hiệu VinFast. &Ocirc;ng cũng tr&ograve; chuyện với Ph&oacute; tổng gi&aacute;m đốc Tập đo&agrave;n Vingroup V&otilde; Quang Huệ, một người cũng c&oacute; hơn hai thập kỷ sống v&agrave; l&agrave;m việc ở Đức.</p>
<p style="font-weight: 500;">VinFast ra đời xuất ph&aacute;t từ mong muốn x&acirc;y dựng một thương hiệu &ocirc; t&ocirc; Việt Nam mang đẳng cấp thế giới, đồng thời g&oacute;p phần th&uacute;c đẩy ng&agrave;nh c&ocirc;ng nghiệp sản xuất &ocirc; t&ocirc; trở th&agrave;nh ng&agrave;nh mũi nhọn h&agrave;ng đầu Việt Nam. Sau gần hai năm, VinFast đ&atilde; ho&agrave;n th&agrave;nh việc x&acirc;y dựng v&agrave; lắp đặt c&aacute;c nh&agrave; m&aacute;y, đồng thời ra mắt v&agrave; đưa v&agrave;o sử dụng những chiếc xe đầu ti&ecirc;n. Với c&ocirc;ng suất thiết kế 250.000 xe mỗi năm trong giai đoạn 1 v&agrave; 500.000 xe mỗi năm trong giai đoạn 2, VinFast đặt mục ti&ecirc;u trở th&agrave;nh nh&agrave; sản xuất &ocirc; t&ocirc; h&agrave;ng đầu tại khu vực Đ&ocirc;ng Nam &Aacute;.</p>
<p style="font-weight: 500;">C&ocirc;ng ty n&agrave;y cũng đang trong qu&aacute; tr&igrave;nh nghi&ecirc;n cứu v&agrave; ph&aacute;t triển c&aacute;c phương tiện sử dụng năng lượng sạch, như &ocirc; t&ocirc; điện v&agrave; xe m&aacute;y điện th&ocirc;ng minh, với mục đ&iacute;ch giảm đ&aacute;ng kể lượng kh&iacute; thải v&agrave; tiếng ồn cho m&ocirc;i trường.</p>
<p style="font-weight: 500;">&Ocirc;ng Rosler trải nghiệm mẫu xe giới hạn President của h&atilde;ng VinFast.</p>
<p style="font-weight: 500;">Kh&ocirc;ng chỉ vậy, VinFast đang tiến h&agrave;nh hợp t&aacute;c với Đức tr&ecirc;n nhiều phương diện. Ngay từ những bước đi đầu ti&ecirc;n, VinFast đ&atilde; hợp t&aacute;c với một số đối t&aacute;c từ Đức như SCHULER, FFT, EBZ, D&uuml;rr, GROB, MAG, AVL hay Eisenmann trong kh&acirc;u thiết kế v&agrave; lắp đặt c&aacute;c nh&agrave; m&aacute;y. Động cơ xe &ndash; bộ phận được mệnh danh l&agrave; tr&aacute;i tim của những chiếc xe VinFast, đ&atilde; thể hiện tinh thần Đức khi được x&acirc;y dựng dựa tr&ecirc;n c&ocirc;ng nghệ hiện đại của BMW.</p>
<p style="font-weight: 500;">Hiện tại, VinFast đang hợp t&aacute;c chặt chẽ với Ph&ograve;ng C&ocirc;ng nghiệp v&agrave; Thương mại Đức (AHK) trong việc đ&agrave;o tạo nguồn nh&acirc;n lực chất lượng cao th&ocirc;ng qua chương tr&igrave;nh đ&agrave;o tạo kết hợp l&yacute; thuyết với thực h&agrave;nh. Trong tương lai, một trung t&acirc;m đ&agrave;o tạo, ph&aacute;t triển trong hợp t&aacute;c với AHK sẽ trở th&agrave;nh nguồn cung cấp nh&acirc;n lực lớn nhất cho sản xuất trong kỷ nguy&ecirc;n c&ocirc;ng nghệ 4.0 ở khu vực Đ&ocirc;ng Nam &Aacute;.</p>', CAST(N'2021-03-05' AS Date), 36, 2, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_360x200/public/2021-01/philip-roesler-lai-thu-xe-vinfast.jpg?itok=bH_yZyH8', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (58, N'Blockchain sẽ thay đổi ngành giao thông vận tải', N'<h2 class="font-weight-bold news-content-sapo mb-4">Việc ứng dụng c&ocirc;ng nghệ blockchain v&agrave; chuỗi cung ứng &ndash; sản xuất xe hơi v&agrave; việc vận h&agrave;nh của c&aacute;c phương tiện trong một nền kinh tế chia sẻ, được cho l&agrave; sẽ l&agrave;m gi&aacute;n đoạn ng&agrave;nh c&ocirc;ng nghiệp cũng như hoạt động di chuyển trong đ&ocirc; thị.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>&ldquo;Gi&aacute;n đoạn&rdquo; l&agrave; một từ thường g&acirc;y sợ h&atilde;i. Nhưng tr&ecirc;n thực tế, ch&uacute;ng ta n&ecirc;n c&oacute; tầm nh&igrave;n rộng hơn v&agrave; coi sự gi&aacute;n đoạn l&agrave; một phần của qu&aacute; tr&igrave;nh chuyển đổi lớn hơn &ndash; sự th&uacute;c đẩy li&ecirc;n tục để ph&aacute;t triển v&agrave; th&iacute;ch ứng trong bối cảnh giao th&ocirc;ng v&agrave; năng lượng đang thay đổi.&nbsp;</p>
<p>Sự chuyển đổi sẽ diễn ra với nhiều gi&aacute;n đoạn nhỏ, v&agrave; kh&ocirc;ng phải tất cả đều đột ngột v&agrave; r&otilde; r&agrave;ng như sự xuất hiện của Uber l&agrave;m thay đổi m&ocirc; h&igrave;nh vận tải h&agrave;nh kh&aacute;ch truyền thống, hay Facebook trở th&agrave;nh người thống trị thế giới truyền th&ocirc;ng.&nbsp;</p>
<p>C&ocirc;ng nghệ blockchain chỉ l&agrave; một điểm nhấn của qu&aacute; tr&igrave;nh chuyển đổi c&aacute;c dịch vụ vận tải đang c&oacute; nhiều t&aacute;c nh&acirc;n ảnh hưởng, từ l&agrave;n s&oacute;ng điện kh&iacute; h&oacute;a, sự gia tăng của c&aacute;c dịch vụ hướng tới kh&aacute;ch h&agrave;ng v&agrave; kết nối phổ biến giữa c&aacute;c phương tiện, thiết bị v&agrave; hệ thống lưới điện.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-blockchain-cong-nghe-xe-hoi.png" alt="cong nghe blockchain trong nganh cong nghiep xe hoi" data-caption="Blockchain sẽ mang đến thay đổi lớn trong ng&agrave;nh sản xuất &ocirc; t&ocirc; cũng như hoạt động giao th&ocirc;ng vận tải." data-entity-type="file" data-entity-uuid="c3b31fdb-2fb8-492a-a525-3b481ba36f90" /></h2>
<p class="text-center cap-style mt-2">Blockchain sẽ mang đến thay đổi lớn trong ng&agrave;nh sản xuất &ocirc; t&ocirc; cũng như hoạt động giao th&ocirc;ng vận tải.</p>
<p>&nbsp;</p>
<p>Ban đầu được ph&aacute;t triển để hỗ trợ tiền điện tử v&agrave; c&aacute;c dịch vụ t&agrave;i ch&iacute;nh, blockchain giờ đ&atilde; được vận dụng trong nhiều ng&agrave;nh c&ocirc;ng nghiệp để x&aacute;c thực dữ liệu, x&acirc;y dựng quy tr&igrave;nh kinh doanh tự động v&agrave; c&aacute;c m&ocirc; h&igrave;nh kinh doanh mới.&nbsp;</p>
<p>Sự quan t&acirc;m d&agrave;nh cho blockchain cũng đ&atilde; tăng trong lĩnh vực giao th&ocirc;ng vận tải. Những g&atilde; khổng lồ trong ng&agrave;nh như Daimler, Jaguar Land Rover, BMW, Honda, Ford v&agrave; nhiều c&ocirc;ng ty khởi nghiệp kh&aacute;c đ&atilde; hợp t&aacute;c nhiều dự &aacute;n hoặc th&iacute; điểm &aacute;p dụng c&ocirc;ng nghệ blockchain.&nbsp;</p>
<p>Từ việc x&aacute;c minh lịch sử phương tiện, theo d&otilde;i chuỗi cung ứng tốt hơn, tự động h&oacute;a c&aacute;c giao dịch, cho ph&eacute;p chia sẻ xe an to&agrave;n hoặc khiến chi ph&iacute; bảo hiểm c&ocirc;ng bằng hơn, c&aacute;c h&atilde;ng vận tải đ&atilde; t&iacute;ch hợp c&ocirc;ng nghệ n&agrave;y v&agrave; ra mắt c&aacute;c ứng dụng th&uacute; vị.&nbsp;</p>
<h2>Tiềm năng của blockchain&nbsp;</h2>
<p>Về cơ bản, blockchain l&agrave; c&ocirc;ng nghệ gi&uacute;p tạo ra một bản thống k&ecirc; dữ liệu duy nhất, đ&aacute;ng tin cậy cho một hệ thống hay mạng lưới c&oacute; nhiều thiết bị. Điều quan trọng nhất l&agrave;, c&aacute;c mạng blockchain kh&ocirc;ng được sở hữu hay vận h&agrave;nh bởi bất cứ ai ri&ecirc;ng rẽ, m&agrave; l&agrave; của to&agrave;n bộ mạng lưới.&nbsp;</p>
<p>Chủ sở hữu xe, nh&agrave; cung cấp dịch vụ v&agrave; nh&agrave; sản xuất xe hơi l&agrave; ba chủ thể trọng t&acirc;m trong hệ sinh th&aacute;i c&aacute;c dịch vụ vận tải. C&aacute;c ứng dụng của blockchain t&aacute;c động trực tiếp đến cả ba chủ thể đ&oacute;.&nbsp;</p>
<p>Nếu một phương tiện l&agrave; nền tảng phần cứng cho c&aacute;c dịch vụ vận tải, th&igrave; c&ocirc;ng nghệ blockchain l&agrave; một ứng vi&ecirc;n phần mềm để khiến c&aacute;c dịch vụ n&agrave;y trở n&ecirc;n khả thi. Blockchain sẽ đảm bảo t&iacute;nh ch&iacute;nh x&aacute;c của dữ liệu cơ bản, gi&uacute;p thực hiện c&aacute;c giao dịch v&agrave; thanh to&aacute;n tự động một c&aacute;ch an to&agrave;n, &iacute;t sai s&oacute;t.&nbsp;</p>
<p>Quy tắc cho mọi giao dịch giữa c&aacute;c b&ecirc;n tham gia dựa tr&ecirc;n code thay v&igrave; một hợp đồng bằng văn bản, v&agrave; những code n&agrave;y kh&ocirc;ng thể thay đổi nếu kh&ocirc;ng c&oacute; sự đồng &yacute; bằng kỹ thuật số của đa số c&aacute;c b&ecirc;n tham gia. Hơn nữa, mọi giao dịch giữa c&aacute;c b&ecirc;n d&ugrave; l&agrave; về t&agrave;i ch&iacute;nh hay c&aacute;c mặt kh&aacute;c, đều được ghi lại bằng một sổ c&aacute;i được li&ecirc;n kết m&atilde; h&oacute;a, chống giả mạo, được chia sẻ v&agrave; sao ch&eacute;p tr&ecirc;n nhiều thiết bị kh&aacute;c nhau.&nbsp;</p>
<p>Li&ecirc;n kết m&atilde; h&oacute;a n&agrave;y sẽ đảm bảo bất cứ thay đổi n&agrave;o với sổ c&aacute;i được thực hiện tr&ecirc;n một thiết bị đều trở n&ecirc;n r&otilde; r&agrave;ng so với phần c&ograve;n lại của mạng lưới. &nbsp;</p>
<p>H&atilde;y tưởng tượng bạn muốn mua một chiếc xe hơi cũ nhưng kh&ocirc;ng chắc liệu người b&aacute;n c&oacute; trung thực về lịch sử đ&acirc;m đụng, ngập nước hay số km đ&atilde; đi của chiếc xe. C&ocirc;ng nghệ blockchain ch&iacute;nh l&agrave; c&acirc;u trả lời cho những c&acirc;u hỏi như vậy.&nbsp;</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/blockchain-thay-doi-nganh-xe-hoi.png" alt="blockchain thay doi nganh xe hoi" data-caption="C&ocirc;ng nghệ blockchain sẽ gi&uacute;p việc thanh to&aacute;n c&aacute;c loại ph&iacute; giao th&ocirc;ng trở n&ecirc;n hiệu quả v&agrave; an to&agrave;n hơn." data-entity-type="file" data-entity-uuid="8d2d51d0-7663-4510-85dc-eab5c3b136d6" /></h2>
<p class="text-center cap-style mt-2">C&ocirc;ng nghệ blockchain sẽ gi&uacute;p việc thanh to&aacute;n c&aacute;c loại ph&iacute; giao th&ocirc;ng trở n&ecirc;n hiệu quả v&agrave; an to&agrave;n hơn.</p>
<h2>&nbsp;</h2>
<h2>Blockchain gi&uacute;p&nbsp;giao dịch v&agrave; thanh to&aacute;n an to&agrave;n&nbsp;hơn&nbsp;</h2>
<p>Phương tiện giao th&ocirc;ng c&aacute; nh&acirc;n đ&atilde; trải qua sự thay đổi lớn trong v&agrave;i thập kỷ qua. N&oacute;i ngắn gọn, xe hơi đang c&oacute; dung t&iacute;ch buồng đốt nhỏ lại v&agrave; năng lực t&iacute;nh to&aacute;n to hơn. Trung b&igrave;nh một chiếc xe hơi v&agrave;o năm 2018 chứa khoảng 100 đến 200 triệu d&ograve;ng code trong phần mềm. Nhiều phương tiện c&oacute; kết nối mạng di động v&agrave; c&oacute; khả năng vận h&agrave;nh c&aacute;c ứng dụng của b&ecirc;n thứ ba, bao gồm trợ l&yacute; c&aacute; nh&acirc;n, điều hướng v&agrave; dịch vụ th&ocirc;ng tin giải tr&iacute;. Những khả năng &nbsp;n&agrave;y cho ph&eacute;p nh&agrave; cung cấp dịch vụ duy tr&igrave; kết nối với kh&aacute;ch h&agrave;ng ngay cả sau khi chiếc xe rời khỏi showroom.&nbsp;</p>
<p>Đối với c&aacute;c nh&agrave; cung cấp dịch vụ vận tải, blockchain sẽ l&agrave;m thay đổi thế giới của họ hơn nữa. C&aacute;c khoản thanh to&aacute;n vi m&ocirc; (gi&aacute; trị nhỏ) dựa tr&ecirc;n blockchain sẽ cho ph&eacute;p c&aacute;c nh&agrave; cung cấp dịch vụ tạo ra c&aacute;c chương tr&igrave;nh khuyến mại cũng như một m&ocirc; h&igrave;nh kinh doanh thu h&uacute;t kh&aacute;ch h&agrave;ng, v&agrave; họ ho&agrave;n to&agrave;n c&oacute; khả năng hạ gục c&aacute;c đối thủ cạnh tranh dựa v&agrave;o c&ocirc;ng nghệ truyền thống.&nbsp;</p>
<p>H&atilde;y tưởng tượng một đối thủ của Uber, sử dụng c&ocirc;ng nghệ blockchain để trả tiền cho t&agrave;i xế của họ h&agrave;ng giờ hoặc theo thời gian thực thay v&igrave; h&agrave;ng tuần như Uber đang l&agrave;m. Phần thưởng ngay lập tức sẽ thay đổi cơ bản mối quan hệ của t&agrave;i xế với nền kinh tế chia sẻ, cũng như đối với bất cứ dịch vụ n&agrave;o kh&aacute;c m&agrave; c&aacute;c c&aacute; nh&acirc;n sẽ được hưởng lợi khi tham gia. &nbsp;</p>
<p>Với ứng dụng của blockchain trong việc t&igrave;m kiếm c&aacute;c phương &aacute;n tối ưu về kinh tế, c&aacute;c ứng dụng sạc th&ocirc;ng minh v&agrave; vehicle-to-grid hay V2G &ndash; hệ thống gi&uacute;p chủ xe điện c&oacute; thể b&aacute;n lại lượng điện năng dự trữ dư thừa v&agrave;o lưới điện quốc gia trong giờ cao điểm. &nbsp;</p>
<p>V2G kh&ocirc;ng phải l&agrave; c&aacute;ch duy nhất để chủ xe tạo ra doanh thu từ phương tiện của m&igrave;nh. Share &amp; Charge, thuộc sở hữu của Enel X, hoạt động như một phi&ecirc;n bản tương tự của Airbnb d&agrave;nh cho c&aacute;c trạm sạc. Th&ocirc;ng qua nền tảng n&agrave;y, chủ sở hữu xe điện c&oacute; thể mua quyền sạc phương tiện của họ tại trạm sạc tư nh&acirc;n với mức gi&aacute; v&agrave; thời gian do chủ sở hữu đưa ra. Tại Mỹ, eMotorWerks v&agrave; c&ocirc;ng ty LO3 Energy ti&ecirc;n phong trong lĩnh vực giao dịch năng lượng đ&atilde; thử nghiệm một m&ocirc; h&igrave;nh giao dịch ngang h&agrave;ng, cho ph&eacute;p chủ sở hữu xe điện mua điện từ c&aacute;c hộ gia đ&igrave;nh.&nbsp;</p>
<p>Trong cả hai trường hợp, việc x&aacute;c định danh t&iacute;nh, giao dịch v&agrave; thanh to&aacute;n đều được thực hiện bằng c&ocirc;ng nghệ blockchain v&agrave; hợp đồng th&ocirc;ng minh.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-ung-dung-cong-nghe-blockchain-trong-nganh-san-xuat-xe-hoi_0.jpg" alt="ung dung blockchain san xuat xe hoi" data-caption="Những ứng dụng tiềm năng của blockchain trong ng&agrave;nh sản xuất xe hơi.&amp;nbsp;" data-entity-type="file" data-entity-uuid="681c9240-56b0-45dc-a530-7f33c8b361af" /></h2>
<p class="text-center cap-style mt-2">Những ứng dụng tiềm năng của blockchain trong ng&agrave;nh sản xuất xe hơi.&nbsp;</p>
<p>&nbsp;</p>
<p>Chủ sở hữu phương tiện cũng sẽ được hưởng lợi từ trải nghiệm kh&aacute;ch h&agrave;ng ng&agrave;y c&agrave;ng liền mạch. Blockchain gi&uacute;p tạo ra nền tảng cho c&aacute;c giao dịch an to&agrave;n, v&agrave; c&oacute; thể dễ d&agrave;ng kiểm to&aacute;n giữa c&aacute;c thiết bị. Trong tương lai, nhờ v&agrave;o c&ocirc;ng nghệ blockchain, c&aacute;c phương tiện c&aacute; nh&acirc;n c&oacute; thể tự thanh to&aacute;n ph&iacute; đỗ xe, ph&iacute; cầu đường m&agrave; kh&ocirc;ng cần sự tham gia của t&agrave;i xế, cũng giống như c&aacute;ch ch&uacute;ng ta sử dụng c&aacute;c ứng dụng thanh to&aacute;n điện tử hiện tại tr&ecirc;n smartphone.&nbsp;</p>
<p>Những tiến bộ n&agrave;y sẽ mang lại lợi &iacute;ch cho người l&aacute;i cũng như tạo nền tảng cho việc quản l&yacute; hiệu quả c&aacute;c đội xe tự động. C&aacute;c ứng dụng như vậy đang được ph&aacute;t triển bởi c&aacute;c c&ocirc;ng ty như Filament, Car eWallet v&agrave; Daimler.&nbsp;</p>
<h2>Cải thiện hiệu quả chuỗi cung ứng cho c&aacute;c h&atilde;ng xe&nbsp;</h2>
<p>Kh&ocirc;ng chỉ vậy, c&aacute;c nh&agrave; sản xuất thiết bị gốc (OEM) cho c&aacute;c h&atilde;ng xe cũng c&oacute; thể trải nghiệm những lợi &iacute;ch của c&ocirc;ng nghệ blockchain, v&igrave; một trong những ứng dụng ban đầu của cong nghệ n&agrave;y l&agrave; tăng t&iacute;nh hiển thị, minh bạch v&agrave; hiệu quả quản l&yacute; th&ocirc;ng tin trong chuỗi cung ứng.&nbsp;</p>
<p>Blockchain cho ph&eacute;p c&aacute;c c&ocirc;ng ty c&oacute; quyền truy cập v&agrave;o hồ sơ đầy đủ, chống giả mạo về đường đi v&agrave; lịch sử của sản phẩm hoặc vật liệu th&ocirc;ng qua mạng lưới chuỗi cung ứng. Th&ocirc;ng tin được lưu trữ trong hồ sơ n&agrave;y c&oacute; thể được chia sẻ với c&aacute;c b&ecirc;n kh&aacute;c trong mạng lưới, kh&aacute;ch h&agrave;ng hay thậm ch&iacute; với đối thủ cạnh tranh nếu cần. V&agrave;o năm 2019, Volvo th&ocirc;ng b&aacute;o rằng họ đ&atilde; sử dụng blockchain để cải thiện khả năng truy xuất nguồn gốc của cobalt &ndash; th&agrave;nh phần h&oacute;a học được sử dụng trong pin xe điện &ndash; để đảm bảo sản phẩm của họ c&oacute; nguồn gốc đảm bảo c&aacute;c ti&ecirc;u chuẩn đạo đức. Cobalt phần lớn được khai th&aacute;c ở CH D&acirc;n chủ Congo, nơi nhiều lao động phải l&agrave;m việc trong điều kiện v&ocirc; nh&acirc;n đạo.&nbsp;</p>
<p>Blockchain sẽ kh&ocirc;ng giải quyết được tất cả những th&aacute;ch thức m&agrave; c&aacute;c nh&agrave; sản xuất xe hơi đang phải đối mặt trong việc quản l&yacute; chuỗi cung ứng, v&agrave; thậm ch&iacute; n&oacute; c&oacute; thể tạo ra một số th&aacute;ch thức mới. Nhưng t&aacute;c động của c&ocirc;ng nghệ n&agrave;y vẫn ở mức đ&aacute;ng kể, khi IBM dự đo&aacute;n việc tận dụng lợi thế của blockchain sẽ l&agrave;m tăng GDP to&agrave;n cầu th&ecirc;m 5% v&agrave; khối lượng thương mại th&ecirc;m 15%.&nbsp;</p>', CAST(N'2021-03-05' AS Date), 36, 1, NULL, NULL, N'https://vinfastauto.com/sites/default/files/inline-images/blockchain-thay-doi-nganh-xe-hoi.png', 4)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (59, N'Hộp số CVT giúp xe vận hành êm ái', N'<h2 class="font-weight-bold news-content-sapo mb-4">Nhờ những tiến bộ của c&ocirc;ng nghệ, hộp số CVT (biến thi&ecirc;n v&ocirc; cấp) đang ng&agrave;y c&agrave;ng được c&aacute;c h&atilde;ng xe sử dụng, đặc biệt đối với những mẫu xe cỡ nhỏ, trong đ&oacute; c&oacute; chiếc VinFast Fadil.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>Bất cứ ai chuyển từ l&aacute;i xe số s&agrave;n truyền thống sang số tự động sẽ ngay lập tức nhận thấy sự kh&aacute;c biệt trong chất lượng chuyển số. Nhưng đối với hộp số tự động CVT (hộp số biến thi&ecirc;n li&ecirc;n tục), chất lượng chuyển số c&ograve;n được cải thiện hơn nữa.&nbsp;</p>
<p>Trong một&nbsp;<strong>hộp số CVT</strong>, tỷ số truyền động được thay đổi một c&aacute;ch mượt m&agrave;, hiệu quả v&agrave; liền mạch&nbsp;trong khi bạn l&aacute;i xe. Đối với c&aacute;c hộp số sử dụng b&aacute;nh răng, mỗi b&aacute;nh răng sẽ cho một tỷ số truyền động cố định v&agrave; ch&uacute;ng ta sẽ phải chuyển giữa những b&aacute;nh răng n&agrave;y (tự động hoặc bằng tay) để thay đổi tỷ số đ&oacute;.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img style="box-sizing: border-box; font-family: Mulish; border: 0px none; vertical-align: middle; max-width: 100%; height: auto !important; padding: 10px; width: 760px; color: #000000; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;" src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-hop-so-cvt.jpg" alt="hop so cvt" data-caption="Hộp số CVT ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến v&igrave; những đặc t&iacute;nh th&acirc;n thiện với người d&ugrave;ng, cũng giống như những chiếc xe ga (scooter) ng&agrave;y c&agrave;ng được ưa th&iacute;ch so với xe số. Ảnh: &lt;em&gt;Carfax.&lt;/em&gt;" data-entity-type="file" data-entity-uuid="f2979663-d514-4e17-aff0-091e364d1616" /></h2>
<p class="text-center cap-style mt-2">Hộp số CVT ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến v&igrave; những đặc t&iacute;nh th&acirc;n thiện với người d&ugrave;ng, cũng giống như những chiếc xe ga (scooter) ng&agrave;y c&agrave;ng được ưa th&iacute;ch so với xe số. Ảnh:&nbsp;<em>Carfax.</em></p>
<p>&nbsp;</p>
<p>Bản chất kh&ocirc;ng phải chuyển qua lại giữa c&aacute;c b&aacute;nh răng&nbsp;của CVT mang lại sự linh hoạt kh&ocirc;ng thể s&aacute;nh kịp bởi c&aacute;c thiết kế hộp số kh&aacute;c, v&agrave; cũng giữ cho sự truyền động kh&ocirc;ng bị gi&aacute;n đoạn bất kể vận tốc đầu ra. Ch&iacute;nh v&igrave; vậy, hộp số CVT sẽ gi&uacute;p chiếc xe của bạn tăng tốc một c&aacute;ch &ecirc;m v&agrave; ngọt, do đ&oacute; tiết kiệm nhi&ecirc;n liệu.&nbsp;</p>
<h2>Lịch sử của hộp số CVT&nbsp;</h2>
<p>Mặc d&ugrave; hộp số CVT mới chỉ trở n&ecirc;n phổ biến trong thời gian gần đ&acirc;y nhờ những cải tiến mang lại hiệu quả cao hơn, &yacute; tưởng về một hệ truyền động biến thi&ecirc;n li&ecirc;n tục đ&atilde; tồn tại trong nhiều thập kỷ. Leonardo DaVinci được coi l&agrave; người đầu ti&ecirc;n c&oacute; &yacute; tưởng về một hệ thống b&aacute;nh răng c&oacute; thể thay đổi tỷ số truyền động, theo một bản vẽ của &ocirc;ng từ thế kỷ 16.&nbsp;</p>
<p>Đến năm 1886, một hệ thống như vậy được đăng k&yacute; bản quyền bởi Daimler v&agrave; Benz, nhưng phải đến năm 1910, h&atilde;ng xe m&aacute;y Zenit của Anh mới th&agrave;nh c&ocirc;ng trong việc &aacute;p dụng một cơ chế như vậy v&agrave;o sản phẩm của m&igrave;nh. N&oacute; th&agrave;nh c&ocirc;ng tới mức xe m&aacute;y của Zenit bị cấm tham dự c&aacute;c cuộc đua leo đ&egrave;o.&nbsp;</p>
<p>Đến cuối thập ni&ecirc;n 1980, hộp số CVT bắt đầu được sử dụng đại tr&agrave; tr&ecirc;n xe hơi của Subaru, v&agrave; tới nay th&igrave; gần như h&atilde;ng sản xuất n&agrave;o cũng c&oacute; &iacute;t nhất một mẫu xe sử dụng kiểu hộp số n&agrave;y.&nbsp;</p>
<h2>Hộp số CVT hoạt động như thế n&agrave;o&nbsp;</h2>
<p>Trong khi hộp số truyền thống sử dụng nhiều bộ phận phức tạp để chuyển giữa một loạt c&aacute;c b&aacute;nh răng c&oacute; sẵn, hầu hết c&aacute;c hộp số CVT hoạt động th&ocirc;ng qua một hệ thống puli (r&ograve;ng rọc). Hệ thống n&agrave;y bao gồm 2 r&ograve;ng rọc c&oacute; khả năng thay đổi đường k&iacute;nh, được kết nối với nhau bởi một đai truyền động. Nhưng v&igrave; độ d&agrave;i của d&acirc;y đai n&agrave;y l&agrave; kh&ocirc;ng thay đổi, n&ecirc;n tổng đường k&iacute;nh của 2 puli lu&ocirc;n l&agrave; một hằng số.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-ban-ve-hop-so-cvt-da-vinci.jpg" alt="ban ve hop so cvt leonardo da vinci" data-caption="Một bản vẽ của nh&agrave; ph&aacute;t minh Leonardo da Vinci m&agrave; nhiều người cho rằng l&agrave; thiết kế đầu ti&ecirc;n của một hệ thống truyền động biến thi&ecirc;n." data-entity-type="file" data-entity-uuid="bbe6e9be-817e-4aa4-88de-11f76beab37b" /></h2>
<p class="text-center cap-style mt-2">Một bản vẽ của nh&agrave; ph&aacute;t minh Leonardo da Vinci m&agrave; nhiều người cho rằng l&agrave; thiết kế đầu ti&ecirc;n của một hệ thống truyền động biến thi&ecirc;n.</p>
<p>&nbsp;</p>
<p>Trong 2 puli n&agrave;y, một được kết nối với động cơ v&agrave; một được kết nối với hệ truyền động của xe. Mỗi puli được tạo th&agrave;nh từ hai khối h&igrave;nh n&oacute;n đặt đối diện với nhau, tạo th&agrave;nh r&atilde;nh cho đai truyền động. Khi hai khối h&igrave;nh n&oacute;n n&agrave;y tiến gần v&agrave;o nhau, d&acirc;y đai được đẩy ra ph&iacute;a m&eacute;p của puli (r&ograve;ng rọc). Khi hai khối h&igrave;nh n&oacute;n rời xa khỏi nhau, d&acirc;y đai lại di chuyển về ph&iacute;a t&acirc;m của puli.&nbsp;</p>
<p>Đường k&iacute;nh của 2 puli sẽ thay đổi dựa tr&ecirc;n c&ocirc;ng suất cần thiết, khi một c&aacute;i tăng th&igrave; c&aacute;i kia sẽ giảm. Điều n&agrave;y gi&uacute;p ch&uacute;ng ta c&oacute; được tỷ số truyền động biến thi&ecirc;n li&ecirc;n tục chứ kh&ocirc;ng phải dựa v&agrave;o tỷ số b&aacute;nh răng như với hộp số truyền thống. V&igrave; vậy hộp số CVT lu&ocirc;n cho cảm gi&aacute;c tăng tốc liền mạch v&agrave; mạnh mẽ, giống như khi ch&uacute;ng ta đi xe m&aacute;y tay ga. V&igrave; đơn giản đ&oacute; ch&iacute;nh l&agrave; cơ chế hoạt động của những chiếc xe tay ga.&nbsp;</p>
<p>Mặc d&ugrave; kh&ocirc;ng c&oacute; b&aacute;nh răng trong hộp số CVT, một số thiết kế CVT c&oacute; thể m&ocirc; phỏng sự chuyển số theo kiểu b&aacute;nh răng của hộp số truyền thống. Trong c&aacute;c hộp số n&agrave;y, hệ thống d&acirc;y đai v&agrave; puli được thiết kế để di chuyển đến c&aacute;c vị tr&iacute; được định sẵn, bằng c&aacute;ch sử dụng cần số truyền thống hoặc lẫy chuyển số tr&ecirc;n v&ocirc; lăng.&nbsp;</p>
<h2>Tại sao hộp số CVT ng&agrave;y c&agrave;ng phổ biến?&nbsp;</h2>
<p>Nếu hộp số CVT đ&atilde; tồn tại từ rất l&acirc;u th&igrave; tại sao b&acirc;y giờ ch&uacute;ng mới trở n&ecirc;n phổ biến? Đơn giản l&agrave; v&igrave; c&aacute;c nh&agrave; sản xuất nhận ra rằng phương tiện sử dụng hộp số CVT sẽ đ&aacute;p ứng nhu cầu cho phần đ&ocirc;ng kh&aacute;ch h&agrave;ng của họ. CVT sử dụng hiệu quả nhất đối với c&aacute;c động cơ nhỏ, vốn được lắp tr&ecirc;n c&aacute;c mẫu xe phổ biến. Ch&iacute;nh v&igrave; vậy phần lớn kh&aacute;ch h&agrave;ng của họ sẽ c&oacute; một trải nghiệm l&aacute;i xe tốt hơn. Hộp số CVT sẽ cung cấp nhiều lợi &iacute;ch hơn cho một người l&aacute;i coi chiếc xe như phương tiện sử dụng h&agrave;ng ng&agrave;y.&nbsp;</p>
<p>Đầu ti&ecirc;n phải n&oacute;i đến khả năng tiết kiệm nhi&ecirc;n liệu đ&aacute;ng kể. Bằng c&aacute;ch li&ecirc;n tục thay đổi tỷ số truyền động giữa động cơ tới c&aacute;c b&aacute;nh xe, hộp số CVT c&oacute; thể đảm bảo rằng kh&ocirc;ng c&oacute; nhi&ecirc;n liệu được sử dụng hơn mức cần thiết tại bất cứ thời điểm n&agrave;o. Điều n&agrave;y c&oacute; nghĩa l&agrave; khi di chuyển ở tốc độ thấp trong th&agrave;nh phố hoặc ở một tốc độ ổn định tr&ecirc;n đường cao tốc, v&ograve;ng tua m&aacute;y c&oacute; thể giữ ở mức thấp, gi&uacute;p tiết kiệm nhi&ecirc;n liệu.&nbsp;</p>
<p>Cũng theo nguy&ecirc;n l&yacute; đ&oacute;, việc l&aacute;i xe l&ecirc;n dốc với hộp số CVT trở n&ecirc;n dễ d&agrave;ng hơn nhiều. Một hộp số với b&aacute;nh răng sẽ phải l&agrave;m việc nhiều hơn để t&igrave;m được tỷ số truyền động ph&ugrave; hợp, trong khi hộp số CVT sẽ l&agrave;m được điều đ&oacute; một c&aacute;ch ch&iacute;nh x&aacute;c v&agrave; gần như ngay lập tức. V&agrave; cũng v&igrave; kh&ocirc;ng c&oacute; hoạt động chuyển số giữa c&aacute;c b&aacute;nh răng, bạn sẽ kh&ocirc;ng phải lo về việc bị hụt khi l&ugrave;i số để c&oacute; th&ecirc;m sức mạnh vượt c&aacute;c xe kh&aacute;c.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://storage.googleapis.com/vin3s-data-01/4901410_hop-so-tu-dong-cvt.gif" alt="hop so cvt hoat dong lien tuc" data-caption="Việc 2 puli thay đổi đường k&iacute;nh li&ecirc;n tục gi&uacute;p tỷ số truyền động được thay đổi một c&aacute;ch liền mạch." data-entity-type="file" data-entity-uuid="31a5e46a-3877-49ab-bc53-7a03f0662462" /></h2>
<p class="text-center cap-style mt-2">Việc 2 puli thay đổi đường k&iacute;nh li&ecirc;n tục gi&uacute;p tỷ số truyền động được thay đổi một c&aacute;ch liền mạch.</p>
<p>&nbsp;</p>
<p>Tất nhi&ecirc;n l&agrave; CVT cũng c&oacute; một số nhược điểm, cụ thể l&agrave; chi ph&iacute; bảo dưỡng v&agrave; thay thế, v&igrave; d&acirc;y đai nối 2 puli thường c&oacute; tuổi đời kh&ocirc;ng d&agrave;i như một hộp số truyền thống với c&aacute;c b&aacute;nh răng. Th&ecirc;m v&agrave;o đ&oacute; mặc d&ugrave; hộp số CVT ph&ugrave; hợp với nhu cầu h&agrave;ng ng&agrave;y của kh&aacute;ch h&agrave;nh b&igrave;nh d&acirc;n, ch&uacute;ng kh&ocirc;ng ph&ugrave; hợp với c&aacute;c d&ograve;ng xe thể thao v&agrave; hiệu suất cao.&nbsp;</p>
<p>Th&ecirc;m v&agrave;o đ&oacute;, do tỷ lệ giảm hệ số quay để tăng m&ocirc;men xoắn c&ograve;n thấp n&ecirc;n hộp số CVT kh&ocirc;ng thể cho cảm gi&aacute;c tăng tốc tức th&igrave; như hộp số truyền thống, v&agrave; chỉ ph&ugrave; hợp cho d&ograve;ng xe hiệu suất nhỏ. Để khắc phục điểm yếu n&agrave;y, một số nh&agrave; sản xuất thiết kế&nbsp;<em>hộp số CVT</em>&nbsp;để n&oacute; hoạt động đồng thời với 1 hoặc 2 b&aacute;nh răng số. B&aacute;nh răng n&agrave;y sẽ hoạt động ở dải v&ograve;ng tua thấp, gi&uacute;p chiếc xe tăng tốc v&agrave; c&oacute; lực k&eacute;o tốt hơn.&nbsp;</p>
<p>Cuối c&ugrave;ng, một số t&agrave;i xế sẽ kh&ocirc;ng th&iacute;ch xe sử dụng hộp số CVT, v&igrave; n&oacute; qu&aacute; &ecirc;m v&agrave; kh&ocirc;ng c&oacute; cảm gi&aacute;c phấn kh&iacute;ch khi v&agrave;o số như hộp số truyền thống.&nbsp;</p>
<p>Tại Việt Nam,&nbsp;<u>hộp số CVT</u>&nbsp;xuất hiện tr&ecirc;n nhiều d&ograve;ng xe cỡ nhỏ, trong đ&oacute; c&oacute; chiếc Fadil của VinFast. Hộp số CVT của Fadil được thiết kế v&agrave; sản xuất bởi Jatco, thương hiệu h&agrave;ng đầu Nhật Bản, chiếm đến 49% thị phần hộp số CVT to&agrave;n cầu.&nbsp;</p>', CAST(N'2021-03-05' AS Date), 36, 2, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_360x200/public/2020-12/Hop%20so%20CVT%20giup%20xe%20van%20hanh%20em%20ai%20anh%20thumbnail.jpg?itok=hJrraOmO', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (60, N'Phân loại các cấp độ xe tự lái', N'<h2 class="font-weight-bold news-content-sapo mb-4">Trong v&ograve;ng 10 năm tới, ng&agrave;nh c&ocirc;ng nghiệp &ocirc; t&ocirc; cũng như việc di chuyển bằng phương tiện c&aacute; nh&acirc;n sẽ thay đổi đ&aacute;ng kể, nhiều hơn những g&igrave; xảy ra trong v&ograve;ng 30 năm qua. Xe điện, xe hơi kết nối v&agrave; đặc biệt l&agrave; c&ocirc;ng nghệ xe tự l&aacute;i sẽ l&agrave; thực tế mới chứ kh&ocirc;ng c&ograve;n l&agrave; c&acirc;u chuyện trong những bộ phim viễn tưởng.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>Trong đ&oacute;,&nbsp;<strong>xe tự l&aacute;i</strong>&nbsp;l&agrave; một lĩnh vực ho&agrave;n to&agrave;n mới v&agrave; để &aacute;p dụng v&agrave;o thực tế, ch&uacute;ng ta cần những quy chuẩn chung. Hiệp hội Kỹ sư &Ocirc; t&ocirc; (SAE) &ndash; tổ chức ph&aacute;t triển c&aacute;c quy định v&agrave; ti&ecirc;u chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp &ocirc; t&ocirc; to&agrave;n cầu - đ&atilde; x&acirc;y dựng một hệ thống ph&acirc;n loại gồm 6 cấp độ tự l&aacute;i kh&aacute;c nhau để x&aacute;c định mức độ tự chủ của phương tiện v&agrave; người l&aacute;i khi vận h&agrave;nh.</p>
<p>6 thang đo bắt đầu từ Cấp độ 0 &ndash; tức l&agrave; kh&ocirc;ng hề c&oacute; sự trợ gi&uacute;p n&agrave;o từ phương tiện &ndash; cho đến Cấp độ 5 &ndash; khi phương tiện tự chủ ho&agrave;n to&agrave;n m&agrave; kh&ocirc;ng cần đến bất cứ tr&aacute;ch nhiệm điều khiển n&agrave;o của người ngồi tr&ecirc;n xe.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img style="box-sizing: border-box; font-family: Mulish; border: 0px none; vertical-align: middle; max-width: 100%; height: auto !important; padding: 10px; width: 760px; color: #000000; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;" src="https://storage.googleapis.com/vinfast-data-01/hinh-anh-5-cap-do-xe-tu-lai-viethoa.jpeg" alt="5 cấp độ xe tự l&aacute;i" data-caption="6 cấp độ xe tự l&aacute;i theo ph&acirc;n loại của SAE International. Đồ họa: &lt;em&gt;Business Insider.&lt;/em&gt;" data-entity-type="file" data-entity-uuid="2333a8a7-3df5-40e7-b0e8-13b19944fa38" /></h2>
<p class="text-center cap-style mt-2">6 cấp độ xe tự l&aacute;i theo ph&acirc;n loại của SAE International. Đồ họa:&nbsp;<em>Business Insider.</em></p>
<h2>Cấp độ 0 &ndash; Kh&ocirc;ng tự động h&oacute;a</h2>
<p>Ở mức n&agrave;y, t&agrave;i xế ho&agrave;n to&agrave;n phụ tr&aacute;ch việc điều khiển phương tiện, từ đ&aacute;nh l&aacute;i, tăng tốc, phanh, đỗ xe hay bất cứ h&agrave;nh động n&agrave;o nhằm điều hướng chiếc xe.</p>
<p>Mặc d&ugrave; vậy, mức độ tự l&aacute;i n&agrave;y vẫn bao gồm những t&iacute;nh năng như hỗ trợ phanh khẩn cấp, cảnh b&aacute;o điểm m&ugrave; hay cảnh b&aacute;o lệch l&agrave;n đường. L&yacute; do l&agrave; v&igrave; những c&ocirc;ng nghệ n&agrave;y kh&ocirc;ng tham gia điều khiển phương tiện m&agrave; thay v&agrave;o đ&oacute; đưa ra cảnh b&aacute;o hoặc chỉ dẫn cho t&agrave;i xế trong những t&igrave;nh huống cụ thể. Phần lớn xe hơi b&aacute;n ra ở thị trường Mỹ hiện nay l&agrave; những phương tiện thuộc nh&oacute;m n&agrave;y.</p>
<h2>Cấp độ 1 &ndash; Hỗ trợ người l&aacute;i</h2>
<p>Ở cấp độ thấp nhất trong thang ph&acirc;n loại phương tiện tự l&aacute;i, t&agrave;i xế phải thực hiện hầu hết c&aacute;c t&aacute;c vụ cần thiết để điều khiển xe, kết hợp với một số t&iacute;nh năng nhất định. Những t&iacute;nh năng n&agrave;y sẽ hỗ trợ người l&aacute;i trong việc điều hướng chiếc xe trong trường hợp cụ thể.</p>
<p>Hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh th&iacute;ch ứng &ndash; Adaptive Cruise Control (ACC) &ndash; l&agrave; một v&iacute; dụ ti&ecirc;u biểu cho Cấp độ 1 trong thang tự động h&oacute;a. ACC sẽ chọn tốc độ ph&ugrave; hợp cho phương tiện để n&oacute; giữ khoảng c&aacute;ch an to&agrave;n với xe ph&iacute;a trước. Th&ecirc;m v&agrave;o đ&oacute;, t&iacute;nh năng hỗ trợ giữ l&agrave;n đường (Steering Assist) cũng được coi l&agrave; tự động h&oacute;a cấp độ 1.</p>
<p>Kh&aacute;c với t&iacute;nh năng cảnh b&aacute;o lệch l&agrave;n đường, hỗ trợ giữ l&agrave;n đường sẽ tự điều khiển phương tiện để đảm b&aacute;o chiếc xe đi theo đ&uacute;ng l&agrave;n đường nhất định. Một phương tiện với cả Adaptive Cruise Control v&agrave; Steering Assist sẽ đủ điều kiện để xếp hạng xe tự l&aacute;i Cấp độ 2.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img style="box-sizing: border-box; font-family: Mulish; border: 0px none; vertical-align: middle; max-width: 100%; height: auto !important; padding: 10px; width: 760px; color: #000000; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;" src="https://storage.googleapis.com/vinfast-data-01/hinh-anh-xe-tu-lai-tesla.jpg" alt="xe tu lai tesla" data-caption="Mặc d&ugrave; thu h&uacute;t sự ch&uacute; &yacute; nhưng Autopilot của Tesla chỉ được xếp hạng ở mức độ tự l&aacute;i cấp 2. Ảnh: &lt;em&gt;Bloomberg.&lt;/em&gt;" data-entity-type="file" data-entity-uuid="5bbfcc0c-074a-47f9-a05c-b5161ccb2791" /></h2>
<p class="text-center cap-style mt-2">Mặc d&ugrave; thu h&uacute;t sự ch&uacute; &yacute; nhưng Autopilot của Tesla chỉ được xếp hạng ở mức độ tự l&aacute;i cấp 2. Ảnh:&nbsp;<em>Bloomberg.</em></p>
<h2>Cấp độ 2 &ndash; Xe tự đ&aacute;nh l&aacute;i, tăng tốc v&agrave; phanh dưới sự gi&aacute;m s&aacute;t của t&agrave;i xế</h2>
<p>Ở cấp độ tự l&aacute;i n&agrave;y, chiếc xe kh&ocirc;ng chỉ c&oacute; một hệ thống hỗ trợ người l&aacute;i duy nhất, m&agrave; sở hữu nhiều hệ thống hỗ trợ người l&aacute;i phức tạp (Advanced Driver Assistance Systems) gi&uacute;p phương tiện tự đ&aacute;nh l&aacute;i, tăng tốc v&agrave; phanh trong những t&igrave;nh huống thường gặp, đ&atilde; được lập tr&igrave;nh từ trước.</p>
<p>Nhưng mặc d&ugrave; chiếc xe c&oacute; thể tự đ&aacute;nh l&aacute;i hay phanh, t&agrave;i xế vẫn được y&ecirc;u cầu phải chủ động tham gia v&agrave;o qu&aacute; tr&igrave;nh điều khiển phương tiện, đặc biệt l&agrave; phải để 2 tay l&ecirc;n v&ocirc; lăng cũng như theo d&otilde;i hướng đi đi của phương tiện.</p>
<p>Cấp độ 2 thường được gọi l&agrave; &ldquo;tự l&aacute;i một phần&rdquo; v&agrave; nhiều phương tiện b&aacute;n ở Mỹ trong năm 2020 c&oacute; thể được xếp v&agrave;o cấp độ n&agrave;y, trong đ&oacute; c&oacute; cả những chiếc Tesla được trang bị c&ocirc;ng nghệ Autopilot đ&igrave;nh đ&aacute;m của h&atilde;ng.</p>
<h2>Cấp độ 3 &ndash; Tự l&aacute;i c&oacute; điều kiện, c&oacute; t&agrave;i xế</h2>
<p>Từ cấp độ 2 l&ecirc;n cấp độ 3 l&agrave; một khoảng c&aacute;ch đ&aacute;ng kể, v&agrave; chưa c&oacute; phương tiện n&agrave;o ở cấp độ 3 được b&aacute;n ra ở Mỹ trong năm 2020.</p>
<p>Cấp độ 3 c&ograve;n được gọi l&agrave; tự động h&oacute;a c&oacute; điều kiện, v&agrave; nhiều hệ thống hỗ trợ người l&aacute;i sẽ được lập tr&igrave;nh để đưa ra quyết định (bằng tr&iacute; tuệ nh&acirc;n tạo) theo thời gian thực dựa tr&ecirc;n sự thay đổi của m&ocirc;i trường xung quanh phương tiện.</p>
<p>Mặc d&ugrave; xe tự l&aacute;i cấp độ 3 c&oacute; thể hoạt động m&agrave; kh&ocirc;ng cần sự can dự của t&agrave;i xế v&agrave;o qu&aacute; tr&igrave;nh điều khiển, người l&aacute;i vẫn bắt buộc phải c&oacute; mặt để kiểm so&aacute;t phương tiện, đặc biết trong trường hợp khẩn cấp do lỗi hệ thống.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img style="box-sizing: border-box; font-family: Mulish; border: 0px none; vertical-align: middle; max-width: 100%; height: auto !important; padding: 10px; width: 760px; color: #000000; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;" src="https://storage.googleapis.com/vinfast-data-01/hinh-anh-xe-tu-lai.jpg" alt="xe tu lai tom tom" data-caption="Việc ph&aacute;t triển xe tự l&aacute;i sẽ phụ thuộc v&agrave;o c&ocirc;ng nghệ bản đồ h&oacute;a m&ocirc;i trường xung quanh. Ảnh: &lt;em&gt;Tom Tom.&lt;/em&gt;" data-entity-type="file" data-entity-uuid="fc9c6fe6-7ae5-4932-b050-77a5e975734c" /></h2>
<p class="text-center cap-style mt-2">Việc ph&aacute;t triển xe tự l&aacute;i sẽ phụ thuộc v&agrave;o c&ocirc;ng nghệ bản đồ h&oacute;a m&ocirc;i trường xung quanh. Ảnh:&nbsp;<em>Tom Tom.</em></p>
<h2>Cấp độ 4 &ndash; Tự l&aacute;i c&oacute; điều kiện, kh&ocirc;ng t&agrave;i xế</h2>
<p>Được gọi l&agrave; xe tự l&aacute;i cấp độ cao, những phương tiện tự động h&oacute;a cấp độ 4 sẽ kh&ocirc;ng cần bất cứ tương t&aacute;c n&agrave;o của t&agrave;i xế trong qu&aacute; tr&igrave;nh vận h&agrave;nh xe, v&igrave; xe được lập tr&igrave;nh để tự dừng trong trường hợp hệ thống bị lỗi. V&igrave; vậy trong hầu hết điều kiện thực tế, t&agrave;i xế sẽ kh&ocirc;ng cần can thiệp để kiểm so&aacute;t xe.</p>
<p>Cấp độ 4 được thiết kế để cho ph&eacute;p phương tiện tự di chuyển từ điểm A đến điểm B, nhưng thường l&agrave; trong c&aacute;c ranh giới địa l&yacute; cụ thể. Waymo &ndash; c&ocirc;ng ty ph&aacute;t triển c&ocirc;ng nghệ tự l&aacute;i của Google &ndash; đ&atilde; cung cấp dịch vụ như vậy tại Phoenix, bang Arizona sau khi thực hiện bản đồ h&oacute;a (mapping) to&agrave;n bộ đường phố tại th&agrave;nh phố n&agrave;y.</p>
<p>Mặc d&ugrave; vậy, c&aacute;c điều kiện thời tiết c&oacute; thể hạn chế hoạt động của xe tự l&aacute;i. Đến l&uacute;c n&agrave;y th&igrave; mọi thứ lại dựa v&agrave;o c&ocirc;ng nghệ m&agrave; chiếc xe sử dụng. V&iacute; dụ như Tesla sử dụng cảm biến radar kết hợp hệ thống camera để ph&acirc;n t&iacute;ch dữ liệu m&ocirc;i trường xung quanh, v&agrave; v&igrave; sử dụng camera n&ecirc;n hệ thống n&agrave;y c&oacute; thể bị ảnh hưởng bởi điều kiện thời tiết. Waymo trong khi đ&oacute; sử dụng c&ocirc;ng nghệ cảm biến LiDAR đắt tiền hơn nhưng kh&ocirc;ng bị ảnh hưởng bởi thời tiết.</p>
<h2>Cấp độ 5 &ndash; Tự động h&oacute;a kh&ocirc;ng điều kiện</h2>
<p>Đ&acirc;y l&agrave; mức độ tự l&aacute;i cao nhất trong thang đo của SAE. Ở cấp độ n&agrave;y, phương tiện ho&agrave;n to&agrave;n tự động di chuyển v&agrave; xử l&yacute; t&igrave;nh huống theo thời gian thực. Kh&ocirc;ng cần sự tương t&aacute;c của t&agrave;i xế. C&aacute;c&nbsp;<strong>xe tự l&aacute;i</strong>&nbsp;cấp độ 5 sẽ kh&ocirc;ng c&oacute; v&ocirc; lăng, tay ga, ch&acirc;n phanh hoặc thậm ch&iacute; l&agrave; gương.</p>
<p>Ch&uacute;ng giống như những toa xe hơn l&agrave; một chiếc &ocirc; t&ocirc;, v&agrave; c&oacute; thể vận h&agrave;nh ở mọi nơi m&agrave; kh&ocirc;ng bị r&agrave;ng buộc về điều kiện địa l&yacute; cũng như thời tiết. C&aacute;c phương tiện cũng ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; người l&aacute;i v&agrave; sự tham gia duy nhất của con người chỉ l&agrave; ra lệnh cho chiếc xe đi đến đ&acirc;u. Việc n&agrave;y thậm ch&iacute; cũng kh&ocirc;ng cần phải được thực hiện tr&ecirc;n xe m&agrave; c&oacute; thể được ra lệnh từ điện thoại th&ocirc;ng minh của &ldquo;h&agrave;nh kh&aacute;ch&rdquo;.</p>
<p>Zoox l&agrave; c&ocirc;ng ty khởi nghiệp của Mỹ đang c&oacute; những th&agrave;nh c&ocirc;ng bước đầu trong việc ph&aacute;t triển phương tiện kiểu n&agrave;y.</p>', CAST(N'2021-03-05' AS Date), 36, 4, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_200x200/public/2021-01/hinh-anh-xe-tu-lai-axios-ok.png?itok=oD9sXI8w', 3)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (61, N'VinFast đoạt giải "Hãng xe có cam kết cao về an toàn" ASEAN NCAP', N'<h2 class="font-weight-bold news-content-sapo mb-4">Ng&agrave;y 16/2/2021, Chương tr&igrave;nh Đ&aacute;nh gi&aacute; xe mới khu vực Đ&ocirc;ng Nam &Aacute; (ASEAN NCAP) đ&atilde; trao giải &ldquo;H&atilde;ng xe mới c&oacute; cam kết cao về an to&agrave;n&rdquo; cho VinFast. Với cả ba d&ograve;ng xe đều đạt chứng nhận 4 v&agrave; 5 sao, VinFast cũng l&agrave; thương hiệu duy nhất tại khu vực được xướng t&ecirc;n ở danh hiệu n&agrave;y.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p><strong>ASEAN NCAP Grand Prix Awards</strong>&nbsp;l&agrave; sự kiện được tổ chức hai năm một lần bởi Chương tr&igrave;nh Đ&aacute;nh gi&aacute; xe mới khu vực Đ&ocirc;ng Nam &Aacute; từ năm 2014,&nbsp;<strong>nhằm vinh danh c&aacute;c nh&agrave; sản xuất &ocirc; t&ocirc; c&oacute; th&agrave;nh t&iacute;ch xuất sắc về an to&agrave;n</strong>. Đ&acirc;y l&agrave; sự kiện uy t&iacute;n, thu h&uacute;t tất cả c&aacute;c thương hiệu &ocirc; t&ocirc; đang hoạt động trong khu vực với 16 giải được trao theo 2 hạng mục.</p>
<p>Trong đ&oacute;, Excellent Award l&agrave; hạng mục vinh danh c&aacute;c sản phẩm/thương hiệu/tổ chức/c&aacute; nh&acirc;n c&oacute; đ&oacute;ng g&oacute;p lớn cho việc cải thiện mức độ an to&agrave;n của c&aacute;c phương tiện giao th&ocirc;ng tại khu vực Đ&ocirc;ng Nam &Aacute; gồm 12 giải. Best Safety Performance Award l&agrave; hạng mục d&agrave;nh cho c&aacute;c mẫu xe c&oacute; điểm an to&agrave;n cao nhất với 4 giải.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://storage.googleapis.com/vinfast-data-01/Award%20ceremony%20info.jpg" alt="Asean NCAP" data-align="center" data-entity-type="file" data-entity-uuid="da288a66-9649-41bb-8417-f19603f17f72" /></h2>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p><strong>Giải thưởng &ldquo;H&atilde;ng xe mới c&oacute; cam kết cao về an to&agrave;n&rdquo;&nbsp;</strong>(New Manufacturer Safety Commitment), thuộc hạng mục Excellent Award được ASEAN NCAP trao cho nh&agrave; sản xuất xe mới c&oacute; danh mục sản phẩm đạt chứng nhận an to&agrave;n từ mức 4 sao trở l&ecirc;n. Với tất cả c&aacute;c d&ograve;ng xe đang c&oacute; đều đạt chứng nhận tr&ecirc;n 4 sao (Lux A2.0 v&agrave; Lux SA2.0 đạt chứng nhận an to&agrave;n 5 sao, Fadil đạt mức an to&agrave;n 4 sao),&nbsp;<strong>VinFast tự h&agrave;o l&agrave; thương hiệu duy nhất đến nay</strong>&nbsp;được ASEAN NCAP trao giải thưởng n&agrave;y.</p>
<p>Chia sẻ về l&yacute; do VinFast đạt giải, đại diện của ASEAN NCAP cho biết d&ugrave; l&agrave; h&atilde;ng xe mới nhưng VinFast đ&atilde; đưa ti&ecirc;u ch&iacute; an to&agrave;n l&ecirc;n th&agrave;nh ưu ti&ecirc;n cao nhất v&agrave; đầu tư nghi&ecirc;m t&uacute;c để trang bị những t&iacute;nh năng bảo vệ vượt trội cho tất cả c&aacute;c d&ograve;ng xe của m&igrave;nh. Sự c&ocirc;ng nhận của tổ chức đ&aacute;nh gi&aacute; xe uy t&iacute;n nhất khu vực một lần nữa khẳng định mạnh mẽ chất lượng v&agrave; độ an to&agrave;n của xe VinFast theo ti&ecirc;u chuẩn quốc tế.&nbsp;</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://storage.googleapis.com/vinfast-data-01/VinFast%20award%20trophy.jpg" alt="VF_Asean_Ncap" data-align="center" data-entity-type="file" data-entity-uuid="f22dbc66-c273-4e68-8cbd-001c420ed2fa" /></h2>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>Tại Việt Nam, VinFast cũng l&agrave; một trong số rất &iacute;t thương hiệu &ocirc; t&ocirc; sở hữu danh mục sản phẩm với 100% đạt chứng nhận an to&agrave;n ở mức cao của ASEAN NCAP, khẳng định độ tin cậy v&agrave; khả năng bảo vệ kh&aacute;ch h&agrave;ng vượt trội của h&atilde;ng.</p>
<p>&ldquo;<strong>Với tầm nh&igrave;n trở th&agrave;nh h&atilde;ng xe điện th&ocirc;ng minh to&agrave;n cầu,&nbsp;</strong>VinFast đ&atilde; đầu tư lớn, nghi&ecirc;m t&uacute;c v&agrave; d&agrave;i hạn cho nghi&ecirc;n cứu v&agrave; ph&aacute;t triển. Mục ti&ecirc;u của ch&uacute;ng t&ocirc;i l&agrave; mang đến những&nbsp;<strong>sản phẩm &ocirc; t&ocirc; th&ocirc;ng minh, an to&agrave;n v&agrave; tiện &iacute;ch</strong>&nbsp;nhằm g&oacute;p phần n&acirc;ng cao trải nghiệm cho kh&aacute;ch h&agrave;ng tại tất cả c&aacute;c thị trường m&agrave; VinFast tham gia&rdquo;,&nbsp;<strong>&ocirc;ng Kevin Yardley</strong>&nbsp;- Ph&oacute; Tổng gi&aacute;m đốc phụ tr&aacute;ch Nghi&ecirc;n cứu v&agrave; Ph&aacute;t triển của VinFast chia sẻ.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://storage.googleapis.com/vinfast-data-01/VinFast%20award_Mr.Kevin_.jpg" alt="DeputuCEO_VinFast" data-align="center" data-entity-type="file" data-entity-uuid="3b394db0-84b8-440c-8532-e7141880dcf3" /></h2>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>Trước đ&oacute;, VinFast đ&atilde; ch&iacute;nh thức c&ocirc;ng bố chiến lược trở th&agrave;nh h&atilde;ng xe điện th&ocirc;ng minh to&agrave;n cầu v&agrave; giới thiệu 3 d&ograve;ng &ocirc; t&ocirc; SUV điện th&ocirc;ng minh đầu ti&ecirc;n c&oacute; khả năng tự h&agrave;nh cấp độ 2-3. Cả ba d&ograve;ng xe tr&ecirc;n cũng sẽ được c&aacute;c tổ chức đ&aacute;nh gi&aacute; xe h&agrave;ng đầu thế giới như NHTSA (Bắc Mỹ), EURO NCAP (ch&acirc;u &Acirc;u), ASEAN NCAP (Đ&ocirc;ng Nam &Aacute;)... kiểm nghiệm v&agrave; chứng nhận an to&agrave;n ở mức cao nhất trước khi ch&iacute;nh thức b&aacute;n ra v&agrave;o c&aacute;c năm 2021 v&agrave; 2022.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://storage.googleapis.com/vinfast-data-01/VinFast%20award_VF33%20image.jpg" alt="VF33" data-align="center" data-entity-type="file" data-entity-uuid="439b5c7c-78ef-42c8-8784-7f594ff8189d" /></h2>
<p class="text-center cap-style mt-2">&nbsp;</p>
<p>***********************<br /><strong>Th&ocirc;ng tin về ASEAN NCAP:</strong></p>
<p><strong>ASEAN NCAP</strong>&nbsp;l&agrave; Chương tr&igrave;nh đ&aacute;nh gi&aacute; xe mới khu vực Đ&ocirc;ng Nam &Aacute;, được th&agrave;nh lập ng&agrave;y 07/12/2011, trụ sở tại Selangor (Malaysia) v&agrave; l&agrave; th&agrave;nh vi&ecirc;n của hệ thống NCAP to&agrave;n cầu. Chứng chỉ ASEAN NCAP được c&ocirc;ng nhận rộng r&atilde;i tr&ecirc;n to&agrave;n thế giới v&agrave; trở th&agrave;nh ti&ecirc;u chuẩn bắt buộc tại một số quốc gia trong khu vực. ASEAN NCAP hoạt động ho&agrave;n to&agrave;n độc lập v&agrave; c&ocirc;ng khai với 90% chi ph&iacute; được t&agrave;i trợ bởi NCAP to&agrave;n cầu. &nbsp;C&aacute;c b&agrave;i đ&aacute;nh gi&aacute; của ASEAN NCAP tu&acirc;n thủ ti&ecirc;u chuẩn nghi&ecirc;m ngặt của hệ thống NCAP thế giới, đảm bảo t&iacute;nh kh&aacute;ch quan v&agrave; chuẩn x&aacute;c tối đa.&nbsp;</p>
<p>Th&ocirc;ng tin về c&aacute;c mẫu xe được kiểm định bởi ASEAN NCAP đều được c&ocirc;ng bố rộng r&atilde;i tr&ecirc;n website của tổ chức n&agrave;y tại địa chỉ: https://aseancap.org/</p>', CAST(N'2021-03-05' AS Date), 36, 7, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_360x200/public/2021-02/Grand%20Prix%20Award%202020%20A4_Thumb_0.png?itok=kGZVqjlB', 1)
INSERT [dbo].[Blog] ([id], [title], [content], [date], [author_id], [viewer], [like], [dislike], [img], [category]) VALUES (62, N'Xe hơi kết nối: Cuộc chiến giữa các hãng xe với Big Tech', N'<h2 class="font-weight-bold news-content-sapo mb-4">C&aacute;c đại gia c&ocirc;ng nghệ từ l&acirc;u đ&atilde; coi xe hơi như l&agrave; &ldquo;thiết bị&rdquo; tiềm năng để chạy c&aacute;c dịch vụ của họ, qua đ&oacute; mở rộng hệ sinh th&aacute;i v&agrave; kiểm so&aacute;t trải nghiệm người d&ugrave;ng một c&aacute;ch đồng bộ.</h2>
<div class="youtube 123">&nbsp;</div>
<div class="news-slide">
<div class="gallery-wrapper">&nbsp;</div>
</div>
<p>C&aacute;c h&atilde;ng xe đ&atilde; từng thử nghiệm, đầu tư những khoản tiền lớn v&agrave;o việc nghi&ecirc;n cứu v&agrave; ph&aacute;t triển c&ocirc;ng nghệ để x&acirc;y dựng khả năng kết nối cho những chiếc &ocirc; t&ocirc;, nhưng họ gặp phải sự cạnh tranh qu&aacute; mạnh từ c&aacute;c đại gia c&ocirc;ng nghệ. Apple, Google hay Amazon đều c&oacute; kế hoạch mở rộng đế chế của m&igrave;nh dựa tr&ecirc;n nền tảng hiện c&oacute; bằng c&aacute;ch kiểm so&aacute;t trải nghiệm người d&ugrave;ng tr&ecirc;n xe hơi của họ.&nbsp;</p>
<p>Đối với nhiều thị trường, đặc biệt l&agrave; Bắc Mỹ, thời gian kh&aacute;ch h&agrave;ng ở tr&ecirc;n xe c&aacute; nh&acirc;n chỉ k&eacute;m thời gian họ d&agrave;nh cho điện thoại th&ocirc;ng minh. Với chiến lược tấn c&ocirc;ng của m&igrave;nh, Big Tech đang từ từ nắm quyền kiểm so&aacute;t tương lai kỹ thuật số của ng&agrave;nh c&ocirc;ng nghiệp &ocirc; t&ocirc;.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-apple-carplay-tren-xe-fadil.jpg" alt="apple car play tren fadil" data-caption="Hiện nay Apple v&agrave; Google gần như chi phối ho&agrave;n to&agrave;n với ti&ecirc;u chuẩn hiển thị của họ tr&ecirc;n c&aacute;c hệ thống th&ocirc;ng tin giải tr&iacute; xe hơi, v&agrave; rất c&oacute; thể sẽ tự ph&aacute;t triển hệ điều h&agrave;nh xe hơi của ri&ecirc;ng m&igrave;nh." data-entity-type="file" data-entity-uuid="d3692423-0c5c-4118-bf38-aba790a14f7e" /></h2>
<p class="text-center cap-style mt-2">Hiện nay Apple v&agrave; Google gần như chi phối ho&agrave;n to&agrave;n với ti&ecirc;u chuẩn hiển thị của họ tr&ecirc;n c&aacute;c hệ thống th&ocirc;ng tin giải tr&iacute; xe hơi, v&agrave; rất c&oacute; thể sẽ tự ph&aacute;t triển hệ điều h&agrave;nh xe hơi của ri&ecirc;ng m&igrave;nh.</p>
<h2>&nbsp;</h2>
<h2>Từ đối t&aacute;c đến mối đe dọa</h2>
<p>Mọi thứ bắt đầu từ những sự hợp t&aacute;c &iacute;t rủi ro - đ&ocirc;i b&ecirc;n c&ugrave;ng c&oacute; lợi giữa c&aacute;c nh&agrave; sản xuất xe hơi v&agrave; c&aacute;c tập đo&agrave;n c&ocirc;ng nghệ, khi m&agrave;n h&igrave;nh th&ocirc;ng tin giải tr&iacute; tr&ecirc;n xe hơi hiển thị giống như tr&ecirc;n điện thoại th&ocirc;ng minh. Điều n&agrave;y nghe c&oacute; vẻ hợp l&yacute; v&igrave; n&oacute; gi&uacute;p đồng nhất trải nghiệm người d&ugrave;ng, v&agrave; dẫn đến sự ra đời của Android Auto, Apple CarPlay v&agrave; ở Trung Quốc l&agrave; Baidu CarLife.&nbsp;</p>
<p>Ng&agrave;y nay, hầu hết c&aacute;c nh&agrave; sản xuất xe hơi chỉ đơn giản l&agrave; b&aacute;n giao diện kỹ thuật cho ph&eacute;p hiển thị tất cả c&aacute;c ti&ecirc;u chuẩn, thay v&igrave; chỉ chọn một kết nối. Mọi thứ tiến th&ecirc;m một bước với sự xuất hiện của c&aacute;c trợ l&yacute; ảo được t&iacute;ch hợp v&agrave;o xe hơi &ndash; Siri của Apple v&agrave; Alexa của Amazon. Phạm vi hoạt động c&aacute;c dịch vụ kỹ thuật số của xe hơi đang ph&aacute;t triển v&agrave; sẽ tiếp tục ph&aacute;t triển cho đến khi những chiếc &ocirc; t&ocirc; tự động h&oacute;a cao hơn ra đời, v&agrave; c&ocirc;ng nghệ kỹ thuật số c&oacute; thể sẽ trở th&agrave;nh trung t&acirc;m của việc thiết kế v&agrave; sản xuất xe hơi.&nbsp;</p>
<p>V&agrave; từ đ&acirc;y th&igrave; mọi thứ đ&atilde; bắt đầu rủi ro hơn.</p>
<p>Việc ph&aacute;t triển xe tự l&aacute;i cho thấy Big Tech đang t&igrave;m c&aacute;ch thống trị kh&ocirc;ng chỉ dịch vụ điện to&aacute;n đ&aacute;m m&acirc;y cho xe hơi, m&agrave; c&ograve;n l&agrave; hệ điều h&agrave;nh của &ocirc; t&ocirc; hay hơn nữa l&agrave; phần cứng &ndash; c&aacute;c th&agrave;nh phần điện v&agrave; điện tử - vốn l&agrave; s&acirc;n nh&agrave; của c&aacute;c h&atilde;ng xe truyền thống.&nbsp;</p>
<p>Kh&ocirc;ng c&oacute; c&aacute;ch n&agrave;o để tr&aacute;nh khỏi việc xe hơi trong tương lai sẽ được kết nối Internet. Từ th&aacute;ng 3/2018, mọi phương tiện mới b&aacute;n ra ở Li&ecirc;n minh ch&acirc;u &Acirc;u phải c&oacute; chức năng gọi khẩn cấp (eCall). Hơn nữa, sự phổ biến của xe điện, xe tự l&aacute;i v&agrave; nền kinh tế chia sẻ cần những phương tiện được kết nối đầy đủ. 5G &ndash; điều kiện ti&ecirc;n quyết cho một phương tiện tự l&aacute;i cấp độ cao &ndash; sẽ trở th&agrave;nh ti&ecirc;u chuẩn mới trong ng&agrave;nh gi&uacute;p cho mọi xe hơi đời mới được kết nối internet tốc độ cao.&nbsp;</p>
<p>Kh&ocirc;ng c&ograve;n nghi ngờ g&igrave; nữa, kết nối l&agrave; yếu tố trung t&acirc;m th&uacute;c đẩy qu&aacute; tr&igrave;nh chuyển đổi số của ng&agrave;nh &ocirc; t&ocirc;, nhưng tiếp theo sẽ l&agrave; g&igrave; v&agrave; ai sẽ nắm quyền kiểm so&aacute;t c&ocirc;ng nghệ của tương lai?&nbsp;</p>
<p>Big Tech đ&atilde; nắm được yết hầu của mọi chiếc xe được kết nối Internet, với l&yacute; do ho&agrave;n to&agrave;n ch&iacute;nh đ&aacute;ng. Thoạt đầu người ta c&oacute; thể cảm thấy ngạc nhi&ecirc;n khi c&aacute;c h&atilde;ng xe truyền thống sẵn s&agrave;ng hợp t&aacute;c với c&aacute;c đại gia c&ocirc;ng nghệ, nhưng những lợi &iacute;ch l&agrave; qu&aacute; lớn, đặc biệt l&agrave; về mặt t&agrave;i ch&iacute;nh. Trong nhiều năm, c&aacute;c h&atilde;ng xe đ&atilde; đối mặt nhiều th&aacute;ch thức khi ph&aacute;t triển một hệ điều h&agrave;nh độc lập cho những chiếc xe của họ, v&igrave; đơn giản đ&oacute; l&agrave; điểm yếu l&acirc;u năm của ng&agrave;nh. Việc hợp t&aacute;c với Big Tech kh&ocirc;ng chỉ gi&uacute;p tiết kiệm chi ph&iacute; m&agrave; c&ograve;n l&agrave; một điểm hấp dẫn kh&aacute;ch h&agrave;ng mua xe.&nbsp;</p>
<p>Ch&iacute;nh v&igrave; vậy, chỉ trong v&agrave;i năm, Google đ&atilde; c&oacute; thể phủ s&oacute;ng Android Auto l&ecirc;n khoảng 80% doanh số b&aacute;n xe hơi to&agrave;n cầu. Bước tiếp theo của c&ocirc;ng ty c&ocirc;ng nghệ n&agrave;y sẽ l&agrave; Android Automotive OS, hệ điều h&agrave;nh d&agrave;nh ri&ecirc;ng cho xe hơi được t&iacute;ch hợp s&acirc;u hơn v&agrave;o phương tiện.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-big-tech-cong-nghiep-xe-hoi-ok.png" alt="big tech vs big auto" data-caption="Đang c&oacute; một cuộc tấn c&ocirc;ng của c&aacute;c đại gia c&ocirc;ng nghệ v&agrave;o ng&agrave;nh &ocirc; t&ocirc;, để họ c&oacute; thể kiểm so&aacute;t nhiều nhất trải nghiệm người d&ugrave;ng." data-entity-type="file" data-entity-uuid="97431394-7f13-49f6-a53e-c68a8d9147a0" /></h2>
<p class="text-center cap-style mt-2">Đang c&oacute; một cuộc tấn c&ocirc;ng của c&aacute;c đại gia c&ocirc;ng nghệ v&agrave;o ng&agrave;nh &ocirc; t&ocirc;, để họ c&oacute; thể kiểm so&aacute;t nhiều nhất trải nghiệm người d&ugrave;ng.</p>
<p>&nbsp;</p>
<p>Đối với c&aacute;c nh&agrave; sản xuất, đ&acirc;y l&agrave; lựa chọn rất hấp dẫn, khi chỉ cần mức đầu tư ban đầu tối thiểu l&agrave; c&oacute; một bộ sản phẩm to&agrave;n diện, c&oacute; thể tinh chỉnh với nhu cầu cụ thể để lựa chọn từ danh s&aacute;ch d&agrave;i c&aacute;c dịch vụ của Google. Android l&agrave; hệ điều h&agrave;nh smartphone phổ biến nhất thế giới v&agrave; nhiều t&agrave;i xế đ&atilde; quen thuộc với giao diện cũng như c&aacute;c chức năng cơ bản của n&oacute;.&nbsp;</p>
<p>Mặc d&ugrave; sự phổ biến của Android Auto như một ứng dụng hiển thị tr&ecirc;n xe hơi kh&ocirc;ng thể dự b&aacute;o chắc chắn sự th&agrave;nh c&ocirc;ng của Android Automotive OS, nhưng việc Google ph&aacute;t triển một hệ điều h&agrave;nh mới cho xe hơi l&agrave; lời cảnh tỉnh cho c&aacute;c nh&agrave; sản xuất &ocirc; t&ocirc; v&agrave; nh&agrave; cung cấp ứng dụng. &nbsp;</p>
<p>Kh&ocirc;ng chỉ vậy, Apple cũng tuy&ecirc;n bố sẽ ra mắt chiếc xe của ri&ecirc;ng m&igrave;nh v&agrave;o năm 2024. Big Tech đang c&oacute; những bước đi r&otilde; rệt hơn trong tham vọng kiểm so&aacute;t những chiếc xe &ocirc; t&ocirc; v&agrave; c&aacute;c h&atilde;ng xe truyền thống kh&ocirc;ng thể bỏ qua mối đe dọa n&agrave;y.&nbsp;</p>
<p>Liệu c&aacute;c h&atilde;ng xe c&oacute; thể tiếp tục kiểm so&aacute;t c&ocirc;ng nghệ kỹ thuật số tr&ecirc;n &ocirc; t&ocirc; của họ kh&ocirc;ng? L&agrave;m thế n&agrave;o để hạn chế sự phụ thuộc ng&agrave;y c&agrave;ng lớn v&agrave;o c&aacute;c đại gia c&ocirc;ng nghệ, khi m&agrave; Google hay Apple hoặc Amazon c&oacute; quyền lực đủ lớn để t&aacute;c động tới xu hướng ph&aacute;t triển phương tiện cũng như m&ocirc; h&igrave;nh vận tải trong tương lai?&nbsp;</p>
<p>V&agrave; l&agrave;m sao để c&aacute;c nh&agrave; sản xuất xe hơi c&oacute; thể kết nối trực tiếp tới người d&ugrave;ng, nhằm hưởng lợi từ cuộc c&aacute;ch mạng xe hơi kết nối Internet?&nbsp;</p>
<p>Cho tới nay, c&acirc;u trả lời của c&aacute;c h&atilde;ng xe đi theo 3 hướng ch&iacute;nh.</p>
<h2>Hợp t&aacute;c&nbsp;hay đối đầu?&nbsp;</h2>
<p>Đầu ti&ecirc;n l&agrave; tiếp tục hợp t&aacute;c, GM v&agrave; li&ecirc;n minh Renault-Nissan-Mitsubishi phối hợp chặt chẽ với c&aacute;c h&atilde;ng c&ocirc;ng nghệ lớn để b&ugrave; đắp cho năng lực c&ograve;n thiếu, tr&aacute;nh những khoản đầu tư R&amp;D khổng lồ trong khi vẫn c&oacute; được t&iacute;nh năng hấp dẫn v&agrave; cập nhật tr&ecirc;n c&aacute;c d&ograve;ng xe của m&igrave;nh. Hạn chế của c&aacute;ch tiếp cận n&agrave;y l&agrave; rất hiển nhi&ecirc;n &ndash; họ sẽ phụ thuộc ng&agrave;y c&agrave;ng nhiều v&agrave;o Big Tech.&nbsp;</p>
<p>Phương &aacute;n thứ hai l&agrave; tuy&ecirc;n chiến, mặc d&ugrave; việc n&agrave;y c&oacute; nghĩa l&agrave; c&aacute;c h&atilde;ng xe sẽ phải đối đầu Big Tech ở s&acirc;n chơi của họ. Volkswagen cũng như Toyota đ&atilde; quyết định đổ nhiều tiền hơn v&agrave;o c&ocirc;ng t&aacute;c R&amp;D để ph&aacute;t triển phần mềm của ri&ecirc;ng ri&ecirc;ng m&igrave;nh. Th&aacute;ng 11/2020, h&atilde;ng xe Đức cho biết sẽ đầu tư 27 tỷ euro đến năm 2025 để ph&aacute;t triển hệ điều h&agrave;nh &ocirc; t&ocirc;. Trước đ&oacute; v&agrave;o th&aacute;ng 7, h&atilde;ng xe Nhật th&ocirc;ng b&aacute;o th&agrave;nh lập c&ocirc;ng ty con phụ tr&aacute;ch việc ph&aacute;t triển phần mềm cho xe hơi dưới sự điều h&agrave;nh của James Kuffner &ndash; người c&oacute; thể coi l&agrave; chuy&ecirc;n gia số 1 thế giới về tự động h&oacute;a v&agrave; thiết kế chuyển động.&nbsp;</p>
<p>C&aacute;ch tiếp cận cuối c&ugrave;ng l&agrave; tạo ra một ti&ecirc;u chuẩn chung trong ng&agrave;nh để hợp sức chống lại Big Tech. Một số h&atilde;ng xe đ&atilde; tham gia v&agrave;o Li&ecirc;n minh GENIVI &ndash; một s&aacute;ng kiến của ng&agrave;nh c&ocirc;ng nghiệp &ocirc; t&ocirc; nhằm ph&aacute;t triển hệ điều h&agrave;nh xe hơi m&atilde; nguồn mở dựa tr&ecirc;n hệ điều h&agrave;nh Linux.&nbsp;</p>
<p>Trong cuộc chiến để giữ lại quyền kiểm so&aacute;t v&agrave; bản sắc ri&ecirc;ng cho dịch vụ của m&igrave;nh, trước sức &eacute;p đến từ Big Tech với năng lực phần mềm khủng khiếp, mỗi c&aacute;ch tiếp cận đều c&oacute; ưu v&agrave; nhược điểm ri&ecirc;ng. Nhưng để bắt đầu &ldquo;tự khẳng định m&igrave;nh&rdquo;, c&aacute;c h&atilde;ng xe n&ecirc;n cung cấp nhiều dịch vụ gi&aacute; trị gia tăng th&ocirc;ng qua chiến lược &ldquo;cộng t&aacute;c v&agrave; cạnh tranh&rdquo; c&oacute; mục đ&iacute;ch.&nbsp;</p>
<p>Mặc d&ugrave; c&oacute; một số ngoại lệ hiếm hoi, nhưng c&aacute;c dịch vụ kết nối tr&ecirc;n xe hơi ng&agrave;y nay vẫn c&ograve;n tụt hậu kh&aacute; xa so với điện thoại th&ocirc;ng minh, về khả năng cũng như trải nghiệm người d&ugrave;ng. V&iacute; dụ, khi đang l&aacute;i xe v&agrave; muốn x&aacute;c định vị tr&iacute; tiếp nhi&ecirc;n liệu, trạm xăng hay đỗ xe, người d&ugrave;ng thường phải trải qua c&aacute;c c&ocirc;ng đoạn phức tạp, v&agrave; cuối c&ugrave;ng lại phải nhờ đến sự gi&uacute;p đỡ của smartphone. Nếu c&oacute; bạn đồng h&agrave;nh khi kh&ocirc;ng sao, nhưng sẽ kh&aacute; bất tiện nếu bạn đang l&aacute;i xe một m&igrave;nh tr&ecirc;n cao tốc.</p>
<p>C&aacute;c h&atilde;ng xe truyền thống cũng c&oacute; tham vọng của ri&ecirc;ng m&igrave;nh. Kh&ocirc;ng c&oacute; h&atilde;ng xe n&agrave;o đang hoạt động dựa tr&ecirc;n một nền tảng kết nối to&agrave;n cầu hay c&oacute; thể nh&acirc;n rộng. Thực tế l&agrave; nhiều h&atilde;ng đang phải duy tr&igrave; nhiều phi&ecirc;n bản phần mềm kh&aacute;c nhau cũng như v&ocirc; số biến thể của hệ thống th&ocirc;ng tin giải tr&iacute;.</p>
<h2 class="font-weight-bold news-content-sapo mb-4"><img src="https://vinfastauto.com/sites/default/files/inline-images/hinh-anh-lien-minh-genivi-ok.jpg" alt="genivi alliance" data-caption="Nhiều&amp;nbsp;h&atilde;ng xe đ&atilde; tham gia v&agrave;o Li&ecirc;n minh GENIVI để ph&aacute;t triển một hệ điều h&agrave;nh cho xe hơi dựa tr&ecirc;n m&atilde; nguồn mở Linux." data-entity-type="file" data-entity-uuid="36dc2d83-02ce-40a6-b846-af7c8983a67a" /></h2>
<p class="text-center cap-style mt-2">Nhiều&nbsp;h&atilde;ng xe đ&atilde; tham gia v&agrave;o Li&ecirc;n minh GENIVI để ph&aacute;t triển một hệ điều h&agrave;nh cho xe hơi dựa tr&ecirc;n m&atilde; nguồn mở Linux.</p>
<p>&nbsp;</p>
<p>Một trải nghiệm hứng khởi, ho&agrave;n to&agrave;n tự động &ndash; nơi nhu cầu của người l&aacute;i được nhận biết sớm v&agrave; c&aacute; nh&acirc;n h&oacute;a dựa tr&ecirc;n dữ liệu người d&ugrave;ng, được vận h&agrave;nh th&ocirc;ng qua Giao diện Người &ndash; M&aacute;y (HMI) sẽ l&agrave;m kh&aacute;ch h&agrave;ng cảm thấy h&agrave;i l&ograve;ng. Một hệ điều h&agrave;nh xe hơi được ti&ecirc;u chuẩn h&oacute;a, với giao diện linh hoạt để kết nối với c&aacute;c nh&agrave; cung cấp dịch vụ v&agrave; nội dung sẽ l&agrave; hướng đi hứa hẹn cho c&aacute;c h&atilde;ng xe.&nbsp;</p>
<p>C&aacute;c dịch vụ ri&ecirc;ng lẻ v&agrave; rời rạc trước đ&acirc;y c&oacute; thể được li&ecirc;n kết theo thời gian thực, tạo th&agrave;nh chuỗi giải ph&aacute;p th&ocirc;ng minh v&agrave; chủ động cho người d&ugrave;ng. Những chiếc xe sẽ c&oacute; thể chạy ứng dụng của Microsoft, Google hay Amazon t&ugrave;y theo nhu cầu của chủ nh&acirc;n. D&ugrave; l&agrave; g&oacute;i dịch vụ n&agrave;o, nh&agrave; sản xuất xe hơi cũng kiểm so&aacute;t trải nghiệm người d&ugrave;ng, v&agrave; c&oacute; thể mang lại cho kh&aacute;ch h&agrave;ng lợi &iacute;ch khi trở th&agrave;nh th&agrave;nh vi&ecirc;n của một c&acirc;u lạc bộ ri&ecirc;ng biệt.&nbsp;</p>
<p>V&agrave;o l&uacute;c n&agrave;y, việc Tesla thu ph&iacute; người d&ugrave;ng theo th&aacute;ng cho t&iacute;nh năng tự động l&aacute;i l&agrave; v&iacute; dụ r&otilde; r&agrave;ng nhất cho việc một h&atilde;ng xe sẽ hưởng lợi như thế n&agrave;o khi kiểm so&aacute;t ho&agrave;n to&agrave;n trải nghiệm người d&ugrave;ng. C&aacute;c dịch vụ gi&aacute; trị gia tăng như vậy cũng tạo ra sự kh&aacute;c biệt của thương hiệu v&agrave; tạo ra một m&ocirc; h&igrave;nh kinh doanh bền vững, chưa kể đến việc sử dụng c&aacute;c dịch vụ kết nối như một c&ocirc;ng cụ tạo n&ecirc;n l&ograve;ng trung th&agrave;nh của kh&aacute;ch h&agrave;ng.&nbsp;</p>', CAST(N'2021-03-05' AS Date), 36, 16, NULL, NULL, N'https://vinfastauto.com/sites/default/files/styles/news_360x200/public/2021-01/hinh-anh-big-tech-cong-nghiep-xe-hoi-ok.png?itok=V7H0XgzX', 1)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Car_Borrow] ON 

INSERT [dbo].[Car_Borrow] ([id], [Car_ID], [Borrowed], [time], [note], [name_customer], [phone], [email], [User_ID], [FeedBack]) VALUES (33, 3, 0, NULL, NULL, NULL, NULL, NULL, 4, N'Alo xe tốt')
INSERT [dbo].[Car_Borrow] ([id], [Car_ID], [Borrowed], [time], [note], [name_customer], [phone], [email], [User_ID], [FeedBack]) VALUES (34, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'Alo')
INSERT [dbo].[Car_Borrow] ([id], [Car_ID], [Borrowed], [time], [note], [name_customer], [phone], [email], [User_ID], [FeedBack]) VALUES (35, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'moshi')
INSERT [dbo].[Car_Borrow] ([id], [Car_ID], [Borrowed], [time], [note], [name_customer], [phone], [email], [User_ID], [FeedBack]) VALUES (39, 1, 0, N'2021-03-09T15:31', N'', N'Hoàng Đức Long', N'0941404225', N'Longhdde140081@fpt.edu.vn', 44, N'Xe này chạy rất ok!')
INSERT [dbo].[Car_Borrow] ([id], [Car_ID], [Borrowed], [time], [note], [name_customer], [phone], [email], [User_ID], [FeedBack]) VALUES (43, 2, 0, N'2021-03-11T09:45', N'cho mượn xíu', N'Trần Phi Anh', N'0941404225', N'conacmong5@gmail.com', 47, N'Xe này chạy rất tốt!')
SET IDENTITY_INSERT [dbo].[Car_Borrow] OFF
GO
INSERT [dbo].[Car_Detail] ([id_car], [LxWxH], [Wheelbase], [fullload], [fuel], [engine], [time_per_100], [gear], [img_list], [preorderprice], [contentList]) VALUES (1, N'4973x1900x1464', 2968, 150, 70, N'2,0L, I-4, DOHC,', 9.1, N'auto', N'https://i.imgur.com/MhOAMAB.png', 20000000, N'Fadil là chiếc CUV cỡ nhỏ phong cách Châu Âu. Kích thước nhỏ gọn với khả năng vận hành mạnh mẽ cùng các tính năng an toàn vượt trội khiến Fadil trở thành chiếc xe đáng được ao ước nhất phân khúc.')
INSERT [dbo].[Car_Detail] ([id_car], [LxWxH], [Wheelbase], [fullload], [fuel], [engine], [time_per_100], [gear], [img_list], [preorderprice], [contentList]) VALUES (2, N'4940x1960x1773', 2933, 192, 85, N'2,0L, I-4, DOHC', 9.1, N'auto', N'https://i.imgur.com/aB9Ns55.png', 50000000, N'Lux A2.0 là chiếc xe tiềm năng dành riêng cho những khách hàng tinh tế. Từ đầu xe bề thế, đuôi xe vuốt về sau kiểu cổ điển đến vành và lốp xe lớn, tất cả sự khác biệt đã tạo nên một Lux A2.0 hài hoà.')
INSERT [dbo].[Car_Detail] ([id_car], [LxWxH], [Wheelbase], [fullload], [fuel], [engine], [time_per_100], [gear], [img_list], [preorderprice], [contentList]) VALUES (3, N'3676x1632x1495', 2385, 150, 65, N'Gasoline, 1.4L, 4 in-line cylinders', 10, N'cvt', N'https://i.imgur.com/jv0v68a.png', 50000000, N'Lux SA2.0 là chiếc xe hội tụ tinh hoa của nền công nghiệp ô tô: Thiết kế Ý - Kỹ thuật Đức - Tiêu chuẩn quốc tế.')
INSERT [dbo].[Car_Detail] ([id_car], [LxWxH], [Wheelbase], [fullload], [fuel], [engine], [time_per_100], [gear], [img_list], [preorderprice], [contentList]) VALUES (4, N'5146x1987x1760', 3133, 183, 85, N'V8, 6.2L', 6.8, N'9 Cấp ', N'https://shop.vinfastauto.com/on/demandware.static/-/Sites-app_vinfast_vn-Library/default/dwfd31fe7f/images/President/CE16.png', 1000000000, N'Với thiết kế sang trọng và tinh tế đến từng chi tiết, President không chỉ tạo sự khác biệt về ngoại hình mà còn mang lại sự tiện nghi và thoải mái cho chủ nhân của nó.')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (1, N'Công Nghệ')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (2, N'Tin tức')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (3, N'Công ty')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (4, N'Giải trí')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (1, 1, N'BRAHMINY WHITE', N'https://i.imgur.com/amzNPMZ.png', N'#FFFFFF')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (2, 1, N'ACTION ORANGE', N'https://i.imgur.com/R2onkse.png', N'#CC2A1D')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (3, 1, N'CORMORANT BROWN', N'https://i.imgur.com/Ln3PgVJ.png', N'#41352B')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (4, 1, N'JET BLACK', N'https://i.imgur.com/92BKYLP.png', N'#000000')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (5, 1, N'LUXURY BLUE', N'https://i.imgur.com/fVc45Mo.png', N'#122A41')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (6, 1, N'MISTIQUE RED', N'https://i.imgur.com/3NOMx3Q.png', N'#C70000')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (7, 1, N'NEPTUNE GREY CL', N'https://i.imgur.com/9mYiDm4.png', N'#5F6363')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (8, 1, N'DESAT SILVER', N'https://i.imgur.com/jWIXYny.png', N'#999999')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (9, 2, N'BRAHMINY WHITE', N'https://i.imgur.com/YTtmv2S.png', N'#FFFFFF')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (10, 2, N'ACTION ORANGE', N'https://i.imgur.com/G5Pdcdu.png', N'#CC2A1D')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (11, 2, N'CORMORANT BROWN', N'https://i.imgur.com/Wthxxxb.png', N'#41352B')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (12, 2, N'JET BLACK', N'https://i.imgur.com/We9HXVn.png', N'#000000')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (13, 2, N'LUXURY BLUE', N'https://i.imgur.com/sxeD8ar.png', N'#122A41')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (14, 2, N'MISTIQUE RED', N'https://i.imgur.com/HByLiWb.png', N'#C70000')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (15, 2, N'NEPTUNE GREY CL', N'https://i.imgur.com/tEbZHg4.png', N'#5F6363')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (16, 2, N'DESAT SILVER', N'https://i.imgur.com/FoVglnj.png', N'#999999')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (17, 3, N'BRAHMINY WHITE', N'https://i.imgur.com/jnsAfuD.png', N'#FFFFFF')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (18, 3, N'LUXURY BLUE', N'https://i.imgur.com/Gb5Mbvo.png', N'#122A41')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (19, 3, N'NEPTUNE GREY CL', N'https://i.imgur.com/pYu6iaL.png', N'#5F6363')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (20, 3, N'ACTION ORANGE', N'https://i.imgur.com/jOLrXk8.png', N'#CC2A1D')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (21, 3, N'MISTIQUE RED', N'https://i.imgur.com/uMs8Mlu.png', N'#C70000')
INSERT [dbo].[Color] ([ID], [id_car], [Color], [Img_color], [Color_code]) VALUES (22, 3, N'DESAT SILVER', N'https://i.imgur.com/jCdgOGy.png', N'#999999')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (1, N'Trần Phi Anh', N'Thị Xã Quảng Trị', N'tranphianh2008@gmail.com', N'0941404225', CAST(N'2021-03-06' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (2, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'tranphianh1518@gmail.com', N'0941404225', CAST(N'2021-03-08' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (3, N'Trần Phi Anh', N'Cầu Trắng', N'tranphianh1518@gmail.com', N'0941404225', CAST(N'2021-03-08' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (4, N'anh', N'Giao hàng tại cầu Trắng', N'tranphianh2008@gmail.com', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (5, N'anh', N'Giao hàng tại cầu Trắng', N'tranphianh2008@gmail.com', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (6, N'anh', N'Giao hàng tại cầu Trắng', N'tranphianh2008@gmail.com', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (7, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (8, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (9, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (10, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (11, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (12, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (13, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', NULL, CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (14, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', NULL, CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (15, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', NULL, CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (16, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3@gmail.com', NULL, CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (17, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', NULL, CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (18, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', NULL, CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (19, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', NULL, CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (20, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'tranphianh2008@gmail.com', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (21, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'tranphianh2008@gmail.com', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (22, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'tranphianh2008@gmail.com', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (23, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (24, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (25, N'Trần Phi Anh', N'Giao hàng tại cầu Trắng', N'cot.vy.3', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (26, N'tranphianh', N'aa', N'a@gmail.com', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (27, N'tranphianh', N'aa', N'a@gmail.com', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (28, N'tranphianh', N'aa', N'a@gmail.com', N'0941404225', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (29, N's', N'a@', N'a', N'a', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (30, N'a', N'a', N'a', N'a', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (31, N'tranphianh1518@gmail.com', N'', N'0941404225', N'Phi Anh', NULL)
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (32, N'a', N'a', N'a', N'a', CAST(N'2021-03-10' AS Date))
INSERT [dbo].[Contact] ([id], [Name], [Address], [Email], [Phone], [date]) VALUES (33, N'test1', N'test1', N'a@gmail.com', N'0941404225', CAST(N'2021-03-11' AS Date))
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (26, N'xe này còn không ạ?', N'Hoa', CAST(N'2021-02-18' AS Date), NULL)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (27, N'Chào bạn mình là admin', N'phi anh', CAST(N'2021-02-18' AS Date), NULL)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (28, N'hi', N'Admin', CAST(N'2021-02-18' AS Date), NULL)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (29, N'Lux SA còn xe để test không ạ?', N'Nam', CAST(N'2021-02-19' AS Date), NULL)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (30, N'Chào bạn mình là admin', N'Admin', CAST(N'2021-02-20' AS Date), NULL)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (31, N'Cho hỏi là mấy giờ rồi', N'Phạm Thị Hòa', CAST(N'2021-02-23' AS Date), NULL)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (32, N'hello', N'Admin', CAST(N'2021-02-26' AS Date), NULL)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (33, N'Hihi', N'Hòa', CAST(N'2021-03-05' AS Date), NULL)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (34, N'alo anh bình gold á', N'Hòa', CAST(N'2021-03-06' AS Date), NULL)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (35, N'aaaa', N'Admin', CAST(N'2021-03-06' AS Date), NULL)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (36, N'alo', N'phi anh', CAST(N'2021-03-06' AS Date), 2)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (37, N'he', N'Hòa', CAST(N'2021-03-06' AS Date), 2)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (39, N'Hello', N'Admin', CAST(N'2021-03-09' AS Date), 36)
INSERT [dbo].[FeedBack] ([id], [content], [author], [create_time], [id_author]) VALUES (40, N'Chào các bạn', N'Trần Phi Anh', CAST(N'2021-03-09' AS Date), 47)
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
INSERT [dbo].[page_content_car] ([Id], [id_car], [banner_img], [img_front], [car_logo]) VALUES (1, 1, N'https://i.imgur.com/Wnsyr6e.jpeg', N'https://i.imgur.com/netiVfE.png', NULL)
INSERT [dbo].[page_content_car] ([Id], [id_car], [banner_img], [img_front], [car_logo]) VALUES (2, 2, N'https://i.imgur.com/6nB2Ksc.jpg', N'https://i.imgur.com/wYlBR2I.jpg', NULL)
INSERT [dbo].[page_content_car] ([Id], [id_car], [banner_img], [img_front], [car_logo]) VALUES (3, 3, N'https://i.imgur.com/VUVM5Tb.jpeg', N'https://i.imgur.com/iwgx6SM.png', NULL)
INSERT [dbo].[page_content_car] ([Id], [id_car], [banner_img], [img_front], [car_logo]) VALUES (4, 4, N'https://i.imgur.com/1Ht4Uxi.jpeg', N'https://i.imgur.com/b7mXFHo.png', NULL)
GO
INSERT [dbo].[Page_view] ([id], [name_page], [viewer], [date_time]) VALUES (1, N'home', 1742, N'2021/04/08 18:55:07')
INSERT [dbo].[Page_view] ([id], [name_page], [viewer], [date_time]) VALUES (2, N'register', 522, N'2021/04/08 18:54:08')
INSERT [dbo].[Page_view] ([id], [name_page], [viewer], [date_time]) VALUES (3, N'news', 332, N'2021/04/08 18:55:03')
INSERT [dbo].[Page_view] ([id], [name_page], [viewer], [date_time]) VALUES (4, N'car', 357, N'2021/04/08 18:55:13')
INSERT [dbo].[Page_view] ([id], [name_page], [viewer], [date_time]) VALUES (5, N'about us', 70, N'2021/03/09 15:23:08')
INSERT [dbo].[Page_view] ([id], [name_page], [viewer], [date_time]) VALUES (6, N'login', 736, N'2021/04/08 18:54:57')
GO
INSERT [dbo].[Role] ([Ro_ID], [Ro_Name], [Ro_Description]) VALUES (1, N'Admin', N'Đăng xóa sửa')
INSERT [dbo].[Role] ([Ro_ID], [Ro_Name], [Ro_Description]) VALUES (2, N'Customer', N'Xem')
INSERT [dbo].[Role] ([Ro_ID], [Ro_Name], [Ro_Description]) VALUES (3, N'Blogger', N'Đăng chỉnh sửa xóa blog')
GO
ALTER TABLE [dbo].[_Car]  WITH CHECK ADD  CONSTRAINT [FK__Car_event] FOREIGN KEY([event])
REFERENCES [dbo].[event] ([id])
GO
ALTER TABLE [dbo].[_Car] CHECK CONSTRAINT [FK__Car_event]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Rule] FOREIGN KEY([role])
REFERENCES [dbo].[Role] ([Ro_ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Rule]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Account] FOREIGN KEY([author_id])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Account]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Category] FOREIGN KEY([category])
REFERENCES [dbo].[Category] ([CateID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Category]
GO
ALTER TABLE [dbo].[Car_Borrow]  WITH CHECK ADD  CONSTRAINT [FK_Car_Borrow__Car] FOREIGN KEY([Car_ID])
REFERENCES [dbo].[_Car] ([id])
GO
ALTER TABLE [dbo].[Car_Borrow] CHECK CONSTRAINT [FK_Car_Borrow__Car]
GO
ALTER TABLE [dbo].[Car_Borrow]  WITH CHECK ADD  CONSTRAINT [FK_Car_Borrow_Account] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Car_Borrow] CHECK CONSTRAINT [FK_Car_Borrow_Account]
GO
ALTER TABLE [dbo].[Car_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Car_Detail__Car] FOREIGN KEY([id_car])
REFERENCES [dbo].[_Car] ([id])
GO
ALTER TABLE [dbo].[Car_Detail] CHECK CONSTRAINT [FK_Car_Detail__Car]
GO
ALTER TABLE [dbo].[Color]  WITH CHECK ADD  CONSTRAINT [FK_Color_Car_Detail] FOREIGN KEY([id_car])
REFERENCES [dbo].[Car_Detail] ([id_car])
GO
ALTER TABLE [dbo].[Color] CHECK CONSTRAINT [FK_Color_Car_Detail]
GO
ALTER TABLE [dbo].[page_content_car]  WITH CHECK ADD  CONSTRAINT [FK_page_content_car_Car_Detail] FOREIGN KEY([id_car])
REFERENCES [dbo].[Car_Detail] ([id_car])
GO
ALTER TABLE [dbo].[page_content_car] CHECK CONSTRAINT [FK_page_content_car_Car_Detail]
GO
