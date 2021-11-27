Return-Path: <linux-ntb+bncBDAMN6NI5EERBWUQQ2GQMGQEAFTADGI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9841A45F8D2
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:36 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id x9-20020a056a00188900b0049fd22b9a27sf6164893pfh.18
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976155; cv=pass;
        d=google.com; s=arc-20160816;
        b=wAIPi+D1IKRVG65/b5VsSJJ2JX3+sxN4cwU+sQtjJHbllPc9uuiEvtrL0Huogk/d8j
         YZfAQ1L1RD3w9lBLHR0tQS3CuHfvC7saS657y7r2SGC52/avjdE920n8YGMXkv6VOhu3
         ThUk2c5SHPmblnuIgHBC3wNeglsfNW4164be8vFXadzj82uXvgBtNk11Ud9dfDXJMZ1H
         76rvnuUsd0v8MUJFS8mFOq2k8Io2+bGMWjo+5lklSQ1K3dbBXY39C+NIfOcrDuXQDuoL
         Wbd9q4miBgq2nRVYNa1mS/PkKn7o5Y9vKybLrHl6D3Hi6ST91dJ7S58DFFwNiurt7oLw
         YQ0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=oYrqor0AIiVFGrNCBSHVqLAZFod2FWvhHfSjQ9BniTA=;
        b=uLLl6DONjk3Udd+oJx105VAo2ZVAhJZSKvjCw/0PqNfUVv2LxLdO0O80WMUgFV07LM
         7y5IMaQs3jMitM68jPbYKiBjdBhMNqvky1BtkKF2O8RWskXWoSzHecL8B6P8hbMyjcKA
         twbOU2DQMlW1g0Infq/7qvuPXbByOhPJVDMIksR6woYD7yZE2CKw3szsZQ4uX6a9FVzD
         VxxWELojvNi4sQxbc5KPhQ7GyLMD5qM9RAITTwsG0I05q+d0llmjcfPmYVLdv/tppTUP
         mh5A+6IZG4GPbeYU2wFBO0raxITCR7kYJBm9lQaMhSF5lVO744GWrde5C9a1crji/KB5
         jKoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=VbOWGVVl;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=93gGtkcF;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oYrqor0AIiVFGrNCBSHVqLAZFod2FWvhHfSjQ9BniTA=;
        b=RJ4dIkaPuQJeFL8h5p8ch3m1pgJuYcInKP2uAKo+WlkVJW5XuVt2R2kTubHL7iFZW8
         2k3txL84mNON0wrt2PPFrz/y2x+NNGNR2/cBtyZ+/f3pRmAe26mtQ9T18RePDR50zMpO
         4FQ1wfKDO6kWIrH3hVGpjGidBtR0FJU1U0g1CmyhAZKAewkcv8UFhXSDhMGpnIBqGI56
         6KdtRozN39x54ykIzAIRHHlpFhVa9AZfGUvGBoz8Db+c0r2At6Ip4ujMVB8tQs4SPI26
         aCfBLv0gtCXYN6hmXtDdwAUcYUPSN3gG/gK3MhoSaCpNQFi+ZIHaAUcU87PzSyom1iZ7
         7dRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oYrqor0AIiVFGrNCBSHVqLAZFod2FWvhHfSjQ9BniTA=;
        b=uProZiLMdU2clIanguRZRBOGe4l0dOHlQH0s0iyz520tAkrtHak9YbUiMw6gT9ctEc
         gPv4vCi4VB87oa9ycwzgk6fI6TAN3DxKdvSm6LWFXdwRQTWzHFraKRVx3GCJSfDw2DnX
         lvWlbwgygs4qWPimqrGObP7N5pz2y9/I9d/JLKA1Da9uw45Hk/ROobBttptiK+Izs4BU
         G+1wpWrO7adx3ARS0Y5BgAm8sglLRzIR9dwW+HZH4b4/8CVeopfr9bLRHPbg0InNmfgf
         pURhnXuhkdB5gdG33B8mc2ycc8mFwO6jSRJfENjKAOB+Bt7Dw1cMMKRxTejj9SmuwTIo
         bYcQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530izP5DDHN3y6Ls1nntEpVLT6DCbLazSJ6StW2z1Nwr2GUnUnQE
	f6m3yrX09mUhOB90L7+boec=
X-Google-Smtp-Source: ABdhPJxfJzSKtPNfWtoY7IcZu5czvW5spEoD6fOAoLKwTLRPFmWGCpPKnpFD04qEB+3r+UDhBEtILw==
X-Received: by 2002:a17:902:7616:b0:143:a8cd:ef0 with SMTP id k22-20020a170902761600b00143a8cd0ef0mr41850139pll.48.1637976155038;
        Fri, 26 Nov 2021 17:22:35 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:1694:: with SMTP id k20ls2978495pfc.1.gmail; Fri,
 26 Nov 2021 17:22:34 -0800 (PST)
X-Received: by 2002:a63:6c4a:: with SMTP id h71mr4323051pgc.127.1637976154463;
        Fri, 26 Nov 2021 17:22:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976154; cv=none;
        d=google.com; s=arc-20160816;
        b=V84yJb3VXvUM7XZOaKkndoXjNI66A1rWcosvi7RKtMWP9f4ck4v4j5dqy6wKJc1wek
         ubogTA9zIphbTaAdtC1ZyelIQQX99CMa8TWXva0n5ICo5cNDwi0pXF918xZv5krF0VRF
         L8DJzemHPbyO9qpFYS6zUbqr2FyMAjzodsLVxZhC9B2xSEbFo8TNKMWWUB+sMaoJ4q0C
         Y6mwjXVDboDbGXR9JDyq1xAKpPcuSj0iUoQSFowyNBY5IX0bsp1+TMKNbQfcR5kiP5DI
         2EoQ/ly/3VBqeuYOSypLKwRiC98w6fNCGPkj2iBDEWu7bpExarmR+vrTlViBgqRrc9J4
         AaoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=6oZqwpJI2ncU7744G6NHeAq/N32euzli5OU76GfrY2c=;
        b=t+no8ydQLTxsqak7ghv2OLdevgZr0eS+Dwn71YZxSrzdkrSVITta1priDgmDTtPre4
         4CwbsENWOMJ5XlUdA/2GHXCqqFrxSc/+dTgWxkgpKiv1WT0rATfKCksUOPuet6/B+jwG
         hhUadb7rIhA9VW2qqBrsGyIKYrW+xBA1FzpjywHqPmH55hUyCZ0D6ntXUQfOwUZUwgD/
         gT8guSEpJHQHioEOyvDGm1h+ndzsrDGEsuSBSGwERxu1j3hx2vB5anxG1WH61ICSUfwK
         UA8vNoaCA7Icpoemdwqxmo3NUqBwSUbYZa1kUVtnhHE7Gc3ste9a+lXN0ORG0K88+4Cd
         ZQKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=VbOWGVVl;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=93gGtkcF;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id v7si586757pfm.6.2021.11.26.17.22.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:34 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232734.472421030@linutronix.de>
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
Subject: [patch 03/32] genirq/msi: Provide msi_domain_alloc/free_irqs_descs_locked()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:32 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=VbOWGVVl;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=93gGtkcF;
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

Usage sites which do allocations of the MSI descriptors before invoking
msi_domain_alloc_irqs() require to lock the MSI decriptors accross the
operation.

Provide entry points which can be called with the MSI mutex held and lock
the mutex in the existing entry points.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |    3 ++
 kernel/irq/msi.c    |   74 ++++++++++++++++++++++++++++++++++++++++------------
 2 files changed, 61 insertions(+), 16 deletions(-)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -413,9 +413,12 @@ struct irq_domain *msi_create_irq_domain
 					 struct irq_domain *parent);
 int __msi_domain_alloc_irqs(struct irq_domain *domain, struct device *dev,
 			    int nvec);
+int msi_domain_alloc_irqs_descs_locked(struct irq_domain *domain, struct device *dev,
+				       int nvec);
 int msi_domain_alloc_irqs(struct irq_domain *domain, struct device *dev,
 			  int nvec);
 void __msi_domain_free_irqs(struct irq_domain *domain, struct device *dev);
+void msi_domain_free_irqs_descs_locked(struct irq_domain *domain, struct device *dev);
 void msi_domain_free_irqs(struct irq_domain *domain, struct device *dev);
 struct msi_domain_info *msi_get_domain_info(struct irq_domain *domain);
 
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -691,10 +691,8 @@ int __msi_domain_alloc_irqs(struct irq_d
 		virq = __irq_domain_alloc_irqs(domain, -1, desc->nvec_used,
 					       dev_to_node(dev), &arg, false,
 					       desc->affinity);
-		if (virq < 0) {
-			ret = msi_handle_pci_fail(domain, desc, allocated);
-			goto cleanup;
-		}
+		if (virq < 0)
+			return msi_handle_pci_fail(domain, desc, allocated);
 
 		for (i = 0; i < desc->nvec_used; i++) {
 			irq_set_msi_desc_off(virq, i, desc);
@@ -728,7 +726,7 @@ int __msi_domain_alloc_irqs(struct irq_d
 		}
 		ret = irq_domain_activate_irq(irq_data, can_reserve);
 		if (ret)
-			goto cleanup;
+			return ret;
 	}
 
 skip_activate:
@@ -743,38 +741,63 @@ int __msi_domain_alloc_irqs(struct irq_d
 		}
 	}
 	return 0;
-
-cleanup:
-	msi_domain_free_irqs(domain, dev);
-	return ret;
 }
 
 /**
- * msi_domain_alloc_irqs - Allocate interrupts from a MSI interrupt domain
+ * msi_domain_alloc_irqs_descs_locked - Allocate interrupts from a MSI interrupt domain
  * @domain:	The domain to allocate from
  * @dev:	Pointer to device struct of the device for which the interrupts
  *		are allocated
  * @nvec:	The number of interrupts to allocate
  *
+ * Must be invoked from within a msi_lock_descs() / msi_unlock_descs()
+ * pair. Use this for MSI irqdomains which implement their own vector
+ * allocation/free.
+ *
  * Return: %0 on success or an error code.
  */
-int msi_domain_alloc_irqs(struct irq_domain *domain, struct device *dev,
-			  int nvec)
+int msi_domain_alloc_irqs_descs_locked(struct irq_domain *domain, struct device *dev,
+				       int nvec)
 {
 	struct msi_domain_info *info = domain->host_data;
 	struct msi_domain_ops *ops = info->ops;
 	int ret;
 
+	lockdep_assert_held(&dev->msi.data->mutex);
+
 	ret = ops->domain_alloc_irqs(domain, dev, nvec);
 	if (ret)
-		return ret;
+		goto cleanup;
 
 	if (!(info->flags & MSI_FLAG_DEV_SYSFS))
 		return 0;
 
 	ret = msi_device_populate_sysfs(dev);
 	if (ret)
-		msi_domain_free_irqs(domain, dev);
+		goto cleanup;
+	return 0;
+
+cleanup:
+	msi_domain_free_irqs_descs_locked(domain, dev);
+	return ret;
+}
+
+/**
+ * msi_domain_alloc_irqs - Allocate interrupts from a MSI interrupt domain
+ * @domain:	The domain to allocate from
+ * @dev:	Pointer to device struct of the device for which the interrupts
+ *		are allocated
+ * @nvec:	The number of interrupts to allocate
+ *
+ * Return: %0 on success or an error code.
+ */
+int msi_domain_alloc_irqs(struct irq_domain *domain, struct device *dev, int nvec)
+{
+	int ret;
+
+	msi_lock_descs(dev);
+	ret = msi_domain_alloc_irqs_descs_locked(domain, dev, nvec);
+	msi_unlock_descs(dev);
 	return ret;
 }
 
@@ -804,22 +827,41 @@ void __msi_domain_free_irqs(struct irq_d
 }
 
 /**
- * msi_domain_free_irqs - Free interrupts from a MSI interrupt @domain associated to @dev
+ * msi_domain_free_irqs_descs_locked - Free interrupts from a MSI interrupt @domain associated to @dev
  * @domain:	The domain to managing the interrupts
  * @dev:	Pointer to device struct of the device for which the interrupts
  *		are free
+ *
+ * Must be invoked from within a msi_lock_descs() / msi_unlock_descs()
+ * pair. Use this for MSI irqdomains which implement their own vector
+ * allocation.
  */
-void msi_domain_free_irqs(struct irq_domain *domain, struct device *dev)
+void msi_domain_free_irqs_descs_locked(struct irq_domain *domain, struct device *dev)
 {
 	struct msi_domain_info *info = domain->host_data;
 	struct msi_domain_ops *ops = info->ops;
 
+	lockdep_assert_held(&dev->msi.data->mutex);
+
 	if (info->flags & MSI_FLAG_DEV_SYSFS)
 		msi_device_destroy_sysfs(dev);
 	ops->domain_free_irqs(domain, dev);
 }
 
 /**
+ * msi_domain_free_irqs - Free interrupts from a MSI interrupt @domain associated to @dev
+ * @domain:	The domain to managing the interrupts
+ * @dev:	Pointer to device struct of the device for which the interrupts
+ *		are free
+ */
+void msi_domain_free_irqs(struct irq_domain *domain, struct device *dev)
+{
+	msi_lock_descs(dev);
+	msi_domain_free_irqs_descs_locked(domain, dev);
+	msi_unlock_descs(dev);
+}
+
+/**
  * msi_get_domain_info - Get the MSI interrupt domain info for @domain
  * @domain:	The interrupt domain to retrieve data from
  *

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.472421030%40linutronix.de.
