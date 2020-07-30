Return-Path: <linux-ntb+bncBDLKHZW5VIMBBMN5RP4QKGQE75V2DMQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 911212334CA
	for <lists+linux-ntb@lfdr.de>; Thu, 30 Jul 2020 16:52:34 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id q16sf6090726lfm.2
        for <lists+linux-ntb@lfdr.de>; Thu, 30 Jul 2020 07:52:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596120754; cv=pass;
        d=google.com; s=arc-20160816;
        b=WRqvOELOsgjEnkfESdMIxdwwVN3K/S9eMWI6PX/pvAk/CpGmlztZK8PT/SDI98YZYz
         y8koMBYM8tBfnUMQJ2C6C6DQC6IMc/EzcNd9Ni/GPZf6XYhAEbi76X8enVGNefvIxr2v
         ryRjgH3sFcoC1wcoY9sMYs09qX3fFH0zWxmQP8qVq8gxdL3iMAtTRIYKxhrtNEcObG86
         6bnrKYfxsRwa3EPG9rQBfWwkTozaHOVxIXZgF5AP/Jp+TsXNU96Oh/QVlKcM/hGf5Pny
         u0UHuJlTf9zjRqwMYyAAxlTqbBk+MyMkktvGvapiw5NevLh4fbkdRfyICbhhLRNRL09X
         sshA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:date:subject:from:reply-to:message-id:sender
         :dkim-signature;
        bh=ohWi7us+Qb3Z6P2oqUDReJmvWpojgOHaRHWWBf12zi4=;
        b=dpbP3SnKRfb9pW/9URVWfVP6iK7Yx35YaMBC8CmVvGCSwAiQMjswebsUpgczz3JYMI
         OZWMvg+OthMZKQSh3DnJBUFZ5WCF9KbCIfKFo1oC0edZi8Eo2d/qSSJ04/PWRxBTQJEq
         bOUwrlum+9dpHu8SpM0s6W1EN89kBM5M3CCvcF9jjaV7gTJbm/PkUtvOp2pL/m7tAj/4
         Y7Ft09LzBjz6X81xT4HkOk2GVhEyH5+pL4hkfp5WISiJFpS+GuawUUANRLjeCa3P11LI
         H7BD7q6ZPt8fltlZW9h6CVhJf0z7exRuGDmGrIRSv2saBv5kNJTbqg9k6yDTwrPYNCeK
         +wTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@quintadapigarca.pt header.s=default header.b=pWcFhgWA;
       spf=softfail (google.com: domain of transitioning express@lestarijayaraya.com does not designate 188.93.232.9 as permitted sender) smtp.mailfrom=express@lestarijayaraya.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:reply-to:from:subject:date:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ohWi7us+Qb3Z6P2oqUDReJmvWpojgOHaRHWWBf12zi4=;
        b=khssJ9zvbX4+EGLbJEUg03uRpoSCucrwBHe7+YtXkZ3gQ2EOCLJNMb1gugu0B+ZIIo
         1Km6+++7yS+DnMSL76ZRH/BXRRz5Fup6JluubLhNRWU4DytLie3TJmyNZoTcBLjWjJTL
         dyy3l2PYStr1BlKInts20xJZkwDWnLbFJzXRkAwLyA+QZDN1R+S2mwg/FQljxlr6FP/+
         nYD3JWq5za4EEnRgySCd5Z4v+H1s8ubBgyppohN27tiaesnK5Hz0ArMsFT8i9T/dQtY8
         OA7rlAJVM72t8awq9X5F5rtX4VrZp4gM0i2qLHSr3f99pZBIQ78YF3Pm0fJmXQqy+sew
         mLAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:reply-to:from:subject:date
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ohWi7us+Qb3Z6P2oqUDReJmvWpojgOHaRHWWBf12zi4=;
        b=ZQTZqXam7sLw8SUWgo6Nqht6HYZhtkBrHpsL3NPbiHFmsbo7+KejL+E6PZOuNUjKF4
         UGYJe/tmdgbpV6cHzhItAIhd++RXLcomOhiJcEXZmtWSZrmhI8gd7BBKG7ChX6fB9o4o
         spy36w3NeMgGyJn/tsiDJairYWjYOo3BX63doqCcE/dndoyuzegNNjVUr4WLj+prAFR1
         x71/k0GYD9xhIDGo6NIGNtS6Uo+o9LXAaltjZ7ux42waA1CZckOqprXqPec5iQ87QeUG
         u96kieozT6jWWLoHgyLV913qkOkdVUF3ut1W7e5HyptcfNfLEN99zrrL+Dacnvz8625U
         EHfQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531+/5KJxfCmJD0qaWVQiO1R33/h143NMsmMaswvuEOGTUH+b0zh
	wmULTuLF1F/+chhvg5H8GGQ=
X-Google-Smtp-Source: ABdhPJyWxKTOdR1efV+T2OsLoOoQ+xg7IjqPj8pbIWnqCCCR6sA7i53KMf6Mtpi4FX4EHHSactf4Uw==
X-Received: by 2002:a2e:9c8e:: with SMTP id x14mr1582324lji.451.1596120753994;
        Thu, 30 Jul 2020 07:52:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:2c01:: with SMTP id s1ls1180310ljs.10.gmail; Thu, 30 Jul
 2020 07:52:27 -0700 (PDT)
X-Received: by 2002:a2e:9888:: with SMTP id b8mr1791155ljj.383.1596120747360;
        Thu, 30 Jul 2020 07:52:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596120747; cv=none;
        d=google.com; s=arc-20160816;
        b=EkKVqv01jFTydFlP9ZS0g7KApx21GLIZ+iOEBhK1wKyCDaz9p1RPUomdyRhUSwwJuF
         NNGjbdDbV1Nl+ul+TOiiI7P7BTwra1etetnwCaIWrC5KWgHMaxLDZWkV2SWBPsPCdEIT
         CQ0hqZGxEpO9hhawMlie6l36dC9Uz/5EcQu6ZMOlDhVPwZFgSqwrPTkV54UWhh3fvtfB
         yMG2tmSfTopPDXH5c5b8C6O6ky0rmJYGIi3AkrByyKcCtt4qi/LKtSZXjhTMhEDRXthK
         ch5+RYYcZqbUsiMeKd9qaS/SL6OvYIXVbPyz2LQ10RkNuUokfvG9NMaOPOqH+obhBnHH
         OnBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:subject:from:reply-to
         :dkim-signature:message-id;
        bh=INIhr1tPDwXsAtkXRl5tY8J0NtnkBk1h43hhNQaRHw8=;
        b=UqezAfWHhrdjNcQ21jZOYXcytq7uI+KC10nWgtQqOExeSgoevYT0EZdStttN9pFrYf
         WrR38puPCzRHDvChrC+OtViDxqGl3iIE/7slN68gYR9NBsV3lJ00NFl4vYhhrgRoKzsC
         dFZkcgYDToo/Nrx00FHK1UnafcDfxveTKw2FkNuo/Y0hYYFbQF2i6BCfum7nYfAZB4d4
         U0Bsrc7X5eTqHE2SyZPNXnO8jCi2JZ4vXBHV0OQCpsMue9RBSAZIOl7u8I2ITJNZtdep
         yzD3gML8aKzIMquWQc8P4ZHy+4ToJJPGEB19m0eFQIZDz7z0QsKwElfEGgBdb0tornsg
         bjbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@quintadapigarca.pt header.s=default header.b=pWcFhgWA;
       spf=softfail (google.com: domain of transitioning express@lestarijayaraya.com does not designate 188.93.232.9 as permitted sender) smtp.mailfrom=express@lestarijayaraya.com
Received: from earth.dotsi.pt (earth.dotsi.pt. [188.93.232.9])
        by gmr-mx.google.com with ESMTPS id c27si344037ljn.3.2020.07.30.07.52.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jul 2020 07:52:27 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning express@lestarijayaraya.com does not designate 188.93.232.9 as permitted sender) client-ip=188.93.232.9;
Message-ID: <5f22deab.1c69fb81.705da.2db9SMTPIN_ADDED_MISSING@gmr-mx.google.com>
Received: from [156.0.212.43] (port=21736 helo=User)
	by earth.dotsi.pt with esmtpa (Exim 4.91)
	(envelope-from <express@lestarijayaraya.com>)
	id 1k19ur-0007Uc-4a; Thu, 30 Jul 2020 15:52:17 +0100
Reply-To: <fbipayment600@citromail.hu>
From: "Mrs.Beal Paulette"<express@lestarijayaraya.com>
Subject: Re.important Message.
Date: Thu, 30 Jul 2020 17:52:17 +0300
MIME-Version: 1.0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - earth.dotsi.pt
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lestarijayaraya.com
X-Get-Message-Sender-Via: earth.dotsi.pt: authenticated_id: eventos@quintadapigarca.pt
X-Authenticated-Sender: earth.dotsi.pt: eventos@quintadapigarca.pt
X-Original-Sender: express@lestarijayaraya.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@quintadapigarca.pt header.s=default header.b=pWcFhgWA;
       spf=softfail (google.com: domain of transitioning express@lestarijayaraya.com
 does not designate 188.93.232.9 as permitted sender) smtp.mailfrom=express@lestarijayaraya.com
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

<HTML><HEAD><TITLE></TITLE>
</HEAD>
<BODY bgcolor=3D#FFFFFF leftmargin=3D5 topmargin=3D5 rightmargin=3D5 bottom=
margin=3D5>
<FONT size=3D2 color=3D#000000 face=3D"Arial">
<DIV>
<FONT size=3D3>Federal Bureau of Investigation (FBI)</FONT></DIV>
<DIV>
<FONT size=3D3>Anti-Terrorist and Monitory Crime Division.</FONT></DIV>
<DIV>
<FONT size=3D3>Federal Bureau of Investigation.</FONT></DIV>
<DIV>
<FONT size=3D3>J.Edgar.Hoover Building Washington Dc</FONT></DIV>
<DIV>
<FONT size=3D3>Customers Service Hours / Monday to Saturday</FONT></DIV>
<DIV>
<FONT size=3D3>Office Hours Monday to Saturday:</FONT></DIV>
<DIV>
<FONT size=3D3>Fax number: +13302303756</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>Dear Beneficiary,</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>Series of meetings have been hold over the past 7 months wit=
h the secretary general of the United Nations Organization. This ended 3 da=
ys ago. It is obvious that you have not received your funds which is to the=
 tune of $16.5million due to past corrupt Governmental Officials who almost=
 held the fund to themselves for their selfish reason and some individuals =
who have taken advantage of your fund all in an attempt to swindle your fun=
d which has led to so many losses from your end and unnecessary delay in th=
e receipt of your fund.</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>The National Central Bureau of Interpol enhanced by the Unit=
ed Nations and Federal Bureau of Investigation have successfully passed a m=
andate to the current Prime Minister of Malaysia Excellency Dr. Mahathir Bi=
n Mohamad to boost the exercise of clearing all foreign debts owed to you a=
nd other individuals and organizations who have been found not to have rece=
ive their Contract Sum, Lottery/Gambling, Inheritance and the likes. Now ho=
w would you like to receive your payment? Because we have two method of pay=
ment which is by Bank Cashier Cheque or by Atm Card?</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>ATM CARD: We will be issuing you a custom pin based ATM card=
 which you will use to withdraw up to $5,000 per day from any ATM machine t=
hat has the Master Card Logo on it and the card have to be renewed in 4 yea=
rs=E2=80=99 time which is 2025. Also with the ATM card you will be able to =
transfer your funds to your local bank account. The ATM card comes with a h=
andbook or manual to enlighten you about how to use it. Even if you do not =
have a bank account Cashier Cheque will be deposited in your bank for it to=
 be cleared within three working days. Your payment would be sent to you vi=
a any of your preferred option and would be mailed to you via FedEx. Becaus=
e we have signed a contract with FedEx which should expire by the end of Au=
gust 2020 you will only need to pay $280 instead of $420 saving you $140 so=
 if you </FONT></DIV>
<DIV>
<FONT size=3D3>Pay before the one week you save $140 note that any one aski=
ng you for some kind of money above the usual fee is definitely a fraudster=
s and you will have to stop communication with every other person if you ha=
ve been in contact with any. Also remember that all you will ever have to s=
pend is $280.00 nothing more! Nothing less! And we guarantee the receipt of=
 your fund to be successfully delivered to you within the next 24hrs after =
the receipt of payment has been confirmed.</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>Note: Everything has been taken care of by the Government of=
 Malaysia, The United Nation and also the FBI and including taxes, custom p=
aper and clearance duty so all you will ever need to pay is $280.</FONT></D=
IV>
<DIV>
<FONT size=3D3>DO NOT SEND MONEY TO ANYONE UNTIL YOU READ THIS: The actual =
fees for shipping your ATM card is $420 but because FedEx have temporarily =
discontinued the C.O.D which gives you the chance to pay when package is de=
livered for international shipping We had to sign contract with them for bu=
lk shipping which makes the fees reduce from the actual fee of $420 to $280=
 nothing more and no hidden fees of any sort! To effect the release of your=
 fund valued at $16.5million you are advised to contact our correspondent i=
n Asia the delivery officer </FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>Mr.Serene Neo </FONT></DIV>
<DIV>
<FONT size=3D3>With the information below,</FONT></DIV>
<DIV>
<FONT size=3D3>Email: fedexexpress2@citromail.hu</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>You are advised to contact him with the information=E2=80=99=
s as stated below:</FONT></DIV>
<DIV>
<FONT size=3D3>Your full Name..</FONT></DIV>
<DIV>
<FONT size=3D3>Your Address:..............</FONT></DIV>
<DIV>
<FONT size=3D3>Home/Cell Phone:..............</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>Preferred Payment Method ( ATM / Cashier Cheque )</FONT></DI=
V>
<DIV>
<FONT size=3D3>Upon receipt of payment the delivery officer will ensure tha=
t your package is sent within 24 working hours. Because we are so sure of e=
verything we are giving you a 100% money back guarantee if you do not recei=
ve payment/package within the next 24hrs after you have made the payment fo=
r shipping.</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>Yours sincerely,</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>Mrs.Beal Paulette</FONT></DIV>
<DIV>
<FONT size=3D3>FEDERAL BUREAU OF INVESTIGATION</FONT></DIV>
<DIV>
<FONT size=3D3>UNITED STATES DEPARTMENT OF JUSTICE</FONT></DIV>
<DIV>
<FONT size=3D3>WASHINGTON, D.C. 20535</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
<DIV>
<FONT size=3D3>&nbsp;</FONT></DIV>
</FONT>
</BODY></HTML>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/5f22deab.1c69fb81.705da.2db9SMTPIN_ADDED_MISSING%40gmr=
-mx.google.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.googl=
e.com/d/msgid/linux-ntb/5f22deab.1c69fb81.705da.2db9SMTPIN_ADDED_MISSING%40=
gmr-mx.google.com</a>.<br />
