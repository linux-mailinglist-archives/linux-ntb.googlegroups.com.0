Return-Path: <linux-ntb+bncBDAMN6NI5EERB55HXKGQMGQEPRTFJAQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E7B46AD59
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:35 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id k10-20020ac2456a000000b0041bd7b22c6fsf2295128lfm.21
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831095; cv=pass;
        d=google.com; s=arc-20160816;
        b=eooc1MIZDtNXzheAVuulsRDh1m4HMac2AzWYWDLNDKBh7dx7/O5fi+256JBtQPs1Gg
         VuHAf9zNSajGE2ayHwkqm9Z0IE0DQNiy5dmjsrUhoPV7kU0GKLXDJ434Prod2iTCbjCq
         keApVu7H74achdaYrv1U2egikUAxUfpG3abyi8yjRVfMYbHyChCnOOZKiYq/n/mQWi59
         OmK1fThB5IRYx/odqHlB2Eg6cubSZPLzjHwkn1h5IrjTmJPn0vpXW5v17b2QYNCIzNqc
         LizglBAdvzBkmw+czZq/GyqtutYwIf+2NKkgsENkCbCwudQxB7WW5M67gaRGue3G4xvX
         Qo0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=GdXStyMH/1DW6+zGhjBNbs8ddC/9by1bxOKnd8zQwnQ=;
        b=db1rTOyu6tclOv1frfsOi9qjHATvsNdhIDz49kEHDgDtAQfUB+dTXKVKhmKRdBbA+C
         SfYQ5dz5lYhw/BDl0SM2WXDUHik+VP762/OE8X0wI24QP66+hRTfcOywNKZ5kfLEGyDc
         4OIcLXtGvwY2uFEU5FTJe/fZakKbxEEJa1mT/O6sp3ywnQGQ0NiNSFC1vXgOPybIzuJv
         luOpxusBrRrP5kN413a/PYdVA74bX5YanalxMjAI25yIUDCzT3wk0wqsx/shRiEaYdzm
         RVo7GGJhTSZq7JxpuphTEdwCcAdJkVYgCfI8UrX01MeGBJkxIgeKEIsVdZ1UXrsmmgBl
         vCMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=OIuHnFM2;
       dkim=neutral (no key) header.i=@linutronix.de header.b=mgYtC98T;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GdXStyMH/1DW6+zGhjBNbs8ddC/9by1bxOKnd8zQwnQ=;
        b=JCpzCbQ6m5JOPt0Bh4v/nubfGItLRX2YzEazQ47d84L9GEpTkjyuLUXkZL6+24RVNs
         1k0HLNkAdhWF23ZEiEgsJUYlOXeypJUX5ER25FfPj8rE4uhPjkvjwHcYLTyBqrJnmWq0
         V7y9vKYK5/Afk9vrNvJfHEEckitJridbf/d2naeHeGwDlAr02bjbQm32gRQp2zYqBQ3Z
         7mq9h/AqMo94nK4MrowT5BId6GjnV2ncJ1AHQlbcoLTBMzxNMGNjbzNWxfCXQinD7poC
         7NcEb5h/rJC2l3O2T0uq4gWxE3sixz9ROvMka+fIX4OaSWdcwzZ7MO5IGzh/he7PG5hf
         OfEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GdXStyMH/1DW6+zGhjBNbs8ddC/9by1bxOKnd8zQwnQ=;
        b=Rn0H33xi7XSUhJFsicJzL1OLTwDPBVO+x2NXAbVGlb2mAxNpSug9tvPNsUftxFc0ql
         4Oi4r/v73FHkpQj5Wa+RYTuQAm1DpgT7mq/oH5zdNifwNMf9W3UKEapXWxJye1YypDIL
         NAuzjp3g7G9qTu0TUV8xNPCTVZTOZTcxxRB2wFP8IRTnAjxQL2ACrKC9Rk2jLZ4YEsqV
         rN+JQYopIZt9FpAKcf+z8i4w6wgix7rkuuv2GfB7p2wPWdGCCFg5zDXa8pqqU/sWABWi
         24bqV89b2ouh+Zylvtw5g54nZCtxagWmaGk0H5Byc2HzOBLpct/8pQb5uCCoi9a2G8Fd
         Y4FQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531ASY6OpN1Suph5i+M2UTzrT2WSkBpg09LQwV6HrZc1jpjLtODI
	RC03T26+R0LQzbWujpDlbhw=
X-Google-Smtp-Source: ABdhPJx0FZu9WUKeQO3jInvxzdWkrfaTCrZ7tdeX9grY3BuVrQ+dCghpZhYjPUpg++bV6T3umzkqSw==
X-Received: by 2002:a19:7902:: with SMTP id u2mr9815314lfc.512.1638831095189;
        Mon, 06 Dec 2021 14:51:35 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:1320:: with SMTP id x32ls2008253lfu.2.gmail; Mon,
 06 Dec 2021 14:51:34 -0800 (PST)
X-Received: by 2002:ac2:597a:: with SMTP id h26mr36476360lfp.500.1638831094275;
        Mon, 06 Dec 2021 14:51:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831094; cv=none;
        d=google.com; s=arc-20160816;
        b=knmNT4mEzIb+H0RzTfuC5OEBBGIviRoWJoj8o41vnMzytiamZKr6TeZxeP/TBtffiI
         cU1rWubvK3TiEXLM2hzqXJnubN7zYr6tt4rglx4FVfC5U7FouhRk6FSINrbJBn3hy9Sx
         Biu2Mym+e2UiaL87oIJ/FqtCJR66rQaKc1sIIliczdVuMuECvOZU4yjbYULpFdfGnJW1
         dV+e1mM73RQqacwBoxNLPzowpxvMXWijuqUCLwwMrZcXdYTPAxGdFHxS3PY897RkYHrx
         V8mioR1mRAaLLq6sdrobARjsSBjXwTcIdOOy2QHIPpXdb8N7diRyHCuMAlFOJW4rM+nS
         Gg/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=D1PGUTvbMCo12qSm9MpHyC/iszyAeQMlmvbSI9Ov2K8=;
        b=I44WgqWIPE2eQBdvlg8EJx7hCsmhF3xhrdt+LjATiGgNv0Cne+NJbBD30TPhiOiJdL
         eICSPn2ssOlV+PBZXHOqUK21KhkNH/lcQSN4J/eblgxfMjRFfpMSSQksL8s42txJWFQJ
         DEXeR0hruy339RIfdOs5GNPgohbZCf+5otmdt2WHOVKbTRWwYZfcpLXHj+v4LiXpxK+t
         8+yVfNamPHCv+X6YspKyb8fpAZ5d2WYBEnV1w+jGGh6yEnDK+pw8X9bKHU5ZbvIi8k2q
         542aVNUrWnnsk82Sea8EN63yuMqnZJyApx8jrilGoyEaRgVnn3SurF39cxu2RZbLklsS
         gf0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=OIuHnFM2;
       dkim=neutral (no key) header.i=@linutronix.de header.b=mgYtC98T;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id h12si821045lfv.4.2021.12.06.14.51.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:34 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210748.629363944@linutronix.de>
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
Subject: [patch V2 19/31] PCI: hv: Rework MSI handling
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:33 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=OIuHnFM2;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=mgYtC98T;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Replace the about to vanish iterators and make use of the filtering. Take
the descriptor lock around the iterators.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/pci/controller/pci-hyperv.c |   15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

--- a/drivers/pci/controller/pci-hyperv.c
+++ b/drivers/pci/controller/pci-hyperv.c
@@ -3445,18 +3445,23 @@ static int hv_pci_suspend(struct hv_devi
 
 static int hv_pci_restore_msi_msg(struct pci_dev *pdev, void *arg)
 {
-	struct msi_desc *entry;
 	struct irq_data *irq_data;
+	struct msi_desc *entry;
+	int ret = 0;
 
-	for_each_pci_msi_entry(entry, pdev) {
+	msi_lock_descs(&pdev->dev);
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_ASSOCIATED) {
 		irq_data = irq_get_irq_data(entry->irq);
-		if (WARN_ON_ONCE(!irq_data))
-			return -EINVAL;
+		if (WARN_ON_ONCE(!irq_data)) {
+			ret = -EINVAL;
+			break;
+		}
 
 		hv_compose_msi_msg(irq_data, &entry->msg);
 	}
+	msi_unlock_descs(&pdev->dev);
 
-	return 0;
+	return ret;
 }
 
 /*

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.629363944%40linutronix.de.
