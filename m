Return-Path: <linux-ntb+bncBDAMN6NI5EERB54QQ2GQMGQEZ2Q4OXY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAF645F8ED
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:04 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id kc26-20020a056214411a00b003cabea18f69sf10468882qvb.19
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976183; cv=pass;
        d=google.com; s=arc-20160816;
        b=ygazeY1MtBctPo3xgkHJH7VRufP58vwU7EwsX1zpcCoxPMVLxrHKwhchhtPOwB0RIF
         EHy3eLohuEXMW+fV+zPIT8ZqHhLjdRzEhRyA0euFlkX913pJxTmHeWeTK09ZBCDdQ1UT
         CQvzGqTSGz+Lh5bE/yfU23TcEqaNAc0LTkcv2Ih6egA14Lb5H0KHSS1wp3MDBt6tVyC4
         OXziydbaBz51gNNM1Z9S4JaKJc9U0cHXdpAD/ADa6nG7KAnueXMCXhgqFYhTf2SopIbT
         Bc6K87wCs9Mpy5nxNoeb0o6OSVBMPOnxHjem8DvSzqqw31XWXpw8FDBhf5KzAPvfQr6r
         oKxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=WSNdfZejlBwO4Wo7jFA9HFdT3KygSO5GEgbt1aj0YWM=;
        b=LGLBXCpLH5dUUvnzBCsjmq8UqORMQc//Y8NPkBhuuhETKlBUbMxQ0J2Ny74beSp5Yw
         D01uuDj4MGgoeKNnRpaFf42J27xuQpK6wsbwGLLkmQb0wvgd/XVdbr+jsZBVqTn4xWSe
         fTchwKoVVAHDNR7XVQhiaVee878AnLSxKm9k2zJeVMnV+YKFSmt2dcYZHFaTMkPtJyHJ
         fPoTW9jPdoYayUuZoEKWXSfT4J2uc79BTah5w0JcgYVkFDxm2xQYJjWoE6Zzc8CJXlb0
         WpHy7zpZmGEWCIybO/Q2ZxJ0OuY17tOCIYGgEJ8oZ0KFJ/szYFOCZDn7BiujsIAUAoZO
         PRiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="RrfF/pSZ";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WSNdfZejlBwO4Wo7jFA9HFdT3KygSO5GEgbt1aj0YWM=;
        b=GSvFKBZWJiHSIVZ9avQXVC0SIZnwtL/FbyGM+xkqwGUFeGJ2TJreWuaPn5lBzngTM1
         ZAEGW/jthOPNsA123Tv/9zLJ18x8h8j6VUvqyk8mHxHx+5qFHr5oX7y0YmyRZ5SRD6Qz
         vFprA08b/0G+q/pUxpni+71N86vYAn+NoShwvpkjjg3rKzXGfgjJ70Xia9L11x/daS7W
         4mtgTf7JOpPwTJh5TxRc1BYG8ZvLZbjRZep6Fjt8uksIVr9OibOPmSwtPNslI0xAXp5b
         ViT9pFvF6cAZLx0NCltE4IgasXQBAHpxMzl3bTVWHnnRwMWiIrJTBHv4blb5SDY4SMIm
         eNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WSNdfZejlBwO4Wo7jFA9HFdT3KygSO5GEgbt1aj0YWM=;
        b=AY8Y/l4tQNeEQWhoFJyk7znE90227AI6qHm4FybX0Vyh+ed+GytKq8mrKNOv3vpqJq
         QaSF0oiMzToXomBmE2h15G8/ZwQKZkY0XP9yMpggRg+VYaGIho5U5K/D5TOwp7m++Yh2
         niFqh2HsoXUqMzqIKIk9lcRTI9FnE9aAlfa0iAT6JP2BKKfAkFsJXvVbB9oYg0c+2y+N
         i7nGqEiOtgi+b/cxZmlgudxdq2KS8SbkYsRx2MF7GMDABTLwTWiBv7ZWkf9kUgcwXRIb
         PXZ+BObl+VHRFAFyk7l7ns4Q8nOC/ETgi3bT6apscB4gvF4AglptHDm1jRIk/lXwzT5k
         p6UQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530yuCNFvh/lnJYkOpG1R1HeIUiE2FX+AtzIhpbu5mYCZ0HBHNfA
	gdEITFdhR9uKI/7bpvzjpCU=
X-Google-Smtp-Source: ABdhPJwS1+dbiaqIbWlTe0Dktcqnb66ulPFpWLKohqXSN9osZoYZR84VfCE1/tLLZcZo3LZnaRRVSw==
X-Received: by 2002:ae9:ef0e:: with SMTP id d14mr17885774qkg.773.1637976183725;
        Fri, 26 Nov 2021 17:23:03 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:4048:: with SMTP id i8ls4552322qko.2.gmail; Fri, 26
 Nov 2021 17:23:03 -0800 (PST)
X-Received: by 2002:a05:620a:20da:: with SMTP id f26mr26070785qka.344.1637976183342;
        Fri, 26 Nov 2021 17:23:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976183; cv=none;
        d=google.com; s=arc-20160816;
        b=qHP4w5dPky3QqL6aTvLI1vjgL4C9D8o48tcV5smUijjD4DGwPYy8+yfs8h5pxqFs3I
         +DNWhvzu3VHhLTVcIcwILJONHNYuMyrgloM0ac+6EpX+Jou1ziSR/JuUBlanI0YDRVFs
         xd/tTIAn92PMDy9J+ehop4A74R+6nVZAjCLTNb3FmS8oH8GYP3bgL/h5+imhuHUH8wJQ
         WD/mo/mFAL3Yjk1nZAfueqrc08RO7N4uxaEc1pKipjValb+9OWZzZx2Gjgzb+kfBne+g
         gCpgSbIBljY60Zgx9ojc1c6F3uDpG+SvZhq4hfQrfNwUNX0ouYFM1QFZYDNDN0lnkFBI
         kf4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=CzqGTYDUie5SurN5/gfV37QSqlTZtJhIqYh57XXY9vc=;
        b=nN3XkomwGUnRChRrq8nXeA6Ijkg/YD5uXHjncHyebLUz5MEx6Qj9neBe1SZU/opxRL
         ou856ZNkykRVxibnz5ghjleu73/TvNhP+/+sZ84rJWkhC5cX/PHNl6aKOYrEt+667BZT
         G6r+9HwuH03d/9WNGfj9MR2G6jm0UhVbppZv73LHPF2TaR/Nr5O3UZCdY7xHnt4+vPHY
         Gg8zpOWK57XUbEmjx7enE5S1nFoYzY9Y+KG91Owxc0b49OxYzR3I8F9MjMJBTkRnFsCH
         xoY3gwuGtM3/sLyJ9onVZOmWExLJyCe+fZHC1MDOFe8pjK+wy/s4vCwFlz4rTgrNl0xr
         KcAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="RrfF/pSZ";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i18si956659qtx.0.2021.11.26.17.23.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:03 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.608092027@linutronix.de>
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
Subject: [patch 22/32] soc: ti: ti_sci_inta_msi: Rework MSI descriptor allocation
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:01 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="RrfF/pSZ";       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.608092027%40linutronix.de.
