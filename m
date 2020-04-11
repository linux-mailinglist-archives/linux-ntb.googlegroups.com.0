Return-Path: <linux-ntb+bncBDTZTRGMXIFBBTU4ZH2AKGQEJSZJRGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFD31A5535
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Apr 2020 01:10:07 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id u1sf7374714ybm.3
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Apr 2020 16:10:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586646606; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8j6vAxtVndYqzJaMjn3B+AThsGuauXH11/MQj3adjtoSfu7UInznkGYcHkXyuOL4r
         OQ1m95zBVqJFVXeu4ofxM+l3yEVBbUT3dedXPxrBcEzvuhlZjXlT0Bk7eRYdNucpHIpB
         iY+uJDYj4zkmaAh3EHtaDVnxJ8JWP5hHQl9fOEWkdu9wz4tjoNo3JHPP8oNXpLCHnTtf
         CGYxqrDWmNOe0VxAxIiiHtzvtv8Wx746LGQU7398kG1i25F+CFsKaVI/V3MFMvohCADw
         wfqNTfbor+DSmeI9ESg5ZD1rx+XpaMOROKgknfqyJD3uqaxgUVf/tsQl18xtawRfkAPB
         Y+Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bOyLoFie1p75SNQkoaADWfwAtGr8ONTO/LbDFSTsoCs=;
        b=r3SW8uQOGWEhKzQLWfzlEUOMEziMm26/8Qwwk2JsdhpMB85vXLgm1f+DhjfP8bTWc+
         FbzMnSI9gpk15yaO3XmEy4ngDwP1rEh2s5R+0A7OhyKd3p4tUWjXW6ERgMjwxsRsgS9b
         n7QdC6/4R6fA1Jf6d1GtMtd2dWASQqAcQkQsLLST2Ah/HHWqO2D9h9SSo44DuvCCKptt
         jw04vN8RE4048bMyvGPZx7VxIu3nHRpwEiUjskCcgn+rsU0695QxTgdtolmHI1ysJwtf
         K8sMAllfJf6nwvDmKRAjZvTG3N135p3i2ubq+7YQtE+0tgLi0i9iHMENajuZqC55iwu+
         4Jmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fxxz16Eu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bOyLoFie1p75SNQkoaADWfwAtGr8ONTO/LbDFSTsoCs=;
        b=kH3eVHNIoe8rlqwyRyhLGq/6yIIqibPN7UKKI6Pfbu9o5tePclG+C1D/bqOQNpN5Hw
         L3OhrnvAMNDDmsKtzH2J+37FNles2CI1DHslzqqOmfO3fm1El4H/3O7qVdgXkbCK3KI2
         UJWZdh7aDR16JYPgHiSfYCbjjDMEqzYpwAM4m3Jf1swykw4p0Vwz5oh3DNF8qyt9WE/I
         cqvpPR51rKUpHPLRL1rSz4nuetEXTk4gBBp3DEHVSewTN5IICst6u7kOQFP4uFmP9/8t
         /3RusEZwdOCFoP6UW1FnhogBUxkCg9b4BdDbUjTs0b1RN6g7v29x9Oqp0GlombXY3SVR
         8Crw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bOyLoFie1p75SNQkoaADWfwAtGr8ONTO/LbDFSTsoCs=;
        b=JqFMy5owPvti4hHeSt4xME4I2ofPTbKxU8Hxdi7gHuvWUqGb5+AConoI6FZpG2SbhN
         iF+A8h/Zm76Qy95/BwI6yF7vcGfODFXmj8q7a2Xd6UU8drTGF2Q4q+vKFXQ1Buk7+Occ
         KBg+PuGoBMD7a687QtP+HFW3oPpYsG2nfdJ/5UnLl0daO7OhZDls+uq5eP0xnCBrZB5C
         hXU7YuQ9NeGRt6AuqiKychFEoi2BWcFYR2x7fn2H2s2YpPMwBQUf/cVDFc+hoRMbVWUg
         3Ftd5h1h4PLr/l2TmbCzd5GDHJg5K8omm/toZ9oDgnaaYRI4TW8Hd1vSNAM0l/qAeFJY
         vgjg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuaNhtcU9euGevTrOD9LblWiuqnYqkRzEyznqkjTrpDKJAER4Snu
	pikRUzSqSwi8QWrbvxgVGAQ=
X-Google-Smtp-Source: APiQypJWcyK2jVFjyqeDVkBKwcBGc+ehYceKLJ8tUqSHqQsZdlrYRPdI8eyIhIJ1Jl4J4/Shf1SoDw==
X-Received: by 2002:a25:71c4:: with SMTP id m187mr16372638ybc.482.1586646606155;
        Sat, 11 Apr 2020 16:10:06 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:ac26:: with SMTP id w38ls5939666ybi.11.gmail; Sat, 11
 Apr 2020 16:10:05 -0700 (PDT)
X-Received: by 2002:a25:bacd:: with SMTP id a13mr17381510ybk.461.1586646605778;
        Sat, 11 Apr 2020 16:10:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586646605; cv=none;
        d=google.com; s=arc-20160816;
        b=k/xXraOelsJEnCKN1Rrkd1BPJzKX+KZXoAPm1NztKVwTWybhhckUqN+/Nou2IE8TNO
         8mZwyQ0aA2CREhxZVVAVAcQrgnDiIB6IB8VMSCW9vesGxiCZZgMqLwtNlAwPX4V7catK
         YRXkPpVlu6RMMVbJw9pDB9TiSafRRwB3L/Of6ZAr9+NMGXGUAbEvoAj6e7zTHfA8ODCr
         ZvVFgFQUSE7A31QiTKYcHsPyyBoANCd9tWVi6l+NOUXsd4VG5QE+V5B2WW1hHtv2Oi7v
         tES4JxIi6wWBYW/XePgl2DtLQoS4jm+v7We7cspOi5lV03z1vePkdMISYrctUyXZW3ZF
         zZ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dmrx3NnKhg2qm/r+Tp8ZVn9E7b8yDTovmScjfTaDBHE=;
        b=qxlsWoG6plCFYfmP/BE2abJAqTR3PDoFL25DS2DKsX9nXjPnMtOLjeuqJO45nQHd4J
         te0C9HQp7Idu/hysWaGHbVMEaYmEAPhDUpylJeqA0k/lFYoBFS8rdeYMEYqsggK+uHOk
         vJG6hdRee0qSSKSeBa5kVPpp5vgWUzrt5eBeuF8V6I2ViO4vVzQ6ELKb4IU5sJpFDWyZ
         7t49mBceXTH30ndApQwxJ2UitMymRJPrHpzGmksEoT2QWskIJquY/gn3puGuxc0KsxIU
         UFiMsNAkste5EHp61Z5spZ/xJyHdkK90M7uEP/m/6DFN1BzRt7C/UO8WfcLmR9YiKoYk
         eucw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fxxz16Eu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s10si414342ybk.0.2020.04.11.16.10.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Apr 2020 16:10:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 315362166E;
	Sat, 11 Apr 2020 23:10:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 017/108] NTB: set peer_sta within event handler itself
Date: Sat, 11 Apr 2020 19:08:12 -0400
Message-Id: <20200411230943.24951-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230943.24951-1-sashal@kernel.org>
References: <20200411230943.24951-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fxxz16Eu;       spf=pass
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
index 156c2a18a2394..ecbc283f094b9 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200411230943.24951-17-sashal%40kernel.org.
