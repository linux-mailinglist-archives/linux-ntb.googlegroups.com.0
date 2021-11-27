Return-Path: <linux-ntb+bncBDAMN6NI5EERB2EQQ2GQMGQEA2D227I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 249BE45F8E3
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:49 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id y18-20020a9d5192000000b0055c8953444dsf5083095otg.20
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976168; cv=pass;
        d=google.com; s=arc-20160816;
        b=fHbCMexGpYEoxREF3F5imFjrJG6VqUPVYvskXpuhGRsm6h80rQaVaVtv4Rk1srG8Kh
         4e34Ga+ZUvJY2UGsVtsLgm7SkEyoAyosVw8QXIk+dSrv2dvKU/9fC9AlCIc3xaQ21y59
         Wd2Hf2+67pV4/lCmXOiEh8p5aQrr5cPR3IFNJOlkHVBtywD8iYAEhYWmPmP7gUm9Aezi
         tr62Cunf3z0KLvxTARU2xFvJlQ/1KZpSr7WRejMKq0eRMaW0sWoSOQVdaMw+MBODMcIt
         rE/UZAm1RJxhTMdMab/MagX51ZIOhXMZVqkokVlIJ4a1WzyGuar9oe2tXWCwicTRi24r
         nguw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=8B4lcc/bAwOXU8cUAfPdaji28c0qnpUKxPg2gOGBsm4=;
        b=DUrQ2x7Szp9u61VNIi4f7oM1fVc6IJtwLMal/sq2JwzPqQn/FsGINuhPi3/hvlv+8A
         6OqkH6edlv6qpm7RvqoeUimhA/kEGRk4+Sjhjhys90CEbLFtGEr7K8B/qrKx8N6RzonG
         fZcKzH1jLAu26+du5vExcSkoR3EzgHCTxpgk18Lqy16koTEYmpGxHEeZ3cQui1PdgjNF
         ui4JhnjZ3+P6EzVu89d26ZNM0z+q5LMS0b/GTYlFFn6ahfyMuPmLwTjpFpsPqlbqqZZ+
         IaIoGF5CmyQSJjNtbO+dPOSQZphhRGDsScsW1OOVsTPTG5IQwaEeHfM4GY3nNbC27Ie1
         zbfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=KlWZS1z9;
       dkim=neutral (no key) header.i=@linutronix.de header.b=8C9pVa+e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8B4lcc/bAwOXU8cUAfPdaji28c0qnpUKxPg2gOGBsm4=;
        b=T6rRUBor6wJxc6MMwsOwhGBBcQE3JuzeG3TpgK4pEkxeyLrGdmDpNa9kL2DGAnmnwZ
         5i9xzFPaPqdJrUiE+/Ak1mCPFtqaY8qCqBS/QKjdmP7JQaDhMMJTb+C+7yycBEUbjX2p
         hd4PQW0FhPvrl61vaZh1bsYYiOvoewwTpF8XhqPCYuzepD5QjUoewKfdYnKRQ6qITr3p
         DQLBx67vyXs0Z7LoicSZe5n9+l0SGv2Yeo3/W8g47pxycGiN+1W43Sn12IJzGoKul1u6
         X5YioWTmMfegwuJL32GESmYTjNykIIU2MD6jEDDsPuW3GjGUXDwNexceWmQdpaaWTPrI
         D3CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8B4lcc/bAwOXU8cUAfPdaji28c0qnpUKxPg2gOGBsm4=;
        b=qAW5UyydPNypXIffAiXWEfRQc05K67wIoMz4g+I9ViI5U7gnFnbaNJeQQy/e74PicX
         JH/VqP9So3GJGE6k+nOg9KrX548LGhrJc516UI/i7oX1s4TFyRHzgAqrTiv6Qu8X0deA
         kmhh89260NzuaETsNJwYb1dG/eTw947iGNuV+XM0VUpp6JUHD2j7v0gn/0imAjdRfG4/
         EtnJBgKVG1Ot0dlPkc/Gpp7PQc838rg9K2FQ1kJKVH7jMYv1ySRWF8fjqVLkTi46p6bU
         zfmisvOL4+DKNCUcCtooH0Dbc2ul0frdsELSVNhXue3/WaBGhvdtrE6Ge5NPC5523+M+
         xHog==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530K6dW3m6u4IjyymjGI33Zm3IreiLfbm2nNNExOQY3aI44YZB+p
	/fti1Ayr0+6550G4DI63wB0=
X-Google-Smtp-Source: ABdhPJwRBPFiBkPqenk2LrhonXJU7DJSPD2UDa1xb+Qr1UPD7idHNuIkGZumoqJA1AD7OIWlePEhrQ==
X-Received: by 2002:a05:6830:4b3:: with SMTP id l19mr31691888otd.284.1637976168147;
        Fri, 26 Nov 2021 17:22:48 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:45d8:: with SMTP id y207ls517337ooa.3.gmail; Fri, 26 Nov
 2021 17:22:47 -0800 (PST)
X-Received: by 2002:a05:6820:1609:: with SMTP id bb9mr22758896oob.37.1637976167795;
        Fri, 26 Nov 2021 17:22:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976167; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9FRMpgt+28LXMUyVcqYWIO/ZPLqJdXpZepsMoDzH5jDkbZC2/d+42bVa617Bw9yko
         4VeCJ92UhTmZiUjSxbPmkVMfYnAzTT3GF1GlE68HLmcLL4vc6JKIT+jLovi6XSIWhAq3
         i/+io47pT84sT5g5CVIT1gNAreW6hHdObmDVTief5FdlEogZl8hDtx/+//BlhpRkmxXk
         0weIhJ0m20ZSYuqCyU0qFkk0Ec27xcNIExHHdb3dBJam1+7Y5BKEWndye28CxHUhUh4m
         NcfaZIuJAFSQGNebpjimyttQ0XxDTMiGF/RJH+xDnF73VzxhMUM3r3NXSq51fcnnWQgz
         sQGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=mHgTxiBl9Pg381SuWjuguHHZxZ6bDXurYM8uLZLwzPA=;
        b=Qrtzano40X7WKcl8LfmdjOKNs1JMf85MzZwcJcQiy+o8J+N6YiqJWfqG3jQLHRjU5q
         qvfGplYKjqRuWHb8o7jLSnwNeyZsR754SgucOdmR/i65QqpsxRP3Y5NJF2g/Ngi2yG71
         DunLNVHIrsPmFPWjMClKwT1xYjHNRMNrrp6Q9VCTWtsSDGkJI0y6Fa6OQmld5qN0awlZ
         CpeblCWeTCwRLR+BugN+/+yiSf9FFYwCYVWS7fwLTobZWAGSMx5XN4NmXCtfuqzjeZSm
         vUHx2OrJDto1/nyDmGNS7XBU9PAEP50onG2U7swyC1s0E5cxMzf91gjJpUNulwBqoVlb
         SoAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=KlWZS1z9;
       dkim=neutral (no key) header.i=@linutronix.de header.b=8C9pVa+e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id d17si1239212oiw.0.2021.11.26.17.22.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:47 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
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
Date: Sat, 27 Nov 2021 02:22:46 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=KlWZS1z9;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=8C9pVa+e;       spf=pass
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
