Return-Path: <linux-ntb+bncBDAMN6NI5EERBWEQQ2GQMGQEXOAGRPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B7545F8D1
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:34 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id k12-20020a0566022a4c00b005ebe737d989sf13298899iov.19
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976153; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qibq9CXohjSZ5EOYkh39lyuSS3++iK5PBhgOqYvFyLaO282Y/vQGm5wgvh+ySjw4lL
         VDbusQJZvTN5t/BHkoohZx1HrQ5bFIya1NFfAE1g7A9AmYzahoOfzoobvA9iaTbO4wKX
         MeBEEawQRIGIlw41rhg0xRoWerZcEWMYi6hnRolpJ6rBCb1kqGoM562MJoStoRK1llon
         sqXxgpBJP77jTt5c0BGmGiot3WuT5JhnfaE4vf48FX1aqPT6tmZx7VuQXtMIwah348Bg
         yR3CzNf7qS3rq2lAcprkKtMqjpoU3TU+DyEZyZZ1Qy/tv3wW1wPvDIazwHgrDjveTS0+
         j7ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=uRwZCtbVxv1JhlxK+oKLSnr43ZXa985/Pz8MilUNPCc=;
        b=iBkB91WQq/nEfQMdaabCMUPogtHkSeWFjsuRppSzVaKwe70H0Azw6xc4pIriCunx7Q
         lyrID66l4CnzhdrJ3yi0kEqNtPI+ddSHPbELTKY/lA/iwqlbMhrjSsHzjkVA1K4XeRGH
         kuIt5vUvEI0lpVLUQaP5Cc/vxyIwJPkh0QP7wprKi5o10/Q+r+/zjnjkzydNaVwz7DGR
         /Ur0o6iQ97pbB/Ad3nf6ZIvSnoK0x5m3urH4tWg/pmsgaj6W2p4lcfzyofbFJTzw9e9P
         U36vbgfcUdGMpb7ZzFRuvZmmWJnzVH8qn9hSm/xqFtexPu34DPGg+YzEf6TCMbLzapMl
         Sixg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ORqp+FjQ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=oAwMdRVK;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uRwZCtbVxv1JhlxK+oKLSnr43ZXa985/Pz8MilUNPCc=;
        b=KMlpCu6HXe2ndY8qJWNvmhAWOA0VbSHn8fQD1/0z3iSK4sGxlX2AKdebR1DELwsNwH
         5wcLrWIgGPuWGpcs+hp+bbel1lPitnxFiPZF0GpCea5M25NaH937kVSnCiVr0aAfQa9/
         88LnhpBE1QPuVZBTpajjXzQhd3NXqiU0BXAYskc0UkfQHcKvMOY/LImOQ6dN5zuHOyO+
         o/ouDs2a+oRnZadHNtZddX1y/eaE2V6Q44o5ZeHnypeIiDHNa319gT+JpiwfeLaECV0R
         cWyX6iPOI+KPOtF6+LCeQ95BVOrmzlE+NHdSHiPVTsYeGl2U4ivhL09/8RxXMbMN1Xms
         +lqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uRwZCtbVxv1JhlxK+oKLSnr43ZXa985/Pz8MilUNPCc=;
        b=IaE0B3WYrGtnKBwHTokgx0p5Df7LQNoELqIG6mVKIMFFB6cKePeBRwseSC++D+nHlJ
         NwNFQ7fYFfkA9/givCTPMMRMYloNTEgIekMzt+l5pNnZJss7gxNSeOFze+d7ErdcehSj
         y1XYLAfsurJ8X2UJTT3Cid5RXoHgFBXanxudPtWt6hCz+QCR1BzPwCQHQtcagb8vmphf
         ucv9nPlqnrgdDuhbKfb66a5mpvZkmZOlVdCD6w/+mretaGE9gv3jT77AfDA+/fC4VxIV
         yE47QYAmul0lD9KcXEvXg1ZeJKK51IgTcePKofUeKNLAhBedsRmioF+3NEtmMPFGMINm
         IOGA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532h8DOR14XCEocIZNTthTJPvWR22x+m4HemYLXhtCumlB2mCM0d
	mhIMHiCGY3K/oxtyik56yk0=
X-Google-Smtp-Source: ABdhPJzApzOoCqgd184hMr5Vs02eUDZ94pcDEp/3ldTqPiisdZswVNHnnsPKi1u42biVT83fBFu7DQ==
X-Received: by 2002:a92:d8cf:: with SMTP id l15mr40346446ilo.59.1637976152799;
        Fri, 26 Nov 2021 17:22:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:c554:: with SMTP id g20ls658685jaj.4.gmail; Fri, 26 Nov
 2021 17:22:32 -0800 (PST)
X-Received: by 2002:a02:cc29:: with SMTP id o9mr45844270jap.116.1637976152468;
        Fri, 26 Nov 2021 17:22:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976152; cv=none;
        d=google.com; s=arc-20160816;
        b=zMN1YctBl7IzrEWncTVzF0DvvcldYomHGwlNCSUPoNeF/yoaHIWolEJW3JDhoC/POo
         qrQbxyUnuc5Jjc9p2nbweV+Mon8lXn1l7mIxfiRXsxue3/X8pCyVgHOBM5M0y1SevnWZ
         GnZyI+TOOZWVXRFFHLn9XdpQjeqFD87Ui4f3vmMoiMq+QzULQG7u1wEbMuvLOLqbTATM
         0e/ys+DpqfwQDNxz0zgFnF58omRrPl/Ru227+CSnXaY7yobOf6Cix3y0F9+zrCsw1ZKu
         DqlNNNHvHf3R4kLMTFda7EzqilFofaWyUKjs4txW5A1EA+/W03AqjXHBHaZvWlbVaXD/
         Pqfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=dWlRgqR+0drt9PwtC3seDhr2BnCncrRnkVfFxsvT5DI=;
        b=BUkyQHupAGplBbDI+EbIk9fJPm98pP02kv35Chk3UeLdHr84oylmpwGUM3MzrOXsz8
         W2HGuJyzc/anUtDTkZAs02L5pyOMqhkSTN1FoB3C7FG5BHoNVltc+fWyow72pep7fbDT
         u9wb+5TI58As3Czy6a6fF6IX/h3Yqyy5RvGNMx/KrjAR8q7fXKND2aGy36j+iTddkVC2
         4bDaAUehMj7/516Z/PVXfKZCRaNUetmfbWNgrnNkEs8dVx8WkenD9cJrXt7jsyzv5JQT
         HRNwWQ4YoZgQ92ek7rYgPA8lcckM6iakMLGhsngSnyKTxzBVhQFWPNcXo4xmupKIflbX
         QDtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ORqp+FjQ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=oAwMdRVK;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id x11si1106364ilu.5.2021.11.26.17.22.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:32 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232734.411769132@linutronix.de>
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
Subject: [patch 02/32] genirq/msi: Add mutex for MSI list protection
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:30 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=ORqp+FjQ;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=oAwMdRVK;
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

For upcoming runtime extensions of MSI-X interrupts it's required to
protect the MSI descriptor list. Add a mutex to struct msi_device_data and
provide lock/unlock functions.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |    6 ++++++
 kernel/irq/msi.c    |   25 +++++++++++++++++++++++++
 2 files changed, 31 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -3,6 +3,7 @@
 #define LINUX_MSI_H
 
 #include <linux/spinlock.h>
+#include <linux/mutex.h>
 #include <linux/list.h>
 #include <linux/bits.h>
 #include <asm/msi.h>
@@ -146,6 +147,7 @@ struct msi_desc {
  * @attrs:		Pointer to the sysfs attribute group
  * @platform_data:	Platform-MSI specific data
  * @list:		List of MSI descriptors associated to the device
+ * @mutex:		Mutex protecting the MSI list
  */
 struct msi_device_data {
 	raw_spinlock_t			lock;
@@ -153,6 +155,7 @@ struct msi_device_data {
 	const struct attribute_group    **attrs;
 	struct platform_msi_priv_data	*platform_data;
 	struct list_head		list;
+	struct mutex			mutex;
 };
 
 int msi_setup_device_data(struct device *dev);
@@ -187,6 +190,9 @@ static inline unsigned int msi_get_virq(
 	return ret < 0 ? 0 : ret;
 }
 
+void msi_lock_descs(struct device *dev);
+void msi_unlock_descs(struct device *dev);
+
 /* Helpers to hide struct msi_desc implementation details */
 #define msi_desc_to_dev(desc)		((desc)->dev)
 #define dev_to_msi_list(dev)		(&(dev)->msi.data->list)
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -116,12 +116,37 @@ int msi_setup_device_data(struct device
 
 	raw_spin_lock_init(&md->lock);
 	INIT_LIST_HEAD(&md->list);
+	mutex_init(&md->mutex);
 	dev->msi.data = md;
 	devres_add(dev, md);
 	return 0;
 }
 
 /**
+ * msi_lock_descs - Lock the MSI descriptor storage of a device
+ * @dev:	Device to operate on
+ */
+void msi_lock_descs(struct device *dev)
+{
+	if (WARN_ON_ONCE(!dev->msi.data))
+		return;
+	mutex_lock(&dev->msi.data->mutex);
+}
+EXPORT_SYMBOL_GPL(msi_lock_descs);
+
+/**
+ * msi_unlock_descs - Unlock the MSI descriptor storage of a device
+ * @dev:	Device to operate on
+ */
+void msi_unlock_descs(struct device *dev)
+{
+	if (WARN_ON_ONCE(!dev->msi.data))
+		return;
+	mutex_unlock(&dev->msi.data->mutex);
+}
+EXPORT_SYMBOL_GPL(msi_unlock_descs);
+
+/**
  * __msi_get_virq - Return Linux interrupt number of a MSI interrupt
  * @dev:	Device to operate on
  * @index:	MSI interrupt index to look for (0-based)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.411769132%40linutronix.de.
