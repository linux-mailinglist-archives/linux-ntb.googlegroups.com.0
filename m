Return-Path: <linux-ntb+bncBDAMN6NI5EERBGMRQ2GQMGQE2CTJJYI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B1745F933
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:38 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id be34-20020a05680821a200b002bd24f9a87bsf7074944oib.17
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976217; cv=pass;
        d=google.com; s=arc-20160816;
        b=gVKowaZvm6ewad2Jtx9dQK9MbI5NYL1vYrfc7xaGYZheMifcRwcSEqFaCmLQeLrkCF
         QLzGxw3zERidHOR0a+NiI9jnC4ImNT7tIhxd364Q37JFHsIe0I0RH60WkiKFFaR+++9c
         P17ZF0ZM2aExqNxfzaDohuG0yTdMUtyFMIZabYisM71vCQaGVx3WZE1R+u5JE/EBfjGL
         bO7YUYegnANA+s6TkQUjxtC5Rg4pNF9s6YD0N+vxIJNhd4iEuGnd3Uzl6PsGtbX0g2C4
         UcQCB+QDcLGcgrMgX3wuZDWHe3twqkvqurR2BqCsF8z/TZH/Lg53cpqWicYC6zsmqFd4
         3GeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=zmqYEDKg5w1uteDKyM39afu2RIwkv9k55toAYxoFQ8k=;
        b=YAdU8Rq6DgncaD4ncFiGRSTQzq/AShzOLU5N1uP/b2At3m6nJ8epQSX/lDZ1mCk25z
         nWqYT53kvnoDWP2W8m+17om6cs+JOhFjI2A5hsKWaztkd79vbI+/tmbFjeDfWBmZn4XX
         8BcUncI5HMWyanN3MQ3mhMFRBNCE/wdhpjg7jfcDc5mCkPIh9xM8kiWu23TWLbkTZ2zt
         S7DoBfVyoTgvPwgiZfReivZe/Q4NagsbLNFRoplDj7i0VvwDjaxyfd5bkh7pG37wcJpd
         3mu1/4Vy5/d4STcu4ocForfI+qVDveLMcOWvfhASsrDnvuzEZz8REmcBt8b+zwQx7oqv
         DXcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=aIRu+uDV;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=fab+ZFCJ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zmqYEDKg5w1uteDKyM39afu2RIwkv9k55toAYxoFQ8k=;
        b=sWi27Zu1FeGDY6Wg8+yP2g1/YgqCMG+BBoZVN49Z89Ln/u8r1DFRi9Ci99scsrRwoX
         VAJp6GZDEgrfTXoJMc9ECtSko0+XUlhrDY04ZFqbS+NPn/9/oivxEJlWkxp1V5j/9WKp
         zQZ8NrLcQ0YXp3TFHHVl+03VR4/3WHgTlYZtCXQTWsngXY1mNLUbP1HrMIvGO2LDeE6Z
         Dc/Oxf0ThYlqMgJdK6n9lab92WkeduEuaFzOGlN/mJeKgyxjcmoBET+YUpBvZb75x1RX
         yMgg++CNWIWWLCIVfaQ0YST6+ne3wlTkjSdtVNS9qeqD1HGHgRWjSNgOIMXVlJb3XRMC
         QzRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zmqYEDKg5w1uteDKyM39afu2RIwkv9k55toAYxoFQ8k=;
        b=DziPlWKUyS92xqJ4HqdNPgbzleb+4td+2tKU1VA69iiToDVVrbtSf5TlidWuY1SHvb
         5a/4HkNr/qQWUb0LIhRzaCfI/fPTA9Rm+KS1btwIg/7UsjU6snDZ1pClf1ApOReDfZ4a
         66sBiNSFH1RaKbh6vwYohbt8I9j39YjWX7dixv0ucjfJhVoNWcJzD9SQGgUH5pplxMK3
         cRYtbbUI4aXMeykZgf6U0NEg9JUk72l0orGwwmbGWrNhou/t0rLUgosx5wRvr5g7e2n2
         bykrYhKFDNqnx6+YxKaKUixpvUNyZttIvE6YJWt1Bg7HolkZ/H8Vle/WVEJW6muRit5Z
         7VlA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531Dg9MN1WMFMTyycxTQKtXdk/pMGhus6b38ijObhZmui7Qjm2le
	/O3z6e33cxS7zXNztIpdanM=
X-Google-Smtp-Source: ABdhPJzVFTgtbg4zlHUHwo+RZCJ5rCovhxpQ1SDaXUDCZEPaRJpjABlf7wfaIZP7pdC3yyXAWjan2w==
X-Received: by 2002:a9d:7414:: with SMTP id n20mr21711403otk.293.1637976217403;
        Fri, 26 Nov 2021 17:23:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls2632391ots.3.gmail; Fri,
 26 Nov 2021 17:23:37 -0800 (PST)
X-Received: by 2002:a05:6830:1e77:: with SMTP id m23mr31165040otr.370.1637976216979;
        Fri, 26 Nov 2021 17:23:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976216; cv=none;
        d=google.com; s=arc-20160816;
        b=Yda7z4UWH8pODk7+xLPi/lCh6boRS9LBJAQ1siRhCdLjHbqMNFHv5liC+nXPorsZXB
         jQkZqgfms2ttLLIheSwL6hrU3+/56bd9MVOzjK2qopU/fiG2BCz2A/lowFMo2+IQUcN/
         9Hx793Uh8R5oH9ZhhdCJwO7L5jcf8mtObmIfgLoOZxQL5BgPR1ZgXpL+cNWd49A7XEr9
         Mj1shvNrUXDWCTFYILGstqe3qTUotf7HSpD8GQScJ7Evg79Lq6N8c7DijlkKDq9gxM/k
         PK88zBarBYEDI3SBTPNK3ydniXTBxLpgrKKISDD7s9DzytjZvWDeZh434u7OWzHyDUxN
         ixPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=z6dcduacKPcvuHhstAFE2CgJ262pdWvtfjUlsYpcJo0=;
        b=vapG+jmxSECm9FSjIKXm7oZ6KF1yZcFuR17onegXq+cQcaX7Lu1V456xPSQpYPR3f9
         kmPvyd5F+jojaZYx32rSBo3EFPqNOmELBHiYOwOMM2zTo1l8dMJ3GaKZ9CbdtpClcpWd
         IVC+LWzEVvCqzsCK+DQnRJ16HRHFt8X93y89DW8C5hreQvVaJnnffUbrp204VFOgMwCt
         EGjDesu5WNllvtlk14huZBLluRHDJWyvCHz7aAtUsnesi7cFEMyIugHqny5oGwiNc+et
         5HUj+q0bAmQSX9CSGyI9gRZ6nzCeS7GJ2refhaqPELu/otW7rosIl0tvJ1gvLLcmutue
         yrDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=aIRu+uDV;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=fab+ZFCJ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id s16si915552oiw.4.2021.11.26.17.23.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:36 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232734.531194050@linutronix.de>
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
Subject: [patch 04/32] genirq/msi: Provide a set of advanced MSI accessors and
 iterators
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:35 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=aIRu+uDV;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=fab+ZFCJ;
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

In preparation for dynamic handling of MSI-X interrupts provide a new set
of MSI descriptor accessor functions and iterators. They are benefitial per
se as they allow to cleanup quite some code in various MSI domain
implementations.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |   58 ++++++++++++++++++++++++++++
 kernel/irq/msi.c    |  107 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 165 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -140,6 +140,18 @@ struct msi_desc {
 	struct pci_msi_desc		pci;
 };
 
+/*
+ * Filter values for the MSI descriptor iterators and accessor functions.
+ */
+enum msi_desc_filter {
+	/* All descriptors */
+	MSI_DESC_ALL,
+	/* Descriptors which have no interrupt associated */
+	MSI_DESC_NOTASSOCIATED,
+	/* Descriptors which have an interrupt associated */
+	MSI_DESC_ASSOCIATED,
+};
+
 /**
  * msi_device_data - MSI per device data
  * @lock:		Spinlock to protect register access
@@ -148,6 +160,8 @@ struct msi_desc {
  * @platform_data:	Platform-MSI specific data
  * @list:		List of MSI descriptors associated to the device
  * @mutex:		Mutex protecting the MSI list
+ * @__next:		Cached pointer to the next entry for iterators
+ * @__filter:		Cached descriptor filter
  */
 struct msi_device_data {
 	raw_spinlock_t			lock;
@@ -156,6 +170,8 @@ struct msi_device_data {
 	struct platform_msi_priv_data	*platform_data;
 	struct list_head		list;
 	struct mutex			mutex;
+	struct msi_desc			*__next;
+	enum msi_desc_filter		__filter;
 };
 
 int msi_setup_device_data(struct device *dev);
@@ -193,6 +209,48 @@ static inline unsigned int msi_get_virq(
 void msi_lock_descs(struct device *dev);
 void msi_unlock_descs(struct device *dev);
 
+struct msi_desc *__msi_first_desc(struct device *dev, enum msi_desc_filter filter, unsigned int base_index);
+struct msi_desc *msi_next_desc(struct device *dev);
+
+/**
+ * msi_first_desc - Get the first MSI descriptor associated to the device
+ * @dev:	Device to search
+ */
+static inline struct msi_desc *msi_first_desc(struct device *dev)
+{
+	return __msi_first_desc(dev, MSI_DESC_ALL, 0);
+}
+
+
+/**
+ * msi_for_each_desc_from - Iterate the MSI descriptors from a given index
+ *
+ * @desc:	struct msi_desc pointer used as iterator
+ * @dev:	struct device pointer - device to iterate
+ * @filter:	Filter for descriptor selection
+ * @base_index:	MSI index to iterate from
+ *
+ * Notes:
+ *  - The loop must be protected with a msi_lock_descs()/msi_unlock_descs()
+ *    pair.
+ *  - It is safe to remove a retrieved MSI descriptor in the loop.
+ */
+#define msi_for_each_desc_from(desc, dev, filter, base_index)			\
+	for ((desc) = __msi_first_desc((dev), (filter), (base_index)); (desc);	\
+	     (desc) = msi_next_desc((dev)))
+
+/**
+ * msi_for_each_desc - Iterate the MSI descriptors
+ *
+ * @desc:	struct msi_desc pointer used as iterator
+ * @dev:	struct device pointer - device to iterate
+ * @filter:	Filter for descriptor selection
+ *
+ * See msi_for_each_desc_from()for further information.
+ */
+#define msi_for_each_desc(desc, dev, filter)				\
+	msi_for_each_desc_from(desc, dev, filter, 0)
+
 /* Helpers to hide struct msi_desc implementation details */
 #define msi_desc_to_dev(desc)		((desc)->dev)
 #define dev_to_msi_list(dev)		(&(dev)->msi.data->list)
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -142,10 +142,117 @@ void msi_unlock_descs(struct device *dev
 {
 	if (WARN_ON_ONCE(!dev->msi.data))
 		return;
+	/* Clear the next pointer which was cached by the iterator */
+	dev->msi.data->__next = NULL;
 	mutex_unlock(&dev->msi.data->mutex);
 }
 EXPORT_SYMBOL_GPL(msi_unlock_descs);
 
+static bool msi_desc_match(struct msi_desc *desc, enum msi_desc_filter filter)
+{
+	switch (filter) {
+	case MSI_DESC_ALL:
+		return true;
+	case MSI_DESC_NOTASSOCIATED:
+		return !desc->irq;
+	case MSI_DESC_ASSOCIATED:
+		return !!desc->irq;
+	}
+	WARN_ON_ONCE(1);
+	return false;
+}
+
+static struct msi_desc *msi_find_first_desc(struct device *dev, enum msi_desc_filter filter,
+					    unsigned int base_index)
+{
+	struct msi_desc *desc;
+
+	list_for_each_entry(desc, dev_to_msi_list(dev), list) {
+		if (desc->msi_index < base_index)
+			continue;
+		if (msi_desc_match(desc, filter))
+			return desc;
+	}
+	return NULL;
+}
+
+/**
+ * __msi_first_desc - Get the first MSI descriptor of a device
+ * @dev:	Device to operate on
+ * @filter:	Descriptor state filter
+ * @base_index:	MSI index to start from for range based operations
+ *
+ * Must be called with the MSI descriptor mutex held, i.e. msi_lock_descs()
+ * must be invoked before the call.
+ *
+ * Return: Pointer to the first MSI descriptor matching the search
+ *	   criteria, NULL if none found.
+ */
+struct msi_desc *__msi_first_desc(struct device *dev, enum msi_desc_filter filter,
+				  unsigned int base_index)
+{
+	struct msi_desc *desc;
+
+	if (WARN_ON_ONCE(!dev->msi.data))
+		return NULL;
+
+	lockdep_assert_held(&dev->msi.data->mutex);
+
+	/* Invalidate a previous invocation within the same lock section */
+	dev->msi.data->__next = NULL;
+
+	desc = msi_find_first_desc(dev, filter, base_index);
+	if (desc) {
+		dev->msi.data->__next = list_next_entry(desc, list);
+		dev->msi.data->__filter = filter;
+	}
+	return desc;
+}
+EXPORT_SYMBOL_GPL(__msi_first_desc);
+
+static struct msi_desc *__msi_next_desc(struct device *dev, enum msi_desc_filter filter,
+					struct msi_desc *from)
+{
+	struct msi_desc *desc = from;
+
+	list_for_each_entry_from(desc, dev_to_msi_list(dev), list) {
+		if (msi_desc_match(desc, filter))
+			return desc;
+	}
+	return NULL;
+}
+
+/**
+ * msi_next_desc - Get the next MSI descriptor of a device
+ * @dev:	Device to operate on
+ *
+ * The first invocation of msi_next_desc() has to be preceeded by a
+ * successful incovation of __msi_first_desc(). Consecutive invocations are
+ * only valid if the previous one was successful. All these operations have
+ * to be done within the same MSI mutex held region.
+ *
+ * Return: Pointer to the next MSI descriptor matching the search
+ *	   criteria, NULL if none found.
+ */
+struct msi_desc *msi_next_desc(struct device *dev)
+{
+	struct msi_device_data *data = dev->msi.data;
+	struct msi_desc *desc;
+
+	if (WARN_ON_ONCE(!data))
+		return NULL;
+
+	lockdep_assert_held(&data->mutex);
+
+	if (!data->__next)
+		return NULL;
+
+	desc = __msi_next_desc(dev, data->__filter, data->__next);
+	dev->msi.data->__next = desc ? list_next_entry(desc, list) : NULL;
+	return desc;
+}
+EXPORT_SYMBOL_GPL(msi_next_desc);
+
 /**
  * __msi_get_virq - Return Linux interrupt number of a MSI interrupt
  * @dev:	Device to operate on

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.531194050%40linutronix.de.
