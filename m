Return-Path: <linux-ntb+bncBDTZTRGMXIFBBIM6ZH2AKGQELWZTPGY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AD81A55ED
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Apr 2020 01:13:38 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id i26sf5120213pfk.20
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Apr 2020 16:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586646817; cv=pass;
        d=google.com; s=arc-20160816;
        b=xuYOHpk7z6nuTTCfHUyo48b+CZtIkKuBiEG2ue7yPc4QbOLRa4swoK493VfaPLQtQe
         e69SXfxRw3U1JeCKqezUCVst9zNNXS7wQHgGY8728Byn433Hr9wlW8O82zTk+GjlrWuB
         eAEuinn2Q8c0mNOWnq6SntStVrAa9RagnlbEoimOnPnma3CI4ZEJl1SKVA5SHHA4SkTa
         JtLnhYMPXCn087ljUAJJI9nCEPUvsM3tgZOi0YbjeKmiX2XQlpt1+z476XkInGFhR0/M
         9V1CDljmqfFejD2cNGY3vSHt8LW13i2sdepeXxXR/xbmrJaIY2Z0xcGJr8Bedn5L3Am/
         IqjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5+9YP/Xv3fP6+BES/RyDUg3myA9V4Q8jczTWbkZgnzY=;
        b=p89pFQU2Q8u+5+pD6CBIGaYWBFnY7vA3uKqcUi5GyUHz9TKbw0jNMdm/lfLo+7Wv9r
         clt828btKHYjUN2QHxbuL8RNRQgxedsNMXx9pe8xKHGeFDPDpgVeGCkhu9NRNBdJ899n
         PraHcAOAl47LmaiGs/k2qzyqEpjYFB60AM9O8jiDVj+8gF4AapYRiFN6VHV4W1ywgHJm
         WIo0k7TbE5FMLKyRlYBYgt31UTSai7uwwpeRl4fzkVPxiFZyioqdYYvJ4vjgTzXKtqix
         C1up0TTpMosQpWK4dHfpuRovpBqdKEyjMdaxHFl3VDMM/Ur6kmwkvZXFkqnV2KzmdCsy
         d8TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EdoSQ8Vp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5+9YP/Xv3fP6+BES/RyDUg3myA9V4Q8jczTWbkZgnzY=;
        b=IsoKWuSJdLoHYDDMuF+Vt+p+RlJ0BTD+fT4VGLgfnqgofn+BAWnRkgParUAW6JPWdV
         c/EQ2xmpuMumsWrOgxqSLeTq6oniyn3dKl5jdUz8AEfbnYI2mV3CeceXSPqo5xYgVqFy
         wpneEcTBRWxkLjnQYANQWP/JwO9Sq4ZipsGchUM9/t6HLZD85y0q3JRXf9svyVWZTr7b
         dw+9UmMHy25PDZN2kp+TEKhJJaxdTtUawz+ni4BzfqvFFiw7PSgJpt63BS+STgdFsHah
         PNn8whC+HXGGhAbJDLeyvCJCPag5LBZYRs1YDCEKWcUmtQH5zGNa4hM12f7tE3Gi/H9n
         ahlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5+9YP/Xv3fP6+BES/RyDUg3myA9V4Q8jczTWbkZgnzY=;
        b=hbPCUVSaHK/a1EaHBLbT7Y/X2asEQgMV0PsZyGPEAS7gaSfNPccOsSbDg1H/n2MWsW
         vu9d/0FEl36MKAnW968VVGasFIJNkw7AP5KGIpc5mOq3L+jIFQy8GLUtWYwtskVPoZ6F
         3sWs82NByQOKC2Lh+LVIDVMfYoA4qhiFyZVQJrERym65UeiUdimsMClxaQTfCcxz1ovH
         N5ai8BxtgErIBpBoxBXXcgvbpm2SewIGAtiPFscApI0PKCqCoPY2OVFtTkowZJppwr6r
         auonb9Isxs2/SUDpyPS9dDBbqrjPoc5Yzt0G+J0q31dngm6ByvGEN/S7BMY6Z/5qWJAq
         0ykg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuZkz4grUecSTHaqe54vzLEgicANCpws0n5gsXsGqzI3O2IIlEJ0
	5yymPhLvC7vWqV3ZDkcWRg0=
X-Google-Smtp-Source: APiQypL2DXhTHxntuPqQkIMesLgIJxxkkfrhIG0oXYJ6BS9JoXcSlLKqcfIz0GI29pErfun2ApDYRQ==
X-Received: by 2002:a63:d546:: with SMTP id v6mr3511645pgi.228.1586646817611;
        Sat, 11 Apr 2020 16:13:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:9a03:: with SMTP id v3ls13133637plp.11.gmail; Sat,
 11 Apr 2020 16:13:37 -0700 (PDT)
X-Received: by 2002:a17:902:8d89:: with SMTP id v9mr11081458plo.83.1586646817296;
        Sat, 11 Apr 2020 16:13:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586646817; cv=none;
        d=google.com; s=arc-20160816;
        b=eMwE3P7wBWqM/lWaoQFlwQjv4Wd2gdmX4nbJJnjpFxFT6HJkkr/O8dXuUqPv7tM5V3
         z0Dlzg3i3+Y5K8MVhfxt3hSjFL8HPW0BqwPBbA9uwnhWUtje/1XcCNFKhV2cRKXzvWu4
         BRnQk64zekz1+Fi1YkE8WLAHcyrWyzx1SYjNHTBto8Vx92cqubmgdnQL1XfC/KA6EQwK
         krhXUT+9umm14wuSjKMp/ePbldbB29+8SYzsKZdaDjYyzbWAtulMlr985HeooLj77lIA
         5IafHknjFgaCR3KsPzSBt4DmyLx/Xck34ErOpYXNT7PvbRyGFYUU2mvwmXZR5e/npleb
         zaUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2pTKe5fWj5JAVvqIxPO9LTXpWzfEsudJPDa8w5K0Vuo=;
        b=Nn2QLbAegY2xlGY3o0U369inFVYXdK13xYXl+naQhpnGWD+VZdZdDinnmTCLZLVEw1
         O6PRLfMdm6RpM1vihmoshekhc7pfk8KoM4Iu3wn/m7BNXEoSUmNUsKMqs1BQFg+8Hm52
         V4TCwZI3EPreI+lydoF6IGWsQDlMpEPOGAkXNV6F0JEVFqJurd1y0VKNhzOJHjAQUOLu
         dAzcsLqTqA0ofGr/iJC9CFY4ah+D186lOXjvhzAC80OsCOwuxhVY+lqOnrBLfWPt6YWq
         haPYkRID1aL7cVonaOvfImLPr8yTyjwjY/7EhHCA4Xdi8bC9Dec4kkt5bdYI2rA7qSCU
         Xx/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EdoSQ8Vp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z1si261456plo.3.2020.04.11.16.13.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Apr 2020 16:13:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 71CE3217D8;
	Sat, 11 Apr 2020 23:13:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 08/37] NTB: set peer_sta within event handler itself
Date: Sat, 11 Apr 2020 19:12:57 -0400
Message-Id: <20200411231327.26550-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411231327.26550-1-sashal@kernel.org>
References: <20200411231327.26550-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EdoSQ8Vp;       spf=pass
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
index f0788aae05c9c..4cdfcff21efd1 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200411231327.26550-8-sashal%40kernel.org.
