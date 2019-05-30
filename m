Return-Path: <linux-ntb+bncBCDZ33GYSUERBE4ZYHTQKGQEEOGKVAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BD93041E
	for <lists+linux-ntb@lfdr.de>; Thu, 30 May 2019 23:35:17 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id r12sf5350819pfl.2
        for <lists+linux-ntb@lfdr.de>; Thu, 30 May 2019 14:35:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559252116; cv=pass;
        d=google.com; s=arc-20160816;
        b=u8eGpyneBavSni4OmJsCLAOv1nkpVxJa1ciDk1WZD1w6OGWAx3PxevRmGgWho35pfH
         0dTknpvd1aRj5lDRCLmb78QhaumZv5Es2nAiKXEgIDLBnFgkbE/j4Yc4Gt4YdRsjYwnk
         FdlSRw21TrB5SI3lfwzXZRA0GMZwr/wNF/ltd1+4ockdRJ8A9MoSBvB77kx9vyU8G5GL
         LHpzpcRPMIrs7THHc8OV8sga1Ac1GXRWfS/0kF7oY8s01t25rBTfupV38ywQD30sRPf7
         7yUa2JLMozd5JYD08iqYvYqb6Bjpup5j3VQ2K4LWQMsftcZHHHjHMucSeLm44rmnmF67
         y2OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:to:from:sender:dkim-signature;
        bh=8qU9u5cZzkka+jwsl3XG8KQbf6WIdbfC5vwdH5YgR84=;
        b=aCH4k87lbHvvyvS6WdWhPuT0sVSz6wRS2uMwDcLGlZEJbfDQ8EUF7RRX2uziREB0JD
         2+G7kb4R3MOvAUQ9QWY9Uql6UWrpbylMcmbs21vLIq71EaHIu3QJxyCIrifFZaswCtWs
         sya7EvlPlWGkMWphyBW+nzQKFLpiyGdF/y+gCV9Mgq4nHWntaULo1cKDaBtEX7ygsFAx
         oJBruowhmR2quDMQg6mkaXR74uGFd2Yg0ksZCQocQ7tSSKAV4bziraapetE3sjC6NK15
         174smdFwmZUvTqLI2ghpHI2PJF+LqDN58olP0sWs222mplOODrsuiGob6gStggRzpLKS
         ZB9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=vi385QNy;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version:thread-index
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8qU9u5cZzkka+jwsl3XG8KQbf6WIdbfC5vwdH5YgR84=;
        b=KpvkBpQPVA8aghBjl7NfRyKvff6MQiS5eRc+9IT/DoJZ8f3sN+r9JaJeKHAKaODvrl
         XV8c9wMC+AWY9y5QsZryCDXTehzv8OOlL/isEopC3s6/CQIYunFoPdb1It6E7FWljYD5
         JKUM7kjh0eTT6j+DpurtoIyje3HvpdJPUYwHE2+VEQ3PTI5FDbW8PBCMCNwPesgK3DfG
         TuaLw4sG9qr1P38/D8oFbZQlgX2qrpwXmM39n0g2vGTv/YLeXQuWMiYTNSu8PyG9M9xQ
         PzX3hEXo5n/aw2EiJtw+fwz7Ssga9WztYuxnuTZhgpRzjID63UOXIYx/cRAjOWlGFXoe
         MEHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8qU9u5cZzkka+jwsl3XG8KQbf6WIdbfC5vwdH5YgR84=;
        b=iB7UbIKf0XeYr19ldezUmQi11RkFrk9VrpU4cuQshBQkeoe2/KPUtWBqU9Mzuhqh2D
         IgTN08zETXe/LxgxPnWi39cchb3kMqi2NgHXfk6AuZKck+Z6BFLh0xnmxkQW4l8iDdRW
         xqihKMNKzuQzmjuksjufsANuLYUAwMBIb45WE7FN54fk6cf5OqkSZ5ZaiuOU4ozDIPGh
         hImXdFLd5zDjLV/P8kj/VoOm0aYTt4qS/zdjDBqDwYaYqzssFxDVmlW7YYEPBqFL2bAq
         fvuRwbtjj1VBpte7Q8rwm/1g4JXAr/v6N9AgntRLA+xoGeQ0QOV8WLQvw+imz1OYrTN3
         fqCg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX7mKjcdf0BPbJtqnGKNH9ybB6KVwL4WPVwZoeirFJBwyCOpCaz
	kaxnkIeNUjbFC3xmb79y7GM=
X-Google-Smtp-Source: APXvYqxNZPmRRHyz8pvCdlcg1KJ6CNedxgxLUCV5Czl9N1hvRagGJZTdIiVnOUC082sSOUfCqVscMg==
X-Received: by 2002:a17:902:1121:: with SMTP id d30mr5513858pla.153.1559252115801;
        Thu, 30 May 2019 14:35:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:ae07:: with SMTP id q7ls674709pff.7.gmail; Thu, 30 May
 2019 14:35:15 -0700 (PDT)
X-Received: by 2002:a62:ae19:: with SMTP id q25mr5793228pff.35.1559252115506;
        Thu, 30 May 2019 14:35:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559252115; cv=none;
        d=google.com; s=arc-20160816;
        b=FhgHJfocEGGKCd0I/VEgmHz+FHS/fZfCycdyGCVJ1vli7C5lt2TG5blv9OKJMLZChh
         l+0tBwwbRfH2u/8ZxBIujJZKQCpfJtJ+GXLwF1kXsSwqLwYiJIC4Y8aaraNQKGkfeKiZ
         ZLK2XDZGMtR3ixmppHWQOdy5ZD89C+7ieMcIe6MgaCYy5gKh2F0JksjOIcxBqk0JaEqI
         G67qIGC0PC2EmmZ+tTOxyz9/hiNbQH1ofyhVRuQy/8TQsdAhd402/iE8/99PjK7hNpoh
         AssjuwrWeUNoHCAT9Z3hcWkItlvrdj1tmybft6aZsASeFf7pAkCzUiAHsHEZ6mF7lQ/u
         eB4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:dkim-signature;
        bh=qw4xsdhAauujifpUwC/bW3mc4HwV84arlvJm/pbz/Qc=;
        b=B84vmqSORxppKG1WEkuZF1eP0m2MEMqq0mFlV6Xv1z0YmcLkv/bZdMsf+GJLCXmrd8
         oP3pan5kIFoFxuJI5tggV/r7f+cOSO+9MeotjNh7GL5A/ttpm2vN9XPVKCtIcHlAtpEt
         /26bC1swKx49gvsEDjYlAnYAsUGx6skaZLrK9wNpdKokN/fgcMoE1AEFxxHpm8670MEO
         33IBqNcIYtdo1Kp4hP0GFb3XEYW23wCtTsRoKUKNIKDI2H5HK2pl8j4l3daeIvflDh7U
         9pAOS6SYIF3Ymi6SX4po+KzwauuygfmJdwrXxEHrD3KRbG9Pdew6TzTitcyijFUrCqtq
         IQ9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=vi385QNy;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d4si245555pfm.3.2019.05.30.14.35.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 May 2019 14:35:15 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of uma@genisists.com) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id t1so2760550pgc.2
        for <linux-ntb@googlegroups.com>; Thu, 30 May 2019 14:35:15 -0700 (PDT)
X-Received: by 2002:aa7:804c:: with SMTP id y12mr5740075pfm.94.1559252114864;
        Thu, 30 May 2019 14:35:14 -0700 (PDT)
Received: from falcomitPC ([115.98.2.36])
        by smtp.gmail.com with ESMTPSA id e66sm5631631pfe.50.2019.05.30.14.35.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 May 2019 14:35:14 -0700 (PDT)
From: "Umashankar" <uma@genisists.com>
To: <linux-ntb@googlegroups.com>
Subject: Immediate Hire - Sales force Developer//6 months+//Arizona/NJ// Direct Client
Date: Fri, 31 May 2019 03:05:09 +0530
Message-ID: <016601d5172f$8eb70b00$ac252100$@com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0167_01D5175D.A86F4700"
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdUXL4v+xQdeFSzcSKG3UTq+sBlxag==
Content-Language: en-us
X-Original-Sender: uma@genisists.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623
 header.b=vi385QNy;       spf=neutral (google.com: 2607:f8b0:4864:20::542 is
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

------=_NextPart_000_0167_01D5175D.A86F4700
Content-Type: text/plain; charset="UTF-8"

Hi All,

 

The following requirement is open with our client.

Role: Sales force Developer

Contract: 6 months+

Location: Arizona/NJ

Client: Direct

 

Experience:

v  8+ years in Software Development.

v  5+ years experience in Cloud Technology and an in-depth understanding of
the primary concepts and terminology.

v  5+ years working on Sales force applications (Lightning is a must-have.)

v  5+ years experience using Force.com (Advanced understanding of SFDC
Triggers and Controllers, VF page development, sObjects, SOQL etc)

v  3+ year hands-on experience in an Agile development team.

v  Experience in object oriented development is a must.

v  Experience with SOAP and REST Web Services and integration using APIs is
a must.

v  Experience with source control, branching strategies and using code
repositories a must.

v  Sales force certification preferred.

v  Background in leveraging ETL products and tools (e.g. IBM DataStage,
Informatica, etc.) for data management is preferred.

v  Previous experience of Test Driven development is preferred.

v  Previous experience in a lead role within a team of engineers.

v  Advanced understanding of the Salesforce platform and its primary
functions.

v  Ability to learn new technologies and embrace the challenge learning
presents.

v  A self-starter, comfortable having conversations with business partners.

v  Robust and current knowledge of web standards, emerging technologies, and
trends.

v  Ability to think abstractly and deal with ambiguous/under-defined
problems.

v  An excellent communicator, both verbally and written.    

 

Thanks & Regards,

R Umashankar

US IT Recruiter

Contact: (315)320-3439

Email:  <mailto:uma@genisists.com> uma@genisists.com

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/016601d5172f%248eb70b00%24ac252100%24%40com.
For more options, visit https://groups.google.com/d/optout.

------=_NextPart_000_0167_01D5175D.A86F4700
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing
	{mso-style-priority:1;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:.5in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParag=
raphCxSpFirst
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div.MsoListPar=
agraphCxSpMiddle
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.MsoListParagra=
phCxSpLast
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:.5in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
 /* List Definitions */
 @list l0
	{mso-list-id:781652246;
	mso-list-type:hybrid;
	mso-list-template-ids:2006093800 67698697 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F076;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1018652138;
	mso-list-type:hybrid;
	mso-list-template-ids:974428636 67698697 67698691 67698693 67698689 676986=
91 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F076;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1497068082;
	mso-list-type:hybrid;
	mso-list-template-ids:1948054734 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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

<p class=3DMsoNormal><span style=3D'font-family:"Cambria","serif"'>Hi All,<=
o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-family:"Cambria","serif"'><o:p>&nb=
sp;</o:p></span></p>

<p class=3DMsoNormal><b><span style=3D'font-size:10.5pt;line-height:115%;
font-family:"Cambria","serif";color:#222222;background:white'>The following
requirement is open with our client.</span></b><span style=3D'font-family:"=
Cambria","serif"'><o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-family:"Cambria","serif"'>Role: <b=
>Sales
force Developer<o:p></o:p></b></span></p>

<p class=3DMsoNormal><span style=3D'font-family:"Cambria","serif"'>Contract=
: <b>6
months+<o:p></o:p></b></span></p>

<p class=3DMsoNormal><span style=3D'font-family:"Cambria","serif"'>Location=
: <b>Arizona/NJ</b><o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-family:"Cambria","serif"'>Client: =
<b>Direct<o:p></o:p></b></span></p>

<p class=3DMsoNormal><span style=3D'font-family:"Cambria","serif"'><o:p>&nb=
sp;</o:p></span></p>

<p class=3DMsoNormal><b><span style=3D'font-family:"Cambria","serif"'>Exper=
ience:<o:p></o:p></span></b></p>

<p class=3DMsoListParagraphCxSpFirst style=3D'text-indent:-.25in;mso-list:l=
1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>8+ years in Software Development.<o=
:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>5+ years experience in Cloud Techno=
logy
and an in-depth understanding of the primary concepts and terminology.<o:p>=
</o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>5+ years working on Sales force
applications (Lightning is a must-have.)<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>5+ years experience using Force.com
(Advanced understanding of SFDC Triggers and Controllers, VF page developme=
nt,
sObjects, SOQL etc)<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>3+ year hands-on experience in an A=
gile
development team.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Experience in object oriented devel=
opment
is a must.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Experience with SOAP and REST Web
Services and integration using APIs is a must.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Experience with source control, bra=
nching
strategies and using code repositories a must.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Sales force certification preferred=
.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Background in leveraging ETL produc=
ts and
tools (e.g. IBM DataStage, Informatica, etc.) for data management is prefer=
red.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Previous experience of Test Driven
development is preferred.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Previous experience in a lead role =
within
a team of engineers.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Advanced understanding of the Sales=
force
platform and its primary functions.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Ability to learn new technologies a=
nd
embrace the challenge learning presents.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>A self-starter, comfortable having =
conversations
with business partners.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Robust and current knowledge of web
standards, emerging technologies, and trends.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpMiddle style=3D'text-indent:-.25in;mso-list:=
l1 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>Ability to think abstractly and dea=
l with
ambiguous/under-defined problems.<o:p></o:p></span></p>

<p class=3DMsoListParagraphCxSpLast style=3D'text-indent:-.25in;mso-list:l1=
 level1 lfo3'><![if !supportLists]><span
style=3D'font-family:Wingdings'><span style=3D'mso-list:Ignore'>v<span
style=3D'font:7.0pt "Times New Roman"'>&nbsp; </span></span></span><![endif=
]><span
style=3D'font-family:"Cambria","serif"'>An excellent communicator, both ver=
bally
and written.&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-family:"Cambria","serif"'><o:p>&nb=
sp;</o:p></span></p>

<p class=3DMsoNormal><b><span style=3D'font-family:"Cambria","serif"'>Thank=
s &amp;
Regards,<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span style=3D'font-family:"Cambria","serif"'>R Uma=
shankar<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span style=3D'font-family:"Cambria","serif"'>US IT
Recruiter<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span style=3D'font-family:"Cambria","serif"'>Conta=
ct:
(315)320-3439<o:p></o:p></span></b></p>

<p class=3DMsoNormal><b><span style=3D'font-family:"Cambria","serif"'>Email=
: </span></b><a
href=3D"mailto:uma@genisists.com"><b><span style=3D'font-family:"Cambria","=
serif"'>uma@genisists.com</span></b></a><span
style=3D'font-family:"Cambria","serif"'><o:p></o:p></span></p>

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
om/d/msgid/linux-ntb/016601d5172f%248eb70b00%24ac252100%24%40com?utm_medium=
=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-ntb/0=
16601d5172f%248eb70b00%24ac252100%24%40com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_NextPart_000_0167_01D5175D.A86F4700--

