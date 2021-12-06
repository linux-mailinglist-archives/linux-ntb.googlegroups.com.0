Return-Path: <linux-ntb+bncBDAMN6NI5EERB65HXKGQMGQEVDL4CEA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF7446AD5E
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:39 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id u4-20020a5d4684000000b0017c8c1de97dsf2398750wrq.16
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831099; cv=pass;
        d=google.com; s=arc-20160816;
        b=t74z4cPqrqjvLwapppwl5h0M/daMGirTXAXA1JvISGoHqFxDbsrUVWi9kqJzawQxtZ
         KxUbTcNDc3QbfzIjbJzb22pzyvtomxNuiJ/+hyilwkVPQz8c4NizJYe2i6QG7jg3YzXX
         0c5S/sC67MfKUCoVMoF6HkqioEcHOjkvpJxoPon2qdyukUVYQBLH1Y5uBLa9cxHg1A07
         XVUFYJi4pwqvvhthliG2VHJgnurzZ8Ss5f1veZkmwOnllGOPVaL5kc+RjkierUJ9PPw1
         +6AA7gdsyriEwNkqXFzudJ7mjMU4WLVn29geEvJVZgAnhVH48PBf8RvUZpnCB2aLMTb+
         WwdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=cKHt9nyri4eKeYSt3zcw2/EZXoY2/iiK9tjIlcFkFx0=;
        b=pEmLlVygoll83WbJ9Xk3WJ0txfH7iXZ2H5jrxV3f8K8cLkHeBz95HbUTrkhTc72lwk
         VqHnYb0DMq+JAfZmQTFntGowQ5ImuXHD1dJVSFkwMUOpdZHk0spU1/puEHKr8Ig5bAH9
         xpRr5l8UB/SU13UHwbDA7lSzUERalzIAizWKLnD67KWlJC0TrIm5WVUFULbYI8XfzZP5
         wUkHeCgPjGQ/uzP3uSV5UmSCR2lJFiCDz0P1Dx3fPNa6fyOzSzwMjegIZQRTovaEKP22
         l9Bqu30BmChjniDySYvfmJciAfZnOwhzQ3dCFCOhXXgnhBdrapes17TTYNXwbzn3k0xR
         skEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=nn7dEwkE;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cKHt9nyri4eKeYSt3zcw2/EZXoY2/iiK9tjIlcFkFx0=;
        b=sbTv+yu1Aez9zCiB1mZA3epFwAEtjqwXMkRJcMyBmVwmB1CDEhkaGhx/S2/6ZQx1ZC
         SLgenCKqQDrX1iQiTwwjJoJ8Wb38JiKN1RQpP87aoQXBhiTGlmHSeCcSO8gGjRcYLdP6
         6ipz6kwkAXe767e+cgDVtYoz083olWydAQZKPAtNyb2i7KAqJZfuIr9PUlj/XqyYI3Xx
         TYagybtR1e9LPcqEBh7pSv8FxwyWH0xxK77OVzEbSWSB0AwBj6g26HB5q8heM/npw0hD
         dTfMURy/gFbSAGHA5JXrNAATmMYXe1tAAmDoniebAS75hU81g2xJbi416ZXkz1wFVJ+M
         TJcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cKHt9nyri4eKeYSt3zcw2/EZXoY2/iiK9tjIlcFkFx0=;
        b=UZIgfxr/dG9t94CPgr36jraivqK9S5kDjIYpVPWQy5o3YHxxxakX56sXbNBeOJoQWz
         SoIb0slSLiNpZyBBGcpjm5d5C+blOErgEhLWQ+7KyWRoBaPY6RmZGwBI2a1xsj12Z424
         2CS9IvCf2rsn+7j8PEVVJ7Vsd3l25YfP5KBSeZsU2L8qXGLgnHSQcMXqMeCUBMTv/Sgf
         XwPca37z7D/a/BguFFOrr0VU3kXzlqEQiieJTUggqgzv6bgpCeCZAAI4l5ByopSWCXyP
         LMYVzMpX3o87Yyjmelklef4WGLe01TMbYA/l9Dhdov12ARPas8uAfNZMHwnvXgmMspxt
         YuMg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533CJfDtosdvnV3HXCOJYbRWDRgIN/FesaGOmf1rZ6OvEz63B7G/
	TTTvuof0izP3HegdZo2qFuo=
X-Google-Smtp-Source: ABdhPJzayTR4gHk+lk5A0oz2Mcdl8cMVFqpsIeMgBLdJ/k5a9AYJbdRMZcVjN/FJCOl6RmYB7pxPaQ==
X-Received: by 2002:a7b:c76e:: with SMTP id x14mr1911650wmk.27.1638831099394;
        Mon, 06 Dec 2021 14:51:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f1c2:: with SMTP id z2ls1274434wro.2.gmail; Mon, 06 Dec
 2021 14:51:38 -0800 (PST)
X-Received: by 2002:a05:6000:2a4:: with SMTP id l4mr48016123wry.238.1638831098703;
        Mon, 06 Dec 2021 14:51:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831098; cv=none;
        d=google.com; s=arc-20160816;
        b=dOp3IZXVKy334sKtHQXwHmHeAmuaIh3/s5lfXszKqmtBA6a9qAzOLQi/H5E2/pxEdW
         28PZH0LONLUvLFqUpIBgSwHKKGbFvpydg6OM6Gn9RtKfmTn/rO7BsP10AwV4JXWmnNxI
         bQGZjuGNht3Hv1niG2T7PYWb2eBJRyyMGtlQWc2RtrXhFEBAnHIfNFZK8fmU4lq/TZoJ
         JxQsmn8JFoVpegqz34B005W1kgnarUg2rX02nKTp48kmUBMUpfmzW+hH8OQwyOIt9hTr
         E7nZqIJ5TFzXThvfnuRvKotOWiCA+hnA/KPsMKltvd/tTDCGy4sgQelxFDAE9eHYUsdt
         Qw5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=GUR2OxklGtF7nIOBqOyJrqx9CLAOqYt69MVFmzr2xdI=;
        b=mXcat7+gmYo2zvgp0M8B1nQrex6Odg5lMyhof+wXxsdSt2HZNKV/vgUTqXBwfJJLb1
         kEt5YubMzbYnvv1uky8C6Bc67kicW4ILcwhZKNLgn0Uncq2RaiIQuxKCv5HU+wJLP6xi
         VzI55+pVG+yiuDopIa4DmRGKJkwwQugnfndoyZ/hN2JXtBnVEGASfYyVk2hkk+28Jn43
         Y8cmbLQJPuWWmuHnylX9snm+7tVqg9eeMm7GjiDUvNSIzUzku80/yQW7/6MyrkARO1O7
         Z9hUrIdDQ6VU6HzuUUab6uV7HuIvI3y9QYVNdQ12JLml5IssJuwjQpIESST1mUclHjW0
         lVSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=nn7dEwkE;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id p5si742233wru.1.2021.12.06.14.51.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:38 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210748.793119155@linutronix.de>
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
Subject: [patch V2 22/31] soc: ti: ti_sci_inta_msi: Remove
 ti_sci_inta_msi_domain_free_irqs()
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:37 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=nn7dEwkE;       dkim=neutral
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

The function has no users and is pointless now that the core frees the MSI
descriptors, which means potential users can just use msi_domain_free_irqs().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/soc/ti/ti_sci_inta_msi.c       |    6 ------
 include/linux/soc/ti/ti_sci_inta_msi.h |    1 -
 2 files changed, 7 deletions(-)

--- a/drivers/soc/ti/ti_sci_inta_msi.c
+++ b/drivers/soc/ti/ti_sci_inta_msi.c
@@ -121,9 +121,3 @@ int ti_sci_inta_msi_domain_alloc_irqs(st
 	return ret;
 }
 EXPORT_SYMBOL_GPL(ti_sci_inta_msi_domain_alloc_irqs);
-
-void ti_sci_inta_msi_domain_free_irqs(struct device *dev)
-{
-	msi_domain_free_irqs(dev->msi.domain, dev);
-}
-EXPORT_SYMBOL_GPL(ti_sci_inta_msi_domain_free_irqs);
--- a/include/linux/soc/ti/ti_sci_inta_msi.h
+++ b/include/linux/soc/ti/ti_sci_inta_msi.h
@@ -18,5 +18,4 @@ struct irq_domain
 				   struct irq_domain *parent);
 int ti_sci_inta_msi_domain_alloc_irqs(struct device *dev,
 				      struct ti_sci_resource *res);
-void ti_sci_inta_msi_domain_free_irqs(struct device *dev);
 #endif /* __INCLUDE_LINUX_IRQCHIP_TI_SCI_INTA_H */

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.793119155%40linutronix.de.
