Return-Path: <linux-ntb+bncBDAMN6NI5EERB64QQ2GQMGQEOODPTGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 652FE45F8F3
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:08 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id f79-20020a9d03d5000000b0055c7d2f07ffsf5093463otf.14
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976187; cv=pass;
        d=google.com; s=arc-20160816;
        b=xVhyvM6YqtUyWrSYJ8psCteP0r7Bb5d83U8QRN7iATIZ/vrIVAKU9EqJdN+C9aX77h
         nu+iyy6klsOjKjSpSn7wqxefTJwc28JcXa4wLleOAzs8AbhmP0bV29F6Vvw6iP4uTozs
         jsJo7XLwiguNz4WcD65kD4SCJFLN2WsvnQSnwYOxGt9D4N7KcV1fg7fhqUJQTLjNb/10
         nasY0nKXw0LTfoyvUa0Nb+m5+kfmXhhwU2YgL4UnIqqgAWla8/ZudamvOB3pN18jiaDs
         t4Adk5hF95Dal499l6NblIqFEEPs51ul9KrRBVVA3F768g44P+bVaO/I9l6ZrdOqt+xx
         yjRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=XBlA9ujgnITxvTPFTtFMNr/7HYeAWa9Vjr8INIT2HJ0=;
        b=xBRB3/vWxOPFhEbPtGssHVkHA6jRCVf5K8+ww65xTDR6DKmfz6/WutrQwZIZ3LpidO
         m7BCvnxNvm5rrMqEMyYd7KcWnc4ye7ugegBFRSS/DoxpIN7ZiJOCKg7wjkdk7KrRNtaC
         f/M1skXqPhVlomiWNcrVk1jfKlAMIxMYlUZCjK9QFcHBlESn6ZuoFE72knXhWl90GbG0
         FW/jzazS950qIY4FTAM4B6UaJStlZ76rn2HDsm0T2E4Jjy1Fqx4b3HsWhCIGiGOa0zGy
         7Oo5tpwU+4wWjLS1jmBj8uUtBoF7jsODi44srGRa7+5isnMAJU4Wns2jfLNugn/EMu6/
         1Tbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=JWLSw2uY;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=FEDQO1Dp;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBlA9ujgnITxvTPFTtFMNr/7HYeAWa9Vjr8INIT2HJ0=;
        b=eoaMfssVwMyEWXtNYhf80Ua/ib6uiwc0ae8z9U7t5esyKserAXtMz8O+VeoRRYtm0+
         /PWhTsmuVIwzY7fOdmhpq/Q372SWTU+XgMcgWPo+nizerq5Vz3vNe1CIp2k5xi4rwMCP
         54ZNZSfe3y/67yRqULzu13ejTGhXKrFwpoGNuJEdF1ByuamAU464GJMgtz8y5YGwIivm
         esMfuD5tO8IY++17H/IHwosN2ilXqAqqkPbUC4vbFn7AFgyZHdvjV9A9OJh9QhZcEaVm
         a3dPUku5WNLoznl2r1Jm1TeIR8PugRgaZ13mczkrj8/xByLz6QV7YhtOhZ3Z1+7kyOgN
         wjCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBlA9ujgnITxvTPFTtFMNr/7HYeAWa9Vjr8INIT2HJ0=;
        b=oyZ31pD5fyDMeYCjs1qiWbE1642OnfqMMsLhuaN6HTEzEkcDFCGU+N3nchJytnpJiZ
         P0ICCL10R9Jw0E7a64hxKXZjoEJ6Tbt2OmAG4JSRX7Y6vVpBA0uOftNmd8JXsgFcB/wF
         IdPmM+xWvpiKYBLv8pCH6x4NC1SjQ7N9JbFN7ZTRrPBXF8FZD7XvEXFPQKa7K+TWEAr9
         mIMXtZ8xlnFSqBHrDZXhP5ASvVwDb1tfilfGr/pc01WcUQLTEnuGz3zLRU57JV2nhW25
         SN9WQOhLymnJHgpQMXfmVhsaI9SPhvFYJPj8etgE9b7tmTkajQkdZuAiXz0vCFlAj2O6
         T/dg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533kl8bjmqGLWEQw93yEpPhgg8L0P9T99/RAc1oYrhqDmpmvUSPh
	b0V5IV90LJ75I7GTcRI3Zmo=
X-Google-Smtp-Source: ABdhPJwln+O6ScIYVFuXAcMNwvo9sWVOGHO0YGBX1dtgPtN736OA7OTifIf0smhqbktNYXwOjxFMIw==
X-Received: by 2002:a05:6808:1152:: with SMTP id u18mr27042320oiu.49.1637976187061;
        Fri, 26 Nov 2021 17:23:07 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:ded5:: with SMTP id v204ls2984760oig.10.gmail; Fri, 26
 Nov 2021 17:23:06 -0800 (PST)
X-Received: by 2002:a05:6808:f8e:: with SMTP id o14mr27170187oiw.33.1637976186742;
        Fri, 26 Nov 2021 17:23:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976186; cv=none;
        d=google.com; s=arc-20160816;
        b=zpDzXpxegkKopPFBjYhltxSkSXQ/iYUqyADpNJ4vOpBTIqDC9KB4ktUxTde9Tgv+Qs
         qPso8AgYebUa3HrjKAyUQ2XJxul8mRsMsnJQaMhOy6An3ioXdtdM/cqyuI47BrT96YlC
         UI2KfPke6mE929A8lLE1nLBoMkUeoET9z22C9TNCSftaYq1IZHtjVTc7INdBTRcUO7Xo
         ZhdR82bAYje8M0p3Kd6zY/LcKbXbcmJTCRofpbputkf8I8nY6RTyhgft27TW+2I1IB7Y
         S9T67RH7brbc3RmvY6rqWkhYy0BrsatDcmpq49Fkpir1dT3ddkFtv1yC6ptWO/9CuuYv
         XJhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=pofZ6QZSw9wxKST9VxfsCsQBNhHIUiM1COkp0ds7QyE=;
        b=rFrbbvvCfWQNyWcP5FyfQTLZOrBra3d7miRzUNX2sfQd4AoSDI4k/b1vvTv5U2dKkT
         tIjaLYUavSni+EJ2xj9V6UNhlgYnoAarpUt7fxkuO9n8yvUfxgiUNMJhGH/ZWAm/r2Xj
         KN7fSeCG4ZvzL5HsxAmCOoaA2Jli6549f5YIvbxxLcdBj6rTBZQrWNo7gCIXDSmMs1cQ
         DHwioXegKPVFkcisn8B81asUfBuShg0tiSXztfUsVpX/Om2URCZ2U8rghb1UGhf9k3pY
         EOJRn5FTnEYdj2oRQiZamZJyOb1eXO0jpbASDdM3PJKmcgTn87Gdhp/AvLgObXZ+1rVX
         /krA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=JWLSw2uY;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=FEDQO1Dp;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id ay24si1100426oob.1.2021.11.26.17.23.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:06 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:23:04 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=JWLSw2uY;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=FEDQO1Dp;
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
