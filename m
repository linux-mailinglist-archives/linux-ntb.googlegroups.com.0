Return-Path: <linux-ntb+bncBDAMN6NI5EERB3NHXKGQMGQECE7J3WA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 607CC46AD4B
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:25 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id a3-20020a05640213c300b003e7d12bb925sf9676592edx.9
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831085; cv=pass;
        d=google.com; s=arc-20160816;
        b=UGVC2/rzMtMwXpeu06Yfwb/1hhMJNUBTIzuc2ZjMSVv8OB6PyacrAlvJcZz8hclzR0
         416bJoCYBBzyo1BmwtY4hGTFhkrssrZpbbqG+fn+HC4s8RiTOCZDKKxYWZ53awApD/Iv
         +VBkmJRuuv4jDO1AjCJZop2CiGRegtOFY5l3TByeDpYBTH3XF9L26IAJoU71t8Ny2qF3
         NlljHXRxszQi8BRXbdGfjCQmKByiIgmw/+Wc3P81sqKNVD1htMc1u2drjtBbTx7OuA28
         hZDSD9tVqi6LL13n/mxKl7I9sUDvy5R72NSm+Tiyne8azrq5KIXi3e0I3/lwLBhicFPp
         elZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=edrWIX9MpTXqb6GmWEEeSpGB3Om/3g2d3+caLXye/QI=;
        b=qbkg3CIgnInawHbTKeLYPmRAtYANfqlFJxVq711maue3Bz4dgGQpcR4L8Wwhx0mFzS
         ImQsn4PFQPd+yNq1xS0b1Z7/Agw7n5+VeEVfT8J7lnWU51TZQTMf1oVQh2cX+KJQTkiu
         Lva/kY1ehA3CU55IIsJ/BmJKkRDY2Ba6ahyCVw+NBi42K+SDGDg/Nvi6e1yW5f5R6hBj
         /6lH6TUaqFEH5eBc1pBco+n31WOHRAMt3a5AHXyQTHK8GTA29UHzMWQFLWOhVN5guYbP
         fo6hq9sdLnZiwFSXV1Z+j+ScKujGT0DdqgqZ/NRZsyBt1cNIu+cEDRivuRcjVAm4xvX/
         Bpgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Z2biEVRp;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=edrWIX9MpTXqb6GmWEEeSpGB3Om/3g2d3+caLXye/QI=;
        b=m77nxgYU+afY1p8Pnjs3p2D32PLn6T77zaLaXwvsGHA53W9DTo0iAvVbWKZ36YxDjS
         tFHuClrej+xta+uWeXU+cFmQQG82/FGB6p+sFUCAC5SXQhBT+QmU5k2ylSs25YpV0c8+
         JH5EF6WyyweWvxJp4iIOCOt1hmo/3mMoGhBqNL7rQzPxo7JdjyiZ2+f4XlQ1JS4zSlOz
         4u47IUsECAwMrosfegPv1zo++NuuR6iTakgP4zLKGcDxYEIsONHbyvetIr1wB2xdUjfz
         zauA0D1MdW4C+j66KKR60dMN79OLyYFTEF/1M9KoI966XfWewcO4cg6uMPjcnekIFzJ3
         ROqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=edrWIX9MpTXqb6GmWEEeSpGB3Om/3g2d3+caLXye/QI=;
        b=OjWC9Q+h5xrYO0ZnR9eN/gbpDDGDp37TSNi9eMPi7biILGxehk92T+54NyhnHfOXXl
         9KzkHF4GTT87Z22T0RdIOrDGmDbo/cMT7Fv0H/5pSEvlMmilJxvEpGFfJedb6TlooByN
         +UmG1cijXUTSVj9jjEatvSeFY/X3k+09gz6ObVuFmZ0PeaapPBGC+6J3PFbybVHoTiHx
         MUIKJrDqSZztfRExyXTMoiZk8Xw2v41Nmgx4MDBES9RZNHYEdCRuGAaOZxvfoMxCo/Bh
         WkASSecIWsgvkT8cabFdbdReRsE0+b25g/7jOMlMvt9dL1pXmXyS2PyHLqms2SEPYdAi
         i/4g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532GZXW8W4epaF4VWfTpPXWLzWy1/eCHr/pcDJRoWrCKpcV71Mkb
	mXYFAZoz2poDSSOn937Ile4=
X-Google-Smtp-Source: ABdhPJzYmI+o4iVJEGj/bvghxK1jhZN3PU14tFig4iAAqU4+aEJsI+HsKgv07PFnjtUNNJZ728PvLQ==
X-Received: by 2002:a17:907:1b0d:: with SMTP id mp13mr48754302ejc.29.1638831085168;
        Mon, 06 Dec 2021 14:51:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:907:7f0b:: with SMTP id qf11ls6360506ejc.7.gmail; Mon,
 06 Dec 2021 14:51:24 -0800 (PST)
X-Received: by 2002:a17:906:cb82:: with SMTP id mf2mr49021595ejb.266.1638831084320;
        Mon, 06 Dec 2021 14:51:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831084; cv=none;
        d=google.com; s=arc-20160816;
        b=GIxEDoGTnukDM1IAudLjW2yVO7RGkqY/R7mv7gkbEPPVpkTHiGClx00D14n1RtuLKH
         szPog+N+P9rtWAb9lt11saRFl8KydIKQNRoFJRtBWPhZT8bsahEhMsi0TDu2irGdtPiQ
         2epj9zB0aDMPS+WK4+bU+y2yTlcKFtCcNIykAXKS7+jjGFWvukPm8YHB0wQhQWqyNSBo
         FGUwWaOijo2R2+1DqQDLq0hoCncb6FH/Tz/7IgS8QDICnm3wpL79UmsaoCVGtDiFuJ2g
         DLRyi/ynoO7b3j1gJ56sYgRH3VUybCmdo/2L2oHnCvxSNjqzxQWq1smds+GStgjTCJMX
         RItQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=Llq/xc7jQ8Xd7gII/ZN8QZkMZgTGCYn2L7HFq42V+hA=;
        b=TqHXIXe2V6OgfeeUMhWhDw7I5vmxaAyYHAfI3nUBe1/PKdJQvYtanU+lDjpc0B6bsR
         pRNCDWF2VmEeANss2CO1dfkOrp0bodZatc0Tl81fWo16cJOHfo3qruiNhoCFYdb5CGmt
         Zdd4Lsv7kRip4QuBv86QVdQxDzIIQ00w5zbpLXBYOK4UKddJS+uRCNrfISCrh32puo+L
         Pyn5lfSBdfIXDmdYZEJqjt6iBO2pM81Mmfei7bz+vDUsyuWV6b+1ef1Jlx9dqosXCA2h
         2M2WXzXKtYBwsj9dCy6Z4w9QjhgjnWmBM+hB5/qhrvDhRAG8aZ/LPrKAvNYJdVKDYMPR
         fy2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Z2biEVRp;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id eb8si1160877edb.0.2021.12.06.14.51.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:24 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210748.305656158@linutronix.de>
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
 Niklas Schnelle <schnelle@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Logan Gunthorpe <logang@deltatee.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch V2 13/31] s390/pci: Rework MSI descriptor walk
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:23 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Z2biEVRp;       dkim=neutral
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
Tested-by: Niklas Schnelle <schnelle@linux.ibm.com>
Acked-by: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: linux-s390@vger.kernel.org
Cc: Heiko Carstens <hca@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
---
 arch/s390/pci/pci_irq.c |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

--- a/arch/s390/pci/pci_irq.c
+++ b/arch/s390/pci/pci_irq.c
@@ -303,7 +303,7 @@ int arch_setup_msi_irqs(struct pci_dev *
 
 	/* Request MSI interrupts */
 	hwirq = bit;
-	for_each_pci_msi_entry(msi, pdev) {
+	msi_for_each_desc(msi, &pdev->dev, MSI_DESC_NOTASSOCIATED) {
 		rc = -EIO;
 		if (hwirq - bit >= msi_vecs)
 			break;
@@ -362,9 +362,7 @@ void arch_teardown_msi_irqs(struct pci_d
 		return;
 
 	/* Release MSI interrupts */
-	for_each_pci_msi_entry(msi, pdev) {
-		if (!msi->irq)
-			continue;
+	msi_for_each_desc(msi, &pdev->dev, MSI_DESC_ASSOCIATED) {
 		irq_set_msi_desc(msi->irq, NULL);
 		irq_free_desc(msi->irq);
 		msi->msg.address_lo = 0;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.305656158%40linutronix.de.
