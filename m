Return-Path: <linux-ntb+bncBDAMN6NI5EERBW4QQ2GQMGQEMEOXT4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A6F45F8D3
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:37 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id pg9-20020a17090b1e0900b001a689204b52sf6735690pjb.0
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976156; cv=pass;
        d=google.com; s=arc-20160816;
        b=coFQF9PdiCb13Sh4Pnr62vT4/Dqgjrt85+qZ2tzTMskwhaDEWA+oygO7BcH8p+8yXq
         Ewd5PVwCbSPKTT1/g/sFOF/KvhP/gv3zRNUsW523zz4I4/Q4oMbuqFKDnr3TXNi9u5au
         T/zIgKUCrJgHQjKm237Tw9W5f+Rt2GiCMzqRLK62BbmC3xatqdKVZBE3ydyW5EUkD1Wd
         Cp7wFRhTDaBhxmS6ukpUP7Pno2tdzdA6lUNcJevnLxCcJPJupusRcmoWpr8pP5vsq08a
         ROhQ8S47j0TAj/PbLIem77GDLx9u39Fc/DMpIOThpjZGhQqOjCUSKfcT0sVUcYT2pPgn
         voaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=zmqYEDKg5w1uteDKyM39afu2RIwkv9k55toAYxoFQ8k=;
        b=Gj/v7u4uJBJEoz+FkhmuWgfpbo9TjHQPjhox96nt/fcsaELBhMdu2AJ157kIbvkb6F
         jOmELRoVnYFmsMwMmk97CMQZvHlzM6iABCCi+k6dpGX7tkTczx0OBkpv8C4MaaT7X/au
         e09N94iNPphEyY0dutz2d7drtACVNziOU+6PrOWWU3G/cFyr9o+eY7CyzW6LUGP/32T4
         lemsTG8Ir4hTB0U13B0jk+ZbpfrjTnp5lzxZhok3zcqljoIhqMJwgbpmtExom+To6TGh
         hywVOtcFD4cDrUQqFI1nAID9j1K9oY1PAJCA7mZLzlH1dEIVIy7BfKE8ZdgMWWN0Uubx
         Szqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="wNd/Udht";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=pOAnc66w;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zmqYEDKg5w1uteDKyM39afu2RIwkv9k55toAYxoFQ8k=;
        b=UPUsQFhhuNW1gceD1zTijRveX7QTH4jMhbUpOBAh02la0AsiEB5MVQCrAqhntHdwHu
         UYz0FmX5fbA54r8sYXDzloDs78QWujCjkJujhMaukvWHmrs/3G3HQTP/IUV5pqSxzmmm
         tHZ5Tqil9Mo0l5Fo1pyaw1umodNhQWa/law/eWUSrMxBj6w97rei925g5hvCBAxtCuPD
         /7eAoMa7Ilke4Tgojiqricyg7R7f3LwDfxZVrGTF8I436ccnVFI+oa5T9hjIhrkqBeS/
         LVBKQocuZ3somhKNF59hsiaiceDMtz0ZVhiR/ErDPZjyrhr8eULYLUjC/gXPiP6aZQ1P
         lhyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zmqYEDKg5w1uteDKyM39afu2RIwkv9k55toAYxoFQ8k=;
        b=0axxESOgXySwxfr4lD+PDP1WDiDCnQcZp9mfe80uFUk2w+3+nimh2A9iBW4zsOL4lQ
         s+znbsK9OR6Sr/7Rd7POqkg/ZY4LXLJN429DR6T4/jBJGMX8M9nqeQ1AQrWqSCPp/9m/
         fSv832hHJP8B07/Wjmtsd2I5on1Zi9Vh9SoLjLgW4WhPi8FvyYDzQdutPE8CNEs9XMZ/
         dPJvpV/tS4VjHsTS6z1ptTF6GPYko9S6prXqfdo9WTnLOm75DgSt9LCjSrT95sMP4yAZ
         klCz4H1EP+a8X9hh1VLKPCx/kbf9UtlhmzTa8Q8Za+jD45KdK/DLG/NfugYHF3cTEDNk
         EWTw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532iV0v+HST4Ttk6v/RBq0qQkBy28TOLGmyO6ZrE+asORqoWNy2t
	HmlFEJKyPYjPyiOOeqGcqP4=
X-Google-Smtp-Source: ABdhPJz+Pr7LZ//ZikApKXi2CgGnkFGQujOnq9JhRzHD4x72DNJRli3dClJZJ3wzGkVQRdIRZxhYQA==
X-Received: by 2002:a05:6a00:228f:b0:49f:d8ac:2f1c with SMTP id f15-20020a056a00228f00b0049fd8ac2f1cmr24327482pfe.35.1637976156037;
        Fri, 26 Nov 2021 17:22:36 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:e749:: with SMTP id p9ls4153277plf.6.gmail; Fri, 26
 Nov 2021 17:22:35 -0800 (PST)
X-Received: by 2002:a17:903:41c1:b0:141:f4e4:4881 with SMTP id u1-20020a17090341c100b00141f4e44881mr40435207ple.19.1637976155535;
        Fri, 26 Nov 2021 17:22:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976155; cv=none;
        d=google.com; s=arc-20160816;
        b=tiNwgaxFQl8W6Tc+8eWcgFFADhRj9fsXt6A9ZFiFHcJluaSS7hY8hoD38U4sJBm1WY
         C1i6tlBcWy7OvslJrrYqPWAv9othuoJYMGNOEL4WMBj3uV84gSgdwuSqxKYjm2wCszRg
         cPj3wrprzvdktvvb2q1JuusuArP/mMOilkIC4k1nhDNUNE7V5VjW+e+dFyGuqjFLeS1w
         l8HVSc0bXg7zSDifQalq0GSod05vQr3TNCenn1vqp9/wq++JyDgtxLKcOSfLzm+Y/hnR
         roNqH9ev8xbMFD/aS2SHua+ZLLYTcpNdTshhypL0I2586HpYo4t6s4an9xOSuw1tjiRQ
         ABvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=z6dcduacKPcvuHhstAFE2CgJ262pdWvtfjUlsYpcJo0=;
        b=IZsQPt311cBVgnDRZfn3nRAMf3onarkd4qbckePwKeaaysEQ9xyJjTsTbUsXKzhFlX
         b+t+LJzn7ciIbWQsdBSgvKewi2HN4YVHe38wtlczRPfstpEBmqGUwJAq9xGB7j82RkB/
         P/hRTTDU18SlCcUW6Qc1ti4xpxulZPiLO+Jq3GStNqKAIzhmdt3DqjQyAn+hP7kGihMI
         luLT/eN8HT4P7JUtr1Fw5NgkbcAXnOXqWFj7OpwYrrlG+wpmUhxJCvpfhUllVn/vO8wT
         aF9AmkUrzkzR1BUvMzd3UAEaVvqR5+ltndElV1nbWg+0tnvZ1UOLrhtkDJhyzg61Uekx
         lGDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="wNd/Udht";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=pOAnc66w;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id x31si583573pfh.5.2021.11.26.17.22.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:35 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
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
Date: Sat, 27 Nov 2021 02:22:33 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="wNd/Udht";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=pOAnc66w;
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
