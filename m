Return-Path: <linux-ntb+bncBCELXQMOTUFBBAP2YTTQKGQEC5GFDJQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B6A31067
	for <lists+linux-ntb@lfdr.de>; Fri, 31 May 2019 16:41:07 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id y18sf8934696ywy.14
        for <lists+linux-ntb@lfdr.de>; Fri, 31 May 2019 07:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RV2xz5dDReyjDccfGuRDMMSk2oZez9OO22cDHVLjTZU=;
        b=f4JC4k24Aws+6qemnCjzw0rX7dL/kvmAKc3tsO2ZokKIUeGs3ArXkGU6Bda4GbxxPD
         JXsHNWsSFgWr58/6QiDa5iWLoDQj84sR+XIlOosokVFHrwm0gzsp/jgJf3QOpz/q1una
         9gDo14MVHE5BFDofa6mKemdfScZDwm4MpcBl5o2WtO4kdZrERwXdDCSvyevwACV53OBL
         tvvcJcEYOk2E1+IPAS4sAjBbSI033E3I51x/VqaPJ3yIEgoAdAmZLDWG/wLqm+Qa9a9R
         Lg5HE2KhqX/mZdx4SpWFgIE8eJM/zr0OZsVoQ8wjvJzYjMSJu7LRVoq4KhU3gqdEaSSG
         pLIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RV2xz5dDReyjDccfGuRDMMSk2oZez9OO22cDHVLjTZU=;
        b=Asg1C1lc5A2vviECflLWd1l9cCyjQF6bl7EbCERCn0eOnQOeXzwSXjjrfSQvbAhiKn
         eV+tVW+YSC1uFhsF6tLj5JQ8bmW8zdBEJJ5ifAPzQ/V28lgOht0/WKLMhb2hqBLu49Nd
         QbthmRlIkKA47Zy3ZykrW1tjr32n5vMvXkA+TxRMetJ9dlRbGw3XAPkffrkyCzYKb3r4
         1DgdrXUPtMIl9bZJutW2KIZnWp6Xg9CZKRGKIp/RsmF+yjUlwK3Az6ZsUfxhHhH7g0bL
         +BiJoQc60Ha4SZ8dkL1UrV5YsHHysngnRlBvMkaVhS9vulLO7cmSV+hiTePlVYKqJKen
         yYew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RV2xz5dDReyjDccfGuRDMMSk2oZez9OO22cDHVLjTZU=;
        b=jXdpiefWzfkc38CBfhY9765T0PZ39WOCe7B51eTuj3YHvUndPQ54LO7IopmQ1cPghN
         HCbE1Ts5cy2bqyn0WU4Y1t7uXxKEwXjk90XjVlfvMI1Hed1w9Eq+hZXjoapTDsBZbBOM
         WtCFnNtcUVmxSI30FHtKNlnv+ONCXVfJgIsO+DSbX+Z1T5jHSFUf8sVW5+PM6L447FTd
         nktb3m282J3BKwei3fF5xmWsaj+D3W5Fi/XLebFQOwl0kDugcrxqYloEi0HYP4JHDUxG
         jgy+ODn7fQ7fXqpH3xs8z36WoA6HE6m7Jf+/v7V7gg0qG2n7kuwLV+hCCdCkF5FUix/s
         arMA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUVXcM1IvRWDDSVsbaCk78uUtPy9C7lw8s4zT0QDFkGfSxmScQe
	TlFUhpWICJjfyHHx4S6dvvE=
X-Google-Smtp-Source: APXvYqwhN2ItFcN/O+uOigvLalD81V0bud1k4Uo/mJOkmK8OGCdnx0fPU95RgPZ32bzlOuSaDabJmQ==
X-Received: by 2002:a25:c983:: with SMTP id z125mr4931443ybf.45.1559313665967;
        Fri, 31 May 2019 07:41:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:2f8f:: with SMTP id v137ls1134879ywv.6.gmail; Fri, 31
 May 2019 07:41:05 -0700 (PDT)
X-Received: by 2002:a81:5758:: with SMTP id l85mr5631481ywb.96.1559313665540;
        Fri, 31 May 2019 07:41:05 -0700 (PDT)
Date: Fri, 31 May 2019 07:41:05 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <5d7a6a51-ca53-43d0-b1c5-ed9f0e359fa4@googlegroups.com>
Subject: Direct Client Requirement for Salesforce Developer
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_852_1704796035.1559313665072"
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

------=_Part_852_1704796035.1559313665072
Content-Type: multipart/alternative; 
	boundary="----=_Part_853_656130420.1559313665073"

------=_Part_853_656130420.1559313665073
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



*Role:  Sales force Developer*

*Contract:  6 months+*

*Location:  Maryland*

*Mode Of Interview : Face To Face*

*Client :  Direct*

=20

=20

            * NOTE : DIRECT CLIENT REQUIREMENT*=20

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

=20

=20

 *----*-----*

*Happy Weekend* =20

--

*Thanks & Regards..* *?* =20

*Prashanth*

*US IT  RECRUITER*

*+1 (315)947-0775*

*Email : prasanth@genisists.com <prasanth@genisists.com>*

=20

=20

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/5d7a6a51-ca53-43d0-b1c5-ed9f0e359fa4%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_853_656130420.1559313665073
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div><p class=3D"MsoNormal" style=3D"background-image:=
 initial; background-position: initial; background-size: initial; backgroun=
d-repeat: initial; background-attachment: initial; background-origin: initi=
al; background-clip: initial; line-height: normal;"><b><u><span style=3D"pa=
dding: 0in; border-width: 1pt; border-style: none; border-color: windowtext=
; font-size: 10pt; font-family: Georgia, serif; color: black; background: y=
ellow;">Role:=C2=A0 Sales force=C2=A0Developer</span></u></b><br></p><p cla=
ss=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; background-image: initia=
l; background-position: initial; background-size: initial; background-repea=
t: initial; background-attachment: initial; background-origin: initial; bac=
kground-clip: initial; line-height: normal;"><b><u><span style=3D"padding: =
0in; border-width: 1pt; border-style: none; border-color: windowtext; font-=
size: 10pt; font-family: Georgia, serif; color: black; background: yellow;"=
>Contract:=C2=A0 6 months+</span></u></b><span style=3D"font-size: 8pt; fon=
t-family: Arial, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" =
style=3D"margin-bottom: 0.0001pt; background-image: initial; background-pos=
ition: initial; background-size: initial; background-repeat: initial; backg=
round-attachment: initial; background-origin: initial; background-clip: ini=
tial; line-height: normal;"><b><u><span style=3D"padding: 0in; border-width=
: 1pt; border-style: none; border-color: windowtext; font-size: 10pt; font-=
family: Georgia, serif; color: black; background: yellow;">Location:=C2=A0=
=C2=A0Maryland<o:p></o:p></span></u></b></p><p class=3D"MsoNormal" style=3D=
"margin-bottom: 0.0001pt; background-image: initial; background-position: i=
nitial; background-size: initial; background-repeat: initial; background-at=
tachment: initial; background-origin: initial; background-clip: initial; li=
ne-height: normal;"><b><u><span style=3D"padding: 0in; border-width: 1pt; b=
order-style: none; border-color: windowtext; font-size: 10pt; font-family: =
Georgia, serif; color: black; background: yellow;">Mode Of Interview : Face=
 To Face</span></u></b><span style=3D"font-size: 8pt; font-family: Arial, s=
ans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin-bo=
ttom: 0.0001pt; background-image: initial; background-position: initial; ba=
ckground-size: initial; background-repeat: initial; background-attachment: =
initial; background-origin: initial; background-clip: initial; line-height:=
 normal;"><b><u><span style=3D"padding: 0in; border-width: 1pt; border-styl=
e: none; border-color: windowtext; font-size: 10pt; font-family: Georgia, s=
erif; color: black; background: yellow;">Client :=C2=A0 Direct</span></u></=
b><span style=3D"font-size: 8pt; font-family: Arial, sans-serif;"><o:p></o:=
p></span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; backg=
round-image: initial; background-position: initial; background-size: initia=
l; background-repeat: initial; background-attachment: initial; background-o=
rigin: initial; background-clip: initial; line-height: normal;"><b><span st=
yle=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: w=
indowtext; font-size: 13.5pt; font-family: &quot;Times New Roman&quot;, ser=
if; color: rgb(51, 51, 51);">=C2=A0</span></b><span style=3D"font-size: 8pt=
; font-family: Arial, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNor=
mal" style=3D"margin-bottom: 0.0001pt; background-image: initial; backgroun=
d-position: initial; background-size: initial; background-repeat: initial; =
background-attachment: initial; background-origin: initial; background-clip=
: initial; text-align: center; line-height: normal;"><span style=3D"padding=
: 0in; border-width: 1pt; border-style: none; border-color: windowtext; fon=
t-size: 11.5pt; font-family: &quot;Times New Roman&quot;, serif; color: rgb=
(51, 51, 51);">=C2=A0</span><span style=3D"font-size: 8pt; font-family: Ari=
al, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"marg=
in-bottom: 0.0001pt; background-image: initial; background-position: initia=
l; background-size: initial; background-repeat: initial; background-attachm=
ent: initial; background-origin: initial; background-clip: initial; line-he=
ight: normal;"><b><span style=3D"padding: 0in; border-width: 1pt; border-st=
yle: none; border-color: windowtext; font-size: 10pt; font-family: &quot;Ti=
mes New Roman&quot;, serif; color: black;">=C2=A0 =C2=A0</span></b><b><span=
 style=3D"padding: 0in; border-width: 1pt; border-style: none; border-color=
: windowtext; font-size: 13.5pt; font-family: &quot;Times New Roman&quot;, =
serif; color: black;">=C2=A0=C2=A0=C2=A0</span></b><b><span style=3D"paddin=
g: 0in; border-width: 1pt; border-style: none; border-color: windowtext; fo=
nt-size: 13.5pt; font-family: &quot;Times New Roman&quot;, serif; color: wh=
ite;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span></b><b><span style=3D"padd=
ing: 0in; border-width: 1pt; border-style: none; border-color: windowtext; =
font-size: 13.5pt; font-family: &quot;Times New Roman&quot;, serif;">=C2=A0=
<span style=3D"background: lime;">NOTE : DIRECT CLIENT REQUIREMENT</span></=
span></b><span style=3D"padding: 0in; border-width: 1pt; border-style: none=
; border-color: windowtext; font-size: 12pt; font-family: &quot;Times New R=
oman&quot;, serif; color: white; background: rgb(106, 168, 79);">=C2=A0</sp=
an><span style=3D"font-size: 8pt; font-family: Arial, sans-serif;"><o:p></o=
:p></span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; back=
ground-image: initial; background-position: initial; background-size: initi=
al; background-repeat: initial; background-attachment: initial; background-=
origin: initial; background-clip: initial; line-height: normal;"><span styl=
e=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: win=
dowtext; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"=
>=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; =
background-image: initial; background-position: initial; background-size: i=
nitial; background-repeat: initial; background-attachment: initial; backgro=
und-origin: initial; background-clip: initial; line-height: normal;"><span =
style=3D"padding: 0in; border-width: 1pt; border-style: none; border-color:=
 windowtext; font-size: 10pt; font-family: &quot;Times New Roman&quot;, ser=
if; color: black; background: rgb(249, 249, 249);">Experience:</span><span =
style=3D"font-size: 8pt; font-family: Arial, sans-serif;"><o:p></o:p></span=
></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; background-im=
age: initial; background-position: initial; background-size: initial; backg=
round-repeat: initial; background-attachment: initial; background-origin: i=
nitial; background-clip: initial; line-height: normal;"><span style=3D"padd=
ing: 0in; border-width: 1pt; border-style: none; border-color: windowtext; =
font-size: 10pt; font-family: &quot;Times New Roman&quot;, serif; color: bl=
ack; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ =
years in Software Development</span><span style=3D"font-size: 8pt; font-fam=
ily: Arial, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=
=3D"margin-bottom: 0.0001pt; background-image: initial; background-position=
: initial; background-size: initial; background-repeat: initial; background=
-attachment: initial; background-origin: initial; background-clip: initial;=
 line-height: normal;"><span style=3D"padding: 0in; border-width: 1pt; bord=
er-style: none; border-color: windowtext; font-size: 10pt; font-family: &qu=
ot;Times New Roman&quot;, serif; color: black; background: rgb(249, 249, 24=
9);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience in Cloud Technol=
ogy and an in-depth understanding of the primary concepts and terminology</=
span><span style=3D"font-size: 8pt; font-family: Arial, sans-serif;"><o:p><=
/o:p></span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; ba=
ckground-image: initial; background-position: initial; background-size: ini=
tial; background-repeat: initial; background-attachment: initial; backgroun=
d-origin: initial; background-clip: initial; line-height: normal;"><span st=
yle=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: w=
indowtext; font-size: 10pt; font-family: &quot;Times New Roman&quot;, serif=
; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 5+ years working on=C2=A0Salesforce=C2=A0applications (Lightning=C2=
=A0is a must-have.)</span><span style=3D"font-size: 8pt; font-family: Arial=
, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin=
-bottom: 0.0001pt; background-image: initial; background-position: initial;=
 background-size: initial; background-repeat: initial; background-attachmen=
t: initial; background-origin: initial; background-clip: initial; line-heig=
ht: normal;"><span style=3D"padding: 0in; border-width: 1pt; border-style: =
none; border-color: windowtext; font-size: 10pt; font-family: &quot;Times N=
ew Roman&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=
=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience using Force.com (Advance=
d understanding of SFDC Triggers and Controllers, VF page development, sObj=
ects, SOQL etc)</span><span style=3D"font-size: 8pt; font-family: Arial, sa=
ns-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin-bot=
tom: 0.0001pt; background-image: initial; background-position: initial; bac=
kground-size: initial; background-repeat: initial; background-attachment: i=
nitial; background-origin: initial; background-clip: initial; line-height: =
normal;"><span style=3D"padding: 0in; border-width: 1pt; border-style: none=
; border-color: windowtext; font-size: 10pt; font-family: &quot;Times New R=
oman&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 3+ year hands-on experience in an Agile developmen=
t team</span><span style=3D"font-size: 8pt; font-family: Arial, sans-serif;=
"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.00=
01pt; background-image: initial; background-position: initial; background-s=
ize: initial; background-repeat: initial; background-attachment: initial; b=
ackground-origin: initial; background-clip: initial; line-height: normal;">=
<span style=3D"padding: 0in; border-width: 1pt; border-style: none; border-=
color: windowtext; font-size: 10pt; font-family: &quot;Times New Roman&quot=
;, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Experience in object oriented development is a must</span=
><span style=3D"font-size: 8pt; font-family: Arial, sans-serif;"><o:p></o:p=
></span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; backgr=
ound-image: initial; background-position: initial; background-size: initial=
; background-repeat: initial; background-attachment: initial; background-or=
igin: initial; background-clip: initial; line-height: normal;"><span style=
=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: wind=
owtext; font-size: 10pt; font-family: &quot;Times New Roman&quot;, serif; c=
olor: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 Experience with SOAP and REST Web Services and integration using API=
s is a must</span><span style=3D"font-size: 8pt; font-family: Arial, sans-s=
erif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin-bottom:=
 0.0001pt; background-image: initial; background-position: initial; backgro=
und-size: initial; background-repeat: initial; background-attachment: initi=
al; background-origin: initial; background-clip: initial; line-height: norm=
al;"><span style=3D"padding: 0in; border-width: 1pt; border-style: none; bo=
rder-color: windowtext; font-size: 10pt; font-family: &quot;Times New Roman=
&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Experience with source control, branching strategies a=
nd using code repositories a must</span><span style=3D"font-size: 8pt; font=
-family: Arial, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" s=
tyle=3D"margin-bottom: 0.0001pt; background-image: initial; background-posi=
tion: initial; background-size: initial; background-repeat: initial; backgr=
ound-attachment: initial; background-origin: initial; background-clip: init=
ial; line-height: normal;"><span style=3D"padding: 0in; border-width: 1pt; =
border-style: none; border-color: windowtext; font-size: 10pt; font-family:=
 &quot;Times New Roman&quot;, serif; color: black; background: rgb(249, 249=
, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0Salesforce=C2=A0certificati=
on preferred</span><span style=3D"font-size: 8pt; font-family: Arial, sans-=
serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin-bottom=
: 0.0001pt; background-image: initial; background-position: initial; backgr=
ound-size: initial; background-repeat: initial; background-attachment: init=
ial; background-origin: initial; background-clip: initial; line-height: nor=
mal;"><span style=3D"padding: 0in; border-width: 1pt; border-style: none; b=
order-color: windowtext; font-size: 10pt; font-family: &quot;Times New Roma=
n&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 Background in leveraging ETL products and tools (e.g.=
 IBM DataStage, Informatica, etc.) for data management is preferred</span><=
span style=3D"font-size: 8pt; font-family: Arial, sans-serif;"><o:p></o:p><=
/span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; backgrou=
nd-image: initial; background-position: initial; background-size: initial; =
background-repeat: initial; background-attachment: initial; background-orig=
in: initial; background-clip: initial; line-height: normal;"><span style=3D=
"padding: 0in; border-width: 1pt; border-style: none; border-color: windowt=
ext; font-size: 10pt; font-family: &quot;Times New Roman&quot;, serif; colo=
r: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Previous experience of Test Driven development is preferred</span><span=
 style=3D"font-size: 8pt; font-family: Arial, sans-serif;"><o:p></o:p></spa=
n></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; background-i=
mage: initial; background-position: initial; background-size: initial; back=
ground-repeat: initial; background-attachment: initial; background-origin: =
initial; background-clip: initial; line-height: normal;"><span style=3D"pad=
ding: 0in; border-width: 1pt; border-style: none; border-color: windowtext;=
 font-size: 10pt; font-family: &quot;Times New Roman&quot;, serif; color: b=
lack; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pr=
evious experience in a lead role within a team of engineers</span><span sty=
le=3D"font-size: 8pt; font-family: Arial, sans-serif;"><o:p></o:p></span></=
p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; background-image=
: initial; background-position: initial; background-size: initial; backgrou=
nd-repeat: initial; background-attachment: initial; background-origin: init=
ial; background-clip: initial; line-height: normal;"><span style=3D"padding=
: 0in; border-width: 1pt; border-style: none; border-color: windowtext; fon=
t-size: 10pt; font-family: &quot;Times New Roman&quot;, serif; color: black=
; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advanc=
ed understanding of the=C2=A0Salesforce=C2=A0platform and its primary funct=
ions.</span><span style=3D"font-size: 8pt; font-family: Arial, sans-serif;"=
><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.000=
1pt; background-image: initial; background-position: initial; background-si=
ze: initial; background-repeat: initial; background-attachment: initial; ba=
ckground-origin: initial; background-clip: initial; line-height: normal;"><=
span style=3D"padding: 0in; border-width: 1pt; border-style: none; border-c=
olor: windowtext; font-size: 10pt; font-family: &quot;Times New Roman&quot;=
, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 Ability to learn new technologies and embrace the challenge =
learning presents</span><span style=3D"font-size: 8pt; font-family: Arial, =
sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin-b=
ottom: 0.0001pt; background-image: initial; background-position: initial; b=
ackground-size: initial; background-repeat: initial; background-attachment:=
 initial; background-origin: initial; background-clip: initial; line-height=
: normal;"><span style=3D"padding: 0in; border-width: 1pt; border-style: no=
ne; border-color: windowtext; font-size: 10pt; font-family: &quot;Times New=
 Roman&quot;, serif; color: black; background: rgb(249, 249, 249);">=C2=B7=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 A self-starter, comfortable having conversation=
s with business partners</span><span style=3D"font-size: 8pt; font-family: =
Arial, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"m=
argin-bottom: 0.0001pt; background-image: initial; background-position: ini=
tial; background-size: initial; background-repeat: initial; background-atta=
chment: initial; background-origin: initial; background-clip: initial; line=
-height: normal;"><span style=3D"padding: 0in; border-width: 1pt; border-st=
yle: none; border-color: windowtext; font-size: 10pt; font-family: &quot;Ti=
mes New Roman&quot;, serif; color: black; background: rgb(249, 249, 249);">=
=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust and current knowledge of web stand=
ards, emerging technologies, and trends</span><span style=3D"font-size: 8pt=
; font-family: Arial, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNor=
mal" style=3D"margin-bottom: 0.0001pt; background-image: initial; backgroun=
d-position: initial; background-size: initial; background-repeat: initial; =
background-attachment: initial; background-origin: initial; background-clip=
: initial; line-height: normal;"><span style=3D"padding: 0in; border-width:=
 1pt; border-style: none; border-color: windowtext; font-size: 10pt; font-f=
amily: &quot;Times New Roman&quot;, serif; color: black; background: rgb(24=
9, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability to think abstractl=
y and deal with ambiguous/under-defined problems</span><span style=3D"font-=
size: 8pt; font-family: Arial, sans-serif;"><o:p></o:p></span></p><p class=
=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; background-image: initial;=
 background-position: initial; background-size: initial; background-repeat:=
 initial; background-attachment: initial; background-origin: initial; backg=
round-clip: initial; line-height: normal;"><span style=3D"padding: 0in; bor=
der-width: 1pt; border-style: none; border-color: windowtext; font-size: 10=
pt; font-family: &quot;Times New Roman&quot;, serif; color: black; backgrou=
nd: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 An excellent com=
municator, both verbally and written.</span><span style=3D"font-size: 8pt; =
font-family: Arial, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNorma=
l" style=3D"margin-bottom: 0.0001pt; background-image: initial; background-=
position: initial; background-size: initial; background-repeat: initial; ba=
ckground-attachment: initial; background-origin: initial; background-clip: =
initial; line-height: normal;"><span style=3D"padding: 0in; border-width: 1=
pt; border-style: none; border-color: windowtext; font-size: 12pt; font-fam=
ily: Arial, sans-serif;">=C2=A0</span><span style=3D"font-size: 8pt; font-f=
amily: Arial, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" sty=
le=3D"margin-bottom: 0.0001pt; background-image: initial; background-positi=
on: initial; background-size: initial; background-repeat: initial; backgrou=
nd-attachment: initial; background-origin: initial; background-clip: initia=
l; line-height: normal;"><span style=3D"padding: 0in; border-width: 1pt; bo=
rder-style: none; border-color: windowtext; font-size: 12pt; font-family: &=
quot;Times New Roman&quot;, serif; background: rgb(106, 168, 79);">=C2=A0</=
span><b><u><span style=3D"padding: 0in; border-width: 1pt; border-style: no=
ne; border-color: windowtext; font-size: 12pt; font-family: &quot;Times New=
 Roman&quot;, serif; color: rgb(76, 17, 48); background: rgb(106, 168, 79);=
">=C2=A0=C2=A0 Forward Your Resume To Below Mentioned Email Address.=C2=A0<=
/span></u></b><span style=3D"font-size: 8pt; font-family: Arial, sans-serif=
;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0=
001pt; background-image: initial; background-position: initial; background-=
size: initial; background-repeat: initial; background-attachment: initial; =
background-origin: initial; background-clip: initial; line-height: normal;"=
><b><i><span style=3D"padding: 0in; border-width: 1pt; border-style: none; =
border-color: windowtext; font-size: 12pt; font-family: &quot;Times New Rom=
an&quot;, serif; color: rgb(204, 0, 0);">=C2=A0</span></i></b><b><i><span s=
tyle=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: =
windowtext; font-size: 12pt; font-family: &quot;Times New Roman&quot;, seri=
f; color: white; background: rgb(19, 79, 92);">HURRY......!!!</span></i></b=
><span style=3D"font-size: 8pt; font-family: Arial, sans-serif;"><o:p></o:p=
></span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; backgr=
ound-image: initial; background-position: initial; background-size: initial=
; background-repeat: initial; background-attachment: initial; background-or=
igin: initial; background-clip: initial; line-height: normal;"><span style=
=3D"font-size: 8pt; font-family: Arial, sans-serif;"><o:p>=C2=A0</o:p></spa=
n></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; background-i=
mage: initial; background-position: initial; background-size: initial; back=
ground-repeat: initial; background-attachment: initial; background-origin: =
initial; background-clip: initial; line-height: normal;"><span style=3D"fon=
t-size: 8pt; font-family: Arial, sans-serif;"><o:p>=C2=A0</o:p></span></p><=
p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; background-image: i=
nitial; background-position: initial; background-size: initial; background-=
repeat: initial; background-attachment: initial; background-origin: initial=
; background-clip: initial; line-height: normal;"><span style=3D"font-size:=
 8pt; font-family: Arial, sans-serif;">=C2=A0</span><b><span style=3D"paddi=
ng: 0in; border-width: 1pt; border-style: none; border-color: windowtext; f=
ont-size: 20pt; font-family: &quot;Blackadder ITC&quot;; color: rgb(32, 18,=
 77);">----*-----</span></b><span style=3D"font-size: 8pt; font-family: Ari=
al, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"marg=
in-bottom: 0.0001pt; background-image: initial; background-position: initia=
l; background-size: initial; background-repeat: initial; background-attachm=
ent: initial; background-origin: initial; background-clip: initial; line-he=
ight: normal;"><b><span style=3D"padding: 0in; border-width: 1pt; border-st=
yle: none; border-color: windowtext; font-size: 20pt; font-family: &quot;Bl=
ackadder ITC&quot;; color: rgb(32, 18, 77);">Happy Weekend</span></b><span =
style=3D"padding: 0in; border-width: 1pt; border-style: none; border-color:=
 windowtext; font-size: 12pt; font-family: Arial, sans-serif; color: rgb(32=
, 18, 77);">=C2=A0=C2=A0</span><span style=3D"font-size: 12pt; font-family:=
 Arial, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"=
margin-bottom: 0.0001pt; background-image: initial; background-position: in=
itial; background-size: initial; background-repeat: initial; background-att=
achment: initial; background-origin: initial; background-clip: initial; lin=
e-height: normal;"><span style=3D"padding: 0in; border-width: 1pt; border-s=
tyle: none; border-color: windowtext; font-size: 12pt; font-family: Arial, =
sans-serif;">--</span><span style=3D"font-size: 12pt; font-family: Arial, s=
ans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin-bo=
ttom: 0.0001pt; background-image: initial; background-position: initial; ba=
ckground-size: initial; background-repeat: initial; background-attachment: =
initial; background-origin: initial; background-clip: initial; line-height:=
 normal;"><b><span style=3D"padding: 0in; border-width: 1pt; border-style: =
none; border-color: windowtext; font-size: 18pt; font-family: &quot;Edwardi=
an Script ITC&quot;; color: rgb(127, 96, 0);">Thanks &amp; Regards..</span>=
</b><b><span style=3D"padding: 0in; border-width: 1pt; border-style: none; =
border-color: windowtext; font-size: 18pt; font-family: Cambria, serif; col=
or: rgb(127, 96, 0);">=C2=A0</span></b><b><span style=3D"padding: 0in; bord=
er-width: 1pt; border-style: none; border-color: windowtext; font-size: 18p=
t; font-family: Wingdings; color: rgb(127, 96, 0);">?</span></b><span style=
=3D"padding: 0in; border-width: 1pt; border-style: none; border-color: wind=
owtext; font-size: 12pt; font-family: Arial, sans-serif;">=C2=A0=C2=A0</spa=
n><span style=3D"font-size: 12pt; font-family: Arial, sans-serif;"><o:p></o=
:p></span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; back=
ground-image: initial; background-position: initial; background-size: initi=
al; background-repeat: initial; background-attachment: initial; background-=
origin: initial; background-clip: initial; line-height: normal;"><b><i><spa=
n style=3D"padding: 0in; border-width: 1pt; border-style: none; border-colo=
r: windowtext; font-size: 12pt; font-family: Arial, sans-serif;">Prashanth<=
/span></i></b><span style=3D"font-size: 12pt; font-family: Arial, sans-seri=
f;"><o:p></o:p></span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.=
0001pt; background-image: initial; background-position: initial; background=
-size: initial; background-repeat: initial; background-attachment: initial;=
 background-origin: initial; background-clip: initial; line-height: normal;=
"><b><i><span style=3D"padding: 0in; border-width: 1pt; border-style: none;=
 border-color: windowtext; font-size: 12pt; font-family: Arial, sans-serif;=
">US IT=C2=A0 RECRUITER</span></i></b><span style=3D"font-size: 12pt; font-=
family: Arial, sans-serif;"><o:p></o:p></span></p><p class=3D"MsoNormal" st=
yle=3D"margin-bottom: 0.0001pt; background-image: initial; background-posit=
ion: initial; background-size: initial; background-repeat: initial; backgro=
und-attachment: initial; background-origin: initial; background-clip: initi=
al; line-height: normal;"><b><i><span style=3D"padding: 0in; border-width: =
1pt; border-style: none; border-color: windowtext; font-size: 12pt; font-fa=
mily: Arial, sans-serif;">+1 (315)947-0775</span></i></b><span style=3D"fon=
t-size: 12pt; font-family: Arial, sans-serif;"><o:p></o:p></span></p><p cla=
ss=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; background-image: initia=
l; background-position: initial; background-size: initial; background-repea=
t: initial; background-attachment: initial; background-origin: initial; bac=
kground-clip: initial; line-height: normal;"><b><i><span style=3D"padding: =
0in; border-width: 1pt; border-style: none; border-color: windowtext; font-=
size: 12pt; font-family: Arial, sans-serif;">Email :=C2=A0<a href=3D"mailto=
:prasanth@genisists.com" target=3D"_blank"><span style=3D"border-width: ini=
tial; border-style: none;"><span style=3D"border-width: initial; border-sty=
le: none;">prasanth@genisists.com</span></span></a></span></i></b><span sty=
le=3D"font-size: 12pt; font-family: Arial, sans-serif;"><o:p></o:p></span><=
/p><p class=3D"MsoNormal" style=3D"margin-bottom: 0.0001pt; background-imag=
e: initial; background-position: initial; background-size: initial; backgro=
und-repeat: initial; background-attachment: initial; background-origin: ini=
tial; background-clip: initial; line-height: normal;"><span style=3D"font-s=
ize: 12pt; font-family: Arial, sans-serif;"><o:p>=C2=A0</o:p></span></p><p =
class=3D"MsoNormal"><o:p>=C2=A0</o:p><img src=3D"https://ci3.googleusercont=
ent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3mNnYNVp0FhTmwRvKw4LQgks3iaTX=
QjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv4pCzpxtpwBgNsbnemBgpHaJdmsO=
JsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG8s9GZVwfTdzwY8rOrpS2MX5Csw=
=3Ds0-d-e1-ft#https://docs.google.com/uc?export=3Ddownload&amp;id=3D1fyCxLr=
UTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25CV0lwa2FFS2syRWxCbGd=
lYUxaUFpjL0N3PQ" width=3D"200" height=3D"58" style=3D"font-size: small; col=
or: rgb(17, 85, 204); font-family: arial, helvetica, sans-serif;"></p></div=
><div><br></div></div>

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
om/d/msgid/linux-ntb/5d7a6a51-ca53-43d0-b1c5-ed9f0e359fa4%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/5d7a6a51-ca53-43d0-b1c5-ed9f0e359fa4%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_853_656130420.1559313665073--

------=_Part_852_1704796035.1559313665072--
