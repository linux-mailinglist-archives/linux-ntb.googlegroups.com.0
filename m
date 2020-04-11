Return-Path: <linux-ntb+bncBDTZTRGMXIFBB5EZZH2AKGQEUZID7UQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FDF1A541B
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Apr 2020 01:04:22 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 9sf998786pgh.5
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Apr 2020 16:04:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586646261; cv=pass;
        d=google.com; s=arc-20160816;
        b=NKHoH8x0QSBYLYN2tIaEGJQaA5dNL47qi91z+G+cbsHtwmBsbLM46f4I013ipjuyJW
         tDjbkGgYoeOi08ezffTx+YvJ8Gbr9m3cMaV0jBEMgw8VVpe4F2YTti+b1+P1PPdR9XXH
         5cJxOhJ5Qqmvx9pBLrv46lJnuQ3xOyMclsSdC4aCQfdc4W0wc/GdT8qyslHTKXVYMWwK
         Wwl2KiW0gX9pdY87IfDxg7Z7GrHxJNkwZocGn/XKkrxiQN5n7iQVEgCaEBbyrGgLS+il
         COdRsj/WEWQcZpPXYmYfYTGP6OBfyetd316cHMvzEWjrAQy7K5Y1dP5jo6W6GXnL/5k0
         C2ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dASS7iYTOhD7R2mrG+CJwC3DqpnC5mvYcNcuCk1UFX0=;
        b=0b5XWjJrIaOGdZWDN03xXBv6AnzRLcW4TlLcP+IT6/E7o6qP/PmzG6YU7l6HshrVvZ
         /9N7SwP2eiZMIxX/za5iB+STV/0t6G/c57JYT0W5beJf8d1bNPdxjqWTEDyiM2GbJblj
         0G/UJWbXzD7vTfeB2DeFJ1tC3ckGQMYXLegRa5sP8XVGC7uV332JfxV5u/4O+dtXieq6
         BrVsYmz9OfnwAbQulDXEkBA04RSb74u2gVvNR8mLVk6pTOccNI/vNFEyvwSe3MoOy0Lt
         c83DrBSpE1d8tB5gKFZ1UGdghZhGOJ5ushJqYJXD0OHKpH54r9DWnZ+gZwWSpJEBWsIk
         I9Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="xqcKapT/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dASS7iYTOhD7R2mrG+CJwC3DqpnC5mvYcNcuCk1UFX0=;
        b=BT8Py2arl2gc1CS3cSUgJdurFC3H/MMzC2m/X6nW+KVW4lXh/4nGQsqRJd5x/X3war
         LTOE1o/4TcYCyHXgZav3BwCz3ItuM4gaembGxXH30bUeSlKhNrPyDY8UcKRvDZopq40m
         u2puZcc3Sq4nA2G49GtwC4a/OG7mbNYqP9qUrSp8xLhoeXDrI71UznLh+FYRx0Rl00Fl
         XmxEuAhsuoumYTX14skHxZTmCAbH/D91EPxlSTbcKAkIrpMtw4r3DqpripSGHMAs/FPk
         iOFJWM4gcj7KX6rcfGga+dkqKDX5H+KCbacYX1gsfbJB6xLTmFpoqF0tZoeBUON/LnAX
         KOZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dASS7iYTOhD7R2mrG+CJwC3DqpnC5mvYcNcuCk1UFX0=;
        b=HuQWAGQ0dEu/rfLSwdioHsO1kcIshchM+ofMm7eb1vBHhE4w+Fy/9nI92qmhDZEk0J
         IHEWS6DRQ+MPnf4X+ZxFn7vn3jGeJn6LtcIPhiuYn3tIuyxtrM9sYQ/xv7ZQ8tx7zfZO
         8S0diYxiadLhXNTJeYbPh0RqDAqjtl17gMk9+3F3yJQreJTF96FRLE1tZFNZ7v59sYvZ
         3DSTyqsRJbcIEqZdd/eIuTIKUurcWtMVK39+LqEOaWfs7/ydqv8qpkGP177vCq5PSBiW
         fxidDWlGc9PdM5upick5HFvwcw+xGmLeGkbRJP6Qvt2vuTESDqitibUClwUcM63Z2wbf
         Y+VQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PubNYlcQ4BMM9cxJw46HDjm0YEues2nmAvsNyTcpEEq5vdvtX9Hg
	UG5DfM9VpxaBcFIGsa4MjKE=
X-Google-Smtp-Source: APiQypL492/I7cWRiKEnb3PoMXMDq8pmcbaMJfkRFQlDcDV0kiqb+2VuQeytTfSgNpuMrc3LUSOgNA==
X-Received: by 2002:a65:62c7:: with SMTP id m7mr1510977pgv.16.1586646260996;
        Sat, 11 Apr 2020 16:04:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:9a03:: with SMTP id v3ls13109371plp.11.gmail; Sat,
 11 Apr 2020 16:04:20 -0700 (PDT)
X-Received: by 2002:a17:902:507:: with SMTP id 7mr10906133plf.42.1586646260622;
        Sat, 11 Apr 2020 16:04:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586646260; cv=none;
        d=google.com; s=arc-20160816;
        b=f0r2EisFbOptl8YQZO8IB7n+q/Oc3/7c2/3nBoC2UOmolvi3PNOssd42lUMOPczQGA
         n8Y/nkGMvghocyj/y+/APSN/IxxIEnerxbP65yLXGxYel5OHJrKUKAsB8AxTwADzBlcR
         ZL5LUSSQdkBJdayJW9t+QbtWRpE6zqeLkQORz78yWH64YSsbFIDKYNS/YKypXBrnQV+R
         maMykwkCvB1mP8/Je9ovXyXygVl93GaC92/WTwMfacjlmcAtx2QrPoDooyRdU7ZaqAp5
         WVH3iO4N/xO9PEu9NFoexL4whpEcI/xFEIsOgBjMXZcNdN5yNzu4Quj5tXf2ygyPFOLB
         tnIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=90EoBoMUre2V1R8wkxlP4SnasiV/VQnTtNPkV05Blf8=;
        b=noFqp8txIMIaD6I/veFVFOGfl5PDSkqIQkq68Pc6tg/MxNJT/0/FdEvZ8w0XdTNzMQ
         JZBC6SbD+qHMEPuKzmtjqYG1zPrfS4nDr0ZpI9QyT1kOu+y9k6Dli5e7byxEuN4faBl3
         R08Qihb3cUdOPWQiDtP4D+cVZ9IdpkEYtESQX5Sf/Wup1l5g6oYDxGbEIgbj0xhzHUnX
         6fscLFLYEqCJi8K/SwzQ5fIdScE8uIRpotL29RM65SyR0MNOYXs2VRUH9XYCkb8dqSgB
         FRLf9MtmvvzWI6LBqBkOJuNc3dFTNTwyFvLLeJ9MzFBT4cAhsrkBjAEvAX9wAkoDFDqC
         qjJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="xqcKapT/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z185si203066pgd.4.2020.04.11.16.04.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Apr 2020 16:04:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B417E20CC7;
	Sat, 11 Apr 2020 23:04:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.6 026/149] NTB: set peer_sta within event handler itself
Date: Sat, 11 Apr 2020 19:01:43 -0400
Message-Id: <20200411230347.22371-26-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230347.22371-1-sashal@kernel.org>
References: <20200411230347.22371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="xqcKapT/";       spf=pass
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

From: Arindam Nath <arindam.nath@amd.com>

[ Upstream commit 2465b87ce36ea2dbd97e5fb58a0efd284c9f687e ]

amd_ack_smu() should only set the corresponding
bits into SMUACK register. Setting the bitmask
of peer_sta should be done within the event handler.
They are two different things, and so should be
handled differently and at different places.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index e52b300b2f5b7..119cfd89afddc 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -493,8 +493,6 @@ static void amd_ack_smu(struct amd_ntb_dev *ndev, u32 bit)
 	reg = readl(mmio + AMD_SMUACK_OFFSET);
 	reg |= bit;
 	writel(reg, mmio + AMD_SMUACK_OFFSET);
-
-	ndev->peer_sta |= bit;
 }
 
 static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
@@ -512,9 +510,11 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 	status &= AMD_EVENT_INTMASK;
 	switch (status) {
 	case AMD_PEER_FLUSH_EVENT:
+		ndev->peer_sta |= AMD_PEER_FLUSH_EVENT;
 		dev_info(dev, "Flush is done.\n");
 		break;
 	case AMD_PEER_RESET_EVENT:
+		ndev->peer_sta |= AMD_PEER_RESET_EVENT;
 		amd_ack_smu(ndev, AMD_PEER_RESET_EVENT);
 
 		/* link down first */
@@ -527,6 +527,7 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 	case AMD_PEER_PMETO_EVENT:
 	case AMD_LINK_UP_EVENT:
 	case AMD_LINK_DOWN_EVENT:
+		ndev->peer_sta |= status;
 		amd_ack_smu(ndev, status);
 
 		/* link down */
@@ -540,6 +541,7 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 		if (status & 0x1)
 			dev_info(dev, "Wakeup is done.\n");
 
+		ndev->peer_sta |= AMD_PEER_D0_EVENT;
 		amd_ack_smu(ndev, AMD_PEER_D0_EVENT);
 
 		/* start a timer to poll link status */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200411230347.22371-26-sashal%40kernel.org.
