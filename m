Return-Path: <linux-ntb+bncBDLLLYWA2UDBBYWZRGEAMGQEOI4CVDI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BBB3D9FE2
	for <lists+linux-ntb@lfdr.de>; Thu, 29 Jul 2021 10:54:59 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id t7-20020a0568081587b029025c900aa571sf2747704oiw.0
        for <lists+linux-ntb@lfdr.de>; Thu, 29 Jul 2021 01:54:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627548898; cv=pass;
        d=google.com; s=arc-20160816;
        b=lkUJUkcu4ZaOxQeiTr52h/affcSpDZjomYl2AFC7Gr8vTkObRo+6n3y5fY0qkm76Kn
         un+fP/EXXQbR8LADR2IzA9AR43gUUrgDuHxrwRAb8MNmHJtMMi9/OQqW3fN3jZ6aFxE3
         6iJHmhifohmVdeM5EgHODtcx+Sy1jjsIPy8YyzwkwYiibN3FU3/NvGdN78cAwOtaNLup
         RMco9N/gswIOB8snQVRet6dWjATf3JyWh3ChUNcT4V8aR6xVGUGni6xZfLHwO8ddkJm+
         CPfV2Lhe9GZDuxasTnNSxJ0Y5U2eyfgyjabvokvVXGT7qas++DFIRePc6RpjqfCYDxiD
         3cYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=bkJL41U5u06T7grnbt4vphQAibE/V+9JGLX36o34mdE=;
        b=hwrAKCLowqCPzlbC4K+I2hOZYvQ9gMsnFMFND1rV4hJGrjbVmNkx57BkzFrbJbbVO9
         1yr1A9QIZVHnIwM1Vta01LYFSvjAdjcp7Y7foayu4r9m7TLBdr719dGaeNa1EmDPf++M
         ZGN0yLnA0H3aU0pknsZwLhMun0dmiEfKbuhTiCOpzaKxvB84pC9xb05Bt8Zy571QXABm
         1qfk/8GSf5HIa7xGU1TU4qDWzwF6fm/eAwG2Gi8sIaiWypqK3fhQJbXsqxvikLrNM6BJ
         Yr+7kTcPAv9Bc/pnjPGzxrywETmmT4OhbZql5ZrH1B6nxtYvzK/l3MVq+uEZquy2YFy3
         looA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YwavG0wf;
       spf=pass (google.com: domain of ga3939798@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=ga3939798@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bkJL41U5u06T7grnbt4vphQAibE/V+9JGLX36o34mdE=;
        b=kBHxHSjF/PZxUtWAzwtnKwufe0tfoLdtFrzy5ghKyNECg4Vb2ztCATu4laYIis5h46
         PLBvqVQbhuD10qr+FIcR1ri4qQBrf1zy6UIYBJExcNL9hWxWMD8nhduMKME7fAA4pm3b
         E37NhVh4gzES4Q2yA0o/RXHijcw1jCLAPywkzaEd8Q9YqkJHpTy4F4ZfRw0TS3/xOn6x
         4RDA/xUN9H/J0Vmtfb/AlxNA4TBcH73Cl89S+b3oybbYJ+rMW6ba6CIlzCW/6tqyHFTF
         KNdLjYG/k596jZzYX8MFd1UaUUFOfqqF0khr5ESud4/VViOhDpRMzIpfwaDWSypFg26W
         oTlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bkJL41U5u06T7grnbt4vphQAibE/V+9JGLX36o34mdE=;
        b=F4q2VynNTx0K43BJ/qqdqgDx5AxQU9EPi8J5dSaFBU86/G4WBl2D+vRFNCpAhE3YVw
         EY5aECH3Pew04gO+H7XHWO4E1CvnA/ubZELYcj2u2xgoiW3GTTgNv0uqxOHOLW5o2L2M
         2M/9D1RqvCo3zVPqazirkk4b8W0/XzolrDO7kQlgzJxxCgSyUfsk0wfo3GQqiEJAfDwr
         6HBu32EaGHBHGj1ICEdiM/DtgtEZedc2KZTX50dXK6peNX/CNoTNVHBsgPWGiFplVDlj
         A28cScLkv9jh9gpHZFvbW+TpbZ8M6fRXfBPZq9gOSWnBtNp9qhtDWKlf3PkDoxnkk5hL
         abNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bkJL41U5u06T7grnbt4vphQAibE/V+9JGLX36o34mdE=;
        b=oJ7GYcGTRinfNwNBokzn6aUTXr5oyUGcT/9Czk7eiEUwvZ5c5AH+HDtUuY9vJp9oA2
         mlCpjxO7TRB9Q8QltragKMXXAL47zTHhNz2wXMrKs98uodahWlx0eS6EcWNvX2xhfGaa
         YKiXIRM0pgPdtOrfuIxXbwXuQGdyQhIXtD60ss83n2x9f6RvdO0pyOjwVHZM9vbVs4N3
         ZR3B+IbloWlQQ9Id5cS8Po0LTvO6giw4XNHBoj17S+2hn4hxIB3A6lRIsm3LoPNz/XUs
         8zoSc4ewlBwhs7kCCTaS9Xm/glZKKW6dK2KT7ljxll1vQHN3Grr1FBCR7ifePX0yVhAS
         yEow==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5304K4u8Zz0sXB0+70eIu9smvFA4U4t+/v7BIb7HiqQ0vFErwhMo
	nK8ItiwmL6o88SJmyNBI0Fc=
X-Google-Smtp-Source: ABdhPJyevqz0oC1fRJIPHiyUOIxzt8Jsnjz8yAos8X2PZE22Ff1RNtziwZDKIyvOdf1c62dsmR5MVQ==
X-Received: by 2002:a05:6808:1494:: with SMTP id e20mr8928028oiw.122.1627548898151;
        Thu, 29 Jul 2021 01:54:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:1d5:: with SMTP id x21ls1380461oic.9.gmail; Thu, 29
 Jul 2021 01:54:57 -0700 (PDT)
X-Received: by 2002:aca:1809:: with SMTP id h9mr9285364oih.4.1627548897805;
        Thu, 29 Jul 2021 01:54:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627548897; cv=none;
        d=google.com; s=arc-20160816;
        b=cPW0PqQKnaz96W+p+UuZweMBNbaY+Itj57O92xgd41JRCwe++MJv/8tFA5kUYIgrCQ
         emvrnP4axuv2LfJPz3M9g83PUReLnOB3XkSbNQBS0JVhBMwRzXjaX5jxVDAisrHaHVoz
         eDPTXUiQehnNCVgW/0obfMXStcR4DBGArHjlnDsxmON6EBsth5yFvbCBCUgFNwDre3c0
         DvkklSWYBDf1C0lRhxoITQmkIOCHTLo5eF1rZytL+1v3Sg/oWSspgQNPR+A1liqpurOA
         NKMVVGT0KabkExd5gw+g5YhMqrKQpkB/4rgiNQ4v/qb2CmNQKdtXISSNF0xgnN2RkDPx
         aAdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=pTUj+JrupeNrZlPH3X3mwAcgAjhFt+nbz+SrklduekU=;
        b=RZPBhf4F8IG2HkBDZ0rqmoYUxUyI686evlMnIwuW0le2wg5iX2BEJqSKutfVWTvQTD
         GFW5kbUCUu98MwB094eYEOIghxIn4D+dL4HDnUH5oirii3C3I5EABJmXKFtGeIuKq9yQ
         jHo2fEHiH3PQCmUm6Qry0x8qjCaIvYh358VsQuh4VGveB/WK68lWZD2HWsiRIG1j+cOh
         NJ9f8Z4aKI9itD4ar8Ho3SyO+YPfJYQQdWORnOZ4sswXdpdWFNjLtbmxmcql/pMbkYHB
         GNFjPXMdGVAhh9JI/HUZsddn6WFXaS1vc5w8fCAVURafoyBfV1hY9oRL/f1exMaHBZ6b
         9uYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YwavG0wf;
       spf=pass (google.com: domain of ga3939798@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=ga3939798@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id m22si238393oie.5.2021.07.29.01.54.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 01:54:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ga3939798@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id a13so6095336iol.5
        for <linux-ntb@googlegroups.com>; Thu, 29 Jul 2021 01:54:57 -0700 (PDT)
X-Received: by 2002:a6b:e207:: with SMTP id z7mr3103604ioc.111.1627548897550;
 Thu, 29 Jul 2021 01:54:57 -0700 (PDT)
MIME-Version: 1.0
From: Ms <ga3939798@gmail.com>
Date: Thu, 29 Jul 2021 09:54:13 +0100
Message-ID: <CAGPn9P6mCfzf_oO60t39OMigWFKyobxNGLB11hu8i5xvfqZt=Q@mail.gmail.com>
Subject: RE
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000e4a4a605c83f4116"
X-Original-Sender: ga3939798@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YwavG0wf;       spf=pass
 (google.com: domain of ga3939798@gmail.com designates 2607:f8b0:4864:20::d2a
 as permitted sender) smtp.mailfrom=ga3939798@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000e4a4a605c83f4116
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Greetings, I=E2=80=99m writing this message to you with heavy whimper in my=
 heart,
tears in my eyes/pains and great sorrow in my heart and soul, I'm bereaved
from every side of my life, I call it Vanity upon Vanity, I'm Rev. sister
Carla Mona, I have been hits with evil Cancer which has gotten a worst /
dangerous stage at me, and the doctor said I have only few days live,

As an orphan and a catholic Rev Sister I decided to hand you over this sum
of $4.900.000.00 USD (Four million Nine hundred thousand united states
dollars) as trusted traits to facilitate wealthy accomplishment in life to
underprivileged people in the world because I was too shocked when the
doctor stated I have only few days to live, I cried as all that I have
worked for the good work for God almighty in life is gone, My houses, cars,
schools and money is gone,

I have already instructed my deposited Branch Bank Manger to take directive
from my Lawyer and I have also as well spoken to the lawyer today about you
as the person who I wishes to handle this assignment to help humanity and
Orphanages since evil cancer wants to take my life away to leave all I have
worked for underprivileged people in the world and the lawyer is waiting to
hear from you

Let you establish immediate contact with the lawyer and work with him as he
is a trusted elderly man He is the only person there that I am confiding in
as I do not want to let other people know about the transfer that I will
make to you, below is the contact of the lawyer (
practitioner-office@consultant.com)

I pray that God will give you health and courage to undertake this for me
and you shall pray for my emergency surgery operations to answer my call to
the almighty.
Rev Sister Carla Mona

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAGPn9P6mCfzf_oO60t39OMigWFKyobxNGLB11hu8i5xvfqZt%3DQ%40mail.gmai=
l.com.

--000000000000e4a4a605c83f4116
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings, I=E2=80=99m writing this message to you with he=
avy whimper in my heart, tears in my eyes/pains and great sorrow in my hear=
t and soul, I&#39;m bereaved from every side of my life, I call it Vanity u=
pon Vanity, I&#39;m Rev. sister Carla Mona, I have been hits with evil Canc=
er which has gotten a worst / dangerous stage at me, and the doctor said I =
have only few days live, <br><br>As an orphan and a catholic Rev Sister I d=
ecided to hand you over this sum of $4.900.000.00 USD (Four million Nine hu=
ndred thousand united states dollars) as trusted traits to facilitate wealt=
hy accomplishment in life to underprivileged people in the world because I =
was too shocked when the doctor stated I have only few days to live, I crie=
d as all that I have worked for the good work for God almighty in life is g=
one, My houses, cars, schools and money is gone, <br><br>I have already ins=
tructed my deposited Branch Bank Manger to take directive from my Lawyer an=
d I have also as well spoken to the lawyer today about you as the person wh=
o I wishes to handle this assignment to help humanity and Orphanages since =
evil cancer wants to take my life away to leave all I have worked for under=
privileged people in the world and the lawyer is waiting to hear from you <=
br><br>Let you establish immediate contact with the lawyer and work with hi=
m as he is a trusted elderly man He is the only person there that I am conf=
iding in as I do not want to let other people know about the transfer that =
I will make to you, below is the contact of the lawyer (<a href=3D"mailto:p=
ractitioner-office@consultant.com">practitioner-office@consultant.com</a>) =
<br><br>I pray that God will give you health and courage to undertake this =
for me and you shall pray for my emergency surgery operations to answer my =
call to the almighty.<br>Rev Sister Carla Mona<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAGPn9P6mCfzf_oO60t39OMigWFKyobxNGLB11hu8i5xvfqZt%3DQ%=
40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goo=
gle.com/d/msgid/linux-ntb/CAGPn9P6mCfzf_oO60t39OMigWFKyobxNGLB11hu8i5xvfqZt=
%3DQ%40mail.gmail.com</a>.<br />

--000000000000e4a4a605c83f4116--
