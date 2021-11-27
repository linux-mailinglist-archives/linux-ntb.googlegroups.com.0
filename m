Return-Path: <linux-ntb+bncBDAMN6NI5EERBFMRQ2GQMGQEYDCLKFQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CF345F928
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:34 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id l7-20020a622507000000b00494608c84a4sf6192501pfl.6
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976213; cv=pass;
        d=google.com; s=arc-20160816;
        b=gE/ZUK2wD75rsJYSAS7z8J8fJ1ogCUYn0gGJJ7mkh2aYpnLE8VzHl0SlcLmw14tpig
         xGg+UWUPAHP1bV/iF34InTNxoChdnZHZ2G7mQ7aKBSq51lLUP9QnZsZFArnZrrn30L2V
         wUoiwXEhkl3744tfx48of3JL3JESwU+tDi895KIsQM+Ce7trKvtiVy44T3DrL/XDMAL5
         wTVaWuV4LkOgxfPKSIPcf1qSpNDDT9surKDctC1S+EdoBAQ5gB5UDq87OjDJRT2bB0m7
         V0Ly040WUF6GAt/48c5ESrKX74kJpr7wYZy+TdZiPHvJgIEseF6XHsnCwJAkPB2YE0IZ
         yV/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=tqfZJMAHF2dXt4WKb5ijzGKsKlTtUo1mVr4+e83dhH4=;
        b=zUWU7AV/MW9lNnMB0h/gth4hZ4OxcQ1utWJfbxuPRWIFruYnuJbbXnJFGnU4TTXAQZ
         6uBouDibtVQcenVPO4dfbiJeB62lyZP4HKrm7rv3+Z7o/cQFyjf+/E9zW/VUBXorVEQU
         Vl+WcqsZ86ubyewVrgtlpQI+ypZR3NCfs9KbSV1o8jd9oPwhOZBZG5tjaO5baMCzlOUx
         uYcB+jNpxEddR1MDwAidUhbb+hAGQL8OrvdR2WqjyzMz2hUSPcKUKVB/Nr+zn5t9k9gk
         tEjstXCrxms1pFG9LhRXwhpWBTXbew3HM5zU7E4dU8sFwM74SjGAtj4Jjvcf26Q+5Ais
         pEug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=L7Mofy0k;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tqfZJMAHF2dXt4WKb5ijzGKsKlTtUo1mVr4+e83dhH4=;
        b=NwCZITnytpOcmDsguRB8YXoVlBCDnU733dpthg+5JNgvZ5ExWK0TEByz2Q3ncf7BRj
         cTb1mknB0K+6Q+hA48U5/PH3FrNaFLVVGdfTa+QmTwD30t5Iy51c5E7dJN3SCpGobSJA
         yS6FNgigx8YAN5a5TQswasOZHRMI8j7S6Ym2rRmsxVJK3Ucc6oCceFvQG9/2ph5p4dFU
         oxu3yIaKbasCr6ejatxv3XXQVwMKYfPJTDc2DW+X8yToabTCngB+kh0BhFW80BY7SZgs
         q3awpKsuWvMlgfdgNmxeEhN4ZPtg+xGPO41aLWN8pqfckmmkZafOK75ELNkqJLqfULoV
         IJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tqfZJMAHF2dXt4WKb5ijzGKsKlTtUo1mVr4+e83dhH4=;
        b=UfCkGBiCpWXZm2X9eGcncEE7EgQ1/HVZuzRjAmfNWKHSE7O94t4J2hJOhK4mcUlPCK
         Dc3bkACYAJbq017nqQqfbGfcVuTyVHDAwwx2a5vBuY1vRB0kao8vz+LNvAbuBkjMdGvx
         eJtBPh76rNXFa5KbbPQEY6MR7uY8whXg+5X83sDG1TVmzK8/oPOqvvARtofKZbTToI10
         exzDrUX/X3QBwDJJJ5Y/BZsf77Nc84aEu4oc985OQOFsIqgUR72VNVKP1jPA4319nWLf
         1RDTjtwNf8Qi9R18z4s9fIjPWuVFj18R0kDxis7Af+UM4I6bWRCQKuRudwnACe6R/hm+
         3mZA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533VOT4zXirZjT4xXoEBBMfdaYbikuXRoSyPCVOtg95bo3Jm77W3
	Z7vXJhlX5zsHWQXcoglCwbo=
X-Google-Smtp-Source: ABdhPJzXeHL6KdKHaHq/Ylpl4rhPVJjzDVLAJtkugi5odCKGEqLxjw9GW0Z7MYZYeiE99gG+laSGgw==
X-Received: by 2002:a65:6a12:: with SMTP id m18mr24334354pgu.124.1637976213201;
        Fri, 26 Nov 2021 17:23:33 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:e5d0:: with SMTP id u16ls4171054plf.0.gmail; Fri, 26
 Nov 2021 17:23:32 -0800 (PST)
X-Received: by 2002:a17:902:d2c7:b0:142:f06:e5fa with SMTP id n7-20020a170902d2c700b001420f06e5famr41206843plc.87.1637976212488;
        Fri, 26 Nov 2021 17:23:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976212; cv=none;
        d=google.com; s=arc-20160816;
        b=oDWl8pUozjzdBc5mo2/ThsBnkG+wYjPs2IQ4oyU8aDDdCcVWx/NxoQqDuXOwaYXnNH
         WYPeUB5OMRKNoGvdzfY4ZzlCElR5JiWQAATOZdUTr943d6m/jHdTl/QwusCbLaKnRqiF
         ktKqzlP/LD36Yejx50grlbbaF7SZOQcQZyrqNuR6LDbYvxBV2c3srYHZE2TLebEGOA1M
         FuikC9eTzoIehE/Wb26RIEOX+CiZIjpRBsaZUMTv3UZVDDj6YHV7f7UjdragFFpkb7xv
         6QZPa84GdK+jRAcYdiKGhSNsrFYcSUgEcF16qOrIey6VphA7MbZ8FykVXHTyajFJ079g
         F3bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=pqZGjMh/WFXDkVYYwyzdxBCQBDh9R/X8Ua/hDtqXIzc=;
        b=eUtSq2mUQ+nDjSxD4v6V5PmnwrY6ZYQ/VFg2XvFGciBdesViCiycVj0nYYZMhoC4Se
         JVms0ePMBuj+NcL+dSqUDo0RvPs7gp0DKC3nYlv9Z1plgczQleybhKApcTgaPHRQAcEM
         MgurukTuPPFakdQCOnWaFYpSE1JyRY0tsLGwCQUf10V4keugJjb4G8wXn8BD72EJLorb
         MeLsL8ehqNdof7rM4kGjAr/sTt1sVuaiaqW7mSvL8aXrBY9xIOhvR0tgIgFjk1grIXlB
         Wi3MxyeUWzq20rjSgXmNXpdhC6svS4Jo1mEe3RyUQ2WSCTtqfJEoiiT7LXefM0JH0sCz
         XCGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=L7Mofy0k;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id f21si740643pfc.3.2021.11.26.17.23.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:32 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232734.349989857@linutronix.de>
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
Subject: [patch 01/32] genirq/msi: Move descriptor list to struct msi_device_data
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:30 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=L7Mofy0k;       dkim=neutral
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
@@ -422,7 +422,6 @@ struct dev_msi_info {
  * @em_pd:	device's energy model performance domain
  * @pins:	For device pin management.
  *		See Documentation/driver-api/pin-control.rst for details.
- * @msi_list:	Hosts MSI descriptors
  * @numa_node:	NUMA node this device is close to.
  * @dma_ops:    DMA mapping operations for this device.
  * @dma_mask:	Dma mask (if dma'ble device).
@@ -518,9 +517,6 @@ struct device {
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
@@ -145,12 +145,14 @@ struct msi_desc {
  * @properties:		MSI properties which are interesting to drivers
  * @attrs:		Pointer to the sysfs attribute group
  * @platform_data:	Platform-MSI specific data
+ * @list:		List of MSI descriptors associated to the device
  */
 struct msi_device_data {
 	raw_spinlock_t			lock;
 	unsigned long			properties;
 	const struct attribute_group    **attrs;
 	struct platform_msi_priv_data	*platform_data;
+	struct list_head		list;
 };
 
 int msi_setup_device_data(struct device *dev);
@@ -187,7 +189,7 @@ static inline unsigned int msi_get_virq(
 
 /* Helpers to hide struct msi_desc implementation details */
 #define msi_desc_to_dev(desc)		((desc)->dev)
-#define dev_to_msi_list(dev)		(&(dev)->msi_list)
+#define dev_to_msi_list(dev)		(&(dev)->msi.data->list)
 #define first_msi_entry(dev)		\
 	list_first_entry(dev_to_msi_list((dev)), struct msi_desc, list)
 #define for_each_msi_entry(desc, dev)	\
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -87,7 +87,9 @@ EXPORT_SYMBOL_GPL(get_cached_msi_msg);
 
 static void msi_device_data_release(struct device *dev, void *res)
 {
-	WARN_ON_ONCE(!list_empty(&dev->msi_list));
+	struct msi_device_data *md = res;
+
+	WARN_ON_ONCE(!list_empty(&md->list));
 	dev->msi.data = NULL;
 }
 
@@ -113,6 +115,7 @@ int msi_setup_device_data(struct device
 		return -ENOMEM;
 
 	raw_spin_lock_init(&md->lock);
+	INIT_LIST_HEAD(&md->list);
 	dev->msi.data = md;
 	devres_add(dev, md);
 	return 0;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.349989857%40linutronix.de.
