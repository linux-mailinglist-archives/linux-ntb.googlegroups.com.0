Return-Path: <linux-ntb+bncBDAMN6NI5EERB5FHXKGQMGQEOQ3PM4A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4191446AD57
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:33 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id k7-20020aa7c387000000b003e7ed87fb31sf9714812edq.3
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831093; cv=pass;
        d=google.com; s=arc-20160816;
        b=zFtA/tVB9RAT8D5+o+lSlhC5GHMRKxz2Rld9+ILIhxouoqLaU4tdSGDcrMUOmYVwCF
         ivd7en4iPivHHRbwseCEIiwYcUFjMrDSHBGnjOlyED/iZ35fW1LI/l6pHQVgptGuzXw/
         4QuKpg/oN8Z1iA2dkgdY9bf/p9vYXXhHHzK9pv623FZwOrHWFjT3QUD5xkilj7Sz5oGe
         0gmQEQFNOKqP61g3SAoVxLOJpA0j+kTOBHxtvndip+kc5NoD7Q2Rh4Bd4z0j1aCD31UE
         UrDA3HRdkFLZxenxieqDRB1jnj/2E5UovIops2uA8ebIf8rPub6Bk6MlP4Cxw4DwkgRU
         3k3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=/UdqQCLT4X79VwADHsUk2Zc9PG2ssT7cIogtW5cBJlo=;
        b=0+p03LvskgHMx7ucEhVQormrANWWHuojjG12w3OAf6Q5f6cz1G6osAJYKYsgEaB4UP
         sI4J0C8jYo/cb2bHfCPIIXiBK+I0IOD383FKg2VkXjCkuzlX+1QcrxEnNBTN1lm2rfUP
         xb1z7Qlh/UjM0JfIo8P89XGTYg2piicVpdZX8NobzSCX4XG2euVcznE3VAYTAPNfPgp6
         XR+NHzxGvfme//bxNc535v3kFhkdNtbtC0QYavgjHVoEw4knYZ3HR9ekAH/hTbJiiI7Q
         /ittNYVoLiFVlAx3tEtDPFCQMbYsTD/aXOuQvG8v2I9nYjI2EB8dUC7fRVcjEMDmBbCq
         nF/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0jpZykVF;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/UdqQCLT4X79VwADHsUk2Zc9PG2ssT7cIogtW5cBJlo=;
        b=IlscoFffG9ZS1TV5i6m2jEwDDXwxzCRpub0XQkJ0QZJ1qDdo2tLCIEQAjX1w7t1Xai
         Up9Q2UGoJ6H3TipMDp73iY4vnHC0wS+ruZjuz76KmEEhhju65fuPNtUmBau9Xk61VF9B
         XMfGfWn+wV1fiix4yE9ODtqRAdwJBnIsdckjcf/LYysIpoX8czU7RgpufaWnAL7xYRqn
         /NbytsQ6Z90mqt7ZMdXJtXhXsbNZhjdrrc3ul+qquHHNJjLTK1gu0JRNaDlRyAp8pLEi
         VBgu3ertjbnV68EKcjuE7KHzp62DfaT7DtZ07ZesNnHc3r3034vDw6rf+tjbClJsuJk1
         xF+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/UdqQCLT4X79VwADHsUk2Zc9PG2ssT7cIogtW5cBJlo=;
        b=Eyj6hzqUR49qQnFJD3eSo6GbtGGq/F11M773qcuoGiEB8USuOdgiCgFQpWfGMR30t4
         aiz4Douj6m+Q2GBBblquZv7oIlw/3T8Gtw42YBbur1qYPLX6oMRNL33UegYK07dGMAie
         0UD2I4eFwr6WxlOEuy500nmynOcH3+Cy3DczehkrBZAEm2U52hOmMiZGh5i9dDoqZWnI
         3RE5WxP4Amu3iJUX8HrGiBokud1Scr6rmqThsm+fbGLo2LCc49hT/6WpgWokxuQh0UC+
         zUNcG5rRFcPny1Jwz7Tt58YaaO8RIvKmxpM1lQ5id4XZ92ceDUj8Q5WoXkcBq+hFd4XB
         bLGQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531g7lQXn/ZI3/k+kFwch+4kAqKosCHsnuUj3SjBy/B4zy3JZBai
	Ue0FhMqzCEDd2CFFWRE+tjc=
X-Google-Smtp-Source: ABdhPJyGSTEuLYP8OnAAz3wARC6G6Y+iBIbBgsl8AngiVilsatoKckjfWnOFKHWjeoMviffjnPCh9A==
X-Received: by 2002:a17:906:4099:: with SMTP id u25mr51018077ejj.453.1638831093017;
        Mon, 06 Dec 2021 14:51:33 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:c517:: with SMTP id o23ls2634628edq.2.gmail; Mon, 06 Dec
 2021 14:51:32 -0800 (PST)
X-Received: by 2002:a50:ff10:: with SMTP id a16mr3080338edu.275.1638831092275;
        Mon, 06 Dec 2021 14:51:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831092; cv=none;
        d=google.com; s=arc-20160816;
        b=dufAg2Ufc8Lp3kE0pegriqZegEqGWNYkydgcFXudLxbngtwOoTdzwZLkFdTuL97X5Q
         bH8/5+Atwkc8g0ETg+/ELZ0FmEXDaIKUwP2dTUVMsdLuSpYKkW1jEgoLe5Hv5PDlua7z
         dNDKrX1MQ1XMa/EoHyBDtr9ZGYIG6EUbwA8w5PnzhEp65wJcsO9GZEANo+R2yhYxE2co
         MgoYnErE1IW96KVTLQPH2dxhTAgW5ztAypKUrKs4f2XUx8aHNStBUkhqyl3u9gyF7zYk
         ON8c9ty3ksBH2Cw9uPg41/Pd5mRu0iAOWHnSCyNLidXAkanOULpXmoH5G2K6gOlPoWT4
         Bijg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=dSVT/iBVTDrru1VCPsyUkPO+wlN5QYdJblBQDMf4a+Q=;
        b=hQK9Tb525eUzd2LTdzy/D6eo1Ie6eFJD4ROIW7UjtKuPWizNldFLPAt/XWms+GIOx+
         I4eZBbKyYjpVjCi7UUo1aMhth6w0uH8ziZxmslZRrPotIAAeO1kkTiBmgQV9xK/UCvGI
         OjWzGIkI5o2RONMDacqC1tCVQ5UMwDmm4e70cgW29Yb7law4oktMXMLoCzFdXTvL2SWA
         suRwSfilXmGrgLwYLzEmlao7eKpw1h11aLEWQRKrwoBtiL5abu7MztMiuTsLDMXjcTp2
         khRdEECrHNKUMDuQsbQiziHlEHdgKRzb6w58g7cOM5YNovwXAdYvGaJOZe7XcZkVDrrm
         557w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0jpZykVF;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id e10si970714edz.5.2021.12.06.14.51.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:32 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210748.576162169@linutronix.de>
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
Subject: [patch V2 18/31] powerpc/mpic_u3msi: Use msi_for_each-desc()
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:31 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=0jpZykVF;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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
 arch/powerpc/sysdev/mpic_u3msi.c |    9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

--- a/arch/powerpc/sysdev/mpic_u3msi.c
+++ b/arch/powerpc/sysdev/mpic_u3msi.c
@@ -104,17 +104,12 @@ static void u3msi_teardown_msi_irqs(stru
 	struct msi_desc *entry;
 	irq_hw_number_t hwirq;
 
-	for_each_pci_msi_entry(entry, pdev) {
-		if (!entry->irq)
-			continue;
-
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_ASSOCIATED) {
 		hwirq = virq_to_hw(entry->irq);
 		irq_set_msi_desc(entry->irq, NULL);
 		irq_dispose_mapping(entry->irq);
 		msi_bitmap_free_hwirqs(&msi_mpic->msi_bitmap, hwirq, 1);
 	}
-
-	return;
 }
 
 static int u3msi_setup_msi_irqs(struct pci_dev *pdev, int nvec, int type)
@@ -136,7 +131,7 @@ static int u3msi_setup_msi_irqs(struct p
 		return -ENXIO;
 	}
 
-	for_each_pci_msi_entry(entry, pdev) {
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_NOTASSOCIATED) {
 		hwirq = msi_bitmap_alloc_hwirqs(&msi_mpic->msi_bitmap, 1);
 		if (hwirq < 0) {
 			pr_debug("u3msi: failed allocating hwirq\n");

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.576162169%40linutronix.de.
