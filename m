Return-Path: <linux-ntb+bncBDAMN6NI5EERBLMRQ2GQMGQEVIDK4DQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1B245F960
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:58 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id k10-20020ab059ca000000b002e631c340b0sf7393581uad.5
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976237; cv=pass;
        d=google.com; s=arc-20160816;
        b=scFTj68JmMcwje27j/YEGF0tPaQpJWuxIVcpY0w4B0g9l5OQMXSjLX6dtieDi77Zuo
         ZLuF6tlmtqQaDcj/mYEc5iOAlOVijk4p2KLCtFGgilYm5aAIYdjLLbqK5o6fHe3MVPlJ
         ua9VGaC9GlaaJrjS/NiIPTFof/SBxzmj13ju+CyhqQ/aDWMcqIy+YCVCRtxzU/nvLDj1
         z3qRPcJN/qf0OdiglYhJfRTwm5hUP/8YlEP06gHJrk9/2NKaWfEEGfzQjDmHwGuy2g4S
         qczenGXkz8X/XrzldHK56bgKqJi2r8dgOBe9VnoPPf/2Y6xyRGP3r2cfq9YUWAnHxIxR
         yueA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=RP74fLnrY12R6mihINj37WI+3kQkdEJA9AiXBDOck+4=;
        b=tuE+ubTB7ZY4cqnIA/cxHHojO4sdK/HBFVwrVfoKjRrERNyxSdDp2TEMsSh/uMQpx7
         LtYhYfrUGW5YYwNTUi6BWu0/9WLvVCvXu12Vi4phZfYoVYyfcbU83l8SqFVdWSOrHMph
         Hq+hv8vleSNIFCjPBrgnf5e24A5QTM3lLe+cJLLv1x9vA/e+2CrO+vzwA5ONMK6KtjzI
         c2dZ7F/SdBxtpJJwuJFoRfFURwrxumg9vVgsavXoUCMtlIGE2SYhoIWaMPTgLqc+q+Dx
         hCGxic7KzJ3dbMu+QB7wBGrsywa3nERMeF+P6ziCIIp1wgPZWVrIFjEXc3EE2l/J+aRI
         5RdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=lqUjDQ9I;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=JlcJ7UyS;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RP74fLnrY12R6mihINj37WI+3kQkdEJA9AiXBDOck+4=;
        b=sodJSAoXpVDsT1BLLLnAVHeM58PaZtxX5JcL+GzLj7110J2TR8UjsDDfQ6woBjizUr
         euin63uAs/PkqzlykzNirtyoGktZ/qWGD5IlIJjwhToAgUSAJBusuPpzwCztV5o/kDZd
         lqNao221OBJ0mPltPBOZfOixqmF3YMPic2Rp1fofswPSJCGSd8NAe2viawsqsOb5f339
         BP3IBcx5l6d+0ORAdDNO9hQ+eh0jWedbKFpWHasJJ2SNRNbaIs9kTMZiiHuEVAXf+8Wq
         lNeJyGaCTYNPBr9mz+QVLL134CbajPoe3yNU7ia8MhAQG8KFynaBE82ssEgOaskc473V
         3O6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RP74fLnrY12R6mihINj37WI+3kQkdEJA9AiXBDOck+4=;
        b=3U/L0BU2wvOr93svpCwgvECoQ6wuOs/47rewK8MioSlRlSWcaZ9e2WXpIXychaGQRO
         aHys4LEetQUqy7EV0wYkEBktQL7ZLIt+zt8NiBVpkX/EWWpcsm+Zx1UmReSbf7NCpjAK
         MpX7BdbV3VYseheeL5mI9vb6Ohn6ehZPaCQyOrEbSyKncvNoaqZBLXcx+l9FtJi3iswM
         dgd8kzg5GvjvSBnvwgPKG4e1p3IfLVgvSyK6MoxbJ3d1wuAez+5U85Xvsk/OOYqHNaNX
         G5o7aDtQYaFWPAKl0lCChNoX3pXATso3trIpp49o44Fn7luS3g94qHiFBYQL3PY7+oui
         YHJw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532ZhxaHOc88uyjE+mBIN15EnEidis29uxZiYc2zfOQq71psfOoX
	UYKwjmOK0FXwjb0BitVQI+s=
X-Google-Smtp-Source: ABdhPJwT8XANw43+2MTuH2Y7xGbBtRrIewySN0h85BwRJGUubwBI0dG33BiA9zF+Gpm9oYpLs0t/wQ==
X-Received: by 2002:a1f:24d5:: with SMTP id k204mr19048768vkk.36.1637976237399;
        Fri, 26 Nov 2021 17:23:57 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:43cd:: with SMTP id q196ls1410769vka.2.gmail; Fri, 26
 Nov 2021 17:23:57 -0800 (PST)
X-Received: by 2002:a05:6122:50e:: with SMTP id x14mr24246757vko.7.1637976237008;
        Fri, 26 Nov 2021 17:23:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976237; cv=none;
        d=google.com; s=arc-20160816;
        b=T/wwLL3BWJBul9LvbvZg4kyC15pq+g1brgnVs7K/gtVOjoyyAWj+/SKQp11Jnaqsqs
         ogeR9iXOGRg/+S00pwbnzwrJxs8tdLVz76If4c8ahgqWae4ubdOkF/RaK4nbP0mraGJ+
         HcUL2digZ+yewVZGD7DwmvUrswwiCOLRYkHKYK0z2ScPN8M2VP7mKNipEnPTU+ha/RYC
         s7YIUlH6quo4x/5+pvc22YVE9327SWOFuek1oWZsX50+IL+qhHxwxTJIcUqmgCtGPrl1
         Sczd6MTbBeoYdbqZRm/8UkiI80/Aze4XOJk778Iqx+iU9BLmGCjVmcW0rtHTc0hDPxfc
         JZLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=rqnSsBxgLRUZrf8NprfQGM3zrSARm5hvHEZd8TZTvDo=;
        b=D4bLrdoviGwijCbCz4ncSNN8PP+rNxRnOePM+XQq+Mr8cd3wWyk/20nZD+LLQaqeVm
         Fgyooi1wUo6jT0eHO2hYXAsWHV/3vEPFlj+VegWWB8pxvJFPtz1cHfx/wkmqeljMrDOk
         WSM1PtsIRFKtvtv6XGp0Cvq6Xqx2PesdHcE7ytCfkTAdKXKtCD2C/wMEbpe8csGmnFpy
         1MjTREkJ+l81m6fkjhpEGSgwCZc3Q/AJjS6gy/U/d4COpnaGbdpX8uMR18sjDbB1S0Ro
         3fO05BlXpmrZhi8wHFh+Nm5q+hMfGvNJcGaT6q1Q9/MJFnhjHqY8AxifeHdAc8DaTWtf
         H/pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=lqUjDQ9I;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=JlcJ7UyS;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id g8si1057059vsk.0.2021.11.26.17.23.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:56 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.309081709@linutronix.de>
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
Subject: [patch 17/32] powerpc/pasemi/msi: Convert to msi_on_each_dec()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:55 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=lqUjDQ9I;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=JlcJ7UyS;
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

Replace the about to vanish iterators and make use of the filtering.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 arch/powerpc/platforms/pasemi/msi.c |    9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

--- a/arch/powerpc/platforms/pasemi/msi.c
+++ b/arch/powerpc/platforms/pasemi/msi.c
@@ -62,17 +62,12 @@ static void pasemi_msi_teardown_msi_irqs
 
 	pr_debug("pasemi_msi_teardown_msi_irqs, pdev %p\n", pdev);
 
-	for_each_pci_msi_entry(entry, pdev) {
-		if (!entry->irq)
-			continue;
-
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_ASSOCIATED) {
 		hwirq = virq_to_hw(entry->irq);
 		irq_set_msi_desc(entry->irq, NULL);
 		irq_dispose_mapping(entry->irq);
 		msi_bitmap_free_hwirqs(&msi_mpic->msi_bitmap, hwirq, ALLOC_CHUNK);
 	}
-
-	return;
 }
 
 static int pasemi_msi_setup_msi_irqs(struct pci_dev *pdev, int nvec, int type)
@@ -90,7 +85,7 @@ static int pasemi_msi_setup_msi_irqs(str
 	msg.address_hi = 0;
 	msg.address_lo = PASEMI_MSI_ADDR;
 
-	for_each_pci_msi_entry(entry, pdev) {
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_NOTASSOCIATED) {
 		/* Allocate 16 interrupts for now, since that's the grouping for
 		 * affinity. This can be changed later if it turns out 32 is too
 		 * few MSIs for someone, but restrictions will apply to how the

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.309081709%40linutronix.de.
