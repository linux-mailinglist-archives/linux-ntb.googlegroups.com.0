Return-Path: <linux-ntb+bncBDAMN6NI5EERB3UQQ2GQMGQEJWRZFCY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA8645F8E7
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:56 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id f79-20020a9d03d5000000b0055c7d2f07ffsf5093126otf.14
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976174; cv=pass;
        d=google.com; s=arc-20160816;
        b=qcLz9SxHF8VY5tLpDrA+U64qKruMIk/rDBM25YIDeobq+dHBUQUbosqmhoKLQSufW1
         EELQTvWO+09mPhEYUH+cdVcnngGMzvLB8TBfpXgBGt8wZNRS2W/QRe/LCJ37aRqIO1EP
         YtwzdAHE7nac1Lh3hfG/tfcI2IJNiWE3s1ksX5jRkzi9z0QmFY6op/54LbtvIeQDLaJv
         jg7V+DO6IugfaQ9JPiCkSJuFeEE/zHAO4hiFoXmCFUhR5Z5lx40bDKoDwhfOMkgN5os6
         ws6JNO6iVQfDhcRArPQN1OX0XQXjynVHhMScXDgSLo9Vn8nFFH9KhlwmHWwEuMDRoETv
         IFfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=MeittJOFFg+Wfwi5QBt6k0yB9pZEPW3s9oB67r2UvVc=;
        b=m/40Tm95QwFpPgJ2s4O3A6dy70QYNvNfs9uoYUyRcNSjUcAnDFJ6chRZKTu0mqK/gi
         ZW0VlUQYFrc2brtMf9nUyYgmMIPEFm9wNgJWxM3zn37Cy4FkZzlJmbnbqXlCtEx0CjNZ
         V+giZvp4fmZ9fyFQuKz3QMOM0F5qjUKZdMDkxDOp0ewiA6j6EnAh8JHNBcjbvlNivn5c
         OMn1bG5yDTbjjajRPcJlkJDhpeX8N1m0zIcDwZ4cDuv4jQ3hmlxK/LX+A+0Ct7QY1S8v
         Y2ohlGryavawemX6JItrNCfxojpdOzrpqWvBXxSbwmCtJiwc9T0BcIZ5ThtHG5DTj8q7
         stoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=wH479YSO;
       dkim=neutral (no key) header.i=@linutronix.de header.b="oVmm1uq/";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MeittJOFFg+Wfwi5QBt6k0yB9pZEPW3s9oB67r2UvVc=;
        b=LxXig2dEvUO7KWQ0Dk3wUH2xpM71dV6QAexKritNMT4/HlYxiGkVcUgvu6grxymLj1
         sa7FzUnT8djZ3h++QveTP5iXWELYkDsx5s0cJRQU8bpbELNXsoI7TnMy0Z/Ij6ZdLOsA
         MUsMWH2BOcfJ3YP2JcD3avGDljr+VAXUiyjLP9el8zI7Yp/6pLq1hwpopIlpdulu32EC
         QCkaEAtHtUm58SYs257fU/9q6WWSuUrf7RrjpQHRCVQfPhV/Zxhllk2UREASJXsJ0qAg
         uOG2qd/5GP4o9OeHhb4Rz4zd2MwlDe1ONcukeBwZ+xXTE1LuFlCwCwdcL7XnLhnDf9yb
         4jYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MeittJOFFg+Wfwi5QBt6k0yB9pZEPW3s9oB67r2UvVc=;
        b=iFjsT45OdKhVHVAmXXsOe0CspBN7/F9PVv51A7G5VsruxzB7U2KQD/XOHU/sLVRirY
         hIhkYT5HH57OTH+MT0U6YgE9bC7aQZBJ052B91Z42uM0AiywHR1RlWk/hSe0b4aMWrOW
         V4aADuBAghVyYOkGe7fPDngsKCClOJrVyfYX2UhuVPS3sMXAwJc7eTkWoSUQlQq7N/SW
         dR90/ovm8YqpVuGN2wT/aAvNzE1ebxmmWjaY/qnhY+XUhfwVrXmacmwgQ8lhDS8iFOh/
         U7RTKVz5ldm0gFF/vr+cNN/osiflPVnOwDa4cSdnl4MmelFPkJHYaud3Ty2UkM2pS8a0
         XmWA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533Arq+1J+B5IfQH6p24Qdg/50VYc/yge1Rxm6X7Hm5pd5Mh3Oer
	fKkvXq6hImpDVHAWozJ8LXI=
X-Google-Smtp-Source: ABdhPJyn4qPjT4ONLSpBsdmvUJhGEDJR/XhO14iCTskMTfVZiNzl6fdNjwnS4PEf5cglofS7ClcbUg==
X-Received: by 2002:a4a:8701:: with SMTP id z1mr23055481ooh.68.1637976174615;
        Fri, 26 Nov 2021 17:22:54 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:ded5:: with SMTP id v204ls2984611oig.10.gmail; Fri, 26
 Nov 2021 17:22:54 -0800 (PST)
X-Received: by 2002:a54:438d:: with SMTP id u13mr27055460oiv.156.1637976174304;
        Fri, 26 Nov 2021 17:22:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976174; cv=none;
        d=google.com; s=arc-20160816;
        b=i/tztME4fggIXkzrmhnKy68lfHwVQlAoY7EfKQSb7F4eHF7Ngg7qNmhj6k//Y2jaZE
         28T86ocBqwJUuHFBXmP8wa2pOtpXagGRk5TjPxv3JeMr8MDyCtBn1G0m1IXlULDlKYw5
         /loijSl6FPedgr1arfZAz7dwph2aVpLhpWZDHAbemEfTPW1qQQifIYZMX8I8ZDAm7EQM
         cmIChKJF3lYnmsV9k/7bLqdWMyEjDL1A45t+Fwdx8iPzv6Za8FC57NCFSHUe1SvegYbs
         dWvlSALNgKKEuMQ/U9OpulCQoZ4UoUo3AAvMHAL2Af7/mHEYsXpXEOJZt8rkWZl3Szlt
         eu4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=doaEN4PngPF6b3Ms4+nCLub9WRL+cYqg2iUonunceVg=;
        b=yQ/rUYE6BuyrdLDrUS4EVTf3+r0xgywEJExAvxuNRuH85MYmyUq0EszE+htew1XT6h
         D8VEUeAvewvowjH90Enp9+gjcoQYgr3PexwDtpB+d1E7ZPIrit3zwuGJJ1eWzpw5J5ZY
         Sqokius8v+qx341OjLbOb6pxTDvuyM/2JHeH29+kwY2ChKO1ueFqT+rJiwmpYQuvW5oe
         8O3PfRpmCrC254qgZQZCsdfSFD+JA5I93BEd/fgC9aoHf8N4azMbzPMdpP+hLHop6sC/
         G2kj2bzFRF/0IllekJs80d+YvogTTkUTeKJvRaFo9uLDIjomkOPxujesVGFBQ9DOGc4A
         fPoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=wH479YSO;
       dkim=neutral (no key) header.i=@linutronix.de header.b="oVmm1uq/";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id u27si946736ots.2.2021.11.26.17.22.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:54 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.249206271@linutronix.de>
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
Subject: [patch 16/32] powerpc/cell/axon_msi: Convert to msi_on_each_desc()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:52 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=wH479YSO;       dkim=neutral
 (no key) header.i=@linutronix.de header.b="oVmm1uq/";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.249206271%40linutronix.de.
