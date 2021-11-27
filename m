Return-Path: <linux-ntb+bncBDAMN6NI5EERBKERQ2GQMGQEJEQFWNY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D1D45F954
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:53 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id q198-20020a25d9cf000000b005f7a6a84f9fsf12849345ybg.6
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976232; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0CcZvENoHrU5NtbSk5BzUKoVkg8v0zF/8a2BjLxFAF7UWG1K3kiyBkZqsAww4gx+v
         qYmg7MT/AfvgQCtwsnw0iHHuqeId0EexsYptoSzPFgRI6cVk4KeoIAlDoxY3J1O55skB
         DxUmsxAUTfqVDdBgfYMYSER5PO4ND/CAwFt7FnxeSD6bGTpvlV+pD/gEot8Z9EY6L6OH
         ihWJBx3xjIUsJiq0uWo9nURlz98HxM7d7VSfKSQvmuq9ve2GlRxeDoIITfdi4mTV/mlc
         laVeDXs+JxBVAyZ0K5eYp8iVQAlbn72X9di7T3KZQwv48x2dDxXFgxVJgnkb1dt/6Wi6
         FMIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=CjMaMOeckN+lGMJnUyy4y0uVuYBg/i0o2Sa42wbynLE=;
        b=Zb5aAqlC7Bzb0quvk+tb6koREO/ZNsIAl8tPoxjnfe8bwXNBlOuUCMjNyH9+If2liw
         gyD0IrIEWVS+nybRnVb6TA1lDpyoUGmEZT1JNjwq7sdxvdWh/wm3poLvln4NcJqmepTO
         ryZEyVvor8tJ6ozhXf+JIGVsfxdlER2576AZcbEg806OJPyrlkGMg8Z3BaK56pfAfevJ
         K9kGAuBBlhOPryV4Km4UrgxZnR1JUG3BHxVKsJRP6TU2KmmmNtp57Rq+2GwMaRNuhqK+
         HiM1NVtIvOWGagUlxcQgNlf6CiEqPe7Ih/d66hE63if35NHAmLklqllrAMz6kn2Hh+mc
         iCPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=St0aVbpn;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=IUp4pTsA;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CjMaMOeckN+lGMJnUyy4y0uVuYBg/i0o2Sa42wbynLE=;
        b=EPdOu4CQ46kcXrQ+S6KgXZlE3NaY6WinWGfH5qzbuEb6+iiAYxY9DoLfeBx/ziRUOT
         GO8ri75Zi5JGQ+YZLAw6X/zUg/MVjK4YQiFb9UFKQUqFFImtaa2nldW8GGe5/dzQhtFy
         LQTVoqt4gCYMTuPweL1LEob55tRyKDZ5cM1l5AZwmvRqFQlICbpWodDp821MMtAIuiMJ
         WhaF8Rc6HGZPbWF3Bl5x5yO6lcvABG8TVcqUHJpR9ztCQvIE9rOVEZDSXwk9/QyKEaeY
         /Cls4aj9UdHhxUQOwcUcBi7YObje6DymuM8nQLyRbRG0as3ZJjUkN4tDUGAcMNn7VqdS
         icnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CjMaMOeckN+lGMJnUyy4y0uVuYBg/i0o2Sa42wbynLE=;
        b=KrNNcVC3HsBuD6VWZrx3wPfnMniBFw4b2/gtrqBpGxO1wZAlMYTiBGLa0LyvuzTyqR
         8rk87j/j38uZ9KRJaCq+fF8xgntrAgjzQqJQeSe16BZ6XSmaj61pFTeUeCU3ShXRWEMk
         XBC0xrmjV13A5KAvgCVRdGlisQDRQlHGq5TVinkMpK4VMTcvo3graCjXLH8ulFwGpkzr
         172ldsSI4oEW14/WCDGF8BhYf5vgaNiCBodCZrH2+g9RfDB0VRPhNddgXTmBy2xvoLNQ
         EPMZaTrM4nMsLBgcMW9G1gL7p9y4vwj7LPg+kkRYL5QGKpxl78RU6cVAImSvAHXsQzyp
         QFBw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531lYX7c34JNVTXYrxbYESvgIzu0f1IzcGnijcdWqmj7eOmXyC0w
	2Dcr6iglDTbFtoCxgyNZu4A=
X-Google-Smtp-Source: ABdhPJx4Ewv8EHAZBUo+mh1k0a1mkD2bLFieQahZUAjFgQEgsbjpRcLtrgqdYBHNZ74JNlcnq+a1qQ==
X-Received: by 2002:a5b:c8d:: with SMTP id i13mr20298992ybq.354.1637976232506;
        Fri, 26 Nov 2021 17:23:52 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:2289:: with SMTP id i131ls4633983ybi.2.gmail; Fri, 26
 Nov 2021 17:23:52 -0800 (PST)
X-Received: by 2002:a25:d98c:: with SMTP id q134mr19088155ybg.329.1637976232131;
        Fri, 26 Nov 2021 17:23:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976232; cv=none;
        d=google.com; s=arc-20160816;
        b=pZ8BFDAz6NNU+nYddQJTp1Yu9J4QLW42kq2ejQfWZR0d/8bL2f4QqLKCPYArCDgIsR
         KvkCacFAfqazlRZcM3rq9wwNnmYB2xu3HV5+Uq195Cm1CXN+9lAtY/P56HZEOvmIKFVW
         NBeWS3vxAOoyRditlFEVEFMvYUdnznYG0DNlhuZjSnaa/hq2kAS09lkkJkbdHadYLLAY
         W+SChUUn5tE61p2LqwaFn6q1buD6Okw4Cn4LoVdhNLr3I1BhEEafXRqGrhw/+AkC9EXl
         X7W9a0xSHPf+IaZACO+nvBNDBTOLgpFdWdV/0OjtcXY09Yf9NyTNa4uhxE1YMxnlBVLo
         u+Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=bDqDcBZ6Ac8mk8Pi4m81SdvqMSMLhFM8ia6/waF9mec=;
        b=xwyTQSjXQvi7OIrhXmjtcmXlwStJOd5Zgq7FkK3247hj6NdQ7gmJud6L8E0r7P+i2u
         L611QRPZeUm2yMCknowALfXp5vCVKHjqHBk/oyMp9wmWTEI/4TBkl8txlEJJNQVsgSCS
         2rnfDG6GhuPvaSpbF2jYqgrRYzWMIYpfH1aujgwnpjTJKqylxsJ656FCeJhz8d8WZAQ8
         Ea7SkP21m4KQ2pTiZhGpQNusrxwcIpysbKuorw7L73nOK27//N9Me1jLaZZQz4fIqVK+
         suduvTgotQezjFQCdH+Y5wrQIOr2fDrv/QMhe9zeBz4RfSckajfM/h62DihLlE85+rfM
         a32Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=St0aVbpn;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=IUp4pTsA;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id k1si738936ybp.1.2021.11.26.17.23.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:52 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.130164978@linutronix.de>
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
Subject: [patch 14/32] s390/pci: Rework MSI descriptor walk
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:50 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=St0aVbpn;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=IUp4pTsA;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.130164978%40linutronix.de.
