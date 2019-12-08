Return-Path: <linux-ntb+bncBAABBHWFWHXQKGQEYO4VASY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 4582F11602B
	for <lists+linux-ntb@lfdr.de>; Sun,  8 Dec 2019 03:40:32 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id f25sf289736otq.15
        for <lists+linux-ntb@lfdr.de>; Sat, 07 Dec 2019 18:40:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575772830; cv=pass;
        d=google.com; s=arc-20160816;
        b=J9rAEGngLGOK5WTthmNZ3BZkl0lDizqWkIC07NsgsgbVPi9S0/gS6o4vvFFwgwlBwF
         ahLvpUA0Y9ge9tDsG4CMEn5VizB1ZFELMoqsYCUu0eA6KejG0E4+By7LrPIvKuUdrx9d
         sJFC4mxVm/d2m5zIQnhkYNF8XF2O3Q3gBqgFrlMn0eFyX6XJznGP4CbN37ehQobPEF8J
         YZ0odVHtOheBJBf/vka46zojvTl5/KdZDuBGbupmL99nio4WIUFVHRVIOMrOOVyLpyfb
         DuMIECsoIci7j+MwO2i2xmigqVwP1aB0IrkhHijyKVmwynUXY69P952XEHk32UNrCUqS
         OGsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=oz8FWF1EDhrMDU6Zd1lvdvgSxwB7X9Jq9PrXyDgEscU=;
        b=H40JUUzUn1nzG1MjgNmBnzXRc+DjxdWSM9QIpZNiwU5t4JjnOGlh0O2B7GFZ/wJThI
         rnRIpGNcU7lc97PR2BV/PIdQFIVgunQVCEPN8z2GfPV/61I0B05Fcpvcp6kguTG7NYBC
         AxbP3TCBri2XrbHA037UmqnGjmb4018atqN2HibyZxT5aoiGrEaraUSHYpbhTy5bpf3+
         ly/bUyr0mTzjwE8LNOWM/GDLSlFnpW5QxHOQKqBxG1b0L5eAJhwLlh97GD1FoFRlS1ay
         JByLCncvk4UDIMRWbqtDoZ0E+0kikRvB43kMm6PVDnbw+DSzYCDAxL94ViMl+rOUtEnf
         VFpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KSRThp44;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oz8FWF1EDhrMDU6Zd1lvdvgSxwB7X9Jq9PrXyDgEscU=;
        b=WGAmCgiWpAmhY0fDhqHX2ldE79QqygKrWX+9gfDupFfH+JucjoB5RI+lvWSK111sKV
         f0BfzFzpwVnGJLOx2x2suTLDo4Z3Tn6rp4zIMQCm1hUC3Me4VS/X+ZdtWkObTf+hlBlh
         uQvl8uPLqcatDSgnmgeUqYDX7c3bCEVIhe2bSyON50aSyYCJ5WcU0MNUexO/yLzjpcLs
         ItYpTv+Qc4JqGkw1hxWa4NsCUXxQ/UH0lcrEbN5+zN7/IcVaoG2AaNXHynOk8pN6YspJ
         czv6G4AbS/z2yiLuUrs4JdcwdcP7ndmGE6at+6Px88GP+XA3IExe0bnXja1op0+wZ9cj
         Lrlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oz8FWF1EDhrMDU6Zd1lvdvgSxwB7X9Jq9PrXyDgEscU=;
        b=h2F7LG/ZpJIfvUgABVtkNpoDddaefDQflQ5Gp60/+Q/CPdmhp2kFqdkD+fUcAU8Y+8
         l+BgbB46+T4fpa17zS+a2Frw5d20Hr4yypcKdAzbVvqhTBtYr/c3EBhRmufwnMhBGgs+
         Yg4/z/QT249Ntx9VJqsHp0e85oVv8pQjlZJAUFdR0ZtWKW66V2oBnyEkKsJAds2R1I/K
         XSdzSXVOkVtsHs+t5UlSTovBHIve8IKFug3y46qs+H+oBM3aTWqL8vsq5IjCm4kkGwW6
         q3ZADKpfHaU2bk6RdvR7QMbkKJF0+Sr4+iJywQmVTsnwMBxh+FqrAvl6LS/cE3AiXA3+
         f14Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX0r0LuuPmAW8ZPkDMSCSSzwv26SdSA7AcTvVPM+o0gMtSP0Vbc
	9yZ7F5vXKkohHpSMk4/Tzxk=
X-Google-Smtp-Source: APXvYqyrvQgswYvub1O4hY+iYDVg4Pi6dkBNydjiU/O8B1arHunb4LbFKt5+2UeDiuSR/pFwoyKArQ==
X-Received: by 2002:aca:b344:: with SMTP id c65mr19508533oif.88.1575772830658;
        Sat, 07 Dec 2019 18:40:30 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:649:: with SMTP id z9ls1941140oih.3.gmail; Sat, 07
 Dec 2019 18:40:30 -0800 (PST)
X-Received: by 2002:aca:d15:: with SMTP id 21mr20010287oin.177.1575772830165;
        Sat, 07 Dec 2019 18:40:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575772830; cv=none;
        d=google.com; s=arc-20160816;
        b=KPeYWJ2kBJs+s+vetcxWgTMGlaVxbWoSyz1nCAmvgnQ7ivuc1N1bYQE3fc1kGuRZIo
         bx/y3h3A+p1EC6bqV9ANSop9Eb2aW63O6hxHhH0za2zuk6nkZzPSufzrJ4Y/h2XG1d75
         d6GXqXze7oEu7KVqepphm8+eyaNxJSOaH0U2yNhNtN3dXnlDTcsHJ7z+09WMgnL70a6/
         wHgZC5OOd2HkHFrm4X609A29niwLsw2N96xW/HOVIJ50m/p77bwVve6XVxswk0OHtuvk
         ihOQavtwICjXcyRyWKiS6PQqe9sOOK4aOa+lMyp3rDlAugBBki/uCC5vcqRbVr1i7GkA
         mYyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:dkim-signature
         :subject;
        bh=XL/S2ozNVQZ4m1MoaVswLnXPjgxxsha5I6h2PEAuizQ=;
        b=eVcSAHxbmfb3vF3BLKY3qQTeZ4++vgDY0PzbRj8wV0yDsQgpRgTz9m5YHGE7XjEPx2
         wrSfn3bbu82PpB91atIN465971UdFGtS2SsOUtwk2JmTamjOWyFqkQuQuOo9I58hodZn
         F1p+8BP0wUSd3T62kFsMi2P6ur4T0G7+tukeoxHvdVhq7J1acpZAVLjRvaqsYaIbCjVy
         VM0AmLX1+JRjgodBMfRanc8Q0+yTg+OL6zSQzwKXUHog/Sy1CBDfizkyjEoZjC3DuI5j
         iAlfxFlKQIcdFkZatEVJSGA+qc78Ly/jn0EvobsW22oZYQ8XtKRpX9sXuu2/K/D1zHUm
         xd0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KSRThp44;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c24si864191oto.3.2019.12.07.18.40.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Dec 2019 18:40:30 -0800 (PST)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Subject: Re: [GIT PULL] NTB patches for v5.5
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191207214242.GA22441@graymalkin>
References: <20191207214242.GA22441@graymalkin>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191207214242.GA22441@graymalkin>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.5
X-PR-Tracked-Commit-Id: 9b5b99a89f641555d9d00452afb0a8aea4471eba
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 9455d25f4e3b3d009fa1b810862e5b06229530e4
Message-Id: <157577282920.16893.17916917958020676481.pr-tracker-bot@kernel.org>
Date: Sun, 08 Dec 2019 02:40:29 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KSRThp44;       spf=pass
 (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

The pull request you sent on Sat, 7 Dec 2019 16:42:42 -0500:

> git://github.com/jonmason/ntb tags/ntb-5.5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/9455d25f4e3b3d009fa1b810862e5b06229530e4

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/157577282920.16893.17916917958020676481.pr-tracker-bot%40kernel.org.
