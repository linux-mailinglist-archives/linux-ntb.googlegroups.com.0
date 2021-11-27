Return-Path: <linux-ntb+bncBDAMN6NI5EERB7MQQ2GQMGQEJEFJGNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id F341545F8F9
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:10 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id ay10-20020a5d9d8a000000b005e238eaeaa9sf13285418iob.12
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976190; cv=pass;
        d=google.com; s=arc-20160816;
        b=sPyJQJw6wIrvm2ehkXWA9QnXTI39uMBGkHV8dgfC5FWFXUkV2Ov2HJ1cXGEg+L/rHI
         dVeJ3sSLkNF0OZqbzx8Tjx1+YH5/d9BtnjTgMdDYOWWAMweH7mk7TuwdhuwHPTjaDod1
         XPeURfCKFHHIbAmfHlExanIHYTJix16CXeURpTJ3NEx9vkRqQQdvVFRG4di5NUzytaPl
         aXelXCDdJ1AcAdC9lbS4T0jZqOb7tf9MEZzXsAyE5TamxBHv1omQjWUXx6djjC7z64JQ
         dfM10o8ijeQmN0c8E361VFsWFCfSEizpwmFMZ+YWS0wzfuD4dqNb/p3VUYBudi65JWZ2
         85GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=uz0DzkrjsDgmBVqbBGtVH+n5HR1iPfuhjk/zMaLxNxg=;
        b=tTm9NUfm1GX8xLyUAXAtaBJLs4L+3xA//bNrJMYW7mXH0lfkaVQd/198xVv0MxYICF
         s2wqmh/doB8mdQo0rMbkUpY607wDtzD8kke81oVs2TohisrXei7S6NBUdHrqLyqOpYX5
         xHJ6wji+yAoEE82JSi5T5Ia+BdJmWeWaESZT6AAPYYdkYO88d0HVM2K52wSOljKNyd/A
         UUBQdUlT/sVRLPIwyOUfD4KHDgZpveF4wfeZlhAdUkJexoarLH71kRTM+X94BTxHwatZ
         rbr+I9su2i1PfEbRIMM3W7Li6sX4P+2Tlcx3uPRFLa8vrkBQmJguILD7wUTpctrrGd37
         BGJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=oUuhV6YN;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=A2TVGNft;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uz0DzkrjsDgmBVqbBGtVH+n5HR1iPfuhjk/zMaLxNxg=;
        b=htPYwN98kG4CAuz1pd5r9Oqkr3s5R0jJXTrWlLx7PoHJLZn2Fe7Pd4eizxHqlzJ4qx
         SW3g0jERzf/CnfWl841NV5soXloE5zKiz8BKgYIzZXVtMW2JEPrcAlCtHO14MkpJXnBW
         Y0UXx5qhiBK0VuXx+TJuQD0I+r2rUdA/0WNpwp+kx6pMrWfu7r7FXax746Dozi//aPFQ
         4op2igYVfv3m7U+M7DE6lzubPCBSHxmppHeQWLlBqxqjwcpincbkS/F/lTw0KUy3oliN
         mkf8zX6XkTS4KO5orrZnmYLOhGHsvWUDz+UG6XX0Je9fzEYixnTkUiu6RrVF2VHqbcWe
         KCTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uz0DzkrjsDgmBVqbBGtVH+n5HR1iPfuhjk/zMaLxNxg=;
        b=lxmriCaG7tIecUFLrR20rRau/qC5ufwLcQhVs1duB1q9R0noeUtlaSGJg+tSgFfwcB
         Q1V0CFZVMCcV4ymDgoq/iPSyztORgK8BKOQGWCYq9KBsvKfam2kKSSHqQCNz49V5FUCw
         aDiAy9MscLm2BK0NYM/7NqqPV9sdpf4ygmWHOAMA5JhG3u7fN3it60o/8FiP03s4y7Fl
         HXlZ4zr1u64lTWO1Q7qVIms07QY0eeWve2RAyxz4oZgjMeRxcpWVulB47MPjjzetT+/n
         vIVU2z7Q1RNZDFft+pZpGJWbGw7pAV8xgEw1XD6JqROBweCJ6mYDnRS5DbcB6mK+M8gH
         92gw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530Wjym/rwyghBv9VnkEUhk4D9sZMFW6YBHX/YPuDav5DMFf3Jwk
	GswkHlELYc2JZLGhvtB6wAk=
X-Google-Smtp-Source: ABdhPJw8FjkXhps3w8IlKNmRhEXCvYHUxZW7VbbSY8ok6v9r1BN56N3lTHuPCTYxZugKKPved6vFsw==
X-Received: by 2002:a05:6602:2257:: with SMTP id o23mr3905677ioo.33.1637976189993;
        Fri, 26 Nov 2021 17:23:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:3783:: with SMTP id w3ls658062jal.5.gmail; Fri, 26
 Nov 2021 17:23:09 -0800 (PST)
X-Received: by 2002:a02:9f0c:: with SMTP id z12mr43290127jal.117.1637976189710;
        Fri, 26 Nov 2021 17:23:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976189; cv=none;
        d=google.com; s=arc-20160816;
        b=iGvdwphYRUHFf3Usd66GSSUIQuiFxXg9Ox0mW9ERkVnFNwrHanbTsuD6NmYqYLCbdD
         Yxsa63IfnOhA4e71IHlwIZkpbdzojzAwffqKk6XZvYi46PzlzSA7f17N8rs7HmVZYgfK
         RaE0wOrUJGhaWIt+zgRLB8oREVE+ljoRU7JuvvUnIIDfpO5Jw3GhInmYko6uRMvZ+5cm
         3fY7K/kgV2yw0c25OeX3Aqrx1rmIMnkQExePa3gQsWMulz1fEsFa1NEFXIXMZpZh3nH0
         zjmPWGcDvcktE6Vh+tZgEJgYlk3LpLM6TXIv+WB3UYp3Vt7ejqPNL1qUo0JSh0D9yLiJ
         xEKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=xspuuPHlg8ajQhUdujNFqpIxuocRS6Wrk8AGGuaaprc=;
        b=TGgWVlzZ0NtIooYgkqFbEPHc2R7i6MOZ8+kJVMZvwknbfzuG9rX2n/gGdGctyj9kBp
         zrc+/wlQzHyMlqYvLcctEJvprSOoLOzePvtfRWsg+8XQxcGVKOcbT1Bfj3AfSce4jji6
         H5Mls8P6ss0Q31lFDQRUkBHDJfSRFfqGoAuEQC9MUtw08qvUAU6oHe4Yrg2PTu1f6NBk
         29Z/W6jwEmGQVgLZ1iXNFqo5W/rez+wwKDu9W3+Qd1r5qVKb2x9PviegYhpU4BeCk/cc
         OMoOha2cP5ccK2IhR0wzLUu/TPHK9O3ldwSSpG0rt6P53LsEXf3iHdn/w4CP0VJUYHs3
         jzgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=oUuhV6YN;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=A2TVGNft;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id h11si29447ila.4.2021.11.26.17.23.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:09 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.849307742@linutronix.de>
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
Subject: [patch 26/32] platform-msi: Simplify platform device MSI code
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:07 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=oUuhV6YN;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=A2TVGNft;
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
 kernel/irq/msi.c            |   46 +++++++++++------------
 2 files changed, 40 insertions(+), 94 deletions(-)

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
+	msi_free_msi_descs_range(data->dev, MSI_DESC_ALL, virq, nr_irqs);
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
@@ -775,43 +775,41 @@ int msi_domain_prepare_irqs(struct irq_d
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
+		dev->msi.data->num_descs++;
 
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
+	msi_free_msi_descs_range(dev, MSI_DESC_ALL, virq_base, nvec);
+	msi_unlock_descs(dev);
 	return ret;
 }
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.849307742%40linutronix.de.
