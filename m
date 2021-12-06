Return-Path: <linux-ntb+bncBDAMN6NI5EERBBVIXKGQMGQEJ65KRRI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A36546AD65
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:51 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id t25-20020a2e8e79000000b0021b5c659213sf3902961ljk.10
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831110; cv=pass;
        d=google.com; s=arc-20160816;
        b=u/2B+kbPSuvZ/TSWXA8bjKQuI8eyJuSWHaacyYbaXWqtdNkm3hGuU79H7fAJw49END
         I6kxdvOJWQmDSDDA80c41ssDKiTbDjqx92tmA1xQoVpPjhZFZv+dqzXB0XWoWbwwZVxp
         T4g0BzMYs5fxel4ccBg2uqf4mwkWbiysMicFHTWl6gr62/6lFdmIwiNjrcaDWNjPfceD
         tXT5OWtSUbmuf+hEXuYJcyNHQgnzWZ96JIThRpNa9XkhuujmFzpdAePRgsYbzF5H1NJj
         7kkc7/mRdrGeGLEwJQ0S304IyiqCwkn4iyu5j+vkHlQUbySPwUEibhQfgK3S4aEOSZA2
         nRuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=t8D62+Z/RwUI9Okc158C+DF7U1gFefkmFTrVwRh4cck=;
        b=ZCnB1/MvNePXSeFZfmAQYBcfUlVP3PHop5iFQ5GZRwuGFhfYjJaTTOQVIYhxgfbYrW
         KKXcyneICzHVFTXwvwbhIJmviT2+IciuFia/BP3abARXcyIOB4GMu2/lCk+o6UCugQ/Z
         T05bPD5xPNw7g2mkjiaASF1mDYwBO0um7iKLO0I0PFAuOoPx1QotNYthY6u0CsYZkLoi
         9MrKeq/3T5onndo0/5VmOCBE4J62eT2lM0HLxCNgMJMFofB9G7+XEGTR4xt41eNIf+iX
         HdxT2sZPjY5Cq8wYHsSVrXnyq+kr73MYoJMmY5rSh3rzlNdegiJcwGMhTDDuyZkdk2uP
         oQuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=bnZaUEhf;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=bduvthv5;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8D62+Z/RwUI9Okc158C+DF7U1gFefkmFTrVwRh4cck=;
        b=Q8Em0mWlXiHIP1nmw5QAI+uRfgR5DKmg7y4ujtHW8UBLd4aEesKReMZC7n7T0MJ0La
         LIM05w3rNKfFn5Cyyn6uLY5sU9sLOSMFApyiy6Zpf51mf6PgdVlS9uJkzZXRlM5zMb4h
         ze7AI+rBiPfmDBlETEbyQ6zBiWVk6uNq8/gnVImz/qoQn0RLKojSnsDwlCVZtRVIElm8
         ifqwiQFoNRufqFps01g1zS7Cv1iV6qcX6q9GMC4uNR/IIUTfiWLBuFz0hF5GoIijnxT7
         dMZ1KAHTPyOo2pE58FyyKveAV8w0fg/p97m73DUwJSqeyRtlAr+3cmWybqYGhuDtwp/o
         rb5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8D62+Z/RwUI9Okc158C+DF7U1gFefkmFTrVwRh4cck=;
        b=VdIyE8YV7xEwI5hW/nBMXXlH8ELTpgB/ugYXZkWyinIYqhLB8bT7MfSWiVS+BWSTeb
         G6tMa2CttkgF0eCMFfJ4jyyVSegi/3E3NSbHAIPZCLzgpLP2F9OUMfiWkeGfslo1OAUH
         ueQNdLQFdjo1Rg/rS0456k29lYb8XwXNjpBgcgUe1tZqkj+H6m+hN6JP3fhVhxs+8OoE
         54FH4mzeAJjY6osDx0hBHzvuXbuYM1jNcmvhOuhjXTPPPgFpYfvHurSo1fR2y1HELYaz
         N+yIuJcToQHcseTBPRs5fz+teEOZ/TpA/QBmLPBINvWHCvttCtSP+tGyNsYxuMaiT8yc
         YstA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533CnczfwuzGDKj9JKAHxUu3fimzOREqOcZ4W1LQHePN0kggw5g6
	P6fIShB4KXGww2mN2DlolhM=
X-Google-Smtp-Source: ABdhPJwT7IXdrZM0QY18YajURkUTHLOcc2ZMxz0N3xnm4ew+usMS8n71ukWKYYrABiT2WTGjlHvEsw==
X-Received: by 2002:a05:6512:230e:: with SMTP id o14mr38898339lfu.490.1638831110803;
        Mon, 06 Dec 2021 14:51:50 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:1320:: with SMTP id x32ls2008507lfu.2.gmail; Mon,
 06 Dec 2021 14:51:50 -0800 (PST)
X-Received: by 2002:a05:6512:1395:: with SMTP id p21mr38069647lfa.98.1638831110039;
        Mon, 06 Dec 2021 14:51:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831110; cv=none;
        d=google.com; s=arc-20160816;
        b=BBoXFOy9alatfssDgpC0IPLpT70LKYrmuHssAqT8JAD3Ci/4QJDbfgmvA44qGAJ7qG
         Fs/qP4TX2/32fHWAB1cIXIn2ixG40y1epiYauRqpylTcGq6Y0I9q+SzRzLdB84nXXmJw
         IZ71DL7AW7RvQYLmvEIW5kYjrQcaJ33giG7/otj5nT9MqNpXfuyb5cVgfHYQWEy2T/zE
         Vo/MrRXRz88FM9o6CdImhL1166KGhTGE0z9OQpALUAxPWe6sbsohlPz7QMiq4aqpKwG7
         6F6QDEgwOZIgZ8Vk044gP9AMwJyMJo4CMuwofFjKtitrWz0qpqNPZmDT1X8qyEb8/VKI
         F/xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=2+Fbb5gke6gcz4AzBnqqKfV1dHcK3QpqxgzZSH+MZMI=;
        b=favfSr66Y8idJxp0ZY9wFuxLmBRuh6aN1aXEb54xmziHOVhLxVowIoH5JYhQvunl20
         K2tGzXqaRdzakLpredhUnkgoDFBmY0D6kXiHnGYseCIJr/b5XLN4zpVRmrknEzKCqv5y
         vq5fIDLGzea5YMzMMKW+KvCw2OHy2qPLQCRTbHvru+PuJ+Qlkr6QtdeUHX6EyU3yk8Vr
         YLW8dMzBoewcp4/F5uLxfuqe6uME4jBgpdswm9H+wsIhq0XFyAnhf1lytJhdnG5VvHXT
         NzdcefURQh6GkrMeXWX2e8nSmCF03i7KSzg08x2VEsdTUd63v+prStnBgkGFfMAexLnh
         4i1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=bnZaUEhf;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=bduvthv5;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id i12si949761lfr.7.2021.12.06.14.51.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:50 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210749.170847844@linutronix.de>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch V2 29/31] genirq/msi: Add abuse prevention comment to msi header
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:49 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=bnZaUEhf;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=bduvthv5;
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
 #include <linux/cpumask.h>
 #include <linux/mutex.h>
 #include <linux/list.h>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210749.170847844%40linutronix.de.
