Return-Path: <linux-ntb+bncBCELXQMOTUFBBI4ASDTQKGQEIMRQSZY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id C0362250C3
	for <lists+linux-ntb@lfdr.de>; Tue, 21 May 2019 15:41:56 +0200 (CEST)
Received: by mail-yw1-xc37.google.com with SMTP id c4sf17925550ywd.0
        for <lists+linux-ntb@lfdr.de>; Tue, 21 May 2019 06:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lPbE0mRSyMHLFJVkY3weO2eGkjsS2XgZnArjmh55PCc=;
        b=Py7A6nOsWnrPbM3pxy81Vy/7tCqumvi4okYs5VeTbj5069jedRyTnHKsHXPA1xNvjF
         dXzn9FBzyM8zBecPXHy/SQRxW9auXDA6a2Hy6sNp7NwimClkwIP5tyZbqXnWqdSaMm51
         afFPqXBbFWiKmjHV5GrWxdcCpxLO4zHStfeszP9SjADqzYcp7jbka0pYH/VAByqkkM5K
         hxrkd8yEJkkR7GFDK37SPax4SMeyXGZIoERLfIBYncLRwFFyEu/JIo2Ke9430QcSiAEg
         x6DU/trqoSyK3TFdrILwvP6A4gDOfKnX3FJ4CccrFQcUK08V0869rkeq14Ljcu2GPSLg
         6QxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lPbE0mRSyMHLFJVkY3weO2eGkjsS2XgZnArjmh55PCc=;
        b=q1wzQt6VwN/cEbpfVk3BvfsObbu6wqHYihtEzVayRQZ8A7nBCGJ1Zkng8yK3JKcQ1H
         BJpX+llzjv5sBbJ6YTmT4fCkpIxvfX4T1ohrwyRTmZmrSYSldzbm0PUi8BM1KfRMh+Ot
         ENEP4K5pk6jh4lhd8aSxLYosiQQoguaXv6VfhhnaHa7XCyihUBSbMqSWQpF6mUhzBhuB
         FzQMvg7zT+6PsFJHCQfvPZzQrSn4WHp+c0W01WDHU5BNBhAu6y+98KeXWtlhd/4GHnD+
         Fpt3M0EXxlt+N9J09dvKb7nema2wIhdMmLeijhgA2giCkqYxLL4GGCt+W1MDEiZTumpv
         8o1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lPbE0mRSyMHLFJVkY3weO2eGkjsS2XgZnArjmh55PCc=;
        b=Ykq6bghiQnIFFMBqfkuWnKIFda9vmq9LRtT834oYY5WJ5w3FlRuHCxuS5I6kFPebml
         12Kjx51f/d5VDC1XFCF/uo8w5FkksHwxQowr25hQFwgIE3ovZPrCmlOAr7Is+17LK/FB
         Jee1MnJ/7XxBUkPUTTZbco7unXm67oblzBkmId3LmmdLfFlJZ1EkgBColF06a5qrb8Cn
         Dd6xsAXxhYaTitdtBJI5+0V8/yYkoLOH3wVgJraGHhJZsj6u4mQyn4F24yJaXAWsiGNV
         L9zwAQz9TOtYDoTcunUMwDypqP4UVQrYyrm68PAwHA4lI45aWL1AnDaaLgFJgsCniuG5
         NVcg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXLtHRGj7uAB6JSdx1LKnsP2lWFwF0aMXTSMHUCfL6S792yBRAG
	qTv0TWZD7ZTw0ysIYpqckaA=
X-Google-Smtp-Source: APXvYqwFY55lgucYGaKMH1MvZ2j3OYvNiVkMpyeLRTC6WbGj5yzCF6T4YGV7TCJeJ2QC/EDa3jyipQ==
X-Received: by 2002:a0d:e343:: with SMTP id m64mr40056757ywe.368.1558446115649;
        Tue, 21 May 2019 06:41:55 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:57c8:: with SMTP id l191ls615599ywb.1.gmail; Tue, 21 May
 2019 06:41:55 -0700 (PDT)
X-Received: by 2002:a81:8314:: with SMTP id t20mr37109110ywf.428.1558446115208;
        Tue, 21 May 2019 06:41:55 -0700 (PDT)
Date: Tue, 21 May 2019 06:41:54 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <8b39d484-3545-4343-b05b-0f60d9a68da0@googlegroups.com>
Subject: We Have Urgent Requirement for Salesforce Developer In Arizona &
 Massachusetts and Its Direct Client
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2583_727229216.1558446114746"
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

------=_Part_2583_727229216.1558446114746
Content-Type: multipart/alternative; 
	boundary="----=_Part_2584_1883703704.1558446114747"

------=_Part_2584_1883703704.1558446114747
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*Hi,*
 =20
* WE HAVE URGENT REQUIREMENT FOR SALES FORCE DEVELOPER IN ARIZONA AND=20
MASSACHUSETTS*
=20
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

 *   Forward Your Resume To Below Mentioned Email Address. *
 =20
* HURRY......!!!*
=20
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
linux-ntb/8b39d484-3545-4343-b05b-0f60d9a68da0%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_2584_1883703704.1558446114747
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size: small; color: rgb(80, 0, 80);"><s=
trong style=3D"color: rgb(0, 0, 0); font-family: calibri, sans-serif; font-=
size: 16px;"><span style=3D"font-size: 10pt;">Hi,</span></strong></div><div=
 style=3D"font-size: small; color: rgb(80, 0, 80);"><strong style=3D"color:=
 rgb(0, 0, 0); font-family: calibri, sans-serif; font-size: 16px;"><span st=
yle=3D"font-size: 10pt;">=C2=A0=C2=A0</span></strong></div><div style=3D"fo=
nt-size: small; color: rgb(80, 0, 80);"><strong style=3D"color: rgb(0, 0, 0=
); font-family: calibri, sans-serif; font-size: 16px;"><span style=3D"font-=
size: 10pt;">=C2=A0WE HAVE URGENT REQUIREMENT FOR SALES FORCE DEVELOPER IN =
ARIZONA AND MASSACHUSETTS</span></strong></div><div style=3D"font-size: sma=
ll; color: rgb(80, 0, 80);"><strong style=3D"color: rgb(0, 0, 0); font-fami=
ly: calibri, sans-serif; font-size: 16px;"><span style=3D"font-size: 10pt;"=
>=C2=A0</span></strong></div><div style=3D"font-size: small; color: rgb(80,=
 0, 80);"><strong style=3D"color: rgb(0, 0, 0); font-family: calibri, sans-=
serif; font-size: 16px;"><span style=3D"font-size: 10pt;">Role:=C2=A0Sales =
force=C2=A0Developer</span></strong></div><div style=3D"font-size: small; c=
olor: rgb(80, 0, 80);"><p style=3D"margin: 0in 0in 0.0001pt; line-height: n=
ormal; font-family: calibri, sans-serif; font-size: 15px;"><span style=3D"f=
ont-size: 12pt;"><strong><span style=3D"font-size: 10pt;"><span style=3D"co=
lor: rgb(0, 0, 0);">Contract: 6 months+</span></span></strong></span></p><p=
 style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-family: calib=
ri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12pt;"><strong>=
<span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">Locat=
ion: Arizona/NJ, Massachusetts</span></span></strong></span></p><p style=3D=
"margin: 0in 0in 0.0001pt; line-height: normal; font-family: calibri, sans-=
serif; font-size: 15px;"><span style=3D"font-size: 12pt;"><strong><span sty=
le=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">Client : Direc=
t</span></span></strong></span></p><p style=3D"margin: 0in 0in 0.0001pt; li=
ne-height: normal; color: rgb(51, 51, 51); font-family: calibri, sans-serif=
; font-size: 15px;">=C2=A0</p><p style=3D"margin: 0in 0in 0.0001pt; line-he=
ight: normal; color: rgb(51, 51, 51); font-family: calibri, sans-serif; fon=
t-size: 15px;">=C2=A0</p><p style=3D"margin: 0in 0in 0.0001pt; line-height:=
 normal; color: rgb(51, 51, 51); font-family: calibri, sans-serif; font-siz=
e: 15px;"><span style=3D"color: rgb(0, 0, 0); font-size: 10pt; background-c=
olor: rgb(249, 249, 249);">Experience:</span></p><p style=3D"margin: 0in 0i=
n 0.0001pt; line-height: normal; font-family: calibri, sans-serif; font-siz=
e: 15px;"><span style=3D"font-size: 12pt;"><span style=3D"background: rgb(2=
49, 249, 249);"><span style=3D"font-size: 10pt;"><span style=3D"color: rgb(=
0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in Software Developme=
nt</span></span></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; lin=
e-height: normal; font-family: calibri, sans-serif; font-size: 15px;"><span=
 style=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"=
><span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=
=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience in Cloud Technology and =
an in-depth understanding of the primary concepts and terminology</span></s=
pan></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: no=
rmal; font-family: calibri, sans-serif; font-size: 15px;"><span style=3D"fo=
nt-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=
=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 5+ years working on=C2=A0Salesforce=C2=A0applications (Li=
ghtning=C2=A0is a must-have.)</span></span></span></span></p><p style=3D"ma=
rgin: 0in 0in 0.0001pt; line-height: normal; font-family: calibri, sans-ser=
if; font-size: 15px;"><span style=3D"font-size: 12pt;"><span style=3D"backg=
round: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><span style=3D=
"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experienc=
e using Force.com (Advanced understanding of SFDC Triggers and Controllers,=
 VF page development, sObjects, SOQL etc)</span></span></span></span></p><p=
 style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-family: calib=
ri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12pt;"><span st=
yle=3D"background: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><s=
pan style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 3+ yea=
r hands-on experience in an Agile development team</span></span></span></sp=
an></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-fami=
ly: calibri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12pt;"=
><span style=3D"background: rgb(249, 249, 249);"><span style=3D"font-size: =
10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Experience in object oriented development is a must</span></span></span=
></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font=
-family: calibri, sans-serif; font-size: 15px;"><span style=3D"font-size: 1=
2pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=3D"font-s=
ize: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 Experience with SOAP and REST Web Services and integration using AP=
Is is a must</span></span></span></span></p><p style=3D"margin: 0in 0in 0.0=
001pt; line-height: normal; font-family: calibri, sans-serif; font-size: 15=
px;"><span style=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 2=
49, 249);"><span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0,=
 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience with source control, bra=
nching strategies and using code repositories a must</span></span></span></=
span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-fa=
mily: calibri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12pt=
;"><span style=3D"background: rgb(249, 249, 249);"><span style=3D"font-size=
: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0Salesforce=C2=A0certification preferred</span></span></span></s=
pan></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-fam=
ily: calibri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12pt;=
"><span style=3D"background: rgb(249, 249, 249);"><span style=3D"font-size:=
 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Background in leveraging ETL products and tools (e.g. IBM DataStage, In=
formatica, etc.) for data management is preferred</span></span></span></spa=
n></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-famil=
y: calibri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12pt;">=
<span style=3D"background: rgb(249, 249, 249);"><span style=3D"font-size: 1=
0pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Previous experience of Test Driven development is preferred</span></spa=
n></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: norm=
al; font-family: calibri, sans-serif; font-size: 15px;"><span style=3D"font=
-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=
=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Previous experience in a lead role within a team of engin=
eers</span></span></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; l=
ine-height: normal; font-family: calibri, sans-serif; font-size: 15px;"><sp=
an style=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249)=
;"><span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=
=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advanced understanding of the=C2=A0Salesf=
orce=C2=A0platform and its primary functions.</span></span></span></span></=
p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-family: c=
alibri, sans-serif; font-size: 15px;"><span style=3D"font-size: 12pt;"><spa=
n style=3D"background: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;=
"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ab=
ility to learn new technologies and embrace the challenge learning presents=
</span></span></span></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-=
height: normal; font-family: calibri, sans-serif; font-size: 15px;"><span s=
tyle=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249, 249);"><=
span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 A self-starter, comfortable having conversation=
s with business partners</span></span></span></span></p><p style=3D"margin:=
 0in 0in 0.0001pt; line-height: normal; font-family: calibri, sans-serif; f=
ont-size: 15px;"><span style=3D"font-size: 12pt;"><span style=3D"background=
: rgb(249, 249, 249);"><span style=3D"font-size: 10pt;"><span style=3D"colo=
r: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust and current know=
ledge of web standards, emerging technologies, and trends</span></span></sp=
an></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; fo=
nt-family: calibri, sans-serif; font-size: 15px;"><span style=3D"font-size:=
 12pt;"><span style=3D"background: rgb(249, 249, 249);"><span style=3D"font=
-size: 10pt;"><span style=3D"color: rgb(0, 0, 0);">=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Ability to think abstractly and deal with ambiguous/under-define=
d problems</span></span></span></span></p><p style=3D"margin: 0in 0in 0.000=
1pt; line-height: normal; font-family: calibri, sans-serif; font-size: 15px=
;"><span style=3D"font-size: 12pt;"><span style=3D"background: rgb(249, 249=
, 249);"><span style=3D"font-size: 10pt;"><span style=3D"color: rgb(0, 0, 0=
);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 An excellent communicator, both verba=
lly and written.</span></span></span></span></p></div><div><br></div>=C2=A0=
<b><u><font color=3D"#4c1130">=C2=A0=C2=A0 Forward Your Resume To Below Men=
tioned Email Address.=C2=A0</font></u></b><div><b><i><font color=3D"#cc0000=
">=C2=A0=C2=A0</font></i></b></div><div><b><i><font color=3D"#cc0000">=C2=
=A0HURRY......!!!</font></i></b><font color=3D"#660000"><br style=3D"font-s=
ize: small;"></font><div style=3D"font-size: small;"><font color=3D"#660000=
">=C2=A0</font></div><span style=3D"font-size: small;">--=C2=A0</span><br s=
tyle=3D"font-size: small;"><div dir=3D"ltr" style=3D"font-size: small;"><di=
v dir=3D"ltr"><p style=3D"margin-top: 1em; margin-bottom: 1em; line-height:=
 normal; font-family: arial, helvetica, sans-serif;"><strong><em><span styl=
e=3D"line-height: 14.95px;">Thanks &amp; Regards,</span></em></strong></p><=
p style=3D"margin-top: 1em; margin-bottom: 1em; line-height: normal; font-f=
amily: arial, helvetica, sans-serif;"><strong><em><span style=3D"line-heigh=
t: 14.95px;">Prashanth</span></em></strong></p><p style=3D"margin-top: 1em;=
 margin-bottom: 1em; line-height: normal; font-family: arial, helvetica, sa=
ns-serif;"><strong><em><span style=3D"line-height: 14.95px;"><strong><em><s=
pan style=3D"line-height: 14.95px;">US IT=C2=A0 RECRUITER</span></em></stro=
ng></span></em></strong></p><p style=3D"margin-top: 1em; margin-bottom: 1em=
; line-height: normal;"><span style=3D"font-family: arial, helvetica, sans-=
serif;"><strong><em>Email :=C2=A0<a href=3D"mailto:prasanth@genisists.com" =
rel=3D"nofollow" target=3D"_blank" style=3D"color: rgb(17, 85, 204); cursor=
: pointer;">prasanth@genisists.com</a></em></strong></span></p><div style=
=3D"font-family: arial, helvetica, sans-serif;"><a style=3D"color: rgb(34, =
34, 34); cursor: pointer;"><img src=3D"https://ci3.googleusercontent.com/pr=
oxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3mNnYNVp0FhTmwRvKw4LQgks3iaTXQjOOUH-Tzx=
5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv4pCzpxtpwBgNsbnemBgpHaJdmsOJsiQZBLfW5=
l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG8s9GZVwfTdzwY8rOrpS2MX5Csw=3Ds0-d-e1-=
ft#https://docs.google.com/uc?export=3Ddownload&amp;id=3D1fyCxLrUTDZagX7qMB=
njT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25CV0lwa2FFS2syRWxCbGdlYUxaUFpjL0=
N3PQ" alt=3D"" width=3D"200" height=3D"58"></a></div></div></div></div></di=
v>

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
om/d/msgid/linux-ntb/8b39d484-3545-4343-b05b-0f60d9a68da0%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/8b39d484-3545-4343-b05b-0f60d9a68da0%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_2584_1883703704.1558446114747--

------=_Part_2583_727229216.1558446114746--
