Return-Path: <linux-ntb+bncBDAMN6NI5EERBZMQQ2GQMGQEAGYWIEQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB4D45F8E1
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:46 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id c22-20020a9d67d6000000b00567f3716bdbsf5069890otn.11
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976165; cv=pass;
        d=google.com; s=arc-20160816;
        b=PLsUg8J+RjXrKOv1/AcoDTDXUItSxUG28T41AAfPGkLHOMc0NB4AKZxgDwQNl69Pzj
         ++JCjRmlkUkl8kDqSs6SrZXZLivliXs8wZIrRmEGEr24DxJ8hpUrWR3pFiVeFYeKH9+k
         +3e5MSptNZQeI2KBsZ5NeSrW07Xaq5LMfaR/foneETJLhdj6l9KJE3/NTn5EtmRgOeMy
         RpYVC5phI2bTAlQyh9Rm0ho/XDnDeijjtNSuKBmdnqB/B/XW8zMnNBJ8S6jarfxw/34f
         +zHtk/BLg1sVpm15tl74TmmKjfVn3Cmv/7iFW0G2hUGxDQpBnmv4mHMOH7pU7IsqLwBF
         XY1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=4JxiRjZrzlekdyaNDX2huclwd2Ln1lcslGSH/+UU4ts=;
        b=ujoOS8Px+vgkYshimBQq8P8WF0mV/PHjb4KEUM16Z4qaEttd5VEVQCyioqxng/GIix
         X3KmTDc6QacQDsO4BrgOrLPlfxf+12uoDPQrAku6AOGJZo0cjqFWzrhgz1qtKWzi0M7J
         LMyGHwvEFwusB4gUdDred020gBGKxM4pH18ZBw75axKLyXxkuMs0xd0wL6DyTd8/L4t+
         264i27rBbdNThi4Zm2ElTAcMjT9hEdMo3Yj59CIploVz8WjoIOCyNmnoS1qhwalIxdab
         aogcGroPXQpiK7jyMikQTYfC9Wx7SvIpJ3MzGrEp+1yQQJx5H63XkWKb0j1TO0Fmrbl8
         3B2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=NkHP56Qq;
       dkim=neutral (no key) header.i=@linutronix.de header.b="Lq4sM7/U";
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4JxiRjZrzlekdyaNDX2huclwd2Ln1lcslGSH/+UU4ts=;
        b=NHjsop+0u+fXoKyTqfbG7MEuY8cvZtVem159C71Hghb/OvPdlzKr3OAYTjY5gqSKNV
         9eutH/vl3qxAa6OQcEUDLAkfTul+rhK5F21iegVrvw4HpyJ01p4yqJmaOQLQZ9prvCoR
         enfXqUdX4OwI4a4cqK+gzg0BA0SeLjVmXU9s7yWA0GC52ltxltBTSUPmjyY4GSujDFBz
         /vBifAI3BdSZRZH8sS1dKN+piifRiI8+X78sfqM+Y+7NNUU+bYlMX4QlnwdRju5EmOpd
         YLfymyCsTyJQSqzhXwKcOY8i6Q8VHr6z3+M3DtQ4n0IrLTzcZZN7n0DrGvSSV4JZzpZD
         ps3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4JxiRjZrzlekdyaNDX2huclwd2Ln1lcslGSH/+UU4ts=;
        b=kmolhCTaPmnXfYXbr1BhCIv4yMAxz8b6BAdmMiBKEZf/k6yQoELvaN1xlqWXr0A/f0
         yawOot/ZsoU8uH3cA4x/zb3ZnQiSjnKV6L96tln+D5i1/1/rzfbdl5nFz0lw/EGU+YNy
         cUr/wPh4SwVvjt3uvSZGPbNVuEZfbGfGoQVLZ7KNdPeGz7LlSBf8Q22ofUdz7opXZRLp
         ogJkkITzPF1wqxrI/P4i5KipzKznXgf6Gl5TwLj1sUFRSj3FFI5/yNL6FZ6xanKanKoz
         21II/zYYgaJkeZ6Sb4gie8vL7RYCPWyzsybBnoiUTI7uGEzSyMHn36H3EzPpIsh/m5VF
         hjFw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533H32JWdLFGIwKEW96IEW9Lofnb+DMrfgR0J8Zg/q2D6HzoCVnO
	IU/tkUXQ8BNbTqS3UfZzVOM=
X-Google-Smtp-Source: ABdhPJwE2sKxbx4VJHz3i+fnCQE0O1b1xuTifJZ254QIxGZAjhKs8Bibu/gewl632s2ewnuphvYzDw==
X-Received: by 2002:a9d:2085:: with SMTP id x5mr31976673ota.228.1637976165197;
        Fri, 26 Nov 2021 17:22:45 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:41d5:: with SMTP id o204ls2985593oia.9.gmail; Fri, 26
 Nov 2021 17:22:45 -0800 (PST)
X-Received: by 2002:a05:6808:1485:: with SMTP id e5mr27615848oiw.156.1637976164919;
        Fri, 26 Nov 2021 17:22:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976164; cv=none;
        d=google.com; s=arc-20160816;
        b=qQwhSU2cw/1cFhOKJtm2/REC0k+dOxJSWywgvB5DQqdNs/vxp8NxLR2Y2Sf1RyndjR
         iKt+u9jj9VX4UTSN3Ds44HnloEcnM+QjC6KBolM9ETldHfCQ8EdU58B8ikNYeYG6pqpd
         PtbY3AXTBx0ku2a7kbGDKpmvwkcuGnsmn48b64T0yWU9teYhJ8XsOJUvLhUHsBGE6LbM
         mDqIFt6aKsemLY1GyHFdQDWXxWGel8+akbtWjP1UNf2hHuoe/UW4D/mSMa5RvNqEqCPC
         q6c87aVhHNnM84JJGpSxCeUubIrkzvFPTWA4Ac0RONsCW9tmoy9an4XNJtIhSQHH1DiH
         U6+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=iosGiYlhYBo//aWwbi8Bz/t2OkGIwccy2DoihzPp5zA=;
        b=GJcqgJyKurmTYSlTQwQwOMJfUHp7OrGrnSF4aEmT5ab4EfEtbjxq7imasqYy1Q/1fe
         /GsMlj4/b8QFvrohbyVfUweHlYtPdJMBlhjU2mQmx6NBnYdYRcgOcaGsf0f4HmOKZxAH
         3WjIZNPWVZUTPm7d/WzwJqF6IcI9uampGwmwLMmd+qbp8Yqto5OAAClWwQ8fy0TvRsrW
         g5XYYFR2ydoV+tCzdtOU6lAzid73ej8ZjjbwOUuabDuTQkeflJ0hyzlgNvJRoy83Ftr2
         q4wc0FFzdZwhZfw2xGCTjxotlqAW3aJcT7CpsjyLWY7oWxqTpEoaBEJzgy2oqJYksvZN
         Ei1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=NkHP56Qq;
       dkim=neutral (no key) header.i=@linutronix.de header.b="Lq4sM7/U";
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id bj28si1147704oib.2.2021.11.26.17.22.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:44 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
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
Date: Sat, 27 Nov 2021 02:22:42 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=NkHP56Qq;       dkim=neutral
 (no key) header.i=@linutronix.de header.b="Lq4sM7/U";       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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
