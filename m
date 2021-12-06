Return-Path: <linux-ntb+bncBDAMN6NI5EERB25HXKGQMGQEBZUNY7I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 445B046AD4A
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:24 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id y4-20020adfd084000000b00186b16950f3sf2407426wrh.14
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831084; cv=pass;
        d=google.com; s=arc-20160816;
        b=RpdC3Whs+KCnpOfi6Is/nCWZ5KxYIwHTUF7rHbyPT+sx9yvPI1FUK7UvVh0KVA3sRn
         zCL09oMx8BeIqtjvoyI2FNThF6hIfw42VKLV4kIK4ru++AXcoNEBoaH6c+EdKKTZn/xC
         I84Z2Gae0r0ySXCMrTrB26PyHvDz6a+oKMxJ8jrsg7yzjcbSQSR40MgM5g9yXjF8PEwd
         X4IYME9UwMIafXRzSiNb/8NRupVOQ552CWPAmYJAiNjEiDCZXmGUl2uU9v1D3+Gz5bC4
         VVK98iJcJD123eTHVqJG409NnGB8Nk5jAQDKDQvNDQiGH78fP0wj8saQmKwjUwoWEa3Y
         xsZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=b5aginktStgAd7iNgLT/CScRC+UourpAiS/fvwnInrg=;
        b=VTCC2Bf4XUL2SrtlJwKD7jsguMO8N52jCmQjcV/i7Iviibi5tk+0YUMUBj9vZNpHvC
         VXCRzz0vtKd4wsnuSRDxacnY2p/3wczKc8gm+ofj5HSIyBH7FP9uhe09E0pMODprn2Gv
         t1BpdZg9HmUcPWZjLp0hAH3Iz672ID9lz1YmML2IrYW3UegZ/jclufoXjVgaNFLslWNA
         MUcnxlMxJ3L0CxelP4a3Cp73uh6ppozBJpeOhIuteDLhCf4a5kAUUe6l+fpyDo6cd2q1
         OlrZY7tGK1Ob8+sRCihltxKOsfx3AZW1IVytp9PqIIN6U1sGIvUE2NvKZenaKbhqyO6J
         cOyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="ukVi5c/T";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b5aginktStgAd7iNgLT/CScRC+UourpAiS/fvwnInrg=;
        b=f4OiQT64mWdunnXDYgWhmhFlWFmMGiGAF2EUCl9JFWxp7XJmvJz6TLZeqtv4953LUg
         TDJ6FWHhvflnglwZYxwIt5bpn6aByGQRqol7XSw5EtAPZJCo8UmqWLgahR0b7cp4gXSu
         hgI0n1vomkIrwBquLB5g65V0QNZtjr81yUAxtoqA1bW7eDfQYIyDUl0DA3227x3HA9ay
         EH94M2LNyJx9Dtcp0TcwtivozFXqpyYMYYJMihrRfhzdNtm7yPsf2JozNsvRiOcd5TUh
         l8cjuC+pKEw+qqDaOM0dNsUtA0pm/w/xKZZ2BuyPBuCkPmP5mALLPqCLsjDwB9ql71x3
         2/Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b5aginktStgAd7iNgLT/CScRC+UourpAiS/fvwnInrg=;
        b=cqbAwPCU8jazN5tRIUabX/BUqxJ7i2oglqX/LopBiEHTvC0LiFedHs8sZS1V52UyxC
         AebxPk4ELmp6JT162RcwnyPmFSPxFEb7GEepN42YyKXQ+xZvipzCQDZGTZY4HkCsbbnF
         V7sBpjIMxGHbONUwPYRSB6aPST/07BSooNQCBYLN0gq0NYbOPfesiXQbvbXmXnAABFyO
         gVvD8Z8f+c+YA6zYnhb4CrspctOCaqdXykzSo509aqLaXwPa/YOxh7/5dIub6xcQ8ZPi
         3bfmXmY0bpHF6VYuYSMW4prFVs/JatS9ccvmTCVq/fXaaa1QF7YsS0QURT//BlhzQ0BH
         oDrA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5306XkBUlbOYqLSBU2XDmxC4R/xZj3KRuW61z0is/VyqxUHNAyP2
	DbpmCsMa5oiWXGhtRgB1PeU=
X-Google-Smtp-Source: ABdhPJw28kxXby5nyazdP7fyNT9TaknsI6B6x/fF28Jk3M0AyQ6HxEyEiOR3iSl7g44QVd/MIiccUQ==
X-Received: by 2002:a5d:6ac2:: with SMTP id u2mr44774679wrw.486.1638831084020;
        Mon, 06 Dec 2021 14:51:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:7e16:: with SMTP id z22ls264511wmc.2.canary-gmail; Mon,
 06 Dec 2021 14:51:23 -0800 (PST)
X-Received: by 2002:a05:600c:2dc8:: with SMTP id e8mr1860848wmh.189.1638831083338;
        Mon, 06 Dec 2021 14:51:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831083; cv=none;
        d=google.com; s=arc-20160816;
        b=AsIKa1uPcu6qrQwzKtyI6L0yjYQ0VDEQt1SiJa4YYX50PX4zMrPu4dlb4OKbBYSGGV
         dTIJr4M1fjQKlbCTlltmCfuHWJ0bXxfaMIUQMw6sf2bYdoE5IELTDKcXet4taH1JOkIg
         XXUc1c1e5AF49Izm8VwoVTCjhhGY5nS6PoCxumkxJsf5BGfF9BV9+Hy6cH7gDubJUHxe
         TrOia2Ji9AfVjhjVBqDI59OKzLHDIKlEryQmZbSayfW55THSxrug5KzmWty0WCWie4yQ
         LMtZ1qvUfQ/rqTWYWqFD3/Ua4Ftr5ZaOMp2CBvQShkIlTzA9Ero3HGimdtFmdhrLSWH1
         XGnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=JXvHU/eN0iJfDqMWbOd2UGXYgpl11UY148yTUdaqnAk=;
        b=FSCjQFPg/vclydMKIdzmXn1f2MeJ3nQw8qs1+uJPz2mP2AIAMlP6LHrWvknlZ8ZGw3
         R9rfI8XvtaRSZ2w/pMQqQWYgFVqc8aluQDnYduCfWOW9mvUIaKfzkrUIsHUDCeZAjDQ7
         ecRzBYoCiKXRox/DVCKt0vfdyDihK1zP8n2jUfIwfQOVoMsHsMHWgtZ6kQqmzyrf+Rt9
         zsTZXHfnkB5e43W4Trd9OTrN599QV9okDhtRct5x9UIcNKYP/Rvkjwo8h8brPgnf7akU
         pA9XR40dxhvFdm3jtYe2oxcwPL3P5zFhOxSYZX+vcIN+Pp2PFuAfCVo9esEa+BRG31Km
         AuKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="ukVi5c/T";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id d9si527222wrf.0.2021.12.06.14.51.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:23 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210748.251752714@linutronix.de>
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
Subject: [patch V2 12/31] xen/pcifront: Rework MSI handling
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:21 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="ukVi5c/T";       dkim=neutral
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

Replace the about to vanish iterators.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/pci/xen-pcifront.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/pci/xen-pcifront.c
+++ b/drivers/pci/xen-pcifront.c
@@ -262,7 +262,7 @@ static int pci_frontend_enable_msix(stru
 	}
 
 	i = 0;
-	for_each_pci_msi_entry(entry, dev) {
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		op.msix_entries[i].entry = entry->msi_index;
 		/* Vector is useless at this point. */
 		op.msix_entries[i].vector = -1;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.251752714%40linutronix.de.
