Return-Path: <linux-ntb+bncBDAMN6NI5EERB6NHXKGQMGQE7HZZCOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDE346AD5C
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:38 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id d18-20020adfe852000000b001985d36817csf2404470wrn.13
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831098; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ty7dGpTNFnZCqQpNAiZHPQGvcrnP3A77vuNfcOEPN4ieUxd0ddLvybl6nEymWlSS/K
         xmQBCzFsl2ZcWJ0RQ5z8vRB9wjqJFypdlg5NJ+F/++00y7w6kUC+vYXmu6eZv/cMYDxd
         pJEJWgyfjAhoUeHZOasTJXZZik4PaL0iLvCqOatV0CxVKZ3wZG0/dOVSdiDJuK0r6Ojy
         T30xrKV2axN8ivi65q6E9dpcn+dcMBiVKVI4ZaVazOTQotkkDREiBmEdpgW+uV12VR+8
         2c7TyzCnAf8d1kRA85HFH1U4NkR1oTO1jQnK1bCTsFz4gyom+5bpRrEL2BU3ddcX0GQQ
         3i8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=RnepL1cKQGwm9EbPB6//c1K3ZM4DPDZMUAqDMESL9MU=;
        b=MlKSLtIYDqgzN9LZO5CabQKiIzjCDxdkt4OkITJqpT1wbz+iJntABRgEFgo7sCo2oM
         VljlGonrzNbm1aegWQkM8xqk+YCy5MIEu9/sUu0GrmgBVFaMQAp6SWpI3PbbSc91eQLX
         vxRQXXbatoS/FHYnwUM1U0Q6K5MKi3Jehq8qTaObXzRkWXyx92pAj0UaTNYSw3W8E2LA
         1DFmwTVeMBREmDiUDTyA5uyj7zACGeK4taBzDPOQP6+VPCzQ93BKEvE7Y8epDnmggYp6
         x3aAkg54cPusj5s6BqcCm+Y6nSC/9RTgx8NTCMJlLmqLQCz4y5rX0DgeTlHGTOzWjkqF
         2cTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=1RPNxtfr;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RnepL1cKQGwm9EbPB6//c1K3ZM4DPDZMUAqDMESL9MU=;
        b=Wx8vvBH3TLfDvOXu+8ACx2iDVsgidFwTjI2KR7tMQ+xI9F9ywchRWYe5Sl/lkrSCsm
         KXPKHdOIxkyJPd3z827RFnrL4a8HX3zDvQM4wi2p5+U5BXXfVN0p7Tm553Yzelghk+4T
         xIVIf2NG8PbJKmn70/0amzP8TkZLMR3x0vdHC4kh6JrxGWXOha0nfixigF/j0/3AAigQ
         wnyFqmyTmPoQfSGLKuJF3r/i+fhtOZ0MCtk6z5Il8636jQHzJEr9ih4gKIXPiBm0asqS
         FiAFIGNtrHT7WwycFA9NxCC55Sw+QNRdTPWogK+a97ko36fYU/naGVetgdH+bGf0OCgS
         A7PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RnepL1cKQGwm9EbPB6//c1K3ZM4DPDZMUAqDMESL9MU=;
        b=re4NcKUNhVk1zEznv05qGZ6O0gO2RzHu+lfPEMBFi6m6zZBYE7Iv9eWEB5/0PYFAqu
         8P2TzDUEYfHVqi0dAV4Tu7KZU3U6jm8pGbhbTosTHjlkep0XzpQ7w/qy+dCWuUDmxDfl
         XoUj6lz+XjM0I1RTlIO/2ce+Vqs2gBwN2dP7gNReN3WvxWWpYGY9vBvQc0COaXrvB/Cw
         jTjjRPUkU8/o98HOnOhbs5srWY987q+t3uuVXQzPMtF9uS0QcJFB2GUxyis/iw/HscA+
         /WbzBKhET6/K08durSDNozMi0Qr1qwJ7ROa9ww/t1M2VFsHXaPLHkadhF9v6jMsWGe0I
         ifnQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533gLFLzlG86UfFmyyMip1AViJ4hvTH3TDFr6rZyl33oUO4oeVXc
	VBBpdmCy3LGSeZLxDAY4Fno=
X-Google-Smtp-Source: ABdhPJzSJxEFwuimv2o8BBacQDuA5xIvPIKayD5WL/od8OZrm3DSPYEi5yQo66mSqiDTrzq5zgdc/w==
X-Received: by 2002:a1c:4303:: with SMTP id q3mr1919859wma.78.1638831097904;
        Mon, 06 Dec 2021 14:51:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:416:: with SMTP id 22ls269439wme.0.canary-gmail; Mon, 06
 Dec 2021 14:51:37 -0800 (PST)
X-Received: by 2002:a05:600c:5101:: with SMTP id o1mr1867705wms.81.1638831097097;
        Mon, 06 Dec 2021 14:51:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831097; cv=none;
        d=google.com; s=arc-20160816;
        b=Kht2CBEMx+mUnYR+9j3kfEdsI53ZoE4NsVaRvjt1uOjTaHU2iaw/os6dlD8dNUSRjD
         bpQAemE9hF8WsGdnJxG+82NCnWKPxpRCRgDuD6lJV8iwY8gukZCB5BG5s4TDS+w3NQoI
         Ah2WeaBXn44FZnF6tXGsrfwIc3kc7Jqp+fQmydVJVCcGjaxYCGncXEZVTH5KmWauTalK
         +uwuu+nF4QVtbi7eLYTneQbzOFVcVRuo0CTOiDz3OBlCBU3RPAv/e6czaGImvXQUFfY/
         JADAJsBx/TBNQk2WafQTNpVqqbIuig9Kh924wli0nU0dcV3G9EBWfH+4W7rsX7Bkg3O4
         qXjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=CzqGTYDUie5SurN5/gfV37QSqlTZtJhIqYh57XXY9vc=;
        b=fWpoJ7rOBJt84h5jevOioLnlhCUn4vOiuZV/hds6evbJryVjxlW9HkIYrrfOoEwoDD
         efjZaz4V3r33SlHg7i4+OqkwHjgO0XoVbaOuV9nBpY7R6r5x7uC76n3CpSK1sT4N6FEU
         HFjwPSFpt8UnkxQF2T62ohHkTcpDfSHJPJP7DNg2k6/T2RkCusbUOQJhyBzIt6chgtg9
         4rE3nTW8hOcAAv8PcTvA4BrpAFH3MNHckeNsOWF0507p5TczXceGXz7aiuVTaCQA/JE+
         IGcDtHaQ2mF0SogBVe4L2OjRIBlK8HZgz8QStiSElio/KB7avpexaRoMGTqSvxVhs+dt
         5AEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=1RPNxtfr;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id 125si112808wmc.1.2021.12.06.14.51.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:37 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210748.737904583@linutronix.de>
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
Subject: [patch V2 21/31] soc: ti: ti_sci_inta_msi: Rework MSI descriptor allocation
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:36 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=1RPNxtfr;       dkim=neutral
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

Protect the allocation properly and use the core allocation and free
mechanism.

No functional change intended.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/soc/ti/ti_sci_inta_msi.c |   71 +++++++++++++--------------------------
 1 file changed, 25 insertions(+), 46 deletions(-)

--- a/drivers/soc/ti/ti_sci_inta_msi.c
+++ b/drivers/soc/ti/ti_sci_inta_msi.c
@@ -51,6 +51,7 @@ struct irq_domain *ti_sci_inta_msi_creat
 	struct irq_domain *domain;
 
 	ti_sci_inta_msi_update_chip_ops(info);
+	info->flags |= MSI_FLAG_FREE_MSI_DESCS;
 
 	domain = msi_create_irq_domain(fwnode, info, parent);
 	if (domain)
@@ -60,50 +61,31 @@ struct irq_domain *ti_sci_inta_msi_creat
 }
 EXPORT_SYMBOL_GPL(ti_sci_inta_msi_create_irq_domain);
 
-static void ti_sci_inta_msi_free_descs(struct device *dev)
-{
-	struct msi_desc *desc, *tmp;
-
-	list_for_each_entry_safe(desc, tmp, dev_to_msi_list(dev), list) {
-		list_del(&desc->list);
-		free_msi_entry(desc);
-	}
-}
-
 static int ti_sci_inta_msi_alloc_descs(struct device *dev,
 				       struct ti_sci_resource *res)
 {
-	struct msi_desc *msi_desc;
+	struct msi_desc msi_desc;
 	int set, i, count = 0;
 
+	memset(&msi_desc, 0, sizeof(msi_desc));
+
 	for (set = 0; set < res->sets; set++) {
-		for (i = 0; i < res->desc[set].num; i++) {
-			msi_desc = alloc_msi_entry(dev, 1, NULL);
-			if (!msi_desc) {
-				ti_sci_inta_msi_free_descs(dev);
-				return -ENOMEM;
-			}
-
-			msi_desc->msi_index = res->desc[set].start + i;
-			INIT_LIST_HEAD(&msi_desc->list);
-			list_add_tail(&msi_desc->list, dev_to_msi_list(dev));
-			count++;
+		for (i = 0; i < res->desc[set].num; i++, count++) {
+			msi_desc.msi_index = res->desc[set].start + i;
+			if (msi_add_msi_desc(dev, &msi_desc))
+				goto fail;
 		}
-		for (i = 0; i < res->desc[set].num_sec; i++) {
-			msi_desc = alloc_msi_entry(dev, 1, NULL);
-			if (!msi_desc) {
-				ti_sci_inta_msi_free_descs(dev);
-				return -ENOMEM;
-			}
-
-			msi_desc->msi_index = res->desc[set].start_sec + i;
-			INIT_LIST_HEAD(&msi_desc->list);
-			list_add_tail(&msi_desc->list, dev_to_msi_list(dev));
-			count++;
+
+		for (i = 0; i < res->desc[set].num_sec; i++, count++) {
+			msi_desc.msi_index = res->desc[set].start_sec + i;
+			if (msi_add_msi_desc(dev, &msi_desc))
+				goto fail;
 		}
 	}
-
 	return count;
+fail:
+	msi_free_msi_descs(dev);
+	return -ENOMEM;
 }
 
 int ti_sci_inta_msi_domain_alloc_irqs(struct device *dev,
@@ -124,20 +106,18 @@ int ti_sci_inta_msi_domain_alloc_irqs(st
 	if (ret)
 		return ret;
 
+	msi_lock_descs(dev);
 	nvec = ti_sci_inta_msi_alloc_descs(dev, res);
-	if (nvec <= 0)
-		return nvec;
-
-	ret = msi_domain_alloc_irqs(msi_domain, dev, nvec);
-	if (ret) {
-		dev_err(dev, "Failed to allocate IRQs %d\n", ret);
-		goto cleanup;
+	if (nvec <= 0) {
+		ret = nvec;
+		goto unlock;
 	}
 
-	return 0;
-
-cleanup:
-	ti_sci_inta_msi_free_descs(&pdev->dev);
+	ret = msi_domain_alloc_irqs_descs_locked(msi_domain, dev, nvec);
+	if (ret)
+		dev_err(dev, "Failed to allocate IRQs %d\n", ret);
+unlock:
+	msi_unlock_descs(dev);
 	return ret;
 }
 EXPORT_SYMBOL_GPL(ti_sci_inta_msi_domain_alloc_irqs);
@@ -145,6 +125,5 @@ EXPORT_SYMBOL_GPL(ti_sci_inta_msi_domain
 void ti_sci_inta_msi_domain_free_irqs(struct device *dev)
 {
 	msi_domain_free_irqs(dev->msi.domain, dev);
-	ti_sci_inta_msi_free_descs(dev);
 }
 EXPORT_SYMBOL_GPL(ti_sci_inta_msi_domain_free_irqs);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.737904583%40linutronix.de.
