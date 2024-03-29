USE [Organization]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 24.09.2019 18:55:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 24.09.2019 18:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[FromID] [int] NOT NULL,
	[ToID] [int] NOT NULL,
	[MessageText] [nvarchar](400) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 24.09.2019 18:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrganizationID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationTitle] [nvarchar](250) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[ApplicationDate] [date] NOT NULL,
	[Quota] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[PersonID] [int] NOT NULL,
	[City] [nchar](10) NULL,
	[Explanation] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orgaization] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganizationAndPerson]    Script Date: 24.09.2019 18:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationAndPerson](
	[OrganizationID] [int] NOT NULL,
	[PersonID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NumberofPerson] [int] NOT NULL,
 CONSTRAINT [PK_OrganizationAndPerson] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 24.09.2019 18:56:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](13) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Position] [nvarchar](50) NULL,
 CONSTRAINT [PK__Person__AA2FFB85287CA8B9] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Toplantı')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Eğlence')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Konferans')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Seyehat')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Özel Günler')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (10, N'Sunum')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 
GO
INSERT [dbo].[Message] ([MessageID], [FromID], [ToID], [MessageText], [Date]) VALUES (1, 1, 1, N'asdasdasd', CAST(N'2019-06-02' AS Date))
GO
INSERT [dbo].[Message] ([MessageID], [FromID], [ToID], [MessageText], [Date]) VALUES (2, 1, 1, N'addgadg', CAST(N'2019-06-03' AS Date))
GO
INSERT [dbo].[Message] ([MessageID], [FromID], [ToID], [MessageText], [Date]) VALUES (3, 1, 1, N'sfsaf', CAST(N'2019-06-09' AS Date))
GO
INSERT [dbo].[Message] ([MessageID], [FromID], [ToID], [MessageText], [Date]) VALUES (4, 1, 1, N'kjb', CAST(N'2019-06-09' AS Date))
GO
INSERT [dbo].[Message] ([MessageID], [FromID], [ToID], [MessageText], [Date]) VALUES (1003, 7, 2, N'xzvzxv', CAST(N'2019-06-11' AS Date))
GO
INSERT [dbo].[Message] ([MessageID], [FromID], [ToID], [MessageText], [Date]) VALUES (1004, 1, 1, N'sadsaf', CAST(N'2019-06-11' AS Date))
GO
INSERT [dbo].[Message] ([MessageID], [FromID], [ToID], [MessageText], [Date]) VALUES (1005, 1009, 3, N'asf', CAST(N'2019-09-24' AS Date))
GO
INSERT [dbo].[Message] ([MessageID], [FromID], [ToID], [MessageText], [Date]) VALUES (1006, 1009, 3, N'asf', CAST(N'2019-09-24' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[Organization] ON 
GO
INSERT [dbo].[Organization] ([OrganizationID], [OrganizationTitle], [CreateDate], [ApplicationDate], [Quota], [Image], [CategoryID], [PersonID], [City], [Explanation]) VALUES (4, N'Sefer Oğulları Şirket Toplantısı', CAST(N'2019-05-28' AS Date), CAST(N'2019-05-29' AS Date), 10, N'http://www.etohum.com/blog-tr/wp-content/uploads/2015/05/Business-Meeting.jpg', 1, 1, N'İstanbul  ', N'İş yerindeki işleyiş hakkında görüşme yapılıcaktır')
GO
INSERT [dbo].[Organization] ([OrganizationID], [OrganizationTitle], [CreateDate], [ApplicationDate], [Quota], [Image], [CategoryID], [PersonID], [City], [Explanation]) VALUES (5, N'Şendullar Sinema Günü', CAST(N'2019-05-31' AS Date), CAST(N'2019-07-31' AS Date), 5, N'http://www.bakiniz.com/wp-content/uploads/2012/07/VO-cinema-in-Barcelona-1250x596.jpg', 2, 3, N'Ankara    ', N'"Avengers Infinity War"un ardından pek çok süper kahraman küle dönüşmüştür. Doktor Strange, Gamora, Drax, Mantis, genç Örümcek Adam, Black Panther, Bucky Barnes, Groot, Scarlet Witch, Vision, Star Lord, Maria Hill, The Wasp ve Nick Fury gibi pek çok kahraman, Thanos''un Sonsuzluk Eldiveni''ni ele geçirmesi ve kendi dengesini kurması yüzünden yok olmuştur ve dünya umutsuz haldedir. Dünya üzerinde kalan Black Widow, Kaptan Amerika, Thor ve Hulk kendi yaslarını tutmaktayken, Iron ve Nebula ise kontrol edemedikleri bir uzay gemisinin içinde, uzay boşluğunda sürüklenmektedirler. Süper kahramanlar takımı için işler pek de iyi görünmemektedir. Ancak Kuantum Bölgesi''nden çıkmanın bir yolunu bularak Avengers ekibinin kalan üyelerine giden Ant-Man, yeni bir umut ışığı olacaktır. Daha önce var olduğunu bilmedikleri bölgeler, kahramanlar ve evrenlerin varlığını öğrenen ekip, Thanos''un kurduğu bu çarpık dengeyi değiştirmek ve kendilerinden alınanı geri getirmek için hayatlarının en büyük mücadelesine girişeceklerdir. Hepsi kişisel olarak önem verdikleri şeyleri kaybetmiş olan kahramanlarımız için intikam vakti gelmiştir.')
GO
INSERT [dbo].[Organization] ([OrganizationID], [OrganizationTitle], [CreateDate], [ApplicationDate], [Quota], [Image], [CategoryID], [PersonID], [City], [Explanation]) VALUES (6, N'Mahmut Abi Konuşuyor', CAST(N'2019-05-29' AS Date), CAST(N'2019-05-31' AS Date), 20, N'https://static.theceomagazine.net/wp-content/uploads/2017/01/19195931/power-points-tedtalk.jpg', 3, 2, N'Malatya   ', N'Genellikle akademik bir konunun, uzmanları tarafın­dan değişik boyutlarıyla ele alındığı seri konuşmalardır. Belli bir konuda çeşitli konuşmacıların katılımıyla düzenlenen bilimsel toplantılara sempozyum denir. Sempozyumda konu, alanında uzman kişilerce farklı yönleriyle ele alınır. Sempozyumlar genellikle bilimsel toplantılardır. Bilim, sanat, ekonomi, siyaset vb. gibi bir konuda alanında yetkin kişiler, özel izleyici topluluğuna bildiri sunar.  Sempozyumdan önce düzenleme kurulu oluşturularak konu belirlenir. Başkan ve konuşmacılar saptanır. Başkan, konuyu dinleyicilere sunar, konu ile ilgili gerekli açıklamaları yapar. Konunun kapsamına göre bir veya birkaç oturumda düzenlenen sempozyum sonunda ortaya konan görüşlerin kısa bir özetini yapar. Sempozyum sonunda bildiriler ve alınan kararlar basılarak kamuoyuna duyurulur.')
GO
INSERT [dbo].[Organization] ([OrganizationID], [OrganizationTitle], [CreateDate], [ApplicationDate], [Quota], [Image], [CategoryID], [PersonID], [City], [Explanation]) VALUES (7, N'Haydi Minikler Hep Beraber Lego Yapmaya Var mısınız? ', CAST(N'2019-03-20' AS Date), CAST(N'2019-07-20' AS Date), 5, N'http://www.altis.gen.tr/Upload/E34C34372811A26F2EF9DA4A5C74E5C2.jpg', 4, 4, N'İstanbul  ', N' Hiç LEGO’nun psikolojik faydalarını merak ettiniz mi? Eğlendirici olduğu kadar popüler de olan bu oyun, hayal gücünü desteklemekle birlikte çocukların iyi vakit geçirmelerini sağladığı için en sevilen oyunlar arasında yerini almıştır. LEGO’nun çocuklardaki psikolojik faydalarının kaynağı: onları yeni fikirler üretmeye teşvik etmesidir. Aslında, Maria Teresa Mata isimli psikiyatriste göre, lego gibi farklı nesnelerle serbest bir şekilde inşa etme eyleminin oldukça olumlu etkileri var. Bunlardan biri de, duygusal zekanın gelişimine katkıda bulunması.

Ayrıca, psikoterapi gelişimine de katkıda bulunuyor. Öte yandan, Legolarla oynamak inanışlarını ve duygularını içselleştirmeleri için onlara yardımcı oluyor. Günümüzde birçok çocuk birbirine bağlanabilir parçaları birleştirerek (LEGO) farklı objeler yapmaktan keyif alıyor. Peki, LEGO’nun psikolojik faydaları nelerdir? Şüphesiz ki, LEGO’nun çocuklardaki psikolojik faydaları inanılmaz gelebilir, çünkü hayal ettiğinizden çok daha ilginçler.')
GO
INSERT [dbo].[Organization] ([OrganizationID], [OrganizationTitle], [CreateDate], [ApplicationDate], [Quota], [Image], [CategoryID], [PersonID], [City], [Explanation]) VALUES (8, N'Minik Kaşifler Hep Beraber Dinozorların Gizemli Tarihini Araştıralım mı?', CAST(N'2019-03-21' AS Date), CAST(N'2019-07-21' AS Date), 10, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY59U8tWRwX1DDlMG7QnlPfLGCInyfaiIVsZ8rf0FhtZH-BDkvlg', 5, 5, N'İstanbul  ', N'Bilim insanları dinozorların neslinin tükenmesi ile ilgili en doğru tarihi belirlediklerine inanıyor.  Dinozorların yok olma dönemini tespit etmek üzere uluslararası bir ekip oluşturuldu.  Kaya ve kül örneklerinden yola çıkarak tarih tespitinde bulunan araştırmacılar, 11 bin yıl yanılma payı da bırakarak, yaklaşık 66 milyon 38 bin yıl önce dinozorların neslinin tükendiğini ortaya koydu.  Bu tahmin, dinozorların neslinin tükenmesini tetikleyen olay olarak görülen göktaşı ya da kuyruklu yıldızın dünyaya çarptığı tarih ile de örtüşüyor.  Bu konuda değişik ihtimaller gözönünde bulunduruluyor: Dinozorlar çarpmanın etkisiyle hızla mı yok oldular; yoksa çarpma sırasında zaten sayıları azalmakta mıydı; ya da çarpma dinozorlar ortadan kalktıktan 300 yıl sonra mı gerçekleşti?  Science adlı bilim dergisinde yayımlanan çalışmayı İskoçya, ABD ve Hollanda üniversitelerinden araştırmacılar yürüttü.  Dinozorların yok oluşunu göktaşı çarpması ile açıklayan teoriler ilk kez 1980''de ortaya atıldı.  Meksika''nın Karaip Denizi kıyısındaki Yucatan bölgesinde bulunan 180 km çapındaki kraterin bu çarpmanın etkisiyle oluştuğu düşünülüyor.  Chicxulub adı verilen bu krateri yaratan nesnenin 10 km çapında olduğu ve çarpma sonucu savrulan parçaların hâlâ dünyanın değişik yerlerinde bulunabileceği ifade ediliyor. Bu ve dahasını miniklerle incelemesini yapıcağız.')
GO
INSERT [dbo].[Organization] ([OrganizationID], [OrganizationTitle], [CreateDate], [ApplicationDate], [Quota], [Image], [CategoryID], [PersonID], [City], [Explanation]) VALUES (9, N'Hep Beraber Sherlock Holmes Hikayeleri Dinlemeye Var Mısınız?', CAST(N'2019-02-19' AS Date), CAST(N'2019-06-19' AS Date), 20, N'https://a.wattpad.com/cover/90490223-288-k453626.jpg', 1, 1, N'İstanbul  ', N'Arthur Conan Doyle''un dünyaca ünlü karakteri Sherlock Holmes''ün dinamik yeni uyarlamasında, Holmes ve cesur ortağı Watson en son maceralarına atılıyorlar. Dövüş tekniklerini, efsanevi zekası gibi silah olarak kullanan Holmes, bu macerasında ülkesini yok edebilecek ölümcül bir komployu aydınlatmak için yeni bri düşman ile savaşıyor. Robert Downey Jr. , efsanevi dedektif Sherlock Holmes''ü daha önce hiç yapılmamış bir şekilde canlandırıyor. Jude Law doktor ve bir savaş gazisi olan, Holmes''ün güvenilir çalışma arkadaşı Watson rolünde yer alıyor. Holmes''ü alt eden ilk ve tek kadın olan ve dedektifle halen çalkantılı bir ilişki sürdüren Irene Adler rolünü Rachel McAdams üstleniyor. Mark Strong gizemli yeni düşman Blackwood rolünü oynuyor. Kelly Reilly ise Watson''ın ilgilendiği Mary rolünde yer alıyor. Miniklerle hep beraber bu ve dahasını anlatacağız..')
GO
INSERT [dbo].[Organization] ([OrganizationID], [OrganizationTitle], [CreateDate], [ApplicationDate], [Quota], [Image], [CategoryID], [PersonID], [City], [Explanation]) VALUES (10, N'Motor Festivali', CAST(N'2019-04-20' AS Date), CAST(N'2019-06-06' AS Date), 30, N'https://image.redbull.com/rbcom/010/2015-09-28/1331750373202_2/0010/1/1500/1000/1/rob-warner-rides-the-bds-legends-race-at-antur-stiniog-downhill.jpg', 2, 1, N'Istanbul  ', N'Uzay, Dünya''nın atmosferi dışında ve diğer gök cisimleri arasında yer alan, gök cisimleri hariç, evrenin geri kalan kısmındaki sonsuz olduğu düşünülen boşluğa verilen isimdir. Ortalama sıcaklığı -271 °C, mutlak sıfır noktası ise -274 santigrat derecedir. Tüm Minik Kâşifler, Koşup Toplanın! Haydi uzaya doğru uçuşa geçip Güneş Sistemimiz ve onun dışındakiler hakkında neler öğrenebileceğimize bir bakalım. Bilgi pencerelerini aç ve gezegenlerin neye benzediklerini gör; Güneş’in nasıl durmadan ısı ve ışık ürettiğini anla, uzay yolculuğunun inanılmaz yönlerini keşfet! Keşfedilecek o kadar çok şey var ki!')
GO
SET IDENTITY_INSERT [dbo].[Organization] OFF
GO
SET IDENTITY_INSERT [dbo].[OrganizationAndPerson] ON 
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (4, 2, 1, 3)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (4, 2, 2, 5)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (4, 2, 3, 3)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (4, 2, 4, 3)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (4, 2, 5, 3)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (4, 2, 6, 3)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (5, 2, 7, 3)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (8, 1, 8, 2)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (8, 1, 9, 1)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (4, 1, 10, 0)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (5, 1, 11, 1)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (6, 7, 1008, 2)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (9, 8, 1009, 2)
GO
INSERT [dbo].[OrganizationAndPerson] ([OrganizationID], [PersonID], [ID], [NumberofPerson]) VALUES (5, 1009, 2009, 1)
GO
SET IDENTITY_INSERT [dbo].[OrganizationAndPerson] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [UserName], [Password], [PhoneNumber], [Email], [Photo], [Position]) VALUES (1, N'Göktuğ', N'Erçalışkan', N'goktuger', N'123', NULL, N'goktugercaliskan@gmail.com', N'https://media.licdn.com/dms/image/C5603AQH9sFH1BFxjug/profile-displayphoto-shrink_200_200/0?e=1564617600&v=beta&t=Jg11p3tZg6mfipogHoA3DgvD0E5TIT3JYzTCGvWqNRs', N'Developer')
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [UserName], [Password], [PhoneNumber], [Email], [Photo], [Position]) VALUES (2, N'Ahmet', N'Ahmetoğlu', N'ahmet', N'123', NULL, N'ahmeabi@evdemi.com', N'data:image/jpeg;base64,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', N'CEO')
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [UserName], [Password], [PhoneNumber], [Email], [Photo], [Position]) VALUES (3, N'Mahmut', N'Tuncer', N'doremifalo', N'123', NULL, N'halaybasi@gmail.com', N'https://www.haberler.com/trend/80/mahmut-tuncer_1925_b.jpg', N'CEO')
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [UserName], [Password], [PhoneNumber], [Email], [Photo], [Position]) VALUES (4, N'Serin', N'Gel', N'seringel', N'123', NULL, N'seringel@gmail.com', N'https://isbh.tmgrup.com.tr/sbh/2014/10/30/1414671890796.jpg', N'Model')
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [UserName], [Password], [PhoneNumber], [Email], [Photo], [Position]) VALUES (5, N'kasım', N'kasımoglu', N'kasım', N'123', NULL, N'kasımabi@evdemi.com', N'http://media.sinematurk.com/person/1/31/00067f837cd2/ata-demirer-resimleri-12.jpg', N'Developer')
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [UserName], [Password], [PhoneNumber], [Email], [Photo], [Position]) VALUES (6, N'hilmi', N'ercaliskan', N'hilmier', N'123', NULL, N'hilmi26@hotmail.com', NULL, NULL)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [UserName], [Password], [PhoneNumber], [Email], [Photo], [Position]) VALUES (7, N'mahmut', N'mahmutoglu', N'mahmut', N'123', NULL, N'mahmut@gmail.com', NULL, NULL)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [UserName], [Password], [PhoneNumber], [Email], [Photo], [Position]) VALUES (8, N'onur', N'sozen', N'can', N'123', NULL, N'cansozen@gmail.com', NULL, NULL)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [UserName], [Password], [PhoneNumber], [Email], [Photo], [Position]) VALUES (1008, N'baki', N'furat', N'bakirulle', N'1234', NULL, N'bakifurat@gmail.com', NULL, NULL)
GO
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [UserName], [Password], [PhoneNumber], [Email], [Photo], [Position]) VALUES (1009, N'admin', N'admin', N'admin', N'123', NULL, N'admin@admin.com', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Person__C9F2845639088A43]    Script Date: 24.09.2019 18:56:00 ******/
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [UQ__Person__C9F2845639088A43] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Person] FOREIGN KEY([FromID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Person]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Person1] FOREIGN KEY([ToID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Person1]
GO
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_Category]
GO
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Person1] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_Person1]
GO
ALTER TABLE [dbo].[OrganizationAndPerson]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationAndPerson_Organization1] FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
ALTER TABLE [dbo].[OrganizationAndPerson] CHECK CONSTRAINT [FK_OrganizationAndPerson_Organization1]
GO
ALTER TABLE [dbo].[OrganizationAndPerson]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationAndPerson_Person1] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[OrganizationAndPerson] CHECK CONSTRAINT [FK_OrganizationAndPerson_Person1]
GO
