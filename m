Return-Path: <linux-ntb+bncBAABBEOO7TWQKGQEHSLWJRI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC33ED450
	for <lists+linux-ntb@lfdr.de>; Sun,  3 Nov 2019 20:14:26 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id f73sf2257146vka.4
        for <lists+linux-ntb@lfdr.de>; Sun, 03 Nov 2019 11:14:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572808465; cv=pass;
        d=google.com; s=arc-20160816;
        b=zXNqxzGK3UXOErcS7+qvu0I63npI+Ciy0U9SHiceVwEXR1nxKRQnNpkcZcAN/g3L1F
         7E8BGJ9Jcfc3cgJ4oADd9ekrcc3p4btBXOmcx6LsXtSbS5zCcS0ZXalvTlwVEDSwQFOl
         ol/4ncS87oQYgmRhxwcwM0CBSq3wZD17cvtBCvf2beA9WsIkJC2dxg1tg8jVvXM9mOe4
         8W+ehWiwUorwarFNru+FkTLKuRMcGiY1hYGRgm63/hSfmHK3zcHUn+9vwx+9ywVlY7Od
         gG/YGrygHi6JDROBo/25ev1mM3bJB0lthuX3fU1iV2Wtshulfx7nXs0GIijF2nYq/1Cg
         VQ5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:subject:message-id:to:from:date:sender:dkim-signature;
        bh=kcv6b50XcMtdl2l+zaR6Csv8eK/5Zl4nfOAeGnh1C6g=;
        b=ZdxoWnvkCVmdjE4hoUhHKFW0vAgwpI/gEh55HqgaeOerEJkY+7hLOZ8ebaFE8MoqBn
         HKkRoo4EJYJ3jPncl+IW+DXOJr8Sk0VAUfiRnAkyrQRSb8NYl7W91pXLPVMKCM+85yK6
         2CbQ07gnWxhxW5PmqMecIP246WWEsPfcMhnwuQCpKwx55yzjh1l+MDqZhIdLWiAWn+J9
         EaXAb52j8lOTfIaYLFs4n7Q8qP0aWyxHUSIz6VyGHmfHVWwDWuFUgI306ujculiKWngd
         4kXz3Xnleman/6ZxlWHaYxuRJwyISbrAYHde7QgHHwUYflcF+TW4GojtDQ3DkG0ITRPH
         cJmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of manami1234@daum.net designates 203.133.181.10 as permitted sender) smtp.mailfrom=manami1234@daum.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=daum.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kcv6b50XcMtdl2l+zaR6Csv8eK/5Zl4nfOAeGnh1C6g=;
        b=lICM6IHEeqitVWfGvxZkP7Bh/yr7rVbemNQLmNF+XBbi1zqbNwkQDoIhXVgzz0PI0F
         vMIsk9VXMNhJkYxfUWAJ2teRqLAeJ35t6wzYDU9kP7bDFMSEWu78hW78uFgDhRjVu8j5
         8MWWADop75tryK+rzDjXrAzpx2LQ/h9+bcksz/Whp3SpvTTJ5e1ddW6rmItqrSOsI48e
         S1FNyQhT1uEa6EKc2fcHOnbSP7O8KbtYbqin9akX9nifT9e6D5Hm7vBtSo9bM73GophX
         RrxlbmQhShKZpACVW4KcQt4jgXAWc9/m1FgyPiFc/ARZkBWAHHx7HZzd4x32Q69/LZid
         9l2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kcv6b50XcMtdl2l+zaR6Csv8eK/5Zl4nfOAeGnh1C6g=;
        b=hcB9GPWhK+cmxvXE+kc6C5QtEJcLPLf6S1r1tiVp/mdTVO4scLkM1cp3ULyengWtjS
         JVLzhSDvEL9jj34V9DnItbNa4WjtpRDMo2rFFgSZbFVP2S8x+m0jHlMmkX2cjAmZJw5/
         jPw6M69LEACJs9pJyr4uMVvZOgHO1mgo4OAb1zSOXTNsbUUoOQkbRXoZ/CE4PEYiZL9+
         s2LKYllLKKR5TpilwuloDAtM9uLEfY1nH6xwxNYm81bvwDNqCBzvXgeWadMCVY6rPsd1
         3WI1XqnTOZiQ8yET5RUZ7s0ydSoFF0q2Ys/g4vad1AmFB4UTQhHMl/k7OGVftcYSRDaC
         vnCg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWDMQIX1MVmoNHNPevIxP0x+4lLW9y0+5qXfL0RHlONxBsaQWeb
	ZWVFPayrAQpDYj83+05T1u4=
X-Google-Smtp-Source: APXvYqzeZa9/uHzI597UU0dugi0Md91xZumFbN5DlSS9dNCNZ2YfjqRyeoqqal5z2A6zoPxFr2JWpw==
X-Received: by 2002:a67:7346:: with SMTP id o67mr1989129vsc.72.1572808465530;
        Sun, 03 Nov 2019 11:14:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6102:5d8:: with SMTP id v24ls992495vsf.6.gmail; Sun, 03
 Nov 2019 11:14:25 -0800 (PST)
X-Received: by 2002:a67:2e90:: with SMTP id u138mr11481093vsu.207.1572808465174;
        Sun, 03 Nov 2019 11:14:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572808465; cv=none;
        d=google.com; s=arc-20160816;
        b=ex9/mvGMdF+PpCweYRtS37nX+7vgOp98SaYXkBXBlqOsuCLSBl8i/30zsFzAHdaxZ/
         C1ZqpWwyKVNuBcVA+2Tw3LPj4TB4JyVz1AsJvpzqxMk1kxVcVl/GRH0UUEPg9TW0yEVf
         L3VBXJ8DPXphbBXvLt0SjG7bKyxiR1Qx0k1MU0jJSnuQujWV9O/o8jTfURKFJ9s+fSU8
         Rdg67g+0d4VbbcYKSrCKLkyFswJvTXbpdDTisd55V279MR2pRAkC1SY0uAMwNQCowMfd
         /n8m14ssQ+AkQ0gpA77UWevO9lSPwqarVh3PztKPbhx9/ZtSQLkqgo22N26VHWE+LyUD
         oENg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:subject:message-id:to:from
         :date;
        bh=iGKkMuIqFTNUBB2NbOvVwSynDpxh+omdu80PJtErwqY=;
        b=SzdMrcb2gv0EhjT72nUFfxhuTRdqOUO4I3yBVeOPIer1QhydwqfgKVNQVdNai5ik9B
         Xxqkp7DdeBxy0RquOtBdl2fvUjW5ENalvnmR7PHNMJt1TSe56Ej9KbxyP7zqN+y+M/nN
         r+v5J0hrYiHWyDL9NJkhi/YQlpSPNysjIp8+OWL9KyIZ9MzHU20zbtKNrZ0JpDLGAbdl
         lps4hNnYWmaEu9Wqm5FhnTWO1sovbBv2PFRhNbUk1jWdzyk3JU5vAY0cTUyO+5/HMt5h
         XwSgi7o1ewaewUMOHSwTw54ZlMMOGnRB8fd6mAdbZAiBHE+wutFHz198kulJNXBjWyS3
         rY3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of manami1234@daum.net designates 203.133.181.10 as permitted sender) smtp.mailfrom=manami1234@daum.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=daum.net
Received: from mail-smail-vm52.hanmail.net (mail-smail-vm52.daum.net. [203.133.181.10])
        by gmr-mx.google.com with ESMTPS id c126si958007vkb.3.2019.11.03.11.14.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 11:14:25 -0800 (PST)
Received-SPF: pass (google.com: domain of manami1234@daum.net designates 203.133.181.10 as permitted sender) client-ip=203.133.181.10;
Received: from mail-hmail-was1 ([10.197.6.172])
        by mail-smail-vm52.hanmail.net (8.13.8/8.9.1) with SMTP id xA3JDx86011240
        for <linux-ntb@googlegroups.com>; Mon, 4 Nov 2019 04:13:59 +0900
X-Hermes-Message-Id: nA44BQXYZ1371643347
Date: Mon, 4 Nov 2019 04:11:25 +0900 (KST)
From: ACCOUNTING OFFICER <manami1234@daum.net>
To: info.20187777777@gmail.com
Message-ID: <20191104041125.NbW9B14XQEmlFOLHvbSW5w@manami1234.hanmail.net>
Subject: FROM THE ATTORNEY GENERAL FEDERAL REPUBLIC OF NIGERIA. E-mail:
 abubakarmanami@rediffmail.com
MIME-Version: 1.0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Daum Mint Web 1.0
X-Originating-IP: [197.210.44.21]
X-HM-UT: F2wJHMKgMswsdzahE2TsduOyvwRqoW6DrgWMVLVAkXo=
Received: from mail-hammer-was7.s2.krane.9rum.cc ([10.197.10.40]) by hermes of mail-hmail-was3 (10.197.6.229) with ESMTP id nA44BQXYZ1371643347 for <linux-ntb@googlegroups.com>; Mon, 04 Nov 2019 04:11:26 +0900 (KST)
X-Original-Sender: manami1234@daum.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of manami1234@daum.net designates 203.133.181.10 as
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
e-height:1.5;"><b>FROM THE ATTORNEY GENERAL FEDERAL REPUBLIC OF NIGERIA. E-=
mail: abubakarmanami@rediffmail.com<br><br>Supreme Court of Nigeria<br>Addr=
ess: Federal Ministry of Justice HQ<br>Plot 71B Shehu Shagari Way,Maitama A=
buja,<br></b><div><b>E-mail: abubakarmanami@rediffmail.com</b></div><div><b=
>=EF=BB=BF</b><b>info.20187777777@gmail.com</b><b><br></b></div><b><br>Dear=
: Unpaid Beneficiary,<br><br>This is to inform you that in the course of my=
 investigation as director of payment verification / implementation committ=
ee I came across&nbsp; your name as unpaid fund beneficiary in the record o=
f the central bank of Nigeria and other banks that are suppose to get your =
funds&nbsp; released to you. My committee was set up by the payment reconci=
liation committee to verify and scrutinize all&nbsp;&nbsp;&nbsp; outstandin=
g debts owed to&nbsp;&nbsp; our foreign beneficiaries in accordance to the =
information received from the United States government and other countries =
over unpaid &nbsp;<br>huge debts owed to Foreigners.<br><br>Having seen you=
r file and my further questioning to the officials of the central of Nigeri=
a bank and ministry of finance as to why your&nbsp;&nbsp; payment is still =
pending reveals the rot and corruption in the&nbsp;&nbsp; system. The bank =
officials told me that the reason why you haven't&nbsp;&nbsp; received your=
 payment is due to your inability to pay for the required charges for trans=
fer of funds to your account. When I asked them&nbsp;&nbsp; why they didn't=
 deduct the said charges from your principal sum, I was given the flimsy ex=
cuse that you never authorized them to do so.&nbsp;&nbsp; When I put the qu=
estion across to them if they ever advised you that such charges could be d=
educted from your principal fund,the answer I&nbsp; got was no. Now, if you=
 do not tell this beneficiary that&nbsp;&nbsp;&nbsp; such charges could be =
deducted from his or her principal fund, how will he or&nbsp;&nbsp; she kno=
w that such options are available for such beneficiaries. From my investiga=
tion I discovered that these bank&nbsp;&nbsp;&nbsp; officials&nbsp; deliber=
ately refused to let the charges be deducted from your principal fund&nbsp;=
 because they want your fund to remain trapped in the bank, <br><br>while t=
hey continue to extort money from beneficiaries under some flimsy&nbsp; exc=
use. You do not need to pay any money to any official, all&nbsp; you are re=
quired to do is swear to an affidavit at the federal&nbsp;&nbsp; high court=
&nbsp; of Nigeria, authorizing the bank to deduct all charges from&nbsp; yo=
ur principal fund and transfer the balance of funds after deduction to your=
&nbsp; bank account. If you have spent any money in&nbsp;&nbsp; the past in=
 your quest for payment, kindly let me know so that I can follow this up. Y=
ou can&nbsp;&nbsp; reach me on my phone or email for directive on how you&n=
bsp; can get the deduction done as soon as possible&nbsp; and get your paym=
ent also.<br><br>Yours sincerely,<br><br>Barr. Abubakar Malami (SAN)<br>E-m=
ail: abubakarmanami@rediffmail.com<br>ATTORNEY GENERAL FEDERAL<br>REPUBLIC =
OF NIGERIA.</b><p><b><br></b></p></div></td></tr></table>
</body>
</html>
<img src=3D"https://confirm.mail.daum.net/confirmapi/v1/users/manami1234%40=
hanmail%2Enet/cmails/20191104041125%2ENbW9B14XQEmlFOLHvbSW5w%40manami1234%2=
Ehanmail%2Enet/recipients/linux-ntb%40googlegroups%2Ecom">

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/20191104041125.NbW9B14XQEmlFOLHvbSW5w%40manami1234.han=
mail.net?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/=
d/msgid/linux-ntb/20191104041125.NbW9B14XQEmlFOLHvbSW5w%40manami1234.hanmai=
l.net</a>.<br />
