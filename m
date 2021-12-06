Return-Path: <linux-ntb+bncBDAMN6NI5EERB4NHXKGQMGQEJ6XFCQY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B9746AD53
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:30 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id j71-20020a1c234a000000b00342f418ae7csf264456wmj.1
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831089; cv=pass;
        d=google.com; s=arc-20160816;
        b=e+/cO/AUMNGqf5pcx4XaSfYYiORR45Bo5Y7pnOO5uTPAGGqY/+shtAUviukSDDVlQJ
         d7yulmKQsaWLbXiTeD0yy7kKkh6tu14TX6jgiTNWl3ljHzERAd4/zkodLcSn3Wj4iN7i
         DlPr+Zvnvd8aqhbqpXhfan+PTrniNC8ZYtSWnUkRJ/4KmThpFFSAZpTlVzhWWGyX9w0V
         pgtI2VqaOBYqq1B2fnn4Am/D/HqoYgc+qB0buuUi3LavEDrYJuOfKphaSwEQPyfYb7u5
         BxmGDQBTDHEOtc3pSj6pCCNwlGTyoMPC17kI72nstBUDlE+Q7Q3ESjWSPSw+pgfARN//
         HjQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=Yula3hMNg+oJERBpvr20HmaOZ37AURjegf/ZmMyc2WE=;
        b=cU5NRESo7hxd3bl36y1dKHjNWpWAQzmePHvvhEjidwH9UfrSHbjNQ905zixvtzkSKd
         0PaeuXJ4gXql5Wq9hoRyZLll8+jNPezJhlaqSc85NJBTtBkjGNkgrzjC1qR95WITac+M
         PeEJs/DDeEmK6AmWyDYPaTgCELL+oJ9/1Fik7qnplhaqxM9ZVrcyxNCzJT+vA94x670s
         K3j5EOA2FJ5+0BbB4uFU31LZ4qVRxISRv+93NhA/+uGUCycPZWQfMJp+Z5tF13yMKNyD
         kK9LOWOFg7XADR1qE0XuCTaM9IPnBAKq8DUVh0e4/U8E3av8HxCKPwCAwW0IRDZHr7BT
         Za+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=h9HO3s1k;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yula3hMNg+oJERBpvr20HmaOZ37AURjegf/ZmMyc2WE=;
        b=XzyhXh3iiomAh4fWJXlPxalJZ/6dboZvpgEEltUwxkau8WSWBNamkcdD+fmahPvvw6
         W05vgFftJ4Z1lqmfOVRwIucaFAlKe887NvYUpUyZZiWjftqSOk3LiLZn5D/Dpgy9ZB+e
         V1fMknFOKn75GCr/zT+UTqA1PO4FpbUe+t+tMb8ZvIsKByneRuP2sahFJ8osir8cAW6e
         nQYk196nVRO0ljiq6ZHMmoyIpwtk0QfFJz2fEWq49DPEKPRoYfSvmRElx+PGA/w2PYoo
         wN1+KU/po24Hhcpicv4JjpZUPyaK08sArg3gt+VO5D6X9JDdC0M3f46WPjU5wadlpdEk
         I6dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yula3hMNg+oJERBpvr20HmaOZ37AURjegf/ZmMyc2WE=;
        b=WbJqyYV3mYBY4JAnlfWy1TKSCvo5e+hzgDhEkBK/Q1HYfLsDkd9IsIFuSxmB4uFzdj
         5VSN0HaBVf5QxmImoDp+dhRUa1TVbCyGzH31IRIseA0Z716AD5Z6U17iUj4VzAUx5g/i
         XFaEnZO0BF3qK2PncJWSTkonqf9escJnpt08thpdC6pXv80vbpD1SOv8bLvqUfdvGfc6
         oD/EakEjgf1bYgIpsC1kTauIzM9l40H1Z8tbrzfLOKys9s6TLS4sdDdMvDvYQfwmotRD
         8+y+YhfWT1zIAV7EimfbKVpwd3Lfdf6l6G+TNfXG3QCNYDNn4/ePPXUeRyxEpwLLjPkF
         recg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533EuN+YJ33TE1aD/mxu9Osyj6qDSVMQAbBqHlByoYyZJ7iGXJYj
	EMR6W6RzCPegEHTs7TVCvHg=
X-Google-Smtp-Source: ABdhPJwfU896CHIdmLt0JgwQd/HHArbtZfNzm9GkHBoGtEoIO/rHQNVgrpb6c2zYPIKIuYXISCpzaw==
X-Received: by 2002:a7b:c1cb:: with SMTP id a11mr1990922wmj.30.1638831089813;
        Mon, 06 Dec 2021 14:51:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:4092:: with SMTP id o18ls1274633wrp.1.gmail; Mon, 06 Dec
 2021 14:51:29 -0800 (PST)
X-Received: by 2002:a5d:4f12:: with SMTP id c18mr45172547wru.547.1638831089081;
        Mon, 06 Dec 2021 14:51:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831089; cv=none;
        d=google.com; s=arc-20160816;
        b=v8XSPdX7USfyq3PW1WvMscB/qwMGCsRGCQ04d6Ne9gZU2tn7cDMiGvG8vWkhGW6eMn
         yv6ic6ereXbmcCpCfdFnmgqA7XyMBIzbbug4zlvzR7eLJOCMe9ItfHxUtQ6/dPrdSaZA
         x9LBcHUC5md+uhnUB/jr3rBZCCJrx+zzqAC2rCpMR7XiGtdGPW6a5mc6NdDN2bAJMyO2
         jeGFvxGA11VtuUClyz7o6pXic8Ldt6YTvlm10EUBzKcQLxzEcOngCuqt/gZXXn3ID7pd
         aM/Ehzc+b5831VD2IUavlMVZhyrh0AHIIu0X5S88HdbVbYxVBIBnjcPafZx4V834mO07
         nSbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=rqnSsBxgLRUZrf8NprfQGM3zrSARm5hvHEZd8TZTvDo=;
        b=Ise8InfYUClPyoBRvLcDy0EaDB1JQidmT1xkaegOcfX9jrLHQqlEMRqConenPW5sw1
         rBnfowQoa+8ObqU8LW98OaFRVIom7D9CUJUVLedFepH65UGVwg995lnRwZzVbe4rOKrM
         M3kbaKA+gouDJHseZcOc076ABVrq1zEs4333fqU/W1quRth89ZVJx22uNwtdMuXkBvf9
         Tne+Yf7p2bXSBdnB1RPttCK73TEJjMiYoJ5EzrV+/JGPjMmyovIPcA7DQY/+Z0Wv4DO0
         f6QKu6yMvfrsLrbW6wlEvXYtldrJr2mZb1BPeX5pcu0Fhgpm827AG4jXLHJy2E49NLgQ
         XIrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=h9HO3s1k;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o19si135173wme.2.2021.12.06.14.51.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:29 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210748.468512783@linutronix.de>
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
Subject: [patch V2 16/31] powerpc/pasemi/msi: Convert to msi_on_each_dec()
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:28 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=h9HO3s1k;       dkim=neutral
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.468512783%40linutronix.de.
