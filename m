Return-Path: <linux-ntb+bncBDAMN6NI5EERBL4RQ2GQMGQEFM5FRSQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E2345F963
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:00 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id a12-20020a056602148c00b005e7052734adsf13309715iow.20
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976239; cv=pass;
        d=google.com; s=arc-20160816;
        b=r4iZF5Zbq79kgneLTzNGSIUvcFx2fygMWuRJEbeLks7M4ECkYHRecuNnhqOS8v1CHW
         tN9ZbbwltqeE0xg6De3HjThmrz07GcFXhV8ZvmfoYrj0xUOvsRN1690eXs7zMp4vjYu2
         6Y8L56qH3JG1Q3UcqBy+Bcp4bKq1eq0Wl4E1g7muwxlDDkpfSuw4tAW2630peIkHQu5Y
         uqsmpy7guc418sxMP3nXhOOrBQ8I9pRS5fWbyyXrHxtm+lCIsoRlCGLemGvSNm8lLM4D
         BxiVz2zZhAD7jU4rfVWkuvloI5y+A10d5zkeQWh3hRDiP27bFmhOSoEUP0wlVltWKANO
         m41g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=h+2pv2PWX+KW1yYsb6RYLfFEmb7AdHqPKv/dO+4UEXQ=;
        b=JPM8DlPuj9d/N2WiN/kuMliyEnC6E3NiOPXX9qig/uttJ5sf/icIwi+EhMkUs/5IGS
         i8jzcW0CAPR+3Kx9z0EuhpevQ9fg5uAnKf7LN6fyj4rwRAjmeeUUDaNBb94Vk1Jp0s6A
         nHA3kTFEtwzt3Tpa+eRnPcw2TzohrrIkM+azNXkPkAocdTKlimd7oM7AGxtp7TD71yR2
         vFIQQwB+vnj3Bc4eeXuWVhLtP3aAlgHzLB3Zl8VKV53n1qnvksm32wN0IaK1SkhVIjcI
         /JCcEzTRx8gkU9gwYCVDcD5SJdsrRMrelSO/QKec2pzWHTqbDWa84M5g2TN8QAJ1Pxbb
         ayXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=CEbEncBF;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+2pv2PWX+KW1yYsb6RYLfFEmb7AdHqPKv/dO+4UEXQ=;
        b=ik5DvmnWZ80L66jhljRIoHrkzyWhvdz+d0L0yzoAIHAEqfEUIKFI4ZjdvYxRAu5eye
         2yXHVCoW5+8Rq6tSE87qD6Xx6/gtXoeAUjTYT6jTqWIdJcx8gqbBhigjQvr8OrxxLOGG
         XmjvM4aNY5NwQ7d7adj1Kh9YxNr0WgSgYKvsXQYiq88KyX5wiXOJjg5MQRwknj5WSTtc
         c0unkQSFgVNYzxYCKrqRN5CefUrHhggqSIibsL3MkoxG0Ule8iWRKsndiQobnVtcld8J
         04NEFVdACq8zipenFxV+VE7NpBR4iJ6ld4XJIzIHEcY4EN3Ea/CdKPkNzKytPfkAtrqF
         JE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+2pv2PWX+KW1yYsb6RYLfFEmb7AdHqPKv/dO+4UEXQ=;
        b=KTfQCd78x6wug7THGH5Huz4VxSP7cDE9iRMALFliaUEo6thErVYLCysW1ynq9OiXEa
         9Z3t8x6q9dFqFkEc5+eFOjccYjWiZtjfv82stxbSpsjpTF65R05QhCJiSUA+FzjUUaKU
         cZ8H+WKhxPsC//dxBmUCGnJLJaqPNFCzBk2wY6X4satqLdXdg4JPllBD2Owq2DRYRPGZ
         C6RzkRgmB4NiyPgRHidkpjkrwkK3wbdzEVPWcx2czUYhH4GpR0TMZ9ivajjI7YsXF0y8
         C5HZ4mmqRY/+sKECPqDiCGkSdJ0cooWsLHeSrtKGRnrfaisl06KOfM5cV1aZQ0EBYeXd
         2G0Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5321SvGmuXTc7nRuQgLn0z5sBN1VWuVEGoUzJ5SMEjaytvnGjVt0
	LzeAc/nJhftudstTh8zscO4=
X-Google-Smtp-Source: ABdhPJy/8BiQwIe/ESN7sOg0SB3HmQduS49CXIP9T3M3VToIf/z4yN4zuw1aC5BRxulr+3grdke0eA==
X-Received: by 2002:a05:6e02:188a:: with SMTP id o10mr40332820ilu.296.1637976239113;
        Fri, 26 Nov 2021 17:23:59 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:1341:: with SMTP id i1ls783979iov.9.gmail; Fri, 26
 Nov 2021 17:23:58 -0800 (PST)
X-Received: by 2002:a05:6602:2c07:: with SMTP id w7mr40249341iov.122.1637976238826;
        Fri, 26 Nov 2021 17:23:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976238; cv=none;
        d=google.com; s=arc-20160816;
        b=Mbmn+AuIJOPQ3IDJYnaHb6QiOBhL2nWDumZQ/G2hf772gLmyuu2SJwrT6ICIEhjhx4
         E19/gL4vd7/wA5bDyf/bIF2P9nAsUXJvrGaYnZsbRKpn1os05XWy9QgUUL6ePjUYUd3s
         TfibqcKTyXT59MyRVviUzhnzMOfekfHlMSzgcwrliXoasYJuAZubFZ301X3N91kZWn/x
         3lBqOeECbqe1WB3/3tpFG01lEwC6WCzPCluw97wqMuMFqgW5iYZbc/7T+s8MLqLSeCMF
         9fC28SWtkAF8QtgYKXWrEzea3kD1zCaaiX2Dfg+5Z1inRr1z7RStcvIC7lKcXd55DSWL
         dEbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=ir5jZb4IZcCDGObECwlZouR2K23XLyndrt4jAkdV6zI=;
        b=YSzmV0NA1BG0YzgiujGvF12RFe7FT/asPDkW6Q9mnqIdvgE8bnuNsVhCnsJQtPHN2X
         VZHLy4kqWEJWvncWQFTZiFCp06Vul+Ofdh9xw1ogRXut9saZYCebmmU3FAu0DhqQI+B6
         HrqLYatwjHH2Vdlx8m2nKJCbZ2hnSjhQAlWE/mXJMesLpu1zKviwV+REg9XckB+ZJmd8
         kB5+lSAWFof4L2M4ojy6GjsDXVjCVXaSJOqQ0uRFgewcLrQoU0+RTiz39ct0XIcBolhL
         9o0qREpYmn2f/BujjSls+/zSUTwF7S+R6oanJsVVkpmOY2SaNuvAxo5RLS8ey+QiHq/H
         MerQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=CEbEncBF;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id f19si523336iox.3.2021.11.26.17.23.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:58 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:23:56 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=CEbEncBF;       dkim=neutral
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
