Return-Path: <linux-ntb+bncBDAMN6NI5EERB3VHXKGQMGQEQX5Q56I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 755F646AD4D
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:27 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id b14-20020a05651c0b0e00b0021a1a39c481sf3899199ljr.3
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831087; cv=pass;
        d=google.com; s=arc-20160816;
        b=AmL9yDSZ9PVEID8MZeRWpelZR/gvJj5eBOzpKIA1AeMatN4hd3d/JG9b4OSdugcqRx
         /bxDWKfQ/wu9Tz1HdvhyPbjhOWiqnkYh+Iubv4ZrbbSYPfHwdpsINc1s1Zhb6eSWMzP5
         DzoRNQsAasYgW+f0guB9KgowOTK1ToJ6MoRie6LrJb3xgrvebdP1N+86QMUg6v1Q/iSX
         njpEW8/hg+IM+EoSJCUyIiM8LmO0eUA1yce3+cpIZdMX1dKru6Aafk9zWeHxog2CtYhu
         nBMuUCpSeoDKt6xJWYNeCjzZ0hO33QmecKS60BQxCVRPC9zNIWl7OjMF/2yP+0MNBWLh
         cjsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=lTbGN0zDk0oJQb21zV+bqzfrvISBBOb9tZtzvHoWHrE=;
        b=ZgNVB2JIKfCj4UOLeoU/OUxHo1R4MNJbpxngjIjfuI83KTnrKY/aRReL+txTN1rfUU
         p1on5BuBAeJmEG0v5OCoybhiSTE2ikMJa8d8l/kY51JzKuD66LG1sLnMRpBmNuMBA5KB
         xEpD+ClgQ7kjNowOYybs16LXL0YEC/CrYUszx4SUBdB4aE0ycXB/cdHH8I0QujGc6gAn
         pOb27SU36IbMKs10erseJ4wczw4X4/3RkHBaqJIqRpXA/aspmoRU/rNtIfWLO/plLFsR
         6+1gUqcteXLMJvQhEbWF/muL1KskPAuik7M3+vIiDREvtyzOd0gTRrbCI7tp/jgUAdM+
         Z+Lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=QbOlaYLd;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lTbGN0zDk0oJQb21zV+bqzfrvISBBOb9tZtzvHoWHrE=;
        b=mM2OvooFhWom1dPbRMlOQ32FDXFeV+yorpx/2mmgjaat67cjqcKTwHQ+WQ2iDTwTlp
         ZsMXw9CKbHZ2OisUKIyt4p5UzPcfYG07iWlMJr8APuHbmULkQIbuNMGiSnMzCxaZVTr4
         vObOiUba8wnmP/t/n9q9eGqYnBdEkOVUnx/IcmsXU+YhlCce/gTx1tcNR9aVkzFZ2Rmj
         Jfr0CeZEw3HKPHfUb/w0XqZ7Ls1fwt4DAC2o+8n6gmjJHFNzyofCKzHiRFgLB2lcwesr
         aAnxhP+OWmz2RDXML+Ol8SHmEP9RqL1jfKTmdvr0cecCruLPzFIKw9mWWVntoicod2+o
         hR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lTbGN0zDk0oJQb21zV+bqzfrvISBBOb9tZtzvHoWHrE=;
        b=EYA2UwQvV2xyQ48Esiy1hc5AproPGG+sW4lsLqrDOcEDNDUzEyFarX6UGT87DvqlWk
         jpaF1jT9l3KWRfBG/UjTYz2K10ayseg+xPGuhmNtDzbdAgdsiLEebZlyP4Huc2+gDMX4
         jRGPDEP3s2yEPfGnZmX0wOPKbJjhXSj658KOoMu55uMu6BQYWbbWQcU+zu24Zr9N2PLJ
         CqKdTEBtfP9MP6g9A8hU2SwsviOsQ6x0bDCOdrq+UqP8d3wNxKYj23iVYDD3KAfFUppw
         0l7gzUwoGYnpb8KELhl1BEUulXWlliAqUxyFjJCpJgX29LgvNvkRD3HxSq5OYpmSbkB+
         wH7w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530jI7j6visg3K5GVqpImSL9WJYiFh/kdIpJV15rsY6FroqlkOyG
	AswpzpnlawncXk6t8t68OX4=
X-Google-Smtp-Source: ABdhPJwWdUj3+fzcWaypYocIScHD4gMgrQ0donbuWboB5sDLjwmMaP9FZBFLaobTMlj4ePAO/706Ww==
X-Received: by 2002:a2e:8895:: with SMTP id k21mr39330758lji.331.1638831087036;
        Mon, 06 Dec 2021 14:51:27 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:1251:: with SMTP id h17ls2845735ljh.6.gmail; Mon,
 06 Dec 2021 14:51:26 -0800 (PST)
X-Received: by 2002:a05:651c:308:: with SMTP id a8mr40133779ljp.149.1638831086151;
        Mon, 06 Dec 2021 14:51:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831086; cv=none;
        d=google.com; s=arc-20160816;
        b=InlWiOkfMUTj6dvTkmkef/kPzHcvfsBJYzaXTRCXws6XpWHOKTYc/OOk7BL0R4Zyy4
         jkdLgpC/FKRY04rcEiunxt3GwOGIGhsFKTh7esjnbI0HJBNfqtdMrT8AGEuWNhnBeNWB
         CvUaemG0yZiKYRmRTGfG/tGBnOTUrK3c8MALl8a37TXDcxmT4qMIzcLFvDmSjP6RI/52
         nkn1AOYlak2TnpNwnx5AFQoF+Zo9AZyRuzFSg9uhdD7ICoy7Alq9aPukKogBAFO/T5MS
         KNeme0mhuZmmFnYSAqpdBQIyMytwRbE8713PRyOEh750AYoI00db92hf+0hh+YD5AZsI
         B8Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=Zss9mzfScWFeJ2auPATLVX18AC4Qn1uic4NkiF38xfU=;
        b=nb6ezq0yp4skRoVAdhYaAcp6U54kf0IOhk9u2WTotaoa194HQsOQDIUy39zMIuOEQU
         9RyUYxX8A2zn/chgRxYdzqev1I3/xE1VgddqJNqbtx2IZRKPon9xSSDSO4fbNziQ/wuw
         CwgfqmERrWqT2za7W89i6d7QGLbRdkFU3MIWkOlKaoFfqkn2Mi7A4goYAqYvgrAHp/an
         S+D5gnXBtvStuKYw7r2vON34Mlv0Fq8Vi7M9iNkm17PepedO2V2vsr37Zf76Yv05Ojxc
         qTcsAJ6/dBlFM26Ctfj6G5PkpcP8ZNC3bZGnCxK0v+dLC9rsWbd/Ioyovg8oLvDt8TKb
         czAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=QbOlaYLd;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id h12si821019lfv.4.2021.12.06.14.51.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:26 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210748.359766435@linutronix.de>
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
Subject: [patch V2 14/31] powerpc/4xx/hsta: Rework MSI handling
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:25 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=QbOlaYLd;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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
 arch/powerpc/platforms/4xx/hsta_msi.c |    7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

--- a/arch/powerpc/platforms/4xx/hsta_msi.c
+++ b/arch/powerpc/platforms/4xx/hsta_msi.c
@@ -47,7 +47,7 @@ static int hsta_setup_msi_irqs(struct pc
 		return -EINVAL;
 	}
 
-	for_each_pci_msi_entry(entry, dev) {
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		irq = msi_bitmap_alloc_hwirqs(&ppc4xx_hsta_msi.bmp, 1);
 		if (irq < 0) {
 			pr_debug("%s: Failed to allocate msi interrupt\n",
@@ -105,10 +105,7 @@ static void hsta_teardown_msi_irqs(struc
 	struct msi_desc *entry;
 	int irq;
 
-	for_each_pci_msi_entry(entry, dev) {
-		if (!entry->irq)
-			continue;
-
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_ASSOCIATED) {
 		irq = hsta_find_hwirq_offset(entry->irq);
 
 		/* entry->irq should always be in irq_map */

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.359766435%40linutronix.de.
