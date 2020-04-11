Return-Path: <linux-ntb+bncBDTZTRGMXIFBBT45ZH2AKGQEDLGP4DY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 144F01A559A
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Apr 2020 01:12:17 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id o22sf5442365pjp.0
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Apr 2020 16:12:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586646735; cv=pass;
        d=google.com; s=arc-20160816;
        b=af9EL1p5udY33lxFmtkZlNsosrZ9Dm53eLAu9ZiSQxfu8TVzIJ/bQMsFhf7cRdJTLI
         9YeszStUhAYHSw2wvVx11bimINwAF0gOoDH2qtM9bulgpCSBXTF6QGiwroWcRxnsjBCe
         XX84J52y5O8wGcFZl4RGlATNzfWPl4eGl+Bwgpzp73iyr0C53DKP38451OyVKFzJVydY
         PruaHU7ZvjbLYnJbbatAB+oPZ1giWuCJtsUI90BDY23yMLKmJI5fwCCCz+WFbL2bmqTg
         dIS5+9h4FUxqgoZUYOAVsku4U5xG8qmQd6wD+fVWB1uoQ4XR/WzBEIQwyWhgyMVKmALv
         y3DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OZTfiTMuT95dfOBrelzgzwCk7huu3FctRtRNlgW7v58=;
        b=RPrfPFKSJjPqFAaILqCmP2bBjy9kKWcC0fT1B6hi1d/MxsNIFiQw8jYDaWG+4Y4mJM
         LSqI976tdyb1foizvKVHv5XBFXNV4T0j1pjDiC083d8XLJ5aui7DHeBmQ953iY+Fi0eX
         O72a7wET9teTRXDdBBAYrUktJZkucgZrNQqqe3daQHIQ3HrITQz5PLt9q/m54A6WH0SL
         0p2YzH5shyR/qUTEfGs/MTwp6nHd9MCBm51ZC3rKrvhzxsyvtRk4336T5mYAoGeaaWNd
         EVs3s873zWpT5S5neKhEn42L1UQhV04t9vpoiUowowLEETwDnKnYQQ5Km2O/NozZ28Bu
         01vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KwfrHwYq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OZTfiTMuT95dfOBrelzgzwCk7huu3FctRtRNlgW7v58=;
        b=TzgeF+fgMQyGbW1rP0uiSRXnJMoo1j+gar9I55PEvlb4Z3Z8hxwR1h7YTwXw3Zxwyb
         JvS+IhK0AIXlwXH3f3QlsKNALDckYGKaror4ZG54LOfF0r1/V30FkoAcfYk1OF33YJsG
         36GgeomslCRWQjYG1ZptoZqa5Wx+/Uhj3B5SlDPcoiIe43t9uzqVGTQt3LDDE5IY2czP
         X57qJVJGDB/fDgLBk5xct14rAKFn0Btxwpn+rq1UjxT9AYUjPB6sbw4DG9sL5mW0UIBf
         945b/F6ODmjmreWpfq0F/PY65y9sH/P316grmuT1sW/k8H2ZgNvOWGXpZmNL5cTghQ7I
         S2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OZTfiTMuT95dfOBrelzgzwCk7huu3FctRtRNlgW7v58=;
        b=sGudSxIDgnMXrOH1BXNxBj/q6rdA9s5lCgtpsuDO6yHmnuKbf4uN21rACIHWYo5b+f
         aFTR9M/pXJsWNWzSNuz1YMQ8Kz5uUZ+5M/P87aP3pUEnKsV0jvga4wv2HVjeQKy0QXoo
         ge5nxJk7Y1IdSey7KZh5nIbXQtTlbcbaMd7m+vjyb68S3UtaGVLDuZz+YFX4BSYvSdCs
         zUtSjFwyfQR4qBKo+J8/s9i3208IIkxhNI/ODLjkX8StSx8p45oH3O81oICmTbp53hrs
         zsb1cdI+lCHU3bpm6FpSgTOkcHInNBM9FX8nyWH5PZkRw32y9eOmI7JMVxLP+cdKX3x4
         7f1g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuZ2t82STXD8bpV+GpsASuvOEaqj7OFkSLaj7EQZeJGSnTqPdT6b
	crCZxpoNTMUcXgl8WMPIIsQ=
X-Google-Smtp-Source: APiQypKr+s/X3EngnKTfh/RW9SWwVDXFmBpnUZr+FawSO0m3lp4WLvEpg3KgxLl8ShdEWmODFbCywQ==
X-Received: by 2002:a17:902:7896:: with SMTP id q22mr3942338pll.63.1586646735322;
        Sat, 11 Apr 2020 16:12:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:af5b:: with SMTP id s27ls11351638pgo.11.gmail; Sat, 11
 Apr 2020 16:12:15 -0700 (PDT)
X-Received: by 2002:a62:fc82:: with SMTP id e124mr4768128pfh.97.1586646734935;
        Sat, 11 Apr 2020 16:12:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586646734; cv=none;
        d=google.com; s=arc-20160816;
        b=pghBod7MsW9VRyVg6TYv9g660q3rtoykOU/83nyXQTYH2MOuJfRR0zvhwvsmy5eJUS
         1tWw9WJYcFpOZe2lViq0CgyDVMd8+U3g9mdZUjEiqjMBkb3uxmgYavknbj9bE7+GzEeG
         TMKMKhLQlb1SlAOTBwuZU91hIqNEwiOd+/qekRlmy5ngpku5Jjs1hc3PiZAJC9h6iJo8
         c0IP7pqeArudsq7CZSxoD7zHa06aWARX64CtCxA29nXShuY+nHpVIWodIWUilzqM2C+h
         AUlvr3oCrXfmym6bxxx80rqtAlRkvpi4tbnM2M8dPWxZ3CXsuGJ6HeHuQBseRf68F1Kf
         Vh2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9tmk9/n87mPOXA97Pi8hEZddy1ceh/KVoxDQENOKvT0=;
        b=YBjfb8UOeMFsgYSz82MMZacCWCVK7tV9NrUozAHcJrlV+XIr1ZoR5rzqrY9MXyN+ja
         seC3x1W+icVujDPhl1HhxGtzptsWk8yReNe3KU1l+LRn19bPGBy37gx2VnoOhmWTfj8M
         fWN6IrCheURgANmKzPcAp/RjZ6/ZNXS1CcrhSH/7ex6x7lVTXUlBZfxj5tr9Zp3ff140
         qPAO+uHwPkUJ6sOWlUz5ixQccZ7hlG3+fJjhriHGZcJxQo14eGWSdhNDBcsU4kCTWZZq
         +59UGOPrnj9BLRD95agXYwgdNFTGLtysx7paJMa2k0F1MFSJW48e3NQE9b9NxGWQC2Aw
         cETQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KwfrHwYq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ng2si187376pjb.0.2020.04.11.16.12.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Apr 2020 16:12:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0DDB220708;
	Sat, 11 Apr 2020 23:12:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 09/66] NTB: set peer_sta within event handler itself
Date: Sat, 11 Apr 2020 19:11:06 -0400
Message-Id: <20200411231203.25933-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411231203.25933-1-sashal@kernel.org>
References: <20200411231203.25933-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KwfrHwYq;       spf=pass
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
index efb214fc545a2..967724ccb03ac 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200411231203.25933-9-sashal%40kernel.org.
