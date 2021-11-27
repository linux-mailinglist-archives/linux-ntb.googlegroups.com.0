Return-Path: <linux-ntb+bncBDAMN6NI5EERBOERQ2GQMGQEB6TKFVQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 3054045F97A
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:09 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id bm27-20020a0568081a9b00b002bd445624cdsf7078239oib.11
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976248; cv=pass;
        d=google.com; s=arc-20160816;
        b=XSwpZFiRtfECVPn1DVXxen5ZydT4qBK6WPe0v2AQA8K/dJiQ2Mgj0m6vtu2eqOGRu7
         vTlGTlOsB7OAMTSZMuE3uHToi07f6lvGRPux6hKSMyBj7H/xZvdQZKRpZ9zZj2mIKgTv
         mXR5fkgio+jStO9kyglt49Lw4afSL43Nzqd/OslJO+79mGsOapOgNHXuhwmbDfczLUOT
         QQgKTrsCC5fB/xxxIeTda2JNf+ruEqJuF+QRs8LR1BsyAKgKqoPtaaC4+l7VoIMzmZS6
         n1JRzlierIl2b/6k6FwpQ9i7GoN2Xg/4yFsOKj1FA9F0n3KOkvlprbp+6W155NQwF4Us
         ODLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=XBlA9ujgnITxvTPFTtFMNr/7HYeAWa9Vjr8INIT2HJ0=;
        b=BpqxI20JgaftkPyN/V/d71xaS/T8bsRw1prW36aKG7ozOclzK1O09PWDVnlQkDDvSW
         0YlELox1Wxemm8msog+gYn4+xkkNtuoMinrgNY51vRPqZyhiHVtWbVnrdCXXsXIyPZdD
         XQvpk9MVrnIvhVY8zDL4aA40DL2gwTIUNuSerdsgS7Z6lbbCF9Hr5I9TbIQsWy9MkGnX
         YkAKX+g21YnoTGKAIpmYLcAjhNC6fOdNokTmtN69GofzJLf2q5gcs5mN9zuYzuD9acz8
         h8FPlDiELOGdH/ZVJQn1xKkXBkIMlPt3SxuVRtX1zTShTwhF6UR3QzCDrJDkdrGADraD
         qGtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=jVjP6wT1;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=r370dFtZ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBlA9ujgnITxvTPFTtFMNr/7HYeAWa9Vjr8INIT2HJ0=;
        b=fmZf8ONClXhIqkg9UIjEyJ+gchW3rU4jx+98UiigTZhtB2y1tVMs+aBlTPHMyAP+nJ
         1Pb5h70VzH/no+0fK+kPmPMXNLceji4cPWSi+ZF/ttN+gROG3AQvxOM21huTNjqUdndz
         lgII5dPtIQVVwoX2p1oyqVqAVKWTpXLyknVal1xLgKFb4uXGxd7u2oKaXGJV0mA3hHFa
         8qK1XITKrLe1bpehPiZz96Jezjlzsy7vCEt0hUK+2uz2FeRdjOIrWEman2+jXhDj3oHV
         ILxGgrWEomcfDuLaNJipUrI1nrzsMeUHtzvfMzqZ/Ezrcg34cVk/g3M61mV0lVsivGtY
         w23g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBlA9ujgnITxvTPFTtFMNr/7HYeAWa9Vjr8INIT2HJ0=;
        b=x8su+9rWvrnxs6ZKK/H6BgAKyFOHUOOAGVyONo97/XMunnq/ej12xN+uNsDgUGfufq
         u8OWToAiH+Q3YwCN4sHKA08ShsIIWJQ9lfHVae8JsAHxgLLiE0AGYygFlvGNtWUKD5fN
         71wVsvtw0qojvaJDQy+2uepTGWV7QqfIZcNQ+70xKDn7ceKkkO9Y2oLwcFqbnLBEJ52V
         EMR/1vrdliKcWosySC7452AjlmsJyfIB4ksBwD3GWCst7fjkVBuJ9DsKKV4uNy8W2ru1
         jMTUaRKMHfT+AccwVlPxzh1uFOAiK8num3ZxrwvA6qi2Z8wMhYp1L7JrtsNM9AapRboE
         5H9g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533sn8Xz+/mY/s+HLv8Kv/2xb1quQMrsMuAlZobKbT/tT1Czj6rI
	WQyZOTYK1Gs5h024NRx5hH4=
X-Google-Smtp-Source: ABdhPJwwtnfulX4RXvxeaE1c6zzwe1aRSmnrlLYj1Vcdi2iZ2Sfq4J2vFNc1SWGQgxZerg9mtBQcqA==
X-Received: by 2002:a9d:2085:: with SMTP id x5mr31982998ota.228.1637976248168;
        Fri, 26 Nov 2021 17:24:08 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:4c94:: with SMTP id a142ls515905oob.7.gmail; Fri, 26 Nov
 2021 17:24:07 -0800 (PST)
X-Received: by 2002:a4a:a389:: with SMTP id s9mr22516380ool.4.1637976247883;
        Fri, 26 Nov 2021 17:24:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976247; cv=none;
        d=google.com; s=arc-20160816;
        b=KSyDhT/4d1K5/xqYzo3LGhzbfwyAoxId6GXts5/7NZVg28XzeVxVW/zwLDfhAcojyS
         yN/I7FPJjV5X7XjnPvixDdbtCs2Wd4myX488VlRutjHE0P3ughPH2njUIB80etGhhs6e
         YaZqGLAuEJ6hieArWfDqegw+/MDZYp+WBEBEntnulJpe8+Ig80HlYPnRpY2PnjHEwfai
         LVtR/I8UBdpyVCvlLIRiFoxt+4dqIXXu+lI8+pFtWz51r5jcoOuM4ELWYwXNAOrSUnLE
         /fK8x1YVZWP/YA87kuAv/oIQ/6pnlZlj0rqZrFWgqLn/VCVGL4dYi+bHucRWl5RXgtQI
         E2iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=pofZ6QZSw9wxKST9VxfsCsQBNhHIUiM1COkp0ds7QyE=;
        b=qT25dhPbLHKXdWRlOomXXpOcuAedNvYKxOAFECZksA/SMl9kYmjUfelexRQrUABfmc
         OlPzHUAiP2tkUqXwQ8YYfP8wiBnz7I3IEhbho8y69SK5yrGfJv+NNhkYJ2E4x2BBaskX
         TPyyGZzGJ3MboFPFslrR+NKVy+GdJT04bZydoo9AkIJwQG3RoKjn6CVIh6rQRn3MFbcf
         Dy+Bwg/DfitnXtUm/034A71he8HG+C6eW1Zntz57MKwoyc/viyaWbJOvhW+kWPyko2Kf
         F0ieqgBXognmXSoYjNIH1g+oP01HwfLuSJ3E7mJFI2Z3qJJYb9MWCpiBbwRp3fa92u0W
         EDrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=jVjP6wT1;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=r370dFtZ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id h14si741319otk.4.2021.11.26.17.24.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:07 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.730257825@linutronix.de>
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
Subject: [patch 24/32] bus: fsl-mc-msi: Simplify MSI descriptor handling
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:06 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=jVjP6wT1;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=r370dFtZ;
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
+	if (msi_device_num_descs(dev))
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.730257825%40linutronix.de.
