Return-Path: <linux-ntb+bncBCELXQMOTUFBBBMATPTQKGQEMJ2UJII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B5628187
	for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 17:45:10 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id y3sf5553091ybg.12
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 08:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lc0Vs+c0S07BX4cvlFxGjCWqobTFzyyaLj3eo/yQYPY=;
        b=AvrL1TPl71hCxnhMR6UfoZYrfzNqCpIylTrzKBT/k2vvBshgt1ki4JsxqehieDbk1E
         4YwnTRYNaF3PvATV4v/1qx+YEQbCTszdxIzaFyl1cZanDzF7cgSiAjhSp/LoNbRAHUSQ
         JS4NyC0QlktqMZRuj0lgIB3eX+jpuLIdspdhlmYeS4gbvspEDzPIIo7tjOWB9Bex7ALX
         1BVtaOPK6K2OzECBGywRTDVoei4tS6qVooZk2W8nbHWTzBUvNTPIE8KiEcflqK7IVDUA
         aN3JX5JzHMLZL0dKNkbtTKc+AqZiqPdm6IIuhBSIGwPgadpCBdsLPpbj7qpi90hXRXQC
         YFNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lc0Vs+c0S07BX4cvlFxGjCWqobTFzyyaLj3eo/yQYPY=;
        b=GuxDK8cl2LFr/zD+gUk+GEDe5o8JjaWMSa4tTvXz9vwt3pZaS4Ouy6eZxHy1Qpv3C4
         IuG2+XdErsjxvV72umPDUY+2NEPbtXJfcJYL/P2+LN8/Oaf2jk4yR76b9XUfccbTJV3U
         cQbXISz2+Pj0HJR7XRIDQXvXOskL7ShkHbbOGodaQ1ORZPUga6RHRkY2ZzTJ/0wI6ZUo
         wogNpTYdiMr+m8yLP6JVg2ke4LzKSEuUdUdHGgnsUCJUgEW9y9XkSoG0QgM+S5Vr8/XB
         wkX5JFujMzV2KOSplClU5jLNLJlEhsGKpWLrHsC9KD1TkJSLVWq1MBYr4k5fnHEOEHE3
         oeAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lc0Vs+c0S07BX4cvlFxGjCWqobTFzyyaLj3eo/yQYPY=;
        b=oF0k9ZLgoTpH7DLwk2Vl5qQdDkD6qfsn/P9YGEUYpI2jv7p/lqShL7/0tcZ6FOcVL5
         UrWOWyUGgzxlItL4V/xUWk0K8SP+0+EwZgeA7/8M5WGk51mDNmKrjAIvMHR7DOYESbfp
         UwHk717EtUDmOUwPmAHuFAQ0V3K9Onfe4N8eziy9CKBg1KVBhkjBkl0RPyRESgq8poKK
         xTQPS8TIr9DP+HM6HXw501fvw2pja+iH4WqxilqU2Uv50d43ubwuI5n6G30HaAL7DEWE
         NzBTBvgsi+7JmXkHLpvvhA8vebG2jPkH2gL5bqBchGEdLYnUdSgk5mUeLJotguuQYR7w
         LPkw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVs/Zul+XosU4kkflwqSbazBByewlltfDOJtv9dJUOI68tZgxzL
	sH/9q8i28XSJ8GfhiE6rrh8=
X-Google-Smtp-Source: APXvYqxkWZbtrKtWEC7gjEyK74uxXKA/LXOzX74nmxo+FwZuwYyg1emteYtQWnp4BcWPuvuKazGfvA==
X-Received: by 2002:a25:549:: with SMTP id 70mr13657236ybf.353.1558626309373;
        Thu, 23 May 2019 08:45:09 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:32ca:: with SMTP id y193ls869507ywy.2.gmail; Thu, 23 May
 2019 08:45:09 -0700 (PDT)
X-Received: by 2002:a0d:d5c1:: with SMTP id x184mr21400345ywd.88.1558626308930;
        Thu, 23 May 2019 08:45:08 -0700 (PDT)
Date: Thu, 23 May 2019 08:45:08 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <3a703745-6f1b-4328-9c92-4748cb79e510@googlegroups.com>
Subject: ServiceNow Developer/Engineer //Durham North Carolina 27707//6
 Months plus
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_483_1771214971.1558626308236"
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

------=_Part_483_1771214971.1558626308236
Content-Type: multipart/alternative; 
	boundary="----=_Part_484_309711803.1558626308236"

------=_Part_484_309711803.1558626308236
Content-Type: text/plain; charset="UTF-8"

Hi All,

*                  SENIOR ServiceNow DEVELOPER WITH 8+ YEARS. *



*SEEKING A **ServiceNow Developer/Engineer for** our client in the HEALTH 
INSURANCE field!*

*Position:* ServiceNow Developer/Engineer 
*Location: *Durham North Carolina 27707
*Term: *6 Months plus



*Day-to-Day Responsibilities:*

   - Convert user stories into technical solutions.
   - Maintains technology currency and capacity planning in support of 
   established SLAs.
   - Proactively provides information and ongoing consultation for IT and 
   business areas as well as vendors directly or indirectly affected by 
   ServiceNow Application.
   - Leads the requirement gathering sessions collaborating with IT 
   stakeholders, service owners and partners.
   - Provides operational readiness through the engineering, planning, 
   coordination, and execution of performance and tuning analysis, systems 
   support, and incident and problem resolution.
   - Provides detailed guidance and consultation in solutioning production 
   incidents when required.
   - Collaborates with vendors on infrastructure designs to ensure the 
   final product is what was architected or designed.

 

*Is this a good fit? (Requirements):*

   - Bachelors degree and *8+ years of systems ServiceNow Developer *experience 
   is required.
   - In lieu of degree, *10+ years of systems ServiceNow Developer*.
   - Direct experience in one or more of the following technical 
   specialties: application development, application integration, Web 
   Services, Scripting, and/or database programming.
   - Experience automating tasks associated with technical specialties.
   - Experience successfully leading ITSM projects and initiatives.
   - Experience in multiple technical specialties preferred.
   - *Experience in one or more of the following technologies (aligning 
   with relevant technical specialties): Integrating ServiceNow with other 
   Enterprise Application via API, using REST/SOAP web services, Scripting 
   Workflow, ServiceNow Discovery,*
   - Must be able to work independently and be self sufficient in defining 
   and realizing infrastructure designs.
   - Team and customer service oriented, flexible and adaptable with proven 
   ability to solve problems in a collaborative and timely manner.
   - Solid background in data collection, analysis, and reporting.
   - Proven debugging skills
   - Excellent oral and written communication and presentation skills
   - Flexible and adaptable with focus on effectively managing change


    *Forward Your Resume To Below Mentioned Email Address.*

-- 


   - 
   
   
*Thanks & Regards,*

*Prashanth*

*US IT  RECRUITER*

*Contact : +1 (315)947-0775*

*Email : prasanth@genisists.com <prasanth@genisists.com>*

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/3a703745-6f1b-4328-9c92-4748cb79e510%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_484_309711803.1558626308236
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><b><font size=3D"4"><br></font></b></div><div>=
<p class=3D"MsoNormal" style=3D"text-align: center;"><b><font size=3D"4"><s=
pan style=3D"font-family: &quot;Open Sans&quot;;">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span><span style=3D"backgroun=
d-color: yellow;">SENIOR ServiceNow DEVELOPER WITH 8+ YEARS.=C2=A0</span></=
font></b></p><p class=3D"MsoNormal"><b><font size=3D"4"><br class=3D"m_5214=
137938957799305gmail-m_-4994363079379336112gmail-Apple-interchange-newline"=
></font></b></p><p class=3D"MsoNormal" style=3D"font-size: small;"><b><span=
 style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><font color=
=3D"#000000"><br></font></span></b></p><p class=3D"MsoNormal" style=3D"font=
-size: small;"><font color=3D"#000000"><b><span style=3D"font-size: 10pt; f=
ont-family: &quot;Open Sans&quot;;">SEEKING A=C2=A0</span></b><b><span styl=
e=3D"font-size: 10pt; font-family: Verdana, sans-serif;">ServiceNow Develop=
er/Engineer for</span></b><b><span style=3D"font-size: 10pt; font-family: &=
quot;Open Sans&quot;;">=C2=A0our client in the HEALTH INSURANCE field!</spa=
n></b></font><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&q=
uot;;"><font color=3D"#000000"><br></font><br><b>Position:</b>=C2=A0</span>=
<span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">ServiceN=
ow Developer/</span><span style=3D"font-size: 10pt; font-family: &quot;Open=
 Sans&quot;;">Engineer=C2=A0<br><b>Location:=C2=A0</b>Durham North Carolina=
 27707<br><b>Term:=C2=A0</b>6 Months plus</span></p><p class=3D"MsoNormal" =
style=3D"font-size: small;"><span style=3D"font-size: 10pt; font-family: &q=
uot;Open Sans&quot;;"><br></span></p><p class=3D"MsoNormal" style=3D"font-s=
ize: small;"><br></p><p class=3D"MsoNormal" style=3D"font-size: small;"><sp=
an style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><b>Day-to=
-Day Responsibilities:</b></span><u></u><u></u></p><ul type=3D"disc" style=
=3D"font-size: small;"><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px=
 15px;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">=
Convert user stories into technical solutions.</span><span style=3D"font-si=
ze: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><l=
i class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px;"><span style=3D"fo=
nt-size: 10pt; font-family: Verdana, sans-serif;">Maintains technology curr=
ency and capacity planning in support of established SLAs.</span><span styl=
e=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></=
span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px;"><span=
 style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Proactively p=
rovides information and ongoing consultation for IT and business areas as w=
ell as vendors directly or indirectly affected by ServiceNow Application.</=
span><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><=
u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0=
px 15px;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;=
">Leads the requirement gathering sessions collaborating with IT stakeholde=
rs, service owners and partners.</span><span style=3D"font-size: 10pt; font=
-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"Mso=
Normal" style=3D"margin: 0px 0px 0px 15px;"><span style=3D"font-size: 10pt;=
 font-family: Verdana, sans-serif;">Provides operational readiness through =
the engineering, planning, coordination, and execution of performance and t=
uning analysis, systems support, and incident and problem resolution.</span=
><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></=
u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 1=
5px;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Pr=
ovides detailed guidance and consultation in solutioning production inciden=
ts when required.</span><span style=3D"font-size: 10pt; font-family: &quot;=
Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" style=
=3D"margin: 0px 0px 0px 15px;"><span style=3D"font-size: 10pt; font-family:=
 Verdana, sans-serif;">Collaborates with vendors on infrastructure designs =
to ensure the final product is what was architected or designed.</span><spa=
n style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u>=
</u></span></li></ul><p class=3D"MsoNormal" style=3D"font-size: small;"><sp=
an style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;">=C2=A0<u>=
</u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size: small;"><b=
><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;">Is th=
is a good fit? (Requirements):</span></b><span style=3D"font-size: 10pt; fo=
nt-family: &quot;Open Sans&quot;;"><u></u><u></u></span></p><ul type=3D"dis=
c" style=3D"font-size: small;"><li class=3D"MsoNormal" style=3D"margin: 0px=
 0px 0px 15px;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-=
serif;">Bachelors degree and=C2=A0<b>8+ years of systems ServiceNow Develop=
er=C2=A0</b>experience is required.</span><span style=3D"font-size: 10pt; f=
ont-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"=
MsoNormal" style=3D"margin: 0px 0px 0px 15px;"><span style=3D"font-size: 10=
pt; font-family: Verdana, sans-serif;">In lieu of degree,=C2=A0<b>10+ years=
 of systems ServiceNow Developer</b>.</span><span style=3D"font-size: 10pt;=
 font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li class=
=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px;"><span style=3D"font-size=
: 10pt; font-family: Verdana, sans-serif;">Direct experience in one or more=
 of the following technical specialties: application development, applicati=
on integration, Web Services, Scripting, and/or database programming.</span=
><span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></=
u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 1=
5px;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Ex=
perience automating tasks associated with technical specialties.</span><spa=
n style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u>=
</u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px;"=
><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Experie=
nce successfully leading ITSM projects and initiatives.</span><span style=
=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></s=
pan></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px;"><span =
style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Experience in =
multiple technical specialties preferred.</span><span style=3D"font-size: 1=
0pt; font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li cla=
ss=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15px;"><b><span style=3D"font=
-size: 10pt; font-family: Verdana, sans-serif;">Experience in one or more o=
f the following technologies (aligning with relevant technical specialties)=
: Integrating ServiceNow with other Enterprise Application via API, using R=
EST/SOAP web services, Scripting Workflow, ServiceNow Discovery,</span></b>=
<span style=3D"font-size: 10pt; font-family: &quot;Open Sans&quot;;"><u></u=
><u></u></span></li><li class=3D"MsoNormal" style=3D"margin: 0px 0px 0px 15=
px;"><span style=3D"font-size: 10pt; font-family: Verdana, sans-serif;">Mus=
t be able to work independently and be self sufficient in defining and real=
izing infrastructure designs.</span><span style=3D"font-size: 10pt; font-fa=
mily: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNor=
mal" style=3D"margin: 0px 0px 0px 15px;"><span style=3D"font-size: 10pt; fo=
nt-family: Verdana, sans-serif;">Team and customer service oriented, flexib=
le and adaptable with proven ability to solve problems in a collaborative a=
nd timely manner.</span><span style=3D"font-size: 10pt; font-family: &quot;=
Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" style=
=3D"margin: 0px 0px 0px 15px;"><span style=3D"font-size: 10pt; font-family:=
 Verdana, sans-serif;">Solid background in data collection, analysis, and r=
eporting.</span><span style=3D"font-size: 10pt; font-family: &quot;Open San=
s&quot;;"><u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin=
: 0px 0px 0px 15px;"><span style=3D"font-size: 10pt; font-family: Verdana, =
sans-serif;">Proven debugging skills</span><span style=3D"font-size: 10pt; =
font-family: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li class=3D=
"MsoNormal" style=3D"margin: 0px 0px 0px 15px;"><span style=3D"font-size: 1=
0pt; font-family: Verdana, sans-serif;">Excellent oral and written communic=
ation and presentation skills</span><span style=3D"font-size: 10pt; font-fa=
mily: &quot;Open Sans&quot;;"><u></u><u></u></span></li><li class=3D"MsoNor=
mal" style=3D"margin: 0px 0px 0px 15px;"><span style=3D"font-size: 10pt; fo=
nt-family: Verdana, sans-serif;">Flexible and adaptable with focus on effec=
tively managing change</span></li></ul><b style=3D"font-family: &quot;Times=
 New Roman&quot;, serif; font-size: 12pt;"><u><span style=3D"color: rgb(76,=
 17, 48);"><div><b style=3D"font-size: 12pt;"><u><br></u></b></div>=C2=A0 =
=C2=A0=C2=A0</span></u></b><b style=3D"font-family: &quot;Times New Roman&q=
uot;, serif; font-size: 12pt;"><u><span style=3D"color: rgb(76, 17, 48);">F=
orward Your Resume To Below Mentioned Email Address.</span></u></b></div><d=
iv><span style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;=
, serif;"><br></span></div><div><span style=3D"font-size: 12pt; font-family=
: &quot;Times New Roman&quot;, serif;">--=C2=A0</span></div><div><font face=
=3D"Times New Roman, serif"><span style=3D"font-size: 16px;"><br></span></f=
ont><ul type=3D"disc" style=3D"font-size: small;"><li class=3D"MsoNormal" s=
tyle=3D"margin: 0px 0px 0px 15px;"><div><p class=3D"MsoNormal" style=3D"mar=
gin: 1em 0in; line-height: normal; font-size: 12pt; font-family: &quot;Time=
s New Roman&quot;, serif;"><u></u></p></div><p class=3D"MsoNormal" style=3D=
"margin: 1em 0in; line-height: normal; font-size: 12pt; font-family: &quot;=
Times New Roman&quot;, serif;"><u></u></p></li></ul><p style=3D"margin: 1em=
 0in; line-height: normal; font-size: 12pt; font-family: &quot;Times New Ro=
man&quot;, serif; display: inline !important;"><b><i><span style=3D"font-fa=
mily: Arial, sans-serif;">Thanks &amp; Regards,</span></i></b></p><p style=
=3D"margin: 1em 0in; line-height: normal; font-size: 12pt; font-family: &qu=
ot;Times New Roman&quot;, serif;"><b><i><span style=3D"font-family: Arial, =
sans-serif;">Prashanth</span></i></b></p><p style=3D"margin: 1em 0in; line-=
height: normal; font-size: 12pt; font-family: &quot;Times New Roman&quot;, =
serif;"><b><i><span style=3D"font-family: Arial, sans-serif;">US IT=C2=A0 R=
ECRUITER</span></i></b></p><p style=3D"margin: 1em 0in; line-height: normal=
; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><i>=
<span style=3D"font-family: Arial, sans-serif;">Contact : +1 (315)947-0775<=
/span></i></b></p><p style=3D"margin: 1em 0in; line-height: normal; font-si=
ze: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><i><span sty=
le=3D"font-family: Arial, sans-serif;">Email :=C2=A0<a href=3D"mailto:prasa=
nth@genisists.com" rel=3D"nofollow" target=3D"_blank" style=3D"color: rgb(1=
7, 85, 204); cursor: pointer;">prasanth@genisists.com</a></span></i></b><u>=
</u><u></u></p><div style=3D"font-size: small;"><p class=3D"MsoNormal" styl=
e=3D"margin: 1em 0in; line-height: normal; font-size: 12pt; font-family: &q=
uot;Times New Roman&quot;, serif;"><span style=3D"font-family: Arial, sans-=
serif;"><img border=3D"0" width=3D"199" height=3D"57" src=3D"https://ci3.go=
ogleusercontent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3mNnYNVp0FhTmwRvK=
w4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv4pCzpxtpwBgNsbn=
emBgpHaJdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG8s9GZVwfTdzwY8r=
OrpS2MX5Csw=3Ds0-d-e1-ft#https://docs.google.com/uc?export=3Ddownload&amp;i=
d=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25CV0lwa2FF=
S2syRWxCbGdlYUxaUFpjL0N3PQ"></span></p></div></div></div>

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
om/d/msgid/linux-ntb/3a703745-6f1b-4328-9c92-4748cb79e510%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/3a703745-6f1b-4328-9c92-4748cb79e510%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_484_309711803.1558626308236--

------=_Part_483_1771214971.1558626308236--
