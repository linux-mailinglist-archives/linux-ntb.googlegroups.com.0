Return-Path: <linux-ntb+bncBDAMN6NI5EERB6FHXKGQMGQE3QM22JI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AE846AD5B
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:37 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id s11-20020a195e0b000000b0041c0a47fb77sf1701160lfb.20
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831096; cv=pass;
        d=google.com; s=arc-20160816;
        b=nG/1Hsz5rAHkWeoRE4VpKs6qoCyITuAkcatJH/jHwqXf5YQf4bJOCn3UsW10VOMh1w
         4LkqXeTUuI4S6DL2WZRH0VYApMI7kqfMb7OxuYoFCX7hh6L3kQr+TQ2f+yCFLVGQhYvC
         Z4BFD9i+CXhM+bEbB6MNXp7Qr1izLeMxRgOmQVI7Ytu8vskUk1eshqJJFacr3nMsbjNE
         mzapu0tX8bd5+5My3nAAums7lV6tmyIjNg3M8irPzsMc2tjY5apTxLY7CWSQS6nH7hIV
         fIkaeGVRnbx9CA8cV/GlZze/OHccBzDscnz423M9eE9JoHNrrNNW3ao0vXpbyVswX0vS
         y5zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=oxVREESYzwU4IqlaUedwXbOOomlWvSfx8f2k0cqp8cI=;
        b=ecmQIIGDkyg/rYn7Wcoa36/p41fuw8LeS+kOMGa+hIHXx//0WABIPpL3B7JqjwTvrs
         Z+qtqLPMej0shUbXEWeZBKWVIR14PkugTIolCGIWnCh5h58ZkLmqQk76mycB+mdbS9Ld
         zG/6CUOnAWVnn59gGO2O/RXE0kIRXm/kg9/WKFyz8ns72ops7olGzsXNoox9UU1ns74y
         mHcYs15UVUYaIH2+qcDpWWuhB2jDkxPfi+xFG9bB/sT5XNes+CVxCb/IXDi0Z7gfhrBZ
         DUNUVJMnzTl8c65SVIOAcAfJlXjo952akNPaCoE+zr1rMkuvhySd+dm0pQO2t4BsVDec
         Bhng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=4smyVig+;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oxVREESYzwU4IqlaUedwXbOOomlWvSfx8f2k0cqp8cI=;
        b=TqzKl9oHrfZ1siv5cbSxIwlB2Fir/SdVIGC+RvmZddRvuTBKtcPTJHr5fwAUZvamqd
         RRdT2NRwzbFBodLuUJj67qrrSDWyFaI06+wmCYgeA33nqxpqsiK1/0f+UwqPuPe3ocLn
         49EZQnqEdsf9fMIuvPnfiOx2b7UPAzCmBpFYEfFYSK6neiGqpfyV9hPzHs0rtDTVzfL7
         ihmnm2Koqe2ArXA7EIMjStwm24oZwCzH8j1qUbs47Sdhh0xTxZzA3U262Z96hth1dD6M
         sWYPboovQjjyXYg+xcdSPNqkOueY1XUpo+qfBJ04bVqS2iV6OfB/oVoaSgOIAKIkLp1h
         9WFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oxVREESYzwU4IqlaUedwXbOOomlWvSfx8f2k0cqp8cI=;
        b=JDRGTyg/sh9pW4910KhPMLzxTiy46wOpHuq6cTGhcs69iS0xGcc5B1kejhrkpYZ7Eh
         HCTkdQI9r4mlnzN+ez1kDHY6qiyDAhDjC8mDZJz3nyddet3ueH0yt3ZPnDRh8muQCYUn
         34nuGrYurzHWlu+ARqqJpdUmnVCD2U4K0QJ6RlTxfE9aLeCgQVCeQ7Omd3UhBfMgiqDS
         mV/WQoxBBOPsowjHKcf8Pp9Zd59j9wPujvg62kmf/bEy5xyV12LNkBwdULo7mIlLqy9W
         eo0CWw1WCPM32qXwQvw8ptasDNZdEhqnHGSPLZ3PCzezaz+MTqxJZ1htaGL3f0PuDskm
         YoXA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533ccvKo2Sm1dmGjEiAZhwoVxkxYqWgsNkweXrBw2s4+Nt/Q3E5F
	bLDJ+RJVyQBLaHtoKlzunuw=
X-Google-Smtp-Source: ABdhPJzXzi8gaCrOrZVA73h4MFMU0uv5ATR7QnJti5LNhq1IJCTp83+33R3eFFf2G+SLOKiANRWe+Q==
X-Received: by 2002:a2e:915a:: with SMTP id q26mr37227114ljg.277.1638831096557;
        Mon, 06 Dec 2021 14:51:36 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:1320:: with SMTP id x32ls2008283lfu.2.gmail; Mon,
 06 Dec 2021 14:51:35 -0800 (PST)
X-Received: by 2002:a05:6512:2252:: with SMTP id i18mr39705599lfu.679.1638831095767;
        Mon, 06 Dec 2021 14:51:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831095; cv=none;
        d=google.com; s=arc-20160816;
        b=wfOXz1xad29gZS8PCkQDxUzFGF4+u6G8RxGVftq4AlF5jaB/N3sM9doef0+fHGqJek
         Gj5BBX0pt0xKZUqJAaARiTeLbs2QGk13h2k0kNAM7EmJ4MygzcLawjNqRcT15sAquakr
         sennE6SJnoR1l3EPLHDxlzz3SOO6QiiqGCskZj38MEzDrl+Lex/BnU3NHdX0u/5oN9uU
         v07dc0VTfSswSkSBWZBkOG3zkglSOgGnKtAix6HergYM6q1XRe1aup6+x+uwTDuKhUeR
         VfkU/r+3G3cucYshIcdaJBjkRStV+JnAcqUFlPNqaTX4N1oaUZ5yCefDn9TsOm/G5CaK
         HCuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=s/VOVQMyDYcB6+dcIQa54u5N9xLv27CFi4i5YMxXHXY=;
        b=bcT567DzcgPVQ87vdAcj/r3JtEA6TG3Wc27/mqlbXzJ/WVSTcH5sgFDYoS1Hq5JpC6
         H9oLzSfY0r6/fXRglQdtPDKbz1Bwavfz3+4S9IBCZvAZpmlYxSfnjjtd3/wwL8Hm9xe+
         pfpZhgr9M/GsDe7hyLM1jzouYKNkld6JJT8EMUS2MadFOEjRl00KzDaIG6KVSqyrTjN3
         ldvQOV+g35WImYjsc6jV3WRol4gtI3Gk8wlkISiYUGueg4VzYqwtYTW1sNCuVxoOFGUe
         kBDho4EblbgJS3zfORR5tBpoIwjsBfvn4F21FtN+WF5sm4ZRIbjkjbPtezkr0z27+CCK
         sCiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=4smyVig+;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id i16si915966lfv.2.2021.12.06.14.51.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:35 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210748.683004012@linutronix.de>
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
 Logan Gunthorpe <logang@deltatee.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>
Subject: [patch V2 20/31] NTB/msi: Convert to msi_on_each_desc()
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:34 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=4smyVig+;       dkim=neutral
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
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Cc: Logan Gunthorpe <logang@deltatee.com>
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
+	desc = msi_first_desc(&ntb->pdev->dev, MSI_DESC_ASSOCIATED);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.683004012%40linutronix.de.
