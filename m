Return-Path: <linux-ntb+bncBDAMN6NI5EERB45HXKGQMGQEHFQ3A5A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5896F46AD55
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:32 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id q26-20020ac2515a000000b0040adfeb8132sf4444386lfd.9
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831092; cv=pass;
        d=google.com; s=arc-20160816;
        b=yc8wx50+3j48CeQkw70V8RFiWbEVbY6o+uDpqtx4hPha3NxBKvHH5wo2eSXzY8oNjH
         bdRvxm706cuRcxjEmo9WSSw53Ru3n9TCcu3UvlXJwHOsyWh7nlhu6R3Duw1gDb361azD
         O+zx4g9oeC09ZQCXwSC0sSHHtOrNmoQuclcEb64Fi84/B8+2lPzDQ/e7ErLsFQmFwn17
         Nq90Ctff1iSOAypuXmo4WtOK/22FzyGucjYIesQH1aO7cZDZiLBeKkvRU3wNc/ghz0Ra
         AEkLOD9zjHX0HLm1sQRkcv+wUz9KXVYtTcu5nPv/OVVDKWgMDKfIUzuzuA1QMhuCMI3B
         mvYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=jud4zC2/ofvvRcOVUDT7fn6DLRl3RJmZH31BuobHUys=;
        b=0YiJxuTcvZ6ZMJxWfInkzi/Qs6d3xtWpCwVwnC81FIKmLaY/1QVaUPcDAHpFGmIXN2
         ImIbg5g1VK8zehd5/gQmhJ9kv4j/HgLT1jp2tSnX9V77xtiQvihP3QL6ZvwvL/Vaa/jR
         IOTli/c3pT7JXxwLLdiYgO7XyU2hP723AVn72CO1NPbsxdidyQZv58bHplf+7haX6/9c
         EPTZTsROAQPkX53kszk28CHmrHaOYrRovhFLcCMEbNXD3wRcMscWKu1J+LUyBKD6Ui1m
         iTrssilcULLVGr6l1QX4z5H7BWLPkLQb8ZDtz3WcJoLWYXeIbF32yTeOjinLqxnh3bRb
         sqJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=QOZqkE0m;
       dkim=neutral (no key) header.i=@linutronix.de header.b=rmBdkPat;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jud4zC2/ofvvRcOVUDT7fn6DLRl3RJmZH31BuobHUys=;
        b=BcQtUsaCx7K0rDwc2AHi+KoxUQK3eQxAQYkCKxGJVfjP2Fdc6gZrCM3SjX7SzlDHH+
         SnBDge7nZqZRJVqnvnUgjXaArUdQMRkJVnXydzrAX5diWUnE8njWDg1iItQSlKkR2L0A
         74Opqs8nUUrwnDIavKLE78fmokMjRf8EpTvNkh8EPS0PNGvV7EPJLfOgPT2L+NDRGeOt
         bhnYjNcfzuRPa3yxUlxpY+MaxbgUuz4V8Vpf2DVt1totbKzxf260GPbs9aeT3pfot8J9
         hAJDrS1L6WU7GEU1+XPbn6gnMsrSZYd7cy03N4S0KXN6Rxz1WKWFm0AlyphZsLAAA/Cf
         hGdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jud4zC2/ofvvRcOVUDT7fn6DLRl3RJmZH31BuobHUys=;
        b=QzOvwm0IU7YgDIMTLSzhaC+KR8NnpONJO8jdSfWl+HZGIhT0lO+/j2BGpH/IAekB9d
         Z2bXlkxgPIi4RHyxAeXLhPS93lsFqgxB92knAoE2jU9DstUtICVy1s6iQ+yMo+hAQvw8
         mpfowk1wyp8OXDiWkGdHkeH7CIC9zNoSTbhdEdWKn/BcHjrHYqcKWyurVMWT0lKCX4IW
         M2+RLWpiFIn5FboivKfjkJqSe0Uu2WjefYumPGzjaKAz8tibiUtz4TTQPW3GqWvtWeWX
         bjvpVecPHbxrsAaEFlNpU1zoJ9VO3+s+S2GPsyX7bRaxFltzs7M0tpRUtfX+MBASYHKe
         d/6Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5333RjRcOOQGD2+Ts1pqXBsRDuTBo8TGobdPWxOadEss5vZtsxHH
	y3dxZvW8wQIeewHqdpbmmIU=
X-Google-Smtp-Source: ABdhPJxEgPp9PinF8MZqbGZHckk9f/9Y1uz2+shRjFm06MDiaENRFqfrjgcB51BtplpPVYXw1FK6wQ==
X-Received: by 2002:a05:6512:3185:: with SMTP id i5mr4067885lfe.341.1638831091861;
        Mon, 06 Dec 2021 14:51:31 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3d9e:: with SMTP id k30ls2006263lfv.1.gmail; Mon,
 06 Dec 2021 14:51:30 -0800 (PST)
X-Received: by 2002:ac2:42c6:: with SMTP id n6mr37284416lfl.553.1638831090899;
        Mon, 06 Dec 2021 14:51:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831090; cv=none;
        d=google.com; s=arc-20160816;
        b=E2u+ksy9xKaK9CDRf9NvFlNBzjBSTFHIjs2YNxkexhoXEEw8b1bB2UeHN2pOLc8RHd
         jv6qiCu80t5N4Tntm1Ivs9Msm1B74xKNgRSdiyTZI2DsbF2KJDu2yjUmIOgKRDAZ8xt+
         VrrlQ2YK9eEI9ZEXywtPLTQj3MjZz7WMipz9gIacXV2EG7P+PlTqGVy4MHO+w1Rt11Qu
         66EX7XrMkW5R+9p8QM2afegCl9/09qZCf97nCNKVGRNhiNrBzNfiGpEfA9H+AdC0XkbG
         6WOzmOCot8DCNhUB2JlZfCbWPqXNmNO3fxqvMjKcAX9pvFmmLfhpvwI9JMZB5oSrizGN
         N8Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=ir5jZb4IZcCDGObECwlZouR2K23XLyndrt4jAkdV6zI=;
        b=uM6E38eeeGGgxkGkrC/5huoAVkNMBjCOwAdlM4eM0D3CvWMgmEE6Zr08yLAwm1xMjH
         P/pzP4TeZxkJoK/m8IsgQqAVTOfWMot6sJJ5cVxuIcE0gBOHiAG+Ru4oubRwHGXBZGx/
         jU9g4R0MaJEPWPt6TQEUgsTHv3sh9sAIZ4nrOApkRmOCVQ4zmAtT9XYjw3uXvq5VU73l
         XIMNBw5EjSvFEPClURWjWbEA8xQQSZdmk9QvVoEbAvPGWG5GoD7AQvxUff2ozpFTDdHr
         XKAZ4MhcwNhU+hJ1+QYsx9CeGoxohS2CQChp103zLGW+jcbENIA1VosOKbpQ+5O2Rf5x
         fgvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=QOZqkE0m;
       dkim=neutral (no key) header.i=@linutronix.de header.b=rmBdkPat;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id b9si1005384lji.2.2021.12.06.14.51.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:30 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210748.522641685@linutronix.de>
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
Subject: [patch V2 17/31] powerpc/fsl_msi: Use msi_for_each_desc()
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:29 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=QOZqkE0m;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=rmBdkPat;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as
 permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
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
 arch/powerpc/sysdev/fsl_msi.c |    8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

--- a/arch/powerpc/sysdev/fsl_msi.c
+++ b/arch/powerpc/sysdev/fsl_msi.c
@@ -125,17 +125,13 @@ static void fsl_teardown_msi_irqs(struct
 	struct fsl_msi *msi_data;
 	irq_hw_number_t hwirq;
 
-	for_each_pci_msi_entry(entry, pdev) {
-		if (!entry->irq)
-			continue;
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_ASSOCIATED) {
 		hwirq = virq_to_hw(entry->irq);
 		msi_data = irq_get_chip_data(entry->irq);
 		irq_set_msi_desc(entry->irq, NULL);
 		irq_dispose_mapping(entry->irq);
 		msi_bitmap_free_hwirqs(&msi_data->bitmap, hwirq, 1);
 	}
-
-	return;
 }
 
 static void fsl_compose_msi_msg(struct pci_dev *pdev, int hwirq,
@@ -215,7 +211,7 @@ static int fsl_setup_msi_irqs(struct pci
 		}
 	}
 
-	for_each_pci_msi_entry(entry, pdev) {
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_NOTASSOCIATED) {
 		/*
 		 * Loop over all the MSI devices until we find one that has an
 		 * available interrupt.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.522641685%40linutronix.de.
