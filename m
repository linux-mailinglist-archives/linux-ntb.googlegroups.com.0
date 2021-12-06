Return-Path: <linux-ntb+bncBDAMN6NI5EERB4FHXKGQMGQEFX2ANXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE9546AD4F
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:29 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id h18-20020a05651c159200b0021cf7c089d0sf3735218ljq.21
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831088; cv=pass;
        d=google.com; s=arc-20160816;
        b=QUM5S5rj5tbmpzvH7JgMZ3RtH6kJayuStQSbuXjPyvxaRF6K3fsouOWrRGSrGYDLhS
         GROL4rvzvEqCLTaQbvg7N1sQUlA4WStxJD6m9ZFKMKnzFUgGjDbXctREnSELcTEF19SG
         c2qN9L0bs+Q/eKgFh3Lbrw4t7U8OZLYDTPQDF35LU4+LTCIX2w9zi1w/bTK6ZOp0aI2y
         QV3JGGQiu7SEAM6FZ2gE95jaEFbCX0cALS79MRbH9bkF+p0AZaPr2tcPSTLjgC8U+YJO
         YkFHgLIMsq+5z5VfKLHKzfo0/Y3A4YPRfADsKBUuki7BGKe6E6uzw6ElbhrQ0HEbsoYf
         JLiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=7aRUtmYn8/IWoahLc2mFFMtuLaNqMb7KnXTf47tRG/Q=;
        b=PNhyPr+safuxx6fGXPMEb3SIiRe5pcU5efxHS0HvXU9bFUMckS8Hd9TMIwL0P53f7z
         tNFZ0Uty0BcZ3gje2TsgCJE2aQm2H1p2xl7xtw8N24KQVuS9JaJri74JU14nEZPSZMVn
         w63DxuO+MW8/H8kOgdGB3fiMTBtD+B1c5ngwvGmZS1UTFRvo3wX4HqBVc3EWimsSPOyv
         lbzbOmo2TWOs+DvxzIiVAuYXIvlc3gPMy6plNRb+uPRdJB7JeHWh2FhtsLLEh3Lynhu8
         Cpkc547E5L5GLf0SRgHhO6hHwTxArCndF+9MrmP4oNiBWlPbyNwVMEXbY0KEeYcnDOUJ
         UtQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=mDVbOZFM;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=edZkzp0c;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7aRUtmYn8/IWoahLc2mFFMtuLaNqMb7KnXTf47tRG/Q=;
        b=YyFupl07vdPpyl4sCWWwzX9rEOFXoD9PYY3wKz38v8Bp5ZG3jC9pNu8oGcoaJMh0hX
         hWuKHB5GZZhXGswbZxchVdSs7azHbbpFtCRs74xYag3rS+Nh0UUfkn04eqrqHOTr2muR
         wBC2NAnPlZGvowZIn67wPrEUcPZf+cyBSM6/t6h6AQp6PO2Zi599dQSUoWIpn9i+9ISZ
         wW8bkyiQBGfrdBdLBIYUgVQkTKwtYZh/dHuRPgliWz+bev1jc+T7pXIX+NWGCpdvL5QZ
         N0els69Z3LrGJ4K5zYrcbVGK79gshJVBSW2wamaIUZ0eraZgiDiVflI9rYK1e9qvCzQH
         6zwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7aRUtmYn8/IWoahLc2mFFMtuLaNqMb7KnXTf47tRG/Q=;
        b=GbKLvvMUT9YbVA0xl7dNBVdDgbBOlCrLgYBoMv7aiXLBUfwwMxf0LUBtpgCKZK+WNJ
         tuSnurUBTq6aX2jP1t9nkGukF3rgaWHbHt0I5AvFrj10mOydDlx2zRhVbahHVvl4NytJ
         YdLGGs9zNoH4sYqRUNLCBBz4NkBif6Hqm02NMnVlol+4iNANE9q3bKKVxu/StlQ8pd56
         30RcG4Znmva1+NdhIG2gRtGhOPl+jn2OQrayR0WE0DWzJ1/tucCzXIGhxYn4P69PQqMx
         u2N0U7+5hm7Uk1XbPplnpv4ABYjG2GLc2KNBWtbbB3zyeiN6c27vAvB1WuII5Ij2CIoF
         pIVA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532DvqmNnwuSH91t7jgiW0VOHHyuF9SyvGreg7xcEIuHuT2h1DpB
	UFXz8/BIZhxhiVLlh0SJ6tw=
X-Google-Smtp-Source: ABdhPJyonyJKKPSSDuNJCq9inrj76MmZT4J8f4H7s+iny16DhEKTjgSXMrj74g1OhR18y00Ewl2Iog==
X-Received: by 2002:a05:6512:2347:: with SMTP id p7mr5606216lfu.304.1638831088645;
        Mon, 06 Dec 2021 14:51:28 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:a378:: with SMTP id i24ls2845361ljn.3.gmail; Mon, 06 Dec
 2021 14:51:27 -0800 (PST)
X-Received: by 2002:a2e:8702:: with SMTP id m2mr36444144lji.55.1638831087732;
        Mon, 06 Dec 2021 14:51:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831087; cv=none;
        d=google.com; s=arc-20160816;
        b=B/1+xg+N9Q2I+1DVOY0Qs9ydv8DEtdbLMesMgouWNaphxoyjPw4+o3XG3vs1kP1ica
         X7FA3hDHy4lUqN8xZT4UNktI3ogcxQpQq0cQDume4kSF3U6UQ3Ix3R81iQhMsEbvbDOJ
         YqIwi4zktSRwFj0qPRdnSy4au6FtTILtCyTu5bqRwGUOX8D/mbCUP8UCSniXVIWMHCKK
         QsDVrCWmH8uW/A50loQDf2YT4i+cUJtd0WqT7ywezqvGOm3h5kh6cycsnSPJhooUX3Fw
         uv2HjWKNS6b3rASNoOtiQYBhCuk1HHMN0mlTzIsI1yEJdIMye0koC+9XxAlO3aUiMJwm
         wRRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=doaEN4PngPF6b3Ms4+nCLub9WRL+cYqg2iUonunceVg=;
        b=dgWcp9PdJnXrfUom4pQ9sUDW8s197zj1UbZjR3mMrSlzFTEEAQlzJT28Pa3o4kswbA
         id5uJS5CcNlSajbsJbqzxWYvkubpgwZ+asX4hH7PueuXFhp/e+R3cI0ddSoJfOke13lf
         BqAq0NXNwEw8AqRzxmSq20aQ0RSoa+iuf9pQHgbeey+KF5LTWgvPF7dzktNJo6O8OAoq
         xhzn56MZH1c71Wsi+ShUFaOJs/9N1IMdchCfdhRZKXQgraACOG8vKrWqplp704nBACB6
         oJe//hjuLNWjbMGJGCvTgazHElm1/CytlrFXNlQGH/a74SRpLKqC5jMuDeE3IkgpTsG0
         SuEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=mDVbOZFM;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=edZkzp0c;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i12si949692lfr.7.2021.12.06.14.51.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:27 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210748.414712173@linutronix.de>
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
Subject: [patch V2 15/31] powerpc/cell/axon_msi: Convert to msi_on_each_desc()
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:26 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=mDVbOZFM;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=edZkzp0c;
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
 arch/powerpc/platforms/cell/axon_msi.c |    7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

--- a/arch/powerpc/platforms/cell/axon_msi.c
+++ b/arch/powerpc/platforms/cell/axon_msi.c
@@ -265,7 +265,7 @@ static int axon_msi_setup_msi_irqs(struc
 	if (rc)
 		return rc;
 
-	for_each_pci_msi_entry(entry, dev) {
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		virq = irq_create_direct_mapping(msic->irq_domain);
 		if (!virq) {
 			dev_warn(&dev->dev,
@@ -288,10 +288,7 @@ static void axon_msi_teardown_msi_irqs(s
 
 	dev_dbg(&dev->dev, "axon_msi: tearing down msi irqs\n");
 
-	for_each_pci_msi_entry(entry, dev) {
-		if (!entry->irq)
-			continue;
-
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_ASSOCIATED) {
 		irq_set_msi_desc(entry->irq, NULL);
 		irq_dispose_mapping(entry->irq);
 	}

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.414712173%40linutronix.de.
