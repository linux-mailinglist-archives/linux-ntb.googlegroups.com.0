Return-Path: <linux-ntb+bncBCELXQMOTUFBBSMXXLTQKGQEIU2BGQI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C852DEA7
	for <lists+linux-ntb@lfdr.de>; Wed, 29 May 2019 15:40:26 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id w139sf2124425ywd.13
        for <lists+linux-ntb@lfdr.de>; Wed, 29 May 2019 06:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DryxF406OuHLZZNLX+ZLidHjnAm+0ULEa1AvFUCtT7U=;
        b=BweBWMZqo6FA819/hRtGSHsF+y3QMd+nhobtjZ7KjT+udN5t9ttS5QfjUKZBlkh8Zz
         +TuUCdL6Plmk0HQ01n4SZj5qyE7ya+fMealSCQ5FpszUo7BrEOlQhfS5oIOyC13CWDGN
         sK6HDLV9vL2R/RXJHE2ANhqGRonP+wHELwvorux8TOVpu/n9cxwU5UDJMG05NiOSDqur
         bIXohd/TY1ByiEBXteGSDytScMJLoUlMNXWqiWyk1KwI0Wbx/2qIzJ41BXnTqdzpLkyH
         nhpiDmccYHSxEKZUacMLiGinWpjJS0//2nWAagCHvrzwlo3tG6yuIXGtL/P/a//D/txs
         wmGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DryxF406OuHLZZNLX+ZLidHjnAm+0ULEa1AvFUCtT7U=;
        b=gY7K7CMVHpkh9xB2aGYNKo0Gr1SPv06DxLrrE1yJ//mYXsKrHnINBHnFzkpxQu70W5
         vTx9iIY7+Du0My4MCn4WZDHChSw9Z8yorcqlQp6qCtKPFMNWMYs7vGWzr/1M6iEqmZej
         suJSvOMvOHl6yFBUZ/sV1UbUyv3E4MqvHO/Ayd+yG49Ywj0WZhdhycmgrgUBwSY542Pc
         1F5T/ReSNbdagJayuSGcwbbLNns/SdettyLIyRG/l8Q8eLG7pAWN/njsE7jX/O42G1yy
         +r+WrouDWco+9ulJgTx05NWeOiT0Clc9kaL682Mx/8zo4ZMz7OwEvN7MoOUxlt7uuWrX
         b9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DryxF406OuHLZZNLX+ZLidHjnAm+0ULEa1AvFUCtT7U=;
        b=RHIY1CFVD6Fxm0pxvNlNoXHzbnaG/2MxFiEkhcP+zzBeZrcFK5fvaC4pAn4B1yW+yM
         YmmUWI9+PrHtM/XnofC00WRSLhNcduyvfImjMNBznSk4UXdJEd4ix7Py1+ruXOSLPwwh
         1GyTZdh893iu4C3S+R0grmDndRAlC+QNkZA9rDnmtO86JuyG7TKAMgU6CuRe8H3kNQpx
         0mvJevpaHpDMflqhMLP0d7mZDUtiVGusHVyiVgMsnQtNaCLXys79KcIDcX5cszubAh+W
         Rr4uik2a13eXHjcQQZCiYQckNtyF+OBzUqR3+BBbiKl26PTIYNgY160ffttrnn/OGx4B
         PdRA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVHtd7pcI9ngNRqwq75FVw/UICgG6qaWlHWXvrL0raHXOsNMJlY
	K6W3lgFuOjKbNBapZahutgM=
X-Google-Smtp-Source: APXvYqxIWtAhtC/KwITNOI+XvPUEWBBn0jzrwAk4fg/u/kZau83ZrQaLwsUJd5RjKb9k5+ujo/rD2A==
X-Received: by 2002:a25:84cd:: with SMTP id x13mr27027175ybm.349.1559137225982;
        Wed, 29 May 2019 06:40:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:238c:: with SMTP id j134ls299489ywj.0.gmail; Wed, 29 May
 2019 06:40:25 -0700 (PDT)
X-Received: by 2002:a81:98cd:: with SMTP id p196mr41299095ywg.366.1559137225569;
        Wed, 29 May 2019 06:40:25 -0700 (PDT)
Date: Wed, 29 May 2019 06:40:25 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <fe0afcfc-2d98-46d9-be4b-7078aa13d446@googlegroups.com>
Subject: Direct Client Requirement for Salesforce Developer in  Arizona &
 Massechusetts
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2744_252615714.1559137225095"
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

------=_Part_2744_252615714.1559137225095
Content-Type: multipart/alternative; 
	boundary="----=_Part_2745_1441781226.1559137225096"

------=_Part_2745_1441781226.1559137225096
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



*WE HAVE URGENT REQUIREMENT FOR SALESFORCE DEVELOPER*


*SEND YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.*

            * NOTE : DIRECT CLIENT REQUIREMENT*=20


*Role:  Sales force Developer*

*Contract:  6 months+*

*Location:  Arizona/NJ, Massachusetts*

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

 *   Forward Your Resume To Below Mentioned Email Address. *

* HURRY......!!!*

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
linux-ntb/fe0afcfc-2d98-46d9-be4b-7078aa13d446%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_2745_1441781226.1559137225096
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" align=3D"center" style=3D"line-heig=
ht: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, seri=
f; text-align: center;"><b><i><span style=3D"background: rgb(7, 55, 99); fo=
nt-size: 13.5pt; color: white;">WE HAVE URGENT REQUIREMENT FOR SALESFORCE D=
EVELOPER</span></i></b></p><p class=3D"MsoNormal" align=3D"center" style=3D=
"line-height: normal; font-size: 12pt; font-family: &quot;Times New Roman&q=
uot;, serif; text-align: center;"><b><i><span style=3D"background: rgb(102,=
 0, 0); font-size: 13.5pt; color: white;"><br></span></i></b></p><div style=
=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin: 1em 0in; lin=
e-height: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;=
, serif;"><b style=3D"font-size: 12pt;"><span style=3D"color: rgb(12, 52, 6=
1);">SEND YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.</span></b><=
/p></div><div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"m=
argin: 1em 0in; line-height: normal; font-size: 12pt; font-family: &quot;Ti=
mes New Roman&quot;, serif;"><strong><span style=3D"font-size: 10pt; font-f=
amily: Calibri, sans-serif; color: black;">=C2=A0 =C2=A0</span></strong><st=
rong><span style=3D"font-size: 13.5pt; font-family: Calibri, sans-serif; co=
lor: black;">=C2=A0=C2=A0=C2=A0</span><span style=3D"font-size: 13.5pt; fon=
t-family: Calibri, sans-serif;"><font color=3D"#f3f3f3">=C2=A0</font><font =
color=3D"#ffffff">=C2=A0</font></span><font color=3D"#ffffff" style=3D"back=
ground-color: rgb(230, 145, 56);"><span style=3D"font-size: 13.5pt; font-fa=
mily: Calibri, sans-serif;">=C2=A0=C2=A0</span><span style=3D"font-size: 13=
.5pt; font-family: Calibri, sans-serif;">=C2=A0=C2=A0</span></font></strong=
><font color=3D"#ffffff" style=3D"background-color: rgb(230, 145, 56);"><st=
rong><span style=3D"font-size: 13.5pt; font-family: Calibri, sans-serif;">=
=C2=A0NOTE : DIRECT CLIENT REQUIREMENT</span></strong><span style=3D"font-s=
ize: 12pt;">=C2=A0</span></font></p></div><div style=3D"font-size: small;">=
<p class=3D"MsoNormal" style=3D"margin: 1em 0in; line-height: normal; font-=
size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></u></p></=
div><div><p class=3D"MsoNormal" style=3D"margin: 1em 0in; font-size: 12pt; =
line-height: normal; font-family: &quot;Times New Roman&quot;, serif;"><str=
ong><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color=
: black;"><br></span></strong></p><p class=3D"MsoNormal" style=3D"margin: 1=
em 0in; line-height: normal; font-family: &quot;Times New Roman&quot;, seri=
f;"><span style=3D"font-family: Calibri, sans-serif; color: black; backgrou=
nd-color: rgb(255, 255, 0);"><font size=3D"2"><b><u>Role:=C2=A0 Sales force=
=C2=A0Developer</u></b></font></span></p><p class=3D"MsoNormal" style=3D"ma=
rgin: 1em 0in; line-height: normal; font-family: &quot;Times New Roman&quot=
;, serif;"><span style=3D"font-family: Calibri, sans-serif; color: black; b=
ackground-color: rgb(255, 255, 0);"><font size=3D"2"><b><u>Contract:=C2=A0 =
6 months+</u></b></font></span></p><p class=3D"MsoNormal" style=3D"margin: =
1em 0in; line-height: normal; font-family: &quot;Times New Roman&quot;, ser=
if;"><span style=3D"font-family: Calibri, sans-serif; color: black; backgro=
und-color: rgb(255, 255, 0);"><font size=3D"2"><b><u>Location:=C2=A0 Arizon=
a/NJ, Massachusetts</u></b></font></span></p></div><div><p style=3D"margin:=
 0in 0in 0.0001pt; line-height: normal; font-family: &quot;Times New Roman&=
quot;, serif;"><font size=3D"2"><b style=3D"background-color: rgb(255, 255,=
 0);"><u></u></b></font></p><p style=3D"margin: 0in 0in 0.0001pt; line-heig=
ht: normal; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-family: Calibri, sans-serif; color: black; background-color: rgb(2=
55, 255, 0);"><font size=3D"2"><b><u>Client :=C2=A0 Direct</u></b></font></=
span><span style=3D"font-size: 12pt;"><u></u><u></u></span></p><p style=3D"=
margin: 0in 0in 0.0001pt; font-size: 12pt; line-height: normal; font-family=
: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 11.5pt; fo=
nt-family: Calibri, sans-serif; color: rgb(51, 51, 51);">=C2=A0</span><u></=
u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; line-he=
ight: normal; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; color: rgb(51, 51,=
 51);">=C2=A0</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt;=
 font-size: 12pt; line-height: normal; font-family: &quot;Times New Roman&q=
uot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-se=
rif; color: black; background: rgb(249, 249, 249);">Experience:</span><u></=
u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; line-he=
ight: normal; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgr=
ound: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in So=
ftware Development</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.00=
01pt; font-size: 12pt; line-height: normal; font-family: &quot;Times New Ro=
man&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sa=
ns-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 5+ years experience in Cloud Technology and an in-depth u=
nderstanding of the primary concepts and terminology</span><u></u><u></u></=
p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; line-height: norma=
l; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-si=
ze: 10pt; font-family: Calibri, sans-serif; color: black; background: rgb(2=
49, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years working on=C2=A0=
Salesforce=C2=A0applications (Lightning=C2=A0is a must-have.)</span><u></u>=
<u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; line-heig=
ht: normal; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgr=
ound: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years exper=
ience using Force.com (Advanced understanding of SFDC Triggers and Controll=
ers, VF page development, sObjects, SOQL etc)</span><u></u><u></u></p><p st=
yle=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; line-height: normal; font=
-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10p=
t; font-family: Calibri, sans-serif; color: black; background: rgb(249, 249=
, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 3+ year hands-on experience in a=
n Agile development team</span><u></u><u></u></p><p style=3D"margin: 0in 0i=
n 0.0001pt; font-size: 12pt; line-height: normal; font-family: &quot;Times =
New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calib=
ri, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 Experience in object oriented development is a must</=
span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12p=
t; line-height: normal; font-family: &quot;Times New Roman&quot;, serif;"><=
span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: bla=
ck; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Expe=
rience with SOAP and REST Web Services and integration using APIs is a must=
</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 1=
2pt; line-height: normal; font-family: &quot;Times New Roman&quot;, serif;"=
><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: b=
lack; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ex=
perience with source control, branching strategies and using code repositor=
ies a must</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; fo=
nt-size: 12pt; line-height: normal; font-family: &quot;Times New Roman&quot=
;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif=
; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0=
 =C2=A0=C2=A0Salesforce=C2=A0certification preferred</span><u></u><u></u></=
p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; line-height: norma=
l; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-si=
ze: 10pt; font-family: Calibri, sans-serif; color: black; background: rgb(2=
49, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Background in leveraging =
ETL products and tools (e.g. IBM DataStage, Informatica, etc.) for data man=
agement is preferred</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.=
0001pt; font-size: 12pt; line-height: normal; font-family: &quot;Times New =
Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, =
sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Previous experience of Test Driven development is preferr=
ed</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size:=
 12pt; line-height: normal; font-family: &quot;Times New Roman&quot;, serif=
;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color:=
 black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
Previous experience in a lead role within a team of engineers</span><u></u>=
<u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; line-heig=
ht: normal; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgr=
ound: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advanced under=
standing of the=C2=A0Salesforce=C2=A0platform and its primary functions.</s=
pan><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; line-height: normal; font-family: &quot;Times New Roman&quot;, serif;"><s=
pan style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: blac=
k; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Abili=
ty to learn new technologies and embrace the challenge learning presents</s=
pan><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt=
; line-height: normal; font-family: &quot;Times New Roman&quot;, serif;"><s=
pan style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: blac=
k; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 A sel=
f-starter, comfortable having conversations with business partners</span><u=
></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; line=
-height: normal; font-family: &quot;Times New Roman&quot;, serif;"><span st=
yle=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; bac=
kground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust and =
current knowledge of web standards, emerging technologies, and trends</span=
><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; l=
ine-height: normal; font-family: &quot;Times New Roman&quot;, serif;"><span=
 style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; =
background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability =
to think abstractly and deal with ambiguous/under-defined problems</span><u=
></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; line=
-height: normal; font-family: &quot;Times New Roman&quot;, serif;"><span st=
yle=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; bac=
kground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 An excellen=
t communicator, both verbally and written.</span><u></u><u></u></p></div><d=
iv style=3D"font-size: small;"><br></div><p class=3D"MsoNormal" style=3D"li=
ne-height: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot=
;, serif;"><span style=3D"background-color: rgb(106, 168, 79);">=C2=A0<b><u=
><span style=3D"color: rgb(76, 17, 48);">=C2=A0=C2=A0 Forward Your Resume T=
o Below Mentioned Email Address.=C2=A0</span></u></b></span></p><div style=
=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin: 1em 0in; lin=
e-height: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;=
, serif;"><b><i><span style=3D"color: rgb(204, 0, 0);">=C2=A0HURRY......!!!=
</span></i></b></p></div><div style=3D"font-size: small;"><br></div><span s=
tyle=3D"font-size: small;">--=C2=A0</span><br style=3D"font-size: small;"><=
div dir=3D"ltr" class=3D"m_651750292130139562gmail_signature" data-smartmai=
l=3D"gmail_signature" style=3D"font-size: small;"><div dir=3D"ltr"><div dir=
=3D"ltr"><p style=3D"font-family: arial, helvetica, sans-serif;"><b><i><spa=
n style=3D"line-height: 14.95px;">Thanks &amp; Regards,</span></i></b><span=
 style=3D"line-height: 14.95px;"></span></p><p style=3D"font-family: arial,=
 helvetica, sans-serif;"><b><i><span style=3D"line-height: 14.95px;">Prasha=
nth</span></i></b></p><p style=3D"font-family: arial, helvetica, sans-serif=
;"><b><i><span style=3D"line-height: 14.95px;"></span></i></b><b><i><span s=
tyle=3D"line-height: 14.95px;"><b><i><span style=3D"line-height: 14.95px;">=
US IT=C2=A0 RECRUITER</span></i></b><span style=3D"line-height: 14.95px;"><=
/span></span></i></b></p><p style=3D"font-family: arial, helvetica, sans-se=
rif;"><b><i><span style=3D"line-height: 14.95px;"><b><i><span style=3D"line=
-height: 14.95px;">+1 (315)947-0775</span></i></b></span></i></b></p><p><fo=
nt face=3D"arial, helvetica, sans-serif"><b><i>Email :=C2=A0<a href=3D"mail=
to:prasanth@genisists.com" target=3D"_blank" data-mt-detrack-inspected=3D"t=
rue" style=3D"color: rgb(17, 85, 204);">prasanth@genisists.com</a></i></b><=
/font></p><div style=3D"font-family: arial, helvetica, sans-serif;"><a data=
-mt-detrack-inspected=3D"true"><img src=3D"https://ci3.googleusercontent.co=
m/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3mNnYNVp0FhTmwRvKw4LQgks3iaTXQjOOUH=
-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv4pCzpxtpwBgNsbnemBgpHaJdmsOJsiQZB=
LfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG8s9GZVwfTdzwY8rOrpS2MX5Csw=3Ds0-d=
-e1-ft#https://docs.google.com/uc?export=3Ddownload&amp;id=3D1fyCxLrUTDZagX=
7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25CV0lwa2FFS2syRWxCbGdlYUxaUF=
pjL0N3PQ" width=3D"200" height=3D"58" class=3D"CToWUd"></a></div></div></di=
v></div></div>

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
om/d/msgid/linux-ntb/fe0afcfc-2d98-46d9-be4b-7078aa13d446%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/fe0afcfc-2d98-46d9-be4b-7078aa13d446%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_2745_1441781226.1559137225096--

------=_Part_2744_252615714.1559137225095--
