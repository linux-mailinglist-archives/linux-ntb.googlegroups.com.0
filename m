Return-Path: <linux-ntb+bncBDAMN6NI5EERB7FHXKGQMGQEH5Z2H2I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F2B46AD5F
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:41 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id o18-20020a05600c511200b00332fa17a02esf482960wms.5
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831101; cv=pass;
        d=google.com; s=arc-20160816;
        b=PhhwBgPX1yZUH28+jdXrOql85EKBhYTYukbQRxQ8gUYAGxiTiNGT+Y2XrZUCRtcxHT
         AGM39JEKnWQvqYBD1lXcyDVkuxa1rS05FlFRrxLFr6y52I1mbjz9vfCaJfmWUzHhWXpo
         ALt0PjVuPBC3lDjf9j4+VJmzILVGdXImcqSNNRo7bnJQZDMg/1gJDiK4wUqcwGXm9396
         J+sEFHcTSF9DmKjzueFTnH5J9v4vJ+MlmuV8emvlqc0l2y7E/KTOlJrgqZG50FunnrbX
         N1VMl3CP7+qjNx5BtfRoUMt/0SldlZKJcuMgVlf291h2LQ5Lu4yzC5AnY9tRkS0vGwzV
         BlOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=fpyt0YToDst8I0CcjI4/hoyBKotRW8LAMQm8v5ZWn6Q=;
        b=UBK4o6tLVt5miebU6ILAhLyHTg9ET4WZLPEhBp16JLu6LtKHRHCnXgC9ne6DZT2QV3
         TduXK6em2BWsGoJENbH4JvvYodPvbWyT68CvyX0i5ZzZVn4KTsawpmlEpUBVQm9ohnV+
         x3Ldny1F/6hMJ9mHSg4N8MZq500t2BZf5ta6CRDDl9QIAqlUQvGukX/S6AVCVEiADF4u
         njNFSYKenTXaW6JEP+3HNYHXhePMiu71y184l8h6YDGRbWp9h/G6SKac+HS8A0ORA0qo
         zyJ/g4jf7j7jx7lBGUK/OMOnnIvQVtWoDtgxnQXnNQRXfsSBA3yfzxaFm9JBJS6WW5aQ
         Osvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=tkf6bcVZ;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpyt0YToDst8I0CcjI4/hoyBKotRW8LAMQm8v5ZWn6Q=;
        b=TnAcXPGrNwNpdB2zPS7/zSzw4S43NCnfQ9iR3jNcKqwE8L8gs7uclSoF5ey+OXUwoX
         q724I/wCXDZK0sUGOvFdneVcti7xrZqAsMiMPv/59dWJ+mVja/5HxGoF0XAJUzlKXF9H
         h7aV05xbD0Rp4X61HHLfX+P+c0lfIfDxjjW9lyepHvcnqh+7sjdQ891M7uyzJRDq4wuJ
         h3N2DLMzpKbE5bwE5ff9ymnmadntcy56SEVypFVkl2M97naPLdNMBkL3z7si4HWQipiE
         mEYo1mRn5jieXYlFPqw53G1f+Dii6O9A6TTmxvZouuG6dMzaddwn6XwI5hiU9E+/9Yi4
         F/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpyt0YToDst8I0CcjI4/hoyBKotRW8LAMQm8v5ZWn6Q=;
        b=D2ng0y0boWE3olP1ltk4qnEDJ4Xm1ChtGQVfSVdFfHspKt8dIIA5lbqu9vSf5RCYWr
         qJZ/b3FKulQ8er9kzBejNJ3SjF+jq3WuVK9a3WzRstrvUgvj8CQ0hlRsIAJ2K2Rl4QV1
         rmegoDxOXtUn2NnN40xppT1TQDKT+F+npFPcXuJi9qGm/aF9/UbjbQwcoQXeL0BsmMPo
         n9JNFEvLru5xPNyuJJAy98frxFFbLfR2z+fW6EnH96Qrs9RJELbWKuHp9Rjfil7TxO3H
         eustdpE+082vz3jtUXFSvDaGVACJZpd3YYar309qkYxo+//DNPJKqsDZdetlVPAA5aUb
         ULEg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532WdU+mnJ/IPjQCgMWMWM1qqJoik+8xe5J+dex2k8s6hemFT7fA
	nO65mQw05h4vdHLHG9sVlKU=
X-Google-Smtp-Source: ABdhPJyAYnz2OyhnZ9vQuloDOaw5LEcCIsknPywYggYIUsQxj6ZUDlC/B1TsMsuD1vfj40uwx5t3vw==
X-Received: by 2002:a1c:98ca:: with SMTP id a193mr1928028wme.162.1638831100924;
        Mon, 06 Dec 2021 14:51:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:4092:: with SMTP id o18ls1274982wrp.1.gmail; Mon, 06 Dec
 2021 14:51:40 -0800 (PST)
X-Received: by 2002:adf:f907:: with SMTP id b7mr46087420wrr.5.1638831100241;
        Mon, 06 Dec 2021 14:51:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831100; cv=none;
        d=google.com; s=arc-20160816;
        b=qGtMJOwCkbsxfSmRal2ym2AEZuvIL+AWXx+/ti/CArccEvr04t4b5cEiFFIXwKN/iX
         PvCJK6D4WlwVITn6wovl8n/iUpfeDSIvESZMXW7p8Sn4T2tHShhoMfw5r61yxTVMxUgM
         hk66BHcXYbMTnARET3ZtMwf3E6DciBFfM43Zwk5FghkRDeLHDFW5ZLnZ8zA/DL9hmeZj
         jwNmUW5iEp8ZVzFPk01PS9DNOb5qRkpIpA5/oZdMDSwxlG8x0F8HrC+A9u6BOQliHIg9
         wLBO4PzfYrkjrx/vmAjAxIeQCm4U2ugBnFHQKHx66kMr5J297o6hlTeWZp52DVHMhQHs
         N1gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=BUH8kO9WlotKw1Jm4iAVN62jvoEejpolEUEH0KsFyqY=;
        b=FEdoC2I5igLd8eq9bJRCRs16+F3eKb+aL5CxliwMfDaqYN9H08EpG9u92LmzkO0B6Q
         6vzq9RJFzAtKcM5oXieZZwVlzAxeTizSMONG1zow1zIZzR4EJ2SHj3fIAlX01wLzfmNd
         silkJrkTnVHgWYp3r9ZK/MuMoSt6EbTsvNuHXQ8t5IY5Ovj+rAmGnYCnywYa7VyOWPGq
         kxSlqsHzHrWYBRq42AxccWI5fSxpJjqmNwlSiiWpNdWu8qFiqW6dtafoNY2XdXBpfSAN
         guJ8kUFqrQJlAPJL7DoymI19wJwVVL0xq4zQbK28Z7dytb79ktwIlUcIHWGFEwU+O8yP
         YNzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=tkf6bcVZ;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o29si156076wms.1.2021.12.06.14.51.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:40 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210748.847219474@linutronix.de>
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
Subject: [patch V2 23/31] bus: fsl-mc-msi: Simplify MSI descriptor handling
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:39 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=tkf6bcVZ;       dkim=neutral
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

Let the MSI irq domain code handle descriptor allocation and free.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/bus/fsl-mc/fsl-mc-msi.c |   61 ++--------------------------------------
 1 file changed, 4 insertions(+), 57 deletions(-)

--- a/drivers/bus/fsl-mc/fsl-mc-msi.c
+++ b/drivers/bus/fsl-mc/fsl-mc-msi.c
@@ -170,6 +170,7 @@ struct irq_domain *fsl_mc_msi_create_irq
 		fsl_mc_msi_update_dom_ops(info);
 	if (info->flags & MSI_FLAG_USE_DEF_CHIP_OPS)
 		fsl_mc_msi_update_chip_ops(info);
+	info->flags |= MSI_FLAG_ALLOC_SIMPLE_MSI_DESCS | MSI_FLAG_FREE_MSI_DESCS;
 
 	domain = msi_create_irq_domain(fwnode, info, parent);
 	if (domain)
@@ -210,45 +211,7 @@ struct irq_domain *fsl_mc_find_msi_domai
 	return msi_domain;
 }
 
-static void fsl_mc_msi_free_descs(struct device *dev)
-{
-	struct msi_desc *desc, *tmp;
-
-	list_for_each_entry_safe(desc, tmp, dev_to_msi_list(dev), list) {
-		list_del(&desc->list);
-		free_msi_entry(desc);
-	}
-}
-
-static int fsl_mc_msi_alloc_descs(struct device *dev, unsigned int irq_count)
-
-{
-	unsigned int i;
-	int error;
-	struct msi_desc *msi_desc;
-
-	for (i = 0; i < irq_count; i++) {
-		msi_desc = alloc_msi_entry(dev, 1, NULL);
-		if (!msi_desc) {
-			dev_err(dev, "Failed to allocate msi entry\n");
-			error = -ENOMEM;
-			goto cleanup_msi_descs;
-		}
-
-		msi_desc->msi_index = i;
-		INIT_LIST_HEAD(&msi_desc->list);
-		list_add_tail(&msi_desc->list, dev_to_msi_list(dev));
-	}
-
-	return 0;
-
-cleanup_msi_descs:
-	fsl_mc_msi_free_descs(dev);
-	return error;
-}
-
-int fsl_mc_msi_domain_alloc_irqs(struct device *dev,
-				 unsigned int irq_count)
+int fsl_mc_msi_domain_alloc_irqs(struct device *dev,  unsigned int irq_count)
 {
 	struct irq_domain *msi_domain;
 	int error;
@@ -261,28 +224,17 @@ int fsl_mc_msi_domain_alloc_irqs(struct
 	if (error)
 		return error;
 
-	if (!list_empty(dev_to_msi_list(dev)))
+	if (msi_first_desc(dev, MSI_DESC_ALL))
 		return -EINVAL;
 
-	error = fsl_mc_msi_alloc_descs(dev, irq_count);
-	if (error < 0)
-		return error;
-
 	/*
 	 * NOTE: Calling this function will trigger the invocation of the
 	 * its_fsl_mc_msi_prepare() callback
 	 */
 	error = msi_domain_alloc_irqs(msi_domain, dev, irq_count);
 
-	if (error) {
+	if (error)
 		dev_err(dev, "Failed to allocate IRQs\n");
-		goto cleanup_msi_descs;
-	}
-
-	return 0;
-
-cleanup_msi_descs:
-	fsl_mc_msi_free_descs(dev);
 	return error;
 }
 
@@ -295,9 +247,4 @@ void fsl_mc_msi_domain_free_irqs(struct
 		return;
 
 	msi_domain_free_irqs(msi_domain, dev);
-
-	if (list_empty(dev_to_msi_list(dev)))
-		return;
-
-	fsl_mc_msi_free_descs(dev);
 }

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.847219474%40linutronix.de.
