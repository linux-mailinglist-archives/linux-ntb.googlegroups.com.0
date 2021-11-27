Return-Path: <linux-ntb+bncBDAMN6NI5EERB4UQQ2GQMGQEP6EGWFQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 227D845F8EA
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:00 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id k6-20020a0566022d8600b005e6ff1b6bbasf13301292iow.8
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976179; cv=pass;
        d=google.com; s=arc-20160816;
        b=j7BsUJCT58tiodZ/ZobKTW3YIyaToVyFc5vRKp/8EjCaUMF7Ova9FWoXEAdpkFj6AB
         eGxuJ9nLAYAIh5abNAgCvybzoe78NgM1hjgXBkm5C1RWCuk0ZNfs5SCCF8Yu32Ngl6s0
         8jVdVcazgJQcJ0Xm4UMWxQ2WUmnHRbmvtv3OwWJG12T3avRC1/xdaKRdZ9gXlOngXfy2
         b18D60CNdG/9BOdcCRBKoSCmfpn2p6+4oYvnaQJAxbyDjUpKLY1sl/kd9tLloZIkLLcX
         56+oC6bS3/OrDYspPwZknILOHrB3imgv0kiCGGhTu0Mp3SqAu7EOtvJCdb+XbhzlXI5G
         Wo4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=0hE56R2kGLd2RjOiUK5aI8LNGcTqchzS0IGFMYKB5rI=;
        b=JetXkUBUypOJnZe+zWsIlmS0z+CRvSwYban5EG21pvNf2oaDePxjSKzqGbrhDn48CN
         dUCHMs9f3fCV6HV+gTd1iq0+tJykOd0KmYufV62g1W/77AS10ZPl5TuiQ2rI91VKZfR9
         TKfW472EDI4uvsx48eWRqQYOKSnjA90iylg7EDQEvFdnZqeZxKW49Q5ie+MHN7wlxrwi
         n7hnCb2tU2Li/YM3/wc4kFsiJNHmkIQ+PSBmYttqRjwJSyTqGdjDc3kj8msTX8K9eq3U
         IdfM0nvjHr39IRHwSntR8lR0xXE5hUwCN5xHv30BcH3ay6UH0NKEakLfOuGrMbHH/F+1
         BiMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Xm0GCVY1;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="xLS/rnrS";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0hE56R2kGLd2RjOiUK5aI8LNGcTqchzS0IGFMYKB5rI=;
        b=EW40RGFH6xfgcpsgo66pvmeqQMH6uQRFbDyt8LNq5kobgmQP4la05WPfMkygCH2Stz
         3cYjuBODFl9HZ24uiZBzlUnNwSK3w4mlNBcIi5xgTUqbBfW5nPuWui5TJ1lIcNDYZLrn
         NSjLTLkocGvUufDkjW1seAHvHbfHMNklAuGp4WuAeihzMzujERNgz1ZLV6fk2MNrAD2T
         8AtDJBzYEdUS1vyBnU6O3q832h+i+LuWeauuS4woI3ZOoSi74xVS30e2VGEyIU04YoCq
         IyiZ3Crp0BKCiLwvv4FJ/MvvXPWSIwGbgAW9eJXFf9da+xl5wpQQ6SI7R0IBxLDPhYMi
         25Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0hE56R2kGLd2RjOiUK5aI8LNGcTqchzS0IGFMYKB5rI=;
        b=Z6HsFwgJcbpKiIXjeuL1uVNOz1h1LII1o+7oKRdQwUlgjPFOMGAfomzOPQMtc5WM/+
         LZCxS3R3Yj/rjRp/9yef5evfLmMk28b3ZnyVH6X9awD83ta5UMQB1FLDBvtl1ECEQgAF
         70DXBpu1BrK9Sz2k0vDGONib33URDsv0qaUEg+FmFukrF+AGlDearZ336tU/mP/yeN9Q
         yieSblc4F75ViamsuG0T/uw66geWk9LfSgSstgr0gubESlFLY2P5OUofhjH7IcO9nUrx
         sXN26bUBZFfjwHQZ7ssC0jmYBRR+c2F7Nyc92gwDvfhvJPxMLXiPvRxqG5DO1K63cuOq
         +bAw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532oEbIxw9880H/KVOt4nWkW6MYHLKHKFG+sNyn7X4pfXGyd1LOu
	fm3YlOyfHf+/7A2bR29uBtM=
X-Google-Smtp-Source: ABdhPJwehDkZGLB9Vyq4z71XzI1Fk7TNoDxztbGltM2cbxotSWwHzHHyKZSewJv0XBr0LbCxSpFosg==
X-Received: by 2002:a92:c244:: with SMTP id k4mr795312ilo.169.1637976178992;
        Fri, 26 Nov 2021 17:22:58 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:1888:: with SMTP id o8ls1091859ilu.3.gmail; Fri, 26
 Nov 2021 17:22:58 -0800 (PST)
X-Received: by 2002:a92:c268:: with SMTP id h8mr31708149ild.298.1637976178657;
        Fri, 26 Nov 2021 17:22:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976178; cv=none;
        d=google.com; s=arc-20160816;
        b=Lh/I8nlgiYtpAAUXRDQu640GVrw6h5DMXQipv9oMdYUlvLGHlXTA5sjRdkMpYjFjY1
         2CYRLVSWieD5KCo7aRXKvSYtusNUbNDDITN9VaCGSrv2TbIYQq0yK7gRH2LxC0UvP70r
         R36fvvodHVwHUvwcpJNlEbpSqXUi7TvIffqx8exgmUhtD76EcFXoSEpLAYxuN3Gtjj91
         b+nW4JYEPSAKkQhnXS0IbVvfFkhvuY85wWFXPV45qlKkJnMLo9J/EVrqho8lIOnrnEBK
         yA+lQCl4ymqKd21MqI0fzQwX9/xMYJc8cLMDTVfnzag/0ij2CfDB6qfE7gvuV4Fr2pAb
         xPug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=dSVT/iBVTDrru1VCPsyUkPO+wlN5QYdJblBQDMf4a+Q=;
        b=yY9iqFJVVYFIcRwnubNiE0xuFPw71ajvy3XVI4/jCiDg4eyJYe+EMrNTSoq6y86T+J
         81Fi4ny+vVWLXmDYZoOcZzH8vuVW4z+kyeYdNvCZkt5PM5RbKxvkYVKBU0aiMl9bcF9M
         39WXSM8zbrNCaijqWrl07FLdLVneEhPan6/J/WEsbtfjagPr5XORVWeuwgQzfEtBVX8k
         5mHSIZ7w4DWzKAUCQDL/Y8q2n5Yb9a4QuzqLy3dugEPq86wJpJDuEsiG+YWO6nfTJvJs
         oQdZ9sjRT1+ZDAJjW5uuwA349ULRVrFHMRjkSlQeYT7DfnewwKtYYcbw/nYpIz8jiNTl
         5Dkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Xm0GCVY1;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="xLS/rnrS";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id h11si29383ila.4.2021.11.26.17.22.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:58 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.429897588@linutronix.de>
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
Subject: [patch 19/32] powerpc/mpic_u3msi: Use msi_for_each-desc()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:56 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Xm0GCVY1;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b="xLS/rnrS";
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
 arch/powerpc/sysdev/mpic_u3msi.c |    9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

--- a/arch/powerpc/sysdev/mpic_u3msi.c
+++ b/arch/powerpc/sysdev/mpic_u3msi.c
@@ -104,17 +104,12 @@ static void u3msi_teardown_msi_irqs(stru
 	struct msi_desc *entry;
 	irq_hw_number_t hwirq;
 
-	for_each_pci_msi_entry(entry, pdev) {
-		if (!entry->irq)
-			continue;
-
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_ASSOCIATED) {
 		hwirq = virq_to_hw(entry->irq);
 		irq_set_msi_desc(entry->irq, NULL);
 		irq_dispose_mapping(entry->irq);
 		msi_bitmap_free_hwirqs(&msi_mpic->msi_bitmap, hwirq, 1);
 	}
-
-	return;
 }
 
 static int u3msi_setup_msi_irqs(struct pci_dev *pdev, int nvec, int type)
@@ -136,7 +131,7 @@ static int u3msi_setup_msi_irqs(struct p
 		return -ENXIO;
 	}
 
-	for_each_pci_msi_entry(entry, pdev) {
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_NOTASSOCIATED) {
 		hwirq = msi_bitmap_alloc_hwirqs(&msi_mpic->msi_bitmap, 1);
 		if (hwirq < 0) {
 			pr_debug("u3msi: failed allocating hwirq\n");

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.429897588%40linutronix.de.
