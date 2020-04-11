Return-Path: <linux-ntb+bncBDTZTRGMXIFBBNE3ZH2AKGQEDQON7DA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id C95AA1A5481
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Apr 2020 01:07:33 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id v20sf2275554ual.21
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Apr 2020 16:07:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586646453; cv=pass;
        d=google.com; s=arc-20160816;
        b=051whk9jSQFi/DtjUBwmMHSLYSooQkISKjfhMfJRIn6BCbOJ+EuIMf0VdKATJIp9D5
         dFKHUn6x1tBu9uZyGL+I5Uh3NzoErrI+L7Bx2XmgnJ1uxMUQEVwCDvzQaijrPbw8g6Td
         QKY9WcAOfto6SftJFKT96ETNWzMqFQtPl8EewmFCdwKnLZL0GfagL4Ev6XkLD8p7FZ+W
         N5et5P57K3P6gDPhsYNIKiWoVjdMaASO+LWUJvF4shxZFKLnX6iFUbVAAk5+ihXOlwV8
         RhRrtuZjlId98WMJWYcfr6/mCTD2bRJZEcf9Ht5ET7yWkWftHIkurFBBHpENFXiRvkCN
         YK6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DKbHXVXJj5hRJ35+e0gmdlB6W2mOn3b4STM/aHK3SnM=;
        b=moTuqqU5ycXEkU7JYltAz3wKmysyHrjObMsByBM/Nyfib12Px7qSZo70O39xMmRsug
         +o5A5pUbOTcvc5t59YNW40kUEQM8wFeAU/+2iKnZTWf14sdpbjSOBx0LshHByHkvrlqn
         8rqraRLidublWv7iZpnrDwhhysgOSYT6tNSu/VKmu/9KCzgv8cK3fe2Ayg7I5VaKv4dq
         sgUVrnohgw8r7ukoKWeeyOo+FcCp+o3y3WKrvzwxDV65bd8KeEx//0N7DWP/sLP79xyK
         k3PP/jjkzlg4ab4pbDKIa9dXclEGh1SQUzzGcRHXWPYTlYQvyG3sheFT7y5JgWoTHk7N
         MvmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z+45AwBk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKbHXVXJj5hRJ35+e0gmdlB6W2mOn3b4STM/aHK3SnM=;
        b=Y16bMnHq1DkOnegXrV7j4SukPFFzS7LwmYPT6AwzGVwLoy13qr8ZWZ8iLNc/B64mM/
         8luTlamuWqYWGlCGlW+DzUVYvEGwHryuYeWGHZTxShDF0RM3Wxwk5rRZCY7qSFL21Cxm
         sSNKOIafHLb1JI3vnwFdtM9uRkWpKYC9WB7OR2Cke5DeXx2EZZ1DXsGuVpuu0q1ok5UM
         Al2R5Dob3+JjUN3qha0dJMbi2KfYBa70K3+kYf3kxpwfep5IVFdkVB4vBvqp6SBvJ2Gd
         ft5+6a3asVXj14OWfbf4THs0Ng9LafJj1f7OKNd+ZYfTr+t/TEP66asLjaZpeN6anhEl
         SGxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKbHXVXJj5hRJ35+e0gmdlB6W2mOn3b4STM/aHK3SnM=;
        b=Gz7BidGEd0K6bvC26ghxXHhREU9T+X7QRkq6NIY4DLLKNzPJoG7FjDFN9neDINxct8
         jhIiORCGjvHycJ39fmViCBzAAMBsnaB5N2Ac1OQfrHp8ckAKgrjQMzbkLDir1QKB88EA
         vM0oZmkR8ZZdxX3grCdN5b/4Nl5gipMAWNFfgNGQHX7+4u9xBxdWnDn2vdnssv5O/aV3
         J2Pr8dZ8Z35zcsYobGxheWyPcw4Bk5pSEs4DMyBlBKD8yE/Hp/f3WliWkfrEzDnjZs1T
         gffT3f7pOjV0VWtOvrwV2e6ngPrGgPMO0YHcyO0Uxp3Yx8Fgcu/rtueGZZEfHUVBU0/m
         G43Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuZBRrHg1HKuL5Zd9Jt0U68lxGFesSS0GZlvOWCI3ovMJydw1laK
	QNP/Ba22myeSAtWO+gnBwtk=
X-Google-Smtp-Source: APiQypKqfu5s/p3Q815Xh7vYdS3yjRMojU9pTdKVmDEgA1sZdqNH16Lr/gDwdOT0YFvc2iNcH8hvPw==
X-Received: by 2002:a05:6122:2d0:: with SMTP id k16mr7388264vki.54.1586646452712;
        Sat, 11 Apr 2020 16:07:32 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:2f07:: with SMTP id v7ls1955995vsv.3.gmail; Sat, 11 Apr
 2020 16:07:32 -0700 (PDT)
X-Received: by 2002:a67:fb52:: with SMTP id e18mr2284317vsr.190.1586646452429;
        Sat, 11 Apr 2020 16:07:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586646452; cv=none;
        d=google.com; s=arc-20160816;
        b=EPMG9qk1tqqAcLPVDPSU+QcQq1mzNZKsz+qSLp7CVzH38yQgltA1Po8bo6cZ++IQgm
         OyQlRIeZKFh4wSH4AAa3WTa3Brt/Zv5hqyBBYcFiZ32f7PkPdl2GKV8est+jvpZ1GFCv
         De0AEIcqEGdhJG153/6JhzsO4iIogU+Ro+LGR/lzuzfpScDAwCkt0Fo4n/eQ1pfIhHoy
         zUju4z9nLWcvR/Lk4pPI8EDhHtUGnrLQQ15Wv+tKJ2Q8De14jUPecYpo0AoHVJ6WqxMW
         xxdrWEBLVtVeQ4HvT1F0IyTxi9ac9dZTkTJoJQBFin6+eHj45FrXXvcQs4YN7OIDVvRS
         vOzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=90EoBoMUre2V1R8wkxlP4SnasiV/VQnTtNPkV05Blf8=;
        b=GbW/lo9XtbMoZ7C7NJzT5/tgulTqr3xsTBlmC3B++1vnpvUIYwCTd7ZQLSweWrh0zh
         7PraVJXdtrt5b39Xnv0U05ps+8ciNvPmmIr8TIplwVXAlhcILhuKpCTpPCYFHHAqWUOA
         K99J37Nfe7noWsQuYniTAO5I+REyCP5VHWDQpkeYopJXCB5LSFDKg6oyWy5i9pThkUs7
         T9BaKrU49KMB33O+nb6H3tDn58VqtPuR4PRCdShH34EMTiIzMpmymdxlfT4IYMFH/kau
         lKWDDI/AywJPgeSq9NWTG/ZWWJgfZrLzJ4E8qahbczfu1uQkNe2LijQgwdV6tmnUpMmo
         8usw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z+45AwBk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s124si379723vkb.2.2020.04.11.16.07.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Apr 2020 16:07:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C208721835;
	Sat, 11 Apr 2020 23:07:30 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 021/121] NTB: set peer_sta within event handler itself
Date: Sat, 11 Apr 2020 19:05:26 -0400
Message-Id: <20200411230706.23855-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230706.23855-1-sashal@kernel.org>
References: <20200411230706.23855-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=z+45AwBk;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200411230706.23855-21-sashal%40kernel.org.
