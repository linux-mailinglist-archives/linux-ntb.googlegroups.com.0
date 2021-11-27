Return-Path: <linux-ntb+bncBDAMN6NI5EERBHERQ2GQMGQEHYJ33BY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAA245F939
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:41 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id x11-20020a0566022c4b00b005e702603028sf13411879iov.2
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976220; cv=pass;
        d=google.com; s=arc-20160816;
        b=OxNuCsyMQD2i7oHkEYgANqTBneWCJQHFi7LCn+ve7bcW3ZNuUKlXV901wBwCC4g023
         Qt8/E3ILPQ1hocAHpZ2YpA1xvAXskJzS4GvlCvddqkPww1iw9aB+WyiXh3chJ58R+yWo
         qJ+S2KGukg3w9p6fEYFxNrRS4x8zA5qy0/EK5PxAQv+QRkMzp6sNuNA5OZjHKPXbimvw
         tNK8cHnil3O56oV0eX655U2z0yTgScDR9d1XHHL0MJ8JVICQ4jnGDni5bTLmXbM7MC6B
         musgOJjYZBS59DXC4Apn/BPuAs/4ZKdEjzz4KYYPmGszaod9ojVQ2c8yNGS/T/yjn0m0
         TGaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=vPw0UCmPGnYhAWU83pXGMs2F02coEmgkdV7kDsjp9/Y=;
        b=wPBdb9IhZ5teY2Ra3TyNkqXZGUnCP+DtlZ+zQkkPGK92b8EbS0d5mHAluC5dBAQzpl
         ZKRu73z/tIZZzfJyc5N45ozu5m5gvvVTO5h9xIjDBwzt1cjdtnAK8mwlGadGnd9Yyzdk
         aDHScjcc5p2THMGgr+8B9EnPsc7/yBwIs4OcsdiaRzN3lk2W2+e8lBZfHn6C1yrGnCye
         OpPW5x30RPH5MEYeBEJQSIVJD6hhCLRdyWudV9jatM6bEU0RReh7ElHpTAEhlGB8nra2
         8ociq6fMWDJJxLOMCssC/uBe3joL6BhfxRVj0WnFwlqMzDg6bFA3KrDFBpULx+po+MXo
         ijtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=e6s06lNq;
       dkim=neutral (no key) header.i=@linutronix.de header.b=2R2zNwMD;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vPw0UCmPGnYhAWU83pXGMs2F02coEmgkdV7kDsjp9/Y=;
        b=IiiwqbihuD+P9QbVufUI09jMiGFjcxTlEPiU8EIyYJjZwSdtOxfMvcEYD00tlqOBLC
         czREBARvGiIOauo/JS5x/h7PoxKC3U2bBbPHQBI1WiM+0vDYgpccO9XxiOz52nzq3k/3
         rAe92to/BykEtTX2b5HR/CZh5X4E6yHSAnYOTjjzIDW8Wgfm46vk3vhIpEH7jsH5Qdnc
         p7rC/ylhF9327bHrD+EC6oq6PVVS3t5fVXfD+T5RoIMdeCaOkeytp3dfEDOTO1Q8PJNt
         eqeq7/VHYRA6E29PZ5TNLVu2UtPnlAofQiCUnCaiJX/6GKUcSk5gdJWmLoW1FD1zvaME
         Lw9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vPw0UCmPGnYhAWU83pXGMs2F02coEmgkdV7kDsjp9/Y=;
        b=c2Ewj+rVHgYLDgPq/tE4+TkLQyT5oms2xP86IEFDvpdnPEO+zMxRqwfQGjI/y8TZHB
         dabnRwhew33Os96NUgLJC9cKPOw2T3m8x6by3y0XHW2QILOG0x7D0kqrotwQHkju7ALR
         2tnFj5+RVlUW2r/zkeWVHiTLtIS5YKFE+VicqEVQ1XmnBHhUEBNxDERAkP+YkLiAyuN8
         vXHfis2H9wJigIWHbUBf58LkzSdHzc+c94OuTy00Fms5JpSqRxW+s1A7/LeXAvqnyM/Q
         7Rt/WxdiJC9+Xa2jkypV6YI+PDBe7t+ME3z2+2rysbmsAfV4PB4p02s/wEv+6Wop+Nby
         XtJw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5316xe4BkpU2Y341amYwbc6jw1r2By31lFN5rHkjov1rfBtAom0w
	O37dAsyCiqcLxgej6u7ojyw=
X-Google-Smtp-Source: ABdhPJyT8vpruTU6DTOLA4+r7O2Le809E/0ECaZ9Zxwk0sLWZgin7fPmxbr1I5tlH8924i5f/jA1Dw==
X-Received: by 2002:a05:6e02:1b84:: with SMTP id h4mr37142266ili.215.1637976220406;
        Fri, 26 Nov 2021 17:23:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:cda4:: with SMTP id g4ls1084137ild.10.gmail; Fri, 26 Nov
 2021 17:23:40 -0800 (PST)
X-Received: by 2002:a05:6e02:1bcc:: with SMTP id x12mr38249373ilv.106.1637976220079;
        Fri, 26 Nov 2021 17:23:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976220; cv=none;
        d=google.com; s=arc-20160816;
        b=g/5iryLm0YIvTa29+tjdWOC3x/twPFajUSkJ68ZQbAvFyTCwMJ9KCei9J7tgk6scfB
         CMl6e5vAgMRIohU99zWc4QLYGMk5qbgbkriyMxkjM6ltV8sRhltT0cxQecSSjmeEavVc
         CafWjxb322qSI6wjWw/3jqF36ejzVSc7BzlGdAcFyqblAtb1WC2haZzqJ6/RGjxGFheh
         ECR7WQ4Xh974B+sxyX3+ucwk0W1WOXd90HsWVGbaEUfJnUuPwkxh+kfsywmghCpver6a
         rOn14yJ8wnjvwqOBDlQRca5icfbj+AOng6fKwcd1CGgGi5+nCvu05cddWPRFNaZs5sAe
         MFaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=phsDsJYjfoR3d/2omr75zeGkFrat6spindIKlhhyIqc=;
        b=YS8OHUCP2XuKyTq2Zkn5Rbg/+j7He70UxtVTjim+R8ac7Hu7L3AXoUECfpLFWXEkdz
         zWoDqSMmshIUmAPaDJkEvz8oe4j3PL7yeut5sDXf+hW/N4HnhBLDJ2E0c8Ap/JGDlshK
         lKQ7tQ6TJdRcvIBKo90AfwYXcEt4pfFLzhOvD+soLVHlwWaT6NALWjXelv+KnrTBvKln
         C4iWtmoiywQspR5VGU3MC3MNPSaCfRaBc2Ez72Xz1TKIAkfmlSR3oU4AHI9R4jrNNFXP
         jSjGs487Y75BUWRDL7NTxZ2fr/dswCMw8lBNe4mD6xPFQlR97WsN/W5K8kkrlTbmvioS
         L+MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=e6s06lNq;
       dkim=neutral (no key) header.i=@linutronix.de header.b=2R2zNwMD;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id a12si955907ilv.2.2021.11.26.17.23.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:40 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232734.648760382@linutronix.de>
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
Subject: [patch 06/32] genirq/msi: Provide domain flags to allocate/free MSI
 descriptors automatically
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:38 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=e6s06lNq;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=2R2zNwMD;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as
 permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
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
 include/linux/msi.h |   15 +++++++++++++++
 kernel/irq/msi.c    |   48 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -303,6 +303,17 @@ static inline void pci_write_msi_msg(uns
 #endif /* CONFIG_PCI_MSI */
 
 int msi_add_msi_desc(struct device *dev, struct msi_desc *init_desc);
+void msi_free_msi_descs_range(struct device *dev, enum msi_desc_filter filter,
+			      unsigned int base_index, unsigned int ndesc);
+
+/**
+ * msi_free_msi_descs - Free MSI descriptors of a device
+ * @dev:	Device to free the descriptors
+ */
+static inline void msi_free_msi_descs(struct device *dev)
+{
+	msi_free_msi_descs_range(dev, MSI_DESC_ALL, 0, UINT_MAX);
+}
 
 struct msi_desc *alloc_msi_entry(struct device *dev, int nvec,
 				 const struct irq_affinity_desc *affinity);
@@ -463,6 +474,10 @@ enum {
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
+ * @dev:	Device to free the descriptors
+ * @filter:	Descriptor state filter
+ * @base_index:	Index to start freeing from
+ * @ndesc:	Number of descriptors to free
+ */
+void msi_free_msi_descs_range(struct device *dev, enum msi_desc_filter filter,
+			      unsigned int base_index, unsigned int ndesc)
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
+		if (desc->msi_index < base_index || desc->msi_index >= base_index + ndesc)
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
@@ -905,6 +931,16 @@ int __msi_domain_alloc_irqs(struct irq_d
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
@@ -927,6 +963,10 @@ int msi_domain_alloc_irqs_descs_locked(s
 
 	lockdep_assert_held(&dev->msi.data->mutex);
 
+	ret = msi_domain_add_simple_msi_descs(info, dev, nvec);
+	if (ret)
+		return ret;
+
 	ret = ops->domain_alloc_irqs(domain, dev, nvec);
 	if (ret)
 		goto cleanup;
@@ -988,6 +1028,13 @@ void __msi_domain_free_irqs(struct irq_d
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
@@ -1008,6 +1055,7 @@ void msi_domain_free_irqs_descs_locked(s
 	if (info->flags & MSI_FLAG_DEV_SYSFS)
 		msi_device_destroy_sysfs(dev);
 	ops->domain_free_irqs(domain, dev);
+	msi_domain_free_msi_descs(info, dev);
 }
 
 /**

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.648760382%40linutronix.de.
