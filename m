Return-Path: <linux-ntb+bncBDAMN6NI5EERBIHUZH7AKGQEBHZZNPY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C332D66CD
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:25 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id e11sf2899365edn.11
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629344; cv=pass;
        d=google.com; s=arc-20160816;
        b=qYH03KWBLuNTwWIzrFjUKEZwvJ1MqPCRK/fsLx5bWD4tJqmf2tTIqYEx9u7ZV4iM8N
         /GjoXwynd7o9uODbZ0Gx+73sJCfkuk8V73FfEaG6v7OQrExk/z+VSMametwr6/8s4CLm
         QmRimsEGAAcRh2SlMQRD68CBGXmGZpxeD4lKVPTvLr9xIAfL5/cSALlzDggH+ph5dt+g
         mz8whqBuIw47id5rL4skWfkLfI4sMWBYEvSRgs6PDzHqwFWbiVyzshCxCJBrXW5XCCOC
         sFkxVDXEQMr1LhA6jIgK+Ymb3vmmNZLEzvSl1MMQ09dt89SoPZp4pI7GrwIxjtXe0WuN
         hdbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=bIql5IRwfP0fAYlfdQAk7DiC9nim4mGVcaZ3JsLL9Os=;
        b=mX/Wo8P8H+CRYV0ViNcCu2JYd5MLSp9p9yLDTUndbyPezph8yezWfkitWLGIeiRxtB
         xNVwuHay1ql8CXx2/9pWNRnLiuZgVWYfIfOqN80pVj0zMqFKz/9mkMtJrbPbnGN5jGCv
         /RQa96ZwsoMVHKkQaerZBjuw1/CARuPQVzY4cX7aO0WkIV5AsN8pGCFLgzY6UMRxs2jb
         q/16xJiCYrfqvm6yxjPfQ7EdejRyu0Sn6iKG5vYVIMQZOF/3+ZVAPo8FfyCr8ciI8cOa
         GPqO6gRf4y/7vx4O1NyDXU/ZB/R4LJ/7aMOlwcoEHvvt7/aAKwUsf2LPP0z1xl8uqUu4
         1eMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=BwWrBYP0;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=YlMcwWy3;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bIql5IRwfP0fAYlfdQAk7DiC9nim4mGVcaZ3JsLL9Os=;
        b=tiGQb2IueBjiXy50Hdse3zrOK/HWLJ3f6YgqauWD1R0d6TaeVW9ySRVAioxUDBPQXY
         Z8mOiBrPwzL4UZVb6Y1tcdQ/xXoh2HQ6V372XBoJ8nC+Ok/J4HZMsgBFL1rkI3pTaXsL
         S6CFx3Y37XLH6PAWrYzVNUoJIW7bFygn1dKfEL4SvbXVi1cAv1BsF2b8rNj0ZD9Koe/m
         W1J/joRw8VoAhJ8hd/Kxq7xllxTS60eck/chQX7cz6orkVcZ189hocOZyi9KVxxV8KZm
         wpSZ63AFxx7K/dUANmT1pU4e1/QtchxTA8oq6wW33ePlY5vckIx6O7LwxLZqt2oWE0Rb
         y4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bIql5IRwfP0fAYlfdQAk7DiC9nim4mGVcaZ3JsLL9Os=;
        b=YlhiUoGrRnQUL6NsWKnTd0wvx/DHPX3qJM0vPqgW2SMWMlZnwHtrMuHwxfIl4mAkL1
         zcAgRfYdTYOYyy4FV9lKjcMwijpsiA3lAkqZhD93J0vdNeUx/ttoAz0eTegu4Gy+sMlr
         Jg3L9+abmsc4ukCFIMaml5JhsUWC/URT3XOLoR0RI82KLRkqYmcG3zFxHct6w7rQuAsE
         BiHabJqo+lPzmzzE5tltvPQ9IWfhJrkjFvADKaV17EWxpl/81B1b4kGv9tj2R/FIhAxy
         pKiN/iSAjBTNa7w5pmsqlzw8dJp+xWFGxVJPT3Y8ymXS8Ak7Boqc288q2b/dEsr46EsT
         rsPw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533JlySC1+iQL/nR7q8qGqqqPFuSQGhinefSfuhtqchgosEqF2Kt
	Q6kssmDx1kt88XQb1WyvLI4=
X-Google-Smtp-Source: ABdhPJxTDKiK316xCHlvWHXq8bYFMfx/DWzs+5RvYbHjQ/a+SM8Q+dt2fB5WIq9qhXxIreXJjOYLjA==
X-Received: by 2002:a17:906:1758:: with SMTP id d24mr8138819eje.287.1607629344774;
        Thu, 10 Dec 2020 11:42:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a50:8a9b:: with SMTP id j27ls1361459edj.3.gmail; Thu, 10 Dec
 2020 11:42:24 -0800 (PST)
X-Received: by 2002:a05:6402:8d9:: with SMTP id d25mr8234675edz.278.1607629343919;
        Thu, 10 Dec 2020 11:42:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629343; cv=none;
        d=google.com; s=arc-20160816;
        b=B51m37eSWyuLmAhQxmAK8cwEUUC4IZPxJtObi0OCwfzeIy10aYQvC8mGcjrL1OU4S0
         vB0DTWLkrWqapQ4WEKv50Qp6Yw4l/X2wU8UMBGqwAdgecEvQHImv6sJfwI5qmRjfrk5f
         2DCtZeM3vjAWjcQZrrDi22foTW6VRfTEhubZaWZxc91bpdn+Xao9rP5CDtrrjIbWB9nG
         rPo6jq50s2i4bZ0ol/VwPj9gWF48ChdU/JI2LwzEYKP8tvft44I+AK2nA4o58G43hZGw
         0yhgxgkWyL8BBcY5/6TInU/znwfYsldfD0Iua0iG++qDq7cwJaGrGzhqSD0kPMps2Jqy
         Bxwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=KtzFp0nR+dJW1v891+1wc4D+KUTADWJVxpq6j1ykdfo=;
        b=Th8Hu3ugz1ZiC2uUc4tQdqdNM3+GbclkHBkeZRaUjwj4MAUcIl8NG9KFvBvxAnCxDC
         Y6c0Wj+vlTBH7i815Dl4H6qAZW9tyclzJ9kNB1rlsWw0oO4aaEXgRofqi2jdoiTBUkrB
         bzru8FWtd4rpyOiWaff7nyHxRczg2KvTYUQwIqkYa16fzxl5nTQBuFa2Qqx9SSTU4ECY
         /nc5+zgff7Tr7XImDsMLCtGosV3DuGYeM2ycFkp9LENA4bTyDvYoAjF1W2rfn2iTwcLT
         5Q0qvJDT29xKSZ/wmNb11+rCJ9DCgwybzgSuMyTNIHfm4chWbyO0JZk5DQv3yYOrb+/0
         I20w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=BwWrBYP0;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=YlMcwWy3;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id r16si184080edx.1.2020.12.10.11.42.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:23 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194043.268774449@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:43 +0100
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
Subject: [patch 07/30] genirq: Make kstat_irqs() static
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=BwWrBYP0;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=YlMcwWy3;
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

No more users outside the core code.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/kernel_stat.h |    1 -
 kernel/irq/irqdesc.c        |   19 ++++++-------------
 2 files changed, 6 insertions(+), 14 deletions(-)

--- a/include/linux/kernel_stat.h
+++ b/include/linux/kernel_stat.h
@@ -67,7 +67,6 @@ static inline unsigned int kstat_softirq
 /*
  * Number of interrupts per specific IRQ source, since bootup
  */
-extern unsigned int kstat_irqs(unsigned int irq);
 extern unsigned int kstat_irqs_usr(unsigned int irq);
 
 /*
--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -924,15 +924,7 @@ static bool irq_is_nmi(struct irq_desc *
 	return desc->istate & IRQS_NMI;
 }
 
-/**
- * kstat_irqs - Get the statistics for an interrupt
- * @irq:	The interrupt number
- *
- * Returns the sum of interrupt counts on all cpus since boot for
- * @irq. The caller must ensure that the interrupt is not removed
- * concurrently.
- */
-unsigned int kstat_irqs(unsigned int irq)
+static unsigned int kstat_irqs(unsigned int irq)
 {
 	struct irq_desc *desc = irq_to_desc(irq);
 	unsigned int sum = 0;
@@ -951,13 +943,14 @@ unsigned int kstat_irqs(unsigned int irq
 }
 
 /**
- * kstat_irqs_usr - Get the statistics for an interrupt
+ * kstat_irqs_usr - Get the statistics for an interrupt from thread context
  * @irq:	The interrupt number
  *
  * Returns the sum of interrupt counts on all cpus since boot for @irq.
- * Contrary to kstat_irqs() this can be called from any context.
- * It uses rcu since a concurrent removal of an interrupt descriptor is
- * observing an rcu grace period before delayed_free_desc()/irq_kobj_release().
+ *
+ * It uses rcu to protect the access since a concurrent removal of an
+ * interrupt descriptor is observing an rcu grace period before
+ * delayed_free_desc()/irq_kobj_release().
  */
 unsigned int kstat_irqs_usr(unsigned int irq)
 {

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194043.268774449%40linutronix.de.
