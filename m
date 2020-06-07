Return-Path: <linux-ntb+bncBAABBN7M6X3AKGQEFYUTZXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C831F1060
	for <lists+linux-ntb@lfdr.de>; Mon,  8 Jun 2020 01:20:24 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id d14sf6029778uam.9
        for <lists+linux-ntb@lfdr.de>; Sun, 07 Jun 2020 16:20:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591572024; cv=pass;
        d=google.com; s=arc-20160816;
        b=CQLSmM9qWKdkKu+N7XS4Ud7XXLuzSzhUK+OONh/9yyY6tVSKF0pckqxTC9IDvURHlu
         qEvykPFpGLoT9t4muv6wfRWorV+TIbtrmylxP4CvB7QXXu7l6x+f80AJJke0pIwdQ1Si
         /Anuj7SRjYSFnldiUeQLOSsm4CL362xdOtDoa09u6ZZRaVMO3gi9go8LTTl/WT79Pf7b
         kMV714eT9cwphYKBpgEVoffFYA96mwEdw4w4JzvA/G2MXUKv2UrRAXVj6n/VRYC9ksBC
         Z2FohvVL43v9WDIsaHdhdPm4W4GfCSofYY+e3IgoPXHumWmzf+69SiZWGE6f5oYonkSP
         rK5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=V04WL1iChFStyAANCxhwYMS29H/G+bGzfo4ui4yGIeE=;
        b=MPhqef9sqBQI8aenqCfkgPjaiXf9mrRkMycRLqKXaEB0bx0cnT8nYoLYG9NGurqGdA
         8H/bXwTqeV53EEly4FCfLPEYpAgAVz4AdMWrP85sTb+e+onuCdGKQdLCSfeOISv6ADw0
         oN8ffubfz8dPcxq4UoxtEsWtDPIVbBv460Urf3cAaBeJRVFEGEa2gsPMpwH82qN3q06t
         Fi85PYGmypvOhfeqRkhBZ68ft2mpAO1qwG9IcOpvJ1Rv7CjlKBb+Seyqp4BMH0KX0bg/
         vOJtqbuGJwEBB39ApKl6vDQ0bH33zuj0U+ggTaREuu2wLXl1tPraTwY6dpqFptORVVvK
         1Dkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f+4BeVE9;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V04WL1iChFStyAANCxhwYMS29H/G+bGzfo4ui4yGIeE=;
        b=CxVPlri7FJv8iMqpuFUf4BuyEbJ2Cw3txpC9mTxGt+sOsBoBxPUoSo33v/rU+tdi5J
         eKOanD8Pqq+BHzSCbudCAcHW3tfa68qGjYfLUoNVdARFc+xerNVMTN9PXtMhm/xU0L1G
         tMwaKasPeK1fYK6+npsd++OvtEG+Wg4HZMpawlwj06gycIrgmAGQ4a34PGaRkhLeNQaY
         PrwExREj980lOl+cMiFBqDj9esaAfKcyIBNEmyXIAHGLQ9YWVPB4b+aObU3NloE1MyRO
         TpK/HdZgDXyuapM3mGDSm72Dtp+7JWEvtMPrJ2FvuPd0TvkBVvoe6fOysb7jvUYyP5aq
         6T+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V04WL1iChFStyAANCxhwYMS29H/G+bGzfo4ui4yGIeE=;
        b=GvHyUjgalqMKldg0rjS2BSjeyyC3EczntQedyIIlpgWsXk1sEx/1qZ102LvKhC5Ez/
         24pzf4PHCco3+HXNd03JE9Pe7ppg4Q5xda3rFdeEUWbCdqs+y3ohFVFqteNjarIhnnz4
         TGtKYouV/w7GKNI0Uj9KJszc1mMS98tffB1Ow2QBedI7B9dO6Z+18PDdOa6QtSukD/Y4
         zSRSGow9Max4CLGsgEKX1WtuW7IJgnw9i7aOV9+2fZcUIz8Nupxkr2aY6mBhyTPNHc4Z
         t0wMuKV6l92lv++wfENftXPBWpmo30S1NSycnqW1OcPLUcX7BP9t8bZx2+1DJURJwoKN
         Nceg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5310AiYr6zXrxfIbNcIOLtm7RZKHJqJVyuvWZmHff/9kNRhc+yV8
	AWs4TGnyXspwdC/oqCfpQBI=
X-Google-Smtp-Source: ABdhPJxTyxCi5e5qG5iccxP6jgCAfqeHrX+dDbyEokK2IcHs7/HeH+uzwBptBIg61yZyBx0l0fLwbg==
X-Received: by 2002:ab0:204a:: with SMTP id g10mr14269594ual.97.1591572023802;
        Sun, 07 Jun 2020 16:20:23 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:f993:: with SMTP id b19ls268796vsq.5.gmail; Sun, 07 Jun
 2020 16:20:23 -0700 (PDT)
X-Received: by 2002:a67:b741:: with SMTP id l1mr14181473vsh.180.1591572023515;
        Sun, 07 Jun 2020 16:20:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591572023; cv=none;
        d=google.com; s=arc-20160816;
        b=JbJ6/X4tPnk9iLyFPj7iEjjtOVrNfaqd/DkuwqRKCdbOyrunrjV3bL7vKIHVAtbENG
         zqFMSYvNLVA5yrnSr4x+mZua15cchqOKEgSZ61fl66cD9NK5KmzMMwbp6PqZ3xm9FAUZ
         GBFamhQcv0k0cb+xeCWIGXqb0/95VMzLP+wzVY7G9AMLT+F90j8WgqQJvLn/JTb3NZjx
         EMQ2ZwOdVDIhiohLqvPSponUDVt6BjEvhn0ZTv3YUAf3vMndFX3isZSPKW0saV29mdrY
         Gx6FdKfjcq9nLzZ0FJI+NWdbQjF9gt89WTIoxLz1BQWQ8IcQj26ojlSEF2mV3+LQt5ih
         mu8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:dkim-signature
         :subject;
        bh=Paj0/yi1XEA3jEuhZX/MZ8yFvsAFz4FeaMrckE2SdBM=;
        b=LSAZemWwSXdbxy0qXnihLGLm25SSpOJyEf6/4q/cSQOOppwN8TLoPyz9UGrZydA3Mi
         TASmePhtmrKZfezQTwhdOOMR8kzcisW+5RLA0wrBUbyj0t2Z35ef9gNYy7bhKMzJCRv1
         qJ0qKP4xMmUY11+vE2CrscTsvjm3Em8Vaojeaz1aVl0QCZuifC5+5c3E+OZyp8gmz/pl
         IDHrBlF/CaeoDaF+jjDDRMKDPg7rorFU0wHo3n3yYWXljvBBdh6MBb7T5dhJeMYlso0H
         CSH2/AHqix9UW5GNWRxtzz9wByGhzu+IaWvriNMtrwTDORyy2uWioyqsXMxW3A92xMFN
         XBcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f+4BeVE9;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e10si723545vkp.4.2020.06.07.16.20.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Jun 2020 16:20:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Subject: Re: [GIT PULL] NTB patches for v5.8
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200607165501.GA7336@athena.kudzu.us>
References: <20200607165501.GA7336@athena.kudzu.us>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200607165501.GA7336@athena.kudzu.us>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.8
X-PR-Tracked-Commit-Id: 2130c0ba69d69bb21f5c52787f2587db00d13d8a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 787f74fc5050c77e29a96f480f40421336eed5ac
Message-Id: <159157202243.17419.801679395194811680.pr-tracker-bot@kernel.org>
Date: Sun, 07 Jun 2020 23:20:22 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=f+4BeVE9;       spf=pass
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

The pull request you sent on Sun, 7 Jun 2020 12:55:01 -0400:

> git://github.com/jonmason/ntb tags/ntb-5.8

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/787f74fc5050c77e29a96f480f40421336eed5ac

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/159157202243.17419.801679395194811680.pr-tracker-bot%40kernel.org.
