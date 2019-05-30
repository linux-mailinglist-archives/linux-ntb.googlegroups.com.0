Return-Path: <linux-ntb+bncBCELXQMOTUFBB6WXX7TQKGQEJXQE5JQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id A54822FE17
	for <lists+linux-ntb@lfdr.de>; Thu, 30 May 2019 16:43:07 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id e7sf4766258ybk.22
        for <lists+linux-ntb@lfdr.de>; Thu, 30 May 2019 07:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4/kjoHw5yiEM71LWBXIL68ZwqvW+ZiOgKNagBZ7VA+I=;
        b=kl9kfDq3xaywKu2tHqMjtsVXC7E/aBx6ps42DZNoQUA4C9VLDQl4Q/TzPbhwIhEiNf
         lfGiYlurMHpfmmZW4+++waXC9ogJL7jYVIS803V6jIRldSGLUT4MWsM9Yq34kLif86/i
         mHMRNtDei/RZFjV0ZQPjuHJlAJhXZZvnGTmt/DaB1PZovAYDWFziKYj6B3FvEaTH4Ch1
         l0lLkjUsSbDgTa61oQe0VTiZvU9iAsWB3dDOtLl6hdpUXiEcLkIUfltNUrh6G79NCOvC
         iVlM6KHCr5vt/Gvm4CEZCMrQLbZMATf2boOy5t4CdoGSTpoSGXNHc0Y7Syx6rJEba18S
         Z/zA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/kjoHw5yiEM71LWBXIL68ZwqvW+ZiOgKNagBZ7VA+I=;
        b=aXAefdvNSA+qxpPT0VY/06cWMjB26xmssj5gfAgB4fI2+CUhpkwZ6IqHdDFl8FJaSd
         9IeMbmjocDMy2i8Md+kQMbPaLgfWUydB2K+DGDLa/CeOcCOtDPoGDBZDMNrGZju2nnvc
         3adz6MyO8i4BsGdtOhmMOmgZmNv90U5AcVrNZavoW9QarYbePMopRl4xBj67JfwECOzW
         n8pQQ6z1pyDPkfEO99KqD8pcG/RShHnK88MsXyehD/tdZMNBh5FoGpB4/idufyX7SAvW
         G5upjngtm+cRckKsAVSMr/dSNJmWyHXFWkqK8A/UEkFZUF2ViO7mr/Qr34BDaC9BssV+
         t9FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/kjoHw5yiEM71LWBXIL68ZwqvW+ZiOgKNagBZ7VA+I=;
        b=V5meaDTJ+kIUh22QV0ORrfiNVbHJDiS65nXhWe0ORJ+PPAHNsNIS1CUFf8OnRvisAs
         9Jy/29nklqXd6OKBtT3TdILeztiWj0E3hyy0cFumdQP8r8GI+Tgm4tn3gbkdMTfVJnJh
         QpfrbS7TUJeXbqsN9ySL5SiGRFfsE8OSUSbG6Qj1vWR8HBhgGsGRQtI3yjCUng5feMl4
         c1b1fGEXilmSENNUovdpEQuf24bxmicgxbAzKskas+n0ib/YQU2yAX7bpwfQ88h9LBTE
         YHj/2qfq98eP7DHmImMb6pN2/heQtGPu1HXttj2zXjuYQjhOlMAc/HbBENsku8zV4qO2
         Mk9g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXVVaa/hg/8LnhYYaQ3g8myNVPnRRpjoY9FL/fhfqsMluWb8Ube
	Grv8NLFsSaIPHT5JLR5V+WE=
X-Google-Smtp-Source: APXvYqzCS8LatLE5364XWB2S0Gmljmpfg7FSZMe5H+nW/FFDHlbZNs4gqZh+5O4Abg4hX/+u7XxrmA==
X-Received: by 2002:a81:62d7:: with SMTP id w206mr2248928ywb.64.1559227386725;
        Thu, 30 May 2019 07:43:06 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:ef08:: with SMTP id o8ls732297ywm.15.gmail; Thu, 30 May
 2019 07:43:06 -0700 (PDT)
X-Received: by 2002:a81:5155:: with SMTP id f82mr2363553ywb.53.1559227386335;
        Thu, 30 May 2019 07:43:06 -0700 (PDT)
Date: Thu, 30 May 2019 07:43:05 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <684ea177-3529-479e-bf9b-bb271eac19c8@googlegroups.com>
Subject: Sales force Developer//Maryland//6 months+//Direct Client
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_374_1150735866.1559227385825"
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

------=_Part_374_1150735866.1559227385825
Content-Type: multipart/alternative; 
	boundary="----=_Part_375_168073935.1559227385826"

------=_Part_375_168073935.1559227385826
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



* DIRECT CLIENT REQUIREMENT *

*SHARE YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.*


*Role:  Sales force Developer*

*Contract:  6 months+*

*Location:  Maryland*

*Interview process : Face to Face*

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
linux-ntb/684ea177-3529-479e-bf9b-bb271eac19c8%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_375_168073935.1559227385826
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div><div><p class=3D"MsoNormal" style=3D"margin: 1em =
0in; text-align: center; line-height: normal; font-family: &quot;Times New =
Roman&quot;, serif;"><font color=3D"#ffffff" size=3D"6" style=3D"background=
-color: rgb(106, 168, 79);"><b><i><u><span style=3D"color: rgb(34, 34, 34);=
"><span style=3D"font-family: Calibri, sans-serif;">=C2=A0DIRECT CLIENT REQ=
UIREMENT</span></span>=C2=A0</u></i></b></font></p></div><p class=3D"MsoNor=
mal" style=3D"line-height: normal; font-size: 12pt; font-family: &quot;Time=
s New Roman&quot;, serif;"><b style=3D"font-size: 12pt;"><span style=3D"col=
or: rgb(12, 52, 61);">SHARE YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL AD=
DRESS.</span></b></p><p class=3D"MsoNormal" style=3D"line-height: normal; f=
ont-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b style=
=3D"font-size: 12pt;"><span style=3D"color: rgb(12, 52, 61);"><br></span></=
b></p><div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"marg=
in: 1em 0in; line-height: normal;"><span style=3D"color: black; background-=
color: rgb(255, 255, 0);"><u><b><font size=3D"2" face=3D"georgia, serif">Ro=
le:=C2=A0 Sales force=C2=A0Developer</font></b></u></span></p><p class=3D"M=
soNormal" style=3D"margin: 1em 0in; line-height: normal;"><span style=3D"co=
lor: black; background-color: rgb(255, 255, 0);"><u><b><font size=3D"2" fac=
e=3D"georgia, serif">Contract:=C2=A0 6 months+</font></b></u></span></p><p =
class=3D"MsoNormal" style=3D"margin: 1em 0in; line-height: normal;"><b><fon=
t size=3D"2" face=3D"georgia, serif"><span style=3D"color: black;"><u><span=
 style=3D"background-color: rgb(255, 255, 0);">Location:=C2=A0 Maryland</sp=
an></u></span></font></b></p><p class=3D"MsoNormal" style=3D"margin: 1em 0i=
n; line-height: normal;"><b><font size=3D"2" face=3D"georgia, serif"><span =
style=3D"color: black;"><u><span style=3D"background-color: rgb(255, 255, 0=
);">Interview process : Face to Face</span></u></span></font></b></p></div>=
<div style=3D"font-size: small;"><p style=3D"margin: 0in 0in 0.0001pt; line=
-height: normal;"><span style=3D"background-color: rgb(255, 255, 0);"><b><f=
ont size=3D"2" face=3D"georgia, serif"><u></u></font></b></span></p><p styl=
e=3D"margin: 0in 0in 0.0001pt; line-height: normal;"><b><font size=3D"2" fa=
ce=3D"georgia, serif"><span style=3D"color: black; background-color: rgb(25=
5, 255, 0);"><u>Client :=C2=A0 Direct</u></span><u></u><u></u></font></b></=
p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-family: &=
quot;Times New Roman&quot;, serif;"><span style=3D"font-family: Calibri, sa=
ns-serif; color: rgb(51, 51, 51);"><b><font size=3D"4">=C2=A0</font></b></s=
pan><span style=3D"font-size: 12pt;"><u></u><u></u></span></p><p style=3D"m=
argin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; font-family:=
 &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 11.5pt; fon=
t-family: Calibri, sans-serif; color: rgb(51, 51, 51);">=C2=A0</span><u></u=
><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font=
-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgr=
ound: rgb(249, 249, 249);">Experience:</span><u></u><u></u></p><p style=3D"=
margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; font-family=
: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font=
-family: Calibri, sans-serif; color: black; background: rgb(249, 249, 249);=
">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in Software Development</span>=
<u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal=
; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span =
style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; b=
ackground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years =
experience in Cloud Technology and an in-depth understanding of the primary=
 concepts and terminology</span><u></u><u></u></p><p style=3D"margin: 0in 0=
in 0.0001pt; line-height: normal; font-size: 12pt; font-family: &quot;Times=
 New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Cali=
bri, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 5+ years working on=C2=A0Salesforce=C2=A0applicati=
ons (Lightning=C2=A0is a must-have.)</span><u></u><u></u></p><p style=3D"ma=
rgin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; font-family: =
&quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-f=
amily: Calibri, sans-serif; color: black; background: rgb(249, 249, 249);">=
=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience using Force.com (Adva=
nced understanding of SFDC Triggers and Controllers, VF page development, s=
Objects, SOQL etc)</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.00=
01pt; line-height: normal; font-size: 12pt; font-family: &quot;Times New Ro=
man&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sa=
ns-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 3+ year hands-on experience in an Agile development team<=
/span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: =
normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;">=
<span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: bl=
ack; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Exp=
erience in object oriented development is a must</span><u></u><u></u></p><p=
 style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; f=
ont-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: =
10pt; font-family: Calibri, sans-serif; color: black; background: rgb(249, =
249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience with SOAP and REST=
 Web Services and integration using APIs is a must</span><u></u><u></u></p>=
<p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt;=
 font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size=
: 10pt; font-family: Calibri, sans-serif; color: black; background: rgb(249=
, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience with source cont=
rol, branching strategies and using code repositories a must</span><u></u><=
u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-s=
ize: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D=
"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgroun=
d: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0Salesforce=
=C2=A0certification preferred</span><u></u><u></u></p><p style=3D"margin: 0=
in 0in 0.0001pt; line-height: normal; font-size: 12pt; font-family: &quot;T=
imes New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: =
Calibri, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Background in leveraging ETL products and tools=
 (e.g. IBM DataStage, Informatica, etc.) for data management is preferred</=
span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: n=
ormal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><=
span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: bla=
ck; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Prev=
ious experience of Test Driven development is preferred</span><u></u><u></u=
></p><p style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: =
12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font=
-size: 10pt; font-family: Calibri, sans-serif; color: black; background: rg=
b(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience in=
 a lead role within a team of engineers</span><u></u><u></u></p><p style=3D=
"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; font-famil=
y: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; fon=
t-family: Calibri, sans-serif; color: black; background: rgb(249, 249, 249)=
;">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advanced understanding of the=C2=A0Sal=
esforce=C2=A0platform and its primary functions.</span><u></u><u></u></p><p=
 style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; f=
ont-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: =
10pt; font-family: Calibri, sans-serif; color: black; background: rgb(249, =
249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability to learn new technolo=
gies and embrace the challenge learning presents</span><u></u><u></u></p><p=
 style=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; f=
ont-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: =
10pt; font-family: Calibri, sans-serif; color: black; background: rgb(249, =
249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 A self-starter, comfortable h=
aving conversations with business partners</span><u></u><u></u></p><p style=
=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; font-fa=
mily: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; =
font-family: Calibri, sans-serif; color: black; background: rgb(249, 249, 2=
49);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust and current knowledge of web=
 standards, emerging technologies, and trends</span><u></u><u></u></p><p st=
yle=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; font=
-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10p=
t; font-family: Calibri, sans-serif; color: black; background: rgb(249, 249=
, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability to think abstractly and =
deal with ambiguous/under-defined problems</span><u></u><u></u></p><p style=
=3D"margin: 0in 0in 0.0001pt; line-height: normal; font-size: 12pt; font-fa=
mily: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; =
font-family: Calibri, sans-serif; color: black; background: rgb(249, 249, 2=
49);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 An excellent communicator, both ver=
bally and written.</span><u></u><u></u></p></div><div style=3D"font-size: s=
mall;"><br></div><p class=3D"MsoNormal" style=3D"line-height: normal; font-=
size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"background-color: rgb(106, 168, 79);">=C2=A0<b><u><span style=3D"color:=
 rgb(76, 17, 48);">=C2=A0=C2=A0 Forward Your Resume To Below Mentioned Emai=
l Address.=C2=A0</span></u></b></span></p><div style=3D"font-size: small;">=
<p class=3D"MsoNormal" style=3D"margin: 1em 0in; line-height: normal; font-=
size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><i><font c=
olor=3D"#cc0000">=C2=A0</font><span style=3D"background-color: rgb(19, 79, =
92);"><font color=3D"#ffffff">HURRY......!!!</font></span></i></b></p></div=
><div style=3D"font-size: small;"><br></div><span style=3D"font-size: small=
;">--=C2=A0</span><br style=3D"font-size: small;"><div dir=3D"ltr" class=3D=
"m_-7684264354472018839gmail-m_-6523135089699873981m_-7546229221283185261gm=
ail_signature" style=3D"font-size: small;"><div dir=3D"ltr"><div dir=3D"ltr=
"><p style=3D"font-family: arial, helvetica, sans-serif;"><b><i><span style=
=3D"line-height: 14.95px;">Thanks &amp; Regards,</span></i></b><span style=
=3D"line-height: 14.95px;"></span></p><p style=3D"font-family: arial, helve=
tica, sans-serif;"><b><i><span style=3D"line-height: 14.95px;">Prashanth</s=
pan></i></b></p><p style=3D"font-family: arial, helvetica, sans-serif;"><b>=
<i><span style=3D"line-height: 14.95px;"></span></i></b><b><i><span style=
=3D"line-height: 14.95px;"><b><i><span style=3D"line-height: 14.95px;">US I=
T=C2=A0 RECRUITER</span></i></b><span style=3D"line-height: 14.95px;"></spa=
n></span></i></b></p><p style=3D"font-family: arial, helvetica, sans-serif;=
"><b><i><span style=3D"line-height: 14.95px;"><b><i><span style=3D"line-hei=
ght: 14.95px;">+1 (315)947-0775</span></i></b></span></i></b></p><p><font f=
ace=3D"arial, helvetica, sans-serif"><b><i>Email :=C2=A0<a href=3D"mailto:p=
rasanth@genisists.com" target=3D"_blank" data-mt-detrack-inspected=3D"true"=
 style=3D"color: rgb(17, 85, 204);">prasanth@genisists.com</a></i></b></fon=
t></p><div style=3D"font-family: arial, helvetica, sans-serif;"><a data-mt-=
detrack-inspected=3D"true" style=3D"color: rgb(34, 34, 34);"><img src=3D"ht=
tps://ci3.googleusercontent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3mNnY=
NVp0FhTmwRvKw4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv4pC=
zpxtpwBgNsbnemBgpHaJdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG8s9=
GZVwfTdzwY8rOrpS2MX5Csw=3Ds0-d-e1-ft#https://docs.google.com/uc?export=3Ddo=
wnload&amp;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvz=
S25CV0lwa2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" width=3D"200" height=3D"58" class=
=3D"m_-7684264354472018839gmail-m_-6523135089699873981CToWUd CToWUd"></a></=
div></div></div></div></div></div>

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
om/d/msgid/linux-ntb/684ea177-3529-479e-bf9b-bb271eac19c8%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/684ea177-3529-479e-bf9b-bb271eac19c8%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_375_168073935.1559227385826--

------=_Part_374_1150735866.1559227385825--
