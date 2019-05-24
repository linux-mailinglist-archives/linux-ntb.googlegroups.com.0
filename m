Return-Path: <linux-ntb+bncBCELXQMOTUFBBSXXT7TQKGQE6N2HXWI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D71299CC
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 16:12:27 +0200 (CEST)
Received: by mail-yw1-xc3e.google.com with SMTP id y18sf8564059ywy.14
        for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 07:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LRuZmI/IKPeFPsphGOy4aJwsv9fzNzc5thk9uaFjf0Q=;
        b=noWGW15oS+QwDHrxNj2t71SxHjsiY357Hed3XTlsuYa7/jXve+Obbqvtodh2L+AHpq
         IKY+NqKLms2iOqOo+eZn2MvFFd3Zj11hnbR7vipqynpP2HTrOy8GJrX8d0FS9DV9uhsO
         W77YpnW75f79UQDa7chIP9JTgA/LkZBI3CdtZtGYASf2VuaxobW0E8REBh+OJE97jdK7
         5pje0MEQycxnikvf/MrcwqYCH81I5bnFezGngpzjwEZWeREYs2Vp3Biy3JpwI9BO8gxi
         FGgvhB4W4P3mtD3Nkn8jzk9j28V8bShYh6Bv+N4jQN3tAuxiHBpzpOJ3H37lIGSyFrib
         yJwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LRuZmI/IKPeFPsphGOy4aJwsv9fzNzc5thk9uaFjf0Q=;
        b=NUg38eRQZurAUJ8x/obKvGkMFIjJ2qsgyHcohXhDuLkN07WOP7VsUUqyXg3Dcn8tk8
         1QJa+HV/tM6E3U2O3uz36nCtifWADojHfiZGeOoCjEwE9iso8FJTbKau70+aUbgXNWvH
         Ff4JPnVp18I1AijV+Rp+eC2dk8UTxDfRr2Ak1pOiD9E3xMzWbaj5IlZboEc0C6WhXoV0
         8krh0jdWbOL8iK9OPaWhksBrHMctFX6iU6eBI/0emE56plzCvwdlfhzvTliXHMOODTJY
         vEryDoG0G1ibugmJ+FKEvtkcLLAnbTH8qnbZl/ZDxF+vzkpFPaPSBt2ccvLpSsLwbeht
         gOVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LRuZmI/IKPeFPsphGOy4aJwsv9fzNzc5thk9uaFjf0Q=;
        b=eKCkN80iOcqkQSaYyApP+pXXypQdKg20G8W6GM6+O9VybhMN6ztx7LQIvjsL7F8/NX
         JoTkn3RiBTfU65D+XJCflcwaWCiEUbLDBPracSzd4xMTKKvwadc2DjR5k4K9MkgDFAbk
         ylmZOPE2wnaZIT+LMpp6+3l5GJ3Izv/tp6np7U0/yndX0uCvfKlZJrMHS3e+AfysW18R
         fkRygfACdMXbCCUJOlNvaG5Wb+ZobZsR6dHYQsgkfQEWd0mUz3mWCazJweZm2ni2QDtf
         cbfqCQAJbA4aff0B6V2cT5YgUN8pGahWGR3NouQe5RUzrdB2LL/hWSRXrztcyHywwt0Z
         ArmQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX9DFvgMVYB4lq87lhLuiLt+vz1KbaMRCBPo47jFJn0/mLKvPcP
	eGjH1IaWMdjOe8oWFl4Cv10=
X-Google-Smtp-Source: APXvYqwvjgM2Ld2QI+XiJezjfMLQaareYMLm1OCzXjunnFALWBMqFHc6ljfeGx0zi/W7DOXj/4u1eA==
X-Received: by 2002:a0d:c0c5:: with SMTP id b188mr49119363ywd.83.1558707146381;
        Fri, 24 May 2019 07:12:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:218a:: with SMTP id h132ls924156ybh.6.gmail; Fri, 24 May
 2019 07:12:26 -0700 (PDT)
X-Received: by 2002:a25:6f83:: with SMTP id k125mr47714837ybc.106.1558707146013;
        Fri, 24 May 2019 07:12:26 -0700 (PDT)
Date: Fri, 24 May 2019 07:12:25 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <c4a7bf5f-21d2-4e4a-a2e3-d11a89422326@googlegroups.com>
Subject: Urgent Requirement For Senior ServiceNow Developer with 8+ Years
 Exp
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_991_1334145839.1558707145585"
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

------=_Part_991_1334145839.1558707145585
Content-Type: multipart/alternative; 
	boundary="----=_Part_992_2048344186.1558707145586"

------=_Part_992_2048344186.1558707145586
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



Hi All,

=20

                  *SENIOR ServiceNow DEVELOPER WITH 8+ YEARS. *

=20

=20

*SEEKING A **ServiceNow Developer/Engineer for** our client in the HEALTH=
=20
INSURANCE field!*

*Position:* ServiceNow Developer/Engineer=20
*Location: *Durham North Carolina 27707
*Term: *6 Months plus

=20

=20

*Day-to-Day Responsibilities:*

=C2=B7  Convert user stories into technical solutions.

=C2=B7  Maintains technology currency and capacity planning in support of=
=20
established SLAs.

=C2=B7  Proactively provides information and ongoing consultation for IT an=
d=20
business areas as well as vendors directly or indirectly affected by=20
ServiceNow Application.

=C2=B7  Leads the requirement gathering sessions collaborating with IT=20
stakeholders, service owners and partners.

=C2=B7  Provides operational readiness through the engineering, planning,=
=20
coordination, and execution of performance and tuning analysis, systems=20
support, and incident and problem resolution.

=C2=B7  Provides detailed guidance and consultation in solutioning producti=
on=20
incidents when required.

=C2=B7  Collaborates with vendors on infrastructure designs to ensure the f=
inal=20
product is what was architected or designed.

=20

*Is this a good fit? (Requirements):*

=C2=B7  Bachelors degree and *8+ years of systems ServiceNow Developer *exp=
erience=20
is required.

=C2=B7  In lieu of degree, *10+ years of systems ServiceNow Developer*.

=C2=B7  Direct experience in one or more of the following technical special=
ties:=20
application development, application integration, Web Services, Scripting,=
=20
and/or database programming.

=C2=B7  Experience automating tasks associated with technical specialties.

=C2=B7  Experience successfully leading ITSM projects and initiatives.

=C2=B7  Experience in multiple technical specialties preferred.

=C2=B7  *Experience in one or more of the following technologies (aligning =
with=20
relevant technical specialties): Integrating ServiceNow with other=20
Enterprise Application via API, using REST/SOAP web services, Scripting=20
Workflow, ServiceNow Discovery,*

=C2=B7  Must be able to work independently and be self sufficient in defini=
ng=20
and realizing infrastructure designs.

=C2=B7  Team and customer service oriented, flexible and adaptable with pro=
ven=20
ability to solve problems in a collaborative and timely manner.

=C2=B7  Solid background in data collection, analysis, and reporting.

=C2=B7  Proven debugging skills

=C2=B7  Excellent oral and written communication and presentation skills

=C2=B7  Flexible and adaptable with focus on effectively managing change

=20

*    Forward Your Resume To Below Mentioned Email Address.*

=20

--=20

=20

=C2=B7  =20

*Thanks & Regards,*

*Prashanth*

*US IT  RECRUITER*

*Contact : +1 (315)947-0775*

*Email : prasanth@genisists.com <prasanth@genisists.com>*

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/c4a7bf5f-21d2-4e4a-a2e3-d11a89422326%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_992_2048344186.1558707145586
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"font-size: 12pt; font-fami=
ly: &quot;Times New Roman&quot;, serif;">Hi All,<u></u><u></u></p><div styl=
e=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-right: 0in; =
margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;=
, serif;"><u></u>=C2=A0<u></u></p></div><div style=3D"font-size: small;"><p=
 class=3D"MsoNormal" align=3D"center" style=3D"margin-right: 0in; margin-le=
ft: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; =
text-align: center;"><b><span style=3D"font-size: 13.5pt; font-family: &quo=
t;Open Sans&quot;;">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=C2=A0</span></b><b><span style=3D"font-size: 13.5pt; background: ye=
llow;">SENIOR ServiceNow DEVELOPER WITH 8+ YEARS.=C2=A0</span></b><u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0i=
n; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></=
u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"margin-right: 0in; margi=
n-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, ser=
if;"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"margin-right: =
0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&=
quot;, serif;"><b><span style=3D"font-size: 10pt; font-family: &quot;Open S=
ans&quot;; color: black;">SEEKING A=C2=A0</span></b><b><span style=3D"font-=
size: 10pt; font-family: Verdana, sans-serif; color: black;">ServiceNow Dev=
eloper/Engineer for</span></b><b><span style=3D"font-size: 10pt; font-famil=
y: &quot;Open Sans&quot;; color: black;">=C2=A0our client in the HEALTH INS=
URANCE field!</span></b><span style=3D"font-size: 10pt; font-family: &quot;=
Open Sans&quot;; color: black;"><br></span><span style=3D"font-size: 10pt; =
font-family: &quot;Open Sans&quot;;"><br><b>Position:</b>=C2=A0</span><span=
 style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">ServiceNow De=
veloper/</span><span style=3D"font-size: 10pt; font-family: &quot;Open Sans=
&quot;;">Engineer=C2=A0<br><b>Location:=C2=A0</b>Durham North Carolina 2770=
7<br><b>Term:=C2=A0</b>6 Months plus</span><u></u><u></u></p><p class=3D"Ms=
oNormal" style=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; fon=
t-family: &quot;Times New Roman&quot;, serif;"><u></u>=C2=A0<u></u></p><p c=
lass=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0in; font-size:=
 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></u>=C2=A0<u></=
u></p><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0in; =
font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><span=
 style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;">Day-to-Day =
Responsibilities:</span></b><u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"margin-right: 0in; margin-left: 47.25pt; font-size: 12pt; font-family: =
&quot;Times New Roman&quot;, serif;"><u></u><span style=3D"font-size: 10pt;=
 font-family: Symbol;">=C2=B7<span style=3D"font-variant-numeric: normal; f=
ont-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-=
height: normal; font-family: &quot;Times New Roman&quot;;">=C2=A0=C2=A0</sp=
an></span><u></u><span style=3D"font-size: 10pt; font-family: Verdana, sans=
-serif;">Convert user stories into technical solutions.</span><u></u><u></u=
></p><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 47.25p=
t; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></=
u><span style=3D"font-size: 10pt; font-family: Symbol;">=C2=B7<span style=
=3D"font-variant-numeric: normal; font-variant-east-asian: normal; font-str=
etch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times=
 New Roman&quot;;">=C2=A0=C2=A0</span></span><u></u><span style=3D"font-siz=
e: 10pt; font-family: Verdana, sans-serif;">Maintains technology currency a=
nd capacity planning in support of established SLAs.</span><u></u><u></u></=
p><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 47.25pt; =
font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></u><=
span style=3D"font-size: 10pt; font-family: Symbol;">=C2=B7<span style=3D"f=
ont-variant-numeric: normal; font-variant-east-asian: normal; font-stretch:=
 normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New =
Roman&quot;;">=C2=A0=C2=A0</span></span><u></u><span style=3D"font-size: 10=
pt; font-family: Verdana, sans-serif;">Proactively provides information and=
 ongoing consultation for IT and business areas as well as vendors directly=
 or indirectly affected by ServiceNow Application.</span><u></u><u></u></p>=
<p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 47.25pt; fo=
nt-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></u><sp=
an style=3D"font-size: 10pt; font-family: Symbol;">=C2=B7<span style=3D"fon=
t-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: n=
ormal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Ro=
man&quot;;">=C2=A0=C2=A0</span></span><u></u><span style=3D"font-size: 10pt=
; font-family: Verdana, sans-serif;">Leads the requirement gathering sessio=
ns collaborating with IT stakeholders, service owners and partners.</span><=
u></u><u></u></p><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-=
left: 47.25pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, s=
erif;"><u></u><span style=3D"font-size: 10pt; font-family: Symbol;">=C2=B7<=
span style=3D"font-variant-numeric: normal; font-variant-east-asian: normal=
; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &=
quot;Times New Roman&quot;;">=C2=A0=C2=A0</span></span><u></u><span style=
=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Provides operationa=
l readiness through the engineering, planning, coordination, and execution =
of performance and tuning analysis, systems support, and incident and probl=
em resolution.</span><u></u><u></u></p><p class=3D"MsoNormal" style=3D"marg=
in-right: 0in; margin-left: 47.25pt; font-size: 12pt; font-family: &quot;Ti=
mes New Roman&quot;, serif;"><u></u><span style=3D"font-size: 10pt; font-fa=
mily: Symbol;">=C2=B7<span style=3D"font-variant-numeric: normal; font-vari=
ant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: =
normal; font-family: &quot;Times New Roman&quot;;">=C2=A0=C2=A0</span></spa=
n><u></u><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;"=
>Provides detailed guidance and consultation in solutioning production inci=
dents when required.</span><u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"margin-right: 0in; margin-left: 47.25pt; font-size: 12pt; font-family: =
&quot;Times New Roman&quot;, serif;"><u></u><span style=3D"font-size: 10pt;=
 font-family: Symbol;">=C2=B7<span style=3D"font-variant-numeric: normal; f=
ont-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-=
height: normal; font-family: &quot;Times New Roman&quot;;">=C2=A0=C2=A0</sp=
an></span><u></u><span style=3D"font-size: 10pt; font-family: Verdana, sans=
-serif;">Collaborates with vendors on infrastructure designs to ensure the =
final product is what was architected or designed.</span><u></u><u></u></p>=
<p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0in; font-s=
ize: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D=
"font-size: 10pt; font-family: &quot;Open Sans&quot;;">=C2=A0</span><u></u>=
<u></u></p><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: =
0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b>=
<span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;">Is thi=
s a good fit? (Requirements):</span></b><u></u><u></u></p><p class=3D"MsoNo=
rmal" style=3D"margin-right: 0in; margin-left: 47.25pt; font-size: 12pt; fo=
nt-family: &quot;Times New Roman&quot;, serif;"><u></u><span style=3D"font-=
size: 10pt; font-family: Symbol;">=C2=B7<span style=3D"font-variant-numeric=
: normal; font-variant-east-asian: normal; font-stretch: normal; font-size:=
 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">=C2=
=A0=C2=A0</span></span><u></u><span style=3D"font-size: 10pt; font-family: =
Verdana, sans-serif;">Bachelors degree and=C2=A0<b>8+ years of systems Serv=
iceNow Developer=C2=A0</b>experience is required.</span><u></u><u></u></p><=
p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 47.25pt; fon=
t-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></u><spa=
n style=3D"font-size: 10pt; font-family: Symbol;">=C2=B7<span style=3D"font=
-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: no=
rmal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Rom=
an&quot;;">=C2=A0=C2=A0</span></span><u></u><span style=3D"font-size: 10pt;=
 font-family: Verdana, sans-serif;">In lieu of degree,=C2=A0<b>10+ years of=
 systems ServiceNow Developer</b>.</span><u></u><u></u></p><p class=3D"MsoN=
ormal" style=3D"margin-right: 0in; margin-left: 47.25pt; font-size: 12pt; f=
ont-family: &quot;Times New Roman&quot;, serif;"><u></u><span style=3D"font=
-size: 10pt; font-family: Symbol;">=C2=B7<span style=3D"font-variant-numeri=
c: normal; font-variant-east-asian: normal; font-stretch: normal; font-size=
: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">=C2=
=A0=C2=A0</span></span><u></u><span style=3D"font-size: 10pt; font-family: =
Verdana, sans-serif;">Direct experience in one or more of the following tec=
hnical specialties: application development, application integration, Web S=
ervices, Scripting, and/or database programming.</span><u></u><u></u></p><p=
 class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 47.25pt; font=
-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></u><span=
 style=3D"font-size: 10pt; font-family: Symbol;">=C2=B7<span style=3D"font-=
variant-numeric: normal; font-variant-east-asian: normal; font-stretch: nor=
mal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roma=
n&quot;;">=C2=A0=C2=A0</span></span><u></u><span style=3D"font-size: 10pt; =
font-family: Verdana, sans-serif;">Experience automating tasks associated w=
ith technical specialties.</span><u></u><u></u></p><p class=3D"MsoNormal" s=
tyle=3D"margin-right: 0in; margin-left: 47.25pt; font-size: 12pt; font-fami=
ly: &quot;Times New Roman&quot;, serif;"><u></u><span style=3D"font-size: 1=
0pt; font-family: Symbol;">=C2=B7<span style=3D"font-variant-numeric: norma=
l; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; l=
ine-height: normal; font-family: &quot;Times New Roman&quot;;">=C2=A0=C2=A0=
</span></span><u></u><span style=3D"font-size: 10pt; font-family: Verdana, =
sans-serif;">Experience successfully leading ITSM projects and initiatives.=
</span><u></u><u></u></p><p class=3D"MsoNormal" style=3D"margin-right: 0in;=
 margin-left: 47.25pt; font-size: 12pt; font-family: &quot;Times New Roman&=
quot;, serif;"><u></u><span style=3D"font-size: 10pt; font-family: Symbol;"=
>=C2=B7<span style=3D"font-variant-numeric: normal; font-variant-east-asian=
: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-f=
amily: &quot;Times New Roman&quot;;">=C2=A0=C2=A0</span></span><u></u><span=
 style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Experience in=
 multiple technical specialties preferred.</span><u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 47.25pt; font-size:=
 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></u><span style=
=3D"font-size: 10pt; font-family: Symbol;">=C2=B7<span style=3D"font-varian=
t-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; f=
ont-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot=
;;">=C2=A0=C2=A0</span></span><u></u><b><span style=3D"font-size: 10pt; fon=
t-family: Verdana, sans-serif;">Experience in one or more of the following =
technologies (aligning with relevant technical specialties): Integrating Se=
rviceNow with other Enterprise Application via API, using REST/SOAP web ser=
vices, Scripting Workflow, ServiceNow Discovery,</span></b><u></u><u></u></=
p><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 47.25pt; =
font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></u><=
span style=3D"font-size: 10pt; font-family: Symbol;">=C2=B7<span style=3D"f=
ont-variant-numeric: normal; font-variant-east-asian: normal; font-stretch:=
 normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New =
Roman&quot;;">=C2=A0=C2=A0</span></span><u></u><span style=3D"font-size: 10=
pt; font-family: Verdana, sans-serif;">Must be able to work independently a=
nd be self sufficient in defining and realizing infrastructure designs.</sp=
an><u></u><u></u></p><p class=3D"MsoNormal" style=3D"margin-right: 0in; mar=
gin-left: 47.25pt; font-size: 12pt; font-family: &quot;Times New Roman&quot=
;, serif;"><u></u><span style=3D"font-size: 10pt; font-family: Symbol;">=C2=
=B7<span style=3D"font-variant-numeric: normal; font-variant-east-asian: no=
rmal; font-stretch: normal; font-size: 7pt; line-height: normal; font-famil=
y: &quot;Times New Roman&quot;;">=C2=A0=C2=A0</span></span><u></u><span sty=
le=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Team and customer=
 service oriented, flexible and adaptable with proven ability to solve prob=
lems in a collaborative and timely manner.</span><u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 47.25pt; font-size:=
 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></u><span style=
=3D"font-size: 10pt; font-family: Symbol;">=C2=B7<span style=3D"font-varian=
t-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; f=
ont-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot=
;;">=C2=A0=C2=A0</span></span><u></u><span style=3D"font-size: 10pt; font-f=
amily: Verdana, sans-serif;">Solid background in data collection, analysis,=
 and reporting.</span><u></u><u></u></p><p class=3D"MsoNormal" style=3D"mar=
gin-right: 0in; margin-left: 47.25pt; font-size: 12pt; font-family: &quot;T=
imes New Roman&quot;, serif;"><u></u><span style=3D"font-size: 10pt; font-f=
amily: Symbol;">=C2=B7<span style=3D"font-variant-numeric: normal; font-var=
iant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height:=
 normal; font-family: &quot;Times New Roman&quot;;">=C2=A0=C2=A0</span></sp=
an><u></u><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;=
">Proven debugging skills</span><u></u><u></u></p><p class=3D"MsoNormal" st=
yle=3D"margin-right: 0in; margin-left: 47.25pt; font-size: 12pt; font-famil=
y: &quot;Times New Roman&quot;, serif;"><u></u><span style=3D"font-size: 10=
pt; font-family: Symbol;">=C2=B7<span style=3D"font-variant-numeric: normal=
; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; li=
ne-height: normal; font-family: &quot;Times New Roman&quot;;">=C2=A0=C2=A0<=
/span></span><u></u><span style=3D"font-size: 10pt; font-family: Verdana, s=
ans-serif;">Excellent oral and written communication and presentation skill=
s</span><u></u><u></u></p><p class=3D"MsoNormal" style=3D"margin-right: 0in=
; margin-left: 47.25pt; font-size: 12pt; font-family: &quot;Times New Roman=
&quot;, serif;"><u></u><span style=3D"font-size: 10pt; font-family: Symbol;=
">=C2=B7<span style=3D"font-variant-numeric: normal; font-variant-east-asia=
n: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-=
family: &quot;Times New Roman&quot;;">=C2=A0=C2=A0</span></span><u></u><spa=
n style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Flexible and=
 adaptable with focus on effectively managing change</span><u></u><u></u></=
p><div><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0in;=
 font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><u><=
span style=3D"color: rgb(76, 17, 48);"><u></u><span style=3D"text-decoratio=
n-line: none;">=C2=A0</span><u></u></span></u></b></p></div><p class=3D"Mso=
Normal" style=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; font=
-family: &quot;Times New Roman&quot;, serif;"><b><u><span style=3D"color: r=
gb(76, 17, 48);">=C2=A0 =C2=A0=C2=A0Forward Your Resume To Below Mentioned =
Email Address.</span></u></b><u></u><u></u></p></div><div style=3D"font-siz=
e: small;"><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: =
0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u>=
</u>=C2=A0<u></u></p></div><div style=3D"font-size: small;"><p class=3D"Mso=
Normal" style=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; font=
-family: &quot;Times New Roman&quot;, serif;">--=C2=A0<u></u><u></u></p></d=
iv><div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-=
right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New=
 Roman&quot;, serif;"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=
=3D"margin-right: 0in; margin-left: 47.25pt; font-size: 12pt; font-family: =
&quot;Times New Roman&quot;, serif;"><u></u><span style=3D"font-size: 10pt;=
 font-family: Symbol;">=C2=B7<span style=3D"font-variant-numeric: normal; f=
ont-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-=
height: normal; font-family: &quot;Times New Roman&quot;;">=C2=A0=C2=A0</sp=
an></span><u></u><u></u>=C2=A0<u></u></p><p style=3D"margin-right: 0in; mar=
gin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, s=
erif; margin-bottom: 12pt;"><b><i><span style=3D"font-family: Arial, sans-s=
erif;">Thanks &amp; Regards,</span></i></b><u></u><u></u></p><p style=3D"ma=
rgin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Time=
s New Roman&quot;, serif; margin-bottom: 12pt;"><b><i><span style=3D"font-f=
amily: Arial, sans-serif;">Prashanth</span></i></b><u></u><u></u></p><p sty=
le=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &q=
uot;Times New Roman&quot;, serif; margin-bottom: 12pt;"><b><i><span style=
=3D"font-family: Arial, sans-serif;">US IT=C2=A0 RECRUITER</span></i></b><u=
></u><u></u></p><p style=3D"margin-right: 0in; margin-left: 0in; font-size:=
 12pt; font-family: &quot;Times New Roman&quot;, serif; margin-bottom: 12pt=
;"><b><i><span style=3D"font-family: Arial, sans-serif;">Contact : +1 (315)=
947-0775</span></i></b><u></u><u></u></p><p style=3D"margin-right: 0in; mar=
gin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, s=
erif; margin-bottom: 12pt;"><b><i><span style=3D"font-family: Arial, sans-s=
erif;">Email :=C2=A0<a href=3D"mailto:prasanth@genisists.com" target=3D"_bl=
ank" data-mt-detrack-inspected=3D"true" style=3D"color: rgb(17, 85, 204);">=
prasanth@genisists.com</a></span></i></b><u></u><u></u></p><div><p class=3D=
"MsoNormal" style=3D"margin-right: 0in; margin-bottom: 12pt; margin-left: 0=
in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><spa=
n style=3D"font-family: Arial, sans-serif;"><img border=3D"0" width=3D"199"=
 height=3D"57" id=3D"m_-4918861195262825650_x0000_i1025" src=3D"https://ci3=
.googleusercontent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3mNnYNVp0FhTmw=
RvKw4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv4pCzpxtpwBgN=
sbnemBgpHaJdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG8s9GZVwfTdzw=
Y8rOrpS2MX5Csw=3Ds0-d-e1-ft#https://docs.google.com/uc?export=3Ddownload&am=
p;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25CV0lwa=
2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" class=3D"CToWUd"></span></p></div></div></di=
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
om/d/msgid/linux-ntb/c4a7bf5f-21d2-4e4a-a2e3-d11a89422326%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/c4a7bf5f-21d2-4e4a-a2e3-d11a89422326%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_992_2048344186.1558707145586--

------=_Part_991_1334145839.1558707145585--
