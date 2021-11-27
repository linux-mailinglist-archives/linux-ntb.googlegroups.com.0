Return-Path: <linux-ntb+bncBDAMN6NI5EERB4UQQ2GQMGQEP6EGWFQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5768945F8E9
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:59 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id t1-20020a6564c1000000b002e7f31cf59fsf4343529pgv.14
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976178; cv=pass;
        d=google.com; s=arc-20160816;
        b=lgCAmOVhSzvCM0WwPgUuBU47FJCK/ghHzctL7WD4z6oe1M08IntCFg5NsmddibFLZp
         a/QPCNACXJV2lWZNOm2MOjTLD0VVuAQy9fGlrF/HCN+dYLa/k0geY3Va6c8xLi4yvrA/
         LjpEN5A7m1R8IGTFi2s/l07OpNEtBwOM6MNjnhuWhmOu4L1PKtMEgOlpl5YnFrpnJnQ1
         Lq2uzZJWWo8mxlYNwsSwdyTG5/oQ1U9Z7CILM3t8C+m+EGBjshlluFu/BWLmSwPxbgNZ
         d5Lq+nr5ig1+45ooF+9bGTZRWpcnAbOXF2786IG+LPG3fWiL29hS1Vk+kmtlv+pfY5v5
         BpYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=h+2pv2PWX+KW1yYsb6RYLfFEmb7AdHqPKv/dO+4UEXQ=;
        b=0+BGx53HGxxrZOCVw7XjQo/weWLBf40ns3kPwbfD9ab6Q2nbU/wMiqRVkCUQF4hLA8
         3c7/cyLHo7HhkN8hLNieNf17nsHk1rvcMsBeLMwNy7XS3vEny+jxmaiWR9pjaZqj4gn+
         tP9ZWj/0gx8GyYCuI7nWvDM7k/YdlCLkr7CZ74gClIQsGaxcbyn4ssyVkW/YBsWEdA5d
         7xC9crk5ZCoro4b/oJGUFMzWtNJrmwijdX3GrKGST2fGg0nVDhVRw+Nb/CXZ2DP5foPw
         EMgrjcu0W1IXPS1KSYrWeLBLNrAmgy8B+mUcllNJ3xZpbL4W1YidygHA0OYyk2KFW86L
         Gsjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=WPJ+FRFy;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+2pv2PWX+KW1yYsb6RYLfFEmb7AdHqPKv/dO+4UEXQ=;
        b=UTuYH1rmkKLMZo0fitMzwMWcB2Whr9rvGnr+YPugorHHhvWw7DHn4CGpZkT1HQA9mD
         EfJtQ1fuNAezype8EhH4i2vP6VIXOSgGjZI9FDPRPkJhZHMgc+lVKk+0kyr+IE1FywJI
         ry8JYhAcMM+q/ylbce5kjiH7ycQKwTD9A1LMgRznWcuHfGkdoXJDuPF4C9zM3aGdC0Km
         Nds0jorwWX3OXYPX/gKS1VtSvVMcvu/dAgOxIb2rByZFliGHBenGs497TS5OHxwgzPzQ
         Fz0jqGHsEcNJQb0NLxNTKGhOcuVEqUy2Hciz3CLjzO66aEY8lxCMDW5Q0v3ryaaa+KDB
         TgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+2pv2PWX+KW1yYsb6RYLfFEmb7AdHqPKv/dO+4UEXQ=;
        b=SshCPpjv92ya68VSXcDLhWDk5YnmHnX76HYcW+4bjv1hsWovuASI1C2sQqzsIcSv3g
         qaDVyEAccJmsHMgRVF4YQP2uYjek7oI95/iGRbMiCEj9rSiNoQpJOcFsVut+gOC9bU39
         tYvk3LQwfnuKd1+1frGJOn0kkVk5bH39BeMpfESwPiwsxAaKyLM04VDT5H9lcIgZxIU6
         /sG0pikr3YspDlxLjg+jqwylmpu3CCtg7Bg1e1CKr54tUp2JhXeLmnQZANJSpgNH9eoF
         fmvbVmD9nVWqgNnTWWkJp9BMl7vrU2wVUHOg/7Ey4h5x9NAki0SLUx9BqeQn7eBwtqAn
         PMHQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530Z7tWfZW2Jcwwxcm8rztum92Hp77sG0JXSWahTT8K1UCiMX3SJ
	7t+deZhJgEhls7SuY5CO0GQ=
X-Google-Smtp-Source: ABdhPJwDwDU3D7lp6xF0U6SMnOe8WwclOfESspnwJC7UNkE7+u57WyWtWSTILn5k+NKOBxrxROvyKQ==
X-Received: by 2002:a63:531d:: with SMTP id h29mr4829620pgb.583.1637976178119;
        Fri, 26 Nov 2021 17:22:58 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:903:1c2:: with SMTP id e2ls4148011plh.9.gmail; Fri, 26
 Nov 2021 17:22:57 -0800 (PST)
X-Received: by 2002:a17:90b:351:: with SMTP id fh17mr20003937pjb.19.1637976177596;
        Fri, 26 Nov 2021 17:22:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976177; cv=none;
        d=google.com; s=arc-20160816;
        b=QYjr+jBBO3HNLZD+B6+57P9OkUxKqZJwhbfNts/1wTbkHTJsdcGBucav4WmgjaDVdg
         tLumDvRU5eauwKdc4YUtuTQmgBpwAtNHQML2Y69qvX5O9a09Rer32Vy84hOVba/Qno8V
         OB6+IXnXyfLs0+PupAdh79G7Y4weHOeUgfLfdZUIEGzmiiVNe24DGB4Chrbn4Ce+ap8y
         vBNTWwpfaTlLF49H7JXQ5U9iucrGdJH2XQQRbHADGN9zanyrH0ovBcvw/KO6mZu1fAC9
         xIbnG4J/DLIN+Rl3SU9jBdsXGPmedl41gvbliqyVg0SotUhcItzcPXn1+LDgj/XlgwS0
         6qYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=ir5jZb4IZcCDGObECwlZouR2K23XLyndrt4jAkdV6zI=;
        b=zIVIEH715yPeEZpDaIcQq8a1GwYLYtXCqaGeC/tyVyICX4sXUivsq6l/flwsB8ASbZ
         XgOf2GNhkzv1B1GtC9/m7T4GF9VxSzW8K2E77XWlKCCECfvdHeazS+urfAV5rMTum7LK
         TylcmqvovrcXGDWbxAWRjNKnT/SbKTwZPAO5Bm6Xusfw8CZ31IhPYCHqzHfP+WCx8C9k
         KycbHmYvO1qmJE6FVkR9BA/eMvLsWwrZI1ezXxgMKdD7iG59y+S/dyIJsCAiEEdJAL+s
         xp1ElSUbsTC1CiR4GBHTwNzR2n8E+qAaQ2yWFFbrAZPVahcV3Q+4z1oboSXOpY16cniW
         MFpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=WPJ+FRFy;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id f6si296038pgh.2.2021.11.26.17.22.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:57 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.369004773@linutronix.de>
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
Subject: [patch 18/32] powerpc/fsl_msi: Use msi_for_each_desc()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:55 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=WPJ+FRFy;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.369004773%40linutronix.de.
