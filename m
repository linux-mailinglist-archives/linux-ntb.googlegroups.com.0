Return-Path: <linux-ntb+bncBDAMN6NI5EERBXFHXKGQMGQE66Q7BDI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2200746AD35
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:09 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id 144-20020a1c0496000000b003305ac0e03asf240320wme.8
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831069; cv=pass;
        d=google.com; s=arc-20160816;
        b=StQzr2/AWbBLNUmipL3LFTnXqqy/XFCgA2VAIMriQu+8/cBdYKDqsdiN8+8LXuHuC4
         //tlY9ht8FIb7Y+HcmhHm4kSMq4hHEi4hZJC89AKPfpTNjpGVWYCU5VXh9GWw2PfalLw
         cNyT1s6S0Qb24EDU3Z8hxhus1JBhNdUjFvHSBNAWAF6N842gHSwWjZN14iSMduBxLY5n
         7ygb1MFh+41e6GQWVS/1IiX6LkWcqYz4fU0EkIYe/q+pI1ONFD6MyzqBLBAHDFM6qlfC
         VP4cMND2JNU8C+LAeSpUuWexWfNkd2qM59gsfNSwOH37qWwLDpEvo+jDUCYMS2Boe6VE
         l36A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=HfAhJKio0nssLfjaD7iLwpAh08Uy+nES6iutEgTuoz4=;
        b=fc9l+/ZbHjCpeBdmiVhCUSfY8gJPdUrrdrUnRGVqaJ5JqeDpOrUMo9nMfnAj4tETJp
         8XwbmBH+Vv1EOe7GEI1ciZu2wPU8tvr/yNiuKJHuH2fuF6d5KV+C90b0AEH8EbGI0FWf
         fXqZLlLmmLouykIgnn8auXdnVymOfp6qGzRLDQFZw0a05WkXPOFFrXDSqOz0JKUTMPSs
         Trgsut6BXcl8baldooAmLHdoTlrs3BR6qk/FJQnQkk2vbs3Tpo7Qn3A2qoCqfqaswXaq
         0CJ5kKbXShofqR4b/A1bXnxGk556b0bYPkQNWNgkmfl2DAVuPU2z2dsmk0lu1CX3f+7D
         xxkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gWEfbNzj;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HfAhJKio0nssLfjaD7iLwpAh08Uy+nES6iutEgTuoz4=;
        b=NUHc3eOtxhfOxgfBWkVyXmPR7wBQA8Rqy3NKG8R+enDZ+9Vcw5wv5Gpal/TBqSmlJc
         tfqEaT9VyXLc5s/ejAnHxDzWsJuYXWBlkz2GG5amKRGlM363ldABFcC1qv5rPWYu9Q6h
         wi/RTuEsAVO5yCaqivjSUt6fP8ScPYF1xc2nI6G7mSVgZTkd68o9uJfSjJ32+IMMFIR6
         VAMtBfHek/IJXo8w5cp4HGCKmDEZk39kmQ6ioP0S4QSoWZMVjIfqB/r88qfiknBdKAtO
         cG+FtQxMc+h45hij6+OtN8huzj1VWe2uL+zqjugzCxTLnAfNaunwE6VTyh3m0QEx7TeM
         re3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HfAhJKio0nssLfjaD7iLwpAh08Uy+nES6iutEgTuoz4=;
        b=1bviNiYXk5lDsrpZc7LGkh1n1KodMfiG5nq51eeBcO20lmp5WHqdT1H4dv+kEGFEcp
         gswqPDaN0tgSIiQznN13HZlYrBejCwzda9ysXopxD4K6LbnG1NAKKvMhWgX2LOQErA+K
         XYgOQKCliwlGopSvIBtPaY7JuBxYR0RlUUuRcORHsNXopObz7IN8ZJtkCull2kPCJaR5
         UChzvu7LJj/129vxYEMDYpQr4Jnx1mbweOOu3lUXk8JQJwxh9ST66ryUdbqf0e18A50f
         KVZmjeX0XAolDSJeqsFj6i7YRHbJZ0FXauWT4IWmUUu7xu3KXvMPb0MaQcypJ66Bko9y
         bLQw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533U1uZRkFNKbWljzTroINRg26tcH7PhZXaA7G6MqrahKLbDMohN
	do1ioehpBr78T8kW8f3hJm4=
X-Google-Smtp-Source: ABdhPJyAAEPauO8n0xv+MYm7qKQvXQoRhv5xdKfcm2M5vQWuuCx5q2umsQnwDfAEMPEEyv12+EQ9UQ==
X-Received: by 2002:a5d:47aa:: with SMTP id 10mr45381681wrb.50.1638831068897;
        Mon, 06 Dec 2021 14:51:08 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f1c2:: with SMTP id z2ls1273676wro.2.gmail; Mon, 06 Dec
 2021 14:51:08 -0800 (PST)
X-Received: by 2002:a5d:4591:: with SMTP id p17mr1941491wrq.483.1638831068113;
        Mon, 06 Dec 2021 14:51:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831068; cv=none;
        d=google.com; s=arc-20160816;
        b=zIu8gqr44Jox6kuE3P4OoEzYLxp07ukiZS7LW9dWvZf75kmQNL9XtnwwsIkWa+kCs1
         T+Ton7Dgjm/z5g+1v3PvIqlvoMQ8SgKygmdWfi0lmyS90CLxdl0T7IT1Fpoo2WFcFTCW
         6S0DUZ+do3rbUb2foSAAzc7VV0bjx2hen/EP5nfTiRjwMw476L77yGx/Ayd+6VTCZipD
         UpKP+85Y3jZlZ0FkHgbTdYt8r9bmfeO0ub8A0aDVzlkNtW8kb54hT2IIWOlQm5g9h6cz
         ACPp2VHxH/L/lDAwBZTSJ+n6JoJcjy8hD0QMKFPAAdO0y34BvO2OAxGoXHPoxGK7xpka
         XzBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=8alToGL9fYMb4xPGuPdsGAFru/EhSrl8FqKzfYt/JtU=;
        b=t0p7r2cMiKGwIWMamfqiLHASWmf0TBWFXRoVbzDzzXjQND77JzyDlheJji9Uq0LmZ/
         IO4lTkukXCa5QiDtM75CseqdZrkS6rulrEZhhXQU0ik9PhswKpkuQD3MHVUtLV1WYXqd
         yVLJC0iHDbeZ2w/CiqGU0KCExakBgcCZ3tij0X+6Ig8divYJvxH4CHr7KuctoZDXATiU
         wp7iUgZi97Wizb4O6j/iSctLpUP0cX6NtjENqHglGY553rG0RZ0Is0f9JphRJIvXM04q
         FCL2bEslBRxEjbja28/DasGQK8BB1EUICSFdxqMAEBEAA1nJUdch60np+T5ulc2H4jCr
         nO/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gWEfbNzj;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id c2si136230wmq.2.2021.12.06.14.51.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:08 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210747.765371053@linutronix.de>
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
Subject: [patch V2 03/31] genirq/msi: Provide
 msi_domain_alloc/free_irqs_descs_locked()
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:07 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=gWEfbNzj;       dkim=neutral
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
@@ -399,9 +399,12 @@ struct irq_domain *msi_create_irq_domain
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
@@ -689,10 +689,8 @@ int __msi_domain_alloc_irqs(struct irq_d
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
@@ -726,7 +724,7 @@ int __msi_domain_alloc_irqs(struct irq_d
 		}
 		ret = irq_domain_activate_irq(irq_data, can_reserve);
 		if (ret)
-			goto cleanup;
+			return ret;
 	}
 
 skip_activate:
@@ -741,38 +739,63 @@ int __msi_domain_alloc_irqs(struct irq_d
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
 
@@ -802,22 +825,41 @@ void __msi_domain_free_irqs(struct irq_d
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210747.765371053%40linutronix.de.
