Return-Path: <linux-ntb+bncBDAMN6NI5EERB24QQ2GQMGQE5RXJT7A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1DA45F8E5
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:52 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id s5-20020a9f2c45000000b002cfa7164503sf7393799uaj.0
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976171; cv=pass;
        d=google.com; s=arc-20160816;
        b=uq41zrnOMyEzmWvcYmLrfxB+W2qyHSIQpuQBcccLIxA+syWr2jNa7vu9NPERrWzVe7
         9udQyVVi9QO6VpvnpGjOOrcQ/LF7vYoMd+0kIrbkzVKzMQtPOROAgaq3+NzrjUUfossx
         /m+wznbobb4eItmcEjKLoOZ32V5gkUkOj+ItAE8efd/9Qle26afyeQXslmi/GTPpoULC
         tA1QfqM9qYdwKMCydEezVEn9kqUyYuB2RjeCigTytQctZ4T+V6lYgBt7nvh0fRkYQ3Wx
         ApND/gZec4f8wTgHRzUJHsZTM4XeeQC/FCTka3nzX+WwmFObLVXB97c7fGMSqj3RnOz3
         Y47Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=CjMaMOeckN+lGMJnUyy4y0uVuYBg/i0o2Sa42wbynLE=;
        b=JxgvsMEhnIckDD7ily3KI3guoGs7ey3VmG/BxrZdDPvo7EsYJ9heoDJbiRh+sKgqHf
         +MaFfU3ko4I+aSZloYgwxFVlQHGyq6i8Tp8ka+NXo7ZVrHJ7ewWf0Xc92ToKUWUAC5+1
         KcbXP9Dp0/rJIWO2cs2McQnt2Kj3dweFRvDhwqrxBt1nyRAD7oe7c+SH45QZZe6k0Qc3
         dMszT25o2e0RS535ZIEsxVGoY7Cos4JRga89mftbnCeso3BrFSVv82z1ZqBsr0XEG0nU
         5RWMBWmQV7N9XE6go/9TpxY8brkq+mPR1pFztZpBRcViJOC8O7LbTeRjJs8yFFaDDOhK
         fclA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="P4k/UYU4";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=pNMIiRO5;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CjMaMOeckN+lGMJnUyy4y0uVuYBg/i0o2Sa42wbynLE=;
        b=K2DZ8pStQnQPkmGPfZa1qn6uzBDhxU+IXzma65Il1L8uzjEm3kptOWq+DZ/OQL97rb
         v624LBK+TWX3OF58xtsypCV8DwJp48WYajnT+HNF0/Bdd0NJ692A33zLVWj2wuvaqHbW
         HGJru+lyzryJi86x5KhdQGiTaGoZCY3LLSdr/dKJzHIIPDEKkXvTMHokpgoJFF8lubx/
         a4svk6/booMNefV0lVH02PynofkQ4DbwwFrLrvh7FI7QueLcJ7n7cnVY1Qpz7LRd8TgZ
         esmP+QYpConuwjmBeE/UCcifL60hc0V4vYncD5G04zPvwubEVR6QC0QXXs+bq5Pp/h8X
         j5YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CjMaMOeckN+lGMJnUyy4y0uVuYBg/i0o2Sa42wbynLE=;
        b=6AHhnaz3zYQUn8567dvxhEdgX1yk4dzV3IPFUITKji97EXOEQ+QJ6hF1RfT0DB9v22
         fD2cB3eaaSFnBHBTkO97VtVbmthOJtvlZKGJRMxLrk4Y44m9aRVMEEdhVn3XJF3Cv2RV
         qm/k8AJDpW4Mxvy4W4DOMmH8PRy6e+bDCFTYGnqw/N78XZk0Qe/rs8OF1LvCjXOHpLDV
         ILczQOEHQt3+nZ74m+OMYH9a7KjvNpJ5LV5bLKSglqLe49Eq0+MEZ2bYDK9Y+l7QY6p8
         dc/bWDr1Hsp04J+AY5Ylzn2lx7ZicXqBCUQiqbYMqw6WAS9YvqeDUxiD9NVmi2vQBKFj
         0GKg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530jwbmhSfYvUZgfl+6MUuQ/NU6/evI6IyQqVf+8nRtp9NBTyhdU
	g1woTD1Byx+FfqZX6d/1kHU=
X-Google-Smtp-Source: ABdhPJwT975GSR5NU1FR4SZqp8zPo8jcSOxY7H7ecj3zuRtCuOPfVgSWKPN3bSc0rrODeT4EQTiJCg==
X-Received: by 2002:a05:6122:907:: with SMTP id j7mr24283348vka.12.1637976171616;
        Fri, 26 Nov 2021 17:22:51 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:5e0a:: with SMTP id s10ls1408037vkb.7.gmail; Fri, 26 Nov
 2021 17:22:51 -0800 (PST)
X-Received: by 2002:a05:6122:20a7:: with SMTP id i39mr24053485vkd.15.1637976171110;
        Fri, 26 Nov 2021 17:22:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976171; cv=none;
        d=google.com; s=arc-20160816;
        b=mc8qQOuGdt9t32+jKwwVcMDLNdUYyCk+JKUhlyIlNfBUef/NlbDd2HWxEKd7CUKjpj
         8flApTi2HuuCHqZIPYLPquTZwXtF7vsZaisONDS7BUALxYQ/13afy0q4CiQMYsOFvsqo
         3Tcf6U1vBsnXT0hQ4ONV/QTQA8OdIQezdIB41SUqTPgbS5LciezUYSaGknqL8gjEyVh4
         5EfqsJgrgcPmbSEt3cBeCoRtgFEnaGcO/cni65WJy29n90cOcoCatxld2ad0klEWaJl7
         M1htgZji4OcZnowiznJIDnKG40YcqZT47XTLn21HPJ7kxAsZ1rNatIgKsHBeKLZsqJ9K
         28dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=bDqDcBZ6Ac8mk8Pi4m81SdvqMSMLhFM8ia6/waF9mec=;
        b=pzdTDgRphkzZX+6anWyotymd8T9tDA41FM+xeSoe9boCsCcgWO8MDb16gFbpG7jozM
         ifuQSpsqJrgAs1owtHZ+108NsOcgTrvQG1zOYES09Qal8Xkz+eHH1zJvye3Rh/bueTxX
         xwy68/J1JLQk3dNLqerXVJW9MmGlZArqN0rDXjvVn/ROCagZgFG7hkM5Zn4PartiSHry
         C3xnX4hitfgkSvp0m4tc3ZatCdUm4g7lr4ck3dmHUFkDRzfrkjEOkJT9nldXZirFZDrY
         haNBsUx4uk5hnUlmGl27qVGudAYE8TqSTFSgMgCRMoyBjW+gDBuKi35r+dxos73PsEFh
         LXWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="P4k/UYU4";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=pNMIiRO5;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id f7si416572uan.1.2021.11.26.17.22.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:51 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.130164978@linutronix.de>
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
Subject: [patch 14/32] s390/pci: Rework MSI descriptor walk
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:49 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="P4k/UYU4";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=pNMIiRO5;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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
Cc: linux-s390@vger.kernel.org
Cc: Heiko Carstens <hca@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
---
 arch/s390/pci/pci_irq.c |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

--- a/arch/s390/pci/pci_irq.c
+++ b/arch/s390/pci/pci_irq.c
@@ -303,7 +303,7 @@ int arch_setup_msi_irqs(struct pci_dev *
 
 	/* Request MSI interrupts */
 	hwirq = bit;
-	for_each_pci_msi_entry(msi, pdev) {
+	msi_for_each_desc(msi, &pdev->dev, MSI_DESC_NOTASSOCIATED) {
 		rc = -EIO;
 		if (hwirq - bit >= msi_vecs)
 			break;
@@ -362,9 +362,7 @@ void arch_teardown_msi_irqs(struct pci_d
 		return;
 
 	/* Release MSI interrupts */
-	for_each_pci_msi_entry(msi, pdev) {
-		if (!msi->irq)
-			continue;
+	msi_for_each_desc(msi, &pdev->dev, MSI_DESC_ASSOCIATED) {
 		irq_set_msi_desc(msi->irq, NULL);
 		irq_free_desc(msi->irq);
 		msi->msg.address_lo = 0;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.130164978%40linutronix.de.
