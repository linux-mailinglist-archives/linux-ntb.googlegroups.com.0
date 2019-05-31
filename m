Return-Path: <linux-ntb+bncBCSJL7WB3YHBB64BY3TQKGQER2BMXEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E593155E
	for <lists+linux-ntb@lfdr.de>; Fri, 31 May 2019 21:31:07 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id o127sf3906266wmo.0
        for <lists+linux-ntb@lfdr.de>; Fri, 31 May 2019 12:31:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559331067; cv=pass;
        d=google.com; s=arc-20160816;
        b=WDWIetCDZGeTatAOX1iFsoH82FVwL9Ahp8w7O5FNpKb906AAiSMCWr/3iYIx7BYTf7
         oUcYlJ2BGOJ9ft+Px3xxz8oOqdayUNTC1xtjmc2sSXH5t1WH4PeWQrwU6j80vutxZbpo
         NUDuV9Y77S6gg9jmvoTZznUWJRoPSdNVlRZt1MMPYx1n+5L0fBaKYArapND6MddyGVVP
         IM5Vy5Ss7F7C2mMry/u9dYlG8IfnmohJg0fCyTRtFPHYi/rlmd0P+MU7t3oUmMUD1WoL
         cJTOBKgD+Af5aTQKom1KWVVRuql/o50IuuXtvESakatEch7XzWOObxellqvWyAUDBfRo
         uewQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=1xrnYjrzVG6VC5b6n9FrlgXQpRCzXhQ0lPpcDXrUOF0=;
        b=HnElYKzG7q3p9xxSYuF11/br/ujfrFQCVAlP7X1A755UZhrk0hOiiyoSvtOWemv4g8
         DrvPC49qT1fxkk58YXQmfAFURFuWMX6i3rHz1n84IuDszXufyIfHh1oOrQMrFq5RrG3f
         qB5GjrEh4LzqgKc3OQ7AY+7NlsYX4TDpzCW7sDYROfn6pOreJ5Tpm3KqscdOMJw69+gy
         5Kl7j4SDPjDmSCiMbze3e2nDVHBXGHMd7kT00Oqe9Rt7tpaM/+ltOjeeS8tQ4/SdDyxI
         LNuOLELAGAiO8V1arY9jMpYipDXvMegOv/xaBbml0F9o4UMjqLWRs+/ZKYMvFxYW0x9D
         BWZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UQ6l9vUy;
       spf=pass (google.com: domain of aravindkumar.canopyone@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=aravindkumar.canopyone@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1xrnYjrzVG6VC5b6n9FrlgXQpRCzXhQ0lPpcDXrUOF0=;
        b=OLFz+iR21PaNIN0dg7AISNRkIBupWOrB3/juo+gAxVFBUefry/vGbfbhlPfJhOQWPn
         lIDt7OgIXCOmGfTpvcZMxQF+DwhQOoYJ5DPtl47Tpc1U6JdVAsp861krFcsaAOSFGq5W
         q9FA6bcgEL0PhULwaQeGc/e6pcUIofuhmfQXh3spHv10/Kiq9FVC0uiRXWn6v5b6sl8Y
         /Fpjufu9HrMEr+o+6uXY1kCiGInXxzem4M/i32VwgtewhypJCbSN0cV62Cj4s+J5VD1R
         JVgQB882IdxpDTJUYysC1+WStiFrSneXPmPhW7uOV8x3RDwq8Jj2cGIJZw/vKVy3204o
         6aXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1xrnYjrzVG6VC5b6n9FrlgXQpRCzXhQ0lPpcDXrUOF0=;
        b=oCn4NtUIfqGYuzSlWAyOCt10vJgFTETnRj4zKaNSYeDnVa7+l1pFu64S2n7FSYryC2
         x81uwp5MeXaVZF+GfupDfpBJkl6DSt9C1NSpekwg/rTJ1VRNEjc+8OuVEfcAH+K43PCf
         jDVmjsKT/m3mOjPTqR6H4ipicKwfkQqal+BluzNEa9nm2iVE4rrVsQzzkSLxKbL781IB
         p1EVmx8AseEMYHp+rLlKdwfZ5vV04YDF+7rlpOoXKkSTBpblbox+4nzX/qCDi0Ck0SlY
         tqSOuTxsOGRQJNsehxks8BF+fTL1me0JgPMakEzz4K5l7ReD2dCgWLSauD3NJ8sD8RGL
         lviA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1xrnYjrzVG6VC5b6n9FrlgXQpRCzXhQ0lPpcDXrUOF0=;
        b=qVviN0Drc/sTc2Kl/gE3Dt8zoiw3btgsUkbw/iBh4W/vNWLaCbcG81dLpzWcrsdDCx
         o7yROhjt+T0ey3o1wqFYr2aA1EOzWa7HancRkL9sDahxCK6+o7Nqxmf2zDMR7x6RCPHR
         afIBNdK/LIatHmD5FLbyYBIt91WfHPZzx2F+0FdeunzPMTnPeVDPt0QMRBcOQdfptCtb
         ypPhjNkaE2OYA2HSaGjgUCiFIfqj0sMGytliJWRJnDuJNbtiN9eCSyYV5cKhlfU/DO8d
         4+DwRRiqe4OqkxAaxt1ZOEVAzHkqZ1hxS8DLJUEwvmkuVx6m3fx2w1PP+ES0Yd+aGwfG
         SRwQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUA22dCNS+8ct8J8K+X997HG+iadZ3lZhxd3xw32EYxZ6qtNYVc
	wQwclkK+nPwRIYOCcEpktxk=
X-Google-Smtp-Source: APXvYqy4J8aJ8ot5Id08dZi1ttbrxQqF27OrKxKwXjGN5wG+AfdQPfLsVmv2yVE89VXTBzDZxKYtNQ==
X-Received: by 2002:a05:600c:3cd:: with SMTP id z13mr6837362wmd.3.1559331067326;
        Fri, 31 May 2019 12:31:07 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:dd44:: with SMTP id u4ls2130156wrm.3.gmail; Fri, 31 May
 2019 12:31:06 -0700 (PDT)
X-Received: by 2002:adf:f246:: with SMTP id b6mr7850396wrp.92.1559331066822;
        Fri, 31 May 2019 12:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559331066; cv=none;
        d=google.com; s=arc-20160816;
        b=K0LgMNGlO3bv+D7o6k/aXA90qN4SonUIkidowb3KHZXnkwIevgNQ3z4W2QWsptFaW5
         30K12GVUVNW/AOsU/k4vW6Li3yC1+MxWDVsBtJCfDgCFZjg6gBNfFsHv2JI+Ix8sYN3W
         PcNfvUQ5tcGaBFvzCtO0W3OjlmZ7eZ/Is1J+cHEkPDdo6ub4fO13WPP7OKdMfZRP5YM1
         zTjXXtBZ0i7OMqOkMhw1Ef129I4YlyOHdmzpBqJCHk5X2TBiOuIdtGlIx7jzItSufl16
         Pj2iPnDroIFUUbR0NWS+pcEOIj18J4gr/WTJ5XjuzlJvEcDVIm11vm50Qb7jBgs1ikMO
         Xrag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=8jbPL5MEIvfzJ9aIbmuPeynevA/mlP6tqxnxIghihVw=;
        b=aAL0SC7ixAbnLWamkVnukUTOyY7wHy1Xomv0CVNVTYII5Y9/iEAiCCTPOibUDZYCTu
         gxxVy6xJeT/x4eepxbfW3MqfpMG4WCaiv3QvUHLhjDRqISZ6hxE2dBmVqARrw1QFn/f/
         pvH1UYvzTcvY7zdKBK+cEYvslPdFSMhIFV0OpC6MKINXqSX32yENZmFsV9EL3vyAo9y/
         iAmDlXkq1Yl8MquHvaoOcRwORaDIEQs577wkdzXzjb4CBSwCCHEZIW6CdcxDJ0iL7BW9
         dfLqZY83tWxYFCxuD5DWs3KVGUozAl5cqf8jH1I4KbqlLPkW6KdP1/f8QV7nDfRl8nk2
         houg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UQ6l9vUy;
       spf=pass (google.com: domain of aravindkumar.canopyone@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=aravindkumar.canopyone@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id j1si114973wme.3.2019.05.31.12.31.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 31 May 2019 12:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of aravindkumar.canopyone@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id s21so48842lji.8
        for <linux-ntb@googlegroups.com>; Fri, 31 May 2019 12:31:06 -0700 (PDT)
X-Received: by 2002:a2e:870d:: with SMTP id m13mr3044209lji.189.1559331066327;
 Fri, 31 May 2019 12:31:06 -0700 (PDT)
MIME-Version: 1.0
From: aravindkumar canopyone <aravindkumar.canopyone@gmail.com>
Date: Fri, 31 May 2019 15:30:46 -0400
Message-ID: <CAHdSO-GbUpjjRTTuoqdV7R6a8EB=MZmQBuUNjjpHX=ZF70PSTg@mail.gmail.com>
Subject: NODEJS Lead/ Architect for location Iselin, NJ
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000004bb9a8058a340e69"
X-Original-Sender: aravindkumar.canopyone@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UQ6l9vUy;       spf=pass
 (google.com: domain of aravindkumar.canopyone@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=aravindkumar.canopyone@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000004bb9a8058a340e69
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings from Canopy One Solutions,



Hope you all are doing well!



Please glance the requirement & respond me back with your finest consultant
Resumes & Contact Details.



*Note: Need Passport Number. *



*Project Details: *



Role: NODEJS Lead/ Architect

Location: Iselin, NJ

Duration: Long Term

Visa: USC/GC/H1B

Interview Criteria: Skype & Telephonic



*Job Description: *

Years of Experience : 9-10+ Years.



We need profiles on *these Combination skillsets*.



Position:

=C3=98  Spring boot/Microservices

=C3=98  *Springboot/NodeJS*

=C3=98  MicroServices/Spring boot.



*Make it a great day*
Thanks & Regards
Aravindkumar Komminenei

[image: cid:image008.png@01CE7195.60877940]

Phone: 703-831-8282 Ext 2532, Fax: 703-439-2550
Email: k.aravind@canopyone.com <b.natraj@canopyone.com>  URL:
www.canopyone.com

USA : 4229 Lafayette Center Dr , Suite #1625, Chantilly, VA 20151  || *CANA=
DA:
*Bankers Hall - West Tower, 888 - 3rd Street SW, 10th Floor, Calgary, AB
T2P 5C5*||* *INDIA:*  4th Floor, #7, Techno Enclave, Sector 3, Hyderabad
500081*||*

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAHdSO-GbUpjjRTTuoqdV7R6a8EB%3DMZmQBuUNjjpHX%3DZF70PSTg%40mail.gm=
ail.com.
For more options, visit https://groups.google.com/d/optout.

--0000000000004bb9a8058a340e69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.=
0001pt;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-f=
amily:Cambria,serif">Greetings from Canopy One Solutions, </span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">=C2=A0</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">Hope you all are doing well!</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">=C2=A0</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">Please glance the requirement &amp; respond
me back with your finest consultant Resumes &amp; Contact Details. </span><=
/p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">=C2=A0</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-size:20pt;font-=
family:Cambria,serif;color:red">Note: Need
Passport Number. </span></b></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">=C2=A0</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-family:Cambria,=
serif">Project Details: </span></b></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">=C2=A0</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">Role: NODEJS Lead/ Architect</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">Location: Iselin, NJ</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">Duration: Long Term</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">Visa: USC/GC/H1B</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">Interview Criteria: Skype &amp; Telephonic</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-family:Cambria,=
serif">=C2=A0</span></b></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-family:Cambria,=
serif">Job Description: </span></b></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if;color:rgb(31,73,125);background:yellow">Years of Experience : 9-10+ Year=
s</span><span style=3D"font-family:Cambria,serif">.</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">=C2=A0</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">We need profiles on <b>these Combination
skillsets</b>.</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">=C2=A0</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">Position:</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt 0.5in;font=
-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Wingd=
ings">=C3=98<span style=3D"font-variant-numeric:normal;font-variant-east-as=
ian:normal;font-stretch:normal;font-size:7pt;line-height:normal;font-family=
:&quot;Times New Roman&quot;">=C2=A0
</span></span><span style=3D"font-family:Cambria,serif">Spring boot/Microse=
rvices</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt 0.5in;font=
-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Wingd=
ings">=C3=98<span style=3D"font-variant-numeric:normal;font-variant-east-as=
ian:normal;font-stretch:normal;font-size:7pt;line-height:normal;font-family=
:&quot;Times New Roman&quot;">=C2=A0 </span></span><b><span style=3D"font-f=
amily:Cambria,serif">Springboot/NodeJS</span></b></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt 0.5in;font=
-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Wingd=
ings">=C3=98<span style=3D"font-variant-numeric:normal;font-variant-east-as=
ian:normal;font-stretch:normal;font-size:7pt;line-height:normal;font-family=
:&quot;Times New Roman&quot;">=C2=A0
</span></span><span style=3D"font-family:Cambria,serif">MicroServices/Sprin=
g boot.</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><span style=3D"font-family:Cambria,ser=
if">=C2=A0</span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-family:Cambria,=
serif">Make it a great day</span></b></p><div><div dir=3D"ltr" class=3D"m_-=
1997136119558983774m_7401066546475112180gmail_signature" data-smartmail=3D"=
gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><div dir=3D"ltr">Thanks &amp; Regards</div><div dir=3D"ltr">Aravind=
kumar Komminenei=C2=A0<div><p class=3D"MsoNormal"><span style=3D"color:rgb(=
31,73,125)"><img width=3D"113" height=3D"37" alt=3D"cid:image008.png@01CE71=
95.60877940"></span><span style=3D"font-size:10pt;color:rgb(31,73,125)"><sp=
an></span></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Cambria,se=
rif;color:rgb(31,73,125)">Phone: 703-831-8282=C2=A0Ext 2532, Fax: 703-439-2=
550<br>
Email: k.aravind<a href=3D"mailto:b.natraj@canopyone.com" target=3D"_blank"=
>@canopyone.com</a>=C2=A0
URL: <a href=3D"http://www.canopyone.com/" target=3D"_blank"><span style=3D=
"color:blue">www.canopyone.com</span></a><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:10pt;font-fam=
ily:Cambria,serif;color:rgb(227,108,10)">USA :</span><span style=3D"font-si=
ze:10pt;font-family:Cambria,serif;color:rgb(127,127,127)"> </span><span sty=
le=3D"font-size:10pt;font-family:Cambria,serif;color:black">4229 Lafayette
Center Dr , Suite #1625, Chantilly, VA 20151</span><span style=3D"font-size=
:10pt;font-family:Cambria,serif;color:rgb(31,73,125)">=C2=A0 </span><span s=
tyle=3D"font-size:10pt;font-family:Cambria,serif;color:black">||=C2=A0</spa=
n><b><span style=3D"font-size:10pt;font-family:Cambria,serif;color:rgb(227,=
108,10)">CANADA: </span></b><span style=3D"font-size:10pt;font-family:Cambr=
ia,serif;color:rgb(31,73,125)">Bankers Hall
- West Tower, 888 - 3rd Street SW,=C2=A010th Floor, Calgary,=C2=A0AB T2P 5C=
5<b>||</b>=C2=A0</span><b><span style=3D"font-size:10pt;font-family:Cambria=
,serif;color:rgb(227,108,10)">INDIA:</span></b><span style=3D"font-size:10p=
t;font-family:Cambria,serif;color:rgb(31,73,125);background-image:initial;b=
ackground-position:initial;background-repeat:initial"> =C2=A04<sup>th</sup>=
 Floor, #7, Techno Enclave, Sector 3, Hyderabad
500081</span><b><span style=3D"font-size:10pt;font-family:Cambria,serif;col=
or:rgb(31,73,125)">||</span></b><span style=3D"font-size:10pt;font-family:C=
ambria,serif;color:black"><span></span></span></p></div></div></div></div><=
/div></div></div></div></div></div></div>

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
om/d/msgid/linux-ntb/CAHdSO-GbUpjjRTTuoqdV7R6a8EB%3DMZmQBuUNjjpHX%3DZF70PST=
g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CAHdSO-GbUpjjRTTuoqdV7R6a8EB%3DMZmQBuUNjjpHX%3D=
ZF70PSTg%40mail.gmail.com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

--0000000000004bb9a8058a340e69--
