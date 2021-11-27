Return-Path: <linux-ntb+bncBDAMN6NI5EERBV4QQ2GQMGQEQBSRIQI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BD86945F8D0
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:32 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id z16-20020a056830129000b0055c7b3ceaf5sf5105629otp.8
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976151; cv=pass;
        d=google.com; s=arc-20160816;
        b=u8dROMyikkwP5/79PjH2k/6DnEINjsJHZBKIfdVEXtrc2GzasZK9GUt8mdJRE1HeDf
         8+OWREVounfxtNirDFI17Ti8DjhzlHN2eHD80pKTcuppzTKunWuIfGWDoDZ39qPksGja
         P4BO6kSl1RJrVDo0KZ0brH2wPDKrUsuQI9t8xbjxnkvA591l0DrLlGX0D2zxXwqH9NPP
         QsZDKN3OZ441Ug8CWk2Oa97IlEgBfmm5zYK2OmYcRoEfVkPaW6bGSk/+h7UiR17MHD4/
         ydHnKVAG+X9Qp6f6Diil4g7yPvlmYzltdCIYT4I0j9xt6a0v3xwvaj1Uc4Ld3By/krxz
         d9gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=tqfZJMAHF2dXt4WKb5ijzGKsKlTtUo1mVr4+e83dhH4=;
        b=AutIVPNeWW+u8m+XKIpgnpBDQ+r8N6wGrKgCYgwcx4Lndo+9iul4cJ5ZwBRVHJ411S
         TkaXyHY67IbP/L3ba2RUgiW4nyEuC6lOq3fxYumb+8DXHuwEsTylShDVp4J12F9DWyhv
         uedjLbC5/316D38wIv4KGpSGhMptiJOe0JNean8+I9yCpxg7gso9tZdmrET4Vr7mTnTJ
         mBGAjHCy0OpTfukcGuAR/nMkBFfVgFPhaVoNrr4b0XzcKEcXElVwhwV1jxeR218ma4BJ
         4014BV60I2+IA4C/rtDPKIzVo9VgzHLKsRYEctgxylqEYM6uZ9JxuG6ZKSjXzz6b0mid
         R54A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=c8fPZe3N;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tqfZJMAHF2dXt4WKb5ijzGKsKlTtUo1mVr4+e83dhH4=;
        b=S9Y9oGC6y95g+N+Rt+34lwnYVGmD72Wf7q4HRi0h86DFdNRmTmWI+7iUyV68BSQ5xU
         4O2fT6yC19eIoJaqsCzN/yy7JGVkmC2ALvW0sdTZnOhC9fXxlhSFNGM+IVe+mAyEDKxP
         S4A5LO65EP5P2fFTY6WBJYtHDTFZxuA6ROkuXm5ZM5p1KWXpstvNSOgNcrL/bCRnWy72
         q4e34+56hSQ/ED1ZrPSWnuGh54qnLfsKqutoHFBvUJHNt6jFn7JWXPMBrqCAoC2Cul92
         23+dVQqMzgZwyeKePS3U/OcpoHN0xWpv1zBxu3rwMI7vxOX45zPp2rT2VSidoHu31VPL
         vWGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tqfZJMAHF2dXt4WKb5ijzGKsKlTtUo1mVr4+e83dhH4=;
        b=FxLfcwRIBnDpIIPsPOaCdKlMVS0FonPFl7VFwYcECWU011EAJxgVookD5NZ1G9mP6e
         Jw0x6AJLn1HNB6MaMoTTeGhExXQbNRCp5jjfuu4bQwN+3TFfe6hPJKeSDpkfZajPv9iq
         rZ9KcmM0168Zx2ZV71e4+fR+w0yLF7cAWnOLaVcUVAzh+Q2z6FGo/UQCP6IQjMzNMbsw
         e5y5dEsCPTANE3I+xGbJCKzhU+uaomzb1EGsd5XDqFzLfUebqSHWaLSdChJhO7OKxLdm
         E2JLTlI9NHBuUE+Oy/Ocr4+Efq4wdXnAo+CQKbhBcesIuamehS6OSSFDU/1jbXk3V3X1
         UBBw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533Z+DolyzuCvY1Lsrtf7Bsx2Pzl1AIEzjzsJJHH92/dKBEXl6Nu
	irAP8dSSIO/FVAyvx3yAGl8=
X-Google-Smtp-Source: ABdhPJz+hJGYbvXlQ5ccnqKyOh6s1VDVF38YmNLlvzWGJG5crznmID8GhBYKkA4TgzmLtjYnpwjFRQ==
X-Received: by 2002:a05:6830:2053:: with SMTP id f19mr30339101otp.295.1637976151293;
        Fri, 26 Nov 2021 17:22:31 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:19a5:: with SMTP id bj37ls3004546oib.0.gmail; Fri,
 26 Nov 2021 17:22:31 -0800 (PST)
X-Received: by 2002:a05:6808:699:: with SMTP id k25mr2120256oig.135.1637976151013;
        Fri, 26 Nov 2021 17:22:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976151; cv=none;
        d=google.com; s=arc-20160816;
        b=RTU/UScGim1sKsx+ijM/aXVlUyvjNWAqNCUKVJYTfZR1Lxhz4KQ92Pic1YJXBtMBCw
         Fx2KyPItKfmBcUszmcrUboc41hgJDBoG45+W0UozvZOTC8AGWoWE11iuQjJ3tq4ESiSL
         yw8tSItkMxshF32FWpn0nOKmDgelVGHimQ4rCo19sbWzCBmnIq2E14SYRM88Y3Gd8Kj7
         aP459pm2hrxbJW3/wWClc0cfYhVM57eDbB6AQAH0zkWM3+Yk1GiDb9oqOOkMPo39CZkf
         4IaEkKNSF8sTwc7oLW1M9siWqmArrnbBbhZztgz7GA2pyR4D2EPkR/kRB1xpEbiEHPm5
         uAJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=pqZGjMh/WFXDkVYYwyzdxBCQBDh9R/X8Ua/hDtqXIzc=;
        b=l6FzmOSA75zdVXQzSPBYUKkQy9XVaz1qsSWiSUYGP91QNKaB0mfA//i4d7/ZwwBMux
         0c0W/inh+GvzgVtKH9Hy4+QaEhWaj8Ww21WoS/5fTEDHND5yo3wKj/6F3U3yQfMNcYFX
         tjrKA33pmGZKFabETxvCl//NNCTFTJcP4rlMc1myoqrV3uE6hHKZVyoGASefYoOUbCqt
         sNvbFuBEy0tvgv+hZgKOrOL6syGOetbeF4N3xEP4a7StE4sgkXi81+tRiMpevtJ/cChW
         FiW9gdHHIbxQ133cVPRpHzJ37OwvW5HYgXxRUBr9Z1pqr8hnVlll8t2mAJ9ZPjr/9Ane
         ShGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=c8fPZe3N;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id g64si1189823oia.1.2021.11.26.17.22.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:30 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
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
Date: Sat, 27 Nov 2021 02:22:29 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=c8fPZe3N;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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
