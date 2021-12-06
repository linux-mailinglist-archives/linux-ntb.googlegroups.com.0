Return-Path: <linux-ntb+bncBDAMN6NI5EERBAFIXKGQMGQEQJMKG4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C1846AD61
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:44 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id g81-20020a1c9d54000000b003330e488323sf217786wme.0
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831104; cv=pass;
        d=google.com; s=arc-20160816;
        b=gDLrByt5kOvp+4O9d80KVTZGiOSlpdlSz+PGwKII6IxqkhtKcqMewM8vAS57FpO/la
         a+v18YYnnFptjoTqpU0zxca9MVPVhu0taYtskwtcaA9jpDCTm5vY0dMsBfGSNRazkjjp
         Cyp3INWlP4KdaGPgC4gJCP7pakWxwuOZoroHWucrwzvbNCVk2Um7HQcW+W+qOD6wazvc
         sXWAvAV7HOoSOb/ujKx8QVrG4hlRFcWoCOXRVIes2l23U2iJZ5eW4UQ+D/PfSSLwrcvh
         jQvkd3B/qxS1LDNThgmmBNH860W4awWJsToGYoOOh+Yiw/KKbXFb+lXMUKDyfA5VFA4C
         ZERQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=anXZR+yhDHCe4NXTAkmMUMYxSMqsg9C1dI8VmGKrw+I=;
        b=0oz4Zwf3lpGJpxq2lLFq3JgX6xqNL/EuUfeGMiLak7KXiLZso0T2iJho5e38NvXnZJ
         c7v1HuVPGScp7xmS9cN8EeVeYeIAGlOVkfYYWPgwdNnRuK2D1VIe2JKOWjh+wlCaRPpR
         akJf+BUOO0dNKszfeYKXSVtRl08FfexaGBWzOiVIrj+54ilMpV61xt2lzP0TnatJNHPg
         1QHi1a+UePXekESKqBd/tGlcWr9NR1t0TUWO0I5CsmXTj9+R2ON+OZIUT3drfdnd+ryW
         +hPuRIoJzIndOdbJV1UFyn3dOsW5WuP7zRYg4nHsWr3b+/Zem/1zNpTi15YfaCHOXez3
         ut2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Vv+9zHCb;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=y75Z9VGl;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=anXZR+yhDHCe4NXTAkmMUMYxSMqsg9C1dI8VmGKrw+I=;
        b=QkshiF1HugWs0Ln27+HQzaY/+dkcZYQye+8j1eoP1SHx+kAoJEgAWKigUtGOlJHsWM
         ky5E/T4XIvYiVKh2BQYDI4JwWAPKyMANicxpYy23mZqYyMTVlOWfyNhIFwnEqkK5VnLg
         GKr/P7mJxyAU7PUOBsJMQE5cG8RWThZsBYwN3eZAWqXwv0WYUoeN8PqG2+NxC7UeV1xN
         ahxsg3WQgToW40fNYLC+1o31SEo28yHfJE1C1HzUs2pb8iZveYWz2rvoZgxTs5MMz0Xi
         0WDUKaYx/TkT3UlC31aqPMS3nrZ1EhcmpFe09GG7hoHKIgxv65dsMwLvzqX0QHyEX2s4
         6n1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=anXZR+yhDHCe4NXTAkmMUMYxSMqsg9C1dI8VmGKrw+I=;
        b=LKhnrmloXtbVG27f3cOiMbqMsX+8hn4ri6y/COQjOpbYvmKZwVqFOAtsrW5zRHqGD2
         wAkn0pEd0aKvphZLueFEQUlMffsMXJHg2ehdugIpXwU/8quiYP1xGTkiQ18xnIpX8Con
         e7AqTsd4f03FzzzD6HxSgvw2CTLkH7s0Xi8DFiA516NPLTMvV5NQv0WbG3STSIhtwgHw
         TKjzSKYI1cmHDz1z+ETB9FqEXZ6RvkM7U7GiQGug4Wshqhs/T8gR4+S6tDafLS4xAUjz
         cnUJpgbC9xsiHQo1sjmzqKCB7Zb6DWEzuGwvPoqZay+vFWBWyCwNSNGr8KoaZbsDqNjS
         ip+w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531kqhE6TaJ+Ea1xSWFPJzOjxDm0q6A1/uZwCghvSgxgi0aGjX9M
	4TjKKZ3cJB8LQyogt66wBSQ=
X-Google-Smtp-Source: ABdhPJy2Ve8hoyHSMrCG8AIj916dNwj+24NVOOHSGHgEAWOpAeU0ckpIN2ImmLSSidCoHAx2AKTWiA==
X-Received: by 2002:a5d:588b:: with SMTP id n11mr46327925wrf.344.1638831104235;
        Mon, 06 Dec 2021 14:51:44 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:4092:: with SMTP id o18ls1275052wrp.1.gmail; Mon, 06 Dec
 2021 14:51:43 -0800 (PST)
X-Received: by 2002:adf:fcce:: with SMTP id f14mr48810571wrs.595.1638831103543;
        Mon, 06 Dec 2021 14:51:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831103; cv=none;
        d=google.com; s=arc-20160816;
        b=b1j1z3cPDV9FRYNm93niqQont2sSxKBAXGApHGOzSK1EyYhAwIW+FbsS1UkyLBHFPQ
         pFcEF3czyjvK1unZE+TsEeTnBVd0k2h0odowXiUZQD0Xbx7ZwCGhvTY0I7NDoUZ8pOe8
         A3AxcGwXbT6+SSpM8u9PGiUIi6AKacRbsh2EyhFwQZL7Bjin6xApgSblr9FftfUndk7P
         m42WMKyENkzllnyEA3zESP1PMFEA4vqhwLkndmhvLE7esU3gRLbArCQ/UJV9cLM9/Gmw
         47/8ShhfS7vAFDIocbiqNcxypHqs8Uf30BUGeCOikHgOt15WXbcL030vIHH+i/H8ql32
         U2PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=h8HF/3BXQf6Dy3Y50LiKzGZ9Bzwn8IQ2u2c/JcHaHXM=;
        b=XY4Dyk4EPzQ5VUq9GC04AEogWrvr2hUc2d8R+ih2B3mgPS3Tdp1vneTGjXHsSkkioU
         5ZjZqQ7F26bCsJQulr6S8+JSE0pV+FjAyFrOW9vXxwIFV7qLhIwZenJ87BiSiEyEU1xg
         dYtjVt6QsUu7jF9BAzgNj7tM8VPc8bxToO7UQItll8i9gg5vGrtHkkaa1h3nVQ+lnXYb
         387uOa4mzSEar+grG9Ke46NyYg72TavYXhgk7C3rnH/LxT/BCrD6rtdJnDX92YD+jeQ0
         qtW2aIXuZZ5/OhSqSsUsKU9KTzLczEtjXHUfNgDT+3Vv3gk+ozfLNHaHWnEHb7ECgSHk
         Xu3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Vv+9zHCb;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=y75Z9VGl;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id e2si768357wre.5.2021.12.06.14.51.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:43 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210748.956731741@linutronix.de>
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
Subject: [patch V2 25/31] platform-msi: Simplify platform device MSI code
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:42 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Vv+9zHCb;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=y75Z9VGl;
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

The allocation code is overly complex. It tries to have the MSI index space
packed, which is not working when an interrupt is freed. There is no
requirement for this. The only requirement is that the MSI index is unique.

Move the MSI descriptor allocation into msi_domain_populate_irqs() and use
the Linux interrupt number as MSI index which fulfils the unique
requirement.

This requires to lock the MSI descriptors which makes the lock order
reverse to the regular MSI alloc/free functions vs. the domain
mutex. Assign a seperate lockdep class for these MSI device domains.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/base/platform-msi.c |   88 +++++++++-----------------------------------
 kernel/irq/msi.c            |   45 ++++++++++------------
 2 files changed, 39 insertions(+), 94 deletions(-)

--- a/drivers/base/platform-msi.c
+++ b/drivers/base/platform-msi.c
@@ -246,6 +246,8 @@ void *platform_msi_get_host_data(struct
 	return data->host_data;
 }
 
+static struct lock_class_key platform_device_msi_lock_class;
+
 /**
  * __platform_msi_create_device_domain - Create a platform-msi device domain
  *
@@ -278,6 +280,13 @@ struct irq_domain *
 	if (err)
 		return NULL;
 
+	/*
+	 * Use a separate lock class for the MSI descriptor mutex on
+	 * platform MSI device domains because the descriptor mutex nests
+	 * into the domain mutex. See alloc/free below.
+	 */
+	lockdep_set_class(&dev->msi.data->mutex, &platform_device_msi_lock_class);
+
 	data = dev->msi.data->platform_data;
 	data->host_data = host_data;
 	domain = irq_domain_create_hierarchy(dev->msi.domain, 0,
@@ -300,75 +309,23 @@ struct irq_domain *
 	return NULL;
 }
 
-static void platform_msi_free_descs(struct device *dev, int base, int nvec)
-{
-	struct msi_desc *desc, *tmp;
-
-	list_for_each_entry_safe(desc, tmp, dev_to_msi_list(dev), list) {
-		if (desc->msi_index >= base &&
-		    desc->msi_index < (base + nvec)) {
-			list_del(&desc->list);
-			free_msi_entry(desc);
-		}
-	}
-}
-
-static int platform_msi_alloc_descs_with_irq(struct device *dev, int virq,
-					     int nvec)
-{
-	struct msi_desc *desc;
-	int i, base = 0;
-
-	if (!list_empty(dev_to_msi_list(dev))) {
-		desc = list_last_entry(dev_to_msi_list(dev),
-				       struct msi_desc, list);
-		base = desc->msi_index + 1;
-	}
-
-	for (i = 0; i < nvec; i++) {
-		desc = alloc_msi_entry(dev, 1, NULL);
-		if (!desc)
-			break;
-
-		desc->msi_index = base + i;
-		desc->irq = virq + i;
-
-		list_add_tail(&desc->list, dev_to_msi_list(dev));
-	}
-
-	if (i != nvec) {
-		/* Clean up the mess */
-		platform_msi_free_descs(dev, base, nvec);
-		return -ENOMEM;
-	}
-
-	return 0;
-}
-
 /**
  * platform_msi_device_domain_free - Free interrupts associated with a platform-msi
  *				     device domain
  *
  * @domain:	The platform-msi device domain
  * @virq:	The base irq from which to perform the free operation
- * @nvec:	How many interrupts to free from @virq
+ * @nr_irqs:	How many interrupts to free from @virq
  */
 void platform_msi_device_domain_free(struct irq_domain *domain, unsigned int virq,
-				     unsigned int nvec)
+				     unsigned int nr_irqs)
 {
 	struct platform_msi_priv_data *data = domain->host_data;
-	struct msi_desc *desc, *tmp;
 
-	for_each_msi_entry_safe(desc, tmp, data->dev) {
-		if (WARN_ON(!desc->irq || desc->nvec_used != 1))
-			return;
-		if (!(desc->irq >= virq && desc->irq < (virq + nvec)))
-			continue;
-
-		irq_domain_free_irqs_common(domain, desc->irq, 1);
-		list_del(&desc->list);
-		free_msi_entry(desc);
-	}
+	msi_lock_descs(data->dev);
+	irq_domain_free_irqs_common(domain, virq, nr_irqs);
+	msi_free_msi_descs_range(data->dev, MSI_DESC_ALL, virq, virq + nr_irqs - 1);
+	msi_unlock_descs(data->dev);
 }
 
 /**
@@ -377,7 +334,7 @@ void platform_msi_device_domain_free(str
  *
  * @domain:	The platform-msi device domain
  * @virq:	The base irq from which to perform the allocate operation
- * @nr_irqs:	How many interrupts to free from @virq
+ * @nr_irqs:	How many interrupts to allocate from @virq
  *
  * Return 0 on success, or an error code on failure. Must be called
  * with irq_domain_mutex held (which can only be done as part of a
@@ -387,16 +344,7 @@ int platform_msi_device_domain_alloc(str
 				     unsigned int nr_irqs)
 {
 	struct platform_msi_priv_data *data = domain->host_data;
-	int err;
-
-	err = platform_msi_alloc_descs_with_irq(data->dev, virq, nr_irqs);
-	if (err)
-		return err;
-
-	err = msi_domain_populate_irqs(domain->parent, data->dev,
-				       virq, nr_irqs, &data->arg);
-	if (err)
-		platform_msi_device_domain_free(domain, virq, nr_irqs);
+	struct device *dev = data->dev;
 
-	return err;
+	return msi_domain_populate_irqs(domain->parent, dev, virq, nr_irqs, &data->arg);
 }
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -748,43 +748,40 @@ int msi_domain_prepare_irqs(struct irq_d
 }
 
 int msi_domain_populate_irqs(struct irq_domain *domain, struct device *dev,
-			     int virq, int nvec, msi_alloc_info_t *arg)
+			     int virq_base, int nvec, msi_alloc_info_t *arg)
 {
 	struct msi_domain_info *info = domain->host_data;
 	struct msi_domain_ops *ops = info->ops;
 	struct msi_desc *desc;
-	int ret = 0;
+	int ret, virq;
 
-	for_each_msi_entry(desc, dev) {
-		/* Don't even try the multi-MSI brain damage. */
-		if (WARN_ON(!desc->irq || desc->nvec_used != 1)) {
-			ret = -EINVAL;
-			break;
+	msi_lock_descs(dev);
+	for (virq = virq_base; virq < virq_base + nvec; virq++) {
+		desc = alloc_msi_entry(dev, 1, NULL);
+		if (!desc) {
+			ret = -ENOMEM;
+			goto fail;
 		}
 
-		if (!(desc->irq >= virq && desc->irq < (virq + nvec)))
-			continue;
+		desc->msi_index = virq;
+		desc->irq = virq;
+		list_add_tail(&desc->list, &dev->msi.data->list);
 
 		ops->set_desc(arg, desc);
-		/* Assumes the domain mutex is held! */
-		ret = irq_domain_alloc_irqs_hierarchy(domain, desc->irq, 1,
-						      arg);
+		ret = irq_domain_alloc_irqs_hierarchy(domain, virq, 1, arg);
 		if (ret)
-			break;
+			goto fail;
 
-		irq_set_msi_desc_off(desc->irq, 0, desc);
-	}
-
-	if (ret) {
-		/* Mop up the damage */
-		for_each_msi_entry(desc, dev) {
-			if (!(desc->irq >= virq && desc->irq < (virq + nvec)))
-				continue;
-
-			irq_domain_free_irqs_common(domain, desc->irq, 1);
-		}
+		irq_set_msi_desc(virq, desc);
 	}
+	msi_unlock_descs(dev);
+	return 0;
 
+fail:
+	for (--virq; virq >= virq_base; virq--)
+		irq_domain_free_irqs_common(domain, virq, 1);
+	msi_free_msi_descs_range(dev, MSI_DESC_ALL, virq_base, virq_base + nvec - 1);
+	msi_unlock_descs(dev);
 	return ret;
 }
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.956731741%40linutronix.de.
