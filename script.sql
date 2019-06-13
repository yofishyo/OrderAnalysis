--USE [SMIT09]
--GO
--/****** Object:  Table [dbo].[Members]    Script Date: 2019/5/30 下午 08:31:33 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[Members](
--	[MemberID] [int] IDENTITY(1,1) NOT NULL,
--	[UserID] [varchar](20) NULL,
--	[UserPwd] [varchar](20) NULL,
--	[MemberName] [nvarchar](10) NULL,
--	[Gender] [nvarchar](1) NULL,
--	[Age] [int] NULL,
--	[Email] [varchar](50) NULL,
--	[Phone] [varchar](10) NULL,
--	[MemberAddress] [nvarchar](50) NULL,
--	[MemberPhoto] [nvarchar](100) NULL,
--PRIMARY KEY CLUSTERED 
--(
--	[MemberID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2019/5/30 下午 08:31:33 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[OrderDetails](
--	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
--	[OrderID] [int] NULL,
--	[ProductID] [int] NULL,
--	[ProductName] [nvarchar](30) NULL,
--	[UnitPrice] [int] NULL,
--	[Quantity] [int] NULL,
--	[IsApproved] [varchar](1) NULL,
--PRIMARY KEY CLUSTERED 
--(
--	[OrderDetailID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--/****** Object:  Table [dbo].[Orders]    Script Date: 2019/5/30 下午 08:31:33 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[Orders](
--	[OrderID] [varchar](100) NOT NULL,
--	[OrderDate] [datetime] NULL,
--	[MemberID] [int] NULL,
--	[TotalPrice] [int] NULL,
--	[ReceiverName] [nvarchar](10) NULL,
--	[ReceiverPhone] [varchar](10) NULL,
--	[ReceiverAddress] [nvarchar](100) NULL,
--PRIMARY KEY CLUSTERED 
--(
--	[OrderID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--/****** Object:  Table [dbo].[Products]    Script Date: 2019/5/30 下午 08:31:34 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[Products](
--	[ProductID] [int] IDENTITY(1,1) NOT NULL,
--	[ProductName] [nvarchar](30) NULL,
--	[UnitPrice] [int] NULL,
--	[ProductPhotoS] [nvarchar](100) NULL,
--	[ProductPhotoL] [nvarchar](100) NULL,
--	[Rating] [int] NULL,
--	[ClickRate] [int] NULL,
--	[Discontinued] [varchar](1) NULL,
--	[ProductIntroduction] [nvarchar](500) NULL,
--	[ProductDescription] [nvarchar](500) NULL,
-- CONSTRAINT [PK__Products__B40CC6ED3C98D94B] PRIMARY KEY CLUSTERED 
--(
--	[ProductID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
--SET IDENTITY_INSERT [dbo].[Members] ON 

--INSERT [dbo].[Members] ([MemberID], [UserID], [UserPwd], [MemberName], [Gender], [Age], [Email], [Phone], [MemberAddress], [MemberPhoto]) VALUES (1, N'dany23', N'a12345', N'Dany', N'f', 32, N'dany231@mail.com', N'0923147890', N'台中市南屯區公益路二段51號', NULL)
--SET IDENTITY_INSERT [dbo].[Members] OFF
--SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES ( N'凱薩沙拉', 60, N'/img/Appectizer/165x163/Appectizer_02.jpg', N'/img/Appectizer/800X600/Appectizer_02.jpg', NULL, NULL, NULL, N'炎熱時就該吃生菜輕飲食清爽一夏！', N'凱薩生菜棒的內容物有紅蘿蔔、豆薯、小黃瓜，一口咬下時有著清爽鮮甜的滋味，
一旁還有主廚調製的蜂蜜芥末醬可沾取，口感別於一般的生菜沙拉，吃起來創意又特別。')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'黃金薯條', 35, N'/img/Appectizer/165x163/Appectizer_06.jpg', N'/img/Appectizer/800X600/Appectizer_06.jpg', NULL, NULL, NULL, N'金黃酥脆的薯條口感讓人大呼過癮。', N'薯條炸得金黃酥脆，咬一口外酥內軟的口感讓人大呼過癮。')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'焗烤肉醬薯條', 100, N'/img/Appectizer/165x163/Appectizer_10.jpg', N'/img/Appectizer/800X600/Appectizer_10.jpg', NULL, NULL, NULL, N'將起司薯條夾起，濃郁的起司讓我欲罷不能。', N'焗烤肉醬薯條淋上肉醬汁，再鋪上一層濃厚的焗烤起司，上桌時起司香撲鼻而來，令人垂涎三尺。
薯條一口咬下，炸的金黃酥脆，融合著肉醬和起司的香氣，吃完不覺得膩口，就連小朋友也愛不釋手。')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'墨西哥香辣菲力牛肉披薩', 358, N'/img/Main/165x163/Main_01.jpg', N'/img/Main/800X600/Main_01.jpg', NULL, NULL, NULL, N'採窯烤披薩做法餅皮酥脆可口讓人愛不釋手。', N'採用南義拿坡里手工窯烤披薩作法，藉由窯內高溫，將水分及甜味鎖在麵糰裡， 讓餅皮口感外酥內軟。 番茄紅醬鋪底，與墨西哥辣椒的微辣鹹香，鮮嫩多汁的牛菲力， 在莫札瑞拉起士的襯托下更顯甜味！')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'頂級雙拼．炭烤沙朗心牛排與脆皮雞腿排', 360, N'/img/Main/165x163/Main_02.jpg', N'/img/Main/800X600/Main_02.jpg', NULL, NULL, NULL, N'上選牛排與雞腿排配上鮮甜大干貝，大滿足！', N'散發肉汁香氣還同時呈現明亮色澤的牛排與雞腿排， 鮮甜的大干貝和馬鈴薯、什錦鮮菇也不遜色 牛排與雞腿排使用先烤後煎更增添了風味香氣外 還保留了豐富肉汁讓人真的會一口接一口！無一處不美味啊！')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'紹興酒奶油雞腿排', 229, N'/img/Main/165x163/Main_04.jpg', N'/img/Main/800X600/Main_04.jpg', NULL, NULL, NULL, N'紹興酒的香氣撲鼻而來，濃郁滋味誰能抵抗！', N'有別於一般義大利麵的白醬口味，選用紹興酒醃製入味的去骨雞腿排，大口咬下時濃郁的紹興酒香直衝腦波，肉質吃起來微甜嫩口，再配上奶油白醬，麵條吃起來軟中帶Q讓人無法控制！')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'軟殼蟹蛤蜊花義大利麵佐香檸奶汁', 359, N'/img/Main/165x163/Main_07.jpg', N'/img/Main/800X600/Main_07.jpg', NULL, NULL, NULL, N'軟殼蟹炸後，香酥不油膩還有卡滋卡滋的聲響。', N'義大利麵佐香檸奶汁，還有蛤仔的鮮味，麵條彈牙吃起來鹹香帶鮮的滋味，口味算好吃。滿滿一盤的蛤蜊鋪，每顆蛤蜊好新鮮，令人越吃越過癮。')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'紅醬蕃茄綜合海鮮麵', 178, N'/img/Main/165x163/Main_05.jpg', N'/img/Main/800X600/Main_07.jpg', NULL, NULL, NULL, N'選用天使紅蝦、花枝、蛤仔、蔬菜，料多味美！', N'
紅醬選用蕃茄整顆搗碎製作成蕃茄湖，最後再加入鹽巴調味製作而成。麵條拌入紅醬，吃進嘴裡鹹香帶酸甜，麵條咬起來軟硬適中，有彈性且入味!')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'夏多內花蜜醋', 240, N'/img/Beverage/165x163/Beverage_03.jpg', N'/img/Beverage/800X600/Beverage_03.jpg', NULL, NULL, NULL, N'在夏多內海邊，喝著浪花般的氛圍與酸甜一起縈繞！', N'由少見光臘樹花蜜與夏多內白酒醋的調配，一上桌時以RONA極薄酒杯讓花香氣在震盪搖晃時，將上面泡沫跟花蜜醋一起入口，味蕾上呈現著酸酸甜甜的口感，喝起來滿是淡淡花香在口中縈繞，忍不住想獨自佔有！ ')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'蜜桃初戀泡泡', 110, N'/img/Beverage/165x163/Beverage_05.jpg', N'/img/Beverage/800X600/Beverage_05.jpg', NULL, NULL, NULL, N'沁涼透心的初戀泡泡是嚴選蜜桃口味', N'沁涼透心的初戀滋味泡泡是嚴選蜜桃口味，蜜桃香甜與氣泡水的結合，再加上清香檸檬片，一喝下去清涼爽口，口中的氣泡，更增添另一種口感。
')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'蜜釀鳳梨冰茶', 160, N'/img/Beverage/165x163/Beverage_08.jpg', N'/img/Beverage/800X600/Beverage_08.jpg', NULL, NULL, NULL, N'蜜釀鳳梨冰茶，微酸香甜口感，帶有清爽的滋味。', N'蜜釀鳳梨冰茶，微酸香甜口感，帶有清爽的滋味，喝完有一種解油膩的感覺。')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'季節水果茶', 130, N'/img/Beverage/165x163/Beverage_10.jpg', N'/img/Beverage/800X600/Beverage_10.jpg', NULL, NULL, NULL, N'清甜略帶微酸的口感，讓人想一接著一口。', N'這一季的繽紛水果茶運用冬季限定洛神醬與鳳梨醬為基底茶，自家手工熬煮鳳梨醬，再搭配新鮮檸檬汁、百香果、蘋果的融合，喝一口清甜而略帶微酸的口感，讓嘴裡有著豐富韻味，讓人想一接著一口。')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'橙花君度檸檬塔', 160, N'/img/Dessert/165x163/Dessert_01.jpg', N'/img/Dessert/800X600/Dessert_01.jpg', NULL, NULL, NULL, N'檸檬塔溫潤滑順口感就這麼一直停留在美好的記憶！', N'
這道檸檬塔選用皮飽滿柑橘香的黃檸檬與黃檸檬汁，加入香氣清新的橙花，再使用日本伊娜寒天，最後再以極薄的杏仁餡鋪底，烤時保留了水份，像是馬卡龍口感微帶黏牙，一口咬下酥脆鬆鬆的塔皮結合爽口溫潤的檸檬餡，整體口感清新甜酸，卻略帶淘氣的初春滋味。')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'巧克力慕斯', 135, N'/img/Dessert/165x163/Dessert_07.jpg', N'/img/Dessert/800X600/Dessert_07.jpg', NULL, NULL, NULL, N'選用巧克力來製作再加入樹梅粒點綴，是少女們的最愛！', N'巧克力慕斯選用70%的巧克力來製作，再加入樹梅粒點綴一些增加口感，蛋糕體本身口感較微濕潤，配上高濃度70%巧克力，一入口有著苦甜滋味，口感並不會太甜，多重層次口感是許多少女們的最愛！')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'玫瑰生乳酪蛋糕', 150, N'/img/Dessert/165x163/Dessert_08.jpg', N'/img/Dessert/800X600/Dessert_08.jpg', NULL, NULL, NULL, N'選擇一塊夢幻系列的玫瑰生乳酪蛋糕，是女孩們甜蜜約會！', N'手工製作的玫瑰生乳酪蛋糕，特別選用法國進口原料與美國品牌的奶油起司製作而成，吃起來帶有玫瑰的甜馨香氣，口感柔細滑順又輕盈，一旁還有劃上浪漫的愛心，讓人好捨不得吃啊！')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'冰淇淋QQ鬆餅', 150, N'/img/Dessert/165x163/Dessert_10.jpg', N'/img/Dessert/800X600/Dessert_10.jpg', NULL, NULL, NULL, N'鬆餅外層酥脆配上ＱＱ麻糬，一口吃下交織出驚喜滋味。', N'法式手工鮮奶油與冰淇淋完美合體，讓鬆餅看起來更是霸氣有風味，鬆餅外層吃起來微微的酥脆，內餡蛋糕體配上ＱＱ麻糬，吃起來是扎實的口感且很厚實，一口吃下交織出驚喜滋味。')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'蛋糕三重奏', 150, N'/img/Dessert/165x163/Dessert_15.jpg', N'/img/Dessert/800X600/Dessert_15.jpg', NULL, NULL, NULL, N'獨特風味的蛋糕以別緻方式呈現是非常受歡迎的甜食。', N'檸檬磅蛋糕使用檸檬與白糖製成，在嘴裡散發檸檬迷人香氣，口味上清香卻不會甜膩。 起司蛋糕嚴選濃郁起司配上酥脆餅皮，大口咬下層層堆疊的起司味，吃起來清爽、柔滑，咬起來著入口即化有著絕妙口感，蜂蜜蛋糕獨特的厚實口感，大口咬下舌尖上散發濃郁的蜂蜜及蛋香，香氣十足直得細細品味！')
INSERT [dbo].[Products] ([ProductName], [UnitPrice], [ProductPhotoS], [ProductPhotoL], [Rating], [ClickRate], [Discontinued], [ProductIntroduction], [ProductDescription]) VALUES (N'核桃燕麥鬆餅', 180, N'/img/Dessert/165x163/Dessert_16.jpg', N'/img/Dessert/800X600/Dessert_16.jpg', NULL, NULL, NULL, N'嚴選燕麥片、原味核桃，口感綿密享受紮實又彈牙的口感！', N'桃燕麥鬆餅嚴選燕麥片、原味核桃，自己調配製作，再擺上鮮奶油與水果。一口咬下嘴裡滿滿的核桃香，吃起來有核桃爽口的堅果香，沾著一旁鮮奶油口感綿密還能享受紮實又彈牙的口感。')
