Return-Path: <linux-ntb+bncBDAMN6NI5EERBAVIXKGQMGQEM2WKZAQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B452046AD62
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:46 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id t25-20020a2e8e79000000b0021b5c659213sf3902889ljk.10
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831106; cv=pass;
        d=google.com; s=arc-20160816;
        b=OFT4wj3jwyewfL5Z6at9oBky8kmyVHjHcSxNA+pM/w7Zp38QKAIn8agFPBonkqxCFp
         JjxptLO6M5pmAyADXrjuvVIE8Mf/qgm7xx4vD5AorIsYyatrw4EFaaP0yCMfhCW/upvd
         Aol0Xmd9hRKermxyHwvuqACYuLxayvbmptLCd8KLH2KK4ls9sWtrBPrgQYSqbJ/MUvb2
         oSpHGCE9YzB4n3TNsPTGmIxT+dhN+nhOS7kWVppeUUb3iCVW45A/OhQDFBoUIpkOMXHk
         rSLAitzuHuSaTZ2Rquw3qVE7qwL1KKJg7afOSfLrgb3n43xwcLqn2lQEzes4uuV9AYx8
         6Axw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=QtRpOfaddcARwES0VlcVUkOtyycY7SfrsfO1nJLxA/U=;
        b=vxCq34S0T7VOfVk0TnZKgouZM6rZ5cKXfplwPVJg7MHyhLGlLx87hgj/YSeLg2V2qo
         gsN7RCjd9PtrQfQ/HKp8jz1hL7rnGcSQ2xrAS6WwfEcSzBD8z16aePardvYFxfpDuCF4
         88wkyft/qY7w/J7FVhog0QLOBGN/1tP3HtaEcc6j77GkpsvPDmf5UU5znnOR1Hm7N6Qi
         0Zchg3ozl0suGxFqD6HQAqBbDTuAaWd5Np50VHy3RAzAkquQ0fbj+E6bPxmpV7qtE/z4
         uxtV/0GpiQc5StfDqHdba/Te1XcBj1Ku51bHn9Bx8oHuk9D3yUF49noinrBUMZG8b8+W
         /Xhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=bZGnWImJ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=ipve1Psw;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QtRpOfaddcARwES0VlcVUkOtyycY7SfrsfO1nJLxA/U=;
        b=WphKbkIOrkFy5pxNAookZiYdlKjakfaPZplJ+KIuwj9BLHzrm5rJSxoJxSAu4hUKSu
         2LDtpot3Y7Hdwz3bcSmvDQ/OJdLEq7PIq9+3dU+Eeuidx4Nq9Vbq3R46NoHF+GaE87t+
         vKaMFzEEs1niO5ZYAvqlCSoUEXfCrsTcL/AGwoidE+ETJJ32zFDLZbdcw1uMUnf0UEoo
         73E7j6pyTy6B/yB7vMrGE+sdgo2pJe0ZCK4t08oYy3HHaDokoGYM3WpJP7mh7OkkrbI2
         12JwP+sgKXKsxHm51Dxm2/z1rA74631zhtYcF085pKIQW7KJ3Va93+pVpr8730wrduiG
         JNDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QtRpOfaddcARwES0VlcVUkOtyycY7SfrsfO1nJLxA/U=;
        b=wNjf7BuAEarwCmUbfDB5cUOBQdAy3EEm8u74BqNRSx8++HqU7AMNDUNdYs9RXtBFE8
         I6lI/6zK6Eh8DDcgv3RwlLKd3j8CregLWtljJD3wi/bp0BiIllpfL7BVTQzHKwGEV9YW
         UuC2i307AJJhZzM0G4917lHXVjB0PtAJlBOMGWR8Uwpqby2JfAMlOPBgeiHRrduxKkr3
         jU3ifYx1J9WQwIQHbkXrgb4xcjJk1OafiKDf1dUyIqzHRljyU3TS4T9t0fU5E3eaFu+r
         jpbsr8m6M+AosQOMzQ9tKGIdyDf7A84QnOxEOhZzwgYpWljtScHxFc1eES+8mq1erJMi
         +73w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531mn/1ZbyOI4mX8WnDHA5YSOs1uLKl4ohw7mZXjbLqiD88FYCx4
	COd2TKAuBBbVRgFfmddYMeo=
X-Google-Smtp-Source: ABdhPJyIBQn4Y4ZNl5PYm+fMtP/Y1jICPLNuz4nGSklXgO5mraV12DYMvF+fHPBUBO6A9+NEs5U+1A==
X-Received: by 2002:a05:6512:3f05:: with SMTP id y5mr37676906lfa.139.1638831106287;
        Mon, 06 Dec 2021 14:51:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3e10:: with SMTP id i16ls2012192lfv.3.gmail; Mon,
 06 Dec 2021 14:51:45 -0800 (PST)
X-Received: by 2002:a19:7419:: with SMTP id v25mr36882448lfe.159.1638831105375;
        Mon, 06 Dec 2021 14:51:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831105; cv=none;
        d=google.com; s=arc-20160816;
        b=Rpi1373vKIcZi9PaFOpSYwouI3CTyMujsSF32B+JrEbKeLH70HyUl4C4z7JKglMO3W
         0PEvdF+Kgd7iAvJK22KUXNU5EEhHWzvw/mBHqnZIiQ6loyXhonQkLAleK+B9qkg1NWbx
         X1+yWubG5hb9wubQY3jX45PzGomdMxmxkuHBYylXw5c1CcrCUr41Oomhj8/mn+bSTiwz
         zt4HBScG7BRsRmX7KsxCCI9KzxEAloByq1QX5zCetow0tMrMeSRfORpLVvhKkGip4pOd
         +cErG+AC/+Rhr5XrsxRpoYH/oWgP+juHouWCgn6sCjdVRQ4Uyv/XTlBmEl7wB2PtixXI
         qNoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=ipuCExogsDYfjcIoTIggPfIeuQ7+Ly8nlNeTuzuXIek=;
        b=fqu0BkhPOo/g3mNtiFsDGAuHPAlUyhMISKa5PsXty9fo1E9sb/56/V5LlvIw/GouBv
         7WqOhVntc/QwwAikn6L9XFxe8ioJ1n52kSl80txVwXMovznLZ9UWOsXI048pesSSWeiq
         e7Zom7hQzaQJ82q3rAIOvcSFrxuAQZB7FwOJ2U+Mjf02XNlJv6FD6+vFU3C+1e9MXaRm
         gbYLmt90sQ5aDelO3oQOyI5sUKh3TPM+/4xVRurcfeOkVZpEjukoLvT7b0a1UPDiQTlr
         5LgMevhZ15eWH3ve52beHVNwMVAgyNQQbjFqVSZLO4NNrUSdAEhkA6dnkC5gXD1kKhJG
         zdPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=bZGnWImJ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=ipve1Psw;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id j13si753688lfu.5.2021.12.06.14.51.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:45 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210749.010234767@linutronix.de>
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org,
 Cedric Le Goater <clg@kaod.org>,
 xen-devel@lists.xenproject.org,
 Juergen Gross <jgross@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch V2 26/31] genirq/msi: Make interrupt allocation less convoluted
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:44 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=bZGnWImJ;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=ipve1Psw;
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

There is no real reason to do several loops over the MSI descriptors
instead of just doing one loop. In case of an error everything is undone
anyway so it does not matter whether it's a partial or a full rollback.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 .clang-format       |    1 
 include/linux/msi.h |    6 --
 kernel/irq/msi.c    |  129 +++++++++++++++++++++++++++-------------------------
 3 files changed, 69 insertions(+), 67 deletions(-)

--- a/.clang-format
+++ b/.clang-format
@@ -216,7 +216,6 @@ ExperimentalAutoDetectBinPacking: false
   - 'for_each_migratetype_order'
   - 'for_each_msi_entry'
   - 'for_each_msi_entry_safe'
-  - 'for_each_msi_vector'
   - 'for_each_net'
   - 'for_each_net_continue_reverse'
   - 'for_each_netdev'
--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -223,12 +223,6 @@ struct msi_desc *msi_next_desc(struct de
 	list_for_each_entry((desc), dev_to_msi_list((dev)), list)
 #define for_each_msi_entry_safe(desc, tmp, dev)	\
 	list_for_each_entry_safe((desc), (tmp), dev_to_msi_list((dev)), list)
-#define for_each_msi_vector(desc, __irq, dev)				\
-	for_each_msi_entry((desc), (dev))				\
-		if ((desc)->irq)					\
-			for (__irq = (desc)->irq;			\
-			     __irq < ((desc)->irq + (desc)->nvec_used);	\
-			     __irq++)
 
 #ifdef CONFIG_IRQ_MSI_IOMMU
 static inline const void *msi_desc_get_iommu_cookie(struct msi_desc *desc)
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -856,23 +856,74 @@ static int msi_handle_pci_fail(struct ir
 	return allocated ? allocated : -ENOSPC;
 }
 
+#define VIRQ_CAN_RESERVE	0x01
+#define VIRQ_ACTIVATE		0x02
+#define VIRQ_NOMASK_QUIRK	0x04
+
+static int msi_init_virq(struct irq_domain *domain, int virq, unsigned int vflags)
+{
+	struct irq_data *irqd = irq_domain_get_irq_data(domain, virq);
+	int ret;
+
+	if (!(vflags & VIRQ_CAN_RESERVE)) {
+		irqd_clr_can_reserve(irqd);
+		if (vflags & VIRQ_NOMASK_QUIRK)
+			irqd_set_msi_nomask_quirk(irqd);
+	}
+
+	if (!(vflags & VIRQ_ACTIVATE))
+		return 0;
+
+	ret = irq_domain_activate_irq(irqd, vflags & VIRQ_CAN_RESERVE);
+	if (ret)
+		return ret;
+	/*
+	 * If the interrupt uses reservation mode, clear the activated bit
+	 * so request_irq() will assign the final vector.
+	 */
+	if (vflags & VIRQ_CAN_RESERVE)
+		irqd_clr_activated(irqd);
+	return 0;
+}
+
 int __msi_domain_alloc_irqs(struct irq_domain *domain, struct device *dev,
 			    int nvec)
 {
 	struct msi_domain_info *info = domain->host_data;
 	struct msi_domain_ops *ops = info->ops;
-	struct irq_data *irq_data;
-	struct msi_desc *desc;
 	msi_alloc_info_t arg = { };
+	unsigned int vflags = 0;
+	struct msi_desc *desc;
 	int allocated = 0;
 	int i, ret, virq;
-	bool can_reserve;
 
 	ret = msi_domain_prepare_irqs(domain, dev, nvec, &arg);
 	if (ret)
 		return ret;
 
-	for_each_msi_entry(desc, dev) {
+	/*
+	 * This flag is set by the PCI layer as we need to activate
+	 * the MSI entries before the PCI layer enables MSI in the
+	 * card. Otherwise the card latches a random msi message.
+	 */
+	if (info->flags & MSI_FLAG_ACTIVATE_EARLY)
+		vflags |= VIRQ_ACTIVATE;
+
+	/*
+	 * Interrupt can use a reserved vector and will not occupy
+	 * a real device vector until the interrupt is requested.
+	 */
+	if (msi_check_reservation_mode(domain, info, dev)) {
+		vflags |= VIRQ_CAN_RESERVE;
+		/*
+		 * MSI affinity setting requires a special quirk (X86) when
+		 * reservation mode is active.
+		 */
+		if (domain->flags & IRQ_DOMAIN_MSI_NOMASK_QUIRK)
+			vflags |= VIRQ_NOMASK_QUIRK;
+	}
+
+	msi_for_each_desc(desc, dev, MSI_DESC_NOTASSOCIATED) {
 		ops->set_desc(&arg, desc);
 
 		virq = __irq_domain_alloc_irqs(domain, -1, desc->nvec_used,
@@ -884,49 +935,12 @@ int __msi_domain_alloc_irqs(struct irq_d
 		for (i = 0; i < desc->nvec_used; i++) {
 			irq_set_msi_desc_off(virq, i, desc);
 			irq_debugfs_copy_devname(virq + i, dev);
+			ret = msi_init_virq(domain, virq + i, vflags);
+			if (ret)
+				return ret;
 		}
 		allocated++;
 	}
-
-	can_reserve = msi_check_reservation_mode(domain, info, dev);
-
-	/*
-	 * This flag is set by the PCI layer as we need to activate
-	 * the MSI entries before the PCI layer enables MSI in the
-	 * card. Otherwise the card latches a random msi message.
-	 */
-	if (!(info->flags & MSI_FLAG_ACTIVATE_EARLY))
-		goto skip_activate;
-
-	for_each_msi_vector(desc, i, dev) {
-		if (desc->irq == i) {
-			virq = desc->irq;
-			dev_dbg(dev, "irq [%d-%d] for MSI\n",
-				virq, virq + desc->nvec_used - 1);
-		}
-
-		irq_data = irq_domain_get_irq_data(domain, i);
-		if (!can_reserve) {
-			irqd_clr_can_reserve(irq_data);
-			if (domain->flags & IRQ_DOMAIN_MSI_NOMASK_QUIRK)
-				irqd_set_msi_nomask_quirk(irq_data);
-		}
-		ret = irq_domain_activate_irq(irq_data, can_reserve);
-		if (ret)
-			return ret;
-	}
-
-skip_activate:
-	/*
-	 * If these interrupts use reservation mode, clear the activated bit
-	 * so request_irq() will assign the final vector.
-	 */
-	if (can_reserve) {
-		for_each_msi_vector(desc, i, dev) {
-			irq_data = irq_domain_get_irq_data(domain, i);
-			irqd_clr_activated(irq_data);
-		}
-	}
 	return 0;
 }
 
@@ -1004,26 +1018,21 @@ int msi_domain_alloc_irqs(struct irq_dom
 
 void __msi_domain_free_irqs(struct irq_domain *domain, struct device *dev)
 {
-	struct irq_data *irq_data;
+	struct irq_data *irqd;
 	struct msi_desc *desc;
 	int i;
 
-	for_each_msi_vector(desc, i, dev) {
-		irq_data = irq_domain_get_irq_data(domain, i);
-		if (irqd_is_activated(irq_data))
-			irq_domain_deactivate_irq(irq_data);
-	}
-
-	for_each_msi_entry(desc, dev) {
-		/*
-		 * We might have failed to allocate an MSI early
-		 * enough that there is no IRQ associated to this
-		 * entry. If that's the case, don't do anything.
-		 */
-		if (desc->irq) {
-			irq_domain_free_irqs(desc->irq, desc->nvec_used);
-			desc->irq = 0;
+	/* Only handle MSI entries which have an interrupt associated */
+	msi_for_each_desc(desc, dev, MSI_DESC_ASSOCIATED) {
+		/* Make sure all interrupts are deactivated */
+		for (i = 0; i < desc->nvec_used; i++) {
+			irqd = irq_domain_get_irq_data(domain, desc->irq + i);
+			if (irqd && irqd_is_activated(irqd))
+				irq_domain_deactivate_irq(irqd);
 		}
+
+		irq_domain_free_irqs(desc->irq, desc->nvec_used);
+		desc->irq = 0;
 	}
 }
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210749.010234767%40linutronix.de.
