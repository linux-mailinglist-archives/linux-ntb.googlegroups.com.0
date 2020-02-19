Return-Path: <linux-ntb+bncBC6JD5V23ENBB4PLWXZAKGQEVKT6PYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id A11AB164CF5
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 18:52:50 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id c31sf581448pje.9
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 09:52:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582134769; cv=pass;
        d=google.com; s=arc-20160816;
        b=wjrW6er1GcHJedURFpApm45K3a8+vK0dIBQnZ09dpHTrHduXi71Q6Zw5DDRz0etEAo
         e5z8gtYwbwdEfNVelPFXgHEG9dtK+uw33Q9I9da42BXhpD6/QQ2lZHZwqLygwWcPm86F
         rdj5cTAsf9HhiESZGLlMpENfJoBfjHTPtLDSt1bvRenOwl5h67IIIdp2bTYvc4+Sc4Lb
         ZmwJgqNhTm7FgJyoVNAalmCw9ZcE5UNMEz7tIBSNl82vLTgkzzQKMRVcTjXTksbJ0nQq
         X2c4XAZKqqAd6ICQXgtfw+/RxWxiwMR2CQ2z8HfP2XtlcGUn2OYG+U6m4/BDhEDonmGC
         10nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=7IjU6W2/vFyuA/wXlkYfhz4srrTWjFncO0JiaxnDaa4=;
        b=XWga4Tfs+4paRTaRN8tIwfymI1klr/cfd3/wB1Z9XPenOxaXsGFAgG6b0nnkPvgnQV
         HX8NwpxiY/z6gAqt26aNru2NMHeouinEYFyepMr+OyGjcNEU1sMOsVC0mVySv5wIAnSs
         HbtJjoIJr0KS/XKCFTE/a3ubRrXibsZtniOS5TjU8u/7r4Vi4rO6tmMwCYbzU7Tn/mkF
         HPnCC/l0NHnzYDtlORmsbynlmE92AtzYVj7zTgoYgu0MD4CBL38ZFz1pjSqy0aLuTqxP
         3kzRHJZhVq9wrRnJ6RdR2AAp0HliLbc8EZgKkIIAwSeUCCrU3qAiklVayikKS+e1oVVY
         y8JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O8OazZxy;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7IjU6W2/vFyuA/wXlkYfhz4srrTWjFncO0JiaxnDaa4=;
        b=HAwBigOyigFbv+1VLzteExnZfFzPDTpg294TPL9mVt5deZi2NH+D319fbwi/BZP0XT
         DCC57uQnWAp0g7CmhV6uF2tPBuaZYNk97kx3taRoEor4F7jylLNvoEePMF3vaANZXBdc
         4d0XXUh6SVfxEre+M+dFgWoDQ/2h/zpvyGc0ORCLj23owRXQobyZS8B2xuuVcjJ8/7Q9
         qb6rLRN2scULrEpWzDUBpljcnfZXv5lSMHhtn/1QcRvzLliMaB65zGlk7SwCCTjGt8en
         UMsf6itVniuIrfNPLRyqNl7S9TmkbJK782kAHcznUiXtA/lTAA4g3n43MseejV0g30kA
         OWhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7IjU6W2/vFyuA/wXlkYfhz4srrTWjFncO0JiaxnDaa4=;
        b=G/39U2rnMG1jRqXouf2caBBE604Svv2B3EkoFQEqdsUX916MS/XxvPwkgELhck58VT
         kXU0hXNuqGx8ROEsIpcDp9zT7ofKd3FR/LUtGbMsFhoVTgsKmXlcKnzbV6bL3m4z4Rt6
         wdegS7Fdw/6s/yWhR0IxYOVfM6YUYLVWFKEhp6nyGnf3RRx4o06u0WLB1g5hw6IQ7GS1
         5LoxwLoLUhep2en42QFB9LwBE6NZjV95eIc+8fKFB92QBJ6pflc+SyH519II4gjDTsn0
         2yB1B3d28DFn9fHTB49camXaNNvDDxNyJQ3YOJZOWWHDpHwsKJfDHIk6O1U6q356jwIG
         fxBQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUgp1lo+l5TJkUn6JwaXD8wByJqO0N1oRzzbSx7w04y0HnDTcYd
	V5SXIgIEa9J5TgO/rH/ZnUw=
X-Google-Smtp-Source: APXvYqxwjCo5NhQEoe/McCvEipb8JYOw17LZKbDjbcn43vyUl2p7DJQpwuOSboyeVt/kDT86tf96Gg==
X-Received: by 2002:a17:90a:1785:: with SMTP id q5mr10284749pja.143.1582134769342;
        Wed, 19 Feb 2020 09:52:49 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:6644:: with SMTP id f4ls3172855pjm.2.gmail; Wed, 19
 Feb 2020 09:52:49 -0800 (PST)
X-Received: by 2002:a17:90a:1e63:: with SMTP id w90mr10058726pjw.36.1582134769001;
        Wed, 19 Feb 2020 09:52:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582134768; cv=none;
        d=google.com; s=arc-20160816;
        b=Lg7Xbunz4xa6Neo0aXMfx5J/eD4rqChSrsKDT3W3RYnNiOJ50OvwLkzDyGB4fzA42r
         /2rh0yLQiCn5Bsxhq+rkrSr5jrH/aMnBLyfUmJssyy0Vb//LExMilYGyAHiZcmljQPFt
         msR95DbD1VNsTxB7BQsSdFYr+PSvzNpG3id0QLn1mxRYeH/eYLi3k3TgUHz9+xJotEg7
         rvOEOpOSk+b+9Bk82OedZfGZi0X5FxPqxKiliZ8r4xnZBwvmYAN0A0mR4w8PPzcCo4Zh
         fCZcPKJDf3SimJrR54lMzV3nAVwQUkRb7SIR8q3+qGjzCeWK/44B+jxtHsfvH1BIG4hB
         3tQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=uvAlVduTAljZEnm7HrRWLbUdDjNy6TWY9Rhsall6Yhs=;
        b=uhmQkepidYLh5fasT/ehUNLKsvF5ga7MXndalKZrLHQE00D2UfMPJngPCicydVxF7Y
         zS4S/siHaMjyjn6G4FBgVyuWIe5rMTn2O2rzGvcqasMYxMsd8YDFmawffmKFi62NSoo0
         Pp3V69rTRuurjIYUtlQub0Gla6fdoiLAQhlXZlQWCTAAoAlLrEWree6rkLHxPxH9Gpsn
         vzjRxL1EpMg7isQ0BkUg3HiQuNJ5IXYs/kdJmAZ2Qgn3yNkf+CpasWA90e6Cxd/lxk1U
         kQW0+EM4Gogge60x60gpFslev5jkaq2XtLnWxhHJ0mk9cpRt+BQ9xO73QMtAlCF0SKiw
         yx6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O8OazZxy;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s6si46431pgq.4.2020.02.19.09.52.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:52:48 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AB78B2467A;
	Wed, 19 Feb 2020 17:52:34 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Alexey Brodkin <abrodkin@synopsys.com>,
	Vineet Gupta <vgupta@synopsys.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>,
	Dave Airlie <airlied@redhat.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Ben Skeggs <bskeggs@redhat.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jiri Slaby <jirislaby@gmail.com>,
	Nick Kossifidis <mickflemm@gmail.com>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Dave Jiang <dave.jiang@intel.com>,
	Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andrew Morton <akpm@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-alpha@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-snps-arc@lists.infradead.org,
	linux-parisc@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-sh@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	linux-arch@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND PATCH v2 9/9] ath5k: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed, 19 Feb 2020 18:50:07 +0100
Message-Id: <20200219175007.13627-10-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219175007.13627-1-krzk@kernel.org>
References: <20200219175007.13627-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=O8OazZxy;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

The ioreadX() helpers have inconsistent interface.  On some architectures
void *__iomem address argument is a pointer to const, on some not.

Implementations of ioreadX() do not modify the memory under the address
so they can be converted to a "const" version for const-safety and
consistency among architectures.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/ath/ath5k/ahb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath5k/ahb.c b/drivers/net/wireless/ath/ath5k/ahb.c
index 2c9cec8b53d9..8bd01df369fb 100644
--- a/drivers/net/wireless/ath/ath5k/ahb.c
+++ b/drivers/net/wireless/ath/ath5k/ahb.c
@@ -138,18 +138,18 @@ static int ath_ahb_probe(struct platform_device *pdev)
 
 	if (bcfg->devid >= AR5K_SREV_AR2315_R6) {
 		/* Enable WMAC AHB arbitration */
-		reg = ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
+		reg = ioread32((const void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 		reg |= AR5K_AR2315_AHB_ARB_CTL_WLAN;
 		iowrite32(reg, (void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 
 		/* Enable global WMAC swapping */
-		reg = ioread32((void __iomem *) AR5K_AR2315_BYTESWAP);
+		reg = ioread32((const void __iomem *) AR5K_AR2315_BYTESWAP);
 		reg |= AR5K_AR2315_BYTESWAP_WMAC;
 		iowrite32(reg, (void __iomem *) AR5K_AR2315_BYTESWAP);
 	} else {
 		/* Enable WMAC DMA access (assuming 5312 or 231x*/
 		/* TODO: check other platforms */
-		reg = ioread32((void __iomem *) AR5K_AR5312_ENABLE);
+		reg = ioread32((const void __iomem *) AR5K_AR5312_ENABLE);
 		if (to_platform_device(ah->dev)->id == 0)
 			reg |= AR5K_AR5312_ENABLE_WLAN0;
 		else
@@ -202,12 +202,12 @@ static int ath_ahb_remove(struct platform_device *pdev)
 
 	if (bcfg->devid >= AR5K_SREV_AR2315_R6) {
 		/* Disable WMAC AHB arbitration */
-		reg = ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
+		reg = ioread32((const void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 		reg &= ~AR5K_AR2315_AHB_ARB_CTL_WLAN;
 		iowrite32(reg, (void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 	} else {
 		/*Stop DMA access */
-		reg = ioread32((void __iomem *) AR5K_AR5312_ENABLE);
+		reg = ioread32((const void __iomem *) AR5K_AR5312_ENABLE);
 		if (to_platform_device(ah->dev)->id == 0)
 			reg &= ~AR5K_AR5312_ENABLE_WLAN0;
 		else
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200219175007.13627-10-krzk%40kernel.org.
