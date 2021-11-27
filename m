Return-Path: <linux-ntb+bncBDAMN6NI5EERB7EQQ2GQMGQEMSU564A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D4C45F8F7
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:10 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id t1-20020a6564c1000000b002e7f31cf59fsf4343819pgv.14
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976189; cv=pass;
        d=google.com; s=arc-20160816;
        b=YEU9WyxMyF1amxreuF5TRUNgJqM6L99mzoOefIugsbmGoeB1k2tADlWxsTHy+EJLlg
         C+zxh9yJ2CT2cDk/WWMNyz6pdRZTyOlZaXLMulqfa6XIAr0C+g8vy4KbtS8HJvBhjcf2
         E6tKpNJsDuZBXrWWdfN4czCIBTwk7fMFr82rzcjKUtEVcNBL84EKXjPHBv9c1cPn41HT
         IoIbqvXml0qPpsFjhmz4eozjpu8tGE5UxqkI/w2NUrAW2Hjn66jzqg5dzGkvKDJ4lHUn
         5uIYlkRdMFOIwDpCixCI7FQ6e5PDeg4Gjxgv0mIAXJ6fwzJRkZlGyzllRQszUFsKPOiv
         BwiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=xcDkGJ9tG92DrrxklkNPsI+tTvBb0yiy4Wz4OGf2mRo=;
        b=hc7BZe0R5MABm364yfG1y3vBdTL8RlqCiOYOT1pNxUbWbt3FHQe2OrIfC/N89I2U9O
         ZlZC/uTS5mxhIV++pcBpKukxOkzbohSt+/oJ438w5bETO5tLF5jiUaCetjyFrWcR4Btk
         flCphBIyp7T07kfINCCTfmJWEOQzwT831ggh1ZOIBY3vIDQTsoUAPp/ZxmqBurLxHoOE
         w1Y9XkD0vOsCtVO/FEWFsa+smTucpIerEkSsaGedxt+4idtBDwItJ1R46il3jnZm/6bW
         garK3mt7nuoi/ZN5CQANEcrEi71p5CcwKv0+leLT0mYkfu3aRu/mAMc+H0MkNmAZd4Kg
         1R/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=FIyzbNwi;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=VbW1H89F;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xcDkGJ9tG92DrrxklkNPsI+tTvBb0yiy4Wz4OGf2mRo=;
        b=t30+a1Wmpe5U6ifAdUDCKxibUysPFdaflH8GmN13nZ7Tlcvud78Z04J9VT5bG5TB87
         Qw0JemEDnEbxIHt/0nLl4eDAmUsSssh3y7QcL/gkwOVMZjCaN5UzFI7y+IVweG8CGiQi
         Alj5uyXhg+mU7Cl52VbTohPmN39NWRQzhAzIAKwCI+msX2nSZIQpauwQH0ezUk5tUjx3
         n1NHdtSH/xH9DbjN/8B8DPKFHMnkmV2GEymOKJ9LJWQW5l1TtAQYx7X5srokMib3Mhir
         u+/VW2cgt/pKB4+zCWekEwHZK2fDGFMacxVBTfJz+z8UU2TAxkmFrg2n2BgX0mNXhdLT
         9B7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xcDkGJ9tG92DrrxklkNPsI+tTvBb0yiy4Wz4OGf2mRo=;
        b=8FtKDyaa4vf6oGbPoP/2TOP65vRD/uPBvbwGipnUATEeQ+R2jMiMNc9hkIxxoNzCpS
         6JQWhQn9b0WLkdzhBdJq0ByVDFnhkWpjouk7fqKNtLKl/lgOz3gaDpcC0ppqT13Gs33u
         jODz2906ocZTtiVgcqyaFl82+zMewOrWRBgHP6rFB+n4DNZW+HlhJJ1ng9hISSPd3yp9
         ZoASy/25Zr4kcHabwWbCAYRcEONpi0BYd/3WAiGew4LLgFVMqtY7T3HFpBxWmK+ofFit
         dNCsjdqPtB4f2ZXIO0874sOQuGyTeQTZV16o+1Ihhno5UxWrjJJTqkH6gQ3aJAgQ+d2N
         jSrA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532IXqjz6YfRZ/oRRbtb3VCEQv4+ChnBjxni/9FoYzp2x7ZqjfZY
	/OB/r8KOPjyQXVbCJsVE2bY=
X-Google-Smtp-Source: ABdhPJzLbQbjgF2WCSI8dxWrr3OwXIXeXfUkDpXqn+Me4kleOH1xdc7VrPhbAeY9q7ynbPl28t+KHg==
X-Received: by 2002:a17:90a:c398:: with SMTP id h24mr19904190pjt.73.1637976189033;
        Fri, 26 Nov 2021 17:23:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:7152:: with SMTP id b18ls405245pgn.7.gmail; Fri, 26 Nov
 2021 17:23:08 -0800 (PST)
X-Received: by 2002:a63:6b46:: with SMTP id g67mr10214967pgc.512.1637976188429;
        Fri, 26 Nov 2021 17:23:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976188; cv=none;
        d=google.com; s=arc-20160816;
        b=BlHqKuwZ4BS2AlOB4xv1jaiyGRYY6bySxbDIbIAkKqUD7BqWdM5ZGsonlKRthHcWpS
         Kp34jelVfwWK8tFsgTPBtHVAf8mP2W+mt71vfeoQ655yDoANyRwlZtCVSSaLmmdVUfJj
         NBvJsjiOEZdsX5JS4ExZMgBLrTcIBJaeGa7dwh/YAeHt/om7/jnkXmQNtZa0Qm8sm/5y
         cbn3mFlIgNXuP3AISYiGt95x0/wGXifBNStzOu5y97mWDsKLNICeYhNWyPS4PO9qEUrk
         8o0hRtx9AIsj/Xh2lbhFfApDFplDVPuBV594KkpfgWesGWjC2eP6y5k7dXQJW/6HIkyc
         M6tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=TGj6QTdrqi/+rBbBw9aAzTJFtE/Dj0UpsCqlfUJ2p/4=;
        b=NwZyuZRdH4x+A3mAhpCLjN4bgMLuFC+LOm4WKOtQT0pYI0H0n3tqLileufbEPXnfKY
         CT53yPXHvt7S+K6NECKzVs5rXdWik3QTBOleQmQQj9sqTNldVVryn3JXGl7x/hiSAeq2
         CaADmthicKYj8+1uWB/X62CMgY8xbJ/5+L45ADX/XyJ2ZwWFABPshuFcYiDWUMZ5z1pS
         fd3wCnmKe3V62RrnlRuOrg0CHnzMUaBMYXELeeunRfBmgWgdqjsLRSyV1jMOIr6Xvl7Z
         nu3UBfc3on0f45vlrjb7qE2GCWoKb4zaKvIqVAmKkaBYvsF+dv9Xy6o/1aaROKwAyUtq
         i+wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=FIyzbNwi;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=VbW1H89F;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id x31si583679pfh.5.2021.11.26.17.23.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:08 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.790472764@linutronix.de>
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
Subject: [patch 25/32] platform-msi: Let core code handle MSI descriptors
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:06 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=FIyzbNwi;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=VbW1H89F;
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

Use the core functionality for platform MSI interrupt domains. The platform
device MSI interrupt domains will be converted in a later step.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/base/platform-msi.c |  112 ++++++++++++++++++--------------------------
 1 file changed, 48 insertions(+), 64 deletions(-)

--- a/drivers/base/platform-msi.c
+++ b/drivers/base/platform-msi.c
@@ -107,57 +107,6 @@ static void platform_msi_update_chip_ops
 		info->flags &= ~MSI_FLAG_LEVEL_CAPABLE;
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
-		desc->irq = virq ? virq + i : 0;
-
-		list_add_tail(&desc->list, dev_to_msi_list(dev));
-	}
-
-	if (i != nvec) {
-		/* Clean up the mess */
-		platform_msi_free_descs(dev, base, nvec);
-
-		return -ENOMEM;
-	}
-
-	return 0;
-}
-
-static int platform_msi_alloc_descs(struct device *dev, int nvec)
-{
-	return platform_msi_alloc_descs_with_irq(dev, 0, nvec);
-}
-
 /**
  * platform_msi_create_irq_domain - Create a platform MSI interrupt domain
  * @fwnode:		Optional fwnode of the interrupt controller
@@ -180,7 +129,8 @@ struct irq_domain *platform_msi_create_i
 		platform_msi_update_dom_ops(info);
 	if (info->flags & MSI_FLAG_USE_DEF_CHIP_OPS)
 		platform_msi_update_chip_ops(info);
-	info->flags |= MSI_FLAG_DEV_SYSFS;
+	info->flags |= MSI_FLAG_DEV_SYSFS | MSI_FLAG_ALLOC_SIMPLE_MSI_DESCS |
+		       MSI_FLAG_FREE_MSI_DESCS;
 
 	domain = msi_create_irq_domain(fwnode, info, parent);
 	if (domain)
@@ -262,20 +212,10 @@ int platform_msi_domain_alloc_irqs(struc
 	if (err)
 		return err;
 
-	err = platform_msi_alloc_descs(dev, nvec);
-	if (err)
-		goto out_free_priv_data;
-
 	err = msi_domain_alloc_irqs(dev->msi.domain, dev, nvec);
 	if (err)
-		goto out_free_desc;
-
-	return 0;
+		platform_msi_free_priv_data(dev);
 
-out_free_desc:
-	platform_msi_free_descs(dev, 0, nvec);
-out_free_priv_data:
-	platform_msi_free_priv_data(dev);
 	return err;
 }
 EXPORT_SYMBOL_GPL(platform_msi_domain_alloc_irqs);
@@ -287,7 +227,6 @@ EXPORT_SYMBOL_GPL(platform_msi_domain_al
 void platform_msi_domain_free_irqs(struct device *dev)
 {
 	msi_domain_free_irqs(dev->msi.domain, dev);
-	platform_msi_free_descs(dev, 0, MAX_DEV_MSIS);
 	platform_msi_free_priv_data(dev);
 }
 EXPORT_SYMBOL_GPL(platform_msi_domain_free_irqs);
@@ -361,6 +300,51 @@ struct irq_domain *
 	return NULL;
 }
 
+static void platform_msi_free_descs(struct device *dev, int base, int nvec)
+{
+	struct msi_desc *desc, *tmp;
+
+	list_for_each_entry_safe(desc, tmp, dev_to_msi_list(dev), list) {
+		if (desc->msi_index >= base &&
+		    desc->msi_index < (base + nvec)) {
+			list_del(&desc->list);
+			free_msi_entry(desc);
+		}
+	}
+}
+
+static int platform_msi_alloc_descs_with_irq(struct device *dev, int virq,
+					     int nvec)
+{
+	struct msi_desc *desc;
+	int i, base = 0;
+
+	if (!list_empty(dev_to_msi_list(dev))) {
+		desc = list_last_entry(dev_to_msi_list(dev),
+				       struct msi_desc, list);
+		base = desc->msi_index + 1;
+	}
+
+	for (i = 0; i < nvec; i++) {
+		desc = alloc_msi_entry(dev, 1, NULL);
+		if (!desc)
+			break;
+
+		desc->msi_index = base + i;
+		desc->irq = virq + i;
+
+		list_add_tail(&desc->list, dev_to_msi_list(dev));
+	}
+
+	if (i != nvec) {
+		/* Clean up the mess */
+		platform_msi_free_descs(dev, base, nvec);
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
 /**
  * platform_msi_device_domain_free - Free interrupts associated with a platform-msi
  *				     device domain

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.790472764%40linutronix.de.
