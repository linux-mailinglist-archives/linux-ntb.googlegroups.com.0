Return-Path: <linux-ntb+bncBDTZTRGMXIFBBJUDVP3QKGQEOIBIAMQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 131E11FDCB5
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:21:43 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id a5sf3286303qkk.12
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:21:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443302; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z/7Rz2rnEQ0UKCZG5/hiA1TvLtgxN5Coiev5DFzBvb7cCd/PCBNQBRPmfIYxMGlk84
         xCe5l69H9dXiykgfC25+hOFJxH2fXUow+xqBII8i6WIUf+Iz3TDZkf4GdxSDp177wr5h
         7KmoW/m9sCuIg72NnSDrLPRuA5kLsKoLCywv8mUkrC1B0mgQdGVOVF7QJfFWqMhAL6IJ
         Cc0CXThGI58PXGpfMBpseGWRSh+Nr8Ako41aJ7uIS85Bcs4x/hPBsN/hUzsvuuZ3OySC
         qRT61BzMWCAj0Ve/7IZhu5weA2RlVTlbDG+q9X0WMtNKu59HiWdEOjSwoUlOw+Pace86
         aJhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dZX8jW7/3NWGrH1l9lGD9ackDJEUF/S9ot4e7Y3DX7M=;
        b=ttVE2eYr9RThuFqlo1h82wto4eb67WZT/HY2DJglxHZx+U3BzBXAihRX9FGQgCg1TV
         dcBYlFCBZJlhtKoxngHtQ/iTt9ZFG76B6qJx2MwgZb9Rl3OOSPKzjLiSydF7zCTpsWgZ
         kMiRP+6V8zwyF57RfTYIg4k2Wy7M07UZKYFMwERRLfj4PZ1jc49SI/YHM1HrCXOVsFY8
         oB1kUqBJestsVOwVLIZm8diQSOonIhvdHiC0y9+itSwhDqRm7C0wlflJzPG+Ub6zrvkb
         AnRcytVVjcqhLlVg2f22+BTkCiitG/RUU8ja4pm30XA3ApHk3D42185ukkG1cPpbmF/S
         wSRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=d9YBbNj1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dZX8jW7/3NWGrH1l9lGD9ackDJEUF/S9ot4e7Y3DX7M=;
        b=JWLWEuZO1LFVDoSpmPZVRTtN1tm5FYVspjTxOUp8J5w+queaD2ShsNJ0E96tdwL8ay
         WZh7vyaPGRIETnp1ydyTHo4KDdkguCH858LpXTAel9tEqfZlM2zOESWJ3+/AcJYYyQll
         DSr6nhL8g1XBEsHHcG8mHzQNyVCdgRb8GZ9u+DNYhEKwebKWho939mqUgS2KrJsQ2rCR
         lLTY4fra8VmVOu58c7kbY+5l2aSyEb7zTubeb+HbrNgj7hUeQDsh85EB2VOn3PlLLc2C
         RoopxW+3LnyufyxZ1+3VNpGqS3CCCy3LbN1aEeEKHP8fo5tZjA8+x3wRriDTvfobfhLk
         FfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dZX8jW7/3NWGrH1l9lGD9ackDJEUF/S9ot4e7Y3DX7M=;
        b=etwaR0siRoEK77kDyo7sGhey0FdYOR6Z2iMuup/D3Od9XiXUPUP1mK9S/pQmhY7kKV
         C1PMppfh4jNpJKP5WrEgAkgrW9VPvFhoktl/+Q5ThV3ZpiaUGbcLpNgMCeV+wa6am9tv
         XSIypoNde/0TSjx3wJzDLmWnUjYrnVYbQsncvqljK5cmkuqHTpXfRVjPrNFoUDEGLii1
         1ne77U+pZc31mK2Pd1SF4re6O3ck6TewB0N9FinaHR/G9kWwaM5MgJev7zMc1E3vCstY
         BCFzKq7mM367BDnxYhviUcN5gyykSyiu8i+wtXuQqavF/gh4NcKVriHCdrvTndZ3Z+QV
         xdGw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533+GLuBFvH1U4V0T/6Zis3XhGQ7viMeZuKMvZxF7a69e/BupSjZ
	aMPKLhbL7Ih7C7iZtKrDK9c=
X-Google-Smtp-Source: ABdhPJxFvjAnPwb8heKopVqQjpn2neNMROllFA+zDf9fPItcK+QwYf9PrjUKnvmpTE73rx+tw1q9JA==
X-Received: by 2002:a37:8fc5:: with SMTP id r188mr368933qkd.447.1592443302165;
        Wed, 17 Jun 2020 18:21:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:78d:: with SMTP id 135ls1946880qkh.8.gmail; Wed, 17 Jun
 2020 18:21:41 -0700 (PDT)
X-Received: by 2002:a37:6642:: with SMTP id a63mr201314qkc.5.1592443301872;
        Wed, 17 Jun 2020 18:21:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443301; cv=none;
        d=google.com; s=arc-20160816;
        b=kC2kdjH8wmvAfU7ilUQeegbwk1wUBFZj5kd3JxEf87MwFPTwGLAXy/5ILMO5FR8slR
         lvqwo5VNtDHvlYQOhS7NYRpN7DRBB2Mic8jxeROyuThZBU8DIkVb1GNb+3lCydFlQ9TL
         j4IcXEVG26ddgQBqUwXTBgM95RtIMPRZoSJqG8rsKKsTtYnr+0HOeM46qosTOqJWx2pX
         nrq26yk3VoTVbF8kAnK9w5Qc6bNFTorYoscwVgX4HVaBTxNd8tZDWSmKFVIrHYQUwavN
         upKuc+SC0fna9ydvQc/Mbqik1YiCaqdfL9Ku9psRm3MVvDVB91GfhqsNIoXnGOXHuq23
         VxXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oA4tB4w0kE2rc1eQJ+MeAKU1EwS/nNGvq1R52HuBITk=;
        b=L7pDjcrKsWIxlO3DWgZtdSMfnOZUCWF2nWG8G4uVI8c0K3HckycQE7axUdwAhgl1FS
         NoRJ1wKy4K1EdZobmvZBiQ/exrqA2SU98iSX3TkAGbjeUpiK168IlyedQQ47Y1PpvotI
         BhmUxpMYHa9/u1bMIDyc9d8rKeNO7FXTxlS5vN+u5MQCF/srP6Mil/1T8giyTcvCWX9J
         Sw/DKp01LQQaboX9XTe9qLraAXCjqGIc3HImFpOGP8Q9UoD0VvGpvimHyZMH1FBNnib3
         RbUjKToX6Ki20enIYKIj2PWhR1IdNFu9uIzs1IJASAei6WKJ8/bpiFEsP+o76xK3Fdng
         3ESw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=d9YBbNj1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y21si105419qka.2.2020.06.17.18.21.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:21:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 49E9C20B1F;
	Thu, 18 Jun 2020 01:21:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 240/266] NTB: Revert the change to use the NTB device dev for DMA allocations
Date: Wed, 17 Jun 2020 21:16:05 -0400
Message-Id: <20200618011631.604574-240-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=d9YBbNj1;       spf=pass
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

From: Logan Gunthorpe <logang@deltatee.com>

[ Upstream commit 40da7d9a93c8941737ef4a1208d32c13ce017fe1 ]

Commit 417cf39cfea9 ("NTB: Set dma mask and dma coherent mask to NTB
devices") started using the NTB device for DMA allocations which was
turns out was wrong. If the IOMMU is enabled, such alloctanions will
always fail with messages such as:

  DMAR: Allocating domain for 0000:02:00.1 failed

This is because the IOMMU has not setup the device for such use.

Change the tools back to using the PCI device for allocations seeing
it doesn't make sense to add an IOMMU group for the non-physical NTB
device. Also remove the code that sets the DMA mask as it no longer
makes sense to do this.

Fixes: 7f46c8b3a552 ("NTB: ntb_tool: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ntb/core.c b/drivers/ntb/core.c
index c9a0912b175f..f8f75a504a58 100644
--- a/drivers/ntb/core.c
+++ b/drivers/ntb/core.c
@@ -311,4 +311,3 @@ static void __exit ntb_driver_exit(void)
 	bus_unregister(&ntb_bus);
 }
 module_exit(ntb_driver_exit);
-
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618011631.604574-240-sashal%40kernel.org.
