Return-Path: <linux-ntb+bncBDAMN6NI5EERBM4RQ2GQMGQENSPTPZI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AFE45F970
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:04 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id b6-20020ab026c6000000b002e56ca72e19sf7390600uap.7
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976243; cv=pass;
        d=google.com; s=arc-20160816;
        b=a5/8wceNcD4Zdsc6qfV8rdK13uUNes9QoVB6sS5yFW0Du96N4+7N8HA6idJvymcIID
         gPsorMrb1dENt8EgO3igcMchfvJIfInOqJkns2UvwX/ngGji8xSoUANFecfThKizdtuX
         1sEsG7uPEooY9nYOen/D0G2X3Gl1PojENOl+tC6wDrpJ3C3pEoV3PPzbe5ZEQIew3zXv
         YWmuGxQXwiGInIFesxvbGwQ3ju2Tg6CYxkiwWKqingp9mD1InkeWRNZhiyA2Y9XO+1L/
         w3lEPJtGJ92mJfHoMwB9a7nVJJowHCSr22aQ2XFah6XDB8DEqXPQM1Vcxpl5dsPAEJvl
         blAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=F0/mOjiiFBM27e3rqq3nGJUqRgMpxIA2n83Egrpa+8c=;
        b=kaYCjhOOSwhUJtKTeObM8oLRztZL3r6+Wyl4MeIkWkj+ZScbLX6Enk/YuKwge9b7vI
         DjJh/LJOZ9ncBQVbXTBAYXQJd+N4xVSHVfgkYlb745zm/zbdxCJaCKdADx7bYCgcIdxP
         ZZSlrNJ9cRCzpvNxpaQFg6DqTkkqyqk7v1gx2jDQ7NfWQwNeqocDVj6mSeaXMKvxN3Iz
         kjrQmyTkqGqSLsKjUFejRdZ43Z6HSGRV0OXvyMpVvcXAL0VixsCuzHPU1/6O6ysE1uEP
         U1eXIpnkpUA8yvQ1AuyxhwpABWiUNV1AzV4pBnRVyWJx8eK2z9jgPhi0QHGSoQ6WzBLk
         8LOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cgPUhSOl;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F0/mOjiiFBM27e3rqq3nGJUqRgMpxIA2n83Egrpa+8c=;
        b=Ed8EpdcBDiBjE4sy7GKQNOhpgRxvihacWFOj/k/po+DALX9j54g+0aHFH8Vk7DAMXp
         zSimwLZhbBeoMBzgA8uZriHuryqzGE2J4P/X+9FbASsKbCu4hpdDAdILekdmoKYjiA6N
         EyGi76AB6IpGT2RpD6mJuIEmgGieqldLWEVEokdbGFGJjb9OL/LqdOxkkcJnXjYtl8SV
         Ep1rpJtiCS+xyoCswQWRG4YPxnAmJLLXC+owvov7+VKpiHnwhun0bzvhXFhZ77gdbutU
         LCM1IGayX3Plad/qyiWIXJMFyDhd82ZGp1+4iyaZZgiXmrMby8p9xKfCRCvqDigaQgsX
         hpdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F0/mOjiiFBM27e3rqq3nGJUqRgMpxIA2n83Egrpa+8c=;
        b=2GUud6Zmf/2WZ5lGIeedH7Z/AuinzmYopdMsoZZOinmQF6sehC/p8QrQUmCX/9dpwo
         kMjYaWFvsXeLRxZC708NGbvs9rHxqxiPqGFT/vWmumM5Bhlo3EEoRjl9hgOYb8vE4zcA
         SMmlPptImZZHUYEUlIQA99qsEhlehaV1aZlp0iJFjE95i33JWE05D3S+dyOIdfwoSL3Z
         g3OTGMDOCb/GTQLN+DEpN9m4J3jsdaUKJhUrtFkriqNV8AQoKGpYri9Ql2ttYvTdOQsA
         ao91lqxNct3T+CxoqwUM13jV6LzZ/znYRnUNfn7FNxsHSHKlvm1E7lsdu+SCbMPvG+Po
         FGRg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530o3I8+18nwnIBrmFlUkx+yqDA5szJ4NjYfplwT0sPc0kN1UFzN
	xq1iaT6ZKnoskUHKonxBwtU=
X-Google-Smtp-Source: ABdhPJyTe/IKdpNUdgPdxvhTpd7J3m3TyA1kMScjFimGRIJSryXS61UG/P0z0tjoiD6v+txmZo0H+A==
X-Received: by 2002:a05:6102:3708:: with SMTP id s8mr21100025vst.45.1637976243650;
        Fri, 26 Nov 2021 17:24:03 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6102:2386:: with SMTP id v6ls2690131vsr.5.gmail; Fri, 26
 Nov 2021 17:24:03 -0800 (PST)
X-Received: by 2002:a67:328c:: with SMTP id y134mr21047516vsy.82.1637976243216;
        Fri, 26 Nov 2021 17:24:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976243; cv=none;
        d=google.com; s=arc-20160816;
        b=M+BnOcSVRGHSaOmVaQ92TUqVuAlaOODOUs9GtvOL7SNfUc7l0X9OeFc96ieQdlERBZ
         dyM4dpUl1aCc3+Lex88nHHK/PTthZwYYrAbTcVYqtArp6tIKSH1EIKzT3ymyrA/5AIVk
         5SMFMrCVtZmGHjdoLt2meEv4KGRsfaehxg6VBb7CVZNNgekrpC2klnl4ASREkeM58h8U
         qGePj4p8rFTYYogOxkG+Ka4sUwT5XdpsLYj80QG0J0YmljmTBJ/CBKvodOIqMCHXzQsT
         FFpjrHvOH6Ms6mZdzsy8yA8piIBJggMSIh4JoENjWuyMg3kFvCSqGPnG2ssi5Jkts3XB
         Fcbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=M3sqeQse3OBzh4UDcYwLpjiKs6TLrCNEA9mHCeGqCQM=;
        b=hyvGe7FccHPbEawDZ4VCSz/k6R+gxqIy5YoB0eH6b9QQZQ2A4MoWR4ijKpi8pM0h4g
         +5Oo5yIMcjmbrMDyK6hlgVluVWzYB3g2NBmhIzoNibhxJfSsAnAQHJ2dxp0QzJF5w6o+
         W177oBg1vbcmUzLl8uvpgkwQri9lgZk00AMriy95ChToFX/4RVc/3t6+hKBzTDlP7H+g
         SAZJ3hOijUgmsRe9pBW0AwRQT3JSk5U68iErIRnC4q8nvBe5G85sVY51Ls8WT/imDv4E
         NVLB6012BaCPRoU308grMNTN2Y9GBa/MHv31EXQ3VxbVZbSOvyJoAwlJQWXAVjum5meI
         mj5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cgPUhSOl;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id 140si557316vky.3.2021.11.26.17.24.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:03 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.547996838@linutronix.de>
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
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>
Subject: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:01 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=cgPUhSOl;       dkim=neutral
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

Replace the about to vanish iterators, make use of the filtering and take
the descriptor lock around the iteration.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com
---
 drivers/ntb/msi.c |   19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

--- a/drivers/ntb/msi.c
+++ b/drivers/ntb/msi.c
@@ -108,8 +108,10 @@ int ntb_msi_setup_mws(struct ntb_dev *nt
 	if (!ntb->msi)
 		return -EINVAL;
 
-	desc = first_msi_entry(&ntb->pdev->dev);
+	msi_lock_descs(&ntb->pdev->dev);
+	desc = msi_first_desc(&ntb->pdev->dev);
 	addr = desc->msg.address_lo + ((uint64_t)desc->msg.address_hi << 32);
+	msi_unlock_descs(&ntb->pdev->dev);
 
 	for (peer = 0; peer < ntb_peer_port_count(ntb); peer++) {
 		peer_widx = ntb_peer_highest_mw_idx(ntb, peer);
@@ -281,13 +283,15 @@ int ntbm_msi_request_threaded_irq(struct
 				  const char *name, void *dev_id,
 				  struct ntb_msi_desc *msi_desc)
 {
+	struct device *dev = &ntb->pdev->dev;
 	struct msi_desc *entry;
 	int ret;
 
 	if (!ntb->msi)
 		return -EINVAL;
 
-	for_each_pci_msi_entry(entry, ntb->pdev) {
+	msi_lock_descs(dev);
+	msi_for_each_desc(entry, dev, MSI_DESC_ASSOCIATED) {
 		if (irq_has_action(entry->irq))
 			continue;
 
@@ -304,14 +308,17 @@ int ntbm_msi_request_threaded_irq(struct
 		ret = ntbm_msi_setup_callback(ntb, entry, msi_desc);
 		if (ret) {
 			devm_free_irq(&ntb->dev, entry->irq, dev_id);
-			return ret;
+			goto unlock;
 		}
 
-
-		return entry->irq;
+		ret = entry->irq;
+		goto unlock;
 	}
+	ret = -ENODEV;
 
-	return -ENODEV;
+unlock:
+	msi_unlock_descs(dev);
+	return ret;
 }
 EXPORT_SYMBOL(ntbm_msi_request_threaded_irq);
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.547996838%40linutronix.de.
