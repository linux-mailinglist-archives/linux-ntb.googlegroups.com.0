Return-Path: <linux-ntb+bncBDAMN6NI5EERBKURQ2GQMGQEEKXXJ2A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F382A45F958
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:54 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id jz2-20020a0562140e6200b003bd6c62be47sf11956460qvb.11
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976234; cv=pass;
        d=google.com; s=arc-20160816;
        b=EVXVbnSjVI46+eda5sFAkX5DWBCvVnjkgTMn2iwHsyAEmJkuFXkWhWT8VEtPX+LhpI
         pkqivMnzwOi5cnnXaUPQIHRZrJAMov3TT6Qs8KXWe3o/KXLkeGeAYWOooLhkzLHq7dny
         /y2TvChM/fQfnkIW0v7Ugcg1dRKcmM0kNg8nill7LTICm54/a1pJM7pIZL/r8GDUj7EW
         +IIo4iHt3iKBog2KQyqhAndX/OHUgsiOFTlfHpBfE1E5k5rfMeuVGPJMn5vgogTTZUNI
         GbaaP03RBIxEitOyc9Hv8SPe6c+/EaYAfvpyYacdVYeSho1q22imKo7xFljST63XlTdd
         UWqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=sy6cP4SC464aZyJiRhKC4HP0JeVfOpiW9My9U4h/HKo=;
        b=O2IcQQ40MiVhKfN10DwEzYsYlI++WRPP7dEXqf//riE4cWNKcYadaI8EIHlsHB5alQ
         h7WYv+kKkGdZDLvf/yb9LP4ZerqibrFLZ0pon2z7YSHOLjbcgNWPr43dz02DD4cSteRU
         /6TvwJqUtaSsqb2pxCGIgSHeY0A9jJU+NhY0SgXsesx5SvwTUaix1gYl0ccfmfbYdWbT
         cEY8m7IBjEFh8/EVapnx4rUIeo+udodsUGRFnPcVanWIKabHYz7NRbHKmla+Xlz9rDWf
         0hqA/n/Axx9KmoFfRBh7avppZjGJn3QLTTmG8jrcMW4028GkiZZYC3HZVVX/mY/DjLkV
         cIOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=XWRdPa1Q;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sy6cP4SC464aZyJiRhKC4HP0JeVfOpiW9My9U4h/HKo=;
        b=sDmIObq1etS/+bGEIzS4UA/UQI9ew1tJKfk5M9HB7E6+qH4kMtBrnDl0ULhnDTC0ER
         tGB57hvf06TaDyNfTl71ol9T1jkNqHjxtb6myQAgyFa/KMDpvU4EiGMUbdJudf5v/FrQ
         2h2uteYOwy+3j+WxJdA9dyZOKu/7PkqqATUQlW8zyg9VDYnnGzi2s6WgrUzcKacN4o8J
         le8yc66CdRsyt1+CuGkPKw7U3oNiAiNYUfzi7bVnnqMfMsJ8xv9gdhM2Rc1eGLyJ8K0h
         iKkeu6Dh7luGFss/4745D94lKKm6PO/+3nN3TfGN+vhFOKIspWDsdAb5LfpCj4bd2Lo+
         oEag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sy6cP4SC464aZyJiRhKC4HP0JeVfOpiW9My9U4h/HKo=;
        b=j0OeLm8UTz7eW7ZSURAHg3ld6u+M2ozu9iQLaoe3GQIRoldnniD8Fl4qH8THrkjbht
         MaMvm05wnDXniRt4rqkgJYiZO1GK8ZDlglX03thLSqHJ1OdiotnUYYz9hSbz3LZnd6uI
         CN8qIa8kqV7xqa1XLDASTCMXT5XEEkK/2K0DBPak15iPL6CL69LHgmCml2ymJnEBzmjH
         Bc+1TGQ2d+g4dfrRzhXjZiUpvu5Tmwm7lgOfJiJI1Eo7H1p3Zv+j3bnGKbcflmALYmu8
         Hiy3M8AnU97XOEDW9AvYTTtnSRYIypIppmugt7GgyAXooNoMYXhohpZ/u7YS3HuqbFKO
         237Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530RaA84awMV65WgAw+VCmtuFDEnzPvCk7B1XYIu2PGR/Nz+G3ko
	9GbhaIfpbBcZ2DN1yJjjgWg=
X-Google-Smtp-Source: ABdhPJwvTYA36KW3akO7IiD/QdC5dczekv9g2ASzsk5IKszxM2Pwk/zkhX278ZG1BQuajLuJ+2ygvQ==
X-Received: by 2002:a05:622a:178c:: with SMTP id s12mr28528354qtk.156.1637976234139;
        Fri, 26 Nov 2021 17:23:54 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:5c05:: with SMTP id i5ls4300623qti.4.gmail; Fri, 26 Nov
 2021 17:23:53 -0800 (PST)
X-Received: by 2002:a05:622a:287:: with SMTP id z7mr29154725qtw.223.1637976233793;
        Fri, 26 Nov 2021 17:23:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976233; cv=none;
        d=google.com; s=arc-20160816;
        b=Lsq4s9AxTJyt1188IkL0om/O5NnNc2sYxBsoyy2W0TDEpQNy+VJKLBvb+qqI0db5IO
         w5Qme0sOUhZ3qysER88ZBT4qs9OOck5HC2TFPhhFgc55sxMN5O9ABImXxzM6lZmmEiUV
         pwQFDhjel/iBf7J4HnEilRv+ZTD3SUuzDalYvPvKFw/b9peujqM1n30I0DInU1GVSR5m
         rQ2PhUfeasE7FH+aNdGcst2+K5HZ3fHtV0G1FBIcDc3PxP7g1H9Eac90fUzEJXwhsaNo
         QClgwBLNJ47GNLKQcTeV8psaj4fj62rv/NoQu/sLjqduNvh0d+IxzGVvoIkZy1glGmSr
         wbqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=Zss9mzfScWFeJ2auPATLVX18AC4Qn1uic4NkiF38xfU=;
        b=cwH87K9jn1cQ5KExTYGBF3/DVcTx9OYTMuSf4sKudADPHK/NiM/gezPKT+Qk6XF+oy
         zsTfgFgBs6pS+KMbBU8+skvAgeaeocOwHG2hX2O9Lmn0LqVeHfdRy/50pt2hK+VW0kWA
         J2HJA4I5YSo6zcnv3+h95+xuUrVMhupzi0YcrNh+98vpiVW8sWZHmvXwjngYDUl6aExq
         QI8Qqm3JmJTJOMv8UqnSg8u6fxmh9BmJ7uswJ7k8bfDMerLAxpmVGhFhYTGiVesumObH
         h1H43NL08LvF7XSbdtZ4T6UVjWU7OjIRHFxns2jBIek6vFXtfSugEm5NNaVAU01s3Kul
         7Ecg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=XWRdPa1Q;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id k10si1413541qko.0.2021.11.26.17.23.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:53 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.188511206@linutronix.de>
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
Subject: [patch 15/32] powerpc/4xx/hsta: Rework MSI handling
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:52 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=XWRdPa1Q;       dkim=neutral
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.188511206%40linutronix.de.
