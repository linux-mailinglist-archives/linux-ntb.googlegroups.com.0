Return-Path: <linux-ntb+bncBCELXQMOTUFBBWXTYTTQKGQEE46VUVQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8054331024
	for <lists+linux-ntb@lfdr.de>; Fri, 31 May 2019 16:27:39 +0200 (CEST)
Received: by mail-yw1-xc3a.google.com with SMTP id q188sf8881601ywc.15
        for <lists+linux-ntb@lfdr.de>; Fri, 31 May 2019 07:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tTbUBHUiAa6zbwR4UIjlHNSrla29xzzmm0Qf8rbqvYw=;
        b=q3aBhjdrwXP38KZZOn1QyiyBlNY5KYM5ZEXYnHZD4qRd4sBrxBACDd/3U8HLKaX4fj
         ASvyk0EPL5DxTbaPNezS1vR6aKWKKRS3ZsFdHApgwF6+nL4LFd1M5GqvTv9HZ8aJkWER
         s34byYpPX13mMfI2IyBPMe/ZJbam405Re1YRHGRsBfou8dt9ajqQhMwqCFo+oyUeKeDA
         1hB+TW3lnDowWYBCd2gLzcd2WeE4QJF7H7YLrRktcioeovDPPZm3v7k3InWHb2Cfeqg9
         kERXEAoI31OTUoyDuqHAdhiiT0uXABKJQ6fILBWtDBqR7H2cCg0t8LzMlJAYYV9IEBj1
         7zPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tTbUBHUiAa6zbwR4UIjlHNSrla29xzzmm0Qf8rbqvYw=;
        b=z5zzIuoRtl+grC7U46lStEoinADJ0IebeHBmVZSg/qUMd9t1nTnIQrr+jxAUFLatiy
         YvaNNh2mJnyOAW7ffOwkOdogP6rGn2FuFRRwOpqjXx4l4dYSsDXKIkoh1ZFvZiKVFPDP
         uaLJfzfrturVuFlxYXDAWihF/ccryVMmBrAfkn/Hcc0CH7aHH0aStFEc8V+il3hYO9rC
         2SbMCz9+Jc/fUO9Pl6dndKdrMXhvbuzSCyTVUpd3oKrOJUDHvfUp8f7brBnM8zEb6JOL
         ruk9/nheDX8460R4GwSNC+HNjXQC+fhGNukM2AmZrHpGBZ0XfszBwiTU0484YTQsET7A
         tPCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tTbUBHUiAa6zbwR4UIjlHNSrla29xzzmm0Qf8rbqvYw=;
        b=bDB1K84NuatxvbsjpQwvwnDiVIlT3OtNGV91eBLn3uB3Fv8TcaIPFruvC9xLlhL3UJ
         +UMZB6NILzlFOZ6jIYtsx/2pvOETJrL8ZhYPP7hMZj2WpU9Yhb/76R2tylw4mocDtO3u
         vvWcvQQe5WzLyAZPrLF0fYU/c9e7lQS2qkkUAJO8VHVzsmO6sFkTjx1yKXomnNuO2NDN
         tVZswb5QjVMdeLYBel+ApaJqCpQ7Kkv4KFJZIyTI1d5yNo1fQfDGpiiOsqr5A7xFYMoU
         IfRFUm3phAG5yoCb/4yHRMoMNS/xdR3ALqv4Pv2celNxFZjF0Xyhm+ei5i6NlcbGR4a7
         HBxQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVckgpmYzDPMJTTW03umLaDKbZDppCErmTv1pFkKwK51D9+ytva
	fERfWEy6Ew6vXNl0VUPFqEM=
X-Google-Smtp-Source: APXvYqxfa5bVssOZpD+VYenQPgULYil5D9PlYyreNg1oEZsan5L7v5X3qvBOW+Fx9rTVSBkZo/r+5Q==
X-Received: by 2002:a25:dfcb:: with SMTP id w194mr1291158ybg.458.1559312858279;
        Fri, 31 May 2019 07:27:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:4154:: with SMTP id o81ls110926yba.15.gmail; Fri, 31 May
 2019 07:27:37 -0700 (PDT)
X-Received: by 2002:a25:2496:: with SMTP id k144mr4721534ybk.200.1559312857844;
        Fri, 31 May 2019 07:27:37 -0700 (PDT)
Date: Fri, 31 May 2019 07:27:37 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <06d4e8c0-976e-42d8-ac47-ba7d35f1a0e3@googlegroups.com>
Subject: Salesforce Developer Requirement
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_820_674603803.1559312857311"
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

------=_Part_820_674603803.1559312857311
Content-Type: multipart/alternative; 
	boundary="----=_Part_821_1176125096.1559312857312"

------=_Part_821_1176125096.1559312857312
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



*WE HAVE URGENT REQUIREMENT FOR SALESFORCE DEVELOPER*

=20

=20

*SHARE YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.*

=20

            * NOTE : DIRECT CLIENT REQUIREMENT*=20

=20

=20

*Role:  Sales force Developer*

*Contract:  6 months+*

*Location:  Arizona & **Pennsylvania*

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



 *----*-----*

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
linux-ntb/06d4e8c0-976e-42d8-ac47-ba7d35f1a0e3%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_821_1176125096.1559312857312
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" align=3D"center" style=3D"backgroun=
d-image: initial; background-position: initial; background-size: initial; b=
ackground-repeat: initial; background-attachment: initial; background-origi=
n: initial; background-clip: initial; text-align: center; line-height: norm=
al;"><b><i><span style=3D"padding: 0in; border-width: 1pt; border-style: no=
ne; border-color: windowtext; font-size: 13.5pt; font-family: &quot;Times N=
ew Roman&quot;, serif; color: white; background: rgb(103, 78, 167);">WE HAV=
E URGENT REQUIREMENT FOR SALESFORCE DEVELOPER</span></i></b><span style=3D"=
font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><o:p></o=
:p></span></p><p class=3D"MsoNormal" align=3D"center" style=3D"background-i=
mage: initial; background-position: initial; background-size: initial; back=
ground-repeat: initial; background-attachment: initial; background-origin: =
initial; background-clip: initial; text-align: center; line-height: normal;=
"><span style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;,=
 serif;">=C2=A0<o:p></o:p></span></p><p class=3D"MsoNormal" align=3D"center=
" style=3D"background-image: initial; background-position: initial; backgro=
und-size: initial; background-repeat: initial; background-attachment: initi=
al; background-origin: initial; background-clip: initial; text-align: cente=
r; line-height: normal;"><span style=3D"font-size: 12pt; font-family: &quot=
;Times New Roman&quot;, serif;"><o:p>=C2=A0</o:p></span></p><p class=3D"Mso=
Normal" style=3D"background-image: initial; background-position: initial; b=
ackground-size: initial; background-repeat: initial; background-attachment:=
 initial; background-origin: initial; background-clip: initial; line-height=
: normal;"><b><span style=3D"padding: 0in; border-width: 1pt; border-style:=
 none; border-color: windowtext; font-size: 12pt; font-family: &quot;Times =
New Roman&quot;, serif; color: rgb(12, 52, 61);">SHARE YOUR UPDATED RESUME =
TO BELOW MENTIONED EMAIL ADDRESS.<o:p></o:p></span></b></p><p class=3D"MsoN=
ormal" style=3D"background-image: initial; background-position: initial; ba=
ckground-size: initial; background-repeat: initial; background-attachment: =
initial; background-origin: initial; background-clip: initial; line-height:=
 normal;"><span style=3D"font-size: 12pt; font-family: &quot;Times New Roma=
n&quot;, serif;"><o:p>=C2=A0</o:p></span></p><p class=3D"MsoNormal" style=
=3D"background-image: initial; background-position: initial; background-siz=
e: initial; background-repeat: initial; background-attachment: initial; bac=
kground-origin: initial; background-clip: initial; line-height: normal;"><b=
><span style=3D"font-size: 10pt; font-family: &quot;Times New Roman&quot;, =
serif; color: black;">=C2=A0 =C2=A0</span></b><b><span style=3D"font-size: =
13.5pt; font-family: &quot;Times New Roman&quot;, serif; color: black;">=C2=
=A0=C2=A0=C2=A0</span></b><b><span style=3D"font-size: 13.5pt; font-family:=
 &quot;Times New Roman&quot;, serif; color: white;">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0</span></b><b><span style=3D"font-size: 13.5pt; font-family:=
 &quot;Times New Roman&quot;, serif;">=C2=A0<span style=3D"background: lime=
;">NOTE : DIRECT CLIENT REQUIREMENT</span></span></b><span style=3D"padding=
: 0in; border-width: 1pt; border-style: none; border-color: windowtext; fon=
t-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; color: white=
; background: rgb(106, 168, 79);">=C2=A0<o:p></o:p></span></p><p class=3D"M=
soNormal" style=3D"background-image: initial; background-position: initial;=
 background-size: initial; background-repeat: initial; background-attachmen=
t: initial; background-origin: initial; background-clip: initial; line-heig=
ht: normal;"><span style=3D"font-size: 12pt; font-family: &quot;Times New R=
oman&quot;, serif;"><o:p>=C2=A0</o:p></span></p><p class=3D"MsoNormal" styl=
e=3D"background-image: initial; background-position: initial; background-si=
ze: initial; background-repeat: initial; background-attachment: initial; ba=
ckground-origin: initial; background-clip: initial; line-height: normal;"><=
span style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, se=
rif;">=C2=A0<o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"backgroun=
d-image: initial; background-position: initial; background-size: initial; b=
ackground-repeat: initial; background-attachment: initial; background-origi=
n: initial; background-clip: initial; line-height: normal;"><b><u><span sty=
le=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: wi=
ndowtext; font-size: 10pt; font-family: Georgia, serif; color: black; backg=
round: yellow;">Role:=C2=A0 Sales force=C2=A0Developer</span></u></b><span =
style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"=
><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"background-image: in=
itial; background-position: initial; background-size: initial; background-r=
epeat: initial; background-attachment: initial; background-origin: initial;=
 background-clip: initial; line-height: normal;"><b><u><span style=3D"paddi=
ng: 0in; border-width: 1pt; border-style: none; border-color: windowtext; f=
ont-size: 10pt; font-family: Georgia, serif; color: black; background: yell=
ow;">Contract:=C2=A0 6 months+</span></u></b><span style=3D"font-size: 12pt=
; font-family: &quot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><=
p class=3D"MsoNormal" style=3D"background-image: initial; background-positi=
on: initial; background-size: initial; background-repeat: initial; backgrou=
nd-attachment: initial; background-origin: initial; background-clip: initia=
l; line-height: normal;"><b><u><span style=3D"padding: 0in; border-width: 1=
pt; border-style: none; border-color: windowtext; font-size: 10pt; font-fam=
ily: Georgia, serif; color: black; background: yellow;">Location:=C2=A0=C2=
=A0Arizona &amp;=C2=A0</span></u></b><b><u><span style=3D"padding: 0in; bor=
der-width: 1pt; border-style: none; border-color: windowtext; font-size: 10=
pt; font-family: Georgia, serif; background: yellow;">Pennsylvania</span></=
u></b><span style=3D"font-size: 12pt; font-family: &quot;Times New Roman&qu=
ot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"backgrou=
nd-image: initial; background-position: initial; background-size: initial; =
background-repeat: initial; background-attachment: initial; background-orig=
in: initial; background-clip: initial; line-height: normal;"><b><u><span st=
yle=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: w=
indowtext; font-size: 10pt; font-family: Georgia, serif; color: black; back=
ground: yellow;">Client :=C2=A0 Direct</span></u></b><span style=3D"font-si=
ze: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><o:p></o:p></sp=
an></p><p class=3D"MsoNormal" style=3D"background-image: initial; backgroun=
d-position: initial; background-size: initial; background-repeat: initial; =
background-attachment: initial; background-origin: initial; background-clip=
: initial; line-height: normal;"><b><span style=3D"padding: 0in; border-wid=
th: 1pt; border-style: none; border-color: windowtext; font-size: 13.5pt; f=
ont-family: &quot;Times New Roman&quot;, serif; color: rgb(51, 51, 51);">=
=C2=A0</span></b><span style=3D"font-size: 12pt; font-family: &quot;Times N=
ew Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=
=3D"background-image: initial; background-position: initial; background-siz=
e: initial; background-repeat: initial; background-attachment: initial; bac=
kground-origin: initial; background-clip: initial; line-height: normal;"><s=
pan style=3D"padding: 0in; border-width: 1pt; border-style: none; border-co=
lor: windowtext; font-size: 11.5pt; font-family: &quot;Times New Roman&quot=
;, serif; color: rgb(51, 51, 51);">=C2=A0</span><span style=3D"font-size: 1=
2pt; font-family: &quot;Times New Roman&quot;, serif;"><o:p></o:p></span></=
p><p class=3D"MsoNormal" style=3D"background-image: initial; background-pos=
ition: initial; background-size: initial; background-repeat: initial; backg=
round-attachment: initial; background-origin: initial; background-clip: ini=
tial; line-height: normal;"><span style=3D"padding: 0in; border-width: 1pt;=
 border-style: none; border-color: windowtext; font-size: 10pt; font-family=
: &quot;Times New Roman&quot;, serif; color: black; background: rgb(249, 24=
9, 249);">Experience:</span><span style=3D"font-size: 12pt; font-family: &q=
uot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNor=
mal" style=3D"background-image: initial; background-position: initial; back=
ground-size: initial; background-repeat: initial; background-attachment: in=
itial; background-origin: initial; background-clip: initial; line-height: n=
ormal;"><span style=3D"padding: 0in; border-width: 1pt; border-style: none;=
 border-color: windowtext; font-size: 10pt; font-family: &quot;Times New Ro=
man&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in Software Development</span><span style=
=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><o:p=
></o:p></span></p><p class=3D"MsoNormal" style=3D"background-image: initial=
; background-position: initial; background-size: initial; background-repeat=
: initial; background-attachment: initial; background-origin: initial; back=
ground-clip: initial; line-height: normal;"><span style=3D"padding: 0in; bo=
rder-width: 1pt; border-style: none; border-color: windowtext; font-size: 1=
0pt; font-family: &quot;Times New Roman&quot;, serif; color: black; backgro=
und: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experi=
ence in Cloud Technology and an in-depth understanding of the primary conce=
pts and terminology</span><span style=3D"font-size: 12pt; font-family: &quo=
t;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNorma=
l" style=3D"background-image: initial; background-position: initial; backgr=
ound-size: initial; background-repeat: initial; background-attachment: init=
ial; background-origin: initial; background-clip: initial; line-height: nor=
mal;"><span style=3D"padding: 0in; border-width: 1pt; border-style: none; b=
order-color: windowtext; font-size: 10pt; font-family: &quot;Times New Roma=
n&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 5+ years working on=C2=A0Salesforce=C2=A0applications=
 (Lightning=C2=A0is a must-have.)</span><span style=3D"font-size: 12pt; fon=
t-family: &quot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p cla=
ss=3D"MsoNormal" style=3D"background-image: initial; background-position: i=
nitial; background-size: initial; background-repeat: initial; background-at=
tachment: initial; background-origin: initial; background-clip: initial; li=
ne-height: normal;"><span style=3D"padding: 0in; border-width: 1pt; border-=
style: none; border-color: windowtext; font-size: 10pt; font-family: &quot;=
Times New Roman&quot;, serif; color: black; background: rgb(249, 249, 249);=
">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience using Force.com (Ad=
vanced understanding of SFDC Triggers and Controllers, VF page development,=
 sObjects, SOQL etc)</span><span style=3D"font-size: 12pt; font-family: &qu=
ot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNorm=
al" style=3D"background-image: initial; background-position: initial; backg=
round-size: initial; background-repeat: initial; background-attachment: ini=
tial; background-origin: initial; background-clip: initial; line-height: no=
rmal;"><span style=3D"padding: 0in; border-width: 1pt; border-style: none; =
border-color: windowtext; font-size: 10pt; font-family: &quot;Times New Rom=
an&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 3+ year hands-on experience in an Agile developmen=
t team</span><span style=3D"font-size: 12pt; font-family: &quot;Times New R=
oman&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"b=
ackground-image: initial; background-position: initial; background-size: in=
itial; background-repeat: initial; background-attachment: initial; backgrou=
nd-origin: initial; background-clip: initial; line-height: normal;"><span s=
tyle=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: =
windowtext; font-size: 10pt; font-family: &quot;Times New Roman&quot;, seri=
f; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Experience in object oriented development is a must</span><span =
style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"=
><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"background-image: in=
itial; background-position: initial; background-size: initial; background-r=
epeat: initial; background-attachment: initial; background-origin: initial;=
 background-clip: initial; line-height: normal;"><span style=3D"padding: 0i=
n; border-width: 1pt; border-style: none; border-color: windowtext; font-si=
ze: 10pt; font-family: &quot;Times New Roman&quot;, serif; color: black; ba=
ckground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience=
 with SOAP and REST Web Services and integration using APIs is a must</span=
><span style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, =
serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"background-im=
age: initial; background-position: initial; background-size: initial; backg=
round-repeat: initial; background-attachment: initial; background-origin: i=
nitial; background-clip: initial; line-height: normal;"><span style=3D"padd=
ing: 0in; border-width: 1pt; border-style: none; border-color: windowtext; =
font-size: 10pt; font-family: &quot;Times New Roman&quot;, serif; color: bl=
ack; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Exp=
erience with source control, branching strategies and using code repositori=
es a must</span><span style=3D"font-size: 12pt; font-family: &quot;Times Ne=
w Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=
=3D"background-image: initial; background-position: initial; background-siz=
e: initial; background-repeat: initial; background-attachment: initial; bac=
kground-origin: initial; background-clip: initial; line-height: normal;"><s=
pan style=3D"padding: 0in; border-width: 1pt; border-style: none; border-co=
lor: windowtext; font-size: 10pt; font-family: &quot;Times New Roman&quot;,=
 serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0Salesforce=C2=A0certification preferred</span><span styl=
e=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><o:=
p></o:p></span></p><p class=3D"MsoNormal" style=3D"background-image: initia=
l; background-position: initial; background-size: initial; background-repea=
t: initial; background-attachment: initial; background-origin: initial; bac=
kground-clip: initial; line-height: normal;"><span style=3D"padding: 0in; b=
order-width: 1pt; border-style: none; border-color: windowtext; font-size: =
10pt; font-family: &quot;Times New Roman&quot;, serif; color: black; backgr=
ound: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Background in =
leveraging ETL products and tools (e.g. IBM DataStage, Informatica, etc.) f=
or data management is preferred</span><span style=3D"font-size: 12pt; font-=
family: &quot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p class=
=3D"MsoNormal" style=3D"background-image: initial; background-position: ini=
tial; background-size: initial; background-repeat: initial; background-atta=
chment: initial; background-origin: initial; background-clip: initial; line=
-height: normal;"><span style=3D"padding: 0in; border-width: 1pt; border-st=
yle: none; border-color: windowtext; font-size: 10pt; font-family: &quot;Ti=
mes New Roman&quot;, serif; color: black; background: rgb(249, 249, 249);">=
=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience of Test Driven develo=
pment is preferred</span><span style=3D"font-size: 12pt; font-family: &quot=
;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNormal=
" style=3D"background-image: initial; background-position: initial; backgro=
und-size: initial; background-repeat: initial; background-attachment: initi=
al; background-origin: initial; background-clip: initial; line-height: norm=
al;"><span style=3D"padding: 0in; border-width: 1pt; border-style: none; bo=
rder-color: windowtext; font-size: 10pt; font-family: &quot;Times New Roman=
&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Previous experience in a lead role within a team of en=
gineers</span><span style=3D"font-size: 12pt; font-family: &quot;Times New =
Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"=
background-image: initial; background-position: initial; background-size: i=
nitial; background-repeat: initial; background-attachment: initial; backgro=
und-origin: initial; background-clip: initial; line-height: normal;"><span =
style=3D"padding: 0in; border-width: 1pt; border-style: none; border-color:=
 windowtext; font-size: 10pt; font-family: &quot;Times New Roman&quot;, ser=
if; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Advanced understanding of the=C2=A0Salesforce=C2=A0platform and =
its primary functions.</span><span style=3D"font-size: 12pt; font-family: &=
quot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNo=
rmal" style=3D"background-image: initial; background-position: initial; bac=
kground-size: initial; background-repeat: initial; background-attachment: i=
nitial; background-origin: initial; background-clip: initial; line-height: =
normal;"><span style=3D"padding: 0in; border-width: 1pt; border-style: none=
; border-color: windowtext; font-size: 10pt; font-family: &quot;Times New R=
oman&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Ability to learn new technologies and embrace the =
challenge learning presents</span><span style=3D"font-size: 12pt; font-fami=
ly: &quot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"=
MsoNormal" style=3D"background-image: initial; background-position: initial=
; background-size: initial; background-repeat: initial; background-attachme=
nt: initial; background-origin: initial; background-clip: initial; line-hei=
ght: normal;"><span style=3D"padding: 0in; border-width: 1pt; border-style:=
 none; border-color: windowtext; font-size: 10pt; font-family: &quot;Times =
New Roman&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=
=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 A self-starter, comfortable having conversat=
ions with business partners</span><span style=3D"font-size: 12pt; font-fami=
ly: &quot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"=
MsoNormal" style=3D"background-image: initial; background-position: initial=
; background-size: initial; background-repeat: initial; background-attachme=
nt: initial; background-origin: initial; background-clip: initial; line-hei=
ght: normal;"><span style=3D"padding: 0in; border-width: 1pt; border-style:=
 none; border-color: windowtext; font-size: 10pt; font-family: &quot;Times =
New Roman&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=
=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust and current knowledge of web standard=
s, emerging technologies, and trends</span><span style=3D"font-size: 12pt; =
font-family: &quot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p =
class=3D"MsoNormal" style=3D"background-image: initial; background-position=
: initial; background-size: initial; background-repeat: initial; background=
-attachment: initial; background-origin: initial; background-clip: initial;=
 line-height: normal;"><span style=3D"padding: 0in; border-width: 1pt; bord=
er-style: none; border-color: windowtext; font-size: 10pt; font-family: &qu=
ot;Times New Roman&quot;, serif; color: black; background: rgb(249, 249, 24=
9);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability to think abstractly and deal=
 with ambiguous/under-defined problems</span><span style=3D"font-size: 12pt=
; font-family: &quot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><=
p class=3D"MsoNormal" style=3D"background-image: initial; background-positi=
on: initial; background-size: initial; background-repeat: initial; backgrou=
nd-attachment: initial; background-origin: initial; background-clip: initia=
l; line-height: normal;"><span style=3D"padding: 0in; border-width: 1pt; bo=
rder-style: none; border-color: windowtext; font-size: 10pt; font-family: &=
quot;Times New Roman&quot;, serif; color: black; background: rgb(249, 249, =
249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 An excellent communicator, both ve=
rbally and written.</span><span style=3D"font-size: 12pt; font-family: &quo=
t;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNorma=
l" style=3D"background-image: initial; background-position: initial; backgr=
ound-size: initial; background-repeat: initial; background-attachment: init=
ial; background-origin: initial; background-clip: initial; line-height: nor=
mal;"><span style=3D"font-size: 12pt; font-family: Arial, sans-serif;">=C2=
=A0</span><span style=3D"font-size: 12pt; font-family: &quot;Times New Roma=
n&quot;, serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"back=
ground-image: initial; background-position: initial; background-size: initi=
al; background-repeat: initial; background-attachment: initial; background-=
origin: initial; background-clip: initial; line-height: normal;"><span styl=
e=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: win=
dowtext; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; =
background: rgb(106, 168, 79);">=C2=A0</span><b><u><span style=3D"padding: =
0in; border-width: 1pt; border-style: none; border-color: windowtext; font-=
size: 12pt; font-family: &quot;Times New Roman&quot;, serif; color: rgb(76,=
 17, 48); background: rgb(106, 168, 79);">=C2=A0=C2=A0 Forward Your Resume =
To Below Mentioned Email Address.=C2=A0</span></u></b><span style=3D"font-s=
ize: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><o:p></o:p></s=
pan></p><p class=3D"MsoNormal" style=3D"background-image: initial; backgrou=
nd-position: initial; background-size: initial; background-repeat: initial;=
 background-attachment: initial; background-origin: initial; background-cli=
p: initial; line-height: normal;"><b><i><span style=3D"padding: 0in; border=
-width: 1pt; border-style: none; border-color: windowtext; font-size: 12pt;=
 font-family: &quot;Times New Roman&quot;, serif; color: rgb(204, 0, 0);">=
=C2=A0</span></i></b><b><i><span style=3D"padding: 0in; border-width: 1pt; =
border-style: none; border-color: windowtext; font-size: 12pt; font-family:=
 &quot;Times New Roman&quot;, serif; color: white; background: rgb(19, 79, =
92);">HURRY......!!!</span></i></b><span style=3D"font-size: 12pt; font-fam=
ily: &quot;Times New Roman&quot;, serif;"><o:p></o:p></span></p><p class=3D=
"MsoNormal" style=3D"background-image: initial; background-position: initia=
l; background-size: initial; background-repeat: initial; background-attachm=
ent: initial; background-origin: initial; background-clip: initial; line-he=
ight: normal;"><b><i><span style=3D"padding: 0in; border-width: 1pt; border=
-style: none; border-color: windowtext; font-size: 12pt; font-family: &quot=
;Times New Roman&quot;, serif; color: white; background: rgb(19, 79, 92);">=
<br></span></i></b></p><p class=3D"MsoNormal" style=3D"background-image: in=
itial; background-position: initial; background-size: initial; background-r=
epeat: initial; background-attachment: initial; background-origin: initial;=
 background-clip: initial; line-height: normal;"><b><i><span style=3D"paddi=
ng: 0in; border-width: 1pt; border-style: none; border-color: windowtext; f=
ont-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; color: whi=
te; background: rgb(19, 79, 92);"><br></span></i></b></p><p class=3D"MsoNor=
mal"><o:p>=C2=A0</o:p><b style=3D"font-size: small;"><span style=3D"font-si=
ze: 20pt; font-family: &quot;Blackadder ITC&quot;; color: rgb(32, 18, 77);"=
>----*-----</span></b></p><p class=3D"MsoNormal" style=3D"font-size: small;=
 line-height: normal;"><b><span style=3D"font-size: 20pt; font-family: &quo=
t;Blackadder ITC&quot;; color: rgb(32, 18, 77);">Happy Weekend</span></b><s=
pan style=3D"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(32=
, 18, 77);">=C2=A0=C2=A0</span></p><p class=3D"MsoNormal" style=3D"font-siz=
e: small; line-height: normal;"><span style=3D"font-size: 12pt;"><font face=
=3D"Arial, sans-serif">--</font></span></p><p class=3D"MsoNormal" style=3D"=
font-size: small; line-height: normal;"><b><span style=3D"font-size: 18pt; =
font-family: &quot;Edwardian Script ITC&quot;; color: rgb(127, 96, 0);">Tha=
nks &amp; Regards..</span></b><b><span style=3D"font-size: 18pt; font-famil=
y: Cambria, serif; color: rgb(127, 96, 0);">=C2=A0</span></b><b><span style=
=3D"font-size: 18pt; font-family: Wingdings; color: rgb(127, 96, 0);">?</sp=
an></b><span style=3D"font-size: 12pt; font-family: Arial, sans-serif;">=C2=
=A0=C2=A0</span></p><p style=3D"font-size: small; font-family: arial, helve=
tica, sans-serif;"><b><i><span style=3D"line-height: 14.95px;">Prashanth</s=
pan></i></b></p><p style=3D"font-size: small; font-family: arial, helvetica=
, sans-serif;"><b><i><span style=3D"line-height: 14.95px;"></span></i></b><=
b><i><span style=3D"line-height: 14.95px;"><b><i><span style=3D"line-height=
: 14.95px;">US IT=C2=A0 RECRUITER</span></i></b><span style=3D"line-height:=
 14.95px;"></span></span></i></b></p><p style=3D"font-size: small; font-fam=
ily: arial, helvetica, sans-serif;"><b><i><span style=3D"line-height: 14.95=
px;"><b><i><span style=3D"line-height: 14.95px;">+1 (315)947-0775</span></i=
></b></span></i></b></p><p style=3D"font-size: small;"><font face=3D"arial,=
 helvetica, sans-serif"><b><i>Email :=C2=A0<a href=3D"mailto:prasanth@genis=
ists.com" target=3D"_blank" data-mt-detrack-inspected=3D"true" style=3D"col=
or: rgb(17, 85, 204);" tabindex=3D"1">prasanth@genisists.com</a></i></b></f=
ont></p></div>

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
om/d/msgid/linux-ntb/06d4e8c0-976e-42d8-ac47-ba7d35f1a0e3%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/06d4e8c0-976e-42d8-ac47-ba7d35f1a0e3%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_821_1176125096.1559312857312--

------=_Part_820_674603803.1559312857311--
