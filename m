Return-Path: <linux-ntb+bncBCELXQMOTUFBBKGFX7TQKGQEMH3LVIA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EC78F2FCD9
	for <lists+linux-ntb@lfdr.de>; Thu, 30 May 2019 16:03:21 +0200 (CEST)
Received: by mail-yw1-xc3e.google.com with SMTP id g202sf5586732ywb.1
        for <lists+linux-ntb@lfdr.de>; Thu, 30 May 2019 07:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zGze6BFG2ZjM3rxPZQT+wkhCJ99aGJ4xWzCEPUkl4hI=;
        b=D2EHVOr0jnjdXZBBp1xxz4X2wwPglQfGV4/ghHLd2040w46iBCm/r/ykb3s9sQMEDM
         qJZSEoO7t/hWf0aZRfPtjL/8jZ+3DR3vq4WPMTn9c5mTCUb+jAGIoGB1drHiDCcOh6Kx
         SaYtAVQp7o4sGxk60yENLhgGu5P7ChXjgYC9Zx3IfDaOWHIkyggo8G+zklilJAPXk96y
         9MBgsZWQQSphA7QQsU6blE60a78LquAbn59fHu+I/89xidy4xgzYhtdZREc7Mp/zGdS5
         SzzH/2oUrtFrhtGKDrclCG1QlOR/qttX7sYRHtkZ9KyjmCBCNeEK/lJPdb8GxDDl+NB8
         HfhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zGze6BFG2ZjM3rxPZQT+wkhCJ99aGJ4xWzCEPUkl4hI=;
        b=M5h78uwntpSxfXA4PS0KoE7L42KRoLBpQ1fkpgG/kj7OZDNpyAYlN12frm44UyvIb8
         1fAfChHS7rJvf72oZDh5orlAWa7BjCAFwYQM+ilJFBx4Rtj1Y9AWG7kC4mQTDiT6EAV8
         LImtba72bXsMs9jFXYpDwJXqfSnoaaKYvAz2YpkJExuL4QELrfZktdupQsckXDiNwfQI
         TROExkx1gWzh0seeBoyW7LaT/dIASI+y+15nhSC5du7QyHCd0KUCMXZEzVEseRPbFW7o
         D1QeLQdtx9GEzv/DBQWtAqHLa9z3xr9l/+/K2VULHueO/rSqjNaXfYwf0DgdBcdypMCG
         Cexg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zGze6BFG2ZjM3rxPZQT+wkhCJ99aGJ4xWzCEPUkl4hI=;
        b=ob6+y+fKWPfBr+6oR3dURMdwa1LwHzZ7fpn6iQhdsi4I07Bnc3c8Bd9rhHgDWeU74k
         h9UZX58wcmOxr36UXox3FveSNOQMfycXLenAGZc79k0x9s8GZv+LiDBE88RvnLx7Yhr4
         5io7Utl3AhRnJ7TZdfBIjjCpbbB3r6VNuTWlhjqS5eZXJWDxl8vVs3uYaTCZKRGeMio0
         4HkVgzMJ6FeCiCd9MT7mdYcB2pghS4ISbbeRkiBgVRs/aZqhJEmLaMjHboZwcIFt61hS
         hgeYLdsSKCjJ5F/W3SZV9sTdfW/WjBXZ+EwC9Yyr/apKuHCMBrbh9gspgc8X5WZbEwtI
         1jkA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUamj9HFvIwYmI5gwq9PwwzX4gok5BpWBp12Xn/sL0ffGxUWo5/
	cl8dZNCfNXfWU3lBQ7Xg02E=
X-Google-Smtp-Source: APXvYqxc2zL92TPuKyooVsObkjx+C21sGFpT4YtRCMqKbDaOVHQMCWE9I9GOBz3gOiSHIjHyeLc1jA==
X-Received: by 2002:a0d:e401:: with SMTP id n1mr2105460ywe.316.1559225000728;
        Thu, 30 May 2019 07:03:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:2f4b:: with SMTP id v72ls595948ybv.11.gmail; Thu, 30 May
 2019 07:03:20 -0700 (PDT)
X-Received: by 2002:a25:4489:: with SMTP id r131mr1708005yba.14.1559225000349;
        Thu, 30 May 2019 07:03:20 -0700 (PDT)
Date: Thu, 30 May 2019 07:03:19 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <761f060b-fff4-4a95-b065-01ad93695735@googlegroups.com>
Subject: Direct Client Requirement For Salesforce In Arizona & Pennsylvania
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_367_641562823.1559224999795"
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

------=_Part_367_641562823.1559224999795
Content-Type: multipart/alternative; 
	boundary="----=_Part_368_941158193.1559224999795"

------=_Part_368_941158193.1559224999795
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



*WE HAVE URGENT REQUIREMENT FOR SALESFORCE DEVELOPER*


*SHARE YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.*

            * NOTE : DIRECT CLIENT REQUIREMENT*=20


*Role:  Sales force Developer*

*Contract:  6 months+*

*Location:  Arizona & Pennsylvania*

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
linux-ntb/761f060b-fff4-4a95-b065-01ad93695735%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_368_941158193.1559224999795
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" align=3D"center" style=3D"line-heig=
ht: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, seri=
f; text-align: center;"><b><i><span style=3D"background: rgb(103, 78, 167);=
 font-size: 13.5pt; color: white;">WE HAVE URGENT REQUIREMENT FOR SALESFORC=
E DEVELOPER</span></i></b></p><p class=3D"MsoNormal" align=3D"center" style=
=3D"line-height: normal; font-size: 12pt; font-family: &quot;Times New Roma=
n&quot;, serif; text-align: center;"><b><i><span style=3D"background: rgb(1=
02, 0, 0); font-size: 13.5pt; color: white;"><br></span></i></b></p><div st=
yle=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin: 1em 0in; =
line-height: normal; font-size: 12pt; font-family: &quot;Times New Roman&qu=
ot;, serif;"><b style=3D"font-size: 12pt;"><span style=3D"color: rgb(12, 52=
, 61);">SHARE YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.</span><=
/b></p></div><div style=3D"font-size: small;"><p class=3D"MsoNormal" style=
=3D"margin: 1em 0in; line-height: normal; font-size: 12pt; font-family: &qu=
ot;Times New Roman&quot;, serif;"><strong><span style=3D"font-size: 10pt; f=
ont-family: Calibri, sans-serif; color: black;">=C2=A0 =C2=A0</span></stron=
g><strong><span style=3D"font-size: 13.5pt; font-family: Calibri, sans-seri=
f; color: black;">=C2=A0=C2=A0=C2=A0</span><font color=3D"#ffffff" style=3D=
"background-color: rgb(106, 168, 79);"><span style=3D"font-size: 13.5pt; fo=
nt-family: Calibri, sans-serif;">=C2=A0=C2=A0</span><span style=3D"font-siz=
e: 13.5pt; font-family: Calibri, sans-serif;">=C2=A0=C2=A0</span><span styl=
e=3D"font-size: 13.5pt; font-family: Calibri, sans-serif;">=C2=A0=C2=A0</sp=
an></font></strong><font color=3D"#ffffff" style=3D"background-color: rgb(1=
06, 168, 79);"><strong><span style=3D"font-size: 13.5pt; font-family: Calib=
ri, sans-serif;">=C2=A0NOTE : DIRECT CLIENT REQUIREMENT</span></strong><spa=
n style=3D"font-size: 12pt;">=C2=A0</span></font></p></div><div style=3D"fo=
nt-size: small;"><p class=3D"MsoNormal" style=3D"margin: 1em 0in; line-heig=
ht: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, seri=
f;"><u></u></p></div><div><p class=3D"MsoNormal" style=3D"margin: 1em 0in; =
line-height: normal; font-size: 12pt; font-family: &quot;Times New Roman&qu=
ot;, serif;"><strong><span style=3D"font-size: 10pt; font-family: Calibri, =
sans-serif; color: black;"><br></span></strong></p><p class=3D"MsoNormal" s=
tyle=3D"margin: 1em 0in; line-height: normal;"><span style=3D"color: black;=
 background-color: rgb(255, 255, 0);"><u><b><font size=3D"2" face=3D"georgi=
a, serif">Role:=C2=A0 Sales force=C2=A0Developer</font></b></u></span></p><=
p class=3D"MsoNormal" style=3D"margin: 1em 0in; line-height: normal;"><span=
 style=3D"color: black; background-color: rgb(255, 255, 0);"><u><b><font si=
ze=3D"2" face=3D"georgia, serif">Contract:=C2=A0 6 months+</font></b></u></=
span></p><p class=3D"MsoNormal" style=3D"margin: 1em 0in; line-height: norm=
al;"><b><font size=3D"2" face=3D"georgia, serif"><span style=3D"color: blac=
k;"><u><span style=3D"background-color: rgb(255, 255, 0);">Location:=C2=A0=
=C2=A0Arizona &amp;=C2=A0</span></u></span><u style=3D"background-color: rg=
b(255, 255, 0);">Pennsylvania</u></font></b></p></div><div><p style=3D"marg=
in: 0in 0in 0.0001pt; line-height: normal;"><span style=3D"background-color=
: rgb(255, 255, 0);"><b><font size=3D"2" face=3D"georgia, serif"><u></u></f=
ont></b></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: norma=
l;"><b><font size=3D"2" face=3D"georgia, serif"><span style=3D"color: black=
; background-color: rgb(255, 255, 0);"><u>Client :=C2=A0 Direct</u></span><=
u></u><u></u></font></b></p><p style=3D"margin: 0in 0in 0.0001pt; line-heig=
ht: normal; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-family: Calibri, sans-serif; color: rgb(51, 51, 51);"><b><font siz=
e=3D"4">=C2=A0</font></b></span><span style=3D"font-size: 12pt;"><u></u><u>=
</u></span></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; f=
ont-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span sty=
le=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; color: rgb(51, 5=
1, 51);">=C2=A0</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001p=
t; line-height: normal; font-size: 12pt; font-family: &quot;Times New Roman=
&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-=
serif; color: black; background: rgb(249, 249, 249);">Experience:</span><u>=
</u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; f=
ont-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span sty=
le=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; back=
ground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in =
Software Development</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.=
0001pt; line-height: normal; font-size: 12pt; font-family: &quot;Times New =
Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, =
sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 5+ years experience in Cloud Technology and an in-depth u=
nderstanding of the primary concepts and terminology</span><u></u><u></u></=
p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12p=
t; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-si=
ze: 10pt; font-family: Calibri, sans-serif; color: black; background: rgb(2=
49, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years working on=C2=A0=
Salesforce=C2=A0applications (Lightning=C2=A0is a must-have.)</span><u></u>=
<u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-=
size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgr=
ound: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years exper=
ience using Force.com (Advanced understanding of SFDC Triggers and Controll=
ers, VF page development, sObjects, SOQL etc)</span><u></u><u></u></p><p st=
yle=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; font=
-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10p=
t; font-family: Calibri, sans-serif; color: black; background: rgb(249, 249=
, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 3+ year hands-on experience in a=
n Agile development team</span><u></u><u></u></p><p style=3D"margin: 0in 0i=
n 0.0001pt; line-height: normal; font-size: 12pt; font-family: &quot;Times =
New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calib=
ri, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 Experience in object oriented development is a must</=
span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: n=
ormal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><=
span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: bla=
ck; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Expe=
rience with SOAP and REST Web Services and integration using APIs is a must=
</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height:=
 normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"=
><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: b=
lack; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ex=
perience with source control, branching strategies and using code repositor=
ies a must</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; li=
ne-height: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot=
;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif=
; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0=
 =C2=A0=C2=A0Salesforce=C2=A0certification preferred</span><u></u><u></u></=
p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12p=
t; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-si=
ze: 10pt; font-family: Calibri, sans-serif; color: black; background: rgb(2=
49, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Background in leveraging =
ETL products and tools (e.g. IBM DataStage, Informatica, etc.) for data man=
agement is preferred</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.=
0001pt; line-height: normal; font-size: 12pt; font-family: &quot;Times New =
Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, =
sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Previous experience of Test Driven development is preferr=
ed</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-heigh=
t: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif=
;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color:=
 black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
Previous experience in a lead role within a team of engineers</span><u></u>=
<u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-=
size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgr=
ound: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advanced under=
standing of the=C2=A0Salesforce=C2=A0platform and its primary functions.</s=
pan><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: no=
rmal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><s=
pan style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: blac=
k; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Abili=
ty to learn new technologies and embrace the challenge learning presents</s=
pan><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: no=
rmal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><s=
pan style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: blac=
k; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 A sel=
f-starter, comfortable having conversations with business partners</span><u=
></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; =
font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span st=
yle=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; bac=
kground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust and =
current knowledge of web standards, emerging technologies, and trends</span=
><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: norma=
l; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span=
 style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; =
background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability =
to think abstractly and deal with ambiguous/under-defined problems</span><u=
></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; =
font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span st=
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
, serif;"><b><i><font color=3D"#cc0000">=C2=A0</font><span style=3D"backgro=
und-color: rgb(19, 79, 92);"><font color=3D"#ffffff">HURRY......!!!</font><=
/span></i></b></p></div><div style=3D"font-size: small;"><br></div><span st=
yle=3D"font-size: small;">--=C2=A0</span><br style=3D"font-size: small;"><d=
iv dir=3D"ltr" class=3D"m_-7546229221283185261gmail_signature" data-smartma=
il=3D"gmail_signature" style=3D"font-size: small;"><div dir=3D"ltr"><div di=
r=3D"ltr"><p style=3D"font-family: arial, helvetica, sans-serif;"><b><i><sp=
an style=3D"line-height: 14.95px;">Thanks &amp; Regards,</span></i></b><spa=
n style=3D"line-height: 14.95px;"></span></p><p style=3D"font-family: arial=
, helvetica, sans-serif;"><b><i><span style=3D"line-height: 14.95px;">Prash=
anth</span></i></b></p><p style=3D"font-family: arial, helvetica, sans-seri=
f;"><b><i><span style=3D"line-height: 14.95px;"></span></i></b><b><i><span =
style=3D"line-height: 14.95px;"><b><i><span style=3D"line-height: 14.95px;"=
>US IT=C2=A0 RECRUITER</span></i></b><span style=3D"line-height: 14.95px;">=
</span></span></i></b></p><p style=3D"font-family: arial, helvetica, sans-s=
erif;"><b><i><span style=3D"line-height: 14.95px;"><b><i><span style=3D"lin=
e-height: 14.95px;">+1 (315)947-0775</span></i></b></span></i></b></p><p><f=
ont face=3D"arial, helvetica, sans-serif"><b><i>Email :=C2=A0<a href=3D"mai=
lto:prasanth@genisists.com" target=3D"_blank" data-mt-detrack-inspected=3D"=
true" style=3D"color: rgb(17, 85, 204);">prasanth@genisists.com</a></i></b>=
</font></p><div style=3D"font-family: arial, helvetica, sans-serif;"><a dat=
a-mt-detrack-inspected=3D"true"><img src=3D"https://ci3.googleusercontent.c=
om/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3mNnYNVp0FhTmwRvKw4LQgks3iaTXQjOOU=
H-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv4pCzpxtpwBgNsbnemBgpHaJdmsOJsiQZ=
BLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG8s9GZVwfTdzwY8rOrpS2MX5Csw=3Ds0-=
d-e1-ft#https://docs.google.com/uc?export=3Ddownload&amp;id=3D1fyCxLrUTDZag=
X7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25CV0lwa2FFS2syRWxCbGdlYUxaU=
FpjL0N3PQ" width=3D"200" height=3D"58" class=3D"CToWUd"></a></div></div></d=
iv></div></div>

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
om/d/msgid/linux-ntb/761f060b-fff4-4a95-b065-01ad93695735%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/761f060b-fff4-4a95-b065-01ad93695735%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_368_941158193.1559224999795--

------=_Part_367_641562823.1559224999795--
