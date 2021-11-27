Return-Path: <linux-ntb+bncBDAMN6NI5EERBPERQ2GQMGQECXFI64I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id DE10E45F986
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:13 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id b15-20020a25ae8f000000b005c20f367790sf12968514ybj.2
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976253; cv=pass;
        d=google.com; s=arc-20160816;
        b=v4qa2CgUD+PR7rjMI+MROUd34UqrDAawdQh/HL16MCsY8UDfGmg2L4/Zpzok8RbPp4
         cuksE5NrEXfQ8WGklt4Xq7Fg+Dhn30TC/k8skQSyICj0HICSM0WnITsGKFD6jKBBJsA5
         wDz6xhglbSwkM1jSSusd8MgBtRRlrHPjP4gXWblHMfLh0vsy5arErDkLg80SarErnOha
         duN06lE6P3Y/zyZaSnb/gsGpfnXUfHIXMnNtA6epikBsLJ2wnwsy2OuB00C9Vya3Xd1i
         buPuk5vtOI1XcxsGYUkhoQEvcy/DXVQjzET/fge3MkPdmZp5KlpluTsJw2IX6gKr04mo
         Xd3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=ScAqU8DbHU5WresRFhKAjYFhGZQU9CYG/ws1G7YIq/M=;
        b=FYhhc+ck1fAPjf8irov9mfnquGsySqMqWOoSSNtJFP2NJ2aOj0mVl6khNiXVDh/OVL
         +aUGm20wVbDyABue4QwMtSWRwTCah92ey++U9CkDq/rVL8Ht++KMiedOrWk7ssKoqmm1
         KwF1Nxj2KlCoEGPMpOHfwOajF/BcFFrEJ1pqaymh28SaPegQ5Sjx67/cGJjwzL863wXu
         fvVIj9lNC4VXCHltCXzKNM4hMHmPSWV4t5pzmaM6ZOdSHxyeOI8VJhpIj88g1tN6fiRo
         kuZxVDiA+MO6lR7xA/Mqe81Q9VjwbxiphuftFnsm7eJmkELI6LqBdC8DxslPbZmyZlCd
         Ylow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=e4tPN2MY;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ScAqU8DbHU5WresRFhKAjYFhGZQU9CYG/ws1G7YIq/M=;
        b=FNBfguzTLlJavem3IzYfQSmcaeGGCm5wJZUb9bnKIvMF2PB3Ynv4uTaVOBxbnFowZk
         n6XqnO2Ij+R7c/6rCF9U1b1GM70Sqvw78l4PdxlDQLrc+XbootCbVbXVr2eQBQIpK1xU
         ymIpat9fCUrLuZAk5heQtCNOLXBaQGkvgGEfUmCkts5Yiya7l+OX+VAhFvflJmc8fPJ1
         o0jS/EBapRFYju59rL3G+4JnUf0cU++/pSmkhmi5kLvb2qKlIMg3WPg111phfrXACduV
         3Y52EfsmM/htE+r5qKTEiai8h0BqhyU9Gfm89AFNKaeU5f63Wm36vzGmP/YSfgqHQO1t
         dO7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ScAqU8DbHU5WresRFhKAjYFhGZQU9CYG/ws1G7YIq/M=;
        b=bRemHbbSuxXZh+uIzX4TEFjRpnjjwgJGWU4Ze6ZYJj0VuR9YOmAhsyzUQkIC2ejuRk
         cil1vaz0P7qLv5Eo5JVeouB/eZ9suORCObIgpEoFcVwLHRqQxOz+o6bKkzAjP10Rw2eS
         4+3IwN6GQlYoKAhuAmX6NAQdkY11ijfBmYW0mWvtw9zqtMoGQ6cG8NFRmbu7qaL6pThj
         ym2HCg/OusPHwF6Z8j+Bve5bQ/ie2sKyS8AXWvMxo8FdLWvj0kG26pQmDpZhgU8RPDzB
         Mq3tB5DmzGEZP8PVhNIKiK2u2zq/B1ojA+th685/R7uXxhA942lZXwqwyCtlkZV2Xsn2
         dxpw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533cquXOeHirSVvZDMhKyERpG1vsOGXahbuVcVTFNvWnd42jGUqt
	X/Bq/AnTnL4rvsjbsyNto10=
X-Google-Smtp-Source: ABdhPJwVDlYCsEzWsJrEiMsemRsSHcGkwgP1QsKUBPnZwWJJCvUk0IYHck3Jdh+zc4bCwrfwRRiuvA==
X-Received: by 2002:a25:ad27:: with SMTP id y39mr19232744ybi.494.1637976252925;
        Fri, 26 Nov 2021 17:24:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:2a94:: with SMTP id q142ls4618023ybq.7.gmail; Fri, 26
 Nov 2021 17:24:12 -0800 (PST)
X-Received: by 2002:a25:6994:: with SMTP id e142mr20249830ybc.84.1637976252476;
        Fri, 26 Nov 2021 17:24:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976252; cv=none;
        d=google.com; s=arc-20160816;
        b=wbEHNFXYVmHFBvdjxNmbH/QjbIr9epA44DVIFpxrotdXBIDwtXuYV12cPvGrI/C/VC
         v5VkeT5BpYjbgGSIHgW+62pz7jBVdGg4XWmaX4apTVBRCgM8n9M4VBR9aGxluHqYyLUt
         WJxR/Rxf2hssU1UvofOHGW86NlTIMCZnCdtAoiiQvhkqC7mjz5EtTd5OUqoYVRMO7SmH
         SH+FFKDQVg5ty7brsEEJHa+uRxEXX86ID2OAdkQkESBlroKY1nQbwhSXhBd64vQ1aG95
         3cmpxlGcPC7ANZYGXlcLOK8cqfvGY51nPbMQV6xrtxV51Lq8m0ZqZaSv400o5kxLlWHM
         JhbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=QnjnYkBXEFvI+Fsy8bp88tNAU5py3G4+a5jOgsnpoFM=;
        b=QkEicMk0ztCaUsUpEUKM5Dt0cdMBq8Y5wPUUOxQWsYGjXSvHEqqR64xeeAqYaKUR2s
         vOcNQx8yLFEm0q6vgP2hNRjojsv7lql1ve8p846t6DfUcWYOrPDrYtfQ9l3S6AwUUBC2
         nSMO7D7g0ZQoExQ7d5w6QduQUimYKI73nialy54qJ0PvkMZxFKKKgggWTmUqFPgMtwAL
         Vm+qK3HSmXfLuzHmG3GUCBEWT6nNHNVlg0j//rufyWvkn6b/YA5vI0+ChpHFULUUIGYn
         LocWX53TrJl32qzT8o29iFwS+LqhsokwpnwlGu5BRuP7FGAcoq/bHqY2OO/F96g8D97j
         xi5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=e4tPN2MY;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id a38si556609ybi.4.2021.11.26.17.24.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:12 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.907470678@linutronix.de>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch 27/32] genirq/msi: Make interrupt allocation less convoluted
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:10 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=e4tPN2MY;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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
 include/linux/msi.h |    7 --
 kernel/irq/msi.c    |  129 +++++++++++++++++++++++++++-------------------------
 3 files changed, 70 insertions(+), 67 deletions(-)

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
@@ -263,12 +263,7 @@ static inline struct msi_desc *msi_first
 	list_for_each_entry((desc), dev_to_msi_list((dev)), list)
 #define for_each_msi_entry_safe(desc, tmp, dev)	\
 	list_for_each_entry_safe((desc), (tmp), dev_to_msi_list((dev)), list)
-#define for_each_msi_vector(desc, __irq, dev)				\
-	for_each_msi_entry((desc), (dev))				\
-		if ((desc)->irq)					\
-			for (__irq = (desc)->irq;			\
-			     __irq < ((desc)->irq + (desc)->nvec_used);	\
-			     __irq++)
+
 #ifdef CONFIG_IRQ_MSI_IOMMU
 static inline const void *msi_desc_get_iommu_cookie(struct msi_desc *desc)
 {
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -873,23 +873,74 @@ static int msi_handle_pci_fail(struct ir
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
+	if (!vflags & VIRQ_CAN_RESERVE) {
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
@@ -901,49 +952,12 @@ int __msi_domain_alloc_irqs(struct irq_d
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
 
@@ -1021,26 +1035,21 @@ int msi_domain_alloc_irqs(struct irq_dom
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.907470678%40linutronix.de.
