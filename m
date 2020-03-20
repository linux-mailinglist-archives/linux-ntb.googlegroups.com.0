Return-Path: <linux-ntb+bncBDRK7WUAV4ARBROI2LZQKGQECXUEZFA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x104e.google.com (mail-pj1-x104e.google.com [IPv6:2607:f8b0:4864:20::104e])
	by mail.lfdr.de (Postfix) with ESMTPS id C110518CC5B
	for <lists+linux-ntb@lfdr.de>; Fri, 20 Mar 2020 12:08:54 +0100 (CET)
Received: by mail-pj1-x104e.google.com with SMTP id gx20sf3717731pjb.1
        for <lists+linux-ntb@lfdr.de>; Fri, 20 Mar 2020 04:08:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584702533; cv=pass;
        d=google.com; s=arc-20160816;
        b=SmEqPtu/W3XV8hrOsm6mMc2y7x4DSgVAdEYZKFJW0n/5XJ7PP1K2jQ4IdqkvMg2fuK
         Z0U/oG609+3qZBmflAnVShR3LrFmkep53klyOpTkeC0FikdKnnf4aVPM7ANpT24/EvN7
         l3TSH/JLqA5Ofc8ak71CMWhBbI6R8CDyRU80191+5l4rXpvIyPbEbNWtQttYJWxqbRxZ
         3WuUp5BiAM5o7I3wo32EbxgAHWWFYdJAFxY0dZAYQirwZmkZ45J0L4LDozz5d/N/j7ST
         d856IfY2ApkGDiFvg9FyyedV8MOzdy6PDYgKM+1lIAmSja+jj0+nBtN4gZaZGpETPVng
         jywg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=upAnhCubnzaNf6C3a9tiqEJOv6xXD9/gSLe/pG3mcg4=;
        b=fYueCUSIxHhD7pKuNcNjn1I53n/nxLvvqntvWc+rMLdtUOigrtJzWODY3mKZl0Np0a
         MXZ+PMDi6uReZdWu1j81wJMQfxiZmzvMMDaXWPu/mQP8Fq3lFO9sQFjSwW8mra4Jdp9i
         oOlGMxtSHCibsGpA4OGzK99QTGkZB/2B4Jh/omKxuNIJyNPIaWF4NGoHzwSz2O+sLPtg
         NOeqJvUNsxH/4yYo+6Bx6GOs9wO8olHqa0ZK/ylpX3wXFkyAa77n9hRKORISugDZy8HJ
         RYMaUVBXXsCjD3QKIfT9REnnoTr69S/+vIja8OE9FyGMqsDHNtHXGAuHBX9Nt82eeVQz
         SHDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JAtXBJqr;
       spf=pass (google.com: domain of federabureauofinteligence@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=federabureauofinteligence@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upAnhCubnzaNf6C3a9tiqEJOv6xXD9/gSLe/pG3mcg4=;
        b=rUN9k/dZ0gCbG6I3MRTZtzkOJ5vTlCAAlx+sr3IsstUMK30JYMTE/w4VWrk4ggxT5P
         4aQcZ9BAxOrBIkabfSha0ZSm9ywvUbs0RErsbBy0Usg5J2v9fjHzJRzQGOhnc8+yM17B
         yLpFEUaTmBAgwvGbiNpoyTKd1qAwdwgKPW6aB5OkkrHdltdiTkgWv/KTxfEJva+hHeYj
         cfHHZke1Z+sgczvDixtzsVVXlNmHmio7jhVJ6vyk0hciUe0IowgCWY8tDUbB0P8etSc6
         6YUX0lWjgliB1QO6lfbC10jIGtqK9+1Y9SlgBBidh7wFqvAR4/juydm7/QKtXBUruUiA
         YxWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=upAnhCubnzaNf6C3a9tiqEJOv6xXD9/gSLe/pG3mcg4=;
        b=jDilM6RQpQp2OiBghLfmx/IsVMHIE4A0qVhgVaOAXLg5Vgya881XFmV/frU+IYQ7CE
         NGveSK5qNkcYHwLEfC96b2Vs+OaB+6Y1Ah5cZkZdKw33xMbI7bIfspAs2yWnryuaDQeR
         IkN/h6TFvFrUzN8T29QcqRqvDovA2KRaoMCAdnGs4X+LA6gSabFKDgLCut1SfvCm6ICa
         guSuUL4YJdBiY5f0l7DS+3a7IMu6kJxMNrhIC2xihQktuv+KRAbMRfHZ1oz+7iK5s+XC
         IjGUV2Z1w3mcRuKfxP0ME+LLZjv7zuPE5lQTCeAeKEbfEq3qI6FT/jRtwYohfL7tSsWc
         qvDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=upAnhCubnzaNf6C3a9tiqEJOv6xXD9/gSLe/pG3mcg4=;
        b=VnCZdd6KhEfvMzh5StgsmLPTMUegB1luTl9tcwDo+bfEnFg0OWvSNSvI0XUZLshhiP
         7xEuKXOed8468k+cgfPAe1uaLWGPWdLushCx9MKpEqJTtxVRX4BFPV/i9pkT9l5/WYYF
         nZEKV5BXDWJodRtDXuNPgk9xqrAkt8n+Nkhw2xNrenlHAa/cQ9vffw5GiGSBsUo2U7vI
         PUd5mJcTYfoZngHqDqoEAoy1ZsljOMcN7a290S71qI9ccn+cl3qD/BqGwnyEO4q+PltN
         3qsFeUVnKeN0R/SJ83Cu6iOoYvPDQOt3xhM0KDtPgDacFxtiei9UV8O12soLhy9gxOEz
         8quw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ0ZpUhvboaxPBrRjpT72IXKY9UHhSC6QKctqchaXlQeeP0uBznc
	zEoW9GgCHY7veL6VRHFbAa4=
X-Google-Smtp-Source: ADFU+vsueBAmYWu2iVhxcS86bUgUggonqPZ0TRcCGT+SIM33vwmsPC6CCJlHiydcoxiCsIrmWi+t4Q==
X-Received: by 2002:aa7:9433:: with SMTP id y19mr9051789pfo.233.1584702533333;
        Fri, 20 Mar 2020 04:08:53 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:9887:: with SMTP id s7ls3150156plp.9.gmail; Fri, 20
 Mar 2020 04:08:53 -0700 (PDT)
X-Received: by 2002:a17:902:b498:: with SMTP id y24mr8194680plr.328.1584702532870;
        Fri, 20 Mar 2020 04:08:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584702532; cv=none;
        d=google.com; s=arc-20160816;
        b=ziucL6CqUfJ7wzVkyY0Ze1+HIdnOWV3JQADtzH8uMAtMFPgHsMYk/3ii7hetdQ6eIC
         D8Vdj92Cwmckp2TgcMGbkkSsBpgU8y3cX1+2Cz9fz7IV4REJ8Jq4pdL7RuoD4VHMhwIW
         gu743fRga0WQSDmN18JEIdoTDF8cRMFZOiGyJ4sZRxAYF3MBmqufSAu1tuR74SRmLYXF
         UEKK+lWwQBx4uNCfuiRxO7xK8kvWf/eio1Ep6cw8VBWPlbNkz6gO36+1oZuku3h7Pb2D
         5DiR5/iQhQyMiOmMofAeU6OUeMEV9IJP8ih46F7U8N8akHMNYPG/Jv74c7cA8p6NbAUY
         6Tzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=kuhba0bbR9oJup1oQ7P5tNPZ9FqBHXE57QqcfHgaIHo=;
        b=ZhzsPyp3av61hx+unyLbtZyUD8O4cOljUhhBP0iPh9WdmwxACcErmn8MvbJJX2ITVC
         sQ8YH+lQCwNGBKrMzNb8lPcjWLAZFMF9wom/IYdUhO2pqiVO+qC+yHM3xwx0j+huyS8U
         jMY+GZJBks4CSirohI11+AAq4Ro0FeAW/D5HHUZnx67l/nDZkhgjQTCxv86cuYGCFxB7
         QUBqgCepZ5f+X1Q42Tk3LiZ59qj02WxjqQDBDwj8/9zxTRlZQf7/mFj8V2c3MJunOPcI
         wVOUrsoHsVZDLsy9iiPFyZYJrGCa0Bq0xeTep+Kp5SlNXYzkWwnvOOurFmRYsAq6eb8h
         RgSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JAtXBJqr;
       spf=pass (google.com: domain of federabureauofinteligence@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=federabureauofinteligence@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id u15si288090pjm.1.2020.03.20.04.08.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 04:08:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of federabureauofinteligence@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id r2so5555194otn.6
        for <linux-ntb@googlegroups.com>; Fri, 20 Mar 2020 04:08:52 -0700 (PDT)
X-Received: by 2002:a9d:282:: with SMTP id 2mr6105589otl.178.1584702532193;
 Fri, 20 Mar 2020 04:08:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:c897:0:0:0:0:0 with HTTP; Fri, 20 Mar 2020 04:08:51
 -0700 (PDT)
From: federa bureau of inteligence <federabureauofinteligence@gmail.com>
Date: Fri, 20 Mar 2020 11:08:51 +0000
Message-ID: <CAE9o6LB8uVVDxDvXUM48MSUTPhbV1MGNW-EXBpanBopr0qXsMA@mail.gmail.com>
Subject: HAPPY SURVIVAL OF CORONAVIRUS
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: federabureauofinteligence@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JAtXBJqr;       spf=pass
 (google.com: domain of federabureauofinteligence@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=federabureauofinteligence@gmail.com;
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

Dear Sir,

HAPPY SURVIVAL OF CORONAVIRUS

We are reaching for a very interesting business transaction which we
feel will of great benefit.We the FBI unit in the western subregion of
Africa have a fund which we confiscated and lodge it in a bank

This fund is worth of $12.5 million dollars.We will need your
assistance to recieve this fund into your account for investment in
your country.

We will need your urgent response for details

Inspector Greg Adams,
For and on behalf of Cote D'Ivoire FBI
Tel 00225 6716 6756

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAE9o6LB8uVVDxDvXUM48MSUTPhbV1MGNW-EXBpanBopr0qXsMA%40mail.gmail.com.
