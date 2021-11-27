Return-Path: <linux-ntb+bncBDAMN6NI5EERBK4RQ2GQMGQE5AF543Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E0B45F95C
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:57 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id i3-20020a05683033e300b0057a02219a82sf2615193otu.9
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976236; cv=pass;
        d=google.com; s=arc-20160816;
        b=wWkxbAVWWvJlV47UjwmMIpszffJzIEn3FmRv3Y8pphJaYsTmsxNuNBPQk5OLOv1rBy
         IkgUGMHcmR6OBI5GPJo/nev+a24EjVEItvWy5yJz4h6cCZSPNaa7DhAi9P3Id9mFeSUG
         cHSD8uN7hdUB+6IxsbOGXV1JlhUyUgszxHffpBTcpA5Miyfp4UiLter4yim7XnO9O7mw
         GyqGTcFmq6EPFK0p8RkSNV6oJA5BYevBZzxJn3Pr69MFVjuq9ZYbY3dGiExHNaYiRtqN
         GfSBxuy5mVeRmhS/zAHjCQqNoa0Cqsfu7aRYjAr+1zCVinTdgnWhyqoP9PB1KoYKczR9
         yPLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=MeittJOFFg+Wfwi5QBt6k0yB9pZEPW3s9oB67r2UvVc=;
        b=Yt9rFmYmLpjH8KI79Z9z9q/IJUAO+/Dujcz4twUf4tnnzqRu92ibyFBGCevmEtLiFr
         jjXKS8I5ZGZwVQB3MN6xLor7YSg1UxZ84obNACoWgGZyRt/GdADs3O+SXarCq+0XlIdZ
         pgygSVyVT02+opSdNyt6FhavsaCTXGOf+Ufad8S+0o8uvH2TpY57yMTJBWl6MddHKVan
         8nRDAhVGtm+YgPOZJaFJgP6N8XsTOojYNeLeRwuY/+xPywU9uI9Yak+UYk0pQcgJoOVJ
         2WmgFJvLGxC+P0AHhL55O6N2Pu+3pe1VG7CD1Ry41uEuipFcUdHesfyVRke4dFAoz6On
         rNXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=fc0JY4ck;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=GGfmVZnH;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MeittJOFFg+Wfwi5QBt6k0yB9pZEPW3s9oB67r2UvVc=;
        b=ProRib1CXw88/EI4DF6tjle9jvvURVxIgh01TYgCbdQIPrskItxKffpg7K5Fr9dXUS
         uaiQQ8w3Hb7M+MiIQu/JVvXfWHde30nF6xLuSuq46dn1v8AaMXNLBw0WYzlz2ZayJYKb
         JS0UTC7SFL7tMw2w7j3SJEHCJC2G63p3WORI03pBReEj9bzTdF81jmCnODEN7EMRH4r1
         zrUzQ5a/GF4ub9nKTnQA0JSNxNehwLnZ83FBUD2rTyB50vbNsTF4JYaPdB4tcQMlnO2K
         H3ZH/ibjY4RamGERx6XHIeGeArp3iG5AVl2y0oSXPx0W+JSj4GqG2uQ4IUQAtkzbNsws
         c2Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MeittJOFFg+Wfwi5QBt6k0yB9pZEPW3s9oB67r2UvVc=;
        b=gbD2tIfA8GlCo/ztsgG6v4qp/n6KeS63xz+NEe063VChbhNySJSAqkCWg518fkNidX
         FLQsAeJw7nfdz9lZSQBykkLxiRzlBZQug6BFDwCeFc92SJUXDIc+8r1ndhLBGnQXiPA5
         bzHW2N5MYzU0a96FZi2CdcrRKJH9/AGr3IkOfFgbnd9Q1SWQjSbUYs4poDpIAFV5ilXE
         PPzIDJgQUEp8N4dlXIIX5WLnnewZiQXluAZOkvO6MQIU7KSr063tFTEdwBIw5bfuW+qh
         U1uAbknjCM0+1S+gQatRm5UFkkDCj/2KbUE1UiAvM4r1G3tQpDjahZjJmVSHLtHkladR
         JhRA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531L9Gk7sh+uyAbkp5cgtU8is9pmZdmLtehb7YEEXl/PDfIsMNCo
	ieX+IJBB9Ff7ByJMpOpKGUw=
X-Google-Smtp-Source: ABdhPJz8tAT/DjAjfbCDkePpC6Lkt0/tfU0wje7IRYtw+IBxwZ3oeaOJfzBcE2xl6ETPlwZumvwomQ==
X-Received: by 2002:a05:6808:cf:: with SMTP id t15mr25517729oic.43.1637976235723;
        Fri, 26 Nov 2021 17:23:55 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:440e:: with SMTP id q14ls2648592otv.0.gmail; Fri,
 26 Nov 2021 17:23:55 -0800 (PST)
X-Received: by 2002:a9d:4b19:: with SMTP id q25mr30393365otf.186.1637976235453;
        Fri, 26 Nov 2021 17:23:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976235; cv=none;
        d=google.com; s=arc-20160816;
        b=QCPvihVON1vqTcuh6g0jSsuDCfh7IbsozBtRi/u7dJMeZN2AeENq870ZLKGmcm9kDI
         ZDRDeOMMx1NelTrIUfQ/gQza+YY5dEt57wvKGQMGk78Tv/zuiwYE7nMgUrih+txmxOAR
         2oWOg6a7eoVRO61TyXS+FJN2YC5oK/JrHM4Nyv0yuS/JhzAWgfrBy1rDbAcHT3x5EEi3
         7RGhTQmc5rRX5hW0N4oBN8MiuMYEvuWiKl15Lw7FDlosRlkVOECUlGX1OKthiO0MHRzM
         8MLONvEvBr/STAQuqsaWBbEJEsUNpvu3+Zmw8CDgOqWLFXX6bUsCZ6YbXuR+OZlT/ix8
         6B9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=doaEN4PngPF6b3Ms4+nCLub9WRL+cYqg2iUonunceVg=;
        b=Sws0+avOLM1Rd/2MmDtNUXrc/R1/9e3aOIEs9LqO4Ro4+LjPtByooRL/alVf2X5shj
         wnl/RnFvQ/Yi+4k5khbbN+6Xi/aUNC4KqYlu+qeda+IdoqyMkzvcRNtKrir+/vIC02CY
         blgNwraU67ieyLzyKu9twH0Of4gN1Sv4Q28lSn5aGUFtf+sfZRXogbrICp+uSaNMvwHM
         8Y2rgizw6foS2mLsGcy2fuuxp7QfjUybrPQaTKuvEorP4LUFILqZLnkvtUyKanXG65wf
         zTCPvvS67/japDNCKxCrQIHkkBpdsknPbmanIWBOcJgqE4Oo7sz6hxLwIG+86ZIArF7I
         KxmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=fc0JY4ck;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=GGfmVZnH;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id s16si915593oiw.4.2021.11.26.17.23.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:55 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:23:53 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=fc0JY4ck;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=GGfmVZnH;
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
