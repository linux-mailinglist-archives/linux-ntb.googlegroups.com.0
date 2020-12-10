Return-Path: <linux-ntb+bncBDAMN6NI5EERBJ7UZH7AKGQEODIGHMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A922D66DE
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:31 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id a4sf428777lfb.23
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629351; cv=pass;
        d=google.com; s=arc-20160816;
        b=P3Pf3dRP3qLvKrPfqV7OoxvFhPey9XCjo5/BSnIoYr1ApARWs8WH7UkKf5geHdmFOt
         //O7IGKUQ193+YrEeAc1qPzkS/ADuM3yAsqEV/LZwvni4oIRLyiDyhcfFYX45okmfa4T
         zL1rW3c9yQiZ5zsCls+XwER27IliJBUn80jt82+5pAuXrP8GCiLFIig0m0xhh4wJxlYH
         af6egxZNNB+Im/fvdqfDS0aG0utG9D4guhz1X/YV8ZZ17ZrtF7Bn4xp4YF4reF7RvZER
         nT74XTLlVyjp3lAh/tHqXUTzX3cGgaIQIVEwVezOGiO3BbiRpq8mBUv8p2VfOWzwtDgt
         T46A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=Z3ABVOlvpQmHHY5XGOBruR1KI7d8zWr+qeEsSC8bpfA=;
        b=B3WlkVeroR31mFLydcEOtH6d2FCNprL8dGvOQmGfBA/fwVBKYx1GTp+y4zg5kucuD7
         ZBXMN4AhPnyfo/b2y//lWcN+npVuqbRaUwuxH6vIo7kM7vxw6qVgUpphaKngpYFEdwrO
         ktxrOFVyT0xyW3r/nFOFAjrEEEkW7TfVGaGmE0ePSXVAMiviXJLD2HW4E6+HDNhCC2Qz
         DRVemPV0anVqlOmOviwQ9v+pEJI2eULiJY7JG+Bu61m9BUeTZR1ftDYz2EVHYXer1ube
         RcQR1vy8yEgV6oSf1p4ZNMz4KIFQCN54IW8IxE/YUeOvP+W30Ubc1NLptTuDIAQVvgDq
         sOqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=FjXt0gBZ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=tNp+xNMz;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z3ABVOlvpQmHHY5XGOBruR1KI7d8zWr+qeEsSC8bpfA=;
        b=bTAEnFedO0rfrV8xxEUYt32Izpx/FpSyJl+8drrXRU4U+n3aubNeWGM0tqIISp/rQv
         FFGi6TdVYAmpSXF14Qo2KNyJMPZYHc+LUO6HFdj7rVBHnGr7FAjMSMdCWbufZHmnKmj5
         VHIhuHUCb7Hrvr8VwSmhMMGSvokoe8yTinib87vc+zpZ4MYsUadcCprDPInAFziZ/pRj
         X2oHVEeEPRaZf1bYC0hAbebYQfnj+7XMw5SMqTycZeKLfs3VEjtGWb/B31wFqiZfz+22
         wnbp/Zw4nuHsOr//qKTqMkyJ/n83BTALjbftibiBgyRvQd8jDMoAbxMDGLxTRo9C62Wb
         QJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z3ABVOlvpQmHHY5XGOBruR1KI7d8zWr+qeEsSC8bpfA=;
        b=h83ZcwJG3/1vmf6O0hv/ddAIqWMRObwjLyJJ2Pu7EhwkaCnib2P4wOM3VN/BloqvvO
         eUQ2DZBq5NHrecQm9o0gEiKXeWW8RkfKh9caxLzXxaA9BU1FkHeYNnYFqPlQFL/g3C/j
         uU1JlUD4kxctNfj7W4YNXRLhvlszPCyQ6c6s5Yhh2abTg7NTA/wQ330VI1QaxTPIxUKc
         sSi9WEGJOLBKwPy7Mi+TpUpjOdWdQfynh385lzlwtb2GXdrhPbSKOAYUmMCpI2+h1azq
         QOtvpcZRypPmsytgeZf+17Qx6SIg5Zh1akuPgnHMg0QxrtAah24EBiHUFX2Y7vP5Du1L
         xayg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53194yOc79FSIpUYZ9TqECA00a/QNxFFP6GzY3iPkmIfDmzlfAYE
	j+QeWyLHfpTSd+2GnjM14lM=
X-Google-Smtp-Source: ABdhPJzZvC5adMEsHjHTxC+WGTP3ExYzQg6ELWNAO/t3Ptsd/N+p0DbPbBYxowuXBWbYTMdQGE6hGA==
X-Received: by 2002:a19:7e89:: with SMTP id z131mr3180062lfc.2.1607629351443;
        Thu, 10 Dec 2020 11:42:31 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9a94:: with SMTP id p20ls1237481lji.0.gmail; Thu, 10 Dec
 2020 11:42:30 -0800 (PST)
X-Received: by 2002:a2e:98d9:: with SMTP id s25mr3387795ljj.476.1607629350427;
        Thu, 10 Dec 2020 11:42:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629350; cv=none;
        d=google.com; s=arc-20160816;
        b=hVGqCq62LXVF2nlRi+fxgEWcptwqC742GaT7+XYhG+rfRgqONVg9FA7U4gvP4NhNVr
         /YRPckiu3EEChv0h9DwzOY2+6StycY0W3dIzmXs7jbBqm1ukgVZKEPCUmeM8c6pAHVWI
         YBiQuLmQsnI7AjlE2cRlvOysPI2nmmI6NjERJ4qU5JS0eeoWaceGqtX3oXxKm/Vyk+vg
         ijjU5dI4m/EbGnuDOWbeLef0+Uw8dJwQVtzTu4fmkBR6CgXJIe8oZSp3R+KYBTAsG4Oq
         oah6Crs76Xktw6AwmXBLrzQysyqwlbAUkpMM9twolRaZNR4xtKPoCGQhAWt77IFK7aLn
         Uh+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=RkpDEDsz36bMGIvl/YLs0noKGbsbwyBTWfWGyYCIvwI=;
        b=bV+eGv42hm87rQJMRQ3+CVAlkhoewRx0vQB6G5p060CQUhGNbfLFRc8JJna/tv/qZ7
         J4wdg0a2nwSBzsODx+Pjx56ER4933T1nfM7mSBKxs5Kp3JLtHqyl4JUCQWXNnLAtGntx
         rMY97j3fE5cFKyjYA0BMRWK84Gxf1lr5XWnRJE5Ks57npJkR4gljzbts8wYJ1dFXijwz
         kUVDGemTLM7tyCdi5T/BMJqhxyowKHGvjHmFgkLHhGjOVXcGJXj2GF+XlWv+/6D6whlu
         Oeb2Y4lj6yQ8sHgss0zd1pCl/ZOqq24g/+5M9HmEnOEOj1qoADnCEOkSZmRkm6VcUGms
         VRHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=FjXt0gBZ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=tNp+xNMz;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id q28si217523lfb.10.2020.12.10.11.42.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:30 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194043.769108348@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:48 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
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
Subject: [patch 12/30] s390/irq: Use irq_desc_kstat_cpu() in show_msi_interrupt()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=FjXt0gBZ;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=tNp+xNMz;
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

The irq descriptor is already there, no need to look it up again.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Heiko Carstens <hca@linux.ibm.com>
Cc: linux-s390@vger.kernel.org
---
 arch/s390/kernel/irq.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/arch/s390/kernel/irq.c
+++ b/arch/s390/kernel/irq.c
@@ -124,7 +124,7 @@ static void show_msi_interrupt(struct se
 	raw_spin_lock_irqsave(&desc->lock, flags);
 	seq_printf(p, "%3d: ", irq);
 	for_each_online_cpu(cpu)
-		seq_printf(p, "%10u ", kstat_irqs_cpu(irq, cpu));
+		seq_printf(p, "%10u ", irq_desc_kstat_irq(desc, cpu));
 
 	if (desc->irq_data.chip)
 		seq_printf(p, " %8s", desc->irq_data.chip->name);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194043.769108348%40linutronix.de.
