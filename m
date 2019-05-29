Return-Path: <linux-ntb+bncBCDZ33GYSUERBUWGXLTQKGQETKG5NGY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id E60DE2E0E9
	for <lists+linux-ntb@lfdr.de>; Wed, 29 May 2019 17:20:51 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id y14sf1019831oia.9
        for <lists+linux-ntb@lfdr.de>; Wed, 29 May 2019 08:20:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559143250; cv=pass;
        d=google.com; s=arc-20160816;
        b=D607UwtabzNsQNYvH9/YcqjGBX2f6wdwXUDm6aFfPTItmVImGEF9QZvsqVQrq+ceEW
         Xpak3p0rj4lCcATQ3+ykFdjBAAdA00Ch3PI+VUwr2pON9PP+VGDpND9b4Qg1goJWGuUn
         ptXuqql+yVb60eMC13Ea4BiIR7Mwx43YIITCJvrY6C1RK44jV4+0JAQ91aufrbcRnvTg
         e/ZDSBNELp54EraLy7rG0XJiaAPaBbvsVYc3/fGSgvfCgOXbbsnhqKCymaJSO5ibcmZC
         I8O1QsvSW/RMxwocwRejmVkz0LSmGDn+6C5dR0owsNMTlbROMNrA/FqjC1iwrDMxxr0S
         CWCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:to:from:sender:dkim-signature;
        bh=mW7mYP/4/sEjosk6ZT4Tkrv5tQosjqb+ceoXN11rST8=;
        b=YveeR5JRmkWwvhrvNBFRSOHcv9zUV0ynSPFFmjhkeGqBMEiu1eJcKwSHIq7KdJrPpL
         nEzPefEXwqzSURbI2JqdK/5R9WruUPiI3mEMOsc1nJTTTBM3mVRL2g6jtK7ZGO2gWWgG
         5ex+O/QI4agxF1l3aJOAAf5dD4ex7LBOzpS6iVC0+oSuo+XkI36JC+4R+wylq1Of1o4z
         rmg1rBVJWY0CQQHCIdwMPCCyR3IZUmtafWa6t9FTalYSlRm196GN2S37NVNC8X2I5sTM
         U3gx7f1kmzjSn5apwC86l6jaz8LGNhXTDJil1JIQQxYis8jwlZDgvtvCAI5TMBF9FEPL
         SN3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=VW69x454;
       spf=neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version:thread-index
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mW7mYP/4/sEjosk6ZT4Tkrv5tQosjqb+ceoXN11rST8=;
        b=T23ZnGCRYTEOOil3U4lVqcL9t601vOH1BcOnjKSq1OvsBeMcDqs/1sOUAhRYQw1iYJ
         Mt4QoK19PYU3RkhiUPGvPCNy3NEpMYN1JJdg2iufUy4fxspFPkYCVhMbUWnfXIKXCizE
         f1/iJlWRkVCk3ahc6dCM3mS3k+hP+iASOiUET1CLge/GffUVwc/5v8Nm7jJokmh6QULT
         h/BdIrBXb8TkKsqiyxSDebtqQZ3haZZesUhl4z6ZsGpCdmVj63Ay2dftSyHBmK9qIGH5
         eOtqwAcAcs/XliqkdrtWWm8TtOMLDYUZJ7tDDkadihsICJ8eBNYyuM0deu8gyK/cB89i
         LNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mW7mYP/4/sEjosk6ZT4Tkrv5tQosjqb+ceoXN11rST8=;
        b=I3vQPQCzhsMNDWb0+7plY983s54oKLmuUeqw/swZVcHjxA0jja/uP4Q6o/BwRJK9ib
         M1yWTNESI+jbQiDLPyQSf1sygUU5VTuKiozRU3cwkDj6nMjF1haRMeDd/gKYU/nTBnJd
         p+74alRTdBBzDyxfXkTOlE6o9tJWmObha9ddp/C+2f1I/Eiy+xSINtrYyQr/6y/8jm2/
         geoPHHWe8oHA0TSTFMA2zQbKG1hMfFMpuqSvaz7RmsqE9nQy4TXzdIwJoBtH7j/7GGTV
         hD3Tog52uQEM1y0hOIanTBo0bMjicJnmN07f4LWD6zHkAUo0X9JcWGLO8b4ndfNzYiVe
         LAfQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXZZVJSejw+GkTub8FUOAh7NKB/YrT9iemC4h+zB5EMMfde9PtA
	XQR1R3YM8ujYF3SNsYPfVHU=
X-Google-Smtp-Source: APXvYqyzdnEhlNcxAy1I3a2WRgqnBaF7NBktNvFdFstnLLbc29lM4Js0b0sC1LYnQX0zCjwbJZOvKA==
X-Received: by 2002:aca:3256:: with SMTP id y83mr1900954oiy.110.1559143250578;
        Wed, 29 May 2019 08:20:50 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:330a:: with SMTP id z10ls401134oiz.12.gmail; Wed, 29 May
 2019 08:20:50 -0700 (PDT)
X-Received: by 2002:aca:39c6:: with SMTP id g189mr220841oia.65.1559143250205;
        Wed, 29 May 2019 08:20:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559143250; cv=none;
        d=google.com; s=arc-20160816;
        b=STfV0yntY1d2wYNNI217FIfATvUAKTCpGpe5d/W9MAziFZRHsyItHp1GKiXc3iVaN5
         S/cuUNHamLFtbVkDaYS5HKCKTDq1GNCD3iXomIEbyJcSkl4mNp8vQB6FFNdkvj6gHf8m
         ibbx9lcw1GssXJ0ondLxpEDomQkzqji/jKOPjRNlTjdUnx6MuPsu92hD9RLJ4RoHmKHu
         l+Nu3x0EXc92Y3m701/Gal/GHwxdoAbuvZ8GMi7DAW1UENr47goCdXiUmDaICHhIX8jX
         Hrslj17lDlOqpKLJomRXufjOhorCM2KMizG9yFQc5ga1VLV7/c2XwPqpWAXNKEDNlZEj
         qz5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:dkim-signature;
        bh=EEFlIBtX6r62Js03A+GNw3GakXr5VuOZjkDrR8Xj8wE=;
        b=y+QAY7YPXEVRQP4yHOFMtEyFDSU82rUzcrAUm12aHfj99HF6UkuDnTToxXhxg0x+dP
         m4wezL2WUTTBt8iSTyRimZ4mUvtSUjHuqqf9sEFwFQ+MOJkgugYIpvlVBx1/dwk9UiIn
         E0HIIEuDOrBH3aZA/fzhj5aH5c6BJpmx1BCsASzDJbgf9nsVol4/pfLiRQuDaqhRvsPN
         BZX+Zrrnw3dDDuUM9k2Hy2DsLDky2e3tpP2BAZjNZSHjs+H/zR/7xA+BZNWJOB4TsPrF
         ZCcZrOIrU5GvySSegxJQ0XQZ2OZu7hVrS1/O4H48Kxh0s8vOCUuTjPV0SNEGp9xT9PN+
         +HJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623 header.b=VW69x454;
       spf=neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of uma@genisists.com) smtp.mailfrom=uma@genisists.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h71si690520oib.0.2019.05.29.08.20.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 May 2019 08:20:50 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of uma@genisists.com) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id a3so103840pgb.3
        for <linux-ntb@googlegroups.com>; Wed, 29 May 2019 08:20:50 -0700 (PDT)
X-Received: by 2002:a62:e00e:: with SMTP id f14mr150236674pfh.257.1559143249292;
        Wed, 29 May 2019 08:20:49 -0700 (PDT)
Received: from falcomitPC ([115.98.2.36])
        by smtp.gmail.com with ESMTPSA id o20sm16453619pgj.70.2019.05.29.08.20.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 May 2019 08:20:48 -0700 (PDT)
From: "Umashankar" <uma@genisists.com>
To: <linux-ntb@googlegroups.com>
Subject: UI/UX Designer// Arizona// Direct Client
Date: Wed, 29 May 2019 20:50:16 +0530
Message-ID: <04cc01d51632$16d8f1f0$448ad5d0$@com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_04CD_01D51660.30912DF0"
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdUWMgMjj0QKO0yrR+eeEhzvFJJAGQ==
Content-Language: en-us
X-Original-Sender: uma@genisists.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@genisists-com.20150623.gappssmtp.com header.s=20150623
 header.b=VW69x454;       spf=neutral (google.com: 2607:f8b0:4864:20::544 is
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

------=_NextPart_000_04CD_01D51660.30912DF0
Content-Type: text/plain; charset="UTF-8"

Hi All,

 

The following requirement is open with our client.

 

Role: UI/UX Designer 

Location: Arizona

Experience: 6+yrs

Direct Client                 

 

       Skills and Requirements:

*	Bachelor's degree required
*	Strong understanding and passion for front-end development
*	Extensive experience using HTML, JavaScript, jQuery, AngularJS 1,
ReactJS, CSS, LESS and Sass
*	Experience integrating third-party APIs/JSON into integrated web
applications
*	Ability to work with designers along with their UI/UX designs to
create working prototypes that match presentation and functionality
*	Ability to recognize global patterns for reuse, and structuring them
accordingly to implement them anywhere with little additional code
*	Understanding CSS3 features and fallbacks when necessary
*	Experience using GIT as a version control system
*	Strong communication and documentation skills
*	Follows best practices in coding style & structure
*	Self-motivated, detail-oriented, strong organizational skills, with
a positive approach to all tasks 

 

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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/04cc01d51632%2416d8f1f0%24448ad5d0%24%40com.
For more options, visit https://groups.google.com/d/optout.

------=_NextPart_000_04CD_01D51660.30912DF0
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
span.m2952516720132138335gmail-m5895193891754718447gmail-il
	{mso-style-name:m_2952516720132138335gmail-m_5895193891754718447gmail-il;}
p.m-2551869096390659861gmail-m5247370316618181940msonospacing, li.m-2551869=
096390659861gmail-m5247370316618181940msonospacing, div.m-25518690963906598=
61gmail-m5247370316618181940msonospacing
	{mso-style-name:m_-2551869096390659861gmail-m_5247370316618181940msonospac=
ing;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.m-2551869096390659861gmail-m5247370316618181940ember-view
	{mso-style-name:m_-2551869096390659861gmail-m_5247370316618181940ember-vie=
w;}
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
	{mso-list-id:1457677052;
	mso-list-template-ids:2037012658;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
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

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><a name=3D"m_2952516720132138335_m_589519389175471=
8"><b><span
style=3D'color:#222222'>Hi All,<o:p></o:p></span></b></a></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'color:#222222'><o:p>&nbsp;</o:p>=
</span></b></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:10.5pt;font-family:"Se=
goe UI","sans-serif";
background:white'>The following requirement is open with our client.</span>=
</b><b><span
style=3D'color:#222222'><o:p></o:p></span></b></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'color:#222222'><o:p>&nbsp;</o:p>=
</span></b></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'color:#222222'>Role: UI/UX&nbsp;=
Designer&nbsp;</span></b><span
style=3D'font-size:11.5pt;color:#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:11.5pt;color:black'>Lo=
cation:
Arizona<o:p></o:p></span></b></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'font-size:11.5pt;color:black'>Ex=
perience:
6+yrs</span></b><span style=3D'font-size:11.5pt;color:#222222'><o:p></o:p><=
/span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><b><span style=3D'color:black'>Direct Client</span=
></b><b><span
style=3D'font-size:12.0pt;color:#333333'>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;
&nbsp; &nbsp; &nbsp;&nbsp;</span></b><span style=3D'font-size:12.0pt;color:=
#222222'><o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;line-=
height:
normal;background:white'><span style=3D'font-size:11.5pt;color:#333333'><o:=
p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-=
align:
justify;line-height:normal;background:white'><span style=3D'font-size:12.0p=
t;
color:#333333'>&nbsp; &nbsp; &nbsp; &nbsp;</span><b><span style=3D'color:bl=
ack'>Skills
and Requirements:</span></b><span style=3D'font-size:11.5pt;color:#333333'>=
<o:p></o:p></span></p>

<ul style=3D'margin-top:0in' type=3Ddisc>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Bachelor&#8217;s degree required</s=
pan><span
     style=3D'font-size:11.5pt'><o:p></o:p></span></li>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Strong understanding and passion fo=
r
     front-end development</span><span style=3D'font-size:11.5pt'><o:p></o:=
p></span></li>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Extensive experience using HTML,
     JavaScript, jQuery, AngularJS 1, ReactJS, CSS, LESS and Sass</span><sp=
an
     style=3D'font-size:11.5pt'><o:p></o:p></span></li>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Experience integrating third-party =
APIs/JSON
     into integrated web applications</span><span style=3D'font-size:11.5pt=
'><o:p></o:p></span></li>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Ability to work with&nbsp;designers=
&nbsp;along
     with their UI/UX&nbsp;designs&nbsp;to create working prototypes that m=
atch
     presentation and functionality</span><span style=3D'font-size:11.5pt'>=
<o:p></o:p></span></li>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Ability to recognize global pattern=
s for
     reuse, and structuring them accordingly to implement them anywhere wit=
h
     little additional code</span><span style=3D'font-size:11.5pt'><o:p></o=
:p></span></li>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Understanding CSS3 features and fal=
lbacks
     when necessary</span><span style=3D'font-size:11.5pt'><o:p></o:p></spa=
n></li>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Experience using GIT as a version c=
ontrol
     system</span><span style=3D'font-size:11.5pt'><o:p></o:p></span></li>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Strong communication and documentat=
ion
     skills</span><span style=3D'font-size:11.5pt'><o:p></o:p></span></li>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Follows best practices in coding st=
yle
     &amp; structure</span><span style=3D'font-size:11.5pt'><o:p></o:p></sp=
an></li>
 <li class=3DMsoNormal style=3D'color:#333333;margin-bottom:0in;margin-bott=
om:.0001pt;
     text-align:justify;line-height:normal;mso-list:l0 level1 lfo1;backgrou=
nd:
     white'><span style=3D'color:black'>Self-motivated, detail-oriented, st=
rong
     organizational skills, with a positive approach to all tasks&nbsp;</sp=
an><span
     style=3D'font-size:11.5pt'><o:p></o:p></span></li>
</ul>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-=
align:
justify;line-height:normal;background:white'><span style=3D'color:black'><o=
:p>&nbsp;</o:p></span></p>

<p class=3DMsoNoSpacing>Interview time slots available Please share suitabl=
e
profiles to below mail id,</p>

<p class=3DMsoNoSpacing><span
class=3Dm-2551869096390659861gmail-m5247370316618181940ember-view><b><span
style=3D'font-family:"Arial","sans-serif";color:#222222'><o:p>&nbsp;</o:p><=
/span></b></span></p>

<p class=3DMsoNoSpacing><span
class=3Dm-2551869096390659861gmail-m5247370316618181940ember-view><b><span
style=3D'font-family:"Arial","sans-serif";color:#222222'>Thanks &amp; Regar=
ds</span></b></span></p>

<p class=3DMsoNoSpacing><span
class=3Dm-2551869096390659861gmail-m5247370316618181940ember-view><b><span
style=3D'font-family:"Arial","sans-serif";color:#222222'>Umashankar</span><=
/b></span></p>

<p class=3DMsoNoSpacing><span
class=3Dm-2551869096390659861gmail-m5247370316618181940ember-view><b><span
style=3D'font-family:"Arial","sans-serif";color:#222222'>US IT Recruiter</s=
pan></b></span></p>

<p class=3DMsoNoSpacing><span
class=3Dm-2551869096390659861gmail-m5247370316618181940ember-view><b><span
style=3D'font-family:"Arial","sans-serif";color:#222222'>Genisis Technology
Solutions</span></b></span></p>

<p class=3DMsoNoSpacing><span
class=3Dm-2551869096390659861gmail-m5247370316618181940ember-view><b><span
style=3D'font-family:"Arial","sans-serif";color:#222222'>Email: </span></b>=
</span><a
href=3D"mailto:uma@genisists.com" target=3D"_blank"><b><span style=3D'font-=
family:
"Arial","sans-serif";color:#1155CC'>uma@genisists.com</span></b></a></p>

<p class=3DMsoNoSpacing><span
class=3Dm-2551869096390659861gmail-m5247370316618181940ember-view><b><span
style=3D'font-family:"Arial","sans-serif";color:#222222'>Desk number:
315-320-3439</span></b></span></p>

<p class=3DMsoNormal style=3D'margin-bottom:0in;margin-bottom:.0001pt;text-=
align:
justify;line-height:normal;background:white'><span style=3D'font-size:11.5p=
t;
color:#333333'><o:p>&nbsp;</o:p></span></p>

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
om/d/msgid/linux-ntb/04cc01d51632%2416d8f1f0%24448ad5d0%24%40com?utm_medium=
=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-ntb/0=
4cc01d51632%2416d8f1f0%24448ad5d0%24%40com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_NextPart_000_04CD_01D51660.30912DF0--

