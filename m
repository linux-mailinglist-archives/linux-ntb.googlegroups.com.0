Return-Path: <linux-ntb+bncBDAMN6NI5EERBX5HXKGQMGQED5WBEPY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DCC46AD37
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:11 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id i123-20020a2e2281000000b0021cfde1fa8esf3063105lji.7
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831071; cv=pass;
        d=google.com; s=arc-20160816;
        b=CKrH5ecrO+3fFafmcUFqtOCfHk6lNaqweC2I0967/P0VIOjCBFAyssi4z+2NHbwpjp
         6if2gwHuIWgdK5Y5dRXx0iDphjCJRnjxBHliVfdF8Uc4jM6JNjRolXeClqvokr8LLdZv
         xxj7Pq/vqwJn/5OEBluK7XEbDMNfUHSkkm7mC/mCIjNCy+WNnFgF9gye9+35ru7LPMhO
         jsGZxhtlIzZpUFrlmoATqia7SD8WfkFDKRSD2KRG6GNSqBGYF4TUaJVIF7TgO9hzhcMy
         N/oWa8qtDv+psFND1VsZAsyHvA+M0p4pCQBk30xxmNyFGhlvyo7OqEwd6LjSYak6+ohB
         L1Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=Gs1nLewBVaRRRG8eiNLZ4mZpv7sNl/MwUARn5uqeM6c=;
        b=Tw+beYARyxBqjkJep+6eFrORGW1LxfrnUXjLIRwqyJKgCDKEy0LchnjWiEzuBAeJO6
         45cIb+ijHYsmEyDD/kSc9OTsvraoQtZ2suQsgwDzevOug1oasmGMPG7zl86+CSKnYLxc
         J4MfzSgQJJHZ3aPYvTtpGd3rufLuGwOIuNh2sf5g7zMzMOH1rSQ9wFU1FSvJDON0gn4n
         NNEWwEa9/0rlTL4qpWZ0gdvSsHB0sEtHDXDZrihsFNKvYlbtnnPXts1nEeEGAj7OsyxK
         KFLkqGm0RzaAH32qI9oa+bRFOdUh0TsaFF6UV8BdF3mEW/fCt90Xbtj3JFFp1+MgiEIm
         OdoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="rS/EO8tw";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=wArRHQ+4;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gs1nLewBVaRRRG8eiNLZ4mZpv7sNl/MwUARn5uqeM6c=;
        b=AvOvIhwbF2MYrDoNgzjTFDom9UaygbNtfc05DOyiUIFjG4eku/Q+PCqEPWb6ZBHXRC
         hg0NsHsnCYA3cP60GL0fZpC7U7dj5R6XUI+U6ZQc6DjRjDn7kU0tRu1Oiq9BYhBHP5Nx
         z0D5z9lIn2jTbLdv+UphACehyDnbLKyVQKCiJ/+XFWil4hFLdWrD2O6yu9C+WptxjSzd
         ZRaPcXVkhuowgrBj5wL0qxvYpo4H9rZM8L3b0DNuEW4Rmna+QYc46DKVDLL+CDauU+3u
         Berf1tes7rQaISQWnDh9mHONL02YZ84VdIQnLv8kaNEQehKoStnVnvudyG2bQUoS1JzZ
         zAlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gs1nLewBVaRRRG8eiNLZ4mZpv7sNl/MwUARn5uqeM6c=;
        b=WtAeSCk0TSFFw/KmHRyq6OwWWZi8/BXyxf5ntOmMXLRa9X9Zwy0yGyauGh4TGt+Qe0
         tqJl4nMiv/nXb3j/HgB4msoNTJwULTjq65Ho4SKookNsib5HCAVzBgz5qKZZ8o+elS7u
         PreSwZQJ9JqhqMGv86U6hm2gggOz4QBSzIKGhtn7/319z33XxTWsTIpRUR4LbCTg07do
         5O8DjUHHvSNQNF9AMzv/T85o3JOztZ/aEuoXK7fTKjv+mafjJGdivQQP4Z5NfE/wveiI
         frq1YHqKpYvE51dbpaD6GGQeu7fbh7L8GyTiKIa/iN5ogxpLSOcRvscA9n6q24dkk2Re
         aPTg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532Rb24HtSzHp4umMLpgYvhKINkn8aT99FQG7Q3b23gq7h7WjLbn
	e8jYMwIsMRXmB1vDUxrdVhQ=
X-Google-Smtp-Source: ABdhPJzovdwzTlJF+Q09SmgsDlqZJXj0jtq2BVHHXmYam8/QrE7Tt9PdFFh/XYyEMIARGEugJfvOVg==
X-Received: by 2002:ac2:4c55:: with SMTP id o21mr35761995lfk.408.1638831071426;
        Mon, 06 Dec 2021 14:51:11 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:bc09:: with SMTP id b9ls2845623ljf.2.gmail; Mon, 06 Dec
 2021 14:51:10 -0800 (PST)
X-Received: by 2002:a2e:84c4:: with SMTP id q4mr38199383ljh.266.1638831070475;
        Mon, 06 Dec 2021 14:51:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831070; cv=none;
        d=google.com; s=arc-20160816;
        b=G5rWLVcHdayBoD+fyS26cV0h5Tu0JOMa7Udb2f4PVyVWRyZze5rT1TNmdZ7lDIZ9o4
         JGxB/z6k5TdIo03BD0IyoewFzxoKTDD470n518W07a65a399u1PU8spup0lD7YlXPCBI
         hTnctSXOkSEO4HdPUo2CM2ZqUKViAJeu0GGWOiI7393Gs6RBjMSm0eycX9ZLWAHYQKYi
         ksHvI7Ps7PdJWFqKZNrP6wOKHacYE6JIWAyfVynJSKvKCGE73dAsBVEjIor2rL+qOqFR
         Y8vC1LpkXg4mx0F4i1o+1XywwoTtlu45/mqMjwnZDVqikqryTEfGtT2JzcXEuJ3/px1h
         e0Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=UjZZfvKoc2kPhNBVngaTWsrbW8D3zdRcer4hfxKTjzc=;
        b=eHhet9N4q6wATS/php7DMTvixO/AG9noH7UvdsUWy52bDPhGVs/+6tISiom+0eYE2O
         kBJHE6GyE4TiEotOAnDFcudXSNWGgBJmfNdSKv3T02ouJY06C8RbyDyCFBAIuAnG3Xvf
         L3lyBPF7QWkvcHQLJPwdJ5t3W+8rb7tbGQKy8toQQyUULuchLpdapoVWxSXZriHJ5FBV
         xf80B5Yt5F0TFVachI02jzDhyYbYW54SuqqTF20p592+byRws2gM5+zKUpCBBM04A3Dd
         ChGWr5I3FheLU5yS8kl5mTGzfHcKy1QeeTP1k4t4sN9XKICLQjnilqAqZNcyMPg67CEL
         RvrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="rS/EO8tw";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=wArRHQ+4;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id i16si915891lfv.2.2021.12.06.14.51.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:10 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210747.818635078@linutronix.de>
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
Subject: [patch V2 04/31] genirq/msi: Provide a set of advanced MSI accessors
 and iterators
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:08 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="rS/EO8tw";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=wArRHQ+4;
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
 include/linux/msi.h |   33 +++++++++++++++++
 kernel/irq/msi.c    |   96 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 129 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -141,6 +141,18 @@ struct msi_desc {
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
  * @properties:		MSI properties which are interesting to drivers
@@ -148,6 +160,7 @@ struct msi_desc {
  * @platform_data:	Platform-MSI specific data
  * @list:		List of MSI descriptors associated to the device
  * @mutex:		Mutex protecting the MSI list
+ * @__next:		Cached pointer to the next entry for iterators
  */
 struct msi_device_data {
 	unsigned long			properties;
@@ -155,6 +168,7 @@ struct msi_device_data {
 	struct platform_msi_priv_data	*platform_data;
 	struct list_head		list;
 	struct mutex			mutex;
+	struct msi_desc			*__next;
 };
 
 int msi_setup_device_data(struct device *dev);
@@ -177,6 +191,25 @@ unsigned int msi_get_virq(struct device
 void msi_lock_descs(struct device *dev);
 void msi_unlock_descs(struct device *dev);
 
+struct msi_desc *msi_first_desc(struct device *dev, enum msi_desc_filter filter);
+struct msi_desc *msi_next_desc(struct device *dev, enum msi_desc_filter filter);
+
+/**
+ * msi_for_each_desc - Iterate the MSI descriptors
+ *
+ * @desc:	struct msi_desc pointer used as iterator
+ * @dev:	struct device pointer - device to iterate
+ * @filter:	Filter for descriptor selection
+ *
+ * Notes:
+ *  - The loop must be protected with a msi_lock_descs()/msi_unlock_descs()
+ *    pair.
+ *  - It is safe to remove a retrieved MSI descriptor in the loop.
+ */
+#define msi_for_each_desc(desc, dev, filter)			\
+	for ((desc) = msi_first_desc((dev), (filter)); (desc);	\
+	     (desc) = msi_next_desc((dev), (filter)))
+
 /* Helpers to hide struct msi_desc implementation details */
 #define msi_desc_to_dev(desc)		((desc)->dev)
 #define dev_to_msi_list(dev)		(&(dev)->msi.data->list)
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -142,10 +142,106 @@ void msi_unlock_descs(struct device *dev
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
+static struct msi_desc *msi_find_first_desc(struct device *dev, enum msi_desc_filter filter)
+{
+	struct msi_desc *desc;
+
+	list_for_each_entry(desc, dev_to_msi_list(dev), list) {
+		if (msi_desc_match(desc, filter))
+			return desc;
+	}
+	return NULL;
+}
+
+/**
+ * msi_first_desc - Get the first MSI descriptor of a device
+ * @dev:	Device to operate on
+ * @filter:	Descriptor state filter
+ *
+ * Must be called with the MSI descriptor mutex held, i.e. msi_lock_descs()
+ * must be invoked before the call.
+ *
+ * Return: Pointer to the first MSI descriptor matching the search
+ *	   criteria, NULL if none found.
+ */
+struct msi_desc *msi_first_desc(struct device *dev, enum msi_desc_filter filter)
+{
+	struct msi_desc *desc;
+
+	if (WARN_ON_ONCE(!dev->msi.data))
+		return NULL;
+
+	lockdep_assert_held(&dev->msi.data->mutex);
+
+	desc = msi_find_first_desc(dev, filter);
+	dev->msi.data->__next = desc ? list_next_entry(desc, list) : NULL;
+	return desc;
+}
+EXPORT_SYMBOL_GPL(msi_first_desc);
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
+struct msi_desc *msi_next_desc(struct device *dev, enum msi_desc_filter filter)
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
+	desc = __msi_next_desc(dev, filter, data->__next);
+	dev->msi.data->__next = desc ? list_next_entry(desc, list) : NULL;
+	return desc;
+}
+EXPORT_SYMBOL_GPL(msi_next_desc);
+
 /**
  * msi_get_virq - Return Linux interrupt number of a MSI interrupt
  * @dev:	Device to operate on

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210747.818635078%40linutronix.de.
