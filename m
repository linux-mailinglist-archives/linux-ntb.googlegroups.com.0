Return-Path: <linux-ntb+bncBCWMJJVZVQKBBSHL3OJQMGQET4337HI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 140AB51EA89
	for <lists+linux-ntb@lfdr.de>; Sun,  8 May 2022 00:42:18 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id da15-20020a05621408cf00b0045b00b9eab4sf775973qvb.1
        for <lists+linux-ntb@lfdr.de>; Sat, 07 May 2022 15:42:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651963337; cv=pass;
        d=google.com; s=arc-20160816;
        b=ofJq2O1rBO/ONUXBnO5IPfglmZ05F9DQsN/KoEU5fhPGrfyXvT07MeZJSVfGdIP/y5
         AwrvOD65kbA5xjX6o75Jk+kLXyn8qKQjyDBfUIY6qeBdXal0K0Ed8bu1SBGBecmW0SrJ
         4Vts7pcNPs4TYcZ4gJiecoyyj6yKjcMljlEmphzfH9rZPv66qlM9CEsAhuXMYOj7Te08
         zoCpIC9v74yyxtkuTJ85sFEDRr+TLqw96W722I5hpUiU+pCqdfKL7A6bCRJUxoikFAPh
         B51kM1vC1+V9Batnxy1Yg5cnzWTBxtlB0xoaYwoPpM0gR4LgEFtdYa3BWsOaleIpa894
         zIyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=aieGHpWq3ReXtljJQbN5yEFIzq/SidzH+NusixbYj4k=;
        b=BGeXG/UzFU7f+xQoCcEvHBi2ikltIMcODOOM5wx0VFSDwKCT1tnnI4wu6ybhtZwMet
         DDbYUX1oJyrt7XGcL4zV89dxmCXKL0xO8c0QPLSvU+7sziqzmTPdv8muFkxJw9VpTmFW
         XdXRYtXTlC5BLEI6dvj2owExgv8WPnI8I8RVBsflNO/xeeDY/bW/YugDitN+0tSSNerx
         YEwBroy3BuNrP9/2Ily2v5yPD9HMZ6vLodgDsmvh7Y+D5ipFkY2vYQUcei9uFHeRR5iU
         7Xd/mXsYZLEZMZ7E6Bm5pr+t+R6ED1VUZb0opFYB82F+Y3iKOXu+bfpm0oUmFFN/B54e
         z7tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=LNeFHW5o;
       spf=pass (google.com: domain of macarthuremmy@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=macarthuremmy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aieGHpWq3ReXtljJQbN5yEFIzq/SidzH+NusixbYj4k=;
        b=PRUNhjU3kxAzlCEVVzATe+qWkO49COrJ6hXt8RguZ+e9zOp+dML6GO7F4piQHcR82N
         JBrwptq2SJ0d8OzCS5YciK9VXWvWCrjhOS9ouQNfT1HNTn8ypIuLR+0IzZhgZbLS7GSB
         nXjdZqlIBdVNbSQaGXTm27UckCzCssBGMGKKvc+XFz96PV8/yQfrLAeIBmuPVGgMn9XH
         eKn5+8OiO68vBU99d2+mcwzx5VeZeHbC/nJ7YTl9nT6V14tgR1b4sb7wfY4hjBsPwGmL
         pQcZq2psJKZjAfb9yvKUOiwok9REEGFPwo7LAIc1/qV/YXaocXZA+iZIoXnkfqcAtFMs
         qxXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aieGHpWq3ReXtljJQbN5yEFIzq/SidzH+NusixbYj4k=;
        b=Y05eO0lCFFlQVTlYOt/nAW6r2ibeIFC/W5r0z0ZE/VV6/eE/xZ+xiZ3bBeIJ4I0XZ3
         i0gkzcPB3J1wwSnp38ByRMpL3b3yk67zBNRLphBaiUWE18Om/qYIEg29bkE9T/6Bx3rH
         WO+CxLmt/G290YE8+75MEy+Gyy/TXHuF+ymhiT/Y6mKu55U23dqiLIB4e4trti/gkkPZ
         e+VWF9yraxqkBhcTiEMiF4YZnHVcG92OYju+Xz40doijuzQqmkqrZZUrdWW6D68B2j8S
         BK3ipmW0wntNVgxE2wxSqfztjUbERudnFQTbSnTrWbxi19Rr4rm/7NmxFo+F30ONBP/f
         LyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aieGHpWq3ReXtljJQbN5yEFIzq/SidzH+NusixbYj4k=;
        b=k9jLARHOJ1Ra+lyCL0wNq3amiPqxTNho8lceXcSU31OVpIC8hWIpR1L3Wff1O1ikwD
         bUkVXffdzDeALOEiRLJgGP1GJ4r4U/h3qLHC0VpK9CvvD6RqVricmetqT5TV35mrRqWd
         YlnpqRXu/avFGFEcnTm8KF8iJw0CwXWBlk4/MINldKcOaIxDfeG3VMWEYCG8YuqhRZWc
         iB/1mI/amg201iMx641EyLsLXjLDTzp33ttrkZJXmGF/oKy8yBZ3DV/nELz4RXFTdR3I
         PHD4iZEza2zShgOMT1LLYZXdFxUbQX+Xp/kjS7sawa0vXPLc1IxxbtO5J+w/QnJbKCyc
         b89g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5309wyh8+l5MnJmnHN11h51HIeFZaLVu7gpf9obsrWEf9/a1Px0o
	KjqYqEre6tdhrp0B1/m7lzQ=
X-Google-Smtp-Source: ABdhPJzPdQ0bCgRcgcoZcXW80siERDJ9Q7w3Sq6ebq6j3Wk0SqPlhXswjeB1T7Hh5HHvkPBfsktKSQ==
X-Received: by 2002:a05:6214:27e4:b0:45a:a04d:d835 with SMTP id jt4-20020a05621427e400b0045aa04dd835mr8323863qvb.82.1651963336969;
        Sat, 07 May 2022 15:42:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:1a9d:b0:69f:a410:57b4 with SMTP id
 bl29-20020a05620a1a9d00b0069fa41057b4ls6992549qkb.11.gmail; Sat, 07 May 2022
 15:42:16 -0700 (PDT)
X-Received: by 2002:a37:843:0:b0:6a0:47d2:cdc5 with SMTP id 64-20020a370843000000b006a047d2cdc5mr6145697qki.689.1651963336572;
        Sat, 07 May 2022 15:42:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651963336; cv=none;
        d=google.com; s=arc-20160816;
        b=m5zFrCSGh+hoKpLHHqYp++mQWEvgrBkgDizcbgAOp3xsSzNr2wr3Bl/5TjqTUrEcWA
         B7dOPpE127N+wyZWuc6bZJpkhu460SZK3rKGuyioFva1Z8CjUkTbDQSxErwBptBYwzzl
         rtxxmrOu2ECxUhqkRuOUHgRSXWTr0H9aUyi/BM+bVgxlvo1t2/iCEF+alTauXZsOgKpa
         v58fB4pGj+5m2ywY5ie6CoUHOAQJItf/Az6wgyec1xaXo1xIvLZtV6RVnxRvq2BhxMjC
         8lrZLqGAzxXrgOOx62iHHnnTGnLL6VaZeecLenSX/EydzNCmvbOLcp33fcYp9tMTf8ra
         5fFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=PF1cKI3J2qY+qkEQ0Qx4QViHD+lV1w45Vz4SVngpaDg=;
        b=Hi4QexXCQmczDPtc8lfJ3/l6G7zEE8hLYV4PA6+flWTLSsbnyVh8h8qc1fv3ggSsuw
         uxHkf1/VpqXh3kZnN/tmWE005H+R3I/+aenX35nSOlyWOjJrEwPbQ0LiftIgvGUqeXJ0
         xd1edPHp5u2p4yH/s2RIBnpVIz5mfrRFgyQiQC+Z7EgJbM9rfiei0rhl4M1YCNPoU4uJ
         GzMHSeXTUDH/U87iqVTGtgbfrdFFIT6f9CCdzmGNAuP9tXExNTzF2IaNSmZ/xqt5r60z
         Ek/nbRPC2LxnsUiz/MTg8g/v8eRPaKJwfwie49YB2HMlp33KBWBL5QfQUlLPXeSX4Aqu
         Uchw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=LNeFHW5o;
       spf=pass (google.com: domain of macarthuremmy@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=macarthuremmy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id 8-20020a370a08000000b0069f96278236si545655qkk.0.2022.05.07.15.42.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 May 2022 15:42:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of macarthuremmy@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id l15so7023348ilh.3
        for <linux-ntb@googlegroups.com>; Sat, 07 May 2022 15:42:16 -0700 (PDT)
X-Received: by 2002:a92:c249:0:b0:2cf:6fda:50d6 with SMTP id
 k9-20020a92c249000000b002cf6fda50d6mr3743142ilo.279.1651963335859; Sat, 07
 May 2022 15:42:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6e02:5af:0:0:0:0 with HTTP; Sat, 7 May 2022 15:42:14
 -0700 (PDT)
Reply-To: fundsrecoverycommittee@aol.com
From: Geoffrey Bristol <macarthuremmy@gmail.com>
Date: Sat, 7 May 2022 15:42:14 -0700
Message-ID: <CA+v+582iHo-bRAPm-bhYqoSHZ6F3n2Yuys=v8vuPnUC3Y8JRdQ@mail.gmail.com>
Subject: COMPENSATION OFFER
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macarthuremmy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=LNeFHW5o;       spf=pass
 (google.com: domain of macarthuremmy@gmail.com designates 2607:f8b0:4864:20::129
 as permitted sender) smtp.mailfrom=macarthuremmy@gmail.com;       dmarc=pass
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

TO WHOM IT MAY CONCERN

This message is from the Office of Funds Recovery Committee, a Panel
set up by the United Nations in conjunction with the European
Union,International Monetary Fund and World Bank to look into and
compensate accordingly all victims of internet fraud/scam.
In a recent report of a thorough research conducted over a period of
10 years,part of the findings was that about 30% of such victims
commit suicide after losing thousands/millions of their hard earned
monies in the hands of these evil perpetrators of online scam/fraud.
It will interest you to know that we are doing our best to ensure that
these culprits are brought to justice and prosecuted accordingly. More
than 10,000 of these scammers/fraudsters have been arrested in various
countries recently and huge sums of money recovered from them.
These internet fraudsters actually confessed to their crimes.
Against this background,we have been mandated to compensate each
scammed victims of these fraudsters with the sum of $500,000.00USD
only.
Be informed that your name and details were found in our list as one
of the victims. This is the reason why we contacted you through our
agent to compensate you for your loss.
You are therefore advised to get back to us as soon as you receive
this message so that we can commence with the immediate process of
releasing this $500,000.00USD to you without delay. Be informed that
your name is in the first batch list to receive $500,000.00 this week
as compensation.
Any kind of delay from you will not be tolerated as we shall quickly
move to the next batch if you fail to respond on or before 48hours of
receiving this message. We will assume that you are not interested in
receiving this compensation offer.

Regards.

Geoffrey Bristol(Chairman)
FUNDS RECOVERY COMMITTEE.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CA%2Bv%2B582iHo-bRAPm-bhYqoSHZ6F3n2Yuys%3Dv8vuPnUC3Y8JRdQ%40mail.gmail.com.
