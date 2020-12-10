Return-Path: <linux-ntb+bncBDAMN6NI5EERBLXUZH7AKGQE3H7BZVA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 623922D66EA
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:39 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id t10sf3785747ljj.2
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629359; cv=pass;
        d=google.com; s=arc-20160816;
        b=QCHGT3WQK5GChGPbmTKGr5a9h11LKEUQNMWgWShn3kWpg5Sdz/wsPbAWkX8+Fbk5fp
         uKE0H3xzmht6X0XrjodSYYQ/FN7CukjG5FQPfEPTyMHWK6bc7q+xpvZWs9v0d0Z/M3UU
         PsdUpX14WyL10z7LIEHYM4nmCpiYw70kTRTkv0kuyGG5AKkpchbLlHLimcjgaSD2/Rkn
         AxKzQjZ8MY+uJe2DxXFBYDLM03/SLN1KJShI76TzaPmljdOjvAFjhdePStObue9qISSY
         /3m10DsKR0viaeQ4Ya4CeVlGwLn2Fw4H1wGArd0Wbe4Hzk9Z9iSYpM3r2odZseh1KAbK
         oSjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=auH3tgX0isUUTl3SjB2ZOKgBFvOgqWt8/Aw1S9004kU=;
        b=SHCVgLVZ7I3bHRQtO9Dyuq2bczW7zcY10o1CYz4gadLVA8wJGsdsH2NtUtchjm4l+i
         OpQV8Gb4XoLDBVr/J1KBM85gh3wL9qfb9I0bXwbd52gKT9E6buDAQ1IRy39OYi93Ddxg
         J4vcczWT5y83EFNQv+EmnlXvFDMjHPQH44wUAFYBRtq6wg74I+9N2SGAvT7uY+icRGwT
         x3bpuOY/aRs2UP58I4bZN9s/QmHCgJEK9R8EPgI+hkhhX6WcJQ46W57v+UTrPPUyX1Po
         XCYz4yixBlVJ/13jamaj+T59Jw/O0V2HGgxgQh7s3zmGb9rbeZzxL5Z+4fTmdsq3xRwd
         tuxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=n90PZIqv;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=z1bwpMRZ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=auH3tgX0isUUTl3SjB2ZOKgBFvOgqWt8/Aw1S9004kU=;
        b=a85hIn8Fv/C8/b1hvWUVodFU8xY+fGEJJvb/P/h5LkVXu5fKb1O6hVeM8agKbswciE
         nIw9Fs/MT23BcdlouKGQlpcpQFHglE/PVZHiLqsSLQkzK/AMOz0OmEnCBml07GZGp0WC
         OmSZo8Lv0gP8zMT453krMPDhhAV31ns4ehjev3vaASMZ1J6CF+yFE+vezujeP54NsvCf
         Im2V7rfUbYCAbLY69do/fGHKWnr7nrYBYZlM+gsLhIslQQT1pQIeQ3iUI4mweu/ZTQBB
         5VMib6xYnXePjLUfaEm5vzcec9B2+zfbs78yIa39+QiVDEbyfdboHiTS/WH8qphJlb5R
         x2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=auH3tgX0isUUTl3SjB2ZOKgBFvOgqWt8/Aw1S9004kU=;
        b=H+nAYoMVNY4efvjFLZSOVZchE+lIs9oAbyfe7M034poNtQsUqV18ZF+coPV/rd50kX
         P6Z+E5XpfF8uKzhHu66ySqpOXJAGGnVIAqitu2EI2UQOuF2pOte9U6qmm6vBCX4Iy2mb
         tmGhU96iorZfxmP6KR0vrfXcaPK+FQOlAdwM/5+Yi1ZSXu3SP2uaeRFnsQrddgjLGKWw
         FwaUAPQkiTPmV66QaVnkBCxdHysP3dYNO1umH8ALqQF9lTxwcl6HIxZxYfSVebJZmMt3
         sBJ5h8sWCYM7MQS7Q96bSkkbIsIBSYO50Ah7jnaNGDHTSWcEwuwgbvTdXDVn+jiK7YpW
         Z2Lg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53382V3MCfB5iGwgmOUrTSiM3xkrbPuDw/rCpUguXE8Pe6EDOoFu
	6VJRQ+WWf9wZhnw3EF8Nl8U=
X-Google-Smtp-Source: ABdhPJzH2/aB33LYLmGWTTQeuORJllcpaxawumgcvzCJr2nN+oo1BXehd+l3PezOG9ypSEDxd1VpcQ==
X-Received: by 2002:a19:500e:: with SMTP id e14mr3650253lfb.415.1607629358964;
        Thu, 10 Dec 2020 11:42:38 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3608:: with SMTP id f8ls1980724lfs.2.gmail; Thu, 10
 Dec 2020 11:42:38 -0800 (PST)
X-Received: by 2002:ac2:5087:: with SMTP id f7mr3355667lfm.369.1607629358112;
        Thu, 10 Dec 2020 11:42:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629358; cv=none;
        d=google.com; s=arc-20160816;
        b=RylleR85RRlSBsXUVPoARoC6I0QYEsRyNVnfiHRuaEEXR9OmktRwkRWZI3UOAOozvX
         H7KZ5efAqSNqvR9kauEAWEtOD0kL4oo2VU++HS5bXk6kQtt786D6wLHrf79jxgFP4JtV
         lDrANKnYEKU6RVlx4o0aY0jgmHJmLaGW72GmFkt/0ls1kFvW1pAltVKQ62ffn0Y10lWu
         zmHWqGC2O6IFij9uw48ghVFRh+nzz0d8L8cGnLk/ABJSKjO8tvJWFNKEO+QgRsRS1MFx
         N1tjGVtCljLVQWBHUQfby0uzk8julriV0wlowdMl/qcVdmBcEMlVtfZ3NQ4vAjlfqSyU
         UAJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=KHY7zLB5K6l5lfek87988opcUU+hIDNSDHLcEFMtdbE=;
        b=u3je2ZrGjiyMm2FIQ+gy/Pl+V5HQ3H1+HcWIx6Dod0q/osa1N/4NJ4JdGKj6wG39Ep
         xsbJM9I85Z6I+ADvCezp1e0SlhqHl9+1HTWxCDHr1jgH5av3EdyZQUQKeExlMrU0Lsmp
         32eBKxK09OYGyZ24FszQlPonE0BfoLxRxjOuQM6hzuj09yVGV6gClS6pMNdyyMQelbfg
         A316ju9WyKZ4svHk6jGJSoo5veBxsR/g7cEamhKZydqYaJiFOUo5H46wEU9vknJgbnXZ
         aza1yfxHJUyddowzbp8yJ2hzOa7x90on09c4FD/wKzqaPHanL8nzmhDLSj0TtNyxuzgd
         kf3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=n90PZIqv;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=z1bwpMRZ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id v191si247287lfa.9.2020.12.10.11.42.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:38 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194044.364211860@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:54 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
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
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
Subject: [patch 18/30] PCI: xilinx-nwl: Use irq_data_get_irq_chip_data()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=n90PZIqv;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=z1bwpMRZ;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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

Going through a full irq descriptor lookup instead of just using the proper
helper function which provides direct access is suboptimal.

In fact it _is_ wrong because the chip callback needs to get the chip data
which is relevant for the chip while using the irq descriptor variant
returns the irq chip data of the top level chip of a hierarchy. It does not
matter in this case because the chip is the top level chip, but that
doesn't make it more correct.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: linux-pci@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/pci/controller/pcie-xilinx-nwl.c |    8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

--- a/drivers/pci/controller/pcie-xilinx-nwl.c
+++ b/drivers/pci/controller/pcie-xilinx-nwl.c
@@ -379,13 +379,11 @@ static void nwl_pcie_msi_handler_low(str
 
 static void nwl_mask_leg_irq(struct irq_data *data)
 {
-	struct irq_desc *desc = irq_to_desc(data->irq);
-	struct nwl_pcie *pcie;
+	struct nwl_pcie *pcie = irq_data_get_irq_chip_data(data);
 	unsigned long flags;
 	u32 mask;
 	u32 val;
 
-	pcie = irq_desc_get_chip_data(desc);
 	mask = 1 << (data->hwirq - 1);
 	raw_spin_lock_irqsave(&pcie->leg_mask_lock, flags);
 	val = nwl_bridge_readl(pcie, MSGF_LEG_MASK);
@@ -395,13 +393,11 @@ static void nwl_mask_leg_irq(struct irq_
 
 static void nwl_unmask_leg_irq(struct irq_data *data)
 {
-	struct irq_desc *desc = irq_to_desc(data->irq);
-	struct nwl_pcie *pcie;
+	struct nwl_pcie *pcie = irq_data_get_irq_chip_data(data);
 	unsigned long flags;
 	u32 mask;
 	u32 val;
 
-	pcie = irq_desc_get_chip_data(desc);
 	mask = 1 << (data->hwirq - 1);
 	raw_spin_lock_irqsave(&pcie->leg_mask_lock, flags);
 	val = nwl_bridge_readl(pcie, MSGF_LEG_MASK);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194044.364211860%40linutronix.de.
