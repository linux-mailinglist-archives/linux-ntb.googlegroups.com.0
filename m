Return-Path: <linux-ntb+bncBCELXQMOTUFBBV4H7TTAKGQE634CWNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C139B21DEA
	for <lists+linux-ntb@lfdr.de>; Fri, 17 May 2019 20:56:24 +0200 (CEST)
Received: by mail-yw1-xc3e.google.com with SMTP id c4sf7239255ywd.0
        for <lists+linux-ntb@lfdr.de>; Fri, 17 May 2019 11:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V3naApuzcYYmV3NRsybTXDTPShfgvDrWR66edW8ex5Y=;
        b=aBh6RJKJ13mICFWixRiFq5Ex/tZjfSvxn87aann+MKrkxQa9l2/g7Mboxij70YqaQ6
         RWOoTtfH48wKF8Z+PizNcAmpTtlGAVQggjSBn8iPUs41Pgu5zn7JLECWSjHdPa07GqH7
         Kh93NeqzSSgW9EENdKiL1U86ptT7KLcoVuY7dhLUdiotTVgHP/woizhrWjjdlCSz1xat
         kcNzez6QGpEsqGqSjiPOTfb3SqUFWmQ27YliZkC5BESSZbkWANqEaN2ldrzFCyfyMnR7
         k6S3zOYkK3qYmqof1Dl6oXDHe1AZlpGI8GlpdxYtp52c+mlxuCaOBBCoRyIY/Yc1KTJJ
         W67A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V3naApuzcYYmV3NRsybTXDTPShfgvDrWR66edW8ex5Y=;
        b=RHQTYiUF0NW47D0RFCRtV5yGoBn+cu//zIcDcSocp21XqvzSJuCuDmkDVamvhZXwCe
         Zs+VIdxqKr22MWWAKkpHdaJRwDMi4DQR4XLWPUDnJAquqGG6JsNK1aaWnY8oGid2W25R
         PLRrBzjYjuSG47bYa5u7Yzkmj/c6C/x0CjaYSOKGPQCl5FzGmkX6E+KPxEVcIizYdp9w
         i6FtPFFLl3estMcbIS75GONSZoGHAAjaQlDZRbPNvuglSevCLO85J4H9A3cHSW7JbB0p
         DUZRY8ighCvsYEYeofUGAMR22gUnk2VujC5czXUajHAOwbV64geFaKNSEQ1eXVMjIp8m
         tXLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V3naApuzcYYmV3NRsybTXDTPShfgvDrWR66edW8ex5Y=;
        b=f2cIhIEbxtPqMnCJCFOVPe/JNC5PB7Yj78m73tbLDr98hfzB/zeOlj0uBG3kIvxyzi
         5sLMD3buHhkPd90Cyq3VGeqbcUuYxqDBJgCmn7wzxejVFZNnogQCIjeqX6umHwS3LdCz
         OO9iztmsgWr2lRu++h/uevBrp7Cx3Ur5RDEAnwmEw+qJhKWWa8jHrTvLoVZDpKhygC/J
         8Kci4PSyUOrwGLE4/wI0isjWpSb3q1YO/J46VO8SO8TgeCCvVT6sbOwIEQbDN1em08vs
         6gT+Y2vRcEonI6AIDZ9MxxLT+WjSvjayEczrKpwRzJxhcwPAoeoB3Izyf5doFd2dTaRT
         U9qQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX604kM8snkwK4vPeJVEH1crh+Ux5jhePs6Sv5ooLabFfGjeUJV
	VYtUB/VlWKqfgvvkFkwaQkk=
X-Google-Smtp-Source: APXvYqw+S49nxCPS+EQejRD1S/vEEowtNdthREACypSeWkO2D3Hh8n0s/dDvqmiNW9YHV3bq+pvNPQ==
X-Received: by 2002:a81:5758:: with SMTP id l85mr25708480ywb.96.1558119383555;
        Fri, 17 May 2019 11:56:23 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:3b15:: with SMTP id i21ls628111ywa.4.gmail; Fri, 17 May
 2019 11:56:23 -0700 (PDT)
X-Received: by 2002:a0d:d5c1:: with SMTP id x184mr5208178ywd.88.1558119383036;
        Fri, 17 May 2019 11:56:23 -0700 (PDT)
Date: Fri, 17 May 2019 11:56:22 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <7e739579-5d8f-4a70-a9ff-4a205ceafd35@googlegroups.com>
Subject: Sales force Developer//Arizona, NJ//6 months+//Direct Client
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1200_1342035293.1558119382668"
X-Original-Sender: prasanth@genisists.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

------=_Part_1200_1342035293.1558119382668
Content-Type: multipart/alternative; 
	boundary="----=_Part_1201_569408206.1558119382669"

------=_Part_1201_569408206.1558119382669
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*Hi,*

  WE HAVE URGENT REQUIREMENT ON SALESFORCE DEVELOPEMENT

*Role: Sales force Developer*

*Contract: 6 months+*

*Location: Arizona/NJ*

*Client : Direct*



Experience:

=C2=B7        8+ years in Software Development

=C2=B7        5+ years experience in Cloud Technology and an in-depth=20
understanding of the primary concepts and terminology

=C2=B7        5+ years working on Salesforce applications (Lightning is a=
=20
must-have.)

=C2=B7        5+ years experience using Force.com (Advanced understanding o=
f=20
SFDC Triggers and Controllers, VF page development, sObjects, SOQL etc)

=C2=B7        3+ year hands-on experience in an Agile development team

=C2=B7        Experience in object oriented development is a must

=C2=B7        Experience with SOAP and REST Web Services and integration us=
ing=20
APIs is a must

=C2=B7        Experience with source control, branching strategies and usin=
g=20
code repositories a must

=C2=B7        Salesforce certification preferred

=C2=B7        Background in leveraging ETL products and tools (e.g. IBM=20
DataStage, Informatica, etc.) for data management is preferred

=C2=B7        Previous experience of Test Driven development is preferred

=C2=B7        Previous experience in a lead role within a team of engineers

=C2=B7        Advanced understanding of the Salesforce platform and its pri=
mary=20
functions.

=C2=B7        Ability to learn new technologies and embrace the challenge=
=20
learning presents

=C2=B7        A self-starter, comfortable having conversations with busines=
s=20
partners

=C2=B7        Robust and current knowledge of web standards, emerging=20
technologies, and trends

=C2=B7        Ability to think abstractly and deal with ambiguous/under-def=
ined=20
problems

=C2=B7        An excellent communicator, both verbally and written.


--=20


*Thanks & Regards,*


*Prashanth*


*US IT  RECRUITER*


*Email : prasanth@genisists.com <prasanth@genisists.com>*

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/7e739579-5d8f-4a70-a9ff-4a205ceafd35%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_1201_569408206.1558119382669
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size: small; color: rgb(80, 0, 80);"><b=
 style=3D"color: rgb(0, 0, 0); font-family: calibri, sans-serif; font-size:=
 16px;"><span style=3D"font-size: 10pt;">Hi,</span></b></div><div style=3D"=
font-size: small; color: rgb(80, 0, 80);"><br></div><div style=3D"font-size=
: small; color: rgb(80, 0, 80);">=C2=A0 WE HAVE URGENT REQUIREMENT ON SALES=
FORCE DEVELOPEMENT</div><div style=3D"font-size: small; color: rgb(80, 0, 8=
0);"><br></div><div style=3D"font-size: small; color: rgb(80, 0, 80);"><b s=
tyle=3D"color: rgb(0, 0, 0); font-family: calibri, sans-serif; font-size: 1=
6px;"><span style=3D"font-size: 10pt;">Role:=C2=A0<span class=3D"m_-1155685=
038241058202gmail-m_4577286835665278959gmail-m_-3617367055693002750gmail-m_=
1197939042164737538gmail-m_7831662915267671358gmail-m_-4649125778316126665g=
mail-m_-6535662964642997645gmail-m_8311119672779223321gmail-m_1203184779435=
000045gmail-m_4233678061687674713gmail-m_-7137228362617844029gmail-m_-56478=
89852251248711gmail-m_2753227482665095594gmail-m_-1037449193402314044gmail-=
m_-3895265656778506888gmail-m_-313985446772630310gmail-m_882316146557227055=
4gmail-m_-7629614920467543445gmail-m_3445800748115529143gmail-m_-9197846599=
832276640gmail-m_554707190948509692gmail-m_-3761238594264118955gmail-m_9165=
594515164538315gmail-m_-7597693910616208655gmail-m_-5903933297811760969gmai=
l-m_4328774680956177760gmail-m_-8775497534520499584gmail-m_6826463435718794=
682gmail-m_7115115884877772224gmail-m_2937760932145877328gmail-m_5310238296=
6683800gmail-m_6842423228535654195gmail-m_2426983295833118265gmail-m_860043=
0091274926593gmail-m_7219486769076401481gmail-m_-8050663548362900597gmail-m=
_-7971618678589061367gmail-m_4526617252893090496gmail-m_-734207253089664975=
gmail-m_8155549805505382074gmail-m_-3515858725330822112gmail-m_-58904460379=
14558994gmail-m_1446635719530071734gmail-m_-4915322161281916452gmail-m_-268=
6521444485548105gmail-m_-5238471462798907764gmail-m_4010694501743954003gmai=
l-m_6822685048469051903gmail-m_7526183937121038946gmail-m_-5482274901546357=
994gmail-m_4604628505471627949gmail-m_-1076403937383663230gmail-m_-89187770=
51927531192gmail-m_2462519016072981441gmail-m_-6175526564724053728gmail-m_-=
978146467266152403gmail-m_-5861576390243122755gmail-m_5601861228814754795gm=
ail-m_5995365520759566409gmail-m_2401087913272373556gmail-m_-35767548970805=
5300gmail-m_-2429273527374036699gmail-m_-6697410221025880987gmail-m_-550109=
2470957872824gmail-m_-6610500603403424959gmail-m_-4210249493478925412gmail-=
m_-5215019126395805672gmail-m_-1878991108353854706gmail-m_60550023296202158=
5gmail-m_3898064249251623083gmail-m_-7090479241767222662gmail-m_-9131135023=
909540737gmail-m_3327106964112356296gmail-m_1336413786946469149gmail-il">Sa=
les force</span>=C2=A0Developer</span></b><br></div><div style=3D"font-size=
: small; color: rgb(80, 0, 80);"><p style=3D"font-family: calibri, sans-ser=
if; font-size: 15px; margin: 0in 0in 0.0001pt;"><span style=3D"font-size: 1=
2pt;"><b><span style=3D"font-size: 10pt;"><font color=3D"#000000">Contract:=
 6 months+</font></span></b></span></p><p style=3D"font-family: calibri, sa=
ns-serif; font-size: 15px; margin: 0in 0in 0.0001pt;"><span style=3D"font-s=
ize: 12pt;"><b><span style=3D"font-size: 10pt;"><font color=3D"#000000">Loc=
ation: Arizona/NJ</font></span></b></span></p><p style=3D"font-family: cali=
bri, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt;"><span style=3D=
"font-size: 12pt;"><b><span style=3D"font-size: 10pt;"><font color=3D"#0000=
00">Client : Direct</font></span></b></span></p><p style=3D"color: rgb(51, =
51, 51); font-family: calibri, sans-serif; font-size: 15px; margin: 0in 0in=
 0.0001pt;"><br></p><p style=3D"color: rgb(51, 51, 51); font-family: calibr=
i, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt;"><br></p><p style=
=3D"color: rgb(51, 51, 51); font-family: calibri, sans-serif; font-size: 15=
px; margin: 0in 0in 0.0001pt;"><span style=3D"color: rgb(0, 0, 0); font-siz=
e: 10pt; background-color: rgb(249, 249, 249);">Experience:</span><br></p><=
p style=3D"font-family: calibri, sans-serif; font-size: 15px; margin: 0in 0=
in 0.0001pt;"><span style=3D"font-size: 12pt;"><span style=3D"background: r=
gb(249, 249, 249);"><span style=3D"font-size: 10pt;"><font color=3D"#000000=
">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in Software Development</font>=
</span></span></span></p><p style=3D"font-family: calibri, sans-serif; font=
-size: 15px; margin: 0in 0in 0.0001pt;"><span style=3D"font-size: 12pt;"><s=
pan style=3D"background: rgb(249, 249, 249);"><span style=3D"font-size: 10p=
t;"><font color=3D"#000000">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years expe=
rience in Cloud Technology and an in-depth understanding of the primary con=
cepts and terminology</font></span></span></span></p><p style=3D"font-famil=
y: calibri, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt;"><span s=
tyle=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><=
span style=3D"font-size: 10pt;"><font color=3D"#000000">=C2=B7=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 5+ years working on=C2=A0<span class=3D"m_-11556850382410582=
02gmail-m_4577286835665278959gmail-m_-3617367055693002750gmail-m_1197939042=
164737538gmail-m_7831662915267671358gmail-m_-4649125778316126665gmail-m_-65=
35662964642997645gmail-m_8311119672779223321gmail-m_1203184779435000045gmai=
l-m_4233678061687674713gmail-m_-7137228362617844029gmail-m_-564788985225124=
8711gmail-m_2753227482665095594gmail-m_-1037449193402314044gmail-m_-3895265=
656778506888gmail-m_-313985446772630310gmail-m_8823161465572270554gmail-m_-=
7629614920467543445gmail-m_3445800748115529143gmail-m_-9197846599832276640g=
mail-m_554707190948509692gmail-m_-3761238594264118955gmail-m_91655945151645=
38315gmail-m_-7597693910616208655gmail-m_-5903933297811760969gmail-m_432877=
4680956177760gmail-m_-8775497534520499584gmail-m_6826463435718794682gmail-m=
_7115115884877772224gmail-m_2937760932145877328gmail-m_53102382966683800gma=
il-m_6842423228535654195gmail-m_2426983295833118265gmail-m_8600430091274926=
593gmail-m_7219486769076401481gmail-m_-8050663548362900597gmail-m_-79716186=
78589061367gmail-m_4526617252893090496gmail-m_-734207253089664975gmail-m_81=
55549805505382074gmail-m_-3515858725330822112gmail-m_-5890446037914558994gm=
ail-m_1446635719530071734gmail-m_-4915322161281916452gmail-m_-2686521444485=
548105gmail-m_-5238471462798907764gmail-m_4010694501743954003gmail-m_682268=
5048469051903gmail-m_7526183937121038946gmail-m_-5482274901546357994gmail-m=
_4604628505471627949gmail-m_-1076403937383663230gmail-m_-891877705192753119=
2gmail-m_2462519016072981441gmail-m_-6175526564724053728gmail-m_-9781464672=
66152403gmail-m_-5861576390243122755gmail-m_5601861228814754795gmail-m_5995=
365520759566409gmail-m_2401087913272373556gmail-m_-357675489708055300gmail-=
m_-2429273527374036699gmail-m_-6697410221025880987gmail-m_-5501092470957872=
824gmail-m_-6610500603403424959gmail-m_-4210249493478925412gmail-m_-5215019=
126395805672gmail-m_-1878991108353854706gmail-m_605500232962021585gmail-m_3=
898064249251623083gmail-m_-7090479241767222662gmail-m_-9131135023909540737g=
mail-m_3327106964112356296gmail-m_1336413786946469149gmail-il">Salesforce</=
span>=C2=A0applications (<span class=3D"m_-1155685038241058202gmail-m_45772=
86835665278959gmail-m_-3617367055693002750gmail-m_1197939042164737538gmail-=
m_7831662915267671358gmail-m_-4649125778316126665gmail-m_-65356629646429976=
45gmail-m_8311119672779223321gmail-m_1203184779435000045gmail-m_42336780616=
87674713gmail-m_-7137228362617844029gmail-m_-5647889852251248711gmail-m_275=
3227482665095594gmail-m_-1037449193402314044gmail-m_-3895265656778506888gma=
il-m_-313985446772630310gmail-m_8823161465572270554gmail-m_-762961492046754=
3445gmail-m_3445800748115529143gmail-m_-9197846599832276640gmail-m_55470719=
0948509692gmail-m_-3761238594264118955gmail-m_9165594515164538315gmail-m_-7=
597693910616208655gmail-m_-5903933297811760969gmail-m_4328774680956177760gm=
ail-m_-8775497534520499584gmail-m_6826463435718794682gmail-m_71151158848777=
72224gmail-m_2937760932145877328gmail-m_53102382966683800gmail-m_6842423228=
535654195gmail-m_2426983295833118265gmail-m_8600430091274926593gmail-m_7219=
486769076401481gmail-m_-8050663548362900597gmail-m_-7971618678589061367gmai=
l-m_4526617252893090496gmail-m_-734207253089664975gmail-m_81555498055053820=
74gmail-m_-3515858725330822112gmail-m_-5890446037914558994gmail-m_144663571=
9530071734gmail-m_-4915322161281916452gmail-m_-2686521444485548105gmail-m_-=
5238471462798907764gmail-m_4010694501743954003gmail-m_6822685048469051903gm=
ail-m_7526183937121038946gmail-m_-5482274901546357994gmail-m_46046285054716=
27949gmail-m_-1076403937383663230gmail-m_-8918777051927531192gmail-m_246251=
9016072981441gmail-m_-6175526564724053728gmail-m_-978146467266152403gmail-m=
_-5861576390243122755gmail-m_5601861228814754795gmail-m_5995365520759566409=
gmail-m_2401087913272373556gmail-m_-357675489708055300gmail-m_-242927352737=
4036699gmail-m_-6697410221025880987gmail-m_-5501092470957872824gmail-m_-661=
0500603403424959gmail-m_-4210249493478925412gmail-m_-5215019126395805672gma=
il-m_-1878991108353854706gmail-m_605500232962021585gmail-m_3898064249251623=
083gmail-m_-7090479241767222662gmail-m_-9131135023909540737gmail-m_33271069=
64112356296gmail-m_1336413786946469149gmail-il">Lightning</span>=C2=A0is a =
must-have.)</font></span></span></span></p><p style=3D"font-family: calibri=
, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt;"><span style=3D"fo=
nt-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=
=3D"font-size: 10pt;"><font color=3D"#000000">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 5+ years experience using Force.com (Advanced understanding of SFDC =
Triggers and Controllers, VF page development, sObjects, SOQL etc)</font></=
span></span></span></p><p style=3D"font-family: calibri, sans-serif; font-s=
ize: 15px; margin: 0in 0in 0.0001pt;"><span style=3D"font-size: 12pt;"><spa=
n style=3D"background: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;=
"><font color=3D"#000000">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 3+ year hands-o=
n experience in an Agile development team</font></span></span></span></p><p=
 style=3D"font-family: calibri, sans-serif; font-size: 15px; margin: 0in 0i=
n 0.0001pt;"><span style=3D"font-size: 12pt;"><span style=3D"background: rg=
b(249, 249, 249);"><span style=3D"font-size: 10pt;"><font color=3D"#000000"=
>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience in object oriented developmen=
t is a must</font></span></span></span></p><p style=3D"font-family: calibri=
, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt;"><span style=3D"fo=
nt-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=
=3D"font-size: 10pt;"><font color=3D"#000000">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Experience with SOAP and REST Web Services and integration using API=
s is a must</font></span></span></span></p><p style=3D"font-family: calibri=
, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt;"><span style=3D"fo=
nt-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=
=3D"font-size: 10pt;"><font color=3D"#000000">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Experience with source control, branching strategies and using code =
repositories a must</font></span></span></span></p><p style=3D"font-family:=
 calibri, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt;"><span sty=
le=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><sp=
an style=3D"font-size: 10pt;"><font color=3D"#000000">=C2=B7=C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0<span class=3D"m_-1155685038241058202gmail-m_45772868356=
65278959gmail-m_-3617367055693002750gmail-m_1197939042164737538gmail-m_7831=
662915267671358gmail-m_-4649125778316126665gmail-m_-6535662964642997645gmai=
l-m_8311119672779223321gmail-m_1203184779435000045gmail-m_42336780616876747=
13gmail-m_-7137228362617844029gmail-m_-5647889852251248711gmail-m_275322748=
2665095594gmail-m_-1037449193402314044gmail-m_-3895265656778506888gmail-m_-=
313985446772630310gmail-m_8823161465572270554gmail-m_-7629614920467543445gm=
ail-m_3445800748115529143gmail-m_-9197846599832276640gmail-m_55470719094850=
9692gmail-m_-3761238594264118955gmail-m_9165594515164538315gmail-m_-7597693=
910616208655gmail-m_-5903933297811760969gmail-m_4328774680956177760gmail-m_=
-8775497534520499584gmail-m_6826463435718794682gmail-m_7115115884877772224g=
mail-m_2937760932145877328gmail-m_53102382966683800gmail-m_6842423228535654=
195gmail-m_2426983295833118265gmail-m_8600430091274926593gmail-m_7219486769=
076401481gmail-m_-8050663548362900597gmail-m_-7971618678589061367gmail-m_45=
26617252893090496gmail-m_-734207253089664975gmail-m_8155549805505382074gmai=
l-m_-3515858725330822112gmail-m_-5890446037914558994gmail-m_144663571953007=
1734gmail-m_-4915322161281916452gmail-m_-2686521444485548105gmail-m_-523847=
1462798907764gmail-m_4010694501743954003gmail-m_6822685048469051903gmail-m_=
7526183937121038946gmail-m_-5482274901546357994gmail-m_4604628505471627949g=
mail-m_-1076403937383663230gmail-m_-8918777051927531192gmail-m_246251901607=
2981441gmail-m_-6175526564724053728gmail-m_-978146467266152403gmail-m_-5861=
576390243122755gmail-m_5601861228814754795gmail-m_5995365520759566409gmail-=
m_2401087913272373556gmail-m_-357675489708055300gmail-m_-242927352737403669=
9gmail-m_-6697410221025880987gmail-m_-5501092470957872824gmail-m_-661050060=
3403424959gmail-m_-4210249493478925412gmail-m_-5215019126395805672gmail-m_-=
1878991108353854706gmail-m_605500232962021585gmail-m_3898064249251623083gma=
il-m_-7090479241767222662gmail-m_-9131135023909540737gmail-m_33271069641123=
56296gmail-m_1336413786946469149gmail-il">Salesforce</span>=C2=A0certificat=
ion preferred</font></span></span></span></p><p style=3D"font-family: calib=
ri, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt;"><span style=3D"=
font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span sty=
le=3D"font-size: 10pt;"><font color=3D"#000000">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Background in leveraging ETL products and tools (e.g. IBM DataStage,=
 Informatica, etc.) for data management is preferred</font></span></span></=
span></p><p style=3D"font-family: calibri, sans-serif; font-size: 15px; mar=
gin: 0in 0in 0.0001pt;"><span style=3D"font-size: 12pt;"><span style=3D"bac=
kground: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><font color=
=3D"#000000">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience of Test =
Driven development is preferred</font></span></span></span></p><p style=3D"=
font-family: calibri, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt=
;"><span style=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249=
, 249);"><span style=3D"font-size: 10pt;"><font color=3D"#000000">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience in a lead role within a team o=
f engineers</font></span></span></span></p><p style=3D"font-family: calibri=
, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt;"><span style=3D"fo=
nt-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=
=3D"font-size: 10pt;"><font color=3D"#000000">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Advanced understanding of the=C2=A0<span class=3D"m_-115568503824105=
8202gmail-m_4577286835665278959gmail-m_-3617367055693002750gmail-m_11979390=
42164737538gmail-m_7831662915267671358gmail-m_-4649125778316126665gmail-m_-=
6535662964642997645gmail-m_8311119672779223321gmail-m_1203184779435000045gm=
ail-m_4233678061687674713gmail-m_-7137228362617844029gmail-m_-5647889852251=
248711gmail-m_2753227482665095594gmail-m_-1037449193402314044gmail-m_-38952=
65656778506888gmail-m_-313985446772630310gmail-m_8823161465572270554gmail-m=
_-7629614920467543445gmail-m_3445800748115529143gmail-m_-919784659983227664=
0gmail-m_554707190948509692gmail-m_-3761238594264118955gmail-m_916559451516=
4538315gmail-m_-7597693910616208655gmail-m_-5903933297811760969gmail-m_4328=
774680956177760gmail-m_-8775497534520499584gmail-m_6826463435718794682gmail=
-m_7115115884877772224gmail-m_2937760932145877328gmail-m_53102382966683800g=
mail-m_6842423228535654195gmail-m_2426983295833118265gmail-m_86004300912749=
26593gmail-m_7219486769076401481gmail-m_-8050663548362900597gmail-m_-797161=
8678589061367gmail-m_4526617252893090496gmail-m_-734207253089664975gmail-m_=
8155549805505382074gmail-m_-3515858725330822112gmail-m_-5890446037914558994=
gmail-m_1446635719530071734gmail-m_-4915322161281916452gmail-m_-26865214444=
85548105gmail-m_-5238471462798907764gmail-m_4010694501743954003gmail-m_6822=
685048469051903gmail-m_7526183937121038946gmail-m_-5482274901546357994gmail=
-m_4604628505471627949gmail-m_-1076403937383663230gmail-m_-8918777051927531=
192gmail-m_2462519016072981441gmail-m_-6175526564724053728gmail-m_-97814646=
7266152403gmail-m_-5861576390243122755gmail-m_5601861228814754795gmail-m_59=
95365520759566409gmail-m_2401087913272373556gmail-m_-357675489708055300gmai=
l-m_-2429273527374036699gmail-m_-6697410221025880987gmail-m_-55010924709578=
72824gmail-m_-6610500603403424959gmail-m_-4210249493478925412gmail-m_-52150=
19126395805672gmail-m_-1878991108353854706gmail-m_605500232962021585gmail-m=
_3898064249251623083gmail-m_-7090479241767222662gmail-m_-913113502390954073=
7gmail-m_3327106964112356296gmail-m_1336413786946469149gmail-il">Salesforce=
</span>=C2=A0platform and its primary functions.</font></span></span></span=
></p><p style=3D"font-family: calibri, sans-serif; font-size: 15px; margin:=
 0in 0in 0.0001pt;"><span style=3D"font-size: 12pt;"><span style=3D"backgro=
und: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><font color=3D"#=
000000">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability to learn new technologies=
 and embrace the challenge learning presents</font></span></span></span></p=
><p style=3D"font-family: calibri, sans-serif; font-size: 15px; margin: 0in=
 0in 0.0001pt;"><span style=3D"font-size: 12pt;"><span style=3D"background:=
 rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><font color=3D"#0000=
00">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 A self-starter, comfortable having co=
nversations with business partners</font></span></span></span></p><p style=
=3D"font-family: calibri, sans-serif; font-size: 15px; margin: 0in 0in 0.00=
01pt;"><span style=3D"font-size: 12pt;"><span style=3D"background: rgb(249,=
 249, 249);"><span style=3D"font-size: 10pt;"><font color=3D"#000000">=C2=
=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust and current knowledge of web standard=
s, emerging technologies, and trends</font></span></span></span></p><p styl=
e=3D"font-family: calibri, sans-serif; font-size: 15px; margin: 0in 0in 0.0=
001pt;"><span style=3D"font-size: 12pt;"><span style=3D"background: rgb(249=
, 249, 249);"><span style=3D"font-size: 10pt;"><font color=3D"#000000">=C2=
=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability to think abstractly and deal with am=
biguous/under-defined problems</font></span></span></span></p><p style=3D"f=
ont-family: calibri, sans-serif; font-size: 15px; margin: 0in 0in 0.0001pt;=
"><span style=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249,=
 249);"><span style=3D"font-size: 10pt;"><font color=3D"#000000">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 An excellent communicator, both verbally and writt=
en.</font></span></span></span></p><p style=3D"font-family: calibri, sans-s=
erif; font-size: 15px; margin: 0in 0in 0.0001pt;"><span style=3D"font-size:=
 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=3D"font=
-size: 10pt;"><font color=3D"#000000"><br></font></span></span></span></p><=
div><span style=3D"color: rgb(34, 34, 34);">--=C2=A0</span><br style=3D"col=
or: rgb(34, 34, 34);"><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature" style=3D"color: rgb(34, 34, 34);"><div dir=3D"ltr"=
><p style=3D"font-family: arial, helvetica, sans-serif;"><b><i><span style=
=3D"line-height: 14.95px;"><br></span></i></b></p><p style=3D"font-family: =
arial, helvetica, sans-serif;"><b><i><span style=3D"line-height: 14.95px;">=
Thanks &amp; Regards,</span></i></b><span style=3D"line-height: 14.95px;"><=
/span></p><p style=3D"font-family: arial, helvetica, sans-serif;"><b><i><sp=
an style=3D"line-height: 14.95px;"><br></span></i></b></p><p style=3D"font-=
family: arial, helvetica, sans-serif;"><b><i><span style=3D"line-height: 14=
.95px;">Prashanth</span></i></b></p><p style=3D"font-family: arial, helveti=
ca, sans-serif;"><b><i><span style=3D"line-height: 14.95px;"><b><i><span st=
yle=3D"line-height: 14.95px;"><br></span></i></b></span></i></b></p><p styl=
e=3D"font-family: arial, helvetica, sans-serif;"><b><i><span style=3D"line-=
height: 14.95px;"></span></i></b><b><i><span style=3D"line-height: 14.95px;=
"><b><i><span style=3D"line-height: 14.95px;">US IT=C2=A0 RECRUITER</span><=
/i></b><span style=3D"line-height: 14.95px;"></span></span></i></b></p><p><=
font face=3D"arial, helvetica, sans-serif"><b><i><br></i></b></font></p><p>=
<font face=3D"arial, helvetica, sans-serif"><b><i>Email :=C2=A0<a href=3D"m=
ailto:prasanth@genisists.com" target=3D"_blank" data-mt-detrack-inspected=
=3D"true" style=3D"color: rgb(17, 85, 204);">prasanth@genisists.com</a></i>=
</b></font></p><div style=3D"font-family: arial, helvetica, sans-serif;"><a=
 data-mt-detrack-inspected=3D"true"><br></a></div><div style=3D"font-family=
: arial, helvetica, sans-serif;"><a data-mt-detrack-inspected=3D"true"><img=
 src=3D"https://ci3.googleusercontent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6=
h1MId3mNnYNVp0FhTmwRvKw4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta=
3pXcuwv4pCzpxtpwBgNsbnemBgpHaJdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa=
-dgKUoG8s9GZVwfTdzwY8rOrpS2MX5Csw=3Ds0-d-e1-ft#https://docs.google.com/uc?e=
xport=3Ddownload&amp;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0By=
EOHs6JWBvzS25CV0lwa2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" width=3D"200" height=3D"5=
8"></a></div></div></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To post to this group, send email to <a href=3D"mailto:linux-ntb@googlegrou=
ps.com">linux-ntb@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/7e739579-5d8f-4a70-a9ff-4a205ceafd35%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/7e739579-5d8f-4a70-a9ff-4a205ceafd35%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_1201_569408206.1558119382669--

------=_Part_1200_1342035293.1558119382668--
