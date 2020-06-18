Return-Path: <linux-ntb+bncBDTZTRGMXIFBBO4AVP3QKGQED2PKE5Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7F11FDBE9
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:15:40 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id y3sf4826968ybf.4
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:15:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442940; cv=pass;
        d=google.com; s=arc-20160816;
        b=M6cbOZQrfs/4q9D2oXtyY21h0H7rt9GN3m1x4JLidzM5XyOFn9w81i9NsKCdEqMUCR
         uATP8/ENMelcEFQ14y8SQgNT+tlDHVx9aVCp3PXV4nOVxm3THqti69i+PzvZZrXcrgZ5
         zI92eHbW0Y4xjkpqIBTeoHt/JnnOgVVfV96rV7Pnv4H6Wid9G5BbQORS5E+oZRMHORgf
         TdzzgV5UZ8H6yb2NrP21gLPqxlljsBZ9GWL+Ol4bwp42PZ7PnTzKwpUzvXkvxPptn9Ab
         voBtDfNm+7CZ8qLUOAh4PdC6e0lqZArT0GnKfJFiRxH0J6zx7S5feXt6rlPB73lI72Q2
         F6yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iRMjH9mlU4tXTNMdnVXo2sxh6doF75nCKEDGuQrKNKI=;
        b=eVQnlBBgJ+I3zlwj7uvuns+heOAMhUkHMMOHbjWNHN8M3XcH64ANk8AKIQnSidACxy
         bmcLYup+3uewMAMJ3opEOrKpLffBRu3ruCOOYCkIIPVJhc5fzlIYNdfJF09ZaWMuLR2G
         pxSaATdnGgYuzvWfvSODbaJs1GFuvFzvtXlqq2emwFp+Z6Xty8Ptl1SEnciWXv+skv9I
         mbB2GQyntRT1tsUNZ6JH9xY4VZRBL1lfKCUTRzQRamozrodgBnrGjw9M/CTePo6HAQu4
         k/gaarMmcH2uz5icSqyzZFGvO6Yb4zqxqD4UkQ8Zy/9Ws+FTCn2J4aG8R3fec88NH4E7
         Rhjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OeWPlgqw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iRMjH9mlU4tXTNMdnVXo2sxh6doF75nCKEDGuQrKNKI=;
        b=h0nWVP27ACm6O3R5Ti/n7db+UypRnEZEHMEvEfltJMWyjGNGt2yHkOcBL+nMbfPwwc
         VPWLtVZLaM0hZEUFsO4lfmSlMMFPrRGeQDlT4tPCByfdBnRMp3LPdyHIKcbUkGQcQ+Xv
         XQ2wKXKVlUBOkY9ict92F5Eko2FPSwz6LlndvCXlX8YNeR5fYR9Zv7P+v43FKJ1H/Wgk
         /n5fVD+Uzgx+tBEu35E0quSWKU5zG60mBgHQKP7JNbpke0lSXTw0vuwt/oApC6LT7gt1
         YZre6jzuiPHNr+AfSGEiLu493ed/w/9l8AYgUsLq3qkrW/S9LxkmO9KA10ONp440KBFn
         1O2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iRMjH9mlU4tXTNMdnVXo2sxh6doF75nCKEDGuQrKNKI=;
        b=BnQ2KOTI+Rxo7tBydXkfNWu78COPTHhSV2kWMHkNbut5BYrvCCjFeGnskmqCKnwEQI
         PpMm5QZ2q3+wWTDxnKtK1A7kFaIPmKVF6tyWVw4hFcQetZ7ASInXHsIIib6soH9K3w5o
         jrG2QXoiE2UnkEG3TTDZUzIWAVo0FMv3OAQh4saAdSWrsGHuFIhRU53MYnVoatCrG19j
         cjn91m/+McP3MOxq6DztLwDvXl7ci0hnGXtB+R8OrgX+n+Gxpbw1rdRTV1AzfRbIm8tZ
         E0/lqxC2bGo+nrcy+hMQCqoww0r7IpLKx/RdCnCCEov0C53geVHCLty7nFFd6RMUQSv4
         ziOQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532qGGhZEC0kkX5nd4XUF4OvfCADFPcx3U1GLN+OZi/MDAIYhzWO
	0sI70Vo+oqrjHDBv6T1NYSs=
X-Google-Smtp-Source: ABdhPJzf4lZDUC3vmPGkn7X50tjWvazjqCc09GuPBw1n2QH5sBb5TCYdsrWqhhfsd/9wxjwvKrVuXQ==
X-Received: by 2002:a25:1344:: with SMTP id 65mr2667349ybt.183.1592442939867;
        Wed, 17 Jun 2020 18:15:39 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:3412:: with SMTP id b18ls1646651yba.8.gmail; Wed, 17 Jun
 2020 18:15:39 -0700 (PDT)
X-Received: by 2002:a25:df0b:: with SMTP id w11mr2840419ybg.449.1592442939559;
        Wed, 17 Jun 2020 18:15:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442939; cv=none;
        d=google.com; s=arc-20160816;
        b=We4e2Q4QvY5mBYsZji5hxnNL8jElOiEojB5TGmpTniaLZeV3XKIOWfTjo0I5aFD1AF
         6mU9ztsA6SSf/56xDi/hsPCr3w7Ue9Bmt6NJeXLbJtvMQftXW56G7s7v/MZw+5DAety+
         kEd6zTvfk7p8cTcOYA/mRpz90inrOIrokWZG76X1HDCNEo9JZm6nZsmog8o8W5e98QVu
         vkJ89fvok7qLEwFhn83A2qx5ZQmBMvCGwlgx/3Tt4twnEc62WpRdGF2EXovU22KkmqwT
         JuMCLqVhWgTveXmsYWbzQ4jCYB0kPXfKTyJPf+0HzRJ07qvKQ0022LfZP54LS4uQuZre
         AKyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oA4tB4w0kE2rc1eQJ+MeAKU1EwS/nNGvq1R52HuBITk=;
        b=DIXdXma+ABxwSpNr4oha2x3ETr5edPaSn2xstoz93F+M5barElCUnG5b6SQMocN0Xe
         rldEqor2NHudf83fzN8JLq92YS7vgeMHQu+QTLl/I1b9I/qmCHCYWBKp/qbE3n/YSkvG
         gxY45xPc3/2x9gArqFW7uKyvqoiRHQmWRETZdLkODZUPIbel/sMfqtFVjl0o2VdBAEhi
         1e7LkuKNpmEvtQVYqOBmHThweh/E8C+7c14lAbz5bBIg3++BWLaLyY3uXeCDvtfkZlYh
         SnuN3hGcyR2PJ+oDqxngYeZHBhLlYNAhakg65r93UXD+o1EWDPwtfWBgBlizrDMBCScW
         KbCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OeWPlgqw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v16si109497ybe.2.2020.06.17.18.15.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:15:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DBD7B221F1;
	Thu, 18 Jun 2020 01:15:37 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 350/388] NTB: Revert the change to use the NTB device dev for DMA allocations
Date: Wed, 17 Jun 2020 21:07:27 -0400
Message-Id: <20200618010805.600873-350-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=OeWPlgqw;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618010805.600873-350-sashal%40kernel.org.
