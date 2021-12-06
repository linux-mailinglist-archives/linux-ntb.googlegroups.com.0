Return-Path: <linux-ntb+bncBDAMN6NI5EERBZVHXKGQMGQE7DBOK3A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 5901646AD41
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:19 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id e5-20020ac25ca5000000b0041bf2d8f2e1sf2156941lfq.13
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831079; cv=pass;
        d=google.com; s=arc-20160816;
        b=WY9O2LJKUYh5AwxUL2DASAdrlPd+cM1hjLYAFiYL2r6GcW1kuwKXWE+1KTIvTMgOQW
         04zDaW+B/BsNZDRNzANeJh1UUSC3HvEQdjq5euDausOv9e2pfPwR0hJcTG75INfeNWrN
         4Lo8gUrnNKGRvQL6USPCs+sU5t7hsbtg7s3Jrh6IqjhOyhXJE9itvjvy+am04oi0Pk9W
         xyWl+HMIz05HP/sABetWkcnPbxkFlh97x1D/a8gKC/sibg+mV2903n/a7SCIBI6tRpFq
         hsChxurfvfyOFNd4OtpuKkb3iQsXiyHcEzXJ6g9laSijOmO5iQua1ZwTTrWdygx5wkBq
         dg3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=Y/jJKi0WHX4fOeVURVKEYr+eEnt+6V0SP5ExVKukB8Q=;
        b=G969fU90vL1RIm6IMedE/kyHekBZVL6GfxN35T/MW6OlkjqTLZ4s1KjXJqgm8BACUL
         toPFWaBaSj5lw1lpszDFealBiwufg6JbYXtQ1Fy4TBts9ADYOrOymZrtNn+vEDBxvaxI
         yfYH+yCZ898sZnYmVuotTwtqnMViDI18B4CKhGn9/d9un2VAxLpQOIJc8e2ehazQvSWN
         V8c25VmZA740NjhLsdXPQKlkQu1XZ4dK8V5aulz082NIc2DfNsm8VgTApb2MxPfqq1k9
         Kewj2lDgIxrOXt4o/WfyK+b7acafDzc2SyAqA+2sCY2x6WU9sEXpQ5xxJubcLYRsdsXH
         lgZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=yAGXeCWb;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y/jJKi0WHX4fOeVURVKEYr+eEnt+6V0SP5ExVKukB8Q=;
        b=Vzs+TttgFMG46Sox/x0gXLe6hIAl7DU3uVJOBVPIi+Ru+7ihDpUtPSDImA1ua2z6Xw
         UCGDcKn5MYQ8Yys2HCkb+NtzPltmiZouEY02Nlw6KsukmVTQtw3Ab6muRGjYART1iGnA
         RfdfJ490e+riUIsmb+TXq+eGo9thVvvenniuwulMqEeE/LPXoMHMXKJnrHxP8IypJCYv
         +sDBSgWcXUTsWnLM1JJKAC6envYtjXgEQpO87DixmKb+fXrrKoasI0dV6tgVCkXUlbUy
         GUjpe7zDFG9g3H4JQcaKCsEkXfgslyCRggxcEZRkIaHOWx1T2413OunAQrMny+6wgiO9
         LEMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y/jJKi0WHX4fOeVURVKEYr+eEnt+6V0SP5ExVKukB8Q=;
        b=4PDAc3E6VHHdU89qgjKUgGtRnXoOe9bYBuyHMVO9niTWiJxQofeXniTuaxmQVVHHeY
         Fm29Xz55ciPgxWnGRrk7pf/qXrkW7adnG0dp0qiIBqwLp4DVxRXArG8Edqjdo3CIlXWe
         krOi/Oo/D6xxGh6j27qwGcuMJe13aOKtfpvcSqj+lBDoD/+67Zg4DXS8USmNg8ucvKaJ
         4Vp7WxYreSDdmvajpzNMs1xkopmFbihdTFIOwvJDp/icNxqUcLXjkvqxOQ/cmvBMXOmu
         Xt8EBdEc9+oV2dwacQVWOs8T+9iZqP2+JcKdowCSFuukUd+qbcP/TptxuRLH4dDwTa2X
         LjFA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530weAJeRJfoCiQQ+1L3wCt1vutvG2iki8ipsYP6lmTjFfL1G8gb
	F0txsY3LWIPPnyVNdsgZr2Q=
X-Google-Smtp-Source: ABdhPJzyHvZeH2ln1dfz4GdawjohfSOEqktqiMPzI8KV4ndBySBuheTkNUwBVORyLKhRq6Ra1ghEEw==
X-Received: by 2002:a05:651c:1a4:: with SMTP id c4mr38092966ljn.3.1638831078944;
        Mon, 06 Dec 2021 14:51:18 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:8946:: with SMTP id b6ls2844681ljk.7.gmail; Mon, 06 Dec
 2021 14:51:18 -0800 (PST)
X-Received: by 2002:a05:651c:a0f:: with SMTP id k15mr40115284ljq.298.1638831077991;
        Mon, 06 Dec 2021 14:51:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831077; cv=none;
        d=google.com; s=arc-20160816;
        b=OSUy5qZQbW6Wv/LugKIKT9UUCdYgr3C6qR+xcwbRK1VdPTywfe7XuUN69BFFY9QAgi
         Pl3mg09TdDAWwpRyG/RgNxxaDej+naEEGYxYl3QEM9au7V3fWsv5TSWI9aEuzfQ+pqGR
         GiB3o9yIoFMQDtDUtFWROrWRbb+wJxCbezxbUPj8liQbSbgx+lFB2Mdj8678HUhhTBYV
         Z/BHmDrXJL2AtT9qhhY+jUomamnTQ2295i8hfo16MazGGODQV0W7WY+K8FjapfnbN/IK
         YSXnJWhtdALVaFRw9+q3uA6YfWywHdVX2M3W9yVzi+tDYE22nZ4WDU+2drcCREXh2pgF
         bLbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=O192gTv7DVMCmoiFcAQ4tyGbPvViDQQz5Lq/A3dCGdU=;
        b=PcsVu1BOQl5QNNmuiS9VtB+3W8/wUXVLphdvWsrtZDYXcMfetN1LkwoVuqmJW48TNd
         JOLlqzKWF61bRE8g7FO6ToaAICPl8zwm+mPQgpjL+5YR9nuYJ7QJ8nN/3r/T5cvaoILE
         vq9mGdWu6+CZxUpd7c+3jf3QVXXHeNRb1WyLEv11/HIDqKkj4TsEtWEvy9z3mfvLmswo
         UKG6h41veFR0DGDIfc5L+yP2b0HCWCx+mihj+i7zB8+3noubZ8S08ClhfUpDK2f764km
         74EEHNrdOngr6PutESKZ6BJ7w0XI77L5mcDVvFZmkFTBey5f79KrC1UQ8tiHswgAaZa5
         3rIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=yAGXeCWb;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id d18si761866lfg.3.2021.12.06.14.51.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:17 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210748.089085131@linutronix.de>
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
Subject: [patch V2 09/31] PCI/MSI: Let core code free MSI descriptors
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:16 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=yAGXeCWb;       dkim=neutral
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
@@ -80,4 +80,5 @@ void pci_msi_legacy_teardown_msi_irqs(st
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.089085131%40linutronix.de.
