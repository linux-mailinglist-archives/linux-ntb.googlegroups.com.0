Return-Path: <linux-ntb+bncBDAMN6NI5EERB5MQQ2GQMGQEJESKWWY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 2370C45F8EC
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:03 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id v13-20020a056830140d00b0055c8421bd62sf5088963otp.15
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976182; cv=pass;
        d=google.com; s=arc-20160816;
        b=WydG0l7q7ecmYU+2sEPR9SWNTkjSB2rlqzQWRuUeudNZEWuU3TLJQ2GOMvz/2tWNDc
         +but3Q+wXV+b+fbLekVJ3/uIViWDYszv8U13ffpYQA6l+Gf5DcpyChaFxTXMjudE1OGd
         YUaDGqgZOKQFlo8po7TEAfTCnVPeXxtPKzCg+nJn3WZGvwycQjI0ocEG4wngkTcv/MN9
         ZjfOfE5FIagjBZ53b90ddT5pjSbJD7r4rWgLaZO+Jg+20txG1O4R1vlI3lFeu2x9D9oO
         BtwYaJ+HumMiOFgljTmOvkCHuKHP1iGKoho3pK0OJ4FmUEI0KE9nu22PMonkGHmbFUJ8
         bcdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=F0/mOjiiFBM27e3rqq3nGJUqRgMpxIA2n83Egrpa+8c=;
        b=f9ta+tRhmm7CsFUygJ0K4wjbDPSvr/+awDohNaQnRvKiRqNM5fYZmN79nXHmnJWoaS
         FSE9vk6IBIiwsM6foHwcdbtf5BrP+5zO16A/vlOFOvRsCBrsVWeUUZcZGGA3wJyw6sfy
         JaVQZbap8+ERyHpbLdH18jdpRClmrNgmGFLJjNqXL+CDFQxp8cKOm+VSUbG1DNG1pu5X
         V9pphi82UMk1t537PtMxn5DHrlq+bgmWsRLLiC5mF5F6Js79cSORXqMZ5Do8APUTXrRA
         A7J2BwhIrWgdH7WGqM+Z4FSPjS3d+tP7rsMdXv7CiIgVcfm/a7WgyAyyUnBvBtf+rGvS
         KszQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=LmSeBqi4;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=Q0MII++n;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F0/mOjiiFBM27e3rqq3nGJUqRgMpxIA2n83Egrpa+8c=;
        b=IvW9wVf344Gfkfi88Kiq+cymgomZAitdxvwP7xdiIcEKYS2qXKr8WtXcZKy4Ck7baH
         G/5yv9W6AZoZKfxwz9pe6NaNLiELbtJNorli8V+Zw6qz/VNYJo9wejNZr6UjdAekWVIu
         x8ZuPEY8ktUq00ZavhfK217c1FR2H2OSmUaDhmWQHf6lRiQipEgnp8jg1Lfw9zRnftHw
         g/E92B+npDNKgjZxj+POCGxVORuV1uTbK0eHSGZllMrPd3cEdq37Sov9Hbl7QKtTMZj9
         w7+qWGpX8di40/eQ6QmNP0LDrNUMMYOOH092pS9LQ70X8rIDHvXXJNo3P6wxHtiLaRRv
         Arjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F0/mOjiiFBM27e3rqq3nGJUqRgMpxIA2n83Egrpa+8c=;
        b=FFqyd666VGfWfa6zu+B/3gpROlIcJ8jhiP73FQ3Nobto2iyD8mFo8xhzL+FMZhCF2v
         yJ04QXh1CkRO0nL3AZQpSg2rfbJPCEjFYXTy1qk0hWauO90gxLvxKTDRt934wH6D5lqj
         23Z3K/xTy22IjXyzkEY2ZBAOhdsdBTKI4pjuaSKjIhYVO6M6F/FSiBUm2bK1WWMiJe+N
         2NrtrakF4SfNbE7FlkMeZG7n2i1xV2U1mLNUa2qao9qzoLa7yG3Mx+eem6j8td+xzRLu
         iXeOkQYw6fcRYrxQKzcY99oClAWVtLkoqbDgFO2zNP/oPCSzHi6ZefAYTVwfsJQORiol
         YYMA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533SkD7psjXQBUBbxJmsbUvzDRlujGsvOleocoFLpu8MbgKpA6p+
	9Pqus9NVNmNu4L59Rg/nEsg=
X-Google-Smtp-Source: ABdhPJxIuV7uLfB9SMXEzmZJJHUYC6HSylIWdWGmElF0i7KeAP5zilz9Qm0mii7qBEpMb9Lq1s8eAQ==
X-Received: by 2002:a4a:ae0a:: with SMTP id z10mr14321301oom.34.1637976181964;
        Fri, 26 Nov 2021 17:23:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:209f:: with SMTP id s31ls675484oiw.8.gmail; Fri, 26
 Nov 2021 17:23:01 -0800 (PST)
X-Received: by 2002:aca:110e:: with SMTP id 14mr27347641oir.100.1637976181742;
        Fri, 26 Nov 2021 17:23:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976181; cv=none;
        d=google.com; s=arc-20160816;
        b=YtOYA/aFa94a6YgoIPdKV1t1mCaxzBbYIlxZpsd8Vg3bkYih02vR/3AKw2xd7OweFf
         b99BBG1BC+IuwFZr0QaJBEGsxU+0zFEdgj/dmK/82+hZANXlpnqIHW/CdCsSpkOV9HZg
         m2x6mbbws1JHln+87CDvBOXstwYWVTEb6OxfEFPZ3l5uDt8oaohwvPcK2y3eISjGm4BO
         +uUmbWYUvwuruRCUzwZWPg+lPCaaSsSosFp/ZGWoIo534fdhd9neGiySZk4aa7KOmBnB
         zOjeTzF0pywyS7zPIQfIRwYDhtBoCKGdrtAMwvEM2d3kLVLeNvQkG3aijggsdIgfqbh/
         VaAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=M3sqeQse3OBzh4UDcYwLpjiKs6TLrCNEA9mHCeGqCQM=;
        b=gxlI3tvDsKqt4PpScMhTmtHqmHpJvMRoNZG7kkwHkLh7vBI+5JG2V65i3KPm+XmyB+
         yslikmd0FIP6JixmdKTv/BVcLPwCDwCZBu9tZlHiMzIW+IZzYUh2myZv/lGbHsAeZPZs
         lGXwgCmSJXSRhNmfNw29ewPDWc5nYa6DlwW6o3OUa7VdET2DNgTRoM7OsXwEhWphdFqr
         qIFH7wro0F/PJ273UHzonv1jjf/pZf21xq3OCJ7uYOvJIGwbA/9B6Ijq8d5tSe1dJHco
         /ugWPfBXqwqKzB7FXQLmW7znd2bk3Ji3wTMhYLkNmB5fPv4Au2sGuq1qbGjnnF2ljPXv
         Gy/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=LmSeBqi4;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=Q0MII++n;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id s16si915491oiw.4.2021.11.26.17.23.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:01 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:23:00 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=LmSeBqi4;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=Q0MII++n;
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
