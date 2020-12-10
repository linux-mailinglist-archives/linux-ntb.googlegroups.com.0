Return-Path: <linux-ntb+bncBDAMN6NI5EERBG7UZH7AKGQEKQHH22I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id A787C2D66C4
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:19 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id i3sf3686010lji.15
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629339; cv=pass;
        d=google.com; s=arc-20160816;
        b=OK3Uu9nfmXsI4m59gPJKqWKDnm5W1KZUIl017/HZA2jqwRgEqLeZKv6dyrf/+qTPom
         8Rve8x0r2gmXdsQs85RV22gUqjMRaEsBZniCoDFUa0CtzyRtM6c75bX01YrD9YSDPRQo
         LGYRq3j4o8Qy+UZO149w7bbCiHKqw52rxsG+wgU7tQWNk3IcNaiIjC+q4CL3ZdmbB29T
         /egNpniB1n3sXcK74+ADTt31NMoU/ykELNWuYsJErQqPtWCX0df9hbEloD6nxm9tXh0E
         KOH9DfJ8wy2hPAf/ZyMV/eFgO/GkMGK/IKh7Wj88qQKjoAZA+x3CHffdUWglXDsRFjnc
         cXbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=gX67xwkrE03d3I6xlraejYSZtL3Xjxs+ETrcxPXjC10=;
        b=bUktAaRf1fpm2gsB9UVbodi2/FqqwumL+tjEIsU8mgJFO+Otln+xSn69XnyXMA8W/N
         Lf2bwHUzmUyLmwG2zRZTfKxlNI2WogZpNi2pS+UJE2S77hqvV8w9Hev5hQzOkDUhdpa/
         nJ2T6tYmi0isRPr6WM2TnMHo8j9VVe4iUgu1/VdSPFObqnctgRA41WB/hbPpj8ZNPgnJ
         Ji4yF9nhYJ5jFaCJULUD5cRFBq14edifD81KOHvzS/6Mv0fZrYG2vtU1opYv9G5QE8Di
         08bFGytaC31ukodloeqLfIg20SNC8GQNxlXz+sYvYqAlwHtLn7tnBelemuJMBKQNgEnW
         sIIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=SuZCyt4z;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=VHoSRskF;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gX67xwkrE03d3I6xlraejYSZtL3Xjxs+ETrcxPXjC10=;
        b=FIWYdJYmuPk4t+EOqWCDE5rzfZuRhcOT4gd7OIpkv/kUCvgGSRyPkW8ynY7F9czVlB
         di7Zw3/y4+CxTm+MzgOGCGQTNT6wm2BKDsonahyqkGkyqFi+byTlzV5dchOk3rFJXDD4
         hwp0fS0GeRAucIuoRC+iNCrRkuRLVbVZsMqD6aNh27hkjWhfb/W9IqLv8IAEHxMi/6bD
         DJ7hQuM2brlnFIbbeCYtK9LO5PajAxsHfgze0dx7yLGXs3/kAOagIEnrxhDBfe7bBvgY
         8/CGifpjhVP630NsbloMVntlLRDriqsSLlJT88gJCjv/fKbn73jYskcsDswBkgQi39Yw
         jZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gX67xwkrE03d3I6xlraejYSZtL3Xjxs+ETrcxPXjC10=;
        b=MPvRcwHiiRLaRDSQGcp10ByIlSnvpbTnZXTLcZ+dq7CmKv5jKTreb+gyCQYEXZ9iE3
         A0mi3ypiNvKz5UXNoEUlkpDnus3Rj2Qh6/orjHsm3yLuRAzOHHmBU5SDn9IqSH6x5Gc+
         tvfPbnfW8JaCo/XhgADwntqDu6bCUas3Xxc7p81E2WUnfKWDhxzQkEtj/dAz1S+AuAnU
         Nby9AVRyrTEOyDYOgDY23V20EIo0nhzqdjTmHVtYNQlG6URDimB4WazLLqhfxLgqjpef
         cJBER7Nv+MmqV5dHcfhCOAVHMbDlvtaEk0xvqja2eq0zNcY8VWuwGH6D+KXj7eLSwep3
         lRFQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5306mLOZjfKLarZAd70UB/URBGGt1x1chmUKEvyQGcaBhDUEk7G5
	VXZGQtRo2nS6fo1xb2N5Akk=
X-Google-Smtp-Source: ABdhPJxccCbu0AnyXjw/cTv4ZjunrPlcA/ktDBoZwtK9lFra0E2t/clliuX/c1CJ5iB4iHs9SEW0kQ==
X-Received: by 2002:ac2:59ce:: with SMTP id x14mr3239079lfn.183.1607629339217;
        Thu, 10 Dec 2020 11:42:19 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c1cd:: with SMTP id r196ls197029lff.1.gmail; Thu, 10 Dec
 2020 11:42:18 -0800 (PST)
X-Received: by 2002:ac2:41ca:: with SMTP id d10mr3139419lfi.419.1607629338099;
        Thu, 10 Dec 2020 11:42:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629338; cv=none;
        d=google.com; s=arc-20160816;
        b=x4Hl9UC7MKehSnL5qkQRDAeQ/385MtR+5ddoZ4lh9U7iNPZ1KG38aI7DEu/MykMSui
         oaqXE/wktJgRfz5a/kn7p8e4MCtkhRaeWH6uN5POoCgYWXfxmRhGnRpbMbLHObCWmHNu
         4tz4iWRroTzryMGaCSGAuKGrZjT3yWc6QjYHSSvTv4xj0bioQUkBybRFhRayq6GZgctI
         iIWfdHMZMeeb75Rc/kcUe8KDhPFSa+ShWw1o6zryHClau5HqOwVFk095QX9ckYHSKcu/
         BKgwGgRrG4WJzkjiJBYpOGGSJSg4vehJvIOe85HxJSLowRR9T9A08D9KfDeNvp2oWD17
         YYLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=xNUoZoBVroF7IJy3X8hhV7V+S/ANMxwK+r48iZvHH7k=;
        b=m1P97r8gJfMS0XGd17XUyhj8RRHn8Ltd2TBscShHxbWGb4PY8jrCQRySu3HmMIyDP+
         skBXFNRzT3c+rInpAh2XaAKCzW0vAWihtcmNsIBQtujXUL1LDxCMYLL5lveskLX9WVi3
         hDIQOZegml1QFGEE3SiddARdYeKxaQecgiKJk6THrHlfZ+Oc4I4EfOxM19xxO+N3qoTe
         PAOsLshAvoG0ZMoNnLib7wG+f9Ot97AOag/c0HJxIA6iKJKNPsTt+UwzbMDWova7icAi
         +mSBkVMraS1BaVosyrRpw7ImCl/CcVz41YeL5lZ0/UBD6vztXhtsPLGOjpphgTxmCumO
         gwJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=SuZCyt4z;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=VHoSRskF;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id l8si227035ljc.2.2020.12.10.11.42.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:18 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194042.703779349@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:38 +0100
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
Subject: [patch 02/30] genirq: Move status flag checks to core
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=SuZCyt4z;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=VHoSRskF;
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

These checks are used by modules and prevent the removal of the export of
irq_to_desc(). Move the accessor into the core.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/irqdesc.h |   17 +++++------------
 kernel/irq/manage.c     |   17 +++++++++++++++++
 2 files changed, 22 insertions(+), 12 deletions(-)

--- a/include/linux/irqdesc.h
+++ b/include/linux/irqdesc.h
@@ -223,28 +223,21 @@ irq_set_chip_handler_name_locked(struct
 	data->chip = chip;
 }
 
+bool irq_check_status_bit(unsigned int irq, unsigned int bitmask);
+
 static inline bool irq_balancing_disabled(unsigned int irq)
 {
-	struct irq_desc *desc;
-
-	desc = irq_to_desc(irq);
-	return desc->status_use_accessors & IRQ_NO_BALANCING_MASK;
+	return irq_check_status_bit(irq, IRQ_NO_BALANCING_MASK);
 }
 
 static inline bool irq_is_percpu(unsigned int irq)
 {
-	struct irq_desc *desc;
-
-	desc = irq_to_desc(irq);
-	return desc->status_use_accessors & IRQ_PER_CPU;
+	return irq_check_status_bit(irq, IRQ_PER_CPU);
 }
 
 static inline bool irq_is_percpu_devid(unsigned int irq)
 {
-	struct irq_desc *desc;
-
-	desc = irq_to_desc(irq);
-	return desc->status_use_accessors & IRQ_PER_CPU_DEVID;
+	return irq_check_status_bit(irq, IRQ_PER_CPU_DEVID);
 }
 
 static inline void
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -2769,3 +2769,23 @@ bool irq_has_action(unsigned int irq)
 	return res;
 }
 EXPORT_SYMBOL_GPL(irq_has_action);
+
+/**
+ * irq_check_status_bit - Check whether bits in the irq descriptor status are set
+ * @irq:	The linux irq number
+ * @bitmask:	The bitmask to evaluate
+ *
+ * Returns: True if one of the bits in @bitmask is set
+ */
+bool irq_check_status_bit(unsigned int irq, unsigned int bitmask)
+{
+	struct irq_desc *desc;
+	bool res = false;
+
+	rcu_read_lock();
+	desc = irq_to_desc(irq);
+	if (desc)
+		res = !!(desc->status_use_accessors & bitmask);
+	rcu_read_unlock();
+	return res;
+}

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194042.703779349%40linutronix.de.
