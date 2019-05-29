Return-Path: <linux-ntb+bncBCELXQMOTUFBBAFOXPTQKGQEPOHK6XQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BD42E4EA
	for <lists+linux-ntb@lfdr.de>; Wed, 29 May 2019 21:01:21 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id t2sf3023646ywc.10
        for <lists+linux-ntb@lfdr.de>; Wed, 29 May 2019 12:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qKW9m0wQhgxAVwyKWxL3v8CLyf48NT0KHvlTcoM0I+w=;
        b=q3bY8hcrB5dK9lW+TKf3cJ0YjyWzfRLksaK6IBwymgRUv5ZrcqhfxBzbNWjeT5n5Zn
         EMWrhhBup46NPfVJevmIjgEOkBDcFzTV2Ibf4JUrALQbJl7SXdcr1kQwwOun3mvIO6Xf
         xzbeE5jPUOqMi4xt/vSu0lrAGcHDwg0+4z68Rw+xeZKCSA9k0ygjHisqNIhDIM5+86DV
         tabvTML0R64iC04mp2f6FBlrLl9TJxdlA+o0SMF+JWCHgyt4opgwfmw7N/PB8KeOSoTb
         EezxVWRwIX0vBsW3TTl8hd8aBv5ImR4vwvQeSbQc3GYRbVI4fRK21CX0Ve/nm+FWEICI
         F4yg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qKW9m0wQhgxAVwyKWxL3v8CLyf48NT0KHvlTcoM0I+w=;
        b=V9IVfJJfafvIIMAC1ycXvqfRDVQ/Rxj/pqxSksWifRBnYL/N17f899IHSrCSZ9XPb/
         ZpHOn433WEV4t/LcKoy/nW0Ocqbxlr9PPGdQDqRZ5g3LXu9WT9GXPq2UK27Ploip85vM
         bCAuTnxH3kBJvfkrDYwgIMuSpUzHomhto1nFTHMUw0v0+kiiDQseIGRJn1Orh9xJkGQr
         XNJFm0aiN5E/swdcT5XLQMzOBG6RTCuom8lmW1j47gMhWI3IEawDi+QlewObZA7vlDyh
         wHM8q93fj5Rlg7LP0DEYNQ82sCCvkwn5fZbJDmB6YP6qaTMORqInQRP8/8qQkOvMfGfh
         vZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qKW9m0wQhgxAVwyKWxL3v8CLyf48NT0KHvlTcoM0I+w=;
        b=gxeYA1O0YLTfq9QHutjupbhJKhtb/lO+SEETBPfFQQl5FU08lsRRrHe59Qq1VgUzxw
         I57kIJjbXMwD5FUKEgsVVUmmXesJqThlMoPLsnSEXg2+7uLz9PlVDqKvIhV+eOxpOt2z
         WEscKy2N7Hkaz9WATgzi/CYMPT0bDTEp2fFmWtdGVAxJ5fp8Mn1l/ilPmS1SfHPfpHgT
         HmkC+7MOsILo44lEN1stKF5bJf4VBjwwlYuCTwyhaW/vnfDMLfUmcYScciO4GNiTptHa
         3E+YuQsZbSTZJa2gBGPH4iBIUDimHhJe8xkvbJ6NNhfbkXzfgaatfU4r8tKxBA3JuIO/
         k/sg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUAwtY7GaNRKs+G1KXfmwDFV6yDKhcfabqxu4crsaqzv/BeBoc2
	zCCT+bcscric0CS2VHNfgY4=
X-Google-Smtp-Source: APXvYqyr0No1JO+DqiUJ/ww3wJDpLxMLTcClEnyDEbu1Q0c1NLoW4EJMicUnEUHUmzl1llWDNyT20g==
X-Received: by 2002:a25:e80c:: with SMTP id k12mr10449224ybd.381.1559156480477;
        Wed, 29 May 2019 12:01:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:2947:: with SMTP id p68ls419593ywp.9.gmail; Wed, 29 May
 2019 12:01:20 -0700 (PDT)
X-Received: by 2002:a81:b84:: with SMTP id 126mr62530200ywl.257.1559156479919;
        Wed, 29 May 2019 12:01:19 -0700 (PDT)
Date: Wed, 29 May 2019 12:01:19 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <91237e02-5363-40d1-9f01-c5eb80141401@googlegroups.com>
Subject: Direct Client Requirement for Salesforce Developer in Pennsylvania
 Location
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13_2130379459.1559156479291"
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

------=_Part_13_2130379459.1559156479291
Content-Type: multipart/alternative; 
	boundary="----=_Part_14_2125635286.1559156479292"

------=_Part_14_2125635286.1559156479292
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



  *URGENT REQUIREMENT FOR SALESFORCE DEVELOPER*

=20

SEND YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.

=20

=20

            * NOTE : DIRECT CLIENT REQUIREMENT*

=20

*Role: Sales force Developer*

*Contract: 6 months+*

*Location: **Pennsylvania*

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
linux-ntb/91237e02-5363-40d1-9f01-c5eb80141401%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_14_2125635286.1559156479292
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" align=3D"center" style=3D"font-size=
: 12pt; font-family: &quot;Times New Roman&quot;, serif; text-align: center=
;"><u>=C2=A0<font color=3D"#f3f3f3" style=3D"background-color: rgb(53, 28, =
117);">=C2=A0</font></u><b><i><u><span style=3D"font-size: 13.5pt; font-fam=
ily: Verdana, sans-serif; background-color: rgb(53, 28, 117);"><font color=
=3D"#f3f3f3">URGENT REQUIREMENT FOR SALESFORCE DEVELOPER</font></span></u><=
/i></b><u></u><u></u></p><div style=3D"font-size: small;"><p class=3D"MsoNo=
rmal" style=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; font-f=
amily: &quot;Times New Roman&quot;, serif;"><u></u>=C2=A0<u></u></p></div><=
div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-righ=
t: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Rom=
an&quot;, serif;"><span style=3D"color: rgb(80, 0, 80);">SEND YOUR UPDATED =
RESUME TO BELOW MENTIONED EMAIL ADDRESS.<u></u><u></u></span></p></div><div=
 style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-right: =
0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&=
quot;, serif;"><span style=3D"color: rgb(80, 0, 80);"><u></u>=C2=A0<u></u><=
/span></p></div><div style=3D"font-size: small;"><p class=3D"MsoNormal" sty=
le=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &q=
uot;Times New Roman&quot;, serif;"><span style=3D"color: rgb(80, 0, 80);"><=
u></u>=C2=A0<u></u></span></p></div><div style=3D"font-size: small;"><p cla=
ss=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0in; font-size: 1=
2pt; font-family: &quot;Times New Roman&quot;, serif;"><strong><span style=
=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black;">=C2=
=A0 =C2=A0</span></strong><strong><span style=3D"font-size: 13.5pt; font-fa=
mily: Calibri, sans-serif; color: black;">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0</span></strong><strong><span style=3D"font-size: 13.5pt; font-family=
: Calibri, sans-serif;"><font color=3D"#0000ff">=C2=A0</font><span style=3D=
"background-color: rgb(56, 118, 29);"><font color=3D"#ffffff">NOTE : DIRECT=
 CLIENT REQUIREMENT</font></span></span></strong><u></u><u></u></p></div><d=
iv style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-right=
: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roma=
n&quot;, serif;"><u></u>=C2=A0<u></u></p></div><div style=3D"font-size: sma=
ll;"><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0in; f=
ont-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span sty=
le=3D"background-color: rgb(255, 255, 0);"><strong><span style=3D"font-size=
: 10pt; font-family: Calibri, sans-serif; color: black;">Role:=C2=A0Sales f=
orce=C2=A0Developer</span></strong><span style=3D"color: rgb(80, 0, 80);"><=
u></u><u></u></span></span></p></div><div><p style=3D"margin: 0in 0in 0.000=
1pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><sp=
an style=3D"background-color: rgb(255, 255, 0);"><strong><span style=3D"fon=
t-size: 10pt; font-family: Calibri, sans-serif; color: black;">Contract: 6 =
months+</span></strong><span style=3D"font-size: 11.5pt; font-family: Calib=
ri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></span></p><p =
style=3D"margin: 0in 0in 0.0001pt; font-family: &quot;Times New Roman&quot;=
, serif;"><span style=3D"background-color: rgb(255, 255, 0);"><strong style=
=3D"font-size: 12pt;"><span style=3D"font-size: 10pt; font-family: Calibri,=
 sans-serif; color: black;">Location:=C2=A0</span></strong><span style=3D"f=
ont-family: arial, sans-serif;"><b><font size=3D"2">Pennsylvania</font></b>=
</span></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; fo=
nt-family: &quot;Times New Roman&quot;, serif;"><strong><span style=3D"font=
-size: 10pt; font-family: Calibri, sans-serif; color: black; background-col=
or: rgb(255, 255, 0);">Client : Direct</span></strong><span style=3D"font-s=
ize: 11.5pt; font-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u><=
/u><u></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt;=
 font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size=
: 11.5pt; font-family: Calibri, sans-serif; color: rgb(51, 51, 51);">=C2=A0=
<u></u><u></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 1=
2pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-=
size: 11.5pt; font-family: Calibri, sans-serif; color: rgb(51, 51, 51);">=
=C2=A0<u></u><u></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-s=
ize: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D=
"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgroun=
d: rgb(249, 249, 249);">Experience:</span><span style=3D"font-size: 11.5pt;=
 font-family: Calibri, sans-serif; color: rgb(51, 51, 51);"><u></u><u></u><=
/span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-famil=
y: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; fon=
t-family: Calibri, sans-serif; color: black; background: rgb(249, 249, 249)=
;">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in Software Development</span=
><span style=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; color:=
 rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"margin: 0in 0in 0.00=
01pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><s=
pan style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: blac=
k; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ ye=
ars experience in Cloud Technology and an in-depth understanding of the pri=
mary concepts and terminology</span><span style=3D"font-size: 11.5pt; font-=
family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span><=
/p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quo=
t;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-famil=
y: Calibri, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=
=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years working on=C2=A0Salesforce=C2=A0app=
lications (Lightning=C2=A0is a must-have.)</span><span style=3D"font-size: =
11.5pt; font-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u=
></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font=
-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10p=
t; font-family: Calibri, sans-serif; color: black; background: rgb(249, 249=
, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience using Force.=
com (Advanced understanding of SFDC Triggers and Controllers, VF page devel=
opment, sObjects, SOQL etc)</span><span style=3D"font-size: 11.5pt; font-fa=
mily: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p=
><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;=
Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family:=
 Calibri, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 3+ year hands-on experience in an Agile develop=
ment team</span><span style=3D"font-size: 11.5pt; font-family: Calibri, san=
s-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"margi=
n: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&qu=
ot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-ser=
if; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Experience in object oriented development is a must</span><span =
style=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; color: rgb(80=
, 0, 80);"><u></u><u></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; f=
ont-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span sty=
le=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; back=
ground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience w=
ith SOAP and REST Web Services and integration using APIs is a must</span><=
span style=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; color: r=
gb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"margin: 0in 0in 0.0001=
pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><spa=
n style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black;=
 background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experie=
nce with source control, branching strategies and using code repositories a=
 must</span><span style=3D"font-size: 11.5pt; font-family: Calibri, sans-se=
rif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"margin: 0=
in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;,=
 serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; =
color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0Salesforce=C2=A0certification preferred</span><span style=3D"fo=
nt-size: 11.5pt; font-family: Calibri, sans-serif; color: rgb(80, 0, 80);">=
<u></u><u></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 1=
2pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-=
size: 10pt; font-family: Calibri, sans-serif; color: black; background: rgb=
(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Background in leveragin=
g ETL products and tools (e.g. IBM DataStage, Informatica, etc.) for data m=
anagement is preferred</span><span style=3D"font-size: 11.5pt; font-family:=
 Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p s=
tyle=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times=
 New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Cali=
bri, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience of Test Driven development is =
preferred</span><span style=3D"font-size: 11.5pt; font-family: Calibri, san=
s-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"margi=
n: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&qu=
ot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-ser=
if; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Previous experience in a lead role within a team of engineers</s=
pan><span style=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; col=
or: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"margin: 0in 0in 0=
.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"=
><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: b=
lack; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ad=
vanced understanding of the=C2=A0Salesforce=C2=A0platform and its primary f=
unctions.</span><span style=3D"font-size: 11.5pt; font-family: Calibri, san=
s-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"margi=
n: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&qu=
ot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-ser=
if; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Ability to learn new technologies and embrace the challenge lear=
ning presents</span><span style=3D"font-size: 11.5pt; font-family: Calibri,=
 sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"m=
argin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roma=
n&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans=
-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 A self-starter, comfortable having conversations with busines=
s partners</span><span style=3D"font-size: 11.5pt; font-family: Calibri, sa=
ns-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"marg=
in: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&q=
uot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-se=
rif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Robust and current knowledge of web standards, emerging technolo=
gies, and trends</span><span style=3D"font-size: 11.5pt; font-family: Calib=
ri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=
=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New=
 Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri,=
 sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Ability to think abstractly and deal with ambiguous/un=
der-defined problems</span><span style=3D"font-size: 11.5pt; font-family: C=
alibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p sty=
le=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times N=
ew Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibr=
i, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 An excellent communicator, both verbally and written.<=
/span><span style=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; c=
olor: rgb(80, 0, 80);"><u></u><u></u></span></p></div><div style=3D"font-si=
ze: small;"><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left:=
 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u=
></u>=C2=A0<u></u></p></div><p class=3D"MsoNormal" style=3D"font-size: 12pt=
; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"backgrou=
nd-color: rgb(153, 0, 255);"><font color=3D"#ffffff">=C2=A0<b><u>=C2=A0=C2=
=A0 Forward Your Resume To Below Mentioned Email Address.=C2=A0</u></b></fo=
nt></span><u></u><u></u></p><div style=3D"font-size: small;"><p class=3D"Ms=
oNormal" style=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; fon=
t-family: &quot;Times New Roman&quot;, serif;"><b><i><span style=3D"color: =
rgb(204, 0, 0);">=C2=A0=C2=A0</span></i></b><u></u><u></u></p></div><div st=
yle=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-right: 0in=
; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quo=
t;, serif;"><b><i><span style=3D"background-color: rgb(76, 17, 48);"><font =
color=3D"#ffffff">=C2=A0HURRY......!!!</font></span></i></b></p></div><div =
style=3D"font-size: small;"><br></div><span style=3D"font-size: small;">--=
=C2=A0</span><br style=3D"font-size: small;"><div dir=3D"ltr" class=3D"m_-8=
928206795397569659gmail_signature" data-smartmail=3D"gmail_signature" style=
=3D"font-size: small;"><div dir=3D"ltr"><div dir=3D"ltr"><p style=3D"font-f=
amily: arial, helvetica, sans-serif;"><b><i><span style=3D"line-height: 14.=
95px;">Thanks &amp; Regards,</span></i></b><span style=3D"line-height: 14.9=
5px;"></span></p><p style=3D"font-family: arial, helvetica, sans-serif;"><b=
><i><span style=3D"line-height: 14.95px;">Prashanth</span></i></b></p><p st=
yle=3D"font-family: arial, helvetica, sans-serif;"><b><i><span style=3D"lin=
e-height: 14.95px;"></span></i></b><b><i><span style=3D"line-height: 14.95p=
x;"><b><i><span style=3D"line-height: 14.95px;">US IT=C2=A0 RECRUITER</span=
></i></b><span style=3D"line-height: 14.95px;"></span></span></i></b></p><p=
 style=3D"font-family: arial, helvetica, sans-serif;"><b><i><span style=3D"=
line-height: 14.95px;"><b><i><span style=3D"line-height: 14.95px;">+1 (315)=
947-0775</span></i></b></span></i></b></p><p><font face=3D"arial, helvetica=
, sans-serif"><b><i>Email :=C2=A0<a href=3D"mailto:prasanth@genisists.com" =
target=3D"_blank" data-mt-detrack-inspected=3D"true" style=3D"color: rgb(17=
, 85, 204);">prasanth@genisists.com</a></i></b></font></p><div style=3D"fon=
t-family: arial, helvetica, sans-serif;"><a data-mt-detrack-inspected=3D"tr=
ue"><img src=3D"https://ci3.googleusercontent.com/proxy/1gcs-zxCV-sXBHAkDUN=
XCCVJ2a6h1MId3mNnYNVp0FhTmwRvKw4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0E=
xMjAXvta3pXcuwv4pCzpxtpwBgNsbnemBgpHaJdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vq=
sJTZo4qa-dgKUoG8s9GZVwfTdzwY8rOrpS2MX5Csw=3Ds0-d-e1-ft#https://docs.google.=
com/uc?export=3Ddownload&amp;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;rev=
id=3D0ByEOHs6JWBvzS25CV0lwa2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" width=3D"200" hei=
ght=3D"58" class=3D"CToWUd"></a></div></div></div></div></div>

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
om/d/msgid/linux-ntb/91237e02-5363-40d1-9f01-c5eb80141401%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/91237e02-5363-40d1-9f01-c5eb80141401%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_14_2125635286.1559156479292--

------=_Part_13_2130379459.1559156479291--
