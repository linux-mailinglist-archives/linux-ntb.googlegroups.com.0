Return-Path: <linux-ntb+bncBDAMN6NI5EERBJURQ2GQMGQES5PX7GQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 6047C45F950
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:51 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id q82-20020a627555000000b004a4f8cadb6fsf6186167pfc.20
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976230; cv=pass;
        d=google.com; s=arc-20160816;
        b=JgjNfCD4Zc1UIH2dT/Kr9e3ANOPh7RXvbcbsIOWRC1N4WeAZ4x6JdVAEifULM7f6ie
         SluHQLWW9R65dYR5CRf4QFuC/F497mWeXXrn6WhB7wjOBfms11bEINNtZBrTQWQOnxoV
         uDXgja1KbUrn5LXSu7p4XJT6MYvYwwZ6WpP4S135ZuOxDfhFVRvPTt4uZzt+Pn/BuTfD
         +RYyrZ4K6c1SGeo9R77P0UnY2NAenhBf4WQMP/Z733+9Y//bfIRP/4BPlrtX47CowJd0
         u7s+erX2HRQdzJyxhp8BHStB+0GbMkvoJTHAjVbMrNr+I6MQ70EPOPlSwQNhIjduP18N
         N9zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=8B4lcc/bAwOXU8cUAfPdaji28c0qnpUKxPg2gOGBsm4=;
        b=aw6QSTUiDc8SeYRD4550PZDQW/I/8SGMD9H7EixowBxM6EKJOhguyH55xC5RUKZ2hV
         GY/2AHZARG7KNpjv74YHBq6PFsTGiWmgN/s2qXNimGGP6Vpkv4VF8596LJFkeWNQDCQg
         cWB0HPE6UyYuugGrkHGFMRFnbDjTeIo+fvb3QI0DwD4y3QvBOtlDeBbK8OP2Jjl4wDvI
         ZiTsIuFtiQyuQ69SeyJyOjh8MZ2DuIvh+WjeRYFDLujBS1xP+UArprNM/rGGFPKJBNoo
         qRSBMPFW69JNZOZvrcCv792jnTEPULXZ7XP8YQA1dw27DjpNZ164HOD7sY1bvyNIt3Np
         D0Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Flk9jqiw;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8B4lcc/bAwOXU8cUAfPdaji28c0qnpUKxPg2gOGBsm4=;
        b=emDeQnRehl6iHXh5E5khsdnyLHVVhhR20iK0gsRwEImbQD3giSM0kWzQbSYPv1dFm4
         pRTFfVTMX4Jp2PMcPmKKdWJy0Y4kHvR9weF1MXRxW8IBo/wIepGtCE+WDyKRlevXa2N5
         E9rg/fw68/wn7MFBxUPjqSaLhx2cbqD0PLRXjS8xrhxkEmisAgU5V2Axxv0JpEKnyj49
         mn0JgnYKwvW5At2lXpD7DO1qNy13iwgXOyAYJ9J23yV86bUZBYcN8XMNaivEfir5p09j
         nXQnLO0fQCcEP1y4XUCibou+K+Zs85GIBUkYMMUIUHdkxdlAVOg6vjOMcaUSqHzPbmKn
         M4zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8B4lcc/bAwOXU8cUAfPdaji28c0qnpUKxPg2gOGBsm4=;
        b=4WCoWWCLtd/XtLmQEoENOJYwB3f8Qb7j7jbyOXpO//miNbCslo5XRauwNeRcoxSKlc
         7BnFRZ+zQENIjW1WWTxRoAzT9/ndf5KPX+8Dq4j8QMvbLJy12j8izUD8xzEYb3K6Mk1A
         TdbQFW+LmJrwIPgLgIIgoBgnQtpRxgoH+jJHQWPF4nMeJbC2u+eXGF5X/DMEVd4bF4Mk
         eV/QnY/HEbSXKmMwtk92JEsfgg+AnUxtwq5q0yPZCdIHNKJ1bZZ/+kFfxyPqfOIMCgrm
         k3ar1/SPhZZbzR415gBWIA7jA7BKfo7kF3YxkVfnLCvZcaQsr15wIqoJd2qJunJW2DJL
         2MJQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530XwemmoCUvvFN9HrhRNV8qfge38HS3dJsB2LkaZ0a76qgojT4s
	NSg7q3lLOAp9Gw6J/+EXllY=
X-Google-Smtp-Source: ABdhPJy6604hfcUwe3SWS4KtVbHiIe8VaoWQEIh+TqN9IE1BA7clOfK7xUyELaq+q28XSUeqVt5/ig==
X-Received: by 2002:a17:902:b210:b0:143:789a:7418 with SMTP id t16-20020a170902b21000b00143789a7418mr42228642plr.38.1637976230124;
        Fri, 26 Nov 2021 17:23:50 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:1706:: with SMTP id h6ls2967663pfc.9.gmail; Fri, 26
 Nov 2021 17:23:49 -0800 (PST)
X-Received: by 2002:a63:2364:: with SMTP id u36mr24052741pgm.59.1637976229578;
        Fri, 26 Nov 2021 17:23:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976229; cv=none;
        d=google.com; s=arc-20160816;
        b=Ai3J1p+93Ii2/5ZZaynvw6r7kqv2YfDI7b+PVAbbpxxuJUR/W8xoUsK/gzbunJs1VE
         Gfc10W337uyQeilbBjEAphA7xLq5NhWp+iVCcKmqX/wE4WBYOun+/NHgVVJjzhq5Q+12
         GrRvTn34yE3MP7TCIC66Zixg+s5O8FN0v0oci/skRN1iOdpF5NvGZ10eizII62OqhHRc
         xGGIFXMlAQcKt+N7s92lbVSKRPTxXLuUERIJze7UJ3OU3YDQ8lJNZb9+EKOWhNlelp1F
         ynJY6lLH/sYbRVvBPzVqqLEA2B6V7jmkk+iUDzRitNsHTKK+FztFUWlTy5IsNaovyEFC
         EZTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=mHgTxiBl9Pg381SuWjuguHHZxZ6bDXurYM8uLZLwzPA=;
        b=vDIIwhCs1N3CHdnnTWqjA2NWlhwas1P8eoVcYsL1glKBunKrmPw6X7RR/PEpbqpEH7
         Vww8CyoAZuTgG7DXQze63XM9j+VdqYnw0VB9B+Pt22ZB/l6p+BC1pUZIEGdQ7h9w1PSX
         +jRzGa/ku6WyhscfeRwoVgzlUBRQnk0URMzZ0Mk9MMB4pdX/tKqpIZI3XfWKJD/iaqbL
         2gH7lFkQ6vOfs1hmNExipI50c6rlqnMkmFp4+bZjMKN5jmQazwe2TuolSMsOI8f9Is3J
         BocDGXPVgL/9yefZlnjoGZ84Vl6FxGJ02qdwTKs8ytYrGYW/g/qdPG6pL285MpfBfZz1
         RizA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Flk9jqiw;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d23si534649pfr.1.2021.11.26.17.23.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:49 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.010399268@linutronix.de>
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
Subject: [patch 12/32] x86/pci/xen: Use msi_for_each_desc()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:47 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Flk9jqiw;       dkim=neutral
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

Replace the about to vanish iterators.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 arch/x86/pci/xen.c |   14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

--- a/arch/x86/pci/xen.c
+++ b/arch/x86/pci/xen.c
@@ -184,7 +184,7 @@ static int xen_setup_msi_irqs(struct pci
 	if (ret)
 		goto error;
 	i = 0;
-	for_each_pci_msi_entry(msidesc, dev) {
+	msi_for_each_desc(msidesc, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		irq = xen_bind_pirq_msi_to_irq(dev, msidesc, v[i],
 					       (type == PCI_CAP_ID_MSI) ? nvec : 1,
 					       (type == PCI_CAP_ID_MSIX) ?
@@ -235,7 +235,7 @@ static int xen_hvm_setup_msi_irqs(struct
 	if (type == PCI_CAP_ID_MSI && nvec > 1)
 		return 1;
 
-	for_each_pci_msi_entry(msidesc, dev) {
+	msi_for_each_desc(msidesc, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		pirq = xen_allocate_pirq_msi(dev, msidesc);
 		if (pirq < 0) {
 			irq = -ENODEV;
@@ -270,7 +270,7 @@ static int xen_initdom_setup_msi_irqs(st
 	int ret = 0;
 	struct msi_desc *msidesc;
 
-	for_each_pci_msi_entry(msidesc, dev) {
+	msi_for_each_desc(msidesc, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		struct physdev_map_pirq map_irq;
 		domid_t domid;
 
@@ -389,11 +389,9 @@ static void xen_teardown_msi_irqs(struct
 	struct msi_desc *msidesc;
 	int i;
 
-	for_each_pci_msi_entry(msidesc, dev) {
-		if (msidesc->irq) {
-			for (i = 0; i < msidesc->nvec_used; i++)
-				xen_destroy_irq(msidesc->irq + i);
-		}
+	msi_for_each_desc(msidesc, &dev->dev, MSI_DESC_ASSOCIATED) {
+		for (i = 0; i < msidesc->nvec_used; i++)
+			xen_destroy_irq(msidesc->irq + i);
 	}
 }
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.010399268%40linutronix.de.
