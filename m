Return-Path: <linux-ntb+bncBDAMN6NI5EERBIURQ2GQMGQEA7VQCAQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB5145F948
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:47 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id w8-20020a0566022c0800b005dc06acea8dsf13389660iov.4
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976226; cv=pass;
        d=google.com; s=arc-20160816;
        b=hhvPgFFdfRshnd/lXsn5AqBr5I5RtSdk8L7SiOpqP2dLCmdC1/2mYRbiMmdNE5XjFI
         jpOpR/fiKGXqf4C3lfLQucXkTIn/2t9fPDANKkgDDeU4rvWdbxdlAn8IQX2ftUGTufmw
         uk+vdosTH16Mbp7mnJPL/EhFWCPp8NnCdcRw1Xx5qJaD49kytN3UipEtHN0kYrj+q9c2
         pDgRESOWEhnbu9WYqUyvSrJMH/yIMSU9e0lqLEHtbHQT6kx8mp4QmX4ZeV5Y1/h6KHcS
         /uDxFi7EIgc76c9vtZIsdtlJa939M9HfIxFnJsCI43TFRJgX4g6xQKKw7E8Dwa1TA/SV
         4YOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=4JxiRjZrzlekdyaNDX2huclwd2Ln1lcslGSH/+UU4ts=;
        b=UVsLTCKwJxwHKcrQcz+AOi9bGm1JdyftP+rRLhKTXCq29L4Hv24QWm2h7CcIArdbBi
         RqQ5hhfdF++/veQ42OdwDWiCe0diwt5KUnX4GZ8KmSLOCBcIDmKnKMzjaXJI4lBATANS
         aUWwNM9sltGZEyOhnQWq60Eaqfv7cHgf0/oyHCS/J/CLGdaNdDz18x3kMqSHjRo0V4NS
         rEy31LATLvP6g3NYJTlME8w6D2uYWI8vavNAis9/613CRbtxcUHUxWob713mRtc4WfwK
         qYJsfAkOJX8yNUosxCvvH5CDA/HrbHJtq24dueGU4PZXTuwsJliEgH73wSIyKgEiSWpI
         kqmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=40YviKYn;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4JxiRjZrzlekdyaNDX2huclwd2Ln1lcslGSH/+UU4ts=;
        b=KcsMUOlix6Y7V2MX33b2QHyoqVUINPI6llfyuBjMVnyHVuup728rambg8VLsVoSwrP
         /+c8mTdjjn9Qw6RKc9zU5YznimJPILfo4f4+tuMEWtxlD3Myj+PryhgkNvenIhGEVRWt
         +Pm3XGtFFSp60ChLsoQq2GKmW166bpGm5wcsRIkLd3bfhqyqmvr2fXBSBE0v8u9sfwhI
         bTP/17JDxS9aOmMpDotqdbqcpcp8HvBMFzqPsCg1kW3yKabq/Am3p1lXGkNr0ybRFjZx
         im5SVBNp9hdcvUL6NKyHrJ6Ap0AD7HsOuni4gxLkRgO7dKpgkvg5uBd7dJKraG3SYkr/
         jxJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4JxiRjZrzlekdyaNDX2huclwd2Ln1lcslGSH/+UU4ts=;
        b=AK8/Bgzmink/G/8hIRCN9sLYh6ht+n/Bz1DVKWeP3Xu3gE6AvF7uyom/8/wDBsGYid
         KlBuyKqk0S+pA1lWriogBUP9/NSComoEbQqs0wX9kV0wHKI+ZSqrOQG5ERKe+bTRkcBj
         djKf+xYbp9XNEOkj6bi1DuIfelIptuwX9976e+OXwodRdXq93Jmj0L/Bv27O534pID9C
         gSLTwQatWsX8rZRkbhGh+hbVnagQRdAaym513JZN33Sj1LgbBdvKE36FtYPxsEAcIDqb
         c9ZZ03gKdziPT5IJz0Io0SmOuBbr69Alv86NBB6SibMQe5yGXAMJjn4i8Fio3wLMkaal
         D7zg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5308b+bdgeEI4NddCTU/pEfjv7AvarujGp7NFHsKauiWwP6J4zEu
	OaKGZs4tH9wvzlkjjh1kcoY=
X-Google-Smtp-Source: ABdhPJywFECiLR0iQ9T7M+uUAcawmJlSJFYfKHS+vUVNYcZQ5/VYPPlorQUim/nv4ROGCrZYamTQxg==
X-Received: by 2002:a05:6602:2c46:: with SMTP id x6mr36685938iov.38.1637976226443;
        Fri, 26 Nov 2021 17:23:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:9d96:: with SMTP id ay22ls782740iob.10.gmail; Fri, 26
 Nov 2021 17:23:46 -0800 (PST)
X-Received: by 2002:a05:6602:1609:: with SMTP id x9mr42316469iow.209.1637976226191;
        Fri, 26 Nov 2021 17:23:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976226; cv=none;
        d=google.com; s=arc-20160816;
        b=OT5TkBy2BCwyKURerBCjaidnNCFMBtzfX4vK5/lDlnGRjsjZKPhGo0Q1MKyYEYCxNn
         PirWterqHItayXF5f5FBzBYXH2N5D+316ze8j75sAu/Vszc5eE3sxNSys9majUS1f/iq
         CV7LyAN2NzelKXq1pPWWywyicri++BKGXjCDtD6xYUHULcmuIVG2xojHjHiO5PFJP+y4
         0wgGVT7JeJ2s6cWOq/Aux/DhjgQKyoDvPIF6Fzbpc3ucW0/XFk9npzghLdNjqkOzhzYJ
         zLWvyXk4Gb71J5/dLX3lF4H5zXKaWSTknGZFIkVmYAlN0+CxHnRc0tZX2MmNvQ/I4tsS
         j7lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=iosGiYlhYBo//aWwbi8Bz/t2OkGIwccy2DoihzPp5zA=;
        b=sZgtwVY3jHL0Q8ql3pMIaxovEvo8KTPGO2f1GD7X/KhC20eBwV2/tKvf2wAIk83359
         t9HSseWsV1sbP+QeqrRfsggyrwWkxj93apREWL2/VJ2mcq1pkMoU9Amy25geAxz4ZD1D
         FL2I7mmkYGBCF82EnMOVKqdcvBrewNxjsAAWiAWKdHlTYoMa3SkLwX85XfsxzjEAzUZK
         C8hb+KHYixAPpFfDtJ9Dli41m++THDrAwDBr6yizXe2FSqNcv+A+/FBq4G1glBXoKKd6
         wUXK77rpjTYz0sp0rAE/y8bjI5dRm6Uspc166pOG0QvJU0yBlmI+yy8DPQAL5cOZKwVK
         i9Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=40YviKYn;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id h11si29645ila.4.2021.11.26.17.23.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:46 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232734.888679179@linutronix.de>
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
Subject: [patch 10/32] PCI/MSI: Let core code free MSI descriptors
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:44 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=40YviKYn;       dkim=neutral
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

Set the domain info flag which tells the core code to free the MSI
descriptors from msi_domain_free_irqs() and add an explicit call to the
core function into the legacy code.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/pci/msi/irqdomain.c |    3 ++-
 drivers/pci/msi/legacy.c    |    1 +
 drivers/pci/msi/msi.c       |   14 --------------
 3 files changed, 3 insertions(+), 15 deletions(-)

--- a/drivers/pci/msi/irqdomain.c
+++ b/drivers/pci/msi/irqdomain.c
@@ -171,7 +171,8 @@ struct irq_domain *pci_msi_create_irq_do
 	if (info->flags & MSI_FLAG_USE_DEF_CHIP_OPS)
 		pci_msi_domain_update_chip_ops(info);
 
-	info->flags |= MSI_FLAG_ACTIVATE_EARLY | MSI_FLAG_DEV_SYSFS;
+	info->flags |= MSI_FLAG_ACTIVATE_EARLY | MSI_FLAG_DEV_SYSFS |
+		       MSI_FLAG_FREE_MSI_DESCS;
 	if (IS_ENABLED(CONFIG_GENERIC_IRQ_RESERVATION_MODE))
 		info->flags |= MSI_FLAG_MUST_REACTIVATE;
 
--- a/drivers/pci/msi/legacy.c
+++ b/drivers/pci/msi/legacy.c
@@ -81,4 +81,5 @@ void pci_msi_legacy_teardown_msi_irqs(st
 {
 	msi_device_destroy_sysfs(&dev->dev);
 	arch_teardown_msi_irqs(dev);
+	msi_free_msi_descs(&dev->dev);
 }
--- a/drivers/pci/msi/msi.c
+++ b/drivers/pci/msi/msi.c
@@ -224,22 +224,8 @@ EXPORT_SYMBOL_GPL(pci_write_msi_msg);
 
 static void free_msi_irqs(struct pci_dev *dev)
 {
-	struct list_head *msi_list = dev_to_msi_list(&dev->dev);
-	struct msi_desc *entry, *tmp;
-	int i;
-
-	for_each_pci_msi_entry(entry, dev)
-		if (entry->irq)
-			for (i = 0; i < entry->nvec_used; i++)
-				BUG_ON(irq_has_action(entry->irq + i));
-
 	pci_msi_teardown_msi_irqs(dev);
 
-	list_for_each_entry_safe(entry, tmp, msi_list, list) {
-		list_del(&entry->list);
-		free_msi_entry(entry);
-	}
-
 	if (dev->msix_base) {
 		iounmap(dev->msix_base);
 		dev->msix_base = NULL;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.888679179%40linutronix.de.
