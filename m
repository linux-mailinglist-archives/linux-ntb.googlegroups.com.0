Return-Path: <linux-ntb+bncBDAMN6NI5EERBGERQ2GQMGQEGCVO5GI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF3C45F931
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:37 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id a3-20020a92c543000000b0029e6ba13881sf13649280ilj.11
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976216; cv=pass;
        d=google.com; s=arc-20160816;
        b=iVBvydHMbmHixHXxSS2z8uaYtK+6Em6Ew1NfIUn9I1kdANalzW3QF5KAVAwEw/30Rk
         0r7yf016r44Pyit3cfUpw0GErbghS2VwGDh6ogCO0AL/w7upN+80ToiVvrNXmkEIEvF+
         zYnQDqn7l3vVag0sBZOyVUwhGdohLLdxgzRR6+AbOBkLRL98m5D6fKOB6vXDKFoF7ETp
         O9kEeaDca9iczhs02qdW+lKqdZ1JMcQ59mYUEUUjxbkYdZuhZGDJM1uijd9uUWERFfXF
         XAbqBfYj1d+u5JvJ2qIvLtJ4fOQDzlVC2X0j0S2ZgTTtej2JhME5aBd/5voA9XZyBLqm
         iQIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=oYrqor0AIiVFGrNCBSHVqLAZFod2FWvhHfSjQ9BniTA=;
        b=bmRf1lK+J/HMjOIBS9rNss0F0Q+EgLxT7aESKQJJxAF5JZ1LSseOPtT0JzQcO2fs39
         LgoTAPr+tKiLRS773ebNi6sAFuXynvyxmJFotwLaqunkdMryk3Btl8pqmcZDe4D4ZPKJ
         VTEa9nth0Uc5iIBPDYiYidT4kp0vKQmLhwG1IoUfp+grktxgtWP02neMMr8cddcRC8Se
         pNuDt43impoKuirMSR1H4e7LvPMoBMMV6/59nEvPKPToCc8G2aCQUDj8zmpQUDFP0pXo
         DN7Z4ugmXVgtFvBcbM433RqTj/CtJR37q+pjErbcTTIZh1Q83lDowR0OJIvI2ppWoV7V
         RNUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=GAGmL7d1;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oYrqor0AIiVFGrNCBSHVqLAZFod2FWvhHfSjQ9BniTA=;
        b=hnFeP24Kus1W9Sjbll2AaUywG32BA9ZQtr9GBLmjsbkF+n36ibv3j0AR6vJ2jnlgpR
         oX7Vl3ZEwXVEevsGGr2ExsDSPRKTf21S7OwVfmU81MdM+5Sd0IRnVVtYTaoFSGdj8pwE
         PL06dqtiUJSxjr9/Wf2IaarKLxevID4fHUDhJq+ejbgg+wjFspiC2s2+NGXUFQX9ngwV
         GdrkW60SZODJjrIzlzyiMe/KvcMTXjd2BmEguFYOY5N5a7trTio+0YnrCH9S6PdWevpQ
         8kV6EksrNC7vW7qHwjed30XaGpBXa1PxVQ6IC9gGsNiMH1nXEgIeapQy3V8JB5rHOvBX
         M6cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oYrqor0AIiVFGrNCBSHVqLAZFod2FWvhHfSjQ9BniTA=;
        b=1BlVZf+IA97lMRVaGC+5zUOyfu7wbR+nlHA+YMGhrB1x6AFm75R7DqyfbC4egI0UCy
         LhbLDFzXZneegeyMNqVuKzIS6GOZIRw7eafl6aPRsEhSBiAsg7ow5Cvcv/GGq9G2vMeu
         VqZRUUcujsyC7mc09bSvIoTFsjntkmH0ZUZkUGStmPXTV6rovCxKl55rV0mDD7PnLDcT
         fjq4q9lBBEX+HzHk2ZenuDZir931mDuyKtOCAars7ym6F4hKIP/rTRIuTZIUFpKiC+UP
         T8vB2c6cAehvirYl1++M0z6hrnP5+QcmtZbqZcYGBFFn4bwLXMhIST1gatIZUBoD6xVN
         grSA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532grj1iSKgXeB+Q+u2c6dSepQ0ZfTooiUzWdjBe3DQC3F9hc0wp
	0WC7Dn6MSzCZ9lvEPuRmRYE=
X-Google-Smtp-Source: ABdhPJz1j4w66xMrrxg0t3gqHd/60xgCNLVAoUtq3Q2G7as8lqbxEnnM4jwh3WiWvt2fUG3zi+k6ag==
X-Received: by 2002:a02:ab8f:: with SMTP id t15mr48746945jan.147.1637976216114;
        Fri, 26 Nov 2021 17:23:36 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:1a0f:: with SMTP id s15ls1090739ild.4.gmail; Fri,
 26 Nov 2021 17:23:35 -0800 (PST)
X-Received: by 2002:a92:ca46:: with SMTP id q6mr32902232ilo.54.1637976215804;
        Fri, 26 Nov 2021 17:23:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976215; cv=none;
        d=google.com; s=arc-20160816;
        b=tcSdMNxIDMJEtCrtuaUhfTV3+BQFa2BFV/Yd3uwnjgjxz6oE9p1poMDAn8Yzzf8lrj
         tgynT8JiH9I28BAJDLhwDsBPoug/jPGL9plMkKcrwQDse0Yyi/Qwv6lknV4RNmEKTgjn
         RrnOzIe9dQ9qhBfg/44R8tnj0jMFqLLvDY6o1ScXC8Y1Z72bE+URH66bgrDtv2tH4PWu
         DRCAxNRJKyoHXa/QMl0Rk+6cFfGNdKqHJt/jgyWKyFi/2q3K/B0IayMoEIZXrgXzwpar
         ARxhnN8oNsiCK1MJrPh9xXciLvPrQkKjj4ZQYQCVXUVqeyRYZCHj0vl4QP406RzGJT61
         WoCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=6oZqwpJI2ncU7744G6NHeAq/N32euzli5OU76GfrY2c=;
        b=SUWB5DFPp2aCWK84/DM3PpLAAXOcTAwsy6d8OrByiIYg4NRE3EkCUD1O827qT6EePL
         H2Z85elH41LOnmTULU8JDSBEy+ShTpk7voKyz1YmGhZcbbM8sY/nm44IRp6b0fON0Cvw
         Ox5wKOc9mZVSFvAM1T2UMOvc5Sn9sMOsaWRyRPUVFsYKcr5+wN0DujVIbJjCgr58yMHJ
         LKiVYnfShREzexs+pNuw72bVGgHIZR3PAqktBypFDGLwlBlBDX8SLwBMTGSZYMQG335w
         JZlCewmkwLRaRlenmOh/DIgIFS2WHlzt/hzIGa/26zHvA1l/vGLyE/CsMjWgC83uHoJ0
         Ym2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=GAGmL7d1;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id q3si1194777ilu.0.2021.11.26.17.23.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:35 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232734.472421030@linutronix.de>
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
Subject: [patch 03/32] genirq/msi: Provide msi_domain_alloc/free_irqs_descs_locked()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:33 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=GAGmL7d1;       dkim=neutral
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

Usage sites which do allocations of the MSI descriptors before invoking
msi_domain_alloc_irqs() require to lock the MSI decriptors accross the
operation.

Provide entry points which can be called with the MSI mutex held and lock
the mutex in the existing entry points.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |    3 ++
 kernel/irq/msi.c    |   74 ++++++++++++++++++++++++++++++++++++++++------------
 2 files changed, 61 insertions(+), 16 deletions(-)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -413,9 +413,12 @@ struct irq_domain *msi_create_irq_domain
 					 struct irq_domain *parent);
 int __msi_domain_alloc_irqs(struct irq_domain *domain, struct device *dev,
 			    int nvec);
+int msi_domain_alloc_irqs_descs_locked(struct irq_domain *domain, struct device *dev,
+				       int nvec);
 int msi_domain_alloc_irqs(struct irq_domain *domain, struct device *dev,
 			  int nvec);
 void __msi_domain_free_irqs(struct irq_domain *domain, struct device *dev);
+void msi_domain_free_irqs_descs_locked(struct irq_domain *domain, struct device *dev);
 void msi_domain_free_irqs(struct irq_domain *domain, struct device *dev);
 struct msi_domain_info *msi_get_domain_info(struct irq_domain *domain);
 
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -691,10 +691,8 @@ int __msi_domain_alloc_irqs(struct irq_d
 		virq = __irq_domain_alloc_irqs(domain, -1, desc->nvec_used,
 					       dev_to_node(dev), &arg, false,
 					       desc->affinity);
-		if (virq < 0) {
-			ret = msi_handle_pci_fail(domain, desc, allocated);
-			goto cleanup;
-		}
+		if (virq < 0)
+			return msi_handle_pci_fail(domain, desc, allocated);
 
 		for (i = 0; i < desc->nvec_used; i++) {
 			irq_set_msi_desc_off(virq, i, desc);
@@ -728,7 +726,7 @@ int __msi_domain_alloc_irqs(struct irq_d
 		}
 		ret = irq_domain_activate_irq(irq_data, can_reserve);
 		if (ret)
-			goto cleanup;
+			return ret;
 	}
 
 skip_activate:
@@ -743,38 +741,63 @@ int __msi_domain_alloc_irqs(struct irq_d
 		}
 	}
 	return 0;
-
-cleanup:
-	msi_domain_free_irqs(domain, dev);
-	return ret;
 }
 
 /**
- * msi_domain_alloc_irqs - Allocate interrupts from a MSI interrupt domain
+ * msi_domain_alloc_irqs_descs_locked - Allocate interrupts from a MSI interrupt domain
  * @domain:	The domain to allocate from
  * @dev:	Pointer to device struct of the device for which the interrupts
  *		are allocated
  * @nvec:	The number of interrupts to allocate
  *
+ * Must be invoked from within a msi_lock_descs() / msi_unlock_descs()
+ * pair. Use this for MSI irqdomains which implement their own vector
+ * allocation/free.
+ *
  * Return: %0 on success or an error code.
  */
-int msi_domain_alloc_irqs(struct irq_domain *domain, struct device *dev,
-			  int nvec)
+int msi_domain_alloc_irqs_descs_locked(struct irq_domain *domain, struct device *dev,
+				       int nvec)
 {
 	struct msi_domain_info *info = domain->host_data;
 	struct msi_domain_ops *ops = info->ops;
 	int ret;
 
+	lockdep_assert_held(&dev->msi.data->mutex);
+
 	ret = ops->domain_alloc_irqs(domain, dev, nvec);
 	if (ret)
-		return ret;
+		goto cleanup;
 
 	if (!(info->flags & MSI_FLAG_DEV_SYSFS))
 		return 0;
 
 	ret = msi_device_populate_sysfs(dev);
 	if (ret)
-		msi_domain_free_irqs(domain, dev);
+		goto cleanup;
+	return 0;
+
+cleanup:
+	msi_domain_free_irqs_descs_locked(domain, dev);
+	return ret;
+}
+
+/**
+ * msi_domain_alloc_irqs - Allocate interrupts from a MSI interrupt domain
+ * @domain:	The domain to allocate from
+ * @dev:	Pointer to device struct of the device for which the interrupts
+ *		are allocated
+ * @nvec:	The number of interrupts to allocate
+ *
+ * Return: %0 on success or an error code.
+ */
+int msi_domain_alloc_irqs(struct irq_domain *domain, struct device *dev, int nvec)
+{
+	int ret;
+
+	msi_lock_descs(dev);
+	ret = msi_domain_alloc_irqs_descs_locked(domain, dev, nvec);
+	msi_unlock_descs(dev);
 	return ret;
 }
 
@@ -804,22 +827,41 @@ void __msi_domain_free_irqs(struct irq_d
 }
 
 /**
- * msi_domain_free_irqs - Free interrupts from a MSI interrupt @domain associated to @dev
+ * msi_domain_free_irqs_descs_locked - Free interrupts from a MSI interrupt @domain associated to @dev
  * @domain:	The domain to managing the interrupts
  * @dev:	Pointer to device struct of the device for which the interrupts
  *		are free
+ *
+ * Must be invoked from within a msi_lock_descs() / msi_unlock_descs()
+ * pair. Use this for MSI irqdomains which implement their own vector
+ * allocation.
  */
-void msi_domain_free_irqs(struct irq_domain *domain, struct device *dev)
+void msi_domain_free_irqs_descs_locked(struct irq_domain *domain, struct device *dev)
 {
 	struct msi_domain_info *info = domain->host_data;
 	struct msi_domain_ops *ops = info->ops;
 
+	lockdep_assert_held(&dev->msi.data->mutex);
+
 	if (info->flags & MSI_FLAG_DEV_SYSFS)
 		msi_device_destroy_sysfs(dev);
 	ops->domain_free_irqs(domain, dev);
 }
 
 /**
+ * msi_domain_free_irqs - Free interrupts from a MSI interrupt @domain associated to @dev
+ * @domain:	The domain to managing the interrupts
+ * @dev:	Pointer to device struct of the device for which the interrupts
+ *		are free
+ */
+void msi_domain_free_irqs(struct irq_domain *domain, struct device *dev)
+{
+	msi_lock_descs(dev);
+	msi_domain_free_irqs_descs_locked(domain, dev);
+	msi_unlock_descs(dev);
+}
+
+/**
  * msi_get_domain_info - Get the MSI interrupt domain info for @domain
  * @domain:	The interrupt domain to retrieve data from
  *

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.472421030%40linutronix.de.
