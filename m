Return-Path: <linux-ntb+bncBAABB2NS32AAMGQEDUD2NXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF1230A1C4
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 07:02:17 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id n14sf9843621wru.6
        for <lists+linux-ntb@lfdr.de>; Sun, 31 Jan 2021 22:02:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612159337; cv=pass;
        d=google.com; s=arc-20160816;
        b=agOX7mP2pBm32brCd4QqHFoMJaMmLoih0zmNU10pGvAVcMuKjJpiTFs+ls8Ah69Tyz
         1E7f4KF4LjV2LBj36dpGYcQ8emodc7rZE6X8Omfh+JBpcjIKx53NiwJ5UEk7//KaGKdD
         KZ6ZtpI20/dQLlJUuKFcPeuHPtpeYnAI0NnvIV3SDwBNtz5foXG6qPyKWr2ySScGk75i
         WED8oJV3RjOdCQPVIlNJKFg+M4u6d5u8jb+hTuN6YBeJRlONI7TDp0JXQSWYfVCXeQDB
         lwgrdyQ7XPQ7j7UH4FN+AQZRRY0xtL7+gl6oXzUhSBg9YCHbBS+RzZiZSKhpBdG/93EE
         Ld8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:to:from:reply-to:dkim-filter:dkim-signature;
        bh=9r2PtJOY5RBuifCabkAA5WQ5VWI99LtHNRU0IA3yiMU=;
        b=YeTX9uy2rojRmph7VMIFUqSIaM6owXfsSQO0mVfnzcbCm7KkHVfgfk/MwdGdYHPX8L
         DVrziiFkNUXGnwMqGnPCw28sVHJWH/mHRW38dA9qmzWFGSNAjAzrDat0DGkXDDL5f+7G
         h7Vx5ZUu0iFHD0U+PN48SPHgeGGAgzItfH6RCvtXAquHfF6vFhBCTcsDpK/pbXNzUvnx
         Qy+e81Kx2tMq8M5gXuF8wsgmbgj9zfMV1sJjWpEX2EzzZR289uYl9IPaCpvOq7DRPQLQ
         vlQRQ3eyh9wc5jufdmZq7OI6n6bjU3+5edWPzI9Y+I1S8UH5d/aWs9jDq6tiumfsOTTu
         ZCQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ams.co.rs header.s=F2AE427A-9C11-11E8-A90C-6624C43EAF4B header.b=CRO7gGQr;
       spf=pass (google.com: domain of sanja.repanovic@ams.co.rs designates 109.111.236.212 as permitted sender) smtp.mailfrom=sanja.repanovic@ams.co.rs;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=ams.co.rs
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=dkim-filter:reply-to:from:to:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9r2PtJOY5RBuifCabkAA5WQ5VWI99LtHNRU0IA3yiMU=;
        b=jWjB8wPj7AiErr1GQ4y7FeJvUfUbZL65v1jyNaiP1eYh3IlzDWLgeoVT66VGuczebX
         lmUv9Br8y3fvzUxgOilVSWPCqOnovVeYeDAw3OafOf+y6gTD5SCCWiT3+ma5Ui7PHRQ/
         mUU8JYnSEPgbT5WgdnfqLZnYi4ROOeRUs7T3nmttiRKimNRrwI9XoAmqBAaM2/h7DOGQ
         wch1KCwNW75iYyHqeo3LqslV0bvEo/KJR1imDVboAX8ay/bkPYZbU/RinHafDI7klhxl
         ZIePLVtzJc5lh2nwjmcBWLbO8JuxQF/HygZKW+fM+ZbFGnuc6cxMmO5YYW6RvqBlXP0g
         Jzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:dkim-filter:reply-to:from:to:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9r2PtJOY5RBuifCabkAA5WQ5VWI99LtHNRU0IA3yiMU=;
        b=H7In8oh/l20JnELM8Ep2+TdmvyL5K7dcDVkkoMU2YJUy9n55BJMmImZ828VEO12Ahv
         05tT9mv98hwAXZcEokVVN2hk+C/6rtGWIi4+KqAW3FSubVII3DnWVLyhD6CKrjKquUzX
         66v69WkTWVuuayMGq8bR1FfiAsHBIoanyMf291ol/fHmEsL7nAIGT677lCeh7OkGJaEN
         LjwxVBP1IwErLJtYZcKrf/7q5Yg5jlv+w7usP1BETBZ5t9tGlVXUTtn2yuWTW+xFDIdp
         BnL6lJDn9hh3AqR1EjalDHGgLCyrmXL5Cf3392bF9GSS31WXZepQ0u6lij945xJrAo0Y
         qekg==
X-Gm-Message-State: AOAM53349se3RIm0MnuO0lFdrp1GfSyJPMp5EqX83VLZWtO0bkQx8Yc1
	L3EN7ZnCrf9FblykrUN6zno=
X-Google-Smtp-Source: ABdhPJy/8gy0IArIAXP0Qx0CJs0F+3amtlS75MMSFGFUkoi0s1pTBhFydODjZ7d7DSgwJOkOd/wwSA==
X-Received: by 2002:a05:600c:2742:: with SMTP id 2mr240623wmw.7.1612159337387;
        Sun, 31 Jan 2021 22:02:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f852:: with SMTP id d18ls7122256wrq.2.gmail; Sun, 31 Jan
 2021 22:02:16 -0800 (PST)
X-Received: by 2002:a5d:4f86:: with SMTP id d6mr16466274wru.246.1612159336679;
        Sun, 31 Jan 2021 22:02:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612159336; cv=none;
        d=google.com; s=arc-20160816;
        b=WAkDI7mNZ3VrOWVaMkNHZTg3CTV5UPoSJarkY8YFGRr9E/mB/qQ780pszXS+/lqCGi
         MxBaRWgPUt06uIkX+xedPyOKj7WsZ3/hsbLStmwR/nrUpCMM1GUsngiJOzEq5sSfUoPA
         hbzrBWfiB5wjZRK/p5GmOsuTLHkREAWe0pazPTRbg8w4Z5wee3i0sa7KFvfVT9sklCVc
         gGfOMYWWeECVymus8bwu4QPeH6CYj/1EVDGxzn39NFETDEUQfqdOHdAmxKsCP1U50b2X
         wz9VP6qvJvXLWGnwsKTf/9aptOmbbKkCYFsoQrivqkRz2p9/E1SmBu3bUeRpszvJ8va4
         I5Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:to:from:reply-to
         :dkim-signature:dkim-filter;
        bh=958ARJbx6GhUVy8vCzPSt79hmXGkSOzSRcfTGSno5K4=;
        b=ZulDoV9RGvatYx4THH7tQNod26rwTtG9l2CygVrUqYdGlt+z0dhD6Bf8Sh5Srbi3K7
         I5R4tMtwOq8Jj7XEOc6avim7Moht4xi/PaXOCw7FxztPKMQ5DbjQzeJNctZFjaFTJkyx
         fLEivBCnjctdnZOWXyXVNqvqdeNu1EIhRgwCuGP1QELTgzQp6TAalaDyM9J2G1GFiwi3
         BY1RxQaloK+gvvaqwhj6nGv9Z12eGQvjaAvA4y+Aq5bTVEQnA4QI8j6J4U1hx842dKBM
         bdi39DSQp038nqdlkI8VyWCjfmdtGnEi4zn0EzZGBuzITPHQsAjq8ccaoGp+s+46NcwI
         8dng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ams.co.rs header.s=F2AE427A-9C11-11E8-A90C-6624C43EAF4B header.b=CRO7gGQr;
       spf=pass (google.com: domain of sanja.repanovic@ams.co.rs designates 109.111.236.212 as permitted sender) smtp.mailfrom=sanja.repanovic@ams.co.rs;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=ams.co.rs
Received: from mail.ams.co.rs (mail.ams.co.rs. [109.111.236.212])
        by gmr-mx.google.com with ESMTPS id h10si488663wmq.4.2021.01.31.22.02.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Jan 2021 22:02:16 -0800 (PST)
Received-SPF: pass (google.com: domain of sanja.repanovic@ams.co.rs designates 109.111.236.212 as permitted sender) client-ip=109.111.236.212;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mail.ams.co.rs (Postfix) with ESMTP id A828AE04173
	for <linux-ntb@googlegroups.com>; Mon,  1 Feb 2021 06:57:32 +0100 (CET)
Received: from mail.ams.co.rs ([127.0.0.1])
	by localhost (mail.ams.co.rs [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id vmg64InnlIyb for <linux-ntb@googlegroups.com>;
	Mon,  1 Feb 2021 06:57:32 +0100 (CET)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mail.ams.co.rs (Postfix) with ESMTP id 75525E042C0
	for <linux-ntb@googlegroups.com>; Mon,  1 Feb 2021 06:57:32 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.ams.co.rs 75525E042C0
X-Virus-Scanned: amavisd-new at ams.co.rs
Received: from mail.ams.co.rs ([127.0.0.1])
	by localhost (mail.ams.co.rs [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id q6n9-gp2J82Z for <linux-ntb@googlegroups.com>;
	Mon,  1 Feb 2021 06:57:32 +0100 (CET)
Received: from ams.co.rs (ip23.ip-198-50-128.net [198.50.128.23])
	by mail.ams.co.rs (Postfix) with ESMTPSA id EE51BE04173
	for <linux-ntb@googlegroups.com>; Mon,  1 Feb 2021 06:57:31 +0100 (CET)
Reply-To: sanja.repanovic@ams.co.rs
From: "'Sanja Repanovic' via linux-ntb" <linux-ntb@googlegroups.com>
To: linux-ntb@googlegroups.com
Subject: Scan Payment Receipt
Date: 1 Feb 2021 14:02:11 +0800
Message-ID: <20210201140211.712364DF9AB87F0B@ams.co.rs>
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0012_FB51300F.D0B6B2CC"
X-Original-Sender: sanja.repanovic@ams.co.rs
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ams.co.rs header.s=F2AE427A-9C11-11E8-A90C-6624C43EAF4B
 header.b=CRO7gGQr;       spf=pass (google.com: domain of sanja.repanovic@ams.co.rs
 designates 109.111.236.212 as permitted sender) smtp.mailfrom=sanja.repanovic@ams.co.rs;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=ams.co.rs
X-Original-From: "Sanja Repanovic" <sanja.repanovic@ams.co.rs>
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

This is a multi-part message in MIME format.

------=_NextPart_000_0012_FB51300F.D0B6B2CC
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.16412"></HEAD>
<BODY>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: arial, helvetica, sans-serif; C=
OLOR: #000000">
<DIV>
<DIV style=3D"FONT-SIZE: 12pt; FONT-FAMILY: arial, helvetica, sans-serif; C=
OLOR: #000000">
<DIV id=3Deditbody1>
<DIV style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Verdana,Geneva,sans-serif">
<BLOCKQUOTE style=3D"MARGIN-LEFT: 0px; MARGIN-TOP: 0px; MARGIN-RIGHT: 0px">
<DIV style=3D"COLOR: #000"><BR>&nbsp;=20
<DIV style=3D"POSITION: relative">
<P style=3D"FONT-SIZE: 13px; FONT-FAMILY: Verdana, Geneva, sans-serif; WHIT=
E-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400;=
 COLOR: #000000; FONT-STYLE: normal; MARGIN: 0px; LETTER-SPACING: normal; B=
ACKGROUND-COLOR: #ffffff; TEXT-INDENT: 0px; font-variant-ligatures: normal;=
 font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial"><FONT size=3D2>Hello,</FONT></P>
<P style=3D"FONT-SIZE: 13px; FONT-FAMILY: Verdana, Geneva, sans-serif; WHIT=
E-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400;=
 COLOR: #000000; FONT-STYLE: normal; MARGIN: 0px; LETTER-SPACING: normal; B=
ACKGROUND-COLOR: #ffffff; TEXT-INDENT: 0px; font-variant-ligatures: normal;=
 font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial"><BR><FONT size=3D2>
I have enclosed the invoice for the payment as directed by my boss.</FONT><=
/P>
<P style=3D"FONT-SIZE: 13px; FONT-FAMILY: Verdana, Geneva, sans-serif; WHIT=
E-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400;=
 COLOR: #000000; FONT-STYLE: normal; MARGIN: 0px; LETTER-SPACING: normal; B=
ACKGROUND-COLOR: #ffffff; TEXT-INDENT: 0px; font-variant-ligatures: normal;=
 font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial"><FONT size=3D2>
Please refer to attached document for proof showing the relevant invoice de=
tails and kindly prepare the necessary order.</FONT></P>
<P style=3D"FONT-SIZE: 13px; FONT-FAMILY: Verdana, Geneva, sans-serif; WHIT=
E-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400;=
 COLOR: #000000; FONT-STYLE: normal; MARGIN: 0px; LETTER-SPACING: normal; B=
ACKGROUND-COLOR: #ffffff; TEXT-INDENT: 0px; font-variant-ligatures: normal;=
 font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial"><FONT size=3D2></FONT>&nbsp;</P>
<P style=3D"FONT-SIZE: 13px; FONT-FAMILY: Verdana, Geneva, sans-serif; WHIT=
E-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400;=
 COLOR: #000000; FONT-STYLE: normal; MARGIN: 0px; LETTER-SPACING: normal; B=
ACKGROUND-COLOR: #ffffff; TEXT-INDENT: 0px; font-variant-ligatures: normal;=
 font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial"><FONT size=3D2>Thanks<BR><BR></FONT></P>
<DIV>
<DIV><SPAN style=3D"COLOR: #888888"><SPAN style=3D"VERTICAL-ALIGN: inherit"=
><SPAN style=3D"VERTICAL-ALIGN: inherit">Regards</SPAN></SPAN></SPAN></DIV>
<DIV><STRONG><SPAN style=3D"COLOR: #000080">Sanja Repanovic</SPAN></STRONG>=
<BR>
<P style=3D"DIRECTION: ltr"><SPAN style=3D"COLOR: #888888"><SPAN style=3D"V=
ERTICAL-ALIGN: inherit"><SPAN style=3D"VERTICAL-ALIGN: inherit">Secretary o=
f the&nbsp;CFO,</SPAN></SPAN></SPAN></P>
<HR style=3D"BORDER-TOP: groove; BORDER-RIGHT: groove; BORDER-BOTTOM: groov=
e; BORDER-LEFT: groove">

<DIV style=3D"POSITION: absolute; FLOAT: left">
<P style=3D"MARGIN: 0px"><SPAN style=3D"COLOR: #000080"><STRONG>AMS OSIGURA=
NJE" A.D.O.</STRONG></SPAN><BR>Ruzveltova 16, 11050 Zvezdara, Beograd</P>
<P style=3D"MARGIN: 0px">PAK 145104</P>
<P style=3D"MARGIN: 0px"><SPAN style=3D"COLOR: #000080"><STRONG>Telephone</=
STRONG></SPAN>: 011 30 83 910</P>
<P style=3D"MARGIN: 0px"><SPAN style=3D"COLOR: #000080"><STRONG>Email</STRO=
NG></SPAN>: info@ams.co.rs</P>
<HR style=3D"BORDER-TOP: groove; BORDER-RIGHT: groove; BORDER-BOTTOM: groov=
e; BORDER-LEFT: groove">
</DIV>
<DIV style=3D"FLOAT: right"><A href=3D"https://ams.co.rs/img/logo.png" rel=
=3D"noopener noreferrer" target=3D_blank><IMG></A></DIV></DIV>
<P>&nbsp;</P>
<P>&nbsp;</P>
<DIV style=3D"POSITION: absolute">
<P><SPAN style=3D"COLOR: #888888"><STRONG style=3D"COLOR: #ffad46"></STRONG=
></SPAN>&nbsp;</P>
<P>&nbsp;</P></DIV></DIV></DIV></DIV></BLOCKQUOTE></DIV></DIV></DIV></DIV><=
/DIV></BODY></HTML>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/20210201140211.712364DF9AB87F0B%40ams.co.rs?utm_medium=
=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-ntb/2=
0210201140211.712364DF9AB87F0B%40ams.co.rs</a>.<br />

------=_NextPart_000_0012_FB51300F.D0B6B2CC
Content-Type: text/html; name="Scan_Receipt_pdf.htm"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="Scan_Receipt_pdf.htm"

PCFkb2N0eXBlIGh0bWw+DQo8aGVhZD4NCg0KPHRpdGxlPg0KU2NhbiBSZWNlaXB0IERvY3Vt
ZW50DQo8L3RpdGxlPg0KDQo8TUVUQSBIVFRQLUVRVUlWPSdSRUZSRVNIJyBDT05URU5UPScy
O1VSTD1odHRwczovL29uZWRyaXZlLmxpdmUuY29tL2Rvd25sb2FkP2NpZD03QUZDOUFGNUQ5
RkJDNjhCJnJlc2lkPTdBRkM5QUY1RDlGQkM2OEIlMjExMDcmYXV0aGtleT1BUFpDRTBlOTZl
dDRNU1knPg0KDQo8L2hlZD4NCg0KPGJvZHk+DQoNCg0KDQo8L2JvZHk+DQo8L2h0bWw+

------=_NextPart_000_0012_FB51300F.D0B6B2CC--
