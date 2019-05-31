Return-Path: <linux-ntb+bncBCELXQMOTUFBBMHOYXTQKGQEKSQHGEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B871F314EA
	for <lists+linux-ntb@lfdr.de>; Fri, 31 May 2019 20:49:21 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id p79sf8190680yba.21
        for <lists+linux-ntb@lfdr.de>; Fri, 31 May 2019 11:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=unVFrlVDHv8bJsgciS9L4/UfcIYgkCW+x0MXUQMbgNY=;
        b=CuaFi1MSAE3Mdl0wy3e7QkA5JWG5KOiVuV6ecsxDxEc9Le/SrJkBj4d2wIMMBuZkdR
         vmlDUrEf4Hm5oy4uwPXerYWP+M+Ik3dhxJN6yQh54LLmuPFKZs66gQ9Xt1/NGTd/q1cQ
         LeGOO1brALgyGmSFtJxhYybOibNX+6W798fwtvcBNUGZKvLmaKUe2oBOfVkfTj7cdCth
         6gy24YeMu0QseoCSZFd/YvmrW4l35yWe2+Yug0xe/LRd5XjG6+x4UrGeKqgQexYlpPfL
         +RyvU3HIWQFEzDDBg/Vq7/BwjX5evEVAR5EQQ9JlMcXR34mNdMUKIK+Q/DMofR7/0kad
         Py9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=unVFrlVDHv8bJsgciS9L4/UfcIYgkCW+x0MXUQMbgNY=;
        b=yxdAmomAAnEBO4rTEXORIP63i95osq2A0z+9g7n4EvNiX2rjkB/r/OQHEamwMMp3CJ
         vNXllw7n/6k6qFu8WwVdfbx1PBGl9yBZ1Rky6GRwOfvNF3NzePjljNZJXeK69546S0wU
         bYQFF4wEP0FheJaEPdptlR24uALQ8OWdF0ykXHXt896wCd2gfAFD/Fdf7QYT0bmsWApW
         UHo1mzkBEopFntNDzm9xHBGBc0jcdAjHQT/JCJMi7JE43L+2OSSUiqZIlZJH72rcCABN
         MLiRSomvgh3pliNdTEWldHl9Vz/7E7n6Fa+qT2Yor3B/6wf3AgLsn+3nSiqW78Fy8ql5
         el1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=unVFrlVDHv8bJsgciS9L4/UfcIYgkCW+x0MXUQMbgNY=;
        b=D0sz4zgXD3puYUVIxsA++x2d4HXApxbAc7ShAte9qBhKbnazBt+fMQZ0O/iZ7+EHXK
         QWf0v4R9gprk50k+rHAg6GW8mn2vIKdmZAKZa8qMilbX7vpANw4dCyZwbmiJCWwduoh6
         aHKyWvZiAcwwn09KCpYPha1GzqnLN7MZ5JFFnA3A1xRpyRhhgbA3lxT/4x87dJuFsnm3
         NlGsOkYfae+OiN8Qk8/F3uxnhS0MMvxL50zvlKd4xKsGYxsxMTS7CahGCZ0UFXuMEXz3
         juU+WoExf6WzbmZRT0SwRzBg1DmOMeml9qU0iERWPFOTUQpDk6BvbRvPTNtbcOOL1xIM
         ormA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUCGMbgVU0BqSZ5mMd5W8Abd6cAX3CeO8piy3FeKjGmPDFijpw5
	4nA7bVY1jIbOu2ftoeLSVJ0=
X-Google-Smtp-Source: APXvYqyxCqjh+IFmzQVHM6e9HKMdqfElhydrLov/mY96KTT2mhaWIqMhbgqOcTMVJpRe1PAP/PjM6A==
X-Received: by 2002:a25:8445:: with SMTP id r5mr5376028ybm.501.1559328560423;
        Fri, 31 May 2019 11:49:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:3b15:: with SMTP id i21ls1219651ywa.4.gmail; Fri, 31 May
 2019 11:49:20 -0700 (PDT)
X-Received: by 2002:a81:5758:: with SMTP id l85mr6330359ywb.96.1559328559940;
        Fri, 31 May 2019 11:49:19 -0700 (PDT)
Date: Fri, 31 May 2019 11:49:19 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <93fe8dbf-db73-49dc-bd56-c766751f6e93@googlegroups.com>
Subject: Saleforce Developer Requirement
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1004_1569637427.1559328559516"
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

------=_Part_1004_1569637427.1559328559516
Content-Type: multipart/alternative; 
	boundary="----=_Part_1005_511901826.1559328559517"

------=_Part_1005_511901826.1559328559517
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



*URGENT REQUIREMENT FOR SALESFORCE DEVELOPER*

=20

=20

*SHARE YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.*

=20

            * NOTE : DIRECT CLIENT REQUIREMENT*=20

=20

=20

*Role:  Sales force Developer*

*Contract:  6 months+*

*Location : Maryland, Arizona & Pennsylvania *

*Mode Of Interview : Face to Face(only Maryland in other locations=20
telephonic )*

*Client :  Direct*

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

 *HURRY......!!!*


*---*-----*

*Happy Weekend* =20

--

*Thanks & Regards..* *?* =20

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
linux-ntb/93fe8dbf-db73-49dc-bd56-c766751f6e93%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_1005_511901826.1559328559517
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" align=3D"center" style=3D"font-size=
: 12pt; font-family: &quot;Times New Roman&quot;, serif; text-align: center=
; line-height: normal; background-image: initial; background-position: init=
ial; background-size: initial; background-repeat: initial; background-origi=
n: initial; background-clip: initial;"><b><i><span style=3D"padding: 0in; b=
order-width: 1pt; border-style: none; border-color: windowtext; font-size: =
13.5pt; color: white; background: rgb(103, 78, 167);">URGENT REQUIREMENT FO=
R SALESFORCE DEVELOPER</span></i></b><span style=3D"font-size: 12pt;"><u></=
u><u></u></span></p><p class=3D"MsoNormal" align=3D"center" style=3D"font-s=
ize: 12pt; font-family: &quot;Times New Roman&quot;, serif; text-align: cen=
ter; line-height: normal; background-image: initial; background-position: i=
nitial; background-size: initial; background-repeat: initial; background-or=
igin: initial; background-clip: initial;"><span style=3D"font-size: 12pt;">=
=C2=A0<u></u><u></u></span></p><p class=3D"MsoNormal" align=3D"center" styl=
e=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; text=
-align: center; line-height: normal; background-image: initial; background-=
position: initial; background-size: initial; background-repeat: initial; ba=
ckground-origin: initial; background-clip: initial;"><span style=3D"font-si=
ze: 12pt;"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal" style=3D"f=
ont-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; line-heigh=
t: normal; background-image: initial; background-position: initial; backgro=
und-size: initial; background-repeat: initial; background-origin: initial; =
background-clip: initial;"><b><span style=3D"padding: 0in; border-width: 1p=
t; border-style: none; border-color: windowtext; font-size: 12pt; color: rg=
b(12, 52, 61);">SHARE YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.=
<u></u><u></u></span></b></p><p class=3D"MsoNormal" style=3D"font-size: 12p=
t; font-family: &quot;Times New Roman&quot;, serif; line-height: normal; ba=
ckground-image: initial; background-position: initial; background-size: ini=
tial; background-repeat: initial; background-origin: initial; background-cl=
ip: initial;"><span style=3D"font-size: 12pt;"><u></u>=C2=A0<u></u></span><=
/p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &quot;Time=
s New Roman&quot;, serif; line-height: normal; background-image: initial; b=
ackground-position: initial; background-size: initial; background-repeat: i=
nitial; background-origin: initial; background-clip: initial;"><b><span sty=
le=3D"font-size: 10pt; color: black;">=C2=A0 =C2=A0</span></b><b><span styl=
e=3D"font-size: 13.5pt; color: black;">=C2=A0=C2=A0=C2=A0</span></b><b><spa=
n style=3D"font-size: 13.5pt; color: white;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span></b><b><span style=3D"font-size: 13.5pt;">=C2=A0<span style=3D=
"background: lime;">NOTE : DIRECT CLIENT REQUIREMENT</span></span></b><span=
 style=3D"padding: 0in; border-width: 1pt; border-style: none; border-color=
: windowtext; font-size: 12pt; color: white; background: rgb(106, 168, 79);=
">=C2=A0<u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size:=
 12pt; font-family: &quot;Times New Roman&quot;, serif; line-height: normal=
; background-image: initial; background-position: initial; background-size:=
 initial; background-repeat: initial; background-origin: initial; backgroun=
d-clip: initial;"><span style=3D"font-size: 12pt;"><u></u>=C2=A0<u></u></sp=
an></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &quot;=
Times New Roman&quot;, serif; line-height: normal; background-image: initia=
l; background-position: initial; background-size: initial; background-repea=
t: initial; background-origin: initial; background-clip: initial;"><span st=
yle=3D"font-size: 12pt;">=C2=A0<u></u><u></u></span></p><p class=3D"MsoNorm=
al" style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, ser=
if; line-height: normal; background-image: initial; background-position: in=
itial; background-size: initial; background-repeat: initial; background-ori=
gin: initial; background-clip: initial;"><b><u><span style=3D"padding: 0in;=
 border-width: 1pt; border-style: none; border-color: windowtext; font-size=
: 10pt; font-family: Georgia, serif; color: black; background: yellow;">Rol=
e:=C2=A0 Sales force=C2=A0Developer</span></u></b><span style=3D"font-size:=
 12pt;"><u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size:=
 12pt; font-family: &quot;Times New Roman&quot;, serif; line-height: normal=
; background-image: initial; background-position: initial; background-size:=
 initial; background-repeat: initial; background-origin: initial; backgroun=
d-clip: initial;"><b><u><span style=3D"padding: 0in; border-width: 1pt; bor=
der-style: none; border-color: windowtext; font-size: 10pt; font-family: Ge=
orgia, serif; color: black; background: yellow;">Contract:=C2=A0 6 months+<=
/span></u></b><span style=3D"font-size: 12pt;"><u></u><u></u></span></p><p =
class=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &quot;Times New =
Roman&quot;, serif; line-height: normal; background-image: initial; backgro=
und-position: initial; background-size: initial; background-repeat: initial=
; background-origin: initial; background-clip: initial;"><b><u><span style=
=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: wind=
owtext; font-size: 10pt; font-family: Georgia, serif; color: black; backgro=
und: yellow;">Location : Maryland, Arizona &amp; Pennsylvania=C2=A0<u></u><=
/span></u></b></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-fam=
ily: &quot;Times New Roman&quot;, serif; line-height: normal; background-im=
age: initial; background-position: initial; background-size: initial; backg=
round-repeat: initial; background-origin: initial; background-clip: initial=
;"><b><u><span style=3D"padding: 0in; border-width: 1pt; border-style: none=
; border-color: windowtext; font-size: 10pt; font-family: Georgia, serif; c=
olor: black; background: yellow;">Mode Of Interview : Face to Face(only Mar=
yland in other locations telephonic )</span></u></b></p><p class=3D"MsoNorm=
al" style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, ser=
if; line-height: normal; background-image: initial; background-position: in=
itial; background-size: initial; background-repeat: initial; background-ori=
gin: initial; background-clip: initial;"><b><u><span style=3D"padding: 0in;=
 border-width: 1pt; border-style: none; border-color: windowtext; font-size=
: 10pt; font-family: Georgia, serif; color: black; background: yellow;">Cli=
ent :=C2=A0 Direct</span></u></b><span style=3D"font-size: 12pt;"><u></u><u=
></u></span></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-famil=
y: &quot;Times New Roman&quot;, serif; line-height: normal; background-imag=
e: initial; background-position: initial; background-size: initial; backgro=
und-repeat: initial; background-origin: initial; background-clip: initial;"=
><b><span style=3D"padding: 0in; border-width: 1pt; border-style: none; bor=
der-color: windowtext; font-size: 13.5pt; color: rgb(51, 51, 51);">=C2=A0</=
span></b><span style=3D"font-size: 12pt;"><u></u><u></u></span></p><p class=
=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &quot;Times New Roman=
&quot;, serif; line-height: normal; background-image: initial; background-p=
osition: initial; background-size: initial; background-repeat: initial; bac=
kground-origin: initial; background-clip: initial;"><span style=3D"padding:=
 0in; border-width: 1pt; border-style: none; border-color: windowtext; font=
-size: 11.5pt; color: rgb(51, 51, 51);">=C2=A0</span><span style=3D"font-si=
ze: 12pt;"><u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-si=
ze: 12pt; font-family: &quot;Times New Roman&quot;, serif; line-height: nor=
mal; background-image: initial; background-position: initial; background-si=
ze: initial; background-repeat: initial; background-origin: initial; backgr=
ound-clip: initial;"><span style=3D"padding: 0in; border-width: 1pt; border=
-style: none; border-color: windowtext; font-size: 10pt; color: black; back=
ground: rgb(249, 249, 249);">Experience:</span><span style=3D"font-size: 12=
pt;"><u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size: 12=
pt; font-family: &quot;Times New Roman&quot;, serif; line-height: normal; b=
ackground-image: initial; background-position: initial; background-size: in=
itial; background-repeat: initial; background-origin: initial; background-c=
lip: initial;"><span style=3D"padding: 0in; border-width: 1pt; border-style=
: none; border-color: windowtext; font-size: 10pt; color: black; background=
: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in Softwa=
re Development</span><span style=3D"font-size: 12pt;"><u></u><u></u></span>=
</p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &quot;Tim=
es New Roman&quot;, serif; line-height: normal; background-image: initial; =
background-position: initial; background-size: initial; background-repeat: =
initial; background-origin: initial; background-clip: initial;"><span style=
=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: wind=
owtext; font-size: 10pt; color: black; background: rgb(249, 249, 249);">=C2=
=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience in Cloud Technology and =
an in-depth understanding of the primary concepts and terminology</span><sp=
an style=3D"font-size: 12pt;"><u></u><u></u></span></p><p class=3D"MsoNorma=
l" style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, seri=
f; line-height: normal; background-image: initial; background-position: ini=
tial; background-size: initial; background-repeat: initial; background-orig=
in: initial; background-clip: initial;"><span style=3D"padding: 0in; border=
-width: 1pt; border-style: none; border-color: windowtext; font-size: 10pt;=
 color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 5+ years working on=C2=A0Salesforce=C2=A0applications (Lightning=C2=
=A0is a must-have.)</span><span style=3D"font-size: 12pt;"><u></u><u></u></=
span></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &quo=
t;Times New Roman&quot;, serif; line-height: normal; background-image: init=
ial; background-position: initial; background-size: initial; background-rep=
eat: initial; background-origin: initial; background-clip: initial;"><span =
style=3D"padding: 0in; border-width: 1pt; border-style: none; border-color:=
 windowtext; font-size: 10pt; color: black; background: rgb(249, 249, 249);=
">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience using Force.com (Ad=
vanced understanding of SFDC Triggers and Controllers, VF page development,=
 sObjects, SOQL etc)</span><span style=3D"font-size: 12pt;"><u></u><u></u><=
/span></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &qu=
ot;Times New Roman&quot;, serif; line-height: normal; background-image: ini=
tial; background-position: initial; background-size: initial; background-re=
peat: initial; background-origin: initial; background-clip: initial;"><span=
 style=3D"padding: 0in; border-width: 1pt; border-style: none; border-color=
: windowtext; font-size: 10pt; color: black; background: rgb(249, 249, 249)=
;">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 3+ year hands-on experience in an Agil=
e development team</span><span style=3D"font-size: 12pt;"><u></u><u></u></s=
pan></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &quot=
;Times New Roman&quot;, serif; line-height: normal; background-image: initi=
al; background-position: initial; background-size: initial; background-repe=
at: initial; background-origin: initial; background-clip: initial;"><span s=
tyle=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: =
windowtext; font-size: 10pt; color: black; background: rgb(249, 249, 249);"=
>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience in object oriented developmen=
t is a must</span><span style=3D"font-size: 12pt;"><u></u><u></u></span></p=
><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &quot;Times =
New Roman&quot;, serif; line-height: normal; background-image: initial; bac=
kground-position: initial; background-size: initial; background-repeat: ini=
tial; background-origin: initial; background-clip: initial;"><span style=3D=
"padding: 0in; border-width: 1pt; border-style: none; border-color: windowt=
ext; font-size: 10pt; color: black; background: rgb(249, 249, 249);">=C2=B7=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience with SOAP and REST Web Services and =
integration using APIs is a must</span><span style=3D"font-size: 12pt;"><u>=
</u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font=
-family: &quot;Times New Roman&quot;, serif; line-height: normal; backgroun=
d-image: initial; background-position: initial; background-size: initial; b=
ackground-repeat: initial; background-origin: initial; background-clip: ini=
tial;"><span style=3D"padding: 0in; border-width: 1pt; border-style: none; =
border-color: windowtext; font-size: 10pt; color: black; background: rgb(24=
9, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience with source con=
trol, branching strategies and using code repositories a must</span><span s=
tyle=3D"font-size: 12pt;"><u></u><u></u></span></p><p class=3D"MsoNormal" s=
tyle=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; l=
ine-height: normal; background-image: initial; background-position: initial=
; background-size: initial; background-repeat: initial; background-origin: =
initial; background-clip: initial;"><span style=3D"padding: 0in; border-wid=
th: 1pt; border-style: none; border-color: windowtext; font-size: 10pt; col=
or: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0Salesforce=C2=A0certification preferred</span><span style=3D"font-=
size: 12pt;"><u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-=
size: 12pt; font-family: &quot;Times New Roman&quot;, serif; line-height: n=
ormal; background-image: initial; background-position: initial; background-=
size: initial; background-repeat: initial; background-origin: initial; back=
ground-clip: initial;"><span style=3D"padding: 0in; border-width: 1pt; bord=
er-style: none; border-color: windowtext; font-size: 10pt; color: black; ba=
ckground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Background=
 in leveraging ETL products and tools (e.g. IBM DataStage, Informatica, etc=
.) for data management is preferred</span><span style=3D"font-size: 12pt;">=
<u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; f=
ont-family: &quot;Times New Roman&quot;, serif; line-height: normal; backgr=
ound-image: initial; background-position: initial; background-size: initial=
; background-repeat: initial; background-origin: initial; background-clip: =
initial;"><span style=3D"padding: 0in; border-width: 1pt; border-style: non=
e; border-color: windowtext; font-size: 10pt; color: black; background: rgb=
(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience of =
Test Driven development is preferred</span><span style=3D"font-size: 12pt;"=
><u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; =
font-family: &quot;Times New Roman&quot;, serif; line-height: normal; backg=
round-image: initial; background-position: initial; background-size: initia=
l; background-repeat: initial; background-origin: initial; background-clip:=
 initial;"><span style=3D"padding: 0in; border-width: 1pt; border-style: no=
ne; border-color: windowtext; font-size: 10pt; color: black; background: rg=
b(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience in=
 a lead role within a team of engineers</span><span style=3D"font-size: 12p=
t;"><u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size: 12p=
t; font-family: &quot;Times New Roman&quot;, serif; line-height: normal; ba=
ckground-image: initial; background-position: initial; background-size: ini=
tial; background-repeat: initial; background-origin: initial; background-cl=
ip: initial;"><span style=3D"padding: 0in; border-width: 1pt; border-style:=
 none; border-color: windowtext; font-size: 10pt; color: black; background:=
 rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advanced understand=
ing of the=C2=A0Salesforce=C2=A0platform and its primary functions.</span><=
span style=3D"font-size: 12pt;"><u></u><u></u></span></p><p class=3D"MsoNor=
mal" style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, se=
rif; line-height: normal; background-image: initial; background-position: i=
nitial; background-size: initial; background-repeat: initial; background-or=
igin: initial; background-clip: initial;"><span style=3D"padding: 0in; bord=
er-width: 1pt; border-style: none; border-color: windowtext; font-size: 10p=
t; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Ability to learn new technologies and embrace the challenge lear=
ning presents</span><span style=3D"font-size: 12pt;"><u></u><u></u></span><=
/p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &quot;Time=
s New Roman&quot;, serif; line-height: normal; background-image: initial; b=
ackground-position: initial; background-size: initial; background-repeat: i=
nitial; background-origin: initial; background-clip: initial;"><span style=
=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: wind=
owtext; font-size: 10pt; color: black; background: rgb(249, 249, 249);">=C2=
=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 A self-starter, comfortable having conversat=
ions with business partners</span><span style=3D"font-size: 12pt;"><u></u><=
u></u></span></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-fami=
ly: &quot;Times New Roman&quot;, serif; line-height: normal; background-ima=
ge: initial; background-position: initial; background-size: initial; backgr=
ound-repeat: initial; background-origin: initial; background-clip: initial;=
"><span style=3D"padding: 0in; border-width: 1pt; border-style: none; borde=
r-color: windowtext; font-size: 10pt; color: black; background: rgb(249, 24=
9, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust and current knowledge of=
 web standards, emerging technologies, and trends</span><span style=3D"font=
-size: 12pt;"><u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font=
-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; line-height: =
normal; background-image: initial; background-position: initial; background=
-size: initial; background-repeat: initial; background-origin: initial; bac=
kground-clip: initial;"><span style=3D"padding: 0in; border-width: 1pt; bor=
der-style: none; border-color: windowtext; font-size: 10pt; color: black; b=
ackground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability t=
o think abstractly and deal with ambiguous/under-defined problems</span><sp=
an style=3D"font-size: 12pt;"><u></u><u></u></span></p><p class=3D"MsoNorma=
l" style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, seri=
f; line-height: normal; background-image: initial; background-position: ini=
tial; background-size: initial; background-repeat: initial; background-orig=
in: initial; background-clip: initial;"><span style=3D"padding: 0in; border=
-width: 1pt; border-style: none; border-color: windowtext; font-size: 10pt;=
 color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 An excellent communicator, both verbally and written.</span><span st=
yle=3D"font-size: 12pt;"><u></u><u></u></span></p><p class=3D"MsoNormal" st=
yle=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; li=
ne-height: normal; background-image: initial; background-position: initial;=
 background-size: initial; background-repeat: initial; background-origin: i=
nitial; background-clip: initial;"><span style=3D"font-size: 12pt; font-fam=
ily: Arial, sans-serif;">=C2=A0</span><span style=3D"font-size: 12pt;"><u><=
/u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-=
family: &quot;Times New Roman&quot;, serif; line-height: normal; background=
-image: initial; background-position: initial; background-size: initial; ba=
ckground-repeat: initial; background-origin: initial; background-clip: init=
ial;"><span style=3D"padding: 0in; border-width: 1pt; border-style: none; b=
order-color: windowtext; font-size: 12pt; background: rgb(106, 168, 79);">=
=C2=A0</span><b><u><span style=3D"padding: 0in; border-width: 1pt; border-s=
tyle: none; border-color: windowtext; font-size: 12pt; color: rgb(76, 17, 4=
8); background: rgb(106, 168, 79);">=C2=A0=C2=A0 Forward Your Resume To Bel=
ow Mentioned Email Address.=C2=A0</span></u></b><span style=3D"font-size: 1=
2pt;"><u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size: 1=
2pt; font-family: &quot;Times New Roman&quot;, serif; line-height: normal; =
background-image: initial; background-position: initial; background-size: i=
nitial; background-repeat: initial; background-origin: initial; background-=
clip: initial;"><b><i><span style=3D"padding: 0in; border-width: 1pt; borde=
r-style: none; border-color: windowtext; font-size: 12pt; color: rgb(204, 0=
, 0);">=C2=A0</span></i></b><b><i><span style=3D"padding: 0in; border-width=
: 1pt; border-style: none; border-color: windowtext; font-size: 12pt; color=
: white; background: rgb(19, 79, 92);">HURRY......!!!</span></i></b></p><p =
class=3D"MsoNormal" style=3D"font-size: 12pt; font-family: &quot;Times New =
Roman&quot;, serif; line-height: normal; background-image: initial; backgro=
und-position: initial; background-size: initial; background-repeat: initial=
; background-origin: initial; background-clip: initial;"><b><i><span style=
=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: wind=
owtext; font-size: 12pt; color: white; background: rgb(19, 79, 92);"><br></=
span></i></b></p><p class=3D"MsoNormal" style=3D"font-size: small; line-hei=
ght: normal;"><b><span style=3D"font-size: 20pt; font-family: &quot;Blackad=
der ITC&quot;; color: rgb(32, 18, 77);">---*-----</span></b></p><p class=3D=
"MsoNormal" style=3D"font-size: small; line-height: normal;"><b><span style=
=3D"font-size: 20pt; font-family: &quot;Blackadder ITC&quot;; color: rgb(32=
, 18, 77);">Happy Weekend</span></b><span style=3D"font-size: 12pt; font-fa=
mily: Arial, sans-serif; color: rgb(32, 18, 77);">=C2=A0=C2=A0</span></p><p=
 class=3D"MsoNormal" style=3D"font-size: small; line-height: normal;"><span=
 style=3D"font-size: 12pt;"><font face=3D"Arial, sans-serif">--</font></spa=
n></p><p class=3D"MsoNormal" style=3D"font-size: small; line-height: normal=
;"><b><span style=3D"font-size: 18pt; font-family: &quot;Edwardian Script I=
TC&quot;; color: rgb(127, 96, 0);">Thanks &amp; Regards..</span></b><b><spa=
n style=3D"font-size: 18pt; font-family: Cambria, serif; color: rgb(127, 96=
, 0);">=C2=A0</span></b><b><span style=3D"font-size: 18pt; font-family: Win=
gdings; color: rgb(127, 96, 0);">?</span></b><span style=3D"font-size: 12pt=
; font-family: Arial, sans-serif;">=C2=A0=C2=A0</span></p><p style=3D"font-=
size: small; font-family: arial, helvetica, sans-serif;"><b><i><span style=
=3D"line-height: 14.95px;">Prashanth</span></i></b></p><p style=3D"font-siz=
e: small; font-family: arial, helvetica, sans-serif;"><b><i><span style=3D"=
line-height: 14.95px;"></span></i></b><b><i><span style=3D"line-height: 14.=
95px;"><b><i><span style=3D"line-height: 14.95px;">US IT=C2=A0 RECRUITER</s=
pan></i></b><span style=3D"line-height: 14.95px;"></span></span></i></b></p=
><p style=3D"font-size: small; font-family: arial, helvetica, sans-serif;">=
<b><i><span style=3D"line-height: 14.95px;"><b><i><span style=3D"line-heigh=
t: 14.95px;">+1 (315)947-0775</span></i></b></span></i></b></p><p style=3D"=
font-size: small;"><font face=3D"arial, helvetica, sans-serif"><b><i>Email =
:=C2=A0<a href=3D"mailto:prasanth@genisists.com" target=3D"_blank" data-mt-=
detrack-inspected=3D"true" style=3D"color: rgb(17, 85, 204);">prasanth@geni=
sists.com</a></i></b></font></p><div style=3D"font-size: small; font-family=
: arial, helvetica, sans-serif;"><a data-mt-detrack-inspected=3D"true"><img=
 src=3D"https://ci3.googleusercontent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6=
h1MId3mNnYNVp0FhTmwRvKw4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta=
3pXcuwv4pCzpxtpwBgNsbnemBgpHaJdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa=
-dgKUoG8s9GZVwfTdzwY8rOrpS2MX5Csw=3Ds0-d-e1-ft#https://docs.google.com/uc?e=
xport=3Ddownload&amp;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0By=
EOHs6JWBvzS25CV0lwa2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" width=3D"200" height=3D"5=
8" class=3D"CToWUd"></a></div></div>

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
om/d/msgid/linux-ntb/93fe8dbf-db73-49dc-bd56-c766751f6e93%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/93fe8dbf-db73-49dc-bd56-c766751f6e93%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_1005_511901826.1559328559517--

------=_Part_1004_1569637427.1559328559516--
