Return-Path: <linux-ntb+bncBDAMN6NI5EERBHHUZH7AKGQEWAC7QYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 513D02D66C7
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:21 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id u123sf1380189wmu.5
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629341; cv=pass;
        d=google.com; s=arc-20160816;
        b=pKAqdSELNMVAZ0+VFXs2kAwSqT0BhcXcZ5/MkQoX4NrST9/rSzU1W1h/i76TnzJVL2
         h8cdPczxO7VbKMr6syVcMkv02h20oEDqfyUicd4PHzuL5keCBfXWHuRotL0dymtFMA8b
         tIJpsQ+4UK5m4S/haa9Px1bBmsxeVFaCDSGrp4KR5/MNIA2eTnIZp2m+GZ4nZLDwDFH3
         aYoi1PWi/DuX4mnIHoly0XXrZgyMd6KPfuDo2RK7KvdTDUKLZbN5MAUhbOblZpng3J8D
         oQi0wU/aOXmVK0t7L7eiJ66a4cyMTYochnfIN82A4EZh7XQaTNRWYgIcMAiOc5yJmWJ1
         BZhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=b3Uqx28rI7QJIBz4QNro2b5SXed+tY1hkU0rUD4WSog=;
        b=IQm0P3WFwmEs0xTIdQynqZNfiRs09wGK1UsJMTMPYV1Q+ZHHgaaHBJC0jQDDgeJNwd
         z7jy6Fvu8jy1avLO3h9a0N9LBw5UqrDrDFnTnubfUQ0fiOmJjQGOpHu2HgY6vfqsPwOM
         l80ZIKG6HcMvm/7YMcL/+Jc0DxFWhQea5L16AsYMEGwqywvvQhTZmLrhD5J2jTJIawZV
         GAVO73YwuNcqbU20bg3ET7D4SgHXo6C4djFsFYlC0gFvHV9zZX/ap4YiWYf3TSJ9WFO1
         UBq88oe6ey5N3/tIkGvWzL7yj5niwXLGbDZ8dPerWC1p5Suwr8lS7N+By3LPE831PgV8
         aMlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gQRR2ovC;
       dkim=neutral (no key) header.i=@linutronix.de header.b=rxr0RqK5;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b3Uqx28rI7QJIBz4QNro2b5SXed+tY1hkU0rUD4WSog=;
        b=Yqe73dLh+cSXx4I2IBRornaHCzQCXcmVIXRmKeJF3CNDutnpN3aqpcnihOFQHYsWzF
         s1PQ8K2YAOCXsHJPh1YN/9STl7AHOKr3oohQJe4Vsx3Jn4Hbc0JmRQm8XDBczEUV4Z00
         BV49Ld3lB0t0jYzgJMpdB1TsSh/3ohTkcRnKfgpYucozwNo+CJQuXtvXRGfOMnO631Ox
         MTBrmF7Vg5Sb/+joXovy3ceR1hadB2NTReJskYmKOlmdfUustNreaC0rvkUDr15alzSy
         JkF/3v0bQ4W2WDget0iOvOOEnZdsMFQ5wCcZW/QE7I77JyOw5T6vPxTyWtRqmW2gblEU
         b4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b3Uqx28rI7QJIBz4QNro2b5SXed+tY1hkU0rUD4WSog=;
        b=gDdTl2z1doLiwyDycW2Mt/bJV5nOysXQe+zlnGBs++X5NpEYNMFovi7KhQFKHI4Xkt
         QkwN3S8nVwbgYCyFWYTJgQx+7PwZymJ0bnvNhyHoe+zCoa+Yr66wpPTsA15E0C/URg7O
         pbqKb383GgfOFB76mIU8EOnVr37lzE796wtMv5xdfROxRN+TZGGhVT9qCjPICXs6iRpY
         gmeIlIzkUCOb8pTnzVvRyphjvW3i4E8hi2LkaItIRhc9OyMtqrD0Di8GtlJVaBn4bkuZ
         XTzJ9nZCg0AXqk84tA/PuBaivZZW6d5eJUervAvnnDc/B+Kz19oJf/n9CQM81AU579Ml
         VX/Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532FBW11Tq5HqOdryqPCWdTQS80IDB4//dphvVWWEqm4/EFDFCpe
	RdJZSnuNkqG9uqTHd+ixZb8=
X-Google-Smtp-Source: ABdhPJzA1XK1ukhtqD4hyBiFH1BoQlOZQAQ7IbBJ8WC39X6fUnQsc1/+U9PEen5+YgxKsQV77g4KCw==
X-Received: by 2002:adf:ec86:: with SMTP id z6mr10130195wrn.17.1607629341025;
        Thu, 10 Dec 2020 11:42:21 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls392321wru.1.gmail; Thu, 10 Dec
 2020 11:42:20 -0800 (PST)
X-Received: by 2002:adf:f18a:: with SMTP id h10mr10632416wro.244.1607629340192;
        Thu, 10 Dec 2020 11:42:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629340; cv=none;
        d=google.com; s=arc-20160816;
        b=f2oHJiaF6qE/NGAsZUuvG/VV0K7GwgrMYU0anNO54w3v7pJDb/IbE8jN388xNYt/7w
         1rVrkE0y8wfO/FDGVsOVgixZgkQ7RpAELC2qdU+cCGaXGPWHiqFy30LchQtTu2YHCBzm
         QSQrDv3lleyZ+DFMSDb9A54lkAW2k9OS9W8YJMoK3qA0BGehnaRfA7rm6Ch5KNEPqf+Y
         YFDM7CSLxcLFBMrGmFdZ8motD4Ckz/51CoRlC2tnC5GhRCTcuKlTCRhZOjDjMQjDsX2j
         LnIiptwVyGfWtwgnWHAyTbEk1WJ0FmEDVXn9vNcLayWWXp16NqtPuvDCWSSzMWSnkTQE
         0U8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=gYsowh6i1mqGXNg6FrEIlf+Px9WkTuZjYPGZA4AoQf4=;
        b=oN6F9uqzAqD7C852MaKNSBqMA7gBZI6G8bnf1z0VLm25aylWyKSCpDB+e6zKK2ginW
         sZPSsRqmg3snVTXJFJyRUSyQICQoVagKoHPL0841YflBqS8NmV6hBs2H6aYasv5rPka/
         l/qznojTAK8H5I4Euwfo2am3Usr0ttJG/LCexs4kLOA5jmGSgjPpNc7D/CKuH2vPV1oJ
         I92SzEShaDFvQmeVQFnr/L1Td7ptlfZHfDNwX+0GhrW5zb1JRCYrfVfOdBZw2w/oOrx+
         +b3+5Eic89afgzxC0f2L1xKXZEJ/iDPdfb9Uqk8tmNqzqw9yI7vcQIygUW0v1JPSk1/N
         6OsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gQRR2ovC;
       dkim=neutral (no key) header.i=@linutronix.de header.b=rxr0RqK5;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id y187si140409wmd.1.2020.12.10.11.42.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:20 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194042.967177918@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:40 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-gpio@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-pci@vger.kernel.org,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
Subject: [patch 04/30] genirq: Provide irq_get_effective_affinity()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=gQRR2ovC;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=rxr0RqK5;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Provide an accessor to the effective interrupt affinity mask. Going to be
used to replace open coded fiddling with the irq descriptor.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/irq.h |    7 +++++++
 1 file changed, 7 insertions(+)

--- a/include/linux/irq.h
+++ b/include/linux/irq.h
@@ -907,6 +907,13 @@ struct cpumask *irq_data_get_effective_a
 }
 #endif
 
+static inline struct cpumask *irq_get_effective_affinity_mask(unsigned int irq)
+{
+	struct irq_data *d = irq_get_irq_data(irq);
+
+	return d ? irq_data_get_effective_affinity_mask(d) : NULL;
+}
+
 unsigned int arch_dynirq_lower_bound(unsigned int from);
 
 int __irq_alloc_descs(int irq, unsigned int from, unsigned int cnt, int node,

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194042.967177918%40linutronix.de.
