Return-Path: <linux-ntb+bncBDAMN6NI5EERB74QQ2GQMGQENM5DTOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 649E845F8FB
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:12 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id y25-20020ac87059000000b002a71d24c242sf11656959qtm.0
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976191; cv=pass;
        d=google.com; s=arc-20160816;
        b=gP+bkHiDFiF+bcn1mtQnmS6pz+FHStHXrBqwCo10+bK2ypL57+1ioV/dpSOMsU4r9c
         Pj7lSCMt4lh6LKlgC4KkhklKOy5WBIMXMhkruHyMR5CJ/M6JNQmwNUNrbUcDUdaevcmF
         RdaabScapCUFMK3U+b7H2VaWmfzQiSRmNE6nFdqNnC0+9DYB/IBBnZ8YT7sIPRG+Ts05
         IiysmqJcJMnFvnPCCk2deItjdRLhjLOV0vBsbjb00ZqW6xUkLSQMh5Kl8iwUklldxXEA
         +8G8QdJU6OSPfKG2ASFyeVleEZggxcKjDeIGpr9F07Gjikbzui9P8fvDTEqm15WVuTWY
         yqhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=ScAqU8DbHU5WresRFhKAjYFhGZQU9CYG/ws1G7YIq/M=;
        b=0x5CiKZLj3AFSAFf/uxo7/2DLgWeMhbSeVtbuJBeVsS40b9PWRY5h3O+YM4DkC3IkO
         hFgR2+fuG5Z1tE1YjBXzynlWkrQB3KPQTGGInpr9YLGEToWrQRdCLWX1hs63gSqD0oYy
         Am7OerT9+Enk2QVf5fe0GwF03oBKXpkqgMz23EMKhTXSe9G+sGphrt77KlmWXU4dc9pP
         OElu9kdbqyOXLdNyrsu/VLXcpGGrgK4nugJ0d4B2J4MxTg3LZFz1Wiw41rf8Ltqy8eO1
         EOu3uH7f2WQbGEH69Wy/umbuI7sVK+Uk6/UYcApf0XE76oSul24mQAsXeTB2qpKq8oBL
         tyNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ftC3ekZT;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="8Mzp4+/J";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ScAqU8DbHU5WresRFhKAjYFhGZQU9CYG/ws1G7YIq/M=;
        b=pvkaM1Ux1JxBFoYGYDKOckZmVuQTndeZdy/8UHW+x/X5nEQYQogcxCfAB5WuQNsdlc
         LlJfgnLXCiyzxjD9iaq2Rqq6SXIIJcumGPdLgKiBCrSmA5UcMdEjUkiBDy0bHgto8aY8
         LvRzCKZ2hDKnmomY5G3Iv3B+WYcrJu+wb6+2tmq37U/d0CmNhaYX264mfSO0RhDWgri9
         NgGSnbThG56N5xtHgplf5NknynqAFIixm+L/CKV+pJfZGxP2MOtftjOkSpcY5NBzKnzg
         oXmIEdDyHy4dw423Znb3PhSe0egeCpzw+lnq6Tj2PRcbMKcxcZb8clznc1JMRkfdh3DR
         b+rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ScAqU8DbHU5WresRFhKAjYFhGZQU9CYG/ws1G7YIq/M=;
        b=odyiqI8gHXe6LrHmDlbyfeJhFN+HDRPJhSPxZHgNGVefh+NBqGcb2QBOgvLa+vYX/7
         XfuMnpAxeCMRYhMVUbcawPCkO6MnG+e5EXlVSv0GE1eZF/w3XVyHIgxUFREr7l5/jXEq
         QaOUQ1/X9Cu0sBoyJVeyuDHYvQftSe17BOFTpdtIJlvX+HU6aJ0psmGCzneaFcU+txev
         R8RgLph6fxdUIMZrwtGTj9Ytd+j+MbEWbVyhW281rdzhFr0qIvf49kaVAqmso9DNvHnw
         4SAUqlO17z5grmy41CjM9LrnYl+bE51vgBmbs0gUYyrt5F/t/sLtHsffe1UzXUFzsmVN
         pduA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533h4FSJC7aPgB80r3AsxOwOQHx9lRvXtZzkoNvsHuiBitu4YbUS
	NMPJmuGpWlBnis/cYu3NV40=
X-Google-Smtp-Source: ABdhPJw7/L6Tmqyl25fHwWGKGPQCDf3mo6qD0VRA08KwvFr/3454FsMZp7JTo0FvdqrlEnVI6wPhYw==
X-Received: by 2002:ac8:5841:: with SMTP id h1mr19651710qth.517.1637976191455;
        Fri, 26 Nov 2021 17:23:11 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:1aa2:: with SMTP id bl34ls4534274qkb.11.gmail; Fri,
 26 Nov 2021 17:23:11 -0800 (PST)
X-Received: by 2002:a05:620a:f0d:: with SMTP id v13mr25829709qkl.4.1637976191112;
        Fri, 26 Nov 2021 17:23:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976191; cv=none;
        d=google.com; s=arc-20160816;
        b=g8xbpe3AzPULsEfl0O8XIOUTTdKyOPxRwnjmpBkC05cvubLVU3jfA0sBJj0J1tlmcv
         TRWXcL5ZSrkG7uk2eDTB1sfKul8BMdzFxQsrE4cWSxFyPeXnE0ezEgFfi0O4mHFICs1z
         DN0iR99CcsNPMry5IckXld4Lc7YbjJFEpNqIW4/wL/nzMws5P7oIrPUaK6eosM475qaG
         bh7bvChHn38RfMofENWV36y3LFG38C7p+13j+MpXCKLjw3jBlstDKGEsF/fwh47RygfI
         ZiKni6LxtrxLiLsRD4vgeC23Va1NMf7hE8qYI0ibh+h7H7PiOQHf9iJUQBdqfKlKVMTl
         qK2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=QnjnYkBXEFvI+Fsy8bp88tNAU5py3G4+a5jOgsnpoFM=;
        b=K52zN/TcMje0S3pTJKdftFKnyXTWaSGsZUjdKcsxXKYYXhl1Fo6FH6O1auKc/BV+R5
         2WerJi3YJtvDNkue3hNdcnYvIxbPrzdxsLEo80KnYeYALDtErtwqzmUAziMa13HuvTri
         MnsE7RFDzzqXpQBeUmULwVPCzeiqvT0qAEhPB2usxGh0hhdE3o+O29m5DftITfj8dsRN
         qdbx2zFNSiBbU6WVopskGsh+hKTXQAHeSFA8bYTNJ9Lgg2g/ZbuldOK1s6UV7Udr6nZi
         JSIRUm1KVAJnKIdvJmnIlmBNeRQda4uI8LaGt9u4HMFTz6fnWc62a/pkAgsWno5sI9cF
         Uj8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ftC3ekZT;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="8Mzp4+/J";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id k10si1413255qko.0.2021.11.26.17.23.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:11 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:23:09 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=ftC3ekZT;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b="8Mzp4+/J";
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
