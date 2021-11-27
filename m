Return-Path: <linux-ntb+bncBDAMN6NI5EERBX4QQ2GQMGQE3CWJZXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3833245F8D8
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:40 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id 7-20020a6b0107000000b005ed196a2546sf13280957iob.11
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976159; cv=pass;
        d=google.com; s=arc-20160816;
        b=aITRf9ALr1AqUxBv548GDeyo+f9I7iggCa08uFeWdDEIyVeGk391lWqbQ3FFS0lL3R
         CMqblBB/lX+JOoAYsWD3cxCpxrCyNCj7XwXWs2UJbDMBJmr0JxjU7qKE1qqwvFy9oRLR
         vsUR9dyJLoIlgrJ4UzX9BAe/ay7ayv7H3Bka0Wvcta8LcRGc/GikSboPz39eNJU5HI6R
         /XqRYRvtk6JgdJchJDuXvHfDrwk4oa/sc8vIuobMzmsFQrOpa2gXJ0UbQ0IKousuzCLs
         0XggSmmeQK68iFXIfXDk3bV8u5yvIl+Of5VxI3EWMDtVNk1v1MsHv7fUa3e8M6PUdoeQ
         gKZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=vPw0UCmPGnYhAWU83pXGMs2F02coEmgkdV7kDsjp9/Y=;
        b=KEIr2tGXupPmrYZPQL1sDWZzBw/d9mA6nt21529HzRmjbWuyVhpDPTVDWxzbabq5U1
         EsFDi8NGMvPTfAtTNq0jG1spUH7jLi5zqHWJJ9DxfFNGfrN+oQ8H7+YmtktXcCU1LkLD
         kRDunlme87Mlu3rx/mhRwxR16YkDT02NMAlPXCBtOSjZ6J4ZrALzqgaajea+Wx06hca1
         PNDHzAo8DMrR+/plcIJdUGMmXLmBW4O9rmK7mH+b06psMIUp6fAJ0zm7pRofGXpIMUEU
         CXD7OVSAEnu4Rm6lU9cR41SLFKpBIhfJNCRj6O3uRFaCEwSEFjkMVkQ8MyHjZdEOqgu/
         D0AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=DmOUQuxv;
       dkim=neutral (no key) header.i=@linutronix.de header.b=jaJQQqCv;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vPw0UCmPGnYhAWU83pXGMs2F02coEmgkdV7kDsjp9/Y=;
        b=aV4vmjK1NOsNBIi1ZqGzFHhF7QJwqXUK0KaeTMebFdIpXwi5RXhAvLesOShgUMeKY7
         4YHddLWgM0TQEZ+ULT6J0msTMeiE3ViiiwEt8eQlEnh0feuf1Jhix0EiUE6DBsiAV9q7
         /9zFVhZYwUahiFN/WUz52nxDtELivluiDXcC57AwAjspELutFN9idregDTXSRk00VNQw
         vLVBQ/qB64X1YIOcUwj3FAZ7tDoHPi3yMM7P+TJh0A67w+nqga6g9Z44tDBB1Otwb7GK
         hHbMFlMx5mOP1uRoIpLNLvaDxdSxyVz37IIMaN0qWzMsGkfyyfmiJxg1ILwxNFUoTVDz
         ihDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vPw0UCmPGnYhAWU83pXGMs2F02coEmgkdV7kDsjp9/Y=;
        b=1ZsCVk6NnyFl2Q3+hFsAY1T1VlFz7gsBin9HaX78Ku37L8QIy71Z5VN0f54SaQVQ8B
         JvGBI/zN9gLOJPYm/wQUp0bKwsdL1TZvBYj1F9qcttd3LrCv6HYTrZopO8yd7aI7om0O
         v3W247RFzzNCD89hh/Ig7elDAJKQoEQOyUAqUnDfJj0xh73s8UAMtZhnTS0BItwE96Ll
         LZLrC4c368uYg1z2A0m0IbgteJWBxgTpN5mIdDV/uHNpmwEurVwMFyXeQNEAjUtypZw0
         dQevke2xsUq42nP7sdlyqzKa/2gvg5KcDczA04lyBWmzpkWbm8d+I76mQIMBKQvXOwl0
         j4Ww==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530PoA+KLxHjqlocmTw8MRRWZEXRogzsKn2YtK2ikeeD94bVXxr7
	jvk7wFEovJOAOMnKnNFW0kA=
X-Google-Smtp-Source: ABdhPJzH+zDPyyLOZwgBWD3hPHbrfkNDn1ylbX/erh4pHdth/1Tegm3N3x816CuFRdL/e/2FlCfDrQ==
X-Received: by 2002:a02:6d41:: with SMTP id e1mr45514138jaf.74.1637976159113;
        Fri, 26 Nov 2021 17:22:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:9d96:: with SMTP id ay22ls782612iob.10.gmail; Fri, 26
 Nov 2021 17:22:38 -0800 (PST)
X-Received: by 2002:a5e:8e45:: with SMTP id r5mr35930248ioo.29.1637976158801;
        Fri, 26 Nov 2021 17:22:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976158; cv=none;
        d=google.com; s=arc-20160816;
        b=MABD+TLMRFlsSLv/EWavV2/iWvO5626HIEATUgHPmBB8Mb0VDPWVZHzJpc/C3DAyze
         TDbTxhhby4apvTMcrAgL1Z2NAt4SRu0bkNH2nH8OY0L9faMinKvt2B+xw4YnoY040EOF
         65I2PcUg8+WhJdWQW9qimkKzE7e7RMbTHNwdrn9IaZsoeh/IQdbuJE75q4x0ZHsAahV3
         L7YRqjb/kRNfnI4QzxRw/eFKOF+l8ZGbFDu7xt80BuA1W1ShLrZJeDUGxKJCPOELR7+R
         9MfE6M3INkcrdxpICVhncmqbidPIL8XvRkDTZuPKG2Z5jreqeiAaKiNQ/3Ddwb52be7n
         Hfzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=phsDsJYjfoR3d/2omr75zeGkFrat6spindIKlhhyIqc=;
        b=CcjFygMT7mFEa1CbP2k8o371aRLhE1LJYO7chozBRXJtOQ4su6c3rJmc6AZpzYECm/
         o0MKTo40106sfvqH58EDZSTek3MrGavvimwDcqOYd23Uo0jdFxJniZZ341gb6yC39wi2
         iDBQfg1RKfjCYLjVAXFD10kUVQHZv2eTe54m4mA9/0/6KbEGfJNBa88uF208yYbquUz5
         Y2R7SweVdRGR6xgDVTHoPSzU9nRaOED2VhalTy1WjVhmCBVWN7a1S9l6FrWnBSPB/Pwd
         Kaas3YnoDEIdJuYt3dpnOgNZmwwNknWd0PQZMO9X+e/OS+DIXgBIVjMVNfNL4FJmP5qI
         HlOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=DmOUQuxv;
       dkim=neutral (no key) header.i=@linutronix.de header.b=jaJQQqCv;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id q3si1194502ilu.0.2021.11.26.17.22.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:38 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
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
Date: Sat, 27 Nov 2021 02:22:36 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=DmOUQuxv;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=jaJQQqCv;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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
