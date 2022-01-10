Return-Path: <linux-ntb+bncBDPNRNUM4INBBB7B6CHAMGQE4HV65CQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEAA489952
	for <lists+linux-ntb@lfdr.de>; Mon, 10 Jan 2022 14:11:36 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id c188-20020a1c35c5000000b00346a2160ea8sf2156498wma.9
        for <lists+linux-ntb@lfdr.de>; Mon, 10 Jan 2022 05:11:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641820296; cv=pass;
        d=google.com; s=arc-20160816;
        b=vFH84nmUtLrfB2B5ZgXdEuhIq5JDvj/I0vvqEiZgy26x4yhtpg8Ht7rtPSwANt91Sd
         rIB5+BS+4w6KE+gk6ZXMy9GkB0SQrdO4iPx2ZnTEIXrkqsVSX1b6c1W3nzCgt7lPZrk2
         rT8zHqMOqRabJH0NfYu1xIXIITr0shdcwecZpOQK3Ew/50deAYSZJdOOvfpMrFJXcL/5
         1cM+MKgE5nQoUhyleIBQLgWMuoAvD/IYLFb9oxAzdpyothdKbpQaYEcGS4Ee7ysKiXjE
         ykDnjV1TXHflo2zWiytT7YagNTbq4w1InCKEfPk1luryBuSQVkT4c1qN65OiusBO80Vq
         vw+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=pFIGTwp+xfpa9w+Rdqd80154xtm8Vmkxtjg8OHaq+tU=;
        b=VYoq2Em5iChbtHtNTOhMmUxBiFzOYIgkS75XfQ+LTD+gPpLG6SbHIkhi7iUtkgKx4P
         VPuOLS7+CQkT1rI9FNNY1PdGaxrHFoJ5xS4DQOYeTHT3dBCUX+cK8FDPQuqC8xzl4rHL
         OKleimlWQAJ3lfar7HfObYfsscUTxjX2V6BaqQCHvDP946g9kl0dfyEKlK95p6drrWNz
         H697XEQnvq/zOMWgOdTrvMA4Zp8JzV346OG5x8HB+26h+G//cRqZnd6ZWXMLj4germMo
         BoqKo5GszU89sNVq2HMvmcJlyXtWdPuSsXnWcv5qBuTFzrj6UbE2UI2j6Cl4OSqb1Ygf
         5ntQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bgie3w5l;
       spf=pass (google.com: domain of westernunion.benin982@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=westernunion.benin982@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFIGTwp+xfpa9w+Rdqd80154xtm8Vmkxtjg8OHaq+tU=;
        b=U5cAwEP6qZjNqzpYrecOy0nmD0n6ta4NFKKxB71dor9G1cUJbdOXPOcswqqOUACs8c
         UphdnI67HwySICAbtuIjyDotNjuV1wMXuEWoHcvZGRF9P40nsUvmRlotjU9LtUFE0sJG
         TxvFidbzvgy3AyeAzVNGXPX7oJprR7OdqwWHS9bUfF7AnRBac8KLYIx0b1ctZ+K5iiM/
         gjOfiOyLNbD65p0gZY8RJZ8cAfAgIdTJ0nVhIPqTL6L+9NaLyzLBPqBv5ZUL+M3B4IIL
         gJzXFlvUAxjmWFKAg+tzvI8mjDf2QNwTklcm8rCqKo0/uBWEv80y3EOMtBJaB/U0HWqw
         btSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFIGTwp+xfpa9w+Rdqd80154xtm8Vmkxtjg8OHaq+tU=;
        b=UrYYQmd1OxA/UzlS8VfxfA+XQhhHPGDvpRX8rWrqoCqzWHLAWDkusNBUXK2SPF245M
         M3vHmD/m/j8Gc1hDI1v1E067PQomE3gBMZUUVEL3G0yvz6f1uNl3vT8AKIjqSRBJm7Tp
         j4RpieVqnPZHnoLGWF9AfEMP8gK4LQFnXzwwExbdAUgQPJudky5UeK0Mupfkc1p548o5
         H5ql1rcyZq1zRg/McHJaqhOUiR14i++HwKm+Nvi5AL3n6X9KEYCG2GRaMjDxmGYAB4bl
         OT2F2hlCf+TCX6yVgBrlwytDErPsgZL3qMryb0eGpKF3cgIFmANk3PPo21s8CY0+whDm
         1bFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFIGTwp+xfpa9w+Rdqd80154xtm8Vmkxtjg8OHaq+tU=;
        b=Ykh2xBpdwsQgeMunTA+9MELME+wYYYcqI1i4CXHGFYdDGn0XAkkXHmcE1cS6N52IUJ
         qiUdFBNv+1IlQ9pVPrexj6Ho/fGtqGB3/7KJukteY9qh0cjXiwu86b2SbOBNfdhLkuT2
         0hBbtBOUFmuo1B3aN4pZS42iCKRSmlrwQjw3PGSRWHm3TKt8n1hLRcfQUtuokCDkl4EI
         hd/2P+jvhGSrXan5XJTrRp8FIfoGh68CC1h70a7YkYC1V5+Q5lyfZDvDEPHKNWbt/T1d
         2CYxuOhebAwYtQyFrZtqWRzylDWh+d2OyLEBQwewRS6E/xFuKcmirDruZ5ixCyyWiANB
         20Rw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533vZUIoM5xG3CZb2qZ09Angj+JDsqXDC5tc3vYhu6duSRVLUqRY
	tdz4V8KBGNyanYs8hS4E4dA=
X-Google-Smtp-Source: ABdhPJwVf8WvjWfYTpQ4LEd8UJIgB/mrBIfgG/XXPU0I8oIgkrAzO5aCJHlDY8UbIAAVq11PimUJbA==
X-Received: by 2002:a1c:4e04:: with SMTP id g4mr21991183wmh.156.1641820295857;
        Mon, 10 Jan 2022 05:11:35 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:522c:: with SMTP id i12ls104952wra.0.gmail; Mon, 10 Jan
 2022 05:11:34 -0800 (PST)
X-Received: by 2002:adf:f287:: with SMTP id k7mr3884545wro.417.1641820294732;
        Mon, 10 Jan 2022 05:11:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641820294; cv=none;
        d=google.com; s=arc-20160816;
        b=t8hOaAtDHL3fvcKojuTK1UA4E6KqSVmMytbQ6WEgs6Sqbb72pq5o2GCW7zExH46VKA
         SRvYsVBfmS82GR9liI7Xbac0gvnSDY3DRnl42WyS6N69DuSE0x/swhYxhjyUOJCAItMw
         6PhM71M+uJiI7br9UpxMZKhg81URwxAMLJZxWbS6zzjLod6cNdFxwMFb22+UhKQTU9nf
         TJbU+hCVLCvvkuebDelkI7StSPXKL7X1qmchzyqWqYa43TrbR8QXSmw/PGz1xWk4n4RF
         5WPvvPJcmWKujsMgDMjGwA5V6Ry+zYUJ1KxT9M9RRJ2RTrPLo7HFpyphEG+I1s/hcvxH
         FKbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=STst/NZz7XpLuhkw/fjT1YooCLQUEgoChj9j28RAYfs=;
        b=hsdiCqnIXwuGIHynHNYfMAICdQ/V5nYI2OX1xYCuBkCSHWjtukzxZwZ2J96foFjD31
         TDviIKllAD0Mm3+GK2sIR8tUXpvJ9ELqSJRz/KJKVrftxbxNASJUC2g8LNVQ1X+vmasc
         W5BQpBJnct0C0bnXSRtoh/AagOFlMc9E+Rt5KPVJ3IP6O0x0cTjVWccDeXmLnOUg7oah
         4JFoQ3uu9o0ZP3ozl6Os/gXsSSfXulnPgGj30fwyBRBbVL+YYXPGXL2Ae3OB5mrVgIFN
         pgOYj7G1S9m/iejYCQuG6jiqZPurVSiNXo2TVgMG8XvpW/cDKsru0SZ37O3eGJ0toRKK
         CMYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bgie3w5l;
       spf=pass (google.com: domain of westernunion.benin982@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=westernunion.benin982@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id az12si256303wrb.6.2022.01.10.05.11.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jan 2022 05:11:34 -0800 (PST)
Received-SPF: pass (google.com: domain of westernunion.benin982@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id j11so44144728lfg.3
        for <linux-ntb@googlegroups.com>; Mon, 10 Jan 2022 05:11:34 -0800 (PST)
X-Received: by 2002:ac2:4c51:: with SMTP id o17mr60639917lfk.558.1641820293776;
 Mon, 10 Jan 2022 05:11:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6504:15d1:0:0:0:0 with HTTP; Mon, 10 Jan 2022 05:11:32
 -0800 (PST)
Reply-To: gtbank107@yahoo.com
From: Barr Robert Richter <westernunion.benin982@gmail.com>
Date: Mon, 10 Jan 2022 14:11:32 +0100
Message-ID: <CAP=nHBK9zHzp_=-EVswWQiLxEoc+HV4oqddgtnEqf-9qYab_4Q@mail.gmail.com>
Subject: Contact GT Bank-Benin to receive your transfer amount of $18.5m US Dollars.
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: westernunion.benin982@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=Bgie3w5l;       spf=pass
 (google.com: domain of westernunion.benin982@gmail.com designates
 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=westernunion.benin982@gmail.com;
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

Attn,Dear
I need you to know that the fear of the LORD is
the beginning of wisdom, and knowledge of the Holy One is
understanding. As power of God Most High. And This is the confidence
we have in approaching God, that if we ask anything according to his
will, he hears us. I will make you know that Slow and steady wins the race.
It is your turn to receive your overdue compensation funds total
amount $18.5Milion  USD.
I actualized that you will receive your transfer today without any more delay
No More fee OK, Believe me , I am your Attorney standing here on your favor.
I just concluded conversation with the Gt Bank Director, Mrs Mary Gate
And She told me that your transfer is ready today

So the Bank Asked you to contact them immediately by re-confirming
your Bank details asap.
Because this is the Only thing holding this transfer
If you did not trust me and Mrs Mary Gate,Who Else will you Trust?
For we are the ones trying to protect your funds here
and make sure that your funds is secure.
So Promisingly, I am here to assure you, that Grate Miracle is coming on
your way, and this funds total amount of $18.500,000 is your
compensation, entitlement inheritance overdue funds on your name.
Which you cannot let anything delay you from receiving your funds now,

Finally i advised you to try your possible best and contact Gt Bank Benin
once you get this message to receive your transfer $18.5 USD today.
I know that a journey of thousand miles begins with a single step.
Always put your best foot forward
Try as hard as you can, God give you best.
take my advice and follow the due process of your payment, the
transfer will be released to
you smoothly without any hitches or hindrance.

Contact DR.MRS MARY GATE, Director Gt bank-Benin to receive your
transfer amount of $18.5m US Dollars
It was deposited and registered to your name this morning.
Contact the Bank now to know when they will transfer to your
country today

Email id: gtbank107@yahoo.com
Tel/mobile, +229 99069872
Contact person, Mrs Mary Gate,Director Gt bank-Benin.
Among the blind the one-eyed man is king

As you sow, so you shall reap, i want you to receive your funds
Best things in life are free
Send to her your Bank Details as i listed here.

Your account name-------------
Your Bank Name----------------
Account Number----------
your Bank address----------
Country-----------
Your private phone number---------
Routing Numbers-------------
Swift Code-----------

Note, Your funds is %100 Percent ready for
transfer.
Everything you do remember that Good things come to those who wait.
I have done this work for you with my personally effort, Honesty is
the best policy.
now your transfer is currently deposited with paying bank this morning.
It is by the grace of God that I received Christ, having known the truth.
I had no choice than to do what is lawful and justice in the
sight of God for eternal life and in the sight of man for witness of
God & His Mercies and glory upon my life.

send this needed bank details to the bank today, so that you receive
your transfer today as
it is available for your confirmation today.
Please do your best as a serious person and send the fee urgent, Note
that this transfer of $18.500.000 M USD is a Gift from God to Bless
you.

If you did not contact the bank urgent, finally the Bank will release
your transfer of $18.500.000M USD to  Mr. David Bollen as your
representative.
So not allow another to claim your Money.
Thanks For your Understanding.

Barr Robert Richter, UN Attorney At Law Court-Benin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAP%3DnHBK9zHzp_%3D-EVswWQiLxEoc%2BHV4oqddgtnEqf-9qYab_4Q%40mail.gmail.com.
