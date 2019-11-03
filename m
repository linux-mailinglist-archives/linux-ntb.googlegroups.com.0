Return-Path: <linux-ntb+bncBAABBF6P7TWQKGQEM6OKTCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id C8257ED454
	for <lists+linux-ntb@lfdr.de>; Sun,  3 Nov 2019 20:16:40 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id c19sf13936095ilf.14
        for <lists+linux-ntb@lfdr.de>; Sun, 03 Nov 2019 11:16:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572808599; cv=pass;
        d=google.com; s=arc-20160816;
        b=qhyyutSlDnNRNN2O8dvCEhW5265cqU2JW6QTNeW6y5MRKb+JP2YB1MlrAxtpNbD4lY
         2Nr34wKIhE4pZmKzkkmY5L4XPrWwUdg0Vs7yfwTmoadoGhQfbiySfvh+DJOOMLfbwVxw
         jWDIUrokneAdHdgpupeSyzvpJad+Mc4aDvq3ydLEl1XPtRlgpDpYsf3ppHrXT1mwWcYd
         eLpMDUPTk3EGC2dAR4YX1wUpNbMF2Dyggt0EpDEFvtt6BhrU4FfxFl89Bvg5HMf2Mo5a
         N0ea4Kg04y6m/g3TpWNaIBtxrXSYdocxxuqaMMK6agC099SsQp0bDg6cyMcm0nMfC+II
         OegA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:subject:message-id:to:from:date:sender:dkim-signature;
        bh=8Z82TcxCQL5kUIA9CuJgORfs8Y4XGxp0fZTMiRI5QbA=;
        b=jvfkAdiTZQ+ZH+v1sSdxXD3au2NZGYEJsMPNr+CcNHKAJ7SPrYnloL6suYTkLz436F
         TvKtg9un9sc7rlQktxNRoRPSOwnnnwtqy9eobOJ8/QiK0wC8nrhml8hyqg6c/SzZcFuY
         j0V/Gz1z+2uP24SgzqD/XexehlL+x6Fa40SSyLri8bbPH+bZEl/+eO9DAn7HVyJxBUSt
         PhN5p00ySe+gT1VGtOoviLUaVayTBmwjHc+GtQXUPO3vHvtNehqxTqsrGY4ouFI/LlZF
         /JP9KME1MNhE+uUC3dw4hea5HTLj64Ol4CRDVKOCPGk8VdYnqnWPNkK0d2cXAWBjlpkF
         UPew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of manami1234@daum.net designates 203.133.181.12 as permitted sender) smtp.mailfrom=manami1234@daum.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=daum.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8Z82TcxCQL5kUIA9CuJgORfs8Y4XGxp0fZTMiRI5QbA=;
        b=UOAHNmGqobzsd4tyWF8gmBWe2cN2vvpXety4p1pCDvX3ds6oEq8fHK9bOfFvEOBJBI
         GwUHscMkcQfsLJ6K5ncfwLu/nZEAmj+obIWqJApHmk71/yxXn9yFQZQ7eSCGJj7N1Wpr
         6lQgv/iWgyFecCTLP/uj7eeEL7FSBZRqwZDMJnaJBRsSzJR1KKvbIu7c3NLB5M4oVU1e
         0y4qaga+m7QiHrjGCGMLjWktF9MgxNgIhXpTRNTiXzeR8wqxDZcmp7J92jEFHN4IFsqy
         sYiMrZWsFFYV1Y5rahPgYsEmQDWE4zZkZWq0fUx9LFwRT8l0+rchWek/EJUJc3cjSUIo
         RdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Z82TcxCQL5kUIA9CuJgORfs8Y4XGxp0fZTMiRI5QbA=;
        b=WmtE3kIM/X5l19Rlwv62a7HCCjUb3zmtgL6iFn3qiwV9SN5NTFh2FIITUTk+mPow/g
         jKvD5F+Kfon0+zQKrHn0whQ1yUvBb9jtn9Z521AWrr0ayWLBLSBTtZUYHKJEa2cLmV2i
         p+wXpHq/VW21G44T0yuU19tvJJTxYIK+l+OV/gBaxjN3zDgXYREabc7adpl3a2ESg4kc
         790wF9wNyT7qVv91v4q+GSnidTunJZyyGmoXhnpfOilKMG8uOdTC4JXGLmfKJ6X1qKIz
         tyIylgA6k1VY5ExIFMsK0IZRHY8sRs2td+/BSBAuUJPo1scuFHmWvka9HB1+BqAW04Qe
         DiRg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVYXXCEYn72FkN0+18aAEmCD5UmZlyWB1FtJk4+dm1RqYTHr/EM
	+gcJAAco891ULQub52OA0AM=
X-Google-Smtp-Source: APXvYqzbh2RtluDayUjHDAYC/HW0mOcjLnMeQbtWTAty3+Vj+xBwpax/qKfnz7rv6B+O8gwIwvpwtA==
X-Received: by 2002:a5e:d80d:: with SMTP id l13mr1701019iok.248.1572808599378;
        Sun, 03 Nov 2019 11:16:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:7004:: with SMTP id l4ls1327912ioc.12.gmail; Sun, 03 Nov
 2019 11:16:39 -0800 (PST)
X-Received: by 2002:a6b:f80b:: with SMTP id o11mr13681862ioh.46.1572808599060;
        Sun, 03 Nov 2019 11:16:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572808599; cv=none;
        d=google.com; s=arc-20160816;
        b=IQBX/KWNBncd2B9D6t9EKEvBnn9XWzVm8GGqmmoh56uEKI32Xah9ccy1D27Ih9O10U
         w1os8/5VmASM1lcmw21khwpV3SytZIiWvzMBaZlbvwZwICCwEG0amBnyt+/j/U9q90Tw
         9Az0+1rEZU3qm7vFcnx2yhw7XW6vDTWwXu/oA/Y/9J59jYu/Ii6TjiJ59BG40RnNSdU9
         seNv/4K5Z6yG34OPd1CTYvYtKyMW6IKyKGm5ZnbrImy3y5dwB2EowjhlFsv5K10oBAE5
         /n1moL6aHzjifFZXzhcHdKMBD8LBw7ugCw/eL8sP+yohvdW/yWWMShSfqZNJPl5aQ9Uo
         xphg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:subject:message-id:to:from
         :date;
        bh=5FGzJwn+9RSHWleYmYdBWQ/YZYBK1oGExCoJYU2xnWs=;
        b=duf8Og28wU6OahbdJF4+X5I5psckUI9SX9cwNG+lMSy5Fec3yo2hXZUIB1+YDL5Udv
         FaXXBIjX4m5/FpWP4cawU0ysxsmJZANJGcJCP2ISEsPn7FoQ30ruZ1y1Ahg8rRvQI/zd
         7wokZPwcnZ92QbA43iQq2lysh4VwGYa+dfJ2E1tggIxcWIjuNTM0yaOWvjVB3oczOLZr
         Z/qUnhOdMSBX8mC+67/+b9GFEXuu5NV6snAwfZx8J2119HVkwhCecYCj5Eoa05tkWhhu
         ctGruGDRbcAlkO0hNkv5bPcocMg2sWGAihd6on+cEvzRXvE/P1JvREx2qZUjGrMqviKH
         nGOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of manami1234@daum.net designates 203.133.181.12 as permitted sender) smtp.mailfrom=manami1234@daum.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=daum.net
Received: from mail-smail-vm54.hanmail.net (mail-smail-vm54.daum.net. [203.133.181.12])
        by gmr-mx.google.com with ESMTPS id a17si768672iok.0.2019.11.03.11.16.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 11:16:38 -0800 (PST)
Received-SPF: pass (google.com: domain of manami1234@daum.net designates 203.133.181.12 as permitted sender) client-ip=203.133.181.12;
Received: from mail-hmail-was4 ([10.197.10.46])
        by mail-smail-vm54.hanmail.net (8.13.8/8.9.1) with SMTP id xA3JGAZ2007384
        for <linux-ntb@googlegroups.com>; Mon, 4 Nov 2019 04:16:10 +0900
X-Hermes-Message-Id: nA44Da98f949802936
Date: Mon, 4 Nov 2019 04:13:35 +0900 (KST)
From: ACCOUNTING OFFICER <manami1234@daum.net>
To: temmyj48@gmail.com
Message-ID: <20191104041335.-2AFOSZ0RGOHl8FFSK_LJg@manami1234.hanmail.net>
Subject: FROM THE ATTORNEY GENERAL FEDERAL REPUBLIC OF NIGERIA. E-mail:
 abubakarmanami@rediffmail.com
MIME-Version: 1.0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Daum Mint Web 1.0
X-Originating-IP: [197.210.44.21]
X-HM-UT: F2wJHMKgMsywFZA4vMIKVOOyvwRqoW6DrgWMVLVAkXo=
Received: from mail-hammer-was3.s2.krane.9rum.cc ([10.197.7.233]) by hermes of mail-hmail-was5 (10.197.10.47) with ESMTP id nA44Da98f949802936 for <linux-ntb@googlegroups.com>; Mon, 04 Nov 2019 04:13:36 +0900 (KST)
X-Original-Sender: manami1234@daum.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of manami1234@daum.net designates 203.133.181.12 as
 permitted sender) smtp.mailfrom=manami1234@daum.net;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=daum.net
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

<html>
<head>
    <style>
        p{margin-top:0;margin-bottom:0}
    </style>
</head>
<body>
    <table class=3D"txc-wrapper" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"100%"><tr><td class=3D"txc-wrapper-td"><div class=3D"txc-co=
ntent-wrapper" style=3D"color:#111;font-family:Apple SD Gothic Neo,Malgun G=
othic,'=EB=A7=91=EC=9D=80 =EA=B3=A0=EB=94=95',sans-serif;font-size:10pt;lin=
e-height:1.5;"><p><b>FROM THE ATTORNEY GENERAL FEDERAL REPUBLIC OF NIGERIA.=
 E-mail: abubakarmanami@rediffmail.com<br><br>Supreme Court of Nigeria<br>A=
ddress: Federal Ministry of Justice HQ<br>Plot 71B Shehu Shagari Way,Maitam=
a Abuja,<br></b></p><div><b>E-mail: abubakarmanami@rediffmail.com</b></div>=
<div>temmyj48@gmail.com<b><br></b></div><p><b><br>Dear: Unpaid Beneficiary,=
<br><br>This
 is to inform you that in the course of my investigation as director of=20
payment verification / implementation committee I came across&nbsp; your na=
me
 as unpaid fund beneficiary in the record of the central bank of Nigeria
 and other banks that are suppose to get your funds&nbsp; released to you. =
My
 committee was set up by the payment reconciliation committee to verify=20
and scrutinize all&nbsp;&nbsp;&nbsp; outstanding debts owed to&nbsp;&nbsp; =
our foreign=20
beneficiaries in accordance to the information received from the United=20
States government and other countries over unpaid &nbsp;<br>huge debts owed=
 to Foreigners.<br><br>Having
 seen your file and my further questioning to the officials of the=20
central of Nigeria bank and ministry of finance as to why your&nbsp;&nbsp; =
payment
 is still pending reveals the rot and corruption in the&nbsp;&nbsp; system.=
 The=20
bank officials told me that the reason why you haven't&nbsp;&nbsp; received=
 your=20
payment is due to your inability to pay for the required charges for=20
transfer of funds to your account. When I asked them&nbsp;&nbsp; why they d=
idn't=20
deduct the said charges from your principal sum, I was given the flimsy=20
excuse that you never authorized them to do so.&nbsp;&nbsp; When I put the=
=20
question across to them if they ever advised you that such charges could
 be deducted from your principal fund,the answer I&nbsp; got was no. Now, i=
f=20
you do not tell this beneficiary that&nbsp;&nbsp;&nbsp; such charges could =
be deducted=20
from his or her principal fund, how will he or&nbsp;&nbsp; she know that su=
ch=20
options are available for such beneficiaries. From my investigation I=20
discovered that these bank&nbsp;&nbsp;&nbsp; officials&nbsp; deliberately r=
efused to let the
 charges be deducted from your principal fund&nbsp; because they want your=
=20
fund to remain trapped in the bank, <br><br>while they continue to=20
extort money from beneficiaries under some flimsy&nbsp; excuse. You do not=
=20
need to pay any money to any official, all&nbsp; you are required to do is=
=20
swear to an affidavit at the federal&nbsp;&nbsp; high court&nbsp; of Nigeri=
a,=20
authorizing the bank to deduct all charges from&nbsp; your principal fund a=
nd
 transfer the balance of funds after deduction to your&nbsp; bank account. =
If
 you have spent any money in&nbsp;&nbsp; the past in your quest for payment=
,=20
kindly let me know so that I can follow this up. You can&nbsp;&nbsp; reach =
me on=20
my phone or email for directive on how you&nbsp; can get the deduction done=
=20
as soon as possible&nbsp; and get your payment also.<br><br>Yours sincerely=
,<br><br>Barr. Abubakar Malami (SAN)<br>E-mail: abubakarmanami@rediffmail.c=
om<br>ATTORNEY GENERAL FEDERAL<br>REPUBLIC OF NIGERIA.</b></p>
<p><b><br></b></p></div></td></tr></table>
</body>
</html>
<img src=3D"https://confirm.mail.daum.net/confirmapi/v1/users/manami1234%40=
hanmail%2Enet/cmails/20191104041335%2E-2AFOSZ0RGOHl8FFSK_LJg%40manami1234%2=
Ehanmail%2Enet/recipients/linux-ntb%40googlegroups%2Ecom">

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/20191104041335.-2AFOSZ0RGOHl8FFSK_LJg%40manami1234.han=
mail.net?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/=
d/msgid/linux-ntb/20191104041335.-2AFOSZ0RGOHl8FFSK_LJg%40manami1234.hanmai=
l.net</a>.<br />
