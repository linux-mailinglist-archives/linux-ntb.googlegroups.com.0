Return-Path: <linux-ntb+bncBDAMN6NI5EERBYNHXKGQMGQETPAGVQY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BBF46AD39
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:13 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id f3-20020a5d50c3000000b00183ce1379fesf2416349wrt.5
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831073; cv=pass;
        d=google.com; s=arc-20160816;
        b=tARMRDQxln6PhkPJFOD9D5fzQpes+tlmcBRcHtgqhsFH2mkBN2aS/atiHg6TCazvDz
         hK3p2fk9ZPRn2Zip5bgREJ70XsQzTTmm3BLSB/2Q+CvtVQ0wazKytb2qk+D1Z5QmOagM
         1+Rg7bmz9ni0Mwu7fqJgxoxuuOm35OoQqta9Ey1uek1LG2pl3GghHiqdN26hE5FqdSGZ
         59QNnQbF6DuGCkjh4pE7Za7f3A1CCfo+SkVCOOGqqBF5EJyc+ZNOtHjZifiCSBTwUttf
         I/Bb5XVajiF5HCkBUnsRFGcU3cY08jUnP6eFaomkoMlON4fkmyCcXMyq+Th7V7pgktGV
         b3aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=MFwJTCzQ8Z/pcOsGbLbkizcG311x3/StnaCxHQ9P2KE=;
        b=wBWFGiDoZX74VAHtJ/bz6/TaSqdx1SwGCauHsCltdOzM50yHucZLaPq0rtthbsCfDk
         0huQEXzcItaXF/e92VEyPU1AF9bu7WqZ8wwuThshc+wbARnvnzeriwbxZTJXmzNZD7Fu
         Q5GFSbPpo0+YKGafHBkXvy3Seg40dDEOAON28dF8qbpd8lEiIcyc+/teLAoNQw55w8PE
         r4VW8NbY4W6MPVB3yA2alLZ9c5PaxXX/fGvLcpw7EMb7zDtXLSILodN2+o/ImY4kBs8z
         YmiB7FmqR0bWZzOa/LdEYg6d/ZP4iuSpiGFvlOOXlOPvvyVBDnay/5D0rAdEnHVZ0as2
         ZlaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=TdIBsdwX;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MFwJTCzQ8Z/pcOsGbLbkizcG311x3/StnaCxHQ9P2KE=;
        b=dY2yIkyDIs0oVZ+frnZr+cb3itieR8KIj8f6tuHdr5fdD8f11vWY9RBMqF6twsDm15
         5JJ8Pf+sg72v5Yot3M7sfi1hgbdQVqOiJFHhhNa2Ik5OZXaJ31T6xBdbhYGKIQcNh34k
         R75wEylgK8feTa7hrQW1T7QuoTWzFFHzRaJOow39zJcy0QToAf1qrl3Y+QI49KoZYu8k
         kwEuQmFDPV1d9YGFlBlfXsdjvRWgqrdJQ/2t4iLcqragHIhaYs/uyFhHqNLilBTl1M1k
         qoJcl9raQGek0i7TrNg3KiqaJNlCOe9dsc40Hl91l732IXEyoGbbDA0Be0s4SHq1eJMe
         RLzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MFwJTCzQ8Z/pcOsGbLbkizcG311x3/StnaCxHQ9P2KE=;
        b=eaReKH0PQ354DkISG4i5kA36wjW/WHbBwok0n+MJrEwpAv2yTGBEa/CSNeR/SjGrtr
         7hKbmWaiGi4nD9SxpngLODokAWvxZzyGNtdGpTe/04x2V+2ZBoXx3T3MvrshlvIKYYd1
         tbq/JcYA4wtuD9T5rcQgNFK4YhxMbL0JevINHol6mJKk3k3RMA3mDVvPZZXtjuWRBcYL
         gTERZNSJGA1apmTb6OMn8xDji7cy9nYWGKyRA/20TI9xuBWJkQ+WRtgJVfJROdG08fzh
         U3v8K54t7lDR4wJLKIl6AWFhpF8mZlMme/fPW9/3LHc/QmpnYzFWFQlRjCWAlXmjRYsR
         gsKQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5306l9JnWG6FVH28tGtXp7VqwQzMSlRCv5YtsSfo4wxqp5c2N26i
	YUqsN8474iYTbYEGPDO/1zA=
X-Google-Smtp-Source: ABdhPJwBm5ssa7b0QHWQCUKld3Q3PP/AMcgnonQZGBpbrkQbyXBfHqx4ou/mFV/UYm0GH8ks+H9GGg==
X-Received: by 2002:a05:6000:1681:: with SMTP id y1mr46577748wrd.52.1638831073710;
        Mon, 06 Dec 2021 14:51:13 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:ad6:: with SMTP id c22ls266799wmr.1.canary-gmail;
 Mon, 06 Dec 2021 14:51:12 -0800 (PST)
X-Received: by 2002:a05:600c:384c:: with SMTP id s12mr1852541wmr.165.1638831072865;
        Mon, 06 Dec 2021 14:51:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831072; cv=none;
        d=google.com; s=arc-20160816;
        b=IbjSKQlIwuq6xnc/04KT/8S12jy1I8c33L/5fBtmv7ZYlOLoB6DvH8CECLC8Jkn1lu
         XozLA3lh68jDnqw6uel4UpQhjD6AlTNNms8jL4Jtk98zjohTUFMUA6iGrZgI4YCsNgPN
         R78TX6FVaO9DgVZXVAg86iyvzXWwS+T4ZxGrOeFraOzU56qpxr0LrHiek2QS5WgeDKLG
         cYwLyJ5iNbqD9r2Kmnf64qngE9pyvwZ/ftFAtObLAOxWRXhDhXLqnsCaBUk8191t23sZ
         UQ64AJVUWPLKJTgYUPAbr5h15S0w+rImC8xiJiGKts6Of3xlAmEtyaA1wdU28G+qta7r
         zF7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=lgiDOOjzWmT9ulLacAOoXHFBFpehQOVNbM8oPjh7uJI=;
        b=fycM8D84subuklSR/+Zu8LukDHc79HM7FgD0FM2oinrI80NO43rN1Ef9C/avBBfjte
         tkmhHekEBVbhHzy+oP8u/UZTxdMsSfO8y+trevf4yePZ7E8OS1nTD5JXGUpUCkLnP2Qs
         G1YyK56JJ1F0APlBshxCRrWNltZ4UcFT+CrMLuUqNAQwNjn1/VAttkUCuSDS1XGv+XJn
         OZRorAcXY856WPDz17O+54JMfHaoNPZrfLHMlUtJlacUABQXFRsJBBOwcgN5lT+68Q7/
         /aDVRQ6/kRdZ3uyAnby7QOQvgpywQCxT9JZoR1Q9e2BlIYBg/aglm8y1UdHSWIcqEhaG
         4irQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=TdIBsdwX;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id c2si136279wmq.2.2021.12.06.14.51.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:12 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210747.928198636@linutronix.de>
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
Subject: [patch V2 06/31] genirq/msi: Provide domain flags to allocate/free
 MSI descriptors automatically
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:12 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=TdIBsdwX;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Provide domain info flags which tell the core to allocate simple
descriptors or to free descriptors when the interrupts are freed and
implement the required functionality.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |   17 +++++++++++++++++
 kernel/irq/msi.c    |   48 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 65 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -106,6 +106,8 @@ struct pci_msi_desc {
 	};
 };
 
+#define MSI_MAX_INDEX		((unsigned int)USHRT_MAX)
+
 /**
  * struct msi_desc - Descriptor structure for MSI based interrupts
  * @list:	List head for management
@@ -264,6 +266,17 @@ static inline void pci_write_msi_msg(uns
 #endif /* CONFIG_PCI_MSI */
 
 int msi_add_msi_desc(struct device *dev, struct msi_desc *init_desc);
+void msi_free_msi_descs_range(struct device *dev, enum msi_desc_filter filter,
+			      unsigned int first_index, unsigned int last_index);
+
+/**
+ * msi_free_msi_descs - Free MSI descriptors of a device
+ * @dev:	Device to free the descriptors
+ */
+static inline void msi_free_msi_descs(struct device *dev)
+{
+	msi_free_msi_descs_range(dev, MSI_DESC_ALL, 0, MSI_MAX_INDEX);
+}
 
 struct msi_desc *alloc_msi_entry(struct device *dev, int nvec,
 				 const struct irq_affinity_desc *affinity);
@@ -424,6 +437,10 @@ enum {
 	MSI_FLAG_DEV_SYSFS		= (1 << 7),
 	/* MSI-X entries must be contiguous */
 	MSI_FLAG_MSIX_CONTIGUOUS	= (1 << 8),
+	/* Allocate simple MSI descriptors */
+	MSI_FLAG_ALLOC_SIMPLE_MSI_DESCS	= (1 << 9),
+	/* Free MSI descriptors */
+	MSI_FLAG_FREE_MSI_DESCS		= (1 << 10),
 };
 
 int msi_domain_set_affinity(struct irq_data *data, const struct cpumask *mask,
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -120,6 +120,32 @@ static int msi_add_simple_msi_descs(stru
 }
 
 /**
+ * msi_free_msi_descs_range - Free MSI descriptors of a device
+ * @dev:		Device to free the descriptors
+ * @filter:		Descriptor state filter
+ * @first_index:	Index to start freeing from
+ * @last_index:		Last index to be freed
+ */
+void msi_free_msi_descs_range(struct device *dev, enum msi_desc_filter filter,
+			      unsigned int first_index, unsigned int last_index)
+{
+	struct msi_desc *desc;
+
+	lockdep_assert_held(&dev->msi.data->mutex);
+
+	msi_for_each_desc(desc, dev, filter) {
+		/*
+		 * Stupid for now to handle MSI device domain until the
+		 * storage is switched over to an xarray.
+		 */
+		if (desc->msi_index < first_index || desc->msi_index > last_index)
+			continue;
+		list_del(&desc->list);
+		free_msi_entry(desc);
+	}
+}
+
+/**
  * msi_device_has_property - Check whether a device has a specific MSI property
  * @dev:	Pointer to the device which is queried
  * @prop:	Property to check for
@@ -896,6 +922,16 @@ int __msi_domain_alloc_irqs(struct irq_d
 	return 0;
 }
 
+static int msi_domain_add_simple_msi_descs(struct msi_domain_info *info,
+					   struct device *dev,
+					   unsigned int num_descs)
+{
+	if (!(info->flags & MSI_FLAG_ALLOC_SIMPLE_MSI_DESCS))
+		return 0;
+
+	return msi_add_simple_msi_descs(dev, 0, num_descs);
+}
+
 /**
  * msi_domain_alloc_irqs_descs_locked - Allocate interrupts from a MSI interrupt domain
  * @domain:	The domain to allocate from
@@ -918,6 +954,10 @@ int msi_domain_alloc_irqs_descs_locked(s
 
 	lockdep_assert_held(&dev->msi.data->mutex);
 
+	ret = msi_domain_add_simple_msi_descs(info, dev, nvec);
+	if (ret)
+		return ret;
+
 	ret = ops->domain_alloc_irqs(domain, dev, nvec);
 	if (ret)
 		goto cleanup;
@@ -979,6 +1019,13 @@ void __msi_domain_free_irqs(struct irq_d
 	}
 }
 
+static void msi_domain_free_msi_descs(struct msi_domain_info *info,
+				      struct device *dev)
+{
+	if (info->flags & MSI_FLAG_FREE_MSI_DESCS)
+		msi_free_msi_descs(dev);
+}
+
 /**
  * msi_domain_free_irqs_descs_locked - Free interrupts from a MSI interrupt @domain associated to @dev
  * @domain:	The domain to managing the interrupts
@@ -999,6 +1046,7 @@ void msi_domain_free_irqs_descs_locked(s
 	if (info->flags & MSI_FLAG_DEV_SYSFS)
 		msi_device_destroy_sysfs(dev);
 	ops->domain_free_irqs(domain, dev);
+	msi_domain_free_msi_descs(info, dev);
 }
 
 /**

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210747.928198636%40linutronix.de.
