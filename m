Return-Path: <linux-ntb+bncBDAMN6NI5EERBG7UZH7AKGQEKQHH22I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 004532D66C5
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:19 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id p16sf2329832wrx.4
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629339; cv=pass;
        d=google.com; s=arc-20160816;
        b=OhkZVVg8/pWUayCPuhF57Exfrp9Bsr8VV/p28zWrfI2FjPwdJ7QKKc+2RC7zE23yRP
         l3/WM1zNrS5E2RMnPTHvGVnt3KRSDnOyrsucPhog926rTznU8NQRGhnK2svOJOLJpgX7
         XQcL/Ev5kxUN8nj0s0Of0X9ZNeKPxfNjnhJ9u3Vms4Bnud0R4Gl6uuitW6E0uuMrbiyy
         hjvphqWaOOHvTb1d4tCce7VAbQDh8Hkn0XMPTLWHrns4Lq1pGC9STRivmZLzTI3rSad7
         z5MgLgYZGVU9GsEAtrYlbgYxjg13nZTcTYlsQwurQrRHoP4IIv1cQLjDwagNybcsUwZO
         2uYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=u8ZZAzoz2DjIcX+e76YocM8tdweVX6Utbmmcy373vhg=;
        b=EQ0pU8rlqdBZx84WE+iK3/vNARHa0N57n7Rx6ND6XvpUlc9GkpK+/g5Lw1sbPmJpw0
         H19A1ZQbOC+8qTxEXq6a+PcU1fmxUYC7ndAcuAOhIOSxdLXVJ7NNrW8fN/oj/Zod3EWU
         n8FhxTCcr5ok3yyMy3UTw+afkcaBwtBguuAt8zHFsGhlckPHCeTG00K0Xe7b+JngPscl
         RWQ6sD3RFSUiierxS3Ebt8Yh62ZaJwf0aa7ca5x8fTS4TztdbMCPZ2ozYc2KAsPhPHy3
         erXzgJ4E2Tk/T+fKj0aitPr/fHhCuOgSjUAv5JjrG5RlW4XWCvFDRAo6NRYhahbSNxIE
         JM/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=b4xfy4bg;
       dkim=neutral (no key) header.i=@linutronix.de header.b=QKWQOIKE;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u8ZZAzoz2DjIcX+e76YocM8tdweVX6Utbmmcy373vhg=;
        b=gcZDwYrnvuOfReiraU+i9wo9kmyYa6Ii80XptkniSFSn0Qvl/32ZiNLPjl6+hWhCZL
         ssV8hpdbbg7ZOx01c9B97SeDApxG/Rr0D+yMZQFLOXeK30kze3HYJ1Y0WitMtj4ixamH
         Xr9Qj/hGrbdKiEqUFcwKSd7+KdP6MP9qI+ddq0iUnVMVDnUM131gXJE6QqdJB8tfravn
         lZkdTEmv+IdPAbCb/50W7wcyJIoY4hTwXtEG2v96rj9fw6wm7B14kIl80vsCFZwCgCk5
         sRVcPsjS/CByjLT9fl7qMDQeVFYCxb66pIgY94MtXV2TVit9s12lKfmTYHGYXUB9F0MF
         i5hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u8ZZAzoz2DjIcX+e76YocM8tdweVX6Utbmmcy373vhg=;
        b=kvQO1uZxpFrXVHk3Ob8mFmHEF2H4PZrE572/Cbcxa3yP+QZjBVCOid8CBrLWvydj90
         zk0m43ikzleRWFL+Pfxo2ln4MHKEZ3VvxUJRPRkjQamq5p6e+YZ3B/UK9BZ5Kos16V0T
         cbIM6I5GR3hwv+s9+ksAvj6Y0QULTJ51o9+ZodDTwkP6G6IHGaiIT0nMbmfXlCJbYdWt
         p7Y++opeinEFumX8YLg8PKmuw+z3wMdGikBUwmI8d56O4tvphxNHhZrLNcd5XE9WSA6x
         6JiZYU9cbE6UnTfLeT8yjqXVdRABjGV+u+glEVYUYk3SIod6VNOjqgtK2Fme9LR8hGxU
         KWmg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531kgTIYJlg8Ewjdelr2R3uUft9cFC5hlbA8FdqBGSp/g53e7fs9
	q+NoPsLxmcnGP8oIz/u6QlI=
X-Google-Smtp-Source: ABdhPJxpvvT9Ik+dcZA7QxU6o3w7ke43/AmmQ8v9tuJdG3681dIyNgWOlTz/DcLFXH4bph69mww/fA==
X-Received: by 2002:a7b:c930:: with SMTP id h16mr9969670wml.175.1607629339694;
        Thu, 10 Dec 2020 11:42:19 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:1fc7:: with SMTP id f190ls3543402wmf.1.gmail; Thu, 10
 Dec 2020 11:42:18 -0800 (PST)
X-Received: by 2002:a7b:ce0f:: with SMTP id m15mr9745104wmc.56.1607629338894;
        Thu, 10 Dec 2020 11:42:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629338; cv=none;
        d=google.com; s=arc-20160816;
        b=C1Qf7YZB331+qRd9aJvRS9gH1+YeyLGl3uHHJVg5+VCpVc5A6ax4m+XedhLpXvyy+J
         cEIB/dH/F9m0zSPZuuspa5n6X0ba2auSNh4U5AltBnCICTFca2NyAX2cplxWBWxnaswi
         mAB+9/Niql83l2isLgTkruziWjGkB2f1GXxVx7NXrgrNrBuB03l/Tb3eS9ZoCcZ6+qt9
         ZStFyLQRtPrfSkAXmcJ6YrtNA1pkESbeUyn6mHy2nss49sYXrcsaQBro3W3s37EZmlIS
         8cDjRBPdxZr7Ub4Y1a5ChNzXkyGoSRj1TJRC9EppAZslxmJkkS8f3DyKf7Jy+QWjApxu
         j0FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=yFPV7W+/QqCKeqQACSJL6sxoKPc89zwgLkkLw3CK5Qw=;
        b=v2Kf3ZxzJ0QFvPc4Y2kA05iXbl5AM4s2GVVkUd+C7RvwaA/xPKiEPGdKHXLepcLjVq
         IXwhs1mYi1a6fnaxXhZgnkp+3CEjF3O/ImX+bM/cEuiWTKbJqSuO7S365Q/aZTmar1cA
         p90uwocaVo3NY+GxZNzIqZJvctqU/tLfdWxAFi/sAVc5OF7aKcWoXhto+TLWHrM2PuhP
         egflqbYeYdQDjOK7ezRT5RZiUVSzPtnUphbTfgKX8A7blN4gnqcDPbNdUrORZWU2tXcu
         24IgWowLVIHz4jLX5qLb88xwr9STQ8s0QMNQmISmtXirIWovw1yPnrTj5z87Ctws+dIw
         +ONA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=b4xfy4bg;
       dkim=neutral (no key) header.i=@linutronix.de header.b=QKWQOIKE;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o135si203039wme.3.2020.12.10.11.42.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:18 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194042.860029489@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:39 +0100
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
Subject: [patch 03/30] genirq: Move irq_set_lockdep_class() to core
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=b4xfy4bg;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=QKWQOIKE;       spf=pass
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

irq_set_lockdep_class() is used from modules and requires irq_to_desc() to
be exported. Move it into the core code which lifts another requirement for
the export.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/irqdesc.h |   10 ++++------
 kernel/irq/irqdesc.c    |   14 ++++++++++++++
 2 files changed, 18 insertions(+), 6 deletions(-)

--- a/include/linux/irqdesc.h
+++ b/include/linux/irqdesc.h
@@ -240,16 +240,14 @@ static inline bool irq_is_percpu_devid(u
 	return irq_check_status_bit(irq, IRQ_PER_CPU_DEVID);
 }
 
+void __irq_set_lockdep_class(unsigned int irq, struct lock_class_key *lock_class,
+			     struct lock_class_key *request_class);
 static inline void
 irq_set_lockdep_class(unsigned int irq, struct lock_class_key *lock_class,
 		      struct lock_class_key *request_class)
 {
-	struct irq_desc *desc = irq_to_desc(irq);
-
-	if (desc) {
-		lockdep_set_class(&desc->lock, lock_class);
-		lockdep_set_class(&desc->request_mutex, request_class);
-	}
+	if (IS_ENABLED(CONFIG_LOCKDEP))
+		__irq_set_lockdep_class(irq, lock_class, request_class);
 }
 
 #endif
--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -968,3 +968,17 @@ unsigned int kstat_irqs_usr(unsigned int
 	rcu_read_unlock();
 	return sum;
 }
+
+#ifdef CONFIG_LOCKDEP
+void __irq_set_lockdep_class(unsigned int irq, struct lock_class_key *lock_class,
+			     struct lock_class_key *request_class)
+{
+	struct irq_desc *desc = irq_to_desc(irq);
+
+	if (desc) {
+		lockdep_set_class(&desc->lock, lock_class);
+		lockdep_set_class(&desc->request_mutex, request_class);
+	}
+}
+EXPORT_SYMBOL_GPL(irq_set_lockdep_class);
+#endif

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194042.860029489%40linutronix.de.
