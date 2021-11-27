Return-Path: <linux-ntb+bncBDAMN6NI5EERBMERQ2GQMGQEJQWPUVA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B12545F967
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:01 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id 100-20020aed30ed000000b002a6b3dc6465sf11546142qtf.13
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976240; cv=pass;
        d=google.com; s=arc-20160816;
        b=khYGN+u9PQD4p5RDHl9Qsk5gY2I2bESmNN8qkwS/Lg+hiv2YD+j7cDivJaomVdNjIp
         6JZ71Y04NYxtl5L4z2vGWnvOiboH+I1QF4Dh1ru9T/N7c5GemnEQkehYzwP/tC7wsGE2
         sD6bXAjPA6eBQA8wi971xt2yVbwq7sCVTMrVrEK7EOV04vj8D+kN5RcoPdRtdztjd/y0
         y2Od9d6GJSI47rhrXCag6mf7n3f7YJsuPlWm1Dq7y/HApJ5+YQjsvedDOcFEhqnUpj9b
         WvKbxu54xtydGfPzxyLM3shWy6ROtY+Gge5mO7Sakq/ydikPoBhVbiEkwE8ShPq+6J+J
         BDUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=0hE56R2kGLd2RjOiUK5aI8LNGcTqchzS0IGFMYKB5rI=;
        b=awF+if/NrI1AJRtwL9uL7f8+RQ43kMIyO1PbhDNnUL41cTHjB44EtB96eSNTtQWwNi
         VzyK8u1e9QDMd+LG84O2di6d5wLMhdqea2eAJm7NEiv7KrBLQ5M1VT0PxZyyhhk6qRUi
         4o7XVuUUaOahG8yXAsv2jHuexQlkgwoWehQjH7AP7AG97epItLGCV5gcSoD2O9GZ+pzu
         IiKd3x2eniN2zA/inbypAXuOW9g+VExdSp0wNcKaHcCUrCiDQ6bsNaWDjmqCFqLAsySC
         nfwYXnxDKPTHPuP0dOrUcmntFkQVrXdOz0tDz2iDwi2aZRSvSb2bHI8Ppw0i0W+NwB9U
         Cm7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=pISjU+Sc;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=u1zjXzQM;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0hE56R2kGLd2RjOiUK5aI8LNGcTqchzS0IGFMYKB5rI=;
        b=K5bJrHgUIpwuoY9Yfj7KonCMkeOIiZuBzmoE3oP5V9SBeIPwTt26DEYrwK55CbVPyS
         EaxOEmxtA4nn7+FalWqRL2fETkLWj8x7rndFC6ugH7x7zxq3/2u3TWZq27LPGADWbM7E
         PW+vbRlt9qN+AjX44T/q2tN7Blfhb1T5MAIcxxNHE8VlmIMxjvDV80kxrjOvarBYS173
         99gc2fvsB2fpZ9ELPEEbH9y98NEhMvLq79Nx+7xOxpcM3c9tNs2b3thQU1kIyzYhJqQq
         53/ObhryVYgq3mPzCXlPQfgAtsQloxFvY5gnZcyLvflidfO+0u4zDdJRVt9o4801WjLw
         uDTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0hE56R2kGLd2RjOiUK5aI8LNGcTqchzS0IGFMYKB5rI=;
        b=EZccDlwptJyoMPtdIWmphet7h/a0NLbWBdNRaH8+gqL7U4Xko1J3unBudZNcFgTDrP
         rtp0TzgDzirYoQF+I99Un1dRu4YqoRoCVQyi7wwjNBUfKB0bre38PIM+i852fZ2VMYi4
         S7xQHcQBynrhoiOODqSrvb9MF3cEg3nOKxMj5ZuHkmh0xEcJ+vjLtLbNz1+Jsq3qgWhS
         p1/KJ9sI7zzRJYj/fyAEX1rIO0EYf4osS0BTZJXdjJ/yBmDwkInsKXL4CAhs2+JdsNfp
         yK4J2p2HzXQQpMDGjQUMt+EiDEaG3kFUuhnZpwoPdSj+I4s4wrxzmz1CMikgB0+OBba1
         UaQQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531w6N4pnX37kueyo8DwFrRR1dIQbzaYNGefwa8m3wZWq6QdM5eh
	xcr2poZiJWDREtGSq1I03PM=
X-Google-Smtp-Source: ABdhPJz0JqVdhpK7I2h4xH+fR8mnLUyqNHUWnEeIG3T1j+PxieAtf9ObxmifVTH+vzxbvGAYUxkdGw==
X-Received: by 2002:a05:622a:19a6:: with SMTP id u38mr28949321qtc.416.1637976240352;
        Fri, 26 Nov 2021 17:24:00 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:5c05:: with SMTP id i5ls4300704qti.4.gmail; Fri, 26 Nov
 2021 17:24:00 -0800 (PST)
X-Received: by 2002:ac8:7e91:: with SMTP id w17mr20534391qtj.457.1637976240012;
        Fri, 26 Nov 2021 17:24:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976240; cv=none;
        d=google.com; s=arc-20160816;
        b=nAQC+M45LrCEakw8mmjenLqujQR7ZL7rvzbj44OJKUDIngzKh1GiCX+IRhSGE5HF5Z
         jDb9sQJUpAaKUcP3RsXXibOHxFeSsAUxsTzF9Gw8OLXu1RgPIqs3cbW5lbuAlI74AuGA
         mxdWPXDILT8h67kcaaaeuVUEA1LB4zlizVbB6gyraiXOeaI8aBbeWPIDw9Hrf1cbJiCP
         oOBf0JFZKZbDSAMspGjVr45KdHRL5PRHvqL7OcAN5WIlA9bImBx4k6DYLTUkLtWHzTku
         7z5CJgdw++cV3ymVYiFyzFH+5AwcAdZk/LNBJ3cU0eJ0HaQCq1tPvXn3HzkYon1ZmE9k
         v1xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=dSVT/iBVTDrru1VCPsyUkPO+wlN5QYdJblBQDMf4a+Q=;
        b=xLPBwJE7O5yE5fWhjl3UjJnyYkWt118tIBB0XuQJ21qRlxVJ5lBaHNqoEUXiF9RdTR
         uFajrV2KTcTryd8C9/iuxyt303REWF36IKYDmJVdAzfEelVqY1rFHFjMx3mUa8/b4jz1
         SzRQLB5gLGIjMNnTRN5gpaOT9MubmXdyptRi1G2yJRqJyHHXzkqYpYF7Ay1hXMC8hB56
         ZTvlI8nkC38zhDjnF79qkoQO+HPa/RmIJPxtN2bfJLNFxuHm+uGoDzROtqtG4LIgeDgU
         FX/LF69d0veIISOYHaJgBsAT6M2ZTn8AHzaIwyX3NIWg7hBpVJFcXjo6znbVdt+S7qlQ
         x59g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=pISjU+Sc;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=u1zjXzQM;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id n20si797435qtl.1.2021.11.26.17.23.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:59 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.429897588@linutronix.de>
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
Subject: [patch 19/32] powerpc/mpic_u3msi: Use msi_for_each-desc()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:58 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=pISjU+Sc;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=u1zjXzQM;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.429897588%40linutronix.de.
