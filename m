Return-Path: <linux-ntb+bncBCNYJDE55YMBBIPO3SHAMGQEXIVOCJQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id D6ACB486A07
	for <lists+linux-ntb@lfdr.de>; Thu,  6 Jan 2022 19:38:27 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id d127-20020a623685000000b004bcdb7cce18sf2188558pfa.21
        for <lists+linux-ntb@lfdr.de>; Thu, 06 Jan 2022 10:38:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641494306; cv=pass;
        d=google.com; s=arc-20160816;
        b=ba9Cj0wO5wI1bPMwCKbeMpmGu5DI6x8qpDORLbQ7+1RvBYRAphXMyT31MHx3yGRcK2
         dZk7CeNBtTTpkTanikpi+mBKedsUQWWXzW+4K8HMYSuVQ4/+FOT0KyNA7TqplIiyBxpf
         yLyi39jia147C2SQyIL2AetG1W0bL/agtKkLoc1KYlytKrsjUeTQ+0vwiqvvtKeXQT7W
         i2A7W+xRHzxI+QTETnZzt1ZhJvMCNU6YDcezmdaB8DVRgIZ2i9omJ4zjUc8s3LZoMMUO
         xJabIkIKC4RTNHctVcErDEmYzAlGzTK84Z+YFl+xvkLzaiemS6OtZjBUQppEk4tFnvp/
         vJpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=QUlqUaKHYb1XsVjbDp5iOBMciRRS0t6lCxuMA3jKSyM=;
        b=rGAa3r6ETGd6qNXBrWAJfAW79C7W+Ir/XwVRXnymwTSeqKm+clI5rliXOkaWZYiDQI
         xInVL3q/7ejs/HlmxjV6NHmk82b4q7qHMwCXTiV3o9DvIEhPqyFdp1Wc8evwb9sJD6el
         RyQud0k+LzLa2aKQP7suUPPtIs+TmGk5hl6Eu6C5MYLO2F1uCigWoktXtXc+a+GphMuF
         7LKGsFVhzBcuO2dofgehpVmGey8I4L2vw3K3Kl1eriN9diYuq4XJ+ZdX/u1xE7LodwFq
         PoXa0d2NKJse9zxcHwGQ3woHZ9JYwoB5K4/Kk3/OHUHrewGvoZLEg4vSaA8kVaEOIAMy
         b03g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=I4TLwEHw;
       spf=pass (google.com: domain of agnaby84@gmail.com designates 2607:f8b0:4864:20::92c as permitted sender) smtp.mailfrom=agnaby84@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QUlqUaKHYb1XsVjbDp5iOBMciRRS0t6lCxuMA3jKSyM=;
        b=qD/oINouP9/kgdlm1o1DMaxhTKx0LenYJLH6na7rCI/gZU1tiY/Akc1rF82EXRutLS
         0xWfexX6ucfte+mIB9CMcLY9KZlVsQ/T/5NhXD89eyVeSy2wZ29z4OFb2XDvrq6BHtns
         tGHvlpEVCYpxlwa+udl5wTyoU6eQf3dWgNQ6QjjY1fAM3oYnXityD41+WnLzl9sw9ZDH
         HlbyhoqfhjZdiaRBor+Stdvlgyp4WxP78rZ2bboCBRhhgp39VUa5ZOaDiQ4FhbuLYwZb
         GsGNEhUHm0E9onRkp1mTTKTLQObbRu2Kx8T97SvLmtEMy4oPtbblgskBKiacseL2eylk
         o5Wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QUlqUaKHYb1XsVjbDp5iOBMciRRS0t6lCxuMA3jKSyM=;
        b=EhI2+1pF7cghJwwJFptzhc0Mn59TN5ivN+5xt6WslcYjtyXC8Zo5mJG4+clrv7LZIl
         8Claa4UC8qGX876kzhAv9nR1mSq4EY2E/CNCk2Q5TgJwZwoGnLMcuxhlTda2K6S/oEir
         MKLy7JX8gBJqaEGPi6FOAylj/5NuWKlQqKRlcIXcxf1YjWhvo2uKYbPmaUZ+JOr/UoI8
         DmAtHgBra2NgdaDSRV8j9Q5BLMx+B4vDaWuxF6B76Bs9N87i8bgQLL6rZQXdU6NKVe0S
         zBiIpRmzxrknAMaRjpLtbMqnEXVhpXydp1ABUjrPk9J1OyiSF4ULcIG0mFg6CZlOkZVT
         bInA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QUlqUaKHYb1XsVjbDp5iOBMciRRS0t6lCxuMA3jKSyM=;
        b=j/VcNbVoOvtsYSamr0gPBTaQQ4ejJhCAdaYO7Tq3QCRrVgSkO5w+NEFMO6uAWeVIQd
         Fl7BW6iSQrXlE2Q/yQZsHR1rFlyIYvBe5q8iEvQZxv9Qvdd25oOWwuM/IsC9TOI+f6y2
         vLTtZEdoQBQ85OfwayVc9MWDjzD5MCuI/EQWFMS2QPBvv8OanDdCak0Atg/bW02DoJ5M
         fjBT8s4dkfQ4xt1VNPjAtdTrvRceWN8ID+3AvOWPLv50skMW4DZ8RQtVDM7n6swpHF2i
         8pmOPEcSQqnZzf/mF24xr0bWsZf2vXKRROr6iuJzYCyry+y1EYKEOPHfEfIR4cQVcUx4
         OUbw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533BkFnaBNZRLS7iOZNLeYVtwCmGvxKwoAIlZC1L2DELLR/JTWe1
	A2YOGQ3dddTC8/L05XVuok0=
X-Google-Smtp-Source: ABdhPJxkYpv0cF9fsW+cvit5+JAP6L16XEDZIsqVahEXoRrEEZaWWatoovvZZ3wavGU8vrKWBUL9GA==
X-Received: by 2002:a17:902:aa02:b0:149:c020:819f with SMTP id be2-20020a170902aa0200b00149c020819fmr17614312plb.50.1641494306160;
        Thu, 06 Jan 2022 10:38:26 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:c403:: with SMTP id k3ls2116670plk.7.gmail; Thu, 06
 Jan 2022 10:38:25 -0800 (PST)
X-Received: by 2002:a17:90a:b789:: with SMTP id m9mr11779043pjr.161.1641494305450;
        Thu, 06 Jan 2022 10:38:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641494305; cv=none;
        d=google.com; s=arc-20160816;
        b=yrQHIVfifn75bLbpkvf6IcKMgvbm1NRNlD+yXXy98x+42ZqSr3qhS1hQKKm5xu0ULF
         7if9+nnF0+lsb+4cI/vj974iceOU3MLR1Tm5Si66q7ZCXB06fAuOobvFJr0Q+UmGbRRc
         t1cblVLIuXZQXa/WbiJQuoeK3hSLwevDZqF3UZFKCLtN1QNSzTKCowwhztHIUc4vJaSG
         ZJpUax309Tnis3C8g1Okgz6PjnXLvSkFFdUy5qdK4pnXfBBw6xg7kHNBYMZmr2JcmWFX
         ftpvfZyXwPnz3ZNHnW70DyirI/RnGwTqTFuV52D8nUVkZNzDPuXeECxjs8mPGDCj8tGK
         1y/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=/m6u4r1DS+4In4HER4V3yhK/Mn2gw46i9JL5DLxOZnw=;
        b=RupmFADUXLnBcCrypP+W28BRs8bUfXNbyvabQOMIGJtrtsYtMtxm2KPccTgN6oh+iP
         p5qyQldv3AKg7Z37TEvZfyrFRyhKwaXj8e+bwh3LJ+TkqLp/JukT3IKJequLM8znTa7h
         MhfhkRt25zlLeciYaEqTd0EKkgQ+hYrnw1gjPGOv8IPV5dCMTFCk0PZM2/Lpa0jYF6Nn
         FfscrX08lWcq1albUqlgsMTQe7Hj/aoUJ8aWmRiD16Vq0CxO9405LG+7e/ZpCIO60wJO
         b565pFAGiVShO2k69aRHKdc+zmqf2FPc7BQ175PUGWobGR0REC8rcraCoz11sPOtHaQG
         YiXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=I4TLwEHw;
       spf=pass (google.com: domain of agnaby84@gmail.com designates 2607:f8b0:4864:20::92c as permitted sender) smtp.mailfrom=agnaby84@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com. [2607:f8b0:4864:20::92c])
        by gmr-mx.google.com with ESMTPS id lx6si724404pjb.1.2022.01.06.10.38.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jan 2022 10:38:25 -0800 (PST)
Received-SPF: pass (google.com: domain of agnaby84@gmail.com designates 2607:f8b0:4864:20::92c as permitted sender) client-ip=2607:f8b0:4864:20::92c;
Received: by mail-ua1-x92c.google.com with SMTP id i5so5992317uaq.10
        for <linux-ntb@googlegroups.com>; Thu, 06 Jan 2022 10:38:25 -0800 (PST)
X-Received: by 2002:a05:6102:e06:: with SMTP id o6mr11906128vst.37.1641494304643;
 Thu, 06 Jan 2022 10:38:24 -0800 (PST)
MIME-Version: 1.0
From: yacine  Agne <yacinebeker88@gmail.com>
Date: Thu, 6 Jan 2022 19:38:11 +0100
Message-ID: <CADbKqKhWS0vrY=c5_8Vecx3po=teD7raLBxm9MmPbdLbZdmjsg@mail.gmail.com>
Subject: hello
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000ede39605d4ee2c55"
X-Original-Sender: yacinebeker88@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=I4TLwEHw;       spf=pass
 (google.com: domain of agnaby84@gmail.com designates 2607:f8b0:4864:20::92c
 as permitted sender) smtp.mailfrom=agnaby84@gmail.com;       dmarc=pass
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

--000000000000ede39605d4ee2c55
Content-Type: text/plain; charset="UTF-8"

my name is yacine, can we be friends

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CADbKqKhWS0vrY%3Dc5_8Vecx3po%3DteD7raLBxm9MmPbdLbZdmjsg%40mail.gmail.com.

--000000000000ede39605d4ee2c55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"=
color:rgb(34,34,34)">my name is yacine, can we be friends</span><br></div><=
/div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CADbKqKhWS0vrY%3Dc5_8Vecx3po%3DteD7raLBxm9MmPbdLbZdmjs=
g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CADbKqKhWS0vrY%3Dc5_8Vecx3po%3DteD7raLBxm9MmPbd=
LbZdmjsg%40mail.gmail.com</a>.<br />

--000000000000ede39605d4ee2c55--
