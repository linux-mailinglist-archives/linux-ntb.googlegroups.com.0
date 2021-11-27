Return-Path: <linux-ntb+bncBDAMN6NI5EERBNMRQ2GQMGQEW3J4CSI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DC945F974
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:06 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id x25-20020aa79199000000b0044caf0d1ba8sf6209949pfa.1
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976245; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8vrdf9DPK4u4PF02Z5PRzPh2ugktcg01s5l4QNHmMByyhM+U7f5hd5q73d+lO42UV
         OuSbbpw3thaRI9M6vDg2Ee2RH21/4aYBPWEGIuAWWwABNxNbr5yhS83BpSqEwDgMuEav
         m2B+sxrFyBL1DBB/+FOjRHQRz2OCmsitH6Wn6FQ07xwgeQHW85AvVWh/ukjzRN6EQtEe
         1CtzoH1AMZxeGjwWSfnTLYexjVXlm6M/wvBH6xi7FDFB03OvWkY+fOMLA1NQk0ckMO7l
         SvLZ/T76alDT3hnAfX4jBj4in6RDiKdnpHp7Iy/KrB+sez4H7I4RGgNqmfoUv8J6EStm
         98yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=WSNdfZejlBwO4Wo7jFA9HFdT3KygSO5GEgbt1aj0YWM=;
        b=Sg0shas5/m7DYeY/5CEdPNAw/kZXIVeeVYNcQV0dvIfm3EbBLkBqEPe6eMVZU/a0EA
         CIut5qnWJ8TlEda1W4S5CZJaYPHFHvcaYNFiuv16QE28hpdKYJNN3p7GvnKEddhLctPE
         tn50vnY0OWVncCexF3K6Cn/axYfH0kJ5E0iJk4Ime7xhyNPjkgJdyvq+z9dRnp7+E/og
         hZ+I3zMNA6c0ZPurfqHt3PenjQva0ra7ahR7vEfqES7fya716ZZd3tkSp8tbmlHhl/d7
         vIKS3VpLVQCyxDbMk231G6RmGUw6i+gZN5l5E/IwBknTCj8os65rB4P8VHPAcHSHPtk2
         niMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=mR7VcmLj;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WSNdfZejlBwO4Wo7jFA9HFdT3KygSO5GEgbt1aj0YWM=;
        b=rM6TZkDTjKFBnYufOWoDl/fpey6xeWAJQ/UI4eaA//WVhjewuCutTHjvTPaM/irrWG
         UCt+hj3n6+y5G6fGOARJWYFgc0pjMgT8JBk340bj7cbEvZPxVkbasGmI7ToxtVdLd2Q+
         1F58wkkRzW+pmnELty01F/ddan6CVgFpL03kQdMqLn3k5LQqbpdLkIif5ievSN5Hv9qt
         u/nNnelizVzLKPkWeOYTv8y4aIVY9wY289QSryLbqhl3cA8Hn9MGmXtO+i1pmbYME/zj
         t6Z5KKtIeIK39/CJPyg+Tnohjvy3gNgxt0aER/rZ/DtASzQydcoKez5AfA4lRhR8iraG
         ExWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WSNdfZejlBwO4Wo7jFA9HFdT3KygSO5GEgbt1aj0YWM=;
        b=1z7tYl6xhnfYorwyv2KCeXN9Jm7dCtG5gVY5ksoOcrbZrB4PE8lBrWWAWZaC5tHkyM
         y84vNFOCIV49E6MoyFp1JIuUUpHT7GYtfpeCzFsP0Wz0+kZH7/FFfB/ZBE9n3fPaRpxt
         mPZwRdr7qseXDop/zNngg1t1LYUfT4kdf26k8Tyxr1cUVvwFoQp7g1ZixOLrlO9J8z2h
         1FgYYKyBh6eRXqshSMFSujUqcp0Exox/MO97dvsODRJpTMRarUCcp+0TK/kJ96d74sya
         Hin9AmejQ+Wc6sui08PyK2hkB+sdZ6vzxGRT7nQZKHghCq/ebnfRpQ888UQJ/LI/V93z
         56yA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530Nymiyz4NQs95gBYQZAXmiRhWGQZkG2QbHCkYjAJIHfGUCSXtO
	V4eeTo4DMqMt0ohFE+sUtXg=
X-Google-Smtp-Source: ABdhPJy1unURJN28Ck4Rpy9MtU1auqVHVABK5+JQpBAEGrO4uv+xBS+U3aiDhkClXTAF4CIs/U7w/g==
X-Received: by 2002:a17:903:245:b0:143:c5ba:8bd8 with SMTP id j5-20020a170903024500b00143c5ba8bd8mr42828542plh.64.1637976245713;
        Fri, 26 Nov 2021 17:24:05 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:d50e:: with SMTP id b14ls4153685plg.7.gmail; Fri, 26
 Nov 2021 17:24:05 -0800 (PST)
X-Received: by 2002:a17:902:e804:b0:142:1c0b:c2a6 with SMTP id u4-20020a170902e80400b001421c0bc2a6mr40461501plg.23.1637976245181;
        Fri, 26 Nov 2021 17:24:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976245; cv=none;
        d=google.com; s=arc-20160816;
        b=EvXzc/V/aNq6O27CReZlpqmIRmM0VBEQnm2o1fyqOSmjQ8Dps/aipAFyvZrniQE46C
         ljOYsrD9iFfvh1Hgn+PPLBbi8bLnq9AkMLfrNmfs9xeCTaTYNYqNNiRo6ib73ncSYMXe
         CaahPfu9nswh6mVGuJSPiUYHggoONmCmMCnI+zt4BJE7GjXDV7bQ54O9lx+9HzrpmY5q
         +eYUj9FKzvI6xyt/Lxy+TUE/L0gEqgNvR9c0/vbc4M33L0mFysJSAWUi34JHVe3NocKA
         BwxtqcPEM+1gWYvE7zb6hUAsfp0oJfQDPdDm09hKYgxzLoZP+cWCvv0kvVTPB03HX5Vy
         6OYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=CzqGTYDUie5SurN5/gfV37QSqlTZtJhIqYh57XXY9vc=;
        b=ZQ5uAXqCpOfW2GdxEMre+iGsEJteJpQA7o/iBqp+8TDi70YOVAQ+Kk16wiKMiA/31+
         Kx6KJlNLbDYVR/QNsDX9u+HOEtKBW2DWhtdW5zFhEqDbNAB4LM80ageq/xaV0ZLk2UC2
         dkf6GoJ3//fFXi1r4h3sWyjs2a8UvIAWCAhMKXxaVtY2RbQ8TykvN2EffN9NIQZPV40b
         xXnofSKxB8CTWsXyl4JdJSVByMQDQ7qo8o298agxt5rRByR9GdAZ+fH8bGtOxZzEAxF3
         MS+WJhMPLttL+41Gqra+DvUE7tumg1anIhzlXxGa2A5WAc+SE+CdHMkqqquPtKYEH4wq
         oaLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=mR7VcmLj;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id f21si740749pfc.3.2021.11.26.17.24.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:05 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.608092027@linutronix.de>
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
Subject: [patch 22/32] soc: ti: ti_sci_inta_msi: Rework MSI descriptor allocation
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:03 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=mR7VcmLj;       dkim=neutral
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

Protect the allocation properly and use the core allocation and free
mechanism.

No functional change intended.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/soc/ti/ti_sci_inta_msi.c |   71 +++++++++++++--------------------------
 1 file changed, 25 insertions(+), 46 deletions(-)

--- a/drivers/soc/ti/ti_sci_inta_msi.c
+++ b/drivers/soc/ti/ti_sci_inta_msi.c
@@ -51,6 +51,7 @@ struct irq_domain *ti_sci_inta_msi_creat
 	struct irq_domain *domain;
 
 	ti_sci_inta_msi_update_chip_ops(info);
+	info->flags |= MSI_FLAG_FREE_MSI_DESCS;
 
 	domain = msi_create_irq_domain(fwnode, info, parent);
 	if (domain)
@@ -60,50 +61,31 @@ struct irq_domain *ti_sci_inta_msi_creat
 }
 EXPORT_SYMBOL_GPL(ti_sci_inta_msi_create_irq_domain);
 
-static void ti_sci_inta_msi_free_descs(struct device *dev)
-{
-	struct msi_desc *desc, *tmp;
-
-	list_for_each_entry_safe(desc, tmp, dev_to_msi_list(dev), list) {
-		list_del(&desc->list);
-		free_msi_entry(desc);
-	}
-}
-
 static int ti_sci_inta_msi_alloc_descs(struct device *dev,
 				       struct ti_sci_resource *res)
 {
-	struct msi_desc *msi_desc;
+	struct msi_desc msi_desc;
 	int set, i, count = 0;
 
+	memset(&msi_desc, 0, sizeof(msi_desc));
+
 	for (set = 0; set < res->sets; set++) {
-		for (i = 0; i < res->desc[set].num; i++) {
-			msi_desc = alloc_msi_entry(dev, 1, NULL);
-			if (!msi_desc) {
-				ti_sci_inta_msi_free_descs(dev);
-				return -ENOMEM;
-			}
-
-			msi_desc->msi_index = res->desc[set].start + i;
-			INIT_LIST_HEAD(&msi_desc->list);
-			list_add_tail(&msi_desc->list, dev_to_msi_list(dev));
-			count++;
+		for (i = 0; i < res->desc[set].num; i++, count++) {
+			msi_desc.msi_index = res->desc[set].start + i;
+			if (msi_add_msi_desc(dev, &msi_desc))
+				goto fail;
 		}
-		for (i = 0; i < res->desc[set].num_sec; i++) {
-			msi_desc = alloc_msi_entry(dev, 1, NULL);
-			if (!msi_desc) {
-				ti_sci_inta_msi_free_descs(dev);
-				return -ENOMEM;
-			}
-
-			msi_desc->msi_index = res->desc[set].start_sec + i;
-			INIT_LIST_HEAD(&msi_desc->list);
-			list_add_tail(&msi_desc->list, dev_to_msi_list(dev));
-			count++;
+
+		for (i = 0; i < res->desc[set].num_sec; i++, count++) {
+			msi_desc.msi_index = res->desc[set].start_sec + i;
+			if (msi_add_msi_desc(dev, &msi_desc))
+				goto fail;
 		}
 	}
-
 	return count;
+fail:
+	msi_free_msi_descs(dev);
+	return -ENOMEM;
 }
 
 int ti_sci_inta_msi_domain_alloc_irqs(struct device *dev,
@@ -124,20 +106,18 @@ int ti_sci_inta_msi_domain_alloc_irqs(st
 	if (ret)
 		return ret;
 
+	msi_lock_descs(dev);
 	nvec = ti_sci_inta_msi_alloc_descs(dev, res);
-	if (nvec <= 0)
-		return nvec;
-
-	ret = msi_domain_alloc_irqs(msi_domain, dev, nvec);
-	if (ret) {
-		dev_err(dev, "Failed to allocate IRQs %d\n", ret);
-		goto cleanup;
+	if (nvec <= 0) {
+		ret = nvec;
+		goto unlock;
 	}
 
-	return 0;
-
-cleanup:
-	ti_sci_inta_msi_free_descs(&pdev->dev);
+	ret = msi_domain_alloc_irqs_descs_locked(msi_domain, dev, nvec);
+	if (ret)
+		dev_err(dev, "Failed to allocate IRQs %d\n", ret);
+unlock:
+	msi_unlock_descs(dev);
 	return ret;
 }
 EXPORT_SYMBOL_GPL(ti_sci_inta_msi_domain_alloc_irqs);
@@ -145,6 +125,5 @@ EXPORT_SYMBOL_GPL(ti_sci_inta_msi_domain
 void ti_sci_inta_msi_domain_free_irqs(struct device *dev)
 {
 	msi_domain_free_irqs(dev->msi.domain, dev);
-	ti_sci_inta_msi_free_descs(dev);
 }
 EXPORT_SYMBOL_GPL(ti_sci_inta_msi_domain_free_irqs);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.608092027%40linutronix.de.
