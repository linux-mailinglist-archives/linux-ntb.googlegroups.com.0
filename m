Return-Path: <linux-ntb+bncBCDZ33GYSUERBMFZWXTQKGQEGHRBLMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EA62CB12
	for <lists+linux-ntb@lfdr.de>; Tue, 28 May 2019 18:07:13 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id l63sf6538239oia.7
        for <lists+linux-ntb@lfdr.de>; Tue, 28 May 2019 09:07:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559059632; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZLPN9A9Pn2CqtoVmW9QJjx3LyJ/zlZ0OgTHQYRLKSgopAxsLQdgfRfPg5eBC8Is2lv
         cHLvYyHBWruQhYfh65oxtvviaIqg4Ciofi9XVIpnhS+P+YKcAPqhGvUb+qXpsSJL8/NV
         JhpbzDwriwcEW+vmAZ5AgxTz+MZ1d54HiGHQjtV2RKD2K2sxeBfDgTugSmXFeJWRy0Cy
         4pz/fucGimmVivPglWLO5Euu3Z6qmv4tv0nXgqQkxifN0/HIbnWRbs22YnUb08jSsPv3
         p9HZuS3asL1J1AaTkhnv3neIl56CR7ItnTwCgjZPS717ptOJyrhFGclKRSumeeypkXSl
         VxCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:to:from:sender:dkim-signature;
        bh=B/rBEHLx3SQ8DrQlcIkhazTmbRllbCtWoc4BWeY+RnQ=;
        b=QiohDT17BaL04/Jr4AQnhOP5R97ZdHUktndPMiQhaAszlm9HazyaK/++/4KZKZGVnn
         Fsh7rKNHvPYHXPjBfMZul4QjQP7zA5GZcMn+rE8MOD/m4xYUEZu7FEln3BFQ/yqnE4H/
         vVANE2zGfXZubM6TWr/GQukA+nuWtB0yj7D0LXdRxnhTpniSxseXaq2lrjAUsUDopbr0
         yEEYGIrenJLRW0JIaa6bwH7qIsl1HIe4w2t9/HlyGW/zrgVm3HaM/TtnqwQ1/l1feOhu
         Vm8tlUG8JJcdcZ33YpzpEg5mcmdn2xLwEnNg/pyXjvCiuk3XPTnBh2Z/8KdEArVkGh2V
         5dPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=siRN+kSM;
       spf=neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version:thread-index
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B/rBEHLx3SQ8DrQlcIkhazTmbRllbCtWoc4BWeY+RnQ=;
        b=M/YouDgrQfbLrWRsHcnmVAmQxXktS+n22/+rfsNum8YPoAi2FgNUaDFBb9Pjm3gvAz
         cPdtLT7+nG30HZ5sa9c4Yf9osFVJ0z+xVrJUfsJXWX9B37ODAKTYUM5/oRlXPs+blWh4
         JpnjSMgph8wu0pSpSDJcPbFnBDwCzkxhKT7L0Hv8tdE9iluzXpPFW2nfOmDJb6ZKLnRE
         izYenoAEafd/ihiJq2mbum2A/Hd8XFt7RzCiRwhMyMhVzxFudGMUF+qJ3BMZqm96U23V
         fCg3hdlH0X2rCE4zZg6Ko4jqu7NYUsI7Ffwd8Y5wbE3Y+Msy/YJbVtt6A1dlJazjoKz+
         rIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B/rBEHLx3SQ8DrQlcIkhazTmbRllbCtWoc4BWeY+RnQ=;
        b=cDJ7c9WyIMBDpI4BQ8NjSBhzr/hC80yzozgMEKZ2q+UoGxOkkZaCjDOuPNnmp7/YVG
         Bs8bkiKHMvWCNbJLlAf6YXWYaZ+pq4a6MfGOWTMQ/d+0wxwjcFokzacYIX5dJyv11rOR
         RRHGDkdUrXp602prtGaJ/wJFQRnVTHZhmhqgHVhW8RzUAeNQKxqQSI2EHTDjzyBVWurL
         dHwYBWrBpdX9qU2+d6FfGLxB09G3Xhx08kD8TNAVBAUg6dvimn8o0zj6fnqCXNHlHA8j
         E+pjrcvE5OG22JawLZXPfaGSCc3WSQwarar3Pzq1rP92JfZZ4QDUMvO+mtDVXTqJODXM
         1PHw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUQd8iFAdIxGslCekixHV9Yl/LsDFcTX/iPKQafo/Ru5s1tRd79
	xWZU51Fw3ERogyErdbSzem0=
X-Google-Smtp-Source: APXvYqw6DZ7prgvBH3nFYOjakqCjt8qH6CmNskHHW9tTAjhfwYFeDJVRjcHnYgUkoFgFGT07VpnJ4A==
X-Received: by 2002:aca:55d6:: with SMTP id j205mr3244671oib.137.1559059632805;
        Tue, 28 May 2019 09:07:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1485:: with SMTP id s5ls2721594otq.3.gmail; Tue, 28
 May 2019 09:07:12 -0700 (PDT)
X-Received: by 2002:a9d:eb7:: with SMTP id 52mr76801818otj.185.1559059632433;
        Tue, 28 May 2019 09:07:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559059632; cv=none;
        d=google.com; s=arc-20160816;
        b=GemVr79Eof23qPR4RBWuNbhmK3NncpHIGnwBY3Jkmb6Hf1JgFGmdII0QCqZZAKY3N2
         I7wQEZalvhta8pvxLPM06wBlihYEI54evO0Rweo3m0yTZYFXNvCFOYhsb0pCzgCU5/sP
         +1iruyiCUdEy6E9XVhef+1jAx5P0FnTpc+plXKMEUtRine+8sp+UTF18wHpfPgGq9GJ+
         hHw/IXTpJi4yInFUArzmiAmvHvnNKZJIkozWqbdzJWBCxUUi+6hO4haqGMEth1nD3w+d
         NtrmCmOVcGHjY0DqSmz/spr2o2shAzR6Dp/xeCrzfr8qT6ZPqlrSvof7wWYlmRIpXk7z
         br/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:dkim-signature;
        bh=ZKqFW4kxRPxZ8Ds6FIVA7wVYMA0W1shRRvz1jq7qdeo=;
        b=zoaGhu8HoJbYUii67D1hpv0PdWZcdK4RkO5sp6kS7gOXuE0qdcnLNNMC0PP+17gTNd
         N2ntjcHGkV2rgzSOOVR0SiSF80j0bRZtSrpfk2XJfcUV1X7f4vViApFHcNbtcHsFTze0
         NBeO4ZG8VTVKLmUEC3zAyOpIO833DOBP1UcKdyTawp+gRBFXG+acEGrWV/oHSYFPSy7U
         edB/P1JD7yF5Z8597Sk4U/3DMYrFgNgC1TzywoG95AzFwAhARN7fnSk4o+4wT1eisQPb
         HRIdlrdsFqqnDsizesjPzaPkXjBjVKaT/7nJLm9PGYa0qENA01A1qWBCQBKRVO1BA6rr
         nbXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=siRN+kSM;
       spf=neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id k22si731903otp.1.2019.05.28.09.07.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 May 2019 09:07:11 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::641 is neither permitted nor denied by best guess record for domain of uma@genisists.com) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id p1so8547746plo.2
        for <linux-ntb@googlegroups.com>; Tue, 28 May 2019 09:07:11 -0700 (PDT)
X-Received: by 2002:a17:902:b202:: with SMTP id t2mr3416241plr.69.1559059630727;
        Tue, 28 May 2019 09:07:10 -0700 (PDT)
Received: from falcomitPC ([115.98.2.36])
        by smtp.gmail.com with ESMTPSA id b18sm24314767pfp.32.2019.05.28.09.07.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 May 2019 09:07:09 -0700 (PDT)
From: "Umashankar" <uma@genisists.com>
To: <linux-ntb@googlegroups.com>
Subject: Hiring for Dot-Net developer with Microsoft SQL Server || St.Louis, MO || Direct Client
Date: Tue, 28 May 2019 21:37:05 +0530
Message-ID: <08ae01d5156f$672615c0$35724140$@com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_08AF_01D5159D.80DE51C0"
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdUVbzDRmeDf/hUcQDajgZO69FXCuQ==
Content-Language: en-us
X-Original-Sender: uma@genisists.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623
 header.b=siRN+kSM;       spf=neutral (google.com: 2607:f8b0:4864:20::641 is
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

------=_NextPart_000_08AF_01D5159D.80DE51C0
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

.         Individual contributor software engineer 

.         Ability to develop software components independently with minimal
supervision 

.         Communication/ability to work in a remote team 

.         Microsoft Application Development 

.         C# and ASP.NET WebForms experience (1-3 years) 

.         ASP.NET WebForms, Security knowledge (Web, Windows, Forms, Single
Sign-on) knowledge 

.         Proficient SQL development skills 

.         Experience debugging Stored Procedures, UDFs, and Triggers (Oracle
PL-SQL or Microsoft SQL Server T-SQL) 

.         Ability to write and understand complex queries (Oracle PL-SQL or
Microsoft SQL Server T-SQL) 

.         Nice-To-Have o Experience building line of business applications 

.         Oracle PL-SQL experience 

.         Health insurance claims/billing experience 

 

Interview time slots available 

Please share your profiles to 

 

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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/08ae01d5156f%24672615c0%2435724140%24%40com.
For more options, visit https://groups.google.com/d/optout.

------=_NextPart_000_08AF_01D5159D.80DE51C0
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
padding:0in;background:white'>Individual contributor software engineer <o:p=
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
padding:0in;background:white'>Ability to develop software components
independently with minimal supervision <o:p></o:p></span></span></p>

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
m <o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Microsoft Application Development <o:p></o:p>=
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
) <o:p></o:p></span></span></p>

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
Windows, Forms, Single Sign-on) knowledge <o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Proficient SQL development skills <o:p></o:p>=
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
Triggers (Oracle PL-SQL or Microsoft SQL Server T-SQL) <o:p></o:p></span></=
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
(Oracle PL-SQL or Microsoft SQL Server T-SQL) <o:p></o:p></span></span></p>

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
business applications <o:p></o:p></span></span></p>

<p class=3DMsoNoSpacing style=3D'margin-left:.5in;text-indent:-.25in;mso-li=
st:l0 level1 lfo1'><![if !supportLists]><span
class=3Dember-view><span style=3D'font-size:10.5pt;font-family:Symbol;borde=
r:none windowtext 1.0pt;
padding:0in'><span style=3D'mso-list:Ignore'>&middot;<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span></span><![endif]><span class=3Dember-view><span
style=3D'font-size:10.5pt;font-family:"Cambria","serif";border:none windowt=
ext 1.0pt;
padding:0in;background:white'>Oracle PL-SQL experience <o:p></o:p></span></=
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
padding:0in;background:white'>Health insurance claims/billing experience <o=
:p></o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'><o:p>&nbsp;</o:p></span></span></p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Interview time slots available <o:p></o:p></span></span><=
/p>

<p class=3DMsoNoSpacing><span class=3Dember-view><span style=3D'font-size:1=
0.5pt;
font-family:"Cambria","serif";border:none windowtext 1.0pt;padding:0in;
background:white'>Please share your profiles to <o:p></o:p></span></span></=
p>

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
om/d/msgid/linux-ntb/08ae01d5156f%24672615c0%2435724140%24%40com?utm_medium=
=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-ntb/0=
8ae01d5156f%24672615c0%2435724140%24%40com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_NextPart_000_08AF_01D5159D.80DE51C0--

