Return-Path: <linux-ntb+bncBDAMN6NI5EERBMHUZH7AKGQEIGV4VHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 600782D66ED
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:41 +0100 (CET)
Received: by mail-ej1-x637.google.com with SMTP id k3sf1974840ejr.16
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629361; cv=pass;
        d=google.com; s=arc-20160816;
        b=puihtQpPNnVvT+QG3U+eKT8p2NZmnFEnTYrmluJYQR4fTXg9LxdVDfdrBMo4BbjOKD
         vAYOGCiRIGpjk43eIuMnGcogJySQcqZun6D8Xaz6RqQVDSuvez/nbLLjgze2yFhZcSEN
         T1wyObi+000Ke0oKp4E2IgEe5PXJRxLsuY1LNnHhbaeN1LZdtftw4xKFiw6MIgsL/seV
         sXc5O8x6XbyTa8z08wTdVHAAXo6rPxJaU1BYH6JFkjZJ9ubJmfQetWRQJO8R+AMRbjma
         tU0Dw1U6VRBluBY59Hsmq+Bo2M5HvgPDylPe36xTImOYJPEWlnCvl4fXZN3ddgAmcV1k
         Idrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=DZTIrk0cccjfcs68pfloolajBDeSA6D54y6CWEWNJw4=;
        b=escnY6nWQhK6cT/+CKmV72JOc7xlX0Z+tKptDrkEQH8MxNixnpV4eMpqyMpAxrzxnV
         3a+bQu0pWBIwP+0t+KfJr6EBF9IIckN28ccq0RgywzWO+JmXXnszli2tbCROpvVkftHn
         MWuHKekK31dr2ltntHSSHMDUlbmk8XrZle0I5lTCwX64M6fI8J34JgPyMiDis3isjAEY
         bJL/0C1FRp5ZwQnhT0qW/m4MnDcFI5UfbrP+6FDzCIDRnRL624h/cZabMZeQRSV3lByi
         5AjNEAURjGXtdmqcRxDlR76tkIQNYqWdo8w1ILksT+j2jcEc4PC6atnqxxtdtyN4gOQ+
         +DxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=O2jdDNol;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=AYssMWVw;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DZTIrk0cccjfcs68pfloolajBDeSA6D54y6CWEWNJw4=;
        b=LJfLJnoEwxHBT8oGCbL7ntIcNs2pj/kafLFeWkhZWxYGXqwgFxfiUc2P4zcFvvZhS2
         t2zqnz9kJEVShBWCWoJwt6/ygQm9iM/8Ni0ildgVg1AHzFDm6LtT3ATP68nnpMSxm+jc
         U3llJiKFZcWDF72LqQMI2G23Rg1VpYMA8vAdhsMFVWzozJESZQ8bVZ0vyRamZ3NFfKA7
         +nyF0LzM/lZggi6gXWCHMBxHCXImCZ0AQgDADGpsO+G4sBk0s/nPlkaS+8ktigMf7GAP
         TSRr4If61AIPYUnQS3dfqu1YaJdLw87S9Mvq05NbXOyQfU8U4fgaal/SW6YqZUBoQvvF
         3whQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DZTIrk0cccjfcs68pfloolajBDeSA6D54y6CWEWNJw4=;
        b=aih1HdE+PVwrfyi+DOzq8Sf0vRisCZ+loLUQ5fJjdkuT9AWT9aXabKRgtVr+Cs2kXK
         q3LNQ5Hysx/c4OA8L7hD43DBmtDnWY5gD7rzjzWt0mH5ioo5vH/qjn42JnbZGaxZT0db
         iN+ZLKGVYreClTLY58Kpk+3ieLKumMeJS9DcDtNV2ytHNSoqE7nm9LsTN/rr75yjuWZY
         KeX96rCaYXJ55e7NC+n+pxOKaIDK4yFo+NIoliBlmwxGnRz3RTAaJAsQw+3i4nZeTJ5d
         jeJcx8qjI4EprRLyUP20igfJCcEzwPEUdmgfGEZADpehvIBRzjxoxSm+uQLoGlpJLI89
         bahA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531bxBd9j7x2up+foC4QYs7C/z7jkkOY65o7WroTXilYbFsZuVFA
	EM/trWY3zdy4BM6DP66qEnA=
X-Google-Smtp-Source: ABdhPJxA2T6uAREPhccgSAcUUJu/LJkfcTPlW8nDKkvB1nmAtR4MiHFZSKkC32E3tLqlkvMkWx5yzg==
X-Received: by 2002:a17:906:f905:: with SMTP id lc5mr7863955ejb.177.1607629361137;
        Thu, 10 Dec 2020 11:42:41 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a50:8a9b:: with SMTP id j27ls1362064edj.3.gmail; Thu, 10 Dec
 2020 11:42:40 -0800 (PST)
X-Received: by 2002:aa7:cfd7:: with SMTP id r23mr8387436edy.298.1607629360393;
        Thu, 10 Dec 2020 11:42:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629360; cv=none;
        d=google.com; s=arc-20160816;
        b=eccLU5xmAuJIH2214AQ96RCyoUtUmPtD822+IAEU4aH2nqnDQdD6An6JorwOQ0fZ5f
         Bt0pxbNLGxYo3wcAod56pFqnvA3+o+j79IFGABhPx6/1KdY+H9bjdzDrQCxijj1FU0YQ
         wCkwf6WDyvGxMUbZRHMbaB4r1s+7e5dpU+0kc7STI/q57/JsmiQwHCnWfIzsp8Gasjqv
         CovtNN0WASqf0W5jIpTK8WDT8EwwJymblUDZ1DIKIdTq64KKAkXiCeGr0bgkZPz4BjRJ
         1/+8Z6jrOWGGB4mSbezZqT+nFSmRPiikJKAHrT8Ynni5Ddcy2LP9ZCOTIZoMnLksRysQ
         PmQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=KrhhIjbt5v6ZrRAi/JobWuMkwODXuYkNejeEJ8r5wYA=;
        b=NWOTXwt9hV5Jpw2dw7ex1Z2yEosXuWbGv9m9njVFD3pE2VQ31ngLHEEcwy9vR9BuCD
         m2xKn+75L+AkHAQkpF5Zqu2kk0MQaiYP5GUGM9OLSVKTQJeTZ+ljK0j3zfk3+mFzC2d8
         Qm8yJH31GUaTpBqlvyqfKnaE7S3w4e+Hec4D9IA7wj1hMSDykshiWpF2ON38xH3a1eUg
         NOCwTtZQbD+/9Mlb3Qw44l4sAbk8t9wlkenylRsJL0Y+iyj770bWR1pHRKt3ontTHaz3
         mK87NKlFICIezek/JRHvV2nulhQkMYesvz3vw3v6AJGGdR+vEAmcu/W5CXtEERmLb5qc
         tKLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=O2jdDNol;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=AYssMWVw;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id r16si184111edx.1.2020.12.10.11.42.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:40 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194044.580936243@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:56 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-gpio@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-pci@vger.kernel.org,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
Subject: [patch 20/30] net/mlx4: Replace irq_to_desc() abuse
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=O2jdDNol;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=AYssMWVw;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

No driver has any business with the internals of an interrupt
descriptor. Storing a pointer to it just to use yet another helper at the
actual usage site to retrieve the affinity mask is creative at best. Just
because C does not allow encapsulation does not mean that the kernel has no
limits.

Retrieve a pointer to the affinity mask itself and use that. It's still
using an interface which is usually not for random drivers, but definitely
less hideous than the previous hack.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Tariq Toukan <tariqt@nvidia.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Cc: linux-rdma@vger.kernel.org
---
 drivers/net/ethernet/mellanox/mlx4/en_cq.c   |    8 +++-----
 drivers/net/ethernet/mellanox/mlx4/en_rx.c   |    6 +-----
 drivers/net/ethernet/mellanox/mlx4/mlx4_en.h |    3 ++-
 3 files changed, 6 insertions(+), 11 deletions(-)

--- a/drivers/net/ethernet/mellanox/mlx4/en_cq.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_cq.c
@@ -90,7 +90,7 @@ int mlx4_en_activate_cq(struct mlx4_en_p
 			int cq_idx)
 {
 	struct mlx4_en_dev *mdev = priv->mdev;
-	int err = 0;
+	int irq, err = 0;
 	int timestamp_en = 0;
 	bool assigned_eq = false;
 
@@ -116,10 +116,8 @@ int mlx4_en_activate_cq(struct mlx4_en_p
 
 			assigned_eq = true;
 		}
-
-		cq->irq_desc =
-			irq_to_desc(mlx4_eq_get_irq(mdev->dev,
-						    cq->vector));
+		irq = mlx4_eq_get_irq(mdev->dev, cq->vector);
+		cq->aff_mask = irq_get_affinity_mask(irq);
 	} else {
 		/* For TX we use the same irq per
 		ring we assigned for the RX    */
--- a/drivers/net/ethernet/mellanox/mlx4/en_rx.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
@@ -959,8 +959,6 @@ int mlx4_en_poll_rx_cq(struct napi_struc
 
 	/* If we used up all the quota - we're probably not done yet... */
 	if (done == budget || !clean_complete) {
-		const struct cpumask *aff;
-		struct irq_data *idata;
 		int cpu_curr;
 
 		/* in case we got here because of !clean_complete */
@@ -969,10 +967,8 @@ int mlx4_en_poll_rx_cq(struct napi_struc
 		INC_PERF_COUNTER(priv->pstats.napi_quota);
 
 		cpu_curr = smp_processor_id();
-		idata = irq_desc_get_irq_data(cq->irq_desc);
-		aff = irq_data_get_affinity_mask(idata);
 
-		if (likely(cpumask_test_cpu(cpu_curr, aff)))
+		if (likely(cpumask_test_cpu(cpu_curr, cq->aff_mask)))
 			return budget;
 
 		/* Current cpu is not according to smp_irq_affinity -
--- a/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h
+++ b/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h
@@ -46,6 +46,7 @@
 #endif
 #include <linux/cpu_rmap.h>
 #include <linux/ptp_clock_kernel.h>
+#include <linux/irq.h>
 #include <net/xdp.h>
 
 #include <linux/mlx4/device.h>
@@ -380,7 +381,7 @@ struct mlx4_en_cq {
 	struct mlx4_cqe *buf;
 #define MLX4_EN_OPCODE_ERROR	0x1e
 
-	struct irq_desc *irq_desc;
+	const struct cpumask *aff_mask;
 };
 
 struct mlx4_en_port_profile {

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194044.580936243%40linutronix.de.
