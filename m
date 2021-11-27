Return-Path: <linux-ntb+bncBDAMN6NI5EERBJURQ2GQMGQES5PX7GQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ADF45F951
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:51 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id bs14-20020a05620a470e00b0046b1e29f53csf11176858qkb.0
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976231; cv=pass;
        d=google.com; s=arc-20160816;
        b=QbRST0VOHNTYMfKxS+7jcx32+MRlLn/0rLmgWXtyN0FRNLGtNekmCa/QI4YGab9jv+
         pB05lLbZjt50YQQcDDEvOFvs/JwAML8wuMPabz//0o0aS/ypnzYxZeZKbe0Yu5leszrG
         qKOgBgTt1gaaNI6ITPBjuDSaLSj1DIoY8juHXOh8j1h7CGxGN6LwhAv3m9r1NVHiDPs9
         QLDE23RYVHONNga6+G5XyXP8Am58w5L5Rp52MhkZKvo0KIw9oNdikinvDVAuWNVsidqL
         ss2ABygSK/j2qDdi3qtbzdvP8RjDgLWuXWyggMXGjHFHkSp3IuKWQ17Ahoi+nJseWxMk
         OfuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=vFwvBjRSQOkAiEBAz/q774JA9KFB9tO0+OewsfWoa2c=;
        b=TV0GdFTYWo6MzPjn27svP+fpwC4LYe1HbT28YE5XdJWIUkDOkqM5zZ/FUNyefNxXX2
         4pZhh2eR76JgRet/hkhvMEc0z3SQFpaiUa40gcBk3XYxusYgQiYHKJFykqwG2Ju3QwMi
         O6sndlRhCIzvj9KWL3Sa1CwlLmlDXyLzcaRmMiL9711EIWnGs4UqYGA+IMZ/Y3+wyhOW
         DPOvRmwadm8sQGzyOUOyV28elCxfrXM5k7YtrZ1MHgHPPuQQtoNIbnUjnR6+gVHujgYC
         lm3dy19YSMCIircIQ7GnwxEwb3S1rOtW5Cpqqp138LHC83AW87s3B99FqTmPsoLVZgML
         1G+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=lSmmn8UQ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=0jNcPNgz;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFwvBjRSQOkAiEBAz/q774JA9KFB9tO0+OewsfWoa2c=;
        b=CnbmbWB4GavLs5F71IfWnR6J3JMt+pn4e6e8gfSfx0uUogIk8PL8MHc4Muf7sawflM
         ub4FU3TFIjdfVDiI3vnd3mcZCwfyxeogTVWBMPdR4lm0WDPWhwFauT+PXNEloIYpJg6y
         dyXb4gLpemkyI6bqoqENN3vKfPPPs2WY3RZC4csU66S0KSMztpGrw4j/H7cGzVDbbfMZ
         62FGdIeiF2RTtpDCAbc00mrtQdKsQD0WCPhAs/9UYHwLWixWGDRAc9lgaTJnorFRdp/5
         ZLFGjhwbI6A5epSlpQ2tkohbJCpQBOVkGrnkyWCN17l95SM4Ffx8V+P5D+yZHjr9WVM/
         SGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFwvBjRSQOkAiEBAz/q774JA9KFB9tO0+OewsfWoa2c=;
        b=otrQjkNQu0ZXe7oxsrkLHCy3GgQdeH5oFA4G/fiBZCJrJ7f7l3eezjHRTHHlbLjuV5
         QrP1Dhy4OcBVbsCIbW0DSJTcOXzZElLDt4SKsSbGM6mua/bJFmX/OJhhf+/BoH4uQKBG
         thue6sVd2GfnVoVqAosdN8kdJKo5Ouua7z0hlXneSF1xxt0PBmYjYHkp6mCyrR2TnJOt
         dmBdVO/t26y4vtxJvJVjqzDckXh/hwVhAQmURDkGHTEfBcqs6sV1EnNUgAFUhkizPFLA
         2d3Op4BYwozZ5XIodsCFyjSaJlERpvg7wwgSQAnHd7NgZtRSpWhMcdstmrg+ujghCqxH
         GPfw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530ZWgkZ8MyMqFcz96XwKbw9rA0GDKYSbIa81JYTWQnoW1JddDqP
	CkDIAvrfVvWYcUFhMPUZxAw=
X-Google-Smtp-Source: ABdhPJxpRDTFpIQweFABLRp0zgjorknYXKyOpSKFqsQxVulHKd3WwjmQq8l47HfR4egeg+TP5Zm0jQ==
X-Received: by 2002:ae9:e511:: with SMTP id w17mr17659372qkf.745.1637976231018;
        Fri, 26 Nov 2021 17:23:51 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:5c05:: with SMTP id i5ls4300574qti.4.gmail; Fri, 26 Nov
 2021 17:23:50 -0800 (PST)
X-Received: by 2002:a05:622a:3d1:: with SMTP id k17mr28494055qtx.83.1637976230690;
        Fri, 26 Nov 2021 17:23:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976230; cv=none;
        d=google.com; s=arc-20160816;
        b=XijlXhb8rDGpz8rivrP3Ahg8rrxLJZQtoTOW8naNnoyuGoxk2yvmqYoGrFyac88pvB
         QFdjz0wkZlu3zy02+rFHlLGFAtWKcGRHxkq85H8wF1nPwOhbcqaZ3EXb2QJTFOyLNJo6
         0+JX9HBxJv7kXXWztR17jRH07pZPYrxLZH7qz7HW54R3OGo/XEAxYZgYbDcVW87tVnSF
         r8A5PriRvwqGUCBzeCd13ciHOjvZi6yV/l+0MidaNkLqEI++DyOVGQ8v0MdVCUddipD3
         fNIpI2cU+EZgoDvA4RGEMNBlXTvdSqLiZ7cYvlCanQGmqRRNKJHwlxffBRjgccuvVwI4
         kKSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=JXvHU/eN0iJfDqMWbOd2UGXYgpl11UY148yTUdaqnAk=;
        b=RV6P7TFtZ/zQX3Uf34OUkvddC+3vePfO0QRYbgXZM0zOqcjp1hAUnyfFIzdUP9YV8g
         1ZE3MS3ImrzCPJSJfLF72BxKrtNBeX3m26VxlbCCTLUfafEVdH9IKMXFeEx96Mu9JGmb
         gdohkS07RzSmz/FSISWDF/4uSJXznnoaz67b7Dd+hRJOvZyGIUcwb9hi4mjqwDNRtpcg
         BPslrWSQGfDe0KdbcxUuz26AVEUS20zPaUmy7DLBXzBjE/p09oHQSn9D4SjhT4+ulyeH
         i3nsZDxvD87HptI7j/c+cxejTcVt0S5q9X6U+Q32uv2OAlfWtjgNnLBPpXnACYRX/CR5
         JAfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=lSmmn8UQ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=0jNcPNgz;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id w22si1225809qkp.2.2021.11.26.17.23.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:50 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.069709622@linutronix.de>
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
Subject: [patch 13/32] xen/pcifront: Rework MSI handling
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:49 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=lSmmn8UQ;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=0jNcPNgz;
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

Replace the about to vanish iterators.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/pci/xen-pcifront.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/pci/xen-pcifront.c
+++ b/drivers/pci/xen-pcifront.c
@@ -262,7 +262,7 @@ static int pci_frontend_enable_msix(stru
 	}
 
 	i = 0;
-	for_each_pci_msi_entry(entry, dev) {
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		op.msix_entries[i].entry = entry->msi_index;
 		/* Vector is useless at this point. */
 		op.msix_entries[i].vector = -1;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.069709622%40linutronix.de.
