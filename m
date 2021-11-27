Return-Path: <linux-ntb+bncBDAMN6NI5EERBBERQ2GQMGQESJ5BUAY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 1652645F906
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:17 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id m9-20020a05620a24c900b00467f2fdd657sf11924552qkn.5
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976196; cv=pass;
        d=google.com; s=arc-20160816;
        b=GkwG9yxX01BrnR8ohlDc8VPE6SnGaEKfa4v4Iou9J4QaYbk1yVYBa/53t6Vu6xH1ru
         MK4/idz5ham2bODUORVzrNI/LheQtdag+ohTFkTSima0MXaTDTxGNTIkObQnr180qv++
         rpn7wYWUqOEeoX4hrmdXayhdC0CWWKuSk1Y15O3oyx3cG9omH9ab4WcTji9ZwvWl294I
         D77hZTu4YgALzpS1pTo2mgyBPGyJ/SpmTM5Wl1ugSuE5qjYzx4GU6tK93X8wadeMDQ2T
         9X5Z2uIWhb59htpFdbnZk/WZWwTsoRyhVropu+Ezwaz10TfXrZO+BNan6aDRJRG9Rc98
         0xSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=AOrCqdbSiRmIdwDsET72X7pxGQHH2eu0Nt1Z3LarLVo=;
        b=BLsglU9o0csXqjaIE+zutKzZA7g2DFo5qAV6l9z9aXzjpuRMs3Igd02+MQ8d8nHFZe
         VIpHQnZ2YxQ64yzaFsCd3+amo//SmQWjGb8KQ7W+Bofmk9jtoXb/co/BSMwgBvhNRpTP
         w72jDSK8q+8XZDOewuuwjnSXYD/MIf0C2ZQzKPtuzppxkNrDAWwTHQWZu0gP504KQhqQ
         6UoJVoTHt2OQLSjYVSi5A6N/LewEj7wsR1Iv4/2hmYVvIHfJrWw/5Frc6RKCQrIGNWti
         CL6fovFd0cspcnh1QCgW++IRG0oMcBjoZHmRMWGq23TJTkba7vc4pp58RoGr1STT3DV+
         xFRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=RTtQyBG7;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=W87SWjgV;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AOrCqdbSiRmIdwDsET72X7pxGQHH2eu0Nt1Z3LarLVo=;
        b=QmVf9nF7nsNy1/QwjB9UkEEGq95iGv0MCOd2EYSFCE5gcK/NA1MxWs1P5HzCyoY7jC
         wsrdZFCfwj1LYhvIOb77EiJNuq9bWqKT62xjDCSkNjANKMCNmP34roJG4BiS9gipC41K
         OrJI1N6Xv8U2wqXyArwZJHFJIply1BSEdZTxRJBuIerk9PNcG/ER2L0gkXxj1tLlhemP
         2XIlCkqS+UrMF3AvwJrEMrBOuy0xq+x29F0KRIckq+ndVNaW4OFoRrmF/ghHaYjsNAyx
         416UH4vE5VtyRCzFxugydnezVqyvNh0PCiumCMv4gWI9PlVQq1OZu0lW+uBoFgQuiCHM
         I/8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AOrCqdbSiRmIdwDsET72X7pxGQHH2eu0Nt1Z3LarLVo=;
        b=xgjC9Wu5Ygkng6Vb+W5nFTA2p0Vx+Ys8ERDT2mineg0WHBUlTxUG7voMta8+k0Fh0c
         2JJjyo1AGybh53YqNIQTmHX8JIMAQbo7u0IICs97YokB1VYojSZldb4y67jJHnKNbzJt
         7Tg0shBtuIofkPTCvdzdlEyLqIwzJzGzxIk8pAZ4ZqisbVN5C0p7CILbnRyTV3DFfOlS
         LuYNu8JaTMF0ZQjY1K0ErNYPkG9yfwwmB8XV5C8dKNaCAl3vY6FPDfApIjXrE90Ux7eh
         NA/ilc7tyWzjyQfdJCYo05zpaDNzBFEyT9wpM+jwHDM4y/8+aJKcQ7Lhnx7GMH6eeddi
         A9OA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533zooUKcwXGb28UoJjTZnmcp6CDg1hng46QJZzoKyI5gkbRbU7U
	Qf/Ew1rKiU40emeFCN1w24o=
X-Google-Smtp-Source: ABdhPJy+yFE4aibA0ya4LXKMbJGdyg6Ea0v3R572Brb6x2DVUFM4raLPrI6QJNZvrxj6qHkfLotfHw==
X-Received: by 2002:a05:620a:1713:: with SMTP id az19mr25533395qkb.297.1637976196092;
        Fri, 26 Nov 2021 17:23:16 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:294b:: with SMTP id n11ls4551528qkp.3.gmail; Fri,
 26 Nov 2021 17:23:15 -0800 (PST)
X-Received: by 2002:a05:620a:1a95:: with SMTP id bl21mr17199938qkb.529.1637976195755;
        Fri, 26 Nov 2021 17:23:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976195; cv=none;
        d=google.com; s=arc-20160816;
        b=ueaVnFVijBha/Ygp25YocFF+E7EKpDyNA7cCBmlMGt05fK4xrZg9DAd+jAod+eu1aW
         /Cd9kA7uFPe6DrFFrSgZNhB1ghmhcaRyaqVvoKyxloZ/Mc2+/j4EpHdMYBRaZzLsNnkh
         GJ8sUSd62Zo9K2+crHII7vZKUWJF8hfeRlSyCEWSuTmX6F2ow8Ju4uZuCRKdVY9XCvFF
         L1v7RW8KLl6dzBE0hsV0bKU9y2YhVcOfAIklp6W22/EBRIlXjnOrEyouAe4BmeOPs8/E
         DgNFQjpiUX6eh7oyeN6Ni/coE3f29CHON3Ba4GbAHxw5HNM8N+V5iQytX51SpHjIQ+79
         GaxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=GK9xXtkPz9vBMqHoE5to0KtmwhYh1wJX9NGwNpFpD14=;
        b=ZlLnAE748T6LMjHZ2wARhemvbEoB1Igj661aVcxBI/CDkclaXtrcyl+9eeE94tl01H
         t7GXLv2Yiz5iUfZXu5sITL8h4c/l+sahFt68J9zoK09DGJOjsh+YjukaZ4yc9BF3xX4E
         hF3eIj42AxIK33to9rmABdSHkrrQxNR/qbSzvAssSkrS/JNY2nqs+jkXQm4ZL1/qzrJF
         UtH5C0Ag8s9OTziFp9PDLAYXmgjtNr+tPJpWqJWq5Ly6As/QJ46VKk8iKE69sxB6rT8Z
         3942DeuOHchkuYRWjYdRBR9QPAdF+Tux33rYU0UkqgfqbNafSE/b1FNY6TESWF0ZD8wk
         /yJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=RTtQyBG7;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=W87SWjgV;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id k10si1413301qko.0.2021.11.26.17.23.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:15 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232736.079074688@linutronix.de>
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
Subject: [patch 30/32] genirq/msi: Add abuse prevention comment to msi header
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:14 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=RTtQyBG7;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=W87SWjgV;
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

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |   14 ++++++++++++++
 1 file changed, 14 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -2,6 +2,20 @@
 #ifndef LINUX_MSI_H
 #define LINUX_MSI_H
 
+/*
+ * This header file contains MSI data structures and functions which are
+ * only relevant for:
+ *	- Interrupt core code
+ *	- PCI/MSI core code
+ *	- MSI interrupt domain implementations
+ *	- IOMMU, low level VFIO, NTB and other justified exceptions
+ *	  dealing with low level MSI details.
+ *
+ * Regular device drivers have no business with any of these functions and
+ * especially storing MSI descriptor pointers in random code is considered
+ * abuse. The only function which is relevant for drivers is msi_get_virq().
+ */
+
 #include <linux/spinlock.h>
 #include <linux/mutex.h>
 #include <linux/list.h>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232736.079074688%40linutronix.de.
