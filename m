Return-Path: <linux-ntb+bncBCHK3VHCYUIBBWGK5PYQKGQE3BQUKLA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 183D71534AC
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:06 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id l31sf699218uad.8
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918105; cv=pass;
        d=google.com; s=arc-20160816;
        b=uT5cGOWRa0q2sQoGS1GPjjYpkDn/WJt+FBjSKzJY9eBF3Mv/0S8sl5CXMbcczo8xxg
         Whwzg7diAUcsGRudFMp/2zHWce9G2TN9KL0og24AudrVNbjIBqQyTEW6diBuQNpKMRtt
         UuAtUxthLj1QK2cV9JDe23IcUJfzVr2e5UkFgowyJ1qWbYGpwxuT3WYprsXhqS6ZeKA9
         VJ0mXl8pB+9/miHMjOGl3Lp+h0rIKrV+WwtF0LRTdeZbMAyC1VJCgULk+w8vBfHDDBF/
         +3ioA7XYIIazFr+x2IP+ZTNeO+OAL/umknGAxLfpiU7Tyo7CEbSJozPU6HqF1sjh2CY5
         3FPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=ZzVCxgYlA9fIMwfiB6Fpz6n2PtSo5u1wnl5eZvmm2/s=;
        b=WGCDVv9A0DEsLWo+JtYMDF/jy+x/lSGbtrSUJqQRer6DHnIIzAcRN05LIMMwioA9b/
         RwnZEEFFi/ETWL1YKcpptKp8DmtJI6dBu26wV/9ywYp2LmbzFtKBkYWAUig5xBrR1dhz
         NpfzTUdPavDd3srlmtwerdwBonuuHi9K3jV2rjYW763OcFxzUonCjaSDN39SMlei/qpZ
         1++24GhreuQmABsM9vvUjc8YMpawBVK+muz5TDer6YnFwVH2hTgEtxb4PNM4pv8ZpNTu
         Sp+xCumoyF7yVqgB+ClYnpcvb9r2x4RDuaK+RqLOc41hVNOWfpNRW/xJP77aPz3nUipH
         qYdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J62veQDZ;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZzVCxgYlA9fIMwfiB6Fpz6n2PtSo5u1wnl5eZvmm2/s=;
        b=Ph/YVhnEL1QFhX9v/UyT9Yfo+PaZPvh+vGG6lkRV3GhCBDb5Rcl1kIEURh5RnK4gjc
         EhMnUvJ5CE2wy9/EidjrcZYSe7BDMhDGf1+t9C88SGQLAvZ9nyziq/D0fAw4NAmjiNTv
         VgZ8yjrN1jgyfT7CGx//hmDbJnL5uFTo4HM7Q9Nt7F8FpZur1R2msXTFSsa0+T29kylx
         oCKHkWcGQNjgJSo6JxHJHJEYCfICWWUdDYkxefzuMqy+cwhm1Kmn9lH2j8BjznZc34cW
         bPkKgc3nbkxujr8dkhE31KILbDuvkJB4Hi7nu26GTxmL4pdidMeCwTo2N0w29OM8pKin
         cIkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZzVCxgYlA9fIMwfiB6Fpz6n2PtSo5u1wnl5eZvmm2/s=;
        b=mdIk1DT3R0jnshgp+ypbDWPqxRFuVvioWFVraIo1umnCOwR+yR/1G6egMvojizTWV3
         WVHYwxEHOFVWjVh+QRu5cYDujeJq4FGZLki0PhARH95rwDaTzZvYSAMumqZt9U+ZgiLK
         rS7TACrEnV4h6DyTQeAUU6ge6F86sxD+oVEKi0ia4qediHdyXjHxLa1w5Ngxto2+7Kq+
         K8LbsvmTkFONfLx7fDn9iQsJ6bYDpAULYxdB9YfCKRjha9D/ljvsYuwav+ohCq7S2PlN
         00Br9e/uYW/4i3vlAg9/AA1nKpVZSN5w3ofZGhi/SRwHv3EvlOyLl9y1dfvUy8+WiwDt
         65ug==
X-Gm-Message-State: APjAAAVow873p7LhwASQrDTtICpJPRJKCrJtCdiJScjb9lNZHINkLXSH
	icxr+kV5588tuAO1RQ9wsCs=
X-Google-Smtp-Source: APXvYqyAxy8KSo+1tEz+4g5ixTxdctma4rkyoHPtfFB7/S5KhCGSGGFsfETvK4eGU7cy/TvrE+p5Uw==
X-Received: by 2002:a67:cd0d:: with SMTP id u13mr20558537vsl.236.1580918104936;
        Wed, 05 Feb 2020 07:55:04 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:fc8b:: with SMTP id x11ls345609vsp.7.gmail; Wed, 05 Feb
 2020 07:55:04 -0800 (PST)
X-Received: by 2002:a67:f852:: with SMTP id b18mr21867491vsp.131.1580918104401;
        Wed, 05 Feb 2020 07:55:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918104; cv=none;
        d=google.com; s=arc-20160816;
        b=rq0rMVm8YLsn0/xs6c1u4xMnNXdhbkzcj7nTWEBvCFLnsmxsv367r5ePzjsfU3yKa0
         4AHzAQnGCb6R7Ib0SfNgil4KojwUliQTdpXLxqzPYcHmK2F4AGp7m+r8rJJwBnWgLumi
         wkv4JUhHxvGnxZeW53PP/F/LS+Vi0NRmi0WqNblLjkjJRgC9HANIZEK5HZhJmfo4yLPI
         n8T0hWd3b4MmGXF+OkCzln9LHux3DYgph+m2xDoaUv1aAq+gUZN0YlT17nWR6J+EwV6i
         ZSAupHCFvYew0PbHSfnDc/Oh6S4cLW5NUYNY+ee86yTOFvKh6lt0hEZaqP0xO4U2CHA5
         YyTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=kl3iIovPAXkFd81DfbgFsEB+vcJ/l3r5RhzJoBZ9OdY=;
        b=nkTn1kjOY4HhaJ/7ExjwDODLV7auakC9Eig+6nUlaXj8tNyHqqkpNiZB0cYAudo9uk
         tofNFxUojAZQIrRqAu6DCE9Xx6Z0D8f1p7ssiFY1T6bQrmCkqu+GaF9Q+sj0+VbZMXLL
         WYp8keME8g1M1MsUtO7RHtu5cBUhUV24bv3lBIKamhqK3tjs3z9NwU6SUK5wUrf9rdUo
         ZnL38I9hPRGBMqNgO+FofutxtotsBos5DpzLN16kpRDoS7qz1mVCHKnlKAhXpX8Jew51
         8cP9CdyQg9uJPffuIe2WD2PXiTwy3YGuf74H9lbBSptHmIGX379/EhEQneraSUwVDBkt
         qf5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J62veQDZ;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id w4si12312vse.2.2020.02.05.07.55.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:04 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id p14so1421018pfn.4
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:04 -0800 (PST)
X-Received: by 2002:a63:7515:: with SMTP id q21mr38542031pgc.63.1580918103541;
        Wed, 05 Feb 2020 07:55:03 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:03 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Jiasen Lin <linjiasen@hygon.cn>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 05/15] NTB: return the side info status from amd_poll_link
Date: Wed,  5 Feb 2020 21:24:22 +0530
Message-Id: <a6bacf6fc59017acf02ba5c69c85da2192365a59.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=J62veQDZ;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
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

Bit 1 of SIDE_INFO register is an indication that
the driver on the other side of link is ready. We
set this bit during driver initialization sequence.
So rather than having separate macros to return the
status, we can simply return the status of this bit
from amd_poll_link(). So a return of 1 or 0 from
this function will indicate to the caller whether
the driver on the other side of link is ready or not,
respectively.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 11 +++++------
 drivers/ntb/hw/amd/ntb_hw_amd.h |  2 --
 2 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index f50537e0917b..84723420d70b 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -246,7 +246,7 @@ static int amd_ntb_get_link_status(struct amd_ntb_dev *ndev)
 static int amd_link_is_up(struct amd_ntb_dev *ndev)
 {
 	if (!ndev->peer_sta)
-		return NTB_LNK_STA_ACTIVE(ndev->cntl_sta);
+		return ndev->cntl_sta;
 
 	if (ndev->peer_sta & AMD_LINK_UP_EVENT) {
 		ndev->peer_sta = 0;
@@ -896,16 +896,15 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
 	u32 reg;
 
 	reg = readl(mmio + AMD_SIDEINFO_OFFSET);
-	reg &= NTB_LIN_STA_ACTIVE_BIT;
+	reg &= AMD_SIDE_READY;
 
 	dev_dbg(&ndev->ntb.pdev->dev, "%s: reg_val = 0x%x.\n", __func__, reg);
 
-	if (reg == ndev->cntl_sta)
-		return 0;
-
 	ndev->cntl_sta = reg;
 
-	return amd_ntb_get_link_status(ndev);
+	amd_ntb_get_link_status(ndev);
+
+	return ndev->cntl_sta;
 }
 
 static void amd_link_hb(struct work_struct *work)
diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
index 39e5d18e12ff..156a4a92b803 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.h
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
@@ -53,10 +53,8 @@
 #include <linux/pci.h>
 
 #define AMD_LINK_HB_TIMEOUT	msecs_to_jiffies(1000)
-#define NTB_LIN_STA_ACTIVE_BIT	0x00000002
 #define NTB_LNK_STA_SPEED_MASK	0x000F0000
 #define NTB_LNK_STA_WIDTH_MASK	0x03F00000
-#define NTB_LNK_STA_ACTIVE(x)	(!!((x) & NTB_LIN_STA_ACTIVE_BIT))
 #define NTB_LNK_STA_SPEED(x)	(((x) & NTB_LNK_STA_SPEED_MASK) >> 16)
 #define NTB_LNK_STA_WIDTH(x)	(((x) & NTB_LNK_STA_WIDTH_MASK) >> 20)
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/a6bacf6fc59017acf02ba5c69c85da2192365a59.1580914232.git.arindam.nath%40amd.com.
