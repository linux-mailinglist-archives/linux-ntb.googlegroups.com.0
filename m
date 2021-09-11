Return-Path: <linux-ntb+bncBC5JXFXXVEGRBHGX6KEQMGQEXXWFMOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E050407714
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 15:14:05 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id n8-20020a6b7708000000b005bd491bdb6asf10859858iom.5
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 06:14:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631366044; cv=pass;
        d=google.com; s=arc-20160816;
        b=diMBxfUrp4SrXi/Z4ihkTSJmCtcFdwnMlrsCZMXPqyhuHvAv4AU9CSkdUtkv4oKpU4
         UZyMtCSRJxrsjSPVMUEKHiMxcolsPi2KUUB2IhDwR1MN4a+gz5VIR7QYsKesP8P5PUsj
         4x0AnmDEOUv2JkFpDaRMuCJtfHIOVfwNHcyM29kZrMzEP2M/1o/ipgnIhUGUa0iHriIB
         S/mzo9/KWapHkRMTxHybcwY6SoH4v7mkHZxb5y+JnqO/7R4ucr+1ICPZTFOIQtfci8f7
         NHdh5ZdzoRVrsDOwIXqSMSm+6sR6+KNorIs8wAFwl18HFV8U3Y+jI0nho94oQF+Z/NiT
         F84w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4DI6OwbiQrknXnFyOuwPP4C6nYSh1APvUEWT+swYpDg=;
        b=n7yUQBq6dNB8tZsuUoBcpxkBwGD+g42c5mFkzi2fZc5MDpcmlbdi8kxvbHD45lhTUi
         9qX9n0WYLke9Js4rWj4Um41ruAKDE+7D12IUN71TUJZ7gaioKayUd/EWyQbXQ0F2PaWy
         nAeCP/B15JLkRPlqjQ7lW2y+uOQXDs6lNH/IUp279nBl7RptjEHz04AyjCx7TCPurJOy
         swDuKSVDoUU2SqGEpVGUDG7Y4F5eAsiTXJg3ejPKXCxLkjOKlY/f4WD3d4G+quixw3cp
         4geS5fYvg47o6fCmJZCVY0SFxKbeUssUlYhD0tRgmYQS6tcObmAOQA6jpY4ThuQinh0v
         6jHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="BnChKO3/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4DI6OwbiQrknXnFyOuwPP4C6nYSh1APvUEWT+swYpDg=;
        b=Cjijk4G+ADoZMzuWLO3Zd1u50SFCmesjcWtH19sHTJXunQebd7sL8uDhw4st9b78NF
         SdY9+54vPigi1lb4TuUU7DGnxfRbyHCxayKBqWSOc/lytCPAfh+QWPyq/LGh4RHq3TSK
         XItH2fT1XnkRE9H5aA16n+6w2VUmgLFc/B1OfdVfdkWwur0n+itlPNvGIY64d6tjnElZ
         GchdEajognb0eFA/iwKEenvrayE7J1WHhfFf7bLSn3+beCtltJzOHxvYMuYtATkbbvu9
         feDJUCvHfu62MqfHKdKJjZcxvKbj5DL0mfLjxpe+tu3x7TvZVWrPT9WamzsSncuo0Uz1
         ulOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4DI6OwbiQrknXnFyOuwPP4C6nYSh1APvUEWT+swYpDg=;
        b=8ANzYMWDIB06EE46xFt6DxZvTAZWau3zPf1y/e79utFgFRLxUlyT743A74iQ0420uz
         XP/CTrD0sr9LcIb7KC8MKcAWKL+QLQzrnqtvEkbiUl14IQW7oGFqfUaR6OiP0ODbKzOa
         PaTJuergzxhY2Cv/hg/ieLd5Bau9OsUsn358P/t3b2GBhOTeKfF7mj2a+E+Atepr+8iA
         +ge3Tl/VjmNmHmWukDJ/M4FrYrNM8tD5KbnDOD4uDJoQa6A3ePpYkwOTVK+BOxCw7qR+
         EA/6a8u8mv8+fP8qb8B6Wf1O8OmfxAl1SxWbw690LddsEH7nn+XdSd64WOl1D8k21/2C
         JjuA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5303/fiV/ngnTFn883VCxqNO+pgKZuUpFuFjnUYqWx/n8dFZXed1
	T2M8HAvUFYSVREsRoT2IVLo=
X-Google-Smtp-Source: ABdhPJwCHeGqLogJX9nnWNMLWl8h1eJxTnFBi5PMy49wDdazqCyHaAplG0nuzqhRexxq9WZh4SjRVA==
X-Received: by 2002:a05:6638:4195:: with SMTP id az21mr2145565jab.40.1631366044476;
        Sat, 11 Sep 2021 06:14:04 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:6e05:: with SMTP id j5ls214482ilc.8.gmail; Sat, 11 Sep
 2021 06:14:04 -0700 (PDT)
X-Received: by 2002:a92:c9c3:: with SMTP id k3mr1780919ilq.173.1631366044099;
        Sat, 11 Sep 2021 06:14:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631366044; cv=none;
        d=google.com; s=arc-20160816;
        b=IGOlA2rErvCDkNnNHbb7soF4YrLXJ9mpu5+v7ovVh1ix6Bi3ro498pAhk4aHWbwLvB
         iLDWcZyzuUMHf92yG+jJKfaBuyAUSEBeTxfQl8QCZq2+Obpqj9mPruU/OzynwTWwP2x6
         K3CSQIrrXB7Oin3nbi2lxofZLgtHQFWcAZAoXdmNKxpcBWQZmOILQdNV/v0Hkee1sYKR
         P4zWIAv3kStsHIfVuB0iwA71wdDhjgs5s5mJYGbUWH1hG5G/tHAUc7zkdIRHP1jVjjMF
         EfncDWBIV0HQjoscDFVZfqkL9Ka4Wcpq+3nNII+ka8DvSPCfaDJO1Pt+7bsQwv0UTcNb
         nA3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6Cm24ay7KDrskBf1f4qL/2o1uXuG1oB+odE8AUzp/ZE=;
        b=SMYQERMya7pZKZAazjn6tvT/IM5CYilT1gPT7Dt9GYl61Mt+V8ywbHkKAMZ4EncSRb
         3uFoOUBpBVHgJwLLScS4kUFtMwTVEzRM2Zek/qNTcI9GU01GJTBf/gZABeZXKLVDGx3u
         FcBbMnosScYUGy6f5mP95QgGsopDaHrqEBHlHsp5wjZRKRHokeEa48MZ8G4L6jUkxXpm
         pIs3lYzPqpJSWd3vfLzwplv7PHsusoxsEUYL/uQVSD+y+LSTYOIU7vYouqmY0tkdlA73
         D87SjOeYw1dJfYIgoBBjSq0cHQAdE12O+s/o0E50ONNctBIuQIZLZYovrh0Dkaf7aLyH
         f+1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="BnChKO3/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l68si224498iof.1.2021.09.11.06.14.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 06:14:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 989026135F;
	Sat, 11 Sep 2021 13:14:02 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 14/14] NTB: perf: Fix an error code in perf_setup_inbuf()
Date: Sat, 11 Sep 2021 09:13:45 -0400
Message-Id: <20210911131345.285564-14-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210911131345.285564-1-sashal@kernel.org>
References: <20210911131345.285564-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="BnChKO3/";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Yang Li <yang.lee@linux.alibaba.com>

[ Upstream commit 0097ae5f7af5684f961a5f803ff7ad3e6f933668 ]

When the function IS_ALIGNED() returns false, the value of ret is 0.
So, we set ret to -EINVAL to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_perf.c:602 perf_setup_inbuf() warn: missing error
code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 5ce4766a6c9e..251fe75798c1 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -597,6 +597,7 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 		return -ENOMEM;
 	}
 	if (!IS_ALIGNED(peer->inbuf_xlat, xlat_align)) {
+		ret = -EINVAL;
 		dev_err(&perf->ntb->dev, "Unaligned inbuf allocated\n");
 		goto err_free_inbuf;
 	}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210911131345.285564-14-sashal%40kernel.org.
