Return-Path: <linux-ntb+bncBCPMNRMB2INRB7G272FQMGQEWNKA4BA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A33EA4415C0
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Nov 2021 10:03:57 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id kc11-20020a056214410b00b003886a263a48sf12381510qvb.12
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Nov 2021 02:03:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635757436; cv=pass;
        d=google.com; s=arc-20160816;
        b=s9kalEnOaGYu3oIqH9ocIejA7z5X7NtWVXjZFXBQwwH4Ylg891KskH3BGBcKtriu/8
         fLK4e4U+kz27xaIte1PQ1B2AhMKXeKRqUyGh6h6zfLsVsDMMCVWKtg7Kl02RLKGomneh
         uRbZwjnmTh8zTNLDwbWgmkby97uDwMAa6UVNQXFdN2hmv4izday0ssjM4gMXVbmK6Qn/
         H1bknLc/c9Q1ahwsoBebRfAAYb66Ns3qBCDt5vejzwu2InlTjnyE/vFAKkpMGLRmU3qY
         OAXJ5S1qSbUuRl3qI0ETGbQRst/ehIhwpHvmssaIUfAGSKpqWrf5WaG2cbGTbzeRdd0G
         l5JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=k2SW7CABg3oXdfE3BbAKSyOs0UasVa6IdGPlKfcRums=;
        b=e4AshGkb5pZQRvU4i3jnaQF+ceuyptoscGpdvbB9FrMHPufIrlxeWgE1LQLCKZauqx
         F6YLB+k3IgyxykKzRnz7MdwXUXCBC8EZxc2R/vHDWJpvYekoqKrswpAPsyewxl7RNIre
         MMsFvUE4fClLeDcqKdaRH7loyJhLJPCedgBbvO8kLqylbmt7feWEaKpKHEBv4S7ptWyw
         c4Q5dIsjmtasW1Y6i5fJxtcWkgZCVPpxsTqfLTuAykqlK5wE+z75seDTma1EZWHc3lrr
         q5r3W06e+TGjL7C9beVyj46Vzs8d5wiK281IjG/BA/QJ4Pk+qUzEObgkhgJ/FzCoRT70
         ziZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=DvVHT4sQ;
       spf=pass (google.com: domain of planetbeauty61@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=planetbeauty61@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k2SW7CABg3oXdfE3BbAKSyOs0UasVa6IdGPlKfcRums=;
        b=KrlfjynxHKvQzP7P3JED+3pAfiFpMaCp8RMhQjM4VPTXOhEUl/Vo4C5QuElc7JPjsG
         qiIfa1g/VZ/pvyZl4RU81WWZ8D0W4RAb5YNXra3ntyqusd5se63Mvv5rvh8Ll/NaXE37
         qsa4m46FP4nyNLnAPwI94VTD0qx5OYiVL1hZrUNgpICd88YnjJFaZruwqNcGfEowG6ZK
         /fynlA7od6f6brUaVjO/3BVJFlhhJgjGj1HWA/ENYv/w6yNULvheF6hSMXqswHH04Yi4
         /axspLoKz7WFV+qAyz01qjCRIYSuhLMqjQIiff6dKA9OdHLcQ/n4g151RK0PugaHskN3
         fk+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k2SW7CABg3oXdfE3BbAKSyOs0UasVa6IdGPlKfcRums=;
        b=b/59XZDdik3nJQnRIv/iHsB77b8CN8KLD0aTCuKAI4bGtcYkt5z+6a9HukBdluaUQi
         NAkeP3V6VLeUNOqa50dv/YfUO+GFFMhejV5wrCf+bKIcVObQVhWOIxtt7Vcb2a8tnvLC
         agoJxzy7n3mTvomuUS4BAPcIb9Ar3JDQ55n3eaLVKMm8AkL9RQYNyap7NMbdz8994QIC
         9EZpWK9U1o9htF+zD/WrCIWl0Bh5i3AeIN3wqqjU0hcKyEl4McoUtaMeeoCiembItAUN
         ljTHvr40qp8wB9G8JgTaMfDQWzE2uoqzGP/41PQSENOecxzYmJchkPJZG4Yepo8bbQnX
         VYXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k2SW7CABg3oXdfE3BbAKSyOs0UasVa6IdGPlKfcRums=;
        b=xaqVRdhLehkkNuiABM79NY5l4Iiyf3o0Z9GVGVGOINDL3CxvONgR6RHqhgk83yWvJe
         taiB9A8jr4XQ37sjC8cH0qzkVbCFyKIus1LwQxYBDIRAf6mGUVrqPxkSTS2SRfjAh5C/
         3w2pVC6EKUqeB75RkM+TQSIEIyXWCnSq7tbZnTrxIE1ixcqUNtz+K4WgvLgou/+IRasc
         Ial2wnK+6T556AxivyqwohFKmUuAee/rmn/SG3DtAYBFneILm/4dloLo8pppL19BmszE
         CD2vmE7Kl5+uU9m1QGMQlczn04BuKv0UlAYYDThHJ9gpzNb2Y2BoQRBtnX8n8CY54t2V
         WbQQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5311SXOkQESwDUYH8cBKAelKVjfaLlNLZvVtwGstq+KsT1jv++Mw
	udQW/MCo6kpDBKWNhMKc00k=
X-Google-Smtp-Source: ABdhPJwu+Ca98ShXqiSWIRdbKQY/Zc/jdbROEfbM8wz/IhlcVtw9mjDepu3UCdagNaQFvY3cZFn6OA==
X-Received: by 2002:ac8:5e49:: with SMTP id i9mr27779867qtx.145.1635757436721;
        Mon, 01 Nov 2021 02:03:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:622a:608:: with SMTP id z8ls7756628qta.11.gmail; Mon, 01
 Nov 2021 02:03:56 -0700 (PDT)
X-Received: by 2002:a05:622a:14a:: with SMTP id v10mr29204532qtw.36.1635757436383;
        Mon, 01 Nov 2021 02:03:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635757436; cv=none;
        d=google.com; s=arc-20160816;
        b=OMB2ebZ6WnELOBQjd7TjyptGwHjs9zblguAS9r8kl51x/41oQTukXJ2Fk8NQiPC55k
         T8k/6RJop8KkQVq/deKiFPyrzM5gFYxbVKWCYgrZHRGD0Dgxv2sInszzU/AHRZUFfPnU
         D70BHkCejH/w4tHSCoWhwoM5xlv4i7P2U5NIB4Gx8gXyzjAY9dbMpevU26D5V98BvgPX
         1fs+oNK/1Qn42PELgpDAKlVNjjkI9h6R1V6vM+5OQAq8+bvVuC8WqXZXpgi3s96O8oPt
         M/TgJ1IjmepTWUIq42tH+ewdY9AviRH26Mj5job+nx5XFzBiXEGbCVFJspMyNcDFK3k6
         +EAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=E2mmv+DvZ5O0LPq84pKhjfQ0wv+3JTi0htU9mD6UUdw=;
        b=EOv2eTJQT+4KlegwRni3AUW6EB5EDGDOMY7r/jVqhGvQlHzThda9xKfkA8Xxtt9WjY
         Sz9SBTJ27fwpFo9viA3SVg7GOQ6qXFu1swmTnuJbZl2L8Vdlgdi04s0VxAhkXNAxHXC8
         eUOO+T2Jw2K7ueZMP21ZcPLEpviHBUHL+YDLYmx8xBXn/ndrEv5dzaV96Pf+SuyC5qe/
         zaDd7Ru2rW9t0sNdcX6wRmEc6QZ87LgJTTeoIbJKQ6YSzcgmK2mt/0WzKwv0CVJ5+z6E
         RXH+exRSOd3xueuDhQETWFHmGycEe3+uEGqX/k46O0LynnWDJfjAKTPmaRGPD8NKagKp
         38vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=DvVHT4sQ;
       spf=pass (google.com: domain of planetbeauty61@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=planetbeauty61@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id y14si215625qtj.2.2021.11.01.02.03.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 02:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of planetbeauty61@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Received: by mail-ot1-x335.google.com with SMTP id x27-20020a9d459b000000b0055303520cc4so24400548ote.13
        for <linux-ntb@googlegroups.com>; Mon, 01 Nov 2021 02:03:56 -0700 (PDT)
X-Received: by 2002:a05:6830:1b65:: with SMTP id d5mr4712557ote.151.1635757435830;
 Mon, 01 Nov 2021 02:03:55 -0700 (PDT)
MIME-Version: 1.0
Reply-To: greytownfl@gmail.com
From: Loan offer apply now <planetbeauty61@gmail.com>
Date: Mon, 1 Nov 2021 10:03:33 +0100
Message-ID: <CAENwAooiYbrjy-1XXFhytS1ahkJL-mDY5S0OmpEP0QMUY5qk7w@mail.gmail.com>
Subject: Re: Reply
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000e6c4cf05cfb6744f"
X-Original-Sender: planetbeauty61@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=DvVHT4sQ;       spf=pass
 (google.com: domain of planetbeauty61@gmail.com designates
 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=planetbeauty61@gmail.com;
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

--000000000000e6c4cf05cfb6744f
Content-Type: text/plain; charset="UTF-8"

*Dear Sir/Madam,*

*We provide loans to companies and individuals*
*with a 3 years moratorium.*

*Kindly reply for more details.*

*Warm regards.*
*Mr. Magnus Bengt.*

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAENwAooiYbrjy-1XXFhytS1ahkJL-mDY5S0OmpEP0QMUY5qk7w%40mail.gmail.com.

--000000000000e6c4cf05cfb6744f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><b><i>Dear=
 Sir/Madam,</i></b></div><div><b><i><br></i></b></div><div><b><i>We provide=
 loans to companies and individuals</i></b></div><div><b><i>with a 3 years =
moratorium.</i></b></div><div><b><i>=C2=A0=C2=A0</i></b></div><div><b><i>Ki=
ndly reply for more details.</i></b></div><div><b><i><br></i></b></div><div=
><b><i>Warm regards.</i></b></div><div><b><i>Mr. Magnus Bengt.</i></b></div=
></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAENwAooiYbrjy-1XXFhytS1ahkJL-mDY5S0OmpEP0QMUY5qk7w%40=
mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.googl=
e.com/d/msgid/linux-ntb/CAENwAooiYbrjy-1XXFhytS1ahkJL-mDY5S0OmpEP0QMUY5qk7w=
%40mail.gmail.com</a>.<br />

--000000000000e6c4cf05cfb6744f--
