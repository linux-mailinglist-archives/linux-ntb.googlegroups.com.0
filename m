Return-Path: <linux-ntb+bncBDAMN6NI5EERBPERQ2GQMGQECXFI64I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id DA44145F985
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:13 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id w5-20020a634745000000b0030a5bee70e8sf4355013pgk.15
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976252; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ac5FvLZeOWQ3touWO2ZZdb6UbEIBEhgWAE4Cq0t7SWuwnL4jrAR1ntQGpbYNdAGQn5
         EpTPaXsBDP9YUETUCo7bS/lYCg5JLp5e1688/Ymk3rC157PHAUJxMMKk/fW1IsxLZOTB
         qPMb1jOhejx/vviLo4gDXWkFxI4TxsFuowBaVKYQgKaKUc9aMq9hdTO0UVnIzMV3cwax
         wpowqgujDYgiEGPCuzohSL79b+wttWnaHzS1QX4KnpedoHH6SMxU2i6QNCjzO1Ei3anx
         5eUeBJpUe6BAJumeriglHcDIOAMhB+Qidtj+DAePLLJR0YNpfvU8uaWZ3JEK+tpQxG+8
         ziww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=uz0DzkrjsDgmBVqbBGtVH+n5HR1iPfuhjk/zMaLxNxg=;
        b=aW3f8OLQH+M21XNkYdhkddlfYUuLTm7UWHNOtb5dcWEh19+JB6n4cS99jbRwG19y7z
         eorN0Of7VK4zvl/pTIudcbR/njq+kGyg/kiGXH1ODN+rd3ZxqJ35zv+7YXWUek1jyVA+
         GjvSgki0AYcaCrSOrwLi8z8HEG5gp+YWV5ulUxyb+uQomfrLVTageIQZO1PaUwiu/k7w
         iuFA1aZTPccRBRD9XUvdhjj3UOk1njfTculdt+hlEALgxQdGP4J/obYCL9tLNv+b3CeM
         iJEpmZ7cfbhTf1pmxMg1gJc145X15dH5pDqAaY0MLS4Ib6jmG2d+yf+UIinLy4qoRauF
         QUAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=jtV6ouor;
       dkim=neutral (no key) header.i=@linutronix.de header.b=B5LYXKw7;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uz0DzkrjsDgmBVqbBGtVH+n5HR1iPfuhjk/zMaLxNxg=;
        b=VPTPXtFQNSyagALtwrS3vx/2GVDH/Sy2WQ74GWTNvBRGM1oJS+Ym7egX4CvFeNxQ7M
         ks43OEJzlM6lrQwLEnLgHdDxA+AkC2b9PpF1AJbETpQP11cTEJeI63MqvtjzlS0KRxy6
         SZ6MLeF6nnyDiVmACN8HwapZCouNBRg0O2X66xrBqivxm/Sz9yl5iAoR20ve8xZLHH0X
         hMSH0wR690qdQhkJwIw6CNsIDz1KbzaRWMTLFfCd0dqz8YEKNvCIJskhqAG9y0ORURjO
         dH8cPDpr0jrkNprpJjiHxLujUAf0bBOjEy0DfO73kzfiWoLhQssg/cDklCmCxF9eYmua
         NXjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uz0DzkrjsDgmBVqbBGtVH+n5HR1iPfuhjk/zMaLxNxg=;
        b=Ucrd+4ZF3r74weJLxK1Ful/aq+Ldg4J3pS5WsFtw/trfRQHcGLuljEAlG0iCedP8ht
         DZ5BIC1xnpP8SbzmfO1mA0GLN7MOk5YNqtffiy7AvB0DoPLSIHJtEHOTpAPbnVlQH38Z
         C3eDzM4sIfVhZUfJLBGa3NQbthr61Vx7nFlWRQs1B5vuKQWULcV8A278ccOSccoXZeYV
         Fha4E/QrigOE3EB6OwGkhEZsLjd3pFw6Rg3Zfj6tTiDhdBdlpL2iKCopwkTKsozgGfpR
         txJggc12sA3+9DWpTNCPjwYk7d+Td7vKtA5+WkeuH/1q6+BIsZk/Bm8FEnKZJBE/e1Fc
         G6IQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531AChxfVkfYGuHTbLwLh71J7pzbVCd8HmH2oM8K2iAk/QjbDzhp
	fDgI99fevSMUmG0j6zhelyg=
X-Google-Smtp-Source: ABdhPJzh93/egxAurGd7vtxkqbvpkLF4b1P29gllsS0tN4P07wQfDWInRLm8ZmZo/Fi7KdxEa7HP4g==
X-Received: by 2002:a17:90b:4ad1:: with SMTP id mh17mr19673289pjb.33.1637976252596;
        Fri, 26 Nov 2021 17:24:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:f20c:: with SMTP id m12ls4162967plc.3.gmail; Fri, 26
 Nov 2021 17:24:11 -0800 (PST)
X-Received: by 2002:a17:902:b7cb:b0:141:b33a:9589 with SMTP id v11-20020a170902b7cb00b00141b33a9589mr41591726plz.9.1637976251845;
        Fri, 26 Nov 2021 17:24:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976251; cv=none;
        d=google.com; s=arc-20160816;
        b=keBLTWDMrJU+VIlAxCCm/n8kxaqXvO3j4RWi3wGUIKB9rmc9IzOEoxG7yTGYR+Tb95
         esDjs3nAzwl2HzXQEpLhL08rHRmY262w27sFQN5LRdfYOSsm7yMmfKcal/mlpnhjlMp5
         rrRZ8HvmJA+fdG26VZT7igQy/hFDtxKXqwW/V60rslxNrNOMjLarmqqTqmn9Vuqy95ZZ
         NhTh2pdhyYqhfKlPmHoW6vR365BtptUJjRCHOJ15Uo5HFpw5UwLDEhQ8h7XzAM8SXqtK
         15lTOFCgoV/Ibr07Xx1vZcTEQ0O5Wnqlh2xAxPHVHtSK1c43okx90pEsQEmL+LssPzHH
         +XSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=xspuuPHlg8ajQhUdujNFqpIxuocRS6Wrk8AGGuaaprc=;
        b=s4v/2/QcbWYAlAHAhVAt6vQD+4hBNo3YlKBEpRQYDkTm2XL4UTJEKyQagwQHcPPGme
         UG8oLuXu9s9/N5uZGiw9mr/yzJOpuQWnn6kbyVSpWrv2Kz/QotkVzAxajSVvENMVEMT1
         2BZG/Lr/gl5O3+ZZxvRXb3NEHkUKTMIbC70ShBpMcV+3qfxfC2vz+g3KFce7KODQLpiG
         iGBa16TI8BD+o3wp/9VYRbRxc9f01XtvS/yX3nUIWZPPAr6fIxvzziHilIp7xqg9GJex
         l//1155iPfPr9GU6HStK7fay56JlTU57vy84SvBa7YQFuNKy+lI6W6UIZtzKYDPmC+Za
         hdOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=jtV6ouor;
       dkim=neutral (no key) header.i=@linutronix.de header.b=B5LYXKw7;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id mq9si1768827pjb.3.2021.11.26.17.24.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:11 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
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
Date: Sat, 27 Nov 2021 02:24:09 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=jtV6ouor;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=B5LYXKw7;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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
