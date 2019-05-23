Return-Path: <linux-ntb+bncBCELXQMOTUFBBLWFTLTQKGQEESVGAJA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B07A127E4F
	for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:39:59 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id y144sf5289982ywg.16
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 06:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QQI0paFH9Yay2Ew+9SWHgYVK4vZblsXMXK6nLuM+JAg=;
        b=smMvWBrHMSIsMW3Fy4rlqrHinotOiDDnkUrpcJ4jK8COTWLMYRriS32/U9Hsd6d9AW
         iaCsAGOJVnst2n0429Zr0LhhaNmPlKReid9UHr0Cpplv+bx14SPbKqURqyvbnE9wSd03
         /mmHw/HshNmVTLVeFXa1/bEam5wkbHEXbdNNs6ezvpswRQS2ZIvjeYvILifQ9JvZOGu2
         +jNP6QOY0udJr3DCGNxiiwRY6uAVzBBsq1/Ah+5889UAqZO/X2oHSgs/RnHhfKiC7s2X
         mB31mzwfF64dfMl6RaFccLvO86Yl5P/snjSSGDC+e4AIMyrgxAubF8mjc2boaNXfo9wo
         pwNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QQI0paFH9Yay2Ew+9SWHgYVK4vZblsXMXK6nLuM+JAg=;
        b=hZ3Fu67lgzENgEM7ChuQevluT96h+ZCZ+uWiFbJFvYtH3h1/x5wip6jFP7ojnxexmv
         3FFShmC+BxmCAzLXRp8D0ba/RxyqECN3ZW+ehI9GelgWh4BF5wA6ehcZRLit5LW2we14
         lZN5TnvpTUn467AXbtpr1LoK2Dt///v9zo6swIUuVQD4knzqR22rViJPWWINSjD4dSyc
         wIMwSthc2jOSuLnpF/SENY330mXljq9OMR0dc0Xdt33TBuTeLK559QpCVDlFLxS7JNn8
         SkL2aJvGGHla5Vz4/MT/CkcwSNTqsYHGXUSSYqMCDgHUhG9zvCY0UIAd/5StXFsuhSLV
         FhJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QQI0paFH9Yay2Ew+9SWHgYVK4vZblsXMXK6nLuM+JAg=;
        b=pxhLi0+hoUFhW8x51JAwtg6Uz0SbH3oT4NGnR5/mI0iXSx2qocpB/hP8JiaUZzG9Vy
         jDbkIUN5X0cXDtwZ9luL692ynk426W8yvulXqFff10wPhBdO6P3/NhumO3DNSUftFXPn
         bE4Tw4B50uT7j5IiG1eh38+WagWxSf0XxwLGnfgLUHoS8IXJmqFiOn593sD/P7IckzPU
         OazQM5cqeCnSOAxZdKCeCiFBMaYV/2ULTtjLxejlU4LZUqKTn3FmOSqArCGCM+eORfMO
         KFXFqun+GMK2/3wBIXIfAnb2jsRMliHFs7LexZDtTIqxe7T30J2Y1KlvJoyBgucBbQ0g
         ex+A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXabQN3TnE+cJ/dIoIV8IMlYRQX6oROyw4ml1XWsy9SQzYMN2a4
	lPV4N22nvrDaTDzHM0n0zwE=
X-Google-Smtp-Source: APXvYqwyD2TGZDZU5a1mtXi2g3ofx/GRbMah7h2P5Eh0PRb1Ynxq1iLzfVPPHG44Egl9bn4R1L7WuQ==
X-Received: by 2002:a25:8e04:: with SMTP id p4mr19208357ybl.156.1558618798599;
        Thu, 23 May 2019 06:39:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:c041:: with SMTP id c62ls777852ybf.0.gmail; Thu, 23 May
 2019 06:39:58 -0700 (PDT)
X-Received: by 2002:a25:9c08:: with SMTP id c8mr5524006ybo.143.1558618798203;
        Thu, 23 May 2019 06:39:58 -0700 (PDT)
Date: Thu, 23 May 2019 06:39:57 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <404b7d37-6539-4b63-b980-f4c37abd7f89@googlegroups.com>
Subject: HURRY UP..! We Have Urgent Requirement For SalesforceDeveloper
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_440_1460498418.1558618797625"
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

------=_Part_440_1460498418.1558618797625
Content-Type: multipart/alternative; 
	boundary="----=_Part_441_65842977.1558618797626"

------=_Part_441_65842977.1558618797626
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


WE HAVE URGENT REQUIREMENT FOR SALESFORCE DEVELOPER

*             NOTE : DIRECT CLIENT REQUIREMENT*

*Role: Sales force Developer*

*Contract: 6 months+*

*Location: Arizona/NJ, Massachusetts*

*Client : Direct*

=20

=20

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

=20

*   Forward Your Resume To Below Mentioned Email Address. *
 =20


--=20

*Thanks & Regards,*

*Prashanth*

*US IT  RECRUITER*

*+1 (315)947-0775*

*Email : prasanth@genisists.com <prasanth@genisists.com>*

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/404b7d37-6539-4b63-b980-f4c37abd7f89%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_441_65842977.1558618797626
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div><div><div style=3D"text-align: center;"><font fac=
e=3D"georgia, serif" size=3D"4">WE HAVE URGENT REQUIREMENT FOR SALESFORCE D=
EVELOPER</font></div><div style=3D"font-size: small;"><strong style=3D"font=
-family: calibri, sans-serif;"><font color=3D"#000000"><span style=3D"font-=
size: 10pt;"><br></span></font></strong></div><div style=3D"font-size: smal=
l;"><strong style=3D"font-family: calibri, sans-serif;"><font color=3D"#000=
000"><span style=3D"font-size: 10pt;">=C2=A0 =C2=A0</span><font size=3D"4">=
=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</font></font><font color=3D"#0000ff=
" size=3D"4">=C2=A0NOTE : DIRECT CLIENT REQUIREMENT</font></strong></div><d=
iv style=3D"font-size: small;"><strong style=3D"font-family: calibri, sans-=
serif; font-size: 16px;"><span style=3D"font-size: 10pt;"><font color=3D"#0=
000ff"><br></font></span></strong></div><div style=3D"font-size: small; col=
or: rgb(80, 0, 80);"><strong style=3D"color: rgb(0, 0, 0); font-family: cal=
ibri, sans-serif; font-size: 16px;"><span style=3D"font-size: 10pt;">Role:=
=C2=A0Sales force=C2=A0Developer</span></strong></div><div style=3D"font-si=
ze: small; color: rgb(80, 0, 80);"><p style=3D"margin: 0in 0in 0.0001pt; li=
ne-height: normal; font-family: calibri, sans-serif; font-size: 15px;"><spa=
n style=3D"font-size: 12pt;"><strong><span style=3D"font-size: 10pt;"><span=
 style=3D"color: rgb(0, 0, 0);">Contract: 6 months+</span></span></strong><=
/span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-f=
amily: calibri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12p=
t;"><strong><span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0=
, 0);">Location: Arizona/NJ, Massachusetts</span></span></strong></span></p=
><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-family: ca=
libri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12pt;"><stro=
ng><span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">Cl=
ient : Direct</span></span></strong></span></p><p style=3D"margin: 0in 0in =
0.0001pt; line-height: normal; color: rgb(51, 51, 51); font-family: calibri=
, sans-serif; font-size: 15px;">=C2=A0</p><p style=3D"margin: 0in 0in 0.000=
1pt; line-height: normal; color: rgb(51, 51, 51); font-family: calibri, san=
s-serif; font-size: 15px;">=C2=A0</p><p style=3D"margin: 0in 0in 0.0001pt; =
line-height: normal; color: rgb(51, 51, 51); font-family: calibri, sans-ser=
if; font-size: 15px;"><span style=3D"color: rgb(0, 0, 0); font-size: 10pt; =
background-color: rgb(249, 249, 249);">Experience:</span></p><p style=3D"ma=
rgin: 0in 0in 0.0001pt; line-height: normal; font-family: calibri, sans-ser=
if; font-size: 15px;"><span style=3D"font-size: 12pt;"><span style=3D"backg=
round: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><span style=3D=
"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in Softwa=
re Development</span></span></span></span></p><p style=3D"margin: 0in 0in 0=
.0001pt; line-height: normal; font-family: calibri, sans-serif; font-size: =
15px;"><span style=3D"font-size: 12pt;"><span style=3D"background: rgb(249,=
 249, 249);"><span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, =
0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience in Cloud Tech=
nology and an in-depth understanding of the primary concepts and terminolog=
y</span></span></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line=
-height: normal; font-family: calibri, sans-serif; font-size: 15px;"><span =
style=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);">=
<span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=
=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years working on=C2=A0Salesforce=C2=A0app=
lications (Lightning=C2=A0is a must-have.)</span></span></span></span></p><=
p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-family: cali=
bri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12pt;"><span s=
tyle=3D"background: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><=
span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ ye=
ars experience using Force.com (Advanced understanding of SFDC Triggers and=
 Controllers, VF page development, sObjects, SOQL etc)</span></span></span>=
</span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-=
family: calibri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12=
pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=3D"font-si=
ze: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 3+ year hands-on experience in an Agile development team</span></spa=
n></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: norm=
al; font-family: calibri, sans-serif; font-size: 15px;"><span style=3D"font=
-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=
=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Experience in object oriented development is a must</span=
></span></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height=
: normal; font-family: calibri, sans-serif; font-size: 15px;"><span style=
=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span=
 style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Experience with SOAP and REST Web Services and int=
egration using APIs is a must</span></span></span></span></p><p style=3D"ma=
rgin: 0in 0in 0.0001pt; line-height: normal; font-family: calibri, sans-ser=
if; font-size: 15px;"><span style=3D"font-size: 12pt;"><span style=3D"backg=
round: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><span style=3D=
"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience with so=
urce control, branching strategies and using code repositories a must</span=
></span></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height=
: normal; font-family: calibri, sans-serif; font-size: 15px;"><span style=
=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span=
 style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0Salesforce=C2=A0certification preferred</span=
></span></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height=
: normal; font-family: calibri, sans-serif; font-size: 15px;"><span style=
=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span=
 style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Background in leveraging ETL products and tools (e=
.g. IBM DataStage, Informatica, etc.) for data management is preferred</spa=
n></span></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-heigh=
t: normal; font-family: calibri, sans-serif; font-size: 15px;"><span style=
=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span=
 style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience of Test Driven development is =
preferred</span></span></span></span></p><p style=3D"margin: 0in 0in 0.0001=
pt; line-height: normal; font-family: calibri, sans-serif; font-size: 15px;=
"><span style=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249,=
 249);"><span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0)=
;">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience in a lead role wit=
hin a team of engineers</span></span></span></span></p><p style=3D"margin: =
0in 0in 0.0001pt; line-height: normal; font-family: calibri, sans-serif; fo=
nt-size: 15px;"><span style=3D"font-size: 12pt;"><span style=3D"background:=
 rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><span style=3D"color=
: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advanced understanding o=
f the=C2=A0Salesforce=C2=A0platform and its primary functions.</span></span=
></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: norma=
l; font-family: calibri, sans-serif; font-size: 15px;"><span style=3D"font-=
size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=3D=
"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 Ability to learn new technologies and embrace the challenge =
learning presents</span></span></span></span></p><p style=3D"margin: 0in 0i=
n 0.0001pt; line-height: normal; font-family: calibri, sans-serif; font-siz=
e: 15px;"><span style=3D"font-size: 12pt;"><span style=3D"background: rgb(2=
49, 249, 249);"><span style=3D"font-size: 10pt;"><span style=3D"color: rgb(=
0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 A self-starter, comfortable ha=
ving conversations with business partners</span></span></span></span></p><p=
 style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-family: calib=
ri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12pt;"><span st=
yle=3D"background: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><s=
pan style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust=
 and current knowledge of web standards, emerging technologies, and trends<=
/span></span></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-h=
eight: normal; font-family: calibri, sans-serif; font-size: 15px;"><span st=
yle=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><s=
pan style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability to think abstractly and deal with ambig=
uous/under-defined problems</span></span></span></span></p><p style=3D"marg=
in: 0in 0in 0.0001pt; line-height: normal; font-family: calibri, sans-serif=
; font-size: 15px;"><span style=3D"font-size: 12pt;"><span style=3D"backgro=
und: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><span style=3D"c=
olor: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 An excellent communi=
cator, both verbally and written.</span></span></span></span></p></div><div=
 style=3D"font-size: small;"><br></div><font size=3D"2">=C2=A0</font></div>=
<div style=3D"font-size: small;"><b><u><font color=3D"#4c1130"><br></font><=
/u></b></div><div style=3D"font-size: small;"><b><u><font color=3D"#4c1130"=
>=C2=A0=C2=A0 Forward Your Resume To Below Mentioned Email Address.=C2=A0</=
font></u></b><div><b><i><font color=3D"#cc0000">=C2=A0=C2=A0</font></i></b>=
</div><div><br></div><br class=3D"m_-6428129549044123795gmail-m_-1519168374=
095038127gmail-Apple-interchange-newline"></div><span style=3D"font-size: s=
mall;">--=C2=A0</span><br style=3D"font-size: small;"><div dir=3D"ltr" clas=
s=3D"m_-6428129549044123795gmail_signature" style=3D"font-size: small;"><di=
v dir=3D"ltr"><div dir=3D"ltr"><p style=3D"font-family: arial, helvetica, s=
ans-serif;"><b><i><span style=3D"line-height: 14.95px;">Thanks &amp; Regard=
s,</span></i></b><span style=3D"line-height: 14.95px;"></span></p><p style=
=3D"font-family: arial, helvetica, sans-serif;"><b><i><span style=3D"line-h=
eight: 14.95px;">Prashanth</span></i></b></p><p style=3D"font-family: arial=
, helvetica, sans-serif;"><b><i><span style=3D"line-height: 14.95px;"></spa=
n></i></b><b><i><span style=3D"line-height: 14.95px;"><b><i><span style=3D"=
line-height: 14.95px;">US IT=C2=A0 RECRUITER</span></i></b><span style=3D"l=
ine-height: 14.95px;"></span></span></i></b></p><p style=3D"font-family: ar=
ial, helvetica, sans-serif;"><b><i><span style=3D"line-height: 14.95px;"><b=
><i><span style=3D"line-height: 14.95px;">+1 (315)947-0775</span></i></b></=
span></i></b></p><p><font face=3D"arial, helvetica, sans-serif"><b><i>Email=
 :=C2=A0<a href=3D"mailto:prasanth@genisists.com" target=3D"_blank" data-mt=
-detrack-inspected=3D"true" style=3D"color: rgb(17, 85, 204);">prasanth@gen=
isists.com</a></i></b></font></p><div style=3D"font-family: arial, helvetic=
a, sans-serif;"><a data-mt-detrack-inspected=3D"true"><img src=3D"https://c=
i3.googleusercontent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3mNnYNVp0FhT=
mwRvKw4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv4pCzpxtpwB=
gNsbnemBgpHaJdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG8s9GZVwfTd=
zwY8rOrpS2MX5Csw=3Ds0-d-e1-ft#https://docs.google.com/uc?export=3Ddownload&=
amp;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25CV0l=
wa2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" width=3D"200" height=3D"58" class=3D"m_-64=
28129549044123795gmail-CToWUd CToWUd"></a></div></div></div></div></div></d=
iv>

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
om/d/msgid/linux-ntb/404b7d37-6539-4b63-b980-f4c37abd7f89%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/404b7d37-6539-4b63-b980-f4c37abd7f89%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_441_65842977.1558618797626--

------=_Part_440_1460498418.1558618797625--
