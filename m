Return-Path: <linux-ntb+bncBDAMN6NI5EERBWNHXKGQMGQEQGYS34A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B7546AD32
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:06 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id 83-20020a2e0556000000b00218db3260bdsf3889611ljf.9
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831066; cv=pass;
        d=google.com; s=arc-20160816;
        b=r3EPSEYwhhveW/JU2ntnLSSVVxF9ISdE9a1bZiiHaw97lwElzLDz5uyGxUyDvnbYSe
         /XZNgMNRbMZcj4P0ExIt7ssfh6CtxAYah+5CnzU3wuBKaDx6KqJJ5TwDo9sBJfEHO/EC
         eR30vuQfL9J5nLYrG7ClO+m1bLOFV6T0yPa/dG97BON0KQ4li7deaxPyp0M7zmRWt7UY
         LleeI7Py09l4Q1yrrCy+GHc3yHevSqUp3VnP6VnKkHVqASyID/wgqkRAHPvzgxmm9wNc
         t17cIhmls7kGN5TdNTTl9ka0VAyO+ffg7rcqqJtRqdH1CaS7ayVl1YVITpGvPC5+GqnW
         RICw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=/0ErLlr7q0FM8jf+MhHpFH5u8IRFyf1fDbZgo6Of/bI=;
        b=NXBMshS9pTRxiEvzb9qlri9wYV3I9XoPJWU6rZS6NmNa32qdw4ErsyyTkegR7dZjag
         RGR/Oz5JLjj0KVyLqMBFx2orzY0D2Jf5Ar2+/dokUp2FpBYsA3kcCpzuf93DOfpQAKQu
         ePBuDI2TK+oaUKVRE1lhttzMzLX1yhH6VCmmbmRs7D7OHgWlhcnk443ou1220D+bVRQt
         FM12oWlTAYS6jHvUBCLFH6ByfoIqHpeVaZNgco25wcqxd9KsO+OXC5GW9lTLpKsnv/A+
         G5azQIgGMwnEWMjTJqi75ciuCFLSDSbxnFi6OOY4roEdEK+yA0NGEZVBc6EfKSWh42Uo
         giwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=AeE2TL7t;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/0ErLlr7q0FM8jf+MhHpFH5u8IRFyf1fDbZgo6Of/bI=;
        b=ph0wCfGayxxngmAOOwvmxnXVNLwuH3VyH1tn9feelL0GLOk/banU+rkXvCPtxUZ63k
         +NUbEg1rbd9liVaHoDsPFONdWmgiZQ3r6fn86Mc0byUsNdJ697gJ3ncLXo4m33x8uA9u
         RvM3ui+4BSeb8wWAVfN8yaFPbADkwSsyZlqGoYGFHuwNc8YUl/FOlUjwcOvt9+p1kZIc
         pXnls5tjGX/F6iJ67CZfxpfG/Sg2bgUkxyHR1bjNCXcxwR+vvHFjCKJpbwzJcXkTwqM5
         lnZmR82PkHHlBYY4jzuaao0oaRJjpDSuAYj+hWsCQf4csxAX6YgDOQf/6hIzt13uscLX
         GkLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/0ErLlr7q0FM8jf+MhHpFH5u8IRFyf1fDbZgo6Of/bI=;
        b=AT+gwSc1LtlAhL0uGEnKtXdHxaVYmaZ3IvwT6M9Nn+ufMa1NQmJAxmpkBDwOsSKRAL
         l7p8bLsUJ5JLS6q6/BukXtuoEIZKbu/9soSEl4ECoyM9tV+yi5rpFVwY4RstNHpvBuz1
         iCkfeBI9hHgfh08eKakstDoNg5cYT3pDHdL8GDHiY5pdY8ClgFH1tLtsb+OPKGhj0gzq
         OIjKjLWC2Lcjtpa3VbvcYe3RqjAFvrEkKKruGcGqMyiocJyzOwqZnGNGHMcz8ZjiVtgf
         fuK2wpT2qN/p2TCgVpeFH6/VfIwTw52aW4WvOeiCfW5V7xjlTTYgOw2j6zNlyQgCUWYr
         KAYw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5329geQqLqSy75Tgnewz0OxKEdktKXOmmQfEyJwMFYlrFrzpJQKL
	CgJq62ItIcHQZdUyzKO3GPw=
X-Google-Smtp-Source: ABdhPJzDMYeEu+DgBpMbbF7SLRi8Op2oDowBrF4VpikwGFgURu1CNUo8tn5P8rQTxMBVyzkg2Z9c2w==
X-Received: by 2002:a05:6512:3c82:: with SMTP id h2mr38985706lfv.128.1638831066150;
        Mon, 06 Dec 2021 14:51:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:a7c4:: with SMTP id x4ls2841825ljp.8.gmail; Mon, 06 Dec
 2021 14:51:05 -0800 (PST)
X-Received: by 2002:a05:651c:1503:: with SMTP id e3mr38538196ljf.182.1638831065244;
        Mon, 06 Dec 2021 14:51:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831065; cv=none;
        d=google.com; s=arc-20160816;
        b=AVQ1UCX/CX+6bsmtVR8yl4LrJ2382lopFMZqX3eCMUVy2kW9qj9yIG6yICDGYeqHcp
         chb3VBugJBeV8ZzPYvEB9uz8rSK9aq+xg4+cmkiOmkaYksQ9axVmbRAr0N2QcoH4yrgB
         qcOlm368GHsBki4qg8bEuZ62ny9zlku9X9URwdEbcOLEflM0sjxwk6qIbTu8ci1NKSSC
         0fdIJ5hvasesdLclPixRTVVzS7hiNXyM14WEBSz9CSM26wJ+m6LRo/fh+MzE5y62CSn2
         ZMx7ciQElrTAK9YyiRKKMwJZW89RWYeidlJeC/zp6YGGhiNzN9aPo+NLGYV4eGk9OGyC
         KD0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=oGMiasuEUP4gSPR4Np59QOd3p0f+7TdfKQ+z0X714rk=;
        b=daU6NwoG+b+L9kYfdlLSnwxy96F4/TmL1m0f/w+MURdDAEfNGfQJ9sExAsQL5vfUh8
         ln6HCXl1xV49bCgV0SNL6uGN54Z/JBL17P27XdlQ1RspjBnrqU+DTIphX3HMomo/VWgq
         B/Wk3C/491LbGc6ANrHMgcbK7KC4kfk0cLGlqTN2SNQ0XG14detyIAQd3+/0FVW14NjQ
         KxJKrgMS09KrzN7v0+2Tv2/Bg/fvoZZ1//d6TSE1r/L9VSSVUoWMACbpBTqe+AOSWvzL
         b9x+TJc2E+/un3Rzyn4/J1ldglqtWgn46FEmxXpOaV11nymXMSxdRr63AyN60Zkpn1Hx
         goFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=AeE2TL7t;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d18si761822lfg.3.2021.12.06.14.51.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:05 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210747.650487479@linutronix.de>
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
Subject: [patch V2 01/31] genirq/msi: Move descriptor list to struct msi_device_data
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:04 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=AeE2TL7t;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
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

It's only required when MSI is in use.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/base/core.c    |    3 ---
 include/linux/device.h |    4 ----
 include/linux/msi.h    |    4 +++-
 kernel/irq/msi.c       |    5 ++++-
 4 files changed, 7 insertions(+), 9 deletions(-)

--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -2874,9 +2874,6 @@ void device_initialize(struct device *de
 	INIT_LIST_HEAD(&dev->devres_head);
 	device_pm_init(dev);
 	set_dev_node(dev, NUMA_NO_NODE);
-#ifdef CONFIG_GENERIC_MSI_IRQ
-	INIT_LIST_HEAD(&dev->msi_list);
-#endif
 	INIT_LIST_HEAD(&dev->links.consumers);
 	INIT_LIST_HEAD(&dev->links.suppliers);
 	INIT_LIST_HEAD(&dev->links.defer_sync);
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -423,7 +423,6 @@ struct dev_msi_info {
  * @pins:	For device pin management.
  *		See Documentation/driver-api/pin-control.rst for details.
  * @msi:	MSI related data
- * @msi_list:	Hosts MSI descriptors
  * @numa_node:	NUMA node this device is close to.
  * @dma_ops:    DMA mapping operations for this device.
  * @dma_mask:	Dma mask (if dma'ble device).
@@ -519,9 +518,6 @@ struct device {
 	struct dev_pin_info	*pins;
 #endif
 	struct dev_msi_info	msi;
-#ifdef CONFIG_GENERIC_MSI_IRQ
-	struct list_head	msi_list;
-#endif
 #ifdef CONFIG_DMA_OPS
 	const struct dma_map_ops *dma_ops;
 #endif
--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -145,11 +145,13 @@ struct msi_desc {
  * @properties:		MSI properties which are interesting to drivers
  * @attrs:		Pointer to the sysfs attribute group
  * @platform_data:	Platform-MSI specific data
+ * @list:		List of MSI descriptors associated to the device
  */
 struct msi_device_data {
 	unsigned long			properties;
 	const struct attribute_group    **attrs;
 	struct platform_msi_priv_data	*platform_data;
+	struct list_head		list;
 };
 
 int msi_setup_device_data(struct device *dev);
@@ -174,7 +176,7 @@ unsigned int msi_get_virq(struct device
 
 /* Helpers to hide struct msi_desc implementation details */
 #define msi_desc_to_dev(desc)		((desc)->dev)
-#define dev_to_msi_list(dev)		(&(dev)->msi_list)
+#define dev_to_msi_list(dev)		(&(dev)->msi.data->list)
 #define first_msi_entry(dev)		\
 	list_first_entry(dev_to_msi_list((dev)), struct msi_desc, list)
 #define for_each_msi_entry(desc, dev)	\
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -99,7 +99,9 @@ EXPORT_SYMBOL_GPL(get_cached_msi_msg);
 
 static void msi_device_data_release(struct device *dev, void *res)
 {
-	WARN_ON_ONCE(!list_empty(&dev->msi_list));
+	struct msi_device_data *md = res;
+
+	WARN_ON_ONCE(!list_empty(&md->list));
 	dev->msi.data = NULL;
 }
 
@@ -124,6 +126,7 @@ int msi_setup_device_data(struct device
 	if (!md)
 		return -ENOMEM;
 
+	INIT_LIST_HEAD(&md->list);
 	dev->msi.data = md;
 	devres_add(dev, md);
 	return 0;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210747.650487479%40linutronix.de.
