Return-Path: <linux-ntb+bncBCDZ33GYSUERBJEIWXTQKGQER343WSI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 103F92C89A
	for <lists+linux-ntb@lfdr.de>; Tue, 28 May 2019 16:22:30 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id m7sf14642894pfh.9
        for <lists+linux-ntb@lfdr.de>; Tue, 28 May 2019 07:22:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559053348; cv=pass;
        d=google.com; s=arc-20160816;
        b=vaJ9pWf5e5/hzjmlSnmt3Qi3ju5H7tXdfXkv3D78Uz/XNIdv/q168OEOMWd0kqjcUJ
         ZtC/VvYXLUeKbGW8rt0t6/tLDvdI22bgRUXsLPqD2fQ+UjcOuFL0tdTZlcPEk9KooyMT
         btJ5ZYMmBXgJ56Iq135pOqOyAUtIUDpL9sj9k5dq8vps8pSlqjEcsljCsX0QlMzDz8Vo
         5tAt1Mg8yTLeG86Hz7UUFTxoaPh17qVVBH54WUYuahLPD72VgrUZeVHUYbZSh15q9mxn
         Ol5lX2XXQH7UvEXIZMRfsvOLL+QYXIh+l4tvP16Q68GFvjE3ynq8pytlg/LCz9Amdvev
         nSQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:to:from:sender:dkim-signature;
        bh=Al0/GKTAignScBHDCuQ8lXg7RUjtJlwqF67DrKGRjpk=;
        b=kfEEfT8ycaJhBmSUH6bTJAT5tAVrwlG15CpZjB0/pqUq+vDwq84A5An8uc0ALxtPSP
         S6Yt+E2xj+hz3JD6hvt8TGDIbN7baU79UhGIXDqzofMrWoTu5UjBsRXHCHn0smcTNjNo
         cIEMfFJsItK/t7vlMALYdaEXWqgFnEwzzWD9cWtVHfPmxrapjNbfJrFmiYtpdk2EYz0l
         FlhMWlXUX9NGdXp39Qqn2DWy1nx/0PNlryhse3zcwPsnoSlYXTO6n/ThjLBvTvgCNRBv
         0WTlDIQBXIYl02l35y9pxPy9iP8sUV31a+mCVcxS8oo5CFyqJ+lvIZN+n6DpDMQM+nif
         ESOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=WGBefDfZ;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version:thread-index
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Al0/GKTAignScBHDCuQ8lXg7RUjtJlwqF67DrKGRjpk=;
        b=iRXknj9Rcq5pTLTqDwwhvon70Lz82dBJx8PV2lcAu3vaM7/+MrRKKMSsEn1B/hTIIO
         7woD8pOj1DO2WdnPLS5YResVboKKbzVjfO8qsKJ7pJQa0jWbHg+HRwK6BhJfoek7qMls
         F+3cZDU6HjzAdmPLA0VlDMjRnTnzLqp4xZGlaBCbDBMOzheV3HWtHZAq+vicN7Tp9eST
         9Z+MgEgmhjDQfKjpXtCRiS1fcsMsIG/19l87hF1TYFJy/3jP+mg4HdluQP2l7PiS9jx6
         fRohtbBG+sTDHWnr9uM1eqoo3RuIfdpze2UaEASm1/TeO/F52U1qyljdypRUeSUQm8qp
         TgBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Al0/GKTAignScBHDCuQ8lXg7RUjtJlwqF67DrKGRjpk=;
        b=f3cdL8ijY44iS/YzUEEZIHQxpAIIbukqFPO9JUX3UNA6bbtRgeUieSeZoJrs/y5Z7T
         A+3N5azimkHD7BYuW8u+mzYuc0tu5EvGzTBkajz3pKjzQAM3PMToMxMjFPhXVBXRNUBM
         mOSxkuEDPHvDn5bienKkgWg+65vmdj+jFkrCcCkc2HELG7mbi3ltmCXjoP2A5X34/Cdi
         C2abc6VMLI8VaMH+t64Nkma+c7Nz7cRPUJM6RrkBPbE+elKXqagRXaRzg95zx3ETe0yj
         kn9l9D5oIHFRhKSqYiI/4iA1oWn145+OlTRqgBPF2qy/rEEVHANogB/tQvCA3H0acpWo
         dcRA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV4Aq9KoI2muf1asXHrKK/eJ51SsMR0z7NdzmLL/TlhoWJOo2TS
	VFDhilBoCogJWZKvr46ODnw=
X-Google-Smtp-Source: APXvYqx3YFe+Z2v0kWTz7CtBYbKXETGE6+169UAGc4CARhLN6l9nJ72ozdKB1c5A7VVLKOHpHf9o1w==
X-Received: by 2002:a63:7d09:: with SMTP id y9mr113095219pgc.350.1559053348500;
        Tue, 28 May 2019 07:22:28 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:1c4b:: with SMTP id c72ls2027252pfc.10.gmail; Tue, 28
 May 2019 07:22:28 -0700 (PDT)
X-Received: by 2002:aa7:8554:: with SMTP id y20mr143642279pfn.258.1559053348156;
        Tue, 28 May 2019 07:22:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559053348; cv=none;
        d=google.com; s=arc-20160816;
        b=rUioZushOU5z93MXssKF+0Nek+WKq0d9/U2JVIt+zZe4S24QI04IeoyVTCbnJfczYz
         JBqRdLu16Bh6JQnJV4egeiXKamucl927pT8+ksrZDiZfRDxVDSpcKVbPQ//iC0x5Qks0
         41zAUa9CcOZ2/nQq7TELiVyn3ankH9fiJn+VM1vTVeHwJSN37SHkvOt+TETGdSPBaVal
         QNoK8mIDsQ7aXY9jbhTBjf624HRNa6yHJyVfYvHFpY0ibg1FIGEBEtxx4jIc90GGQO1S
         SV/1YJLfL2S9dh5vOjuxJnklQjjPVea0mAQFdeHyzgSD682EE8A5aoA0/9oZWcTd6hrk
         gVzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:dkim-signature;
        bh=wxDWXdvv9tUB+e7Ik/j6GfHYI4Fy10gv80FSeJ4UDjs=;
        b=e83OPHNoJcvy5mtc3hmC4f5chVpfqAz8uCh0jLPiGZIHOFTXMB7RlgT7r+qTMSjik7
         ShF7wN73q2ze7FkqnH25ul9C+95X9xSoilYQVFJQgePS8sZnZS6gXsIcaz3R+gdayZNC
         VhwMGbsnTc1tvd5Q21iOIPguIwlIkx8ktBTuGjMpfxYUQSw1pdCMwluCa/ADoyo1Or5k
         0VX4o4ArU+CBkuixYPV9/i4kHjT7EDmiWJQyOTHtVZwt9lYoEObaqKpdvrXPzeqYHT/E
         ZZiZk0dP1HljPCMZ/szdIpOhBpq2eJRw5xcH07s4k+VhVeD/eL5le0rhiWNpfX4956sU
         wbhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=WGBefDfZ;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id z6si391806pgv.0.2019.05.28.07.22.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 May 2019 07:22:28 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of uma@genisists.com) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id z26so11584143pfg.6
        for <linux-ntb@googlegroups.com>; Tue, 28 May 2019 07:22:28 -0700 (PDT)
X-Received: by 2002:a65:520b:: with SMTP id o11mr78871544pgp.184.1559053347529;
        Tue, 28 May 2019 07:22:27 -0700 (PDT)
Received: from falcomitPC ([115.98.2.36])
        by smtp.gmail.com with ESMTPSA id g9sm12064114pgs.78.2019.05.28.07.22.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 May 2019 07:22:26 -0700 (PDT)
From: "Umashankar" <uma@genisists.com>
To: <linux-ntb@googlegroups.com>
Subject: Seeking a ServiceNow Developer/Engineer for our client in the health insurance field!
Date: Tue, 28 May 2019 19:51:56 +0530
Message-ID: <06f801d51560$c64e1f70$52ea5e50$@com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_06F9_01D5158E.E0065B70"
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdUVYLLeL2c1mCeKR9uNwdD+XSmC1w==
Content-Language: en-us
X-Original-Sender: uma@genisists.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623
 header.b=WGBefDfZ;       spf=neutral (google.com: 2607:f8b0:4864:20::443 is
 neither permitted nor denied by best guess record for domain of
 uma@genisists.com) smtp.mailfrom=uma@genisists.com
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

This is a multipart message in MIME format.

------=_NextPart_000_06F9_01D5158E.E0065B70
Content-Type: text/plain; charset="UTF-8"

Hi All, 

 

Seeking a ServiceNow Developer/Engineer for our client in the health
insurance field!

Position: ServiceNow Developer/Engineer 
Location: Durham North Carolina 27707
Term: 6 Months plus

 

SENIOR ServiceNow DEVELOPER WITH 8+ YEARS. 



Day-to-Day Responsibilities:

.  Convert user stories into technical solutions.

.  Maintains technology currency and capacity planning in support of
established SLAs.

.  Proactively provides information and ongoing consultation for IT and
business areas as well as vendors directly or indirectly affected by
ServiceNow Application.

.  Leads the requirement gathering sessions collaborating with IT
stakeholders, service owners and partners.

.  Provides operational readiness through the engineering, planning,
coordination, and execution of performance and tuning analysis, systems
support, and incident and problem resolution.

.  Provides detailed guidance and consultation in solutioning production
incidents when required.

.  Collaborates with vendors on infrastructure designs to ensure the final
product is what was architected or designed.

 

Is this a good fit? (Requirements):

.  Bachelors degree and 8+ years of systems ServiceNow Developer experience
is required.

.  In lieu of degree, 10+ years of systems ServiceNow Developer.

.  Direct experience in one or more of the following technical specialties:
application development, application integration, Web Services, Scripting,
and/or database programming.

.  Experience automating tasks associated with technical specialties.

.  Experience successfully leading ITSM projects and initiatives.

.  Experience in multiple technical specialties preferred.

.  Experience in one or more of the following technologies (aligning with
relevant technical specialties): Integrating ServiceNow with other
Enterprise Application via API, using REST/SOAP web services, Scripting
Workflow, ServiceNow Discovery,

.  Must be able to work independently and be self sufficient in defining and
realizing infrastructure designs.

.  Team and customer service oriented, flexible and adaptable with proven
ability to solve problems in a collaborative and timely manner.

.  Solid background in data collection, analysis, and reporting.

.  Proven debugging skills

.  Excellent oral and written communication and presentation skills

.  Flexible and adaptable with focus on effectively managing change.

 

 

Thanks & Regards,

R UMASHANKAR

US IT Recruiter

Contact: (315)320-3439

Email:  <mailto:uma@genisists.com> uma@genisists.com

 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/06f801d51560%24c64e1f70%2452ea5e50%24%40com.
For more options, visit https://groups.google.com/d/optout.

------=_NextPart_000_06F9_01D5158E.E0065B70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:10.0pt;
	line-height:115%;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><span style=3D'font-size:12.0pt;font-family:"Arial=
","sans-serif";
color:#222222;background:white'>Hi All,&nbsp;</span><span style=3D'font-siz=
e:
12.0pt;font-family:"Times New Roman","serif";color:#222222'><o:p></o:p></sp=
an></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:10.0pt;font-family:"Ti=
mes New Roman","serif";
color:#222222'>&nbsp;</span></b><span style=3D'font-size:12.0pt;font-family=
:"Times New Roman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:10.0pt;font-family:"Ti=
mes New Roman","serif";
color:#222222'>Seeking a&nbsp;</span></b><b><span style=3D'font-size:10.0pt=
;
font-family:"Verdana","sans-serif";color:#222222'>ServiceNow Developer/Engi=
neer
for</span></b><b><span style=3D'font-size:10.0pt;font-family:"Times New Rom=
an","serif";
color:#222222'>&nbsp;our client in the health insurance field!</span></b><s=
pan
style=3D'font-size:10.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><br>
<br>
<b>Position:</b>&nbsp;</span><span style=3D'font-size:10.0pt;font-family:"V=
erdana","sans-serif";
color:#222222'>ServiceNow Developer/</span><span style=3D'font-size:10.0pt;
font-family:"Times New Roman","serif";color:#222222'>Engineer&nbsp;<br>
<b>Location:&nbsp;</b>Durham North Carolina 27707<br>
<b>Term:&nbsp;</b>6 Months plus</span><span style=3D'font-size:12.0pt;font-=
family:
"Times New Roman","serif";color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><span style=3D'font-size:12.0pt;font-family:"Times=
 New Roman","serif";
color:#222222'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><span style=3D'font-size:12.0pt;font-family:"Times=
 New Roman","serif";
color:#222222;background:yellow'>SENIOR ServiceNow DEVELOPER WITH 8+
YEARS.&nbsp;</span><span style=3D'font-size:12.0pt;font-family:"Times New R=
oman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><span style=3D'font-size:12.0pt;font-family:"Times=
 New Roman","serif";
color:#222222'><br>
</span><span style=3D'font-size:10.0pt;font-family:"Times New Roman","serif=
";
color:#222222'><br>
<b>Day-to-Day Responsibilities:</b></span><span style=3D'font-size:12.0pt;
font-family:"Times New Roman","serif";color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Convert
user stories into technical solutions.</span><span style=3D'font-size:12.0p=
t;
font-family:"Times New Roman","serif";color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Maintains
technology currency and capacity planning in support of established SLAs.</=
span><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Proactively
provides information and ongoing consultation for IT and business areas as =
well
as vendors directly or indirectly affected by ServiceNow Application.</span=
><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Leads
the requirement gathering sessions collaborating with IT stakeholders, serv=
ice
owners and partners.</span><span style=3D'font-size:12.0pt;font-family:"Tim=
es New Roman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Provides
operational readiness through the engineering, planning, coordination, and
execution of performance and tuning analysis, systems support, and incident=
 and
problem resolution.</span><span style=3D'font-size:12.0pt;font-family:"Time=
s New Roman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Provides
detailed guidance and consultation in solutioning production incidents when
required.</span><span style=3D'font-size:12.0pt;font-family:"Times New Roma=
n","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Collaborates
with vendors on infrastructure designs to ensure the final product is what =
was
architected or designed.</span><span style=3D'font-size:12.0pt;font-family:=
"Times New Roman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><span style=3D'font-size:10.0pt;font-family:"Times=
 New Roman","serif";
color:#222222'>&nbsp;</span><span style=3D'font-size:12.0pt;font-family:"Ti=
mes New Roman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:10.0pt;font-family:"Ti=
mes New Roman","serif";
color:#222222'>Is this a good fit? (Requirements):</span></b><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Bachelors
degree and&nbsp;<b>8+ years of systems ServiceNow Developer&nbsp;</b>experi=
ence
is required.</span><span style=3D'font-size:12.0pt;font-family:"Times New R=
oman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>In
lieu of degree,&nbsp;<b>10+ years of systems ServiceNow Developer</b>.</spa=
n><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Direct
experience in one or more of the following technical specialties: applicati=
on
development, application integration, Web Services, Scripting, and/or datab=
ase
programming.</span><span style=3D'font-size:12.0pt;font-family:"Times New R=
oman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Experience
automating tasks associated with technical specialties.</span><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Experience
successfully leading ITSM projects and initiatives.</span><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Experience
in multiple technical specialties preferred.</span><span style=3D'font-size=
:12.0pt;
font-family:"Times New Roman","serif";color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><b><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Experience
in one or more of the following technologies (aligning with relevant techni=
cal
specialties): Integrating ServiceNow with other Enterprise Application via =
API,
using REST/SOAP web services, Scripting Workflow, ServiceNow Discovery,</sp=
an></b><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Must
be able to work independently and be self sufficient in defining and realiz=
ing
infrastructure designs.</span><span style=3D'font-size:12.0pt;font-family:"=
Times New Roman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Team
and customer service oriented, flexible and adaptable with proven ability t=
o
solve problems in a collaborative and timely manner.</span><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Solid
background in data collection, analysis, and reporting.</span><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Proven
debugging skills</span><span style=3D'font-size:12.0pt;font-family:"Times N=
ew Roman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Excellent
oral and written communication and presentation skills</span><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'mso-margin-top-alt:0in;margin-right:0in;margi=
n-bottom:
0in;margin-left:47.25pt;margin-bottom:.0001pt;line-height:normal;background=
:
white'><span style=3D'font-size:10.0pt;font-family:Symbol;color:#222222'>&m=
iddot;</span><span
style=3D'font-size:7.0pt;font-family:"Times New Roman","serif";color:#22222=
2'>&nbsp;&nbsp;</span><span
style=3D'font-size:10.0pt;font-family:"Verdana","sans-serif";color:#222222'=
>Flexible
and adaptable with focus on effectively managing change.</span><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><span style=3D'font-size:12.0pt;font-family:"Times=
 New Roman","serif";
color:#222222'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><span style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";
color:#222222'>&nbsp;</span><span style=3D'font-size:12.0pt;font-family:"Ti=
mes New Roman","serif";
color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:12.0pt;font-family:"Ca=
mbria","serif";
color:#222222'>Thanks &amp; Regards,</span></b><span style=3D'font-size:12.=
0pt;
font-family:"Times New Roman","serif";color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:12.0pt;font-family:"Ca=
mbria","serif";
color:#222222'>R UMASHANKAR</span></b><span style=3D'font-size:12.0pt;font-=
family:
"Times New Roman","serif";color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:12.0pt;font-family:"Ca=
mbria","serif";
color:#222222'>US IT Recruiter</span></b><span style=3D'font-size:12.0pt;
font-family:"Times New Roman","serif";color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:12.0pt;font-family:"Ca=
mbria","serif";
color:#222222'>Contact: (315)320-3439</span></b><span style=3D'font-size:12=
.0pt;
font-family:"Times New Roman","serif";color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:12.0pt;font-family:"Ca=
mbria","serif";
color:#222222'>Email:&nbsp;<a href=3D"mailto:uma@genisists.com" target=3D"_=
blank"><span
style=3D'color:#1155CC'>uma@genisists.com</span></a></span></b><span
style=3D'font-size:12.0pt;font-family:"Times New Roman","serif";color:#2222=
22'><o:p></o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

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
om/d/msgid/linux-ntb/06f801d51560%24c64e1f70%2452ea5e50%24%40com?utm_medium=
=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-ntb/0=
6f801d51560%24c64e1f70%2452ea5e50%24%40com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_NextPart_000_06F9_01D5158E.E0065B70--

