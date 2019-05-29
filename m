Return-Path: <linux-ntb+bncBCDZ33GYSUERBNNSXLTQKGQE7FNRWCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F092DFE9
	for <lists+linux-ntb@lfdr.de>; Wed, 29 May 2019 16:37:42 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id f1sf2023988pfb.0
        for <lists+linux-ntb@lfdr.de>; Wed, 29 May 2019 07:37:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559140661; cv=pass;
        d=google.com; s=arc-20160816;
        b=CoOZQqftL4T8vnFFRr99KYRWFOrSOZzK33/7me4gmN7yDDjk48l1d8d6YT4SX8N4hj
         aKDcXRcnRdH4wMfUDkRbEivIkPdqhjVzBCGNF8YtvoIOpSfoED4Gk61cJrcst0sidD94
         eFlgAKnny8WOGwGEBykPLm9eCDbkcnjvCbVVqK8LX6K3/wJVL5RJT7gKI9y3dBiSGVAQ
         3b/5mMBhlStzl7XVkwEXakvfq4G7JlbNRyn1/Uq9H+CWzafiyut7Jqe5biqcBaGgTsWc
         jgmALmoU51foI/73xFKEfghr5+4rvdsOUd4PXuWYf1cvpiR6HWzD/ClUs80CwBSWgBKc
         xwNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:to:from:sender:dkim-signature;
        bh=lFyCaf52MOAoCxnSJXDWam57LJGIx0uss1WzWQ24zAI=;
        b=s9bQtzy7w9qD0CNQtb8hCoXuWUU0MuiJbpP7+ja+yaG3NDqxvnYpcajde3unnGqoai
         ZuDh+y7A1Z83dfX385QKchCq7K7liAJN1bsXNgOT2wCGFT/YR1dPIG5nAGz8dkufTf8I
         2MhPFwuU9CivTrBoBPlu87H7Z4tndHFjzNXi5kslumvB3f+stGZ4ud/VuC/iS2kL85Lb
         Rf7jnZh8n9R71RamwjxWkInWAkH7MVNuZSOcHWx1v7QnANmsr32HvEk030FMMGOi//AD
         QyKYhbDKa9nq8YjKzz0sq5bjLAmT0dzjMYuQZUcxPUL59eUUdeQUKqdM8Jz4G+S5RObt
         qiHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b="qN/6P4cp";
       spf=neutral (google.com: 2607:f8b0:4864:20::442 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version:thread-index
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lFyCaf52MOAoCxnSJXDWam57LJGIx0uss1WzWQ24zAI=;
        b=bLWxi+wgVoM57cOOaz1ZCUa+dOOU/f/raiSJDYNLAnvGinPzNoiB9yH61tR4MErXBM
         dG0lob8gipr3QDDQciYytR6klOvUOw5zR0K941BBSuIgMM+W+4nmFUBOlLEBMDPy5JOv
         oA7TIcnXu83D6F4y0yHuZNzy+QS9Ggb7rhP1TjjM3+0UonQ0qQzgC5qX8NoEh24O8IJ7
         fL3FRETbGiGdONA7D6GS5vw3uCEW3bW/DAnytP9+NrlRChxlolbT7Ec3LRv2tkeEEvik
         3G29MPDP+Jj3iZF3rpxHOr7EwNAEMFb8kpFxEa0uhIxFXvgbJZAIbDauHgapml904u1G
         OV3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lFyCaf52MOAoCxnSJXDWam57LJGIx0uss1WzWQ24zAI=;
        b=H5CHhAi64voFx/4F6q76ABc26PQH25OaRKuLO7GFZWMS/Ck4h0Q235RhO8JXMv5r9v
         k/Gif4/G5jPsZ8FFob3m0oZfEgC/LSf0JZlYVrovIPGh2cmZxtEUf1WlNmobGImmiwtg
         9oSkguR6ztaot4nkJFWVAXu1iV7J205JUf1ZXA4Sq/dbzR0Let5lgERY/v7ktT6dLdRN
         0jK9yCJY2c6jnG9AOPpar8gJkimNaMN9d9MG41Y14FAwgFqTfH34nGC7cfA6UUI2lER9
         1hgj0EsP3WOhZ7yfg58Q//IgmjxsyLYc77g7wHr4MfuxPoCGZkB0e2PogDo5XceLXnMU
         EaIw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUj+vVV7CyoBApwS7ziUIXuxkMDaPWY5CnLCh0ls7djk7LlGKhj
	J70zKYWsAHL2vsYOhbFYNDM=
X-Google-Smtp-Source: APXvYqwzXbehMT/n6r6bN4thLx1F6smTR0xASfQrPyYVZ7tc1OtOwikpJ4ohNZMtck0+8dZeHEp+ww==
X-Received: by 2002:a17:902:9a81:: with SMTP id w1mr137976614plp.71.1559140661478;
        Wed, 29 May 2019 07:37:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:32d:: with SMTP id 42ls591675pld.11.gmail; Wed, 29
 May 2019 07:37:41 -0700 (PDT)
X-Received: by 2002:a17:90a:ae10:: with SMTP id t16mr12808877pjq.51.1559140661138;
        Wed, 29 May 2019 07:37:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559140661; cv=none;
        d=google.com; s=arc-20160816;
        b=ioHIf+/brhirIQuH7mNJTXBr4Hwtq90IcaiW2mDcSIsouGx99KuPuJrUa4zK7zVLnh
         muDNre6isB21X4QuR+2ephPPy/SabJ0E5QGEFNQm8qS5GWhyP0Uw/Jo6ErFbN+y56uoZ
         FDrEywVrbEjNCsFAwKwDGu/jpsAoMryLONseZ+mgLrLWMKv1thqGFW4btgSG4xq/C488
         +p6vBb7FkGpOcbaUeWQSee6F7weoM9k+VtGwuk3/gXSNHcx9a/xrlcaTBI6Nywfno1FL
         6lATTjdT8uNrnbAB7Qvv2LXb1uX2dgR3f8WGEULWwwI8JDD6wwLLR8IHEQPHiBztVsAH
         ScAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:dkim-signature;
        bh=hN+eqgpR805tUykR0/jx0Ym56iBW7LO5e+EIuJSRT0o=;
        b=LjyHf1wZ3ZnP6rsSdprCV5483Nf7Sws8Khc28mfpXyuuZn21AWDjIh7Zj78hkhKAHw
         GcndVr4ZKAw/ZGBWuPdtv/N6aPgdFKRwuXAd9iEFlKD46bYbevnFkW/8erHgkqZxaDnn
         RJsEobotyjDKP3sBXs+6fa3WnITvvmIG2R+YK0qN5zlwOoKw6+fsPyj0eh/l+b0BCHUV
         IecL242chWV4SSjE1H8/07+DhWmKp8/6AaCGDwwgv2VUTwfwE++nHO8sXHvIwTBbjI2z
         xvauna3xPIGxplL2ij4mRqIJJphjYe1mwLc5/wqAzK+cDShycrdLzx9FELkn5h90eHV2
         U2Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b="qN/6P4cp";
       spf=neutral (google.com: 2607:f8b0:4864:20::442 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o91si176448pje.0.2019.05.29.07.37.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 May 2019 07:37:41 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::442 is neither permitted nor denied by best guess record for domain of uma@genisists.com) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id j2so1770932pfe.6
        for <linux-ntb@googlegroups.com>; Wed, 29 May 2019 07:37:41 -0700 (PDT)
X-Received: by 2002:a62:ed09:: with SMTP id u9mr151378760pfh.23.1559140660347;
        Wed, 29 May 2019 07:37:40 -0700 (PDT)
Received: from falcomitPC ([115.98.2.36])
        by smtp.gmail.com with ESMTPSA id r4sm5872502pjd.28.2019.05.29.07.37.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 May 2019 07:37:39 -0700 (PDT)
From: "Umashankar" <uma@genisists.com>
To: <linux-ntb@googlegroups.com>
Subject: Hiring for Dot-Net developer with Microsoft SQL Server || St.Louis, MO || Direct Client
Date: Wed, 29 May 2019 20:07:07 +0530
Message-ID: <026001d5162c$0fcddf20$2f699d60$@com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0261_01D5165A.29861B20"
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdUWK/wONYJVRj6VTf6ij4NyhlCJMw==
Content-Language: en-us
X-Original-Sender: uma@genisists.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623
 header.b="qN/6P4cp";       spf=neutral (google.com: 2607:f8b0:4864:20::442 is
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

------=_NextPart_000_0261_01D5165A.29861B20
Content-Type: text/plain; charset="UTF-8"

Hi All, 

 

Hope you are doing great, 

We are looking for ".Net developer with Microsoft SQL Server 

 

Role: Dot NET Developer (Microsoft SQL Server) 

Location: St Louis, MO 

Duration: 10+ months

Experience: 8+ Years 

Direct Client. 

 

Job Description: 

.         SharePoint is compulsory.

.         Individual contributor software engineer.

.         Ability to develop software components independently with minimal
supervision.

.         Communication/ability to work in a remote team.

.         Microsoft Application Development.

.         C# and ASP.NET WebForms experience (1-3 years).

.         ASP.NET WebForms, Security knowledge (Web, Windows, Forms, Single
Sign-on) knowledge.

.         Proficient SQL development skills.

.         Experience debugging Stored Procedures, UDFs, and Triggers (Oracle
PL-SQL or Microsoft SQL Server T-SQL).

.         Ability to write and understand complex queries (Oracle PL-SQL or
Microsoft SQL Server T-SQL).

.         Nice-To-Have o Experience building line of business applications.

.         Oracle PL-SQL experience.

.         Health insurance claims/billing experience.

 

Interview time slots available Please share suitable profiles to below mail
id,

 

Thanks & Regards

Umashankar

US IT Recruiter

Genisis Technology Solutions

Email:  <mailto:uma@genisists.com> uma@genisists.com

Desk number: 315-320-3439

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/026001d5162c%240fcddf20%242f699d60%24%40com.
For more options, visit https://groups.google.com/d/optout.

------=_NextPart_000_0261_01D5165A.29861B20
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
p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing
	{mso-style-priority:1;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.ember-view
	{mso-style-name:ember-view;}
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
	{mso-list-id:2022468437;
	mso-list-type:hybrid;
	mso-list-template-ids:-688747938 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l0:level1
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

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Hi All, <o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'><o:p>&nbsp;</o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Hope you are doing great, <o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>We are looking for &quot;.Net developer with Microsoft SQ=
L
Server <o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'><o:p>&nbsp;</o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Role: <b>Dot NET Developer (Microsoft SQL Server) </b><o:=
p></o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Location: <b>St Louis, MO</b> <o:p></o:p></span></span></=
p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Duration: <b>10+ months<o:p></o:p></b></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Experience: <b>8+ Years <o:p></o:p></b></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><b><span style=3D'font-siz=
e:10.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Direct Client. <o:p></o:p></span></b></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'><o:p>&nbsp;</o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><b><span style=3D'font-siz=
e:10.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Job Description: <o:p></o:p></span></b></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>SharePoint is compulsory.<o:p></o:p></span></=
span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Individual contributor software engineer.<o:p=
></o:p></span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Ability to develop software components indepe=
ndently
with minimal supervision.<o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Communication/ability to work in a remote tea=
m.<o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Microsoft Application Development.<o:p></o:p>=
</span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>C# and ASP.NET WebForms experience (1-3 years=
).<o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>ASP.NET WebForms, Security knowledge (Web,
Windows, Forms, Single Sign-on) knowledge.<o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Proficient SQL development skills.<o:p></o:p>=
</span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Experience debugging Stored Procedures, UDFs,=
 and
Triggers (Oracle PL-SQL or Microsoft SQL Server T-SQL).<o:p></o:p></span></=
span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Ability to write and understand complex queri=
es
(Oracle PL-SQL or Microsoft SQL Server T-SQL).<o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Nice-To-Have o Experience building line of
business applications.<o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Oracle PL-SQL experience.<o:p></o:p></span></=
span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Health insurance claims/billing experience.<o=
:p></o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'><o:p>&nbsp;</o:p></span></span></p>

<p class=3DMsoNoSpacing><span style=3D'font-size:10.5pt;font-family:"Cambri=
a","serif";
background:white'>Interview time slots available Please share suitable prof=
iles
to below mail id,<o:p></o:p></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'><o:p>&nbsp;</o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><b><span style=3D'font-siz=
e:10.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Thanks &amp; Regards<o:p></o:p></span></b></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><b><span style=3D'font-siz=
e:10.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Umashankar<o:p></o:p></span></b></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><b><span style=3D'font-siz=
e:10.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>US IT Recruiter<o:p></o:p></span></b></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><b><span style=3D'font-siz=
e:10.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Genisis Technology Solutions<o:p></o:p></span></b></span>=
</p>

<p class=3DMsoNoSpacing><span class=3Dember-view><b><span style=3D'font-siz=
e:10.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Email: </span></b></span><a href=3D"mailto:uma@genisists.=
com"><b><span
style=3D'font-family:"Cambria","serif"'>uma@genisists.com</span></b></a><b>=
<span
style=3D'font-family:"Cambria","serif"'><o:p></o:p></span></b></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><b><span style=3D'font-siz=
e:10.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Desk number: 315-320-3439</span></b></span><b><span
style=3D'font-family:"Cambria","serif"'><o:p></o:p></span></b></p>

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
om/d/msgid/linux-ntb/026001d5162c%240fcddf20%242f699d60%24%40com?utm_medium=
=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-ntb/0=
26001d5162c%240fcddf20%242f699d60%24%40com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_NextPart_000_0261_01D5165A.29861B20--

