Return-Path: <linux-ntb+bncBDAMN6NI5EERBX5HXKGQMGQED5WBEPY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC5E46AD38
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:12 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id 144-20020a1c0496000000b003305ac0e03asf240355wme.8
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831072; cv=pass;
        d=google.com; s=arc-20160816;
        b=TtVjDTyVYtXSMdczljB3Cyi3L1d+EX9DKNo+Cxp+tHoUEYjUO6vw6RJwJwvF2HJEVR
         LE5yiG5KlLJKOorvFHzhyDfBMusJ1UytEQnZi2SdP7XrqBgqzCAiDcH5JixJRLSOGjX+
         y5YUfLVLxrYUo54fVq5Up7xtzmMGJtmqgX5YtEEJZbV4gyva1bmDb2x7vfbeexPsf2PR
         vIVaqV1ZcQLR3UE6+VaLB++cfhd7XSdUADmnKamhcy9d0Tihw+HHQkmpC5aJ15SQ27DH
         crHC3T2XE/8hdCvaxDn5VM+mBhQbzNbWh0TcG8LmRcOvzmIOB6njsrBtgcMuET4NXo4i
         o7hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=d91iz7RVXRGHCqa75rdHWuVP4cCDMVMqUMdSkkAdMt8=;
        b=clQ/t7n0I/8DIfrYwGWUphmV5sOqy8azd1itMeX76e+UhLwo38KGmKy+ee8EzV0jt1
         rfftwSo5DQa39IPcwSj+W5vaZ4piPvDj2pZUeVtpaHDsLcbv7NJGiDEdWiBRvpKhkYM1
         OeKB+tP9/ys1kj5JVDhCMDMTr1yRFmrkT1FQq24SFbIzWXE0jCQkjNpnuvR4CJEbOg6L
         6nnOzJ675k3FAcx24ytYtmNJVFEuEqCwHc9Hb/+B55QMOkTpdN1oDMZvT7wphs6/siGL
         qiGKYSSzaP3b8Q9rRy9xmGwx6VEMsnJHPd8KgAa26E/v4PQxeKcib18wVXt4DPyFMI0u
         5NRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=PgswJKO7;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=t+DO982L;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d91iz7RVXRGHCqa75rdHWuVP4cCDMVMqUMdSkkAdMt8=;
        b=FEIvN7gksQzruMN6CuNAL1Lvn7GI+BYNUoZKMraMOxEyivcfZiQhXIHcxkX4qbqV1n
         qErmq6Ubd7FpmGG7Qwzknta0aZUdm7vsxfcaWa7Wu+8LK6lNDctuX8bv2e9A5arOQUat
         qt101LJdYfZ2wb3j/1o08D+TG17xaCPNyLI6Yj27tUk8IXIcUTTzz6CbIYoVeQrVmiXr
         1tsfDbIS1gURPdmWUZtOWS5d8TAY+Bw2MslDdlKbQ+QnVZO8ff350WCy272szpqGfjaf
         iPKRRHs1oAo0aVrOTOvHR6dSaxQSsD8myrJZtj1e3ULvGDITgCAZE7l8OK2NIZT/srBh
         txKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d91iz7RVXRGHCqa75rdHWuVP4cCDMVMqUMdSkkAdMt8=;
        b=ZBuHp/jrCFxf4NwUpj97cw6mGaWQTrRVKkpLwiBQW6u16Ep5NP+Ov0vKu777qX5/98
         nReHAaoJKeg2ZqImLIkGgcjiU2+W1D+S2baC0LGUcdm4WQAWoaraubT1FFMxTe6BVdcE
         A++DbvT3pXpueilu3NPEHDV8PeS1Sf0QxMYQdnKiX8iduUML47aygJAzK5RqtyZ5Ei8S
         5at8Xg6yL611WjiSbs5pDh8/5DY2hZKsVFzGYS2o5JyIiS5BYbJQrd5zDlsgysWVq4qv
         KjVOpFx+nBIWEGU2EIjZer7OJ9/hYGUZz/Kx61eLLJn+xZ/s/wyHKtPglpJz5sUbxoLM
         4/Xw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532pmL1mCMh5jOBLC0of/Dc8gZzfvuc1eMusNEl1I+nlBzBp/zLM
	xA8k/FmylPkJdbIYl20ge1U=
X-Google-Smtp-Source: ABdhPJzJ+a6cDn/7mzCdd8fmCJJ+RItxmw+gNVO8LuQFD2TY2zrivllgzAG6gjLaS6qJHgsNJg0NWQ==
X-Received: by 2002:a5d:4883:: with SMTP id g3mr46522688wrq.590.1638831071990;
        Mon, 06 Dec 2021 14:51:11 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:2110:: with SMTP id u16ls267409wml.0.gmail; Mon, 06
 Dec 2021 14:51:11 -0800 (PST)
X-Received: by 2002:a05:600c:1548:: with SMTP id f8mr1904814wmg.67.1638831071225;
        Mon, 06 Dec 2021 14:51:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831071; cv=none;
        d=google.com; s=arc-20160816;
        b=NnXwn63TXlAiPxWHm01Tdr2Da6qPS33NO7YzXHJwDU1/0XkInwgypDKlHGRKnypOCI
         /WBudWV9N+II8PJOjNmHLstGTzJpxr3tEN31FfOHLaV5bl1EmdPE8k/uHD1o7JTGNN61
         pMz5a9ooAwPhXxe8JzYxySfNvq3hR3w6NDWYWHWpzAmKOIV1RJzHel5ULzBcyfkVvd2p
         DL5pTBR3P8TkdanpTurJo2FSElDtmJ9vmlb0Ou8onlNVyg4lnHCf1CucY3WjGpQSY9qO
         s55lbkc79TAlnfNbSd18jt46cU9n1p5KkENnTc5On7qSNX6xBKoybLoZfOTWQ6Kea9yh
         tslg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=UXWSPGXq5vnQLUJp9/NNC9VtOj7oZ//oTBntFTDlckE=;
        b=TK1l5RjWsAMuv8sy+bgTK0a+NRF0uS8Ww2BkiFZhUABbRzLyGKx/h0GaIxAz4J/3iR
         00Wz5eLULN+/VgSrJn+k7bIRT0/K+C84wLExXGl8F57AvKqNefpgLbRYGxuaOnLuOBV0
         isJguACIaS+z/RbEHyQso8tOjTZE/FhXrovjalo8HJvrBVsf53FRYfE4frzVYop8lGXI
         kmSNjEqPfTotRjB3t5vqkJwW827D4s2XpQJoouxe2DdSm7+YEn8bedSwN5KB781TE/uj
         kj/IA/N31jNS1QhGr96PPVa8Qu73OnjxIFBIeco7oVxbxW3t0qMWpW/40d9AoJIAyAQi
         fsoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=PgswJKO7;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=t+DO982L;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id z64si92196wmc.0.2021.12.06.14.51.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:11 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210747.873833567@linutronix.de>
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
Subject: [patch V2 05/31] genirq/msi: Provide msi_alloc_msi_desc() and a
 simple allocator
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:10 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=PgswJKO7;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=t+DO982L;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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

Provide msi_alloc_msi_desc() which takes a template MSI descriptor for
initializing a newly allocated descriptor. This allows to simplify various
usage sites of alloc_msi_entry() and moves the storage handling into the
core code.

For simple cases where only a linear vector space is required provide
msi_add_simple_msi_descs() which just allocates a linear range of MSI
descriptors and fills msi_desc::msi_index accordingly.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |    2 +
 kernel/irq/msi.c    |   59 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -264,6 +264,8 @@ static inline void pci_write_msi_msg(uns
 }
 #endif /* CONFIG_PCI_MSI */
 
+int msi_add_msi_desc(struct device *dev, struct msi_desc *init_desc);
+
 struct msi_desc *alloc_msi_entry(struct device *dev, int nvec,
 				 const struct irq_affinity_desc *affinity);
 void free_msi_entry(struct msi_desc *entry);
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -61,6 +61,65 @@ void free_msi_entry(struct msi_desc *ent
 }
 
 /**
+ * msi_add_msi_desc - Allocate and initialize a MSI descriptor
+ * @dev:	Pointer to the device for which the descriptor is allocated
+ * @init_desc:	Pointer to an MSI descriptor to initialize the new descriptor
+ *
+ * Return: 0 on success or an appropriate failure code.
+ */
+int msi_add_msi_desc(struct device *dev, struct msi_desc *init_desc)
+{
+	struct msi_desc *desc;
+
+	lockdep_assert_held(&dev->msi.data->mutex);
+
+	desc = alloc_msi_entry(dev, init_desc->nvec_used, init_desc->affinity);
+	if (!desc)
+		return -ENOMEM;
+
+	/* Copy the MSI index and type specific data to the new descriptor. */
+	desc->msi_index = init_desc->msi_index;
+	desc->pci = init_desc->pci;
+
+	list_add_tail(&desc->list, &dev->msi.data->list);
+	return 0;
+}
+
+/**
+ * msi_add_simple_msi_descs - Allocate and initialize MSI descriptors
+ * @dev:	Pointer to the device for which the descriptors are allocated
+ * @index:	Index for the first MSI descriptor
+ * @ndesc:	Number of descriptors to allocate
+ *
+ * Return: 0 on success or an appropriate failure code.
+ */
+static int msi_add_simple_msi_descs(struct device *dev, unsigned int index, unsigned int ndesc)
+{
+	struct msi_desc *desc, *tmp;
+	LIST_HEAD(list);
+	unsigned int i;
+
+	lockdep_assert_held(&dev->msi.data->mutex);
+
+	for (i = 0; i < ndesc; i++) {
+		desc = alloc_msi_entry(dev, 1, NULL);
+		if (!desc)
+			goto fail;
+		desc->msi_index = index + i;
+		list_add_tail(&desc->list, &list);
+	}
+	list_splice_tail(&list, &dev->msi.data->list);
+	return 0;
+
+fail:
+	list_for_each_entry_safe(desc, tmp, &list, list) {
+		list_del(&desc->list);
+		free_msi_entry(desc);
+	}
+	return -ENOMEM;
+}
+
+/**
  * msi_device_set_properties - Set device specific MSI properties
  * @dev:	Pointer to the device which is queried
  * @prop:	Properties to set

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210747.873833567%40linutronix.de.
