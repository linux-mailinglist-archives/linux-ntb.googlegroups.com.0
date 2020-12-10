Return-Path: <linux-ntb+bncBDAMN6NI5EERBOXUZH7AKGQEIGJ4M4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D7D2D66FC
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:50 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id t10sf3785963ljj.2
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629370; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ux+0spC91wcAKF4blrS+cYEqNhjdhg7GUq0Q9yX7wNx/4UAiLMczZ6d3OIfimlH/38
         6Cpxmpl3K21iIaAfgw3IEdoVxDW8BaNPeE2NlUYV3RLTjaLm7NtX6R/nICAKOuXbppaQ
         JYmdNFgRqHXlYJEB/O+fTYufLFLgiRCV/lDfrB3egKmuIcY/3CZ3S9En4s58+QWSCXq5
         +/T4oKCJgVsoAkoczb/nCm8yYPvR6xOqnxCOG8gpGeP7rhWGGYgahK9AjKn111Jgsqx6
         5KeEaeCE3pvUDn3c8jKr/pN+U3f8thFPA2svF+zbSIn+Id3EDWrAIYxr1cufkGZL2AwG
         JGNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=BltRTsj5JBKH+Bwn3dn3UH588Nnu/DN/PdEQvcb16vU=;
        b=thtdzhr5D9qfwMMvzpqxz3Q2AUiN/L8U2TITw5jgL3LqtFpLG7I3+U5U2PMEhtU5ad
         T1QIXwNm1ILYHacUz9cLtozAaHlEb8GQeQSfAGvMII8oAZ97zY+xx1GoqRjREPSTi8dh
         NYDJ4tGwGA2jynz3FY6SGfRodSSPXjiTuvgoda/kSgkH8LfKYVpW9a0VSi9gxVV4bcRI
         aRE6M2H5jXx1oNeEeYorFdNWU6Lr5Vg/lLm8MazJMLGzu4yGTkhp61n0g2UvP720LyIm
         DaXWL34poaaxMm0Sc2C0VLKodPEQ/hhZcjYfRwg8xVp4q7dBXv+/CNy/P+Ib/FkQoKVW
         C7xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ViQ26Tbn;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BltRTsj5JBKH+Bwn3dn3UH588Nnu/DN/PdEQvcb16vU=;
        b=NTNTh94Ceha9o49VtCBHpi9GIDxzy6PdQweoIHNJBd1EScSmW1/Kdd6N5+yI299UTn
         f/+90cjB8njmMs2k2Go9bPbot64iLrs8aLLKfwYjoyZSBudPowUrC28URA4hjZ+hiJWs
         k0aUZ0B/1DtC4ojAowK2aDsOT3JW8Szn8sX/BlR7AtYm86ILp7eIX9NKHpPvuqvko8+m
         ZSO/+AOi/4Lw5ZgOgES1+t+TGKf4IMm22r2L17WArGSTeVbZio0iCT/UNxb0Q8IDS76H
         sEmiIaCr6AMatjnL0p+dBEdyOBGxYboBLkl3LNGYy2yji1EiYfxLU3naiMV5RLiVU9th
         ZCSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BltRTsj5JBKH+Bwn3dn3UH588Nnu/DN/PdEQvcb16vU=;
        b=srqcJztsKm/dLUKgpB8tEa6jNHLqzwEK3HZGd0uBf2OjMln0GAwY+jBt2KkygQW/Fm
         aRqN9oknzSf7WlFpWLxorqH4oAYVokHp3BLmH2rNgonPWLSMiw1Msk4fdSYYrye1Q9v9
         mZByuFP0qXYoDfEc5j+6ygfxi0Ono4kqcaPlNHjkb+n7Q8TaCGqfztATou69YU14mFFS
         qpSQujx0AzPJI0CBi36cOZ+VzFHqpelk7i6qQyJ/irF39SF50UKcoe31Req12Jc2Q/UU
         Euq3o0egJ5lhBJsUb07P9YiXv7FYg545BTvrVqjY6iYmWCf8+NddoG0vTN1e7RjWtbcz
         XW0g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5325kdQzAnQ5Qr/df0dJ5fp4GcbfwQnOdCeMsDPDLfoH8/VRe9Yi
	zvT6inrmX1mzpO0kmsqTuqY=
X-Google-Smtp-Source: ABdhPJy/8v/FYb26Vd/KtEDLBFHM9g2J/xZd63AufgCYvJOW7Rj65ftY2qkLtlrl0P3uVCRWRyk0mg==
X-Received: by 2002:a2e:8156:: with SMTP id t22mr3476944ljg.263.1607629370301;
        Thu, 10 Dec 2020 11:42:50 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:8055:: with SMTP id p21ls1237010ljg.5.gmail; Thu, 10 Dec
 2020 11:42:49 -0800 (PST)
X-Received: by 2002:a05:651c:236:: with SMTP id z22mr3595034ljn.126.1607629369305;
        Thu, 10 Dec 2020 11:42:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629369; cv=none;
        d=google.com; s=arc-20160816;
        b=IjU4B4Pz0zxhKZKnttS/yrWuMxsOhXZYzJEc15BWVMtTR5E3cR8N9Le2l6eJUYD8wH
         l1jx/AoZ5AgFbqznVd9LJB9zgb+YAS4dhZOAIeX2HJyZ/TXdHBspMQIjF0yYQweuL09+
         faodoAspZyrF3H5ALhaTKShMucAgtpp3jq8/HlCa8IvJ0fh9J+SvBwYoXpWOlltbKALW
         ChvmWFIEwR2wmdbnN7iKsUYY2BlZ9/sR514jFoPvv8DgXinuG6uY/etflN9pRU3sZgHL
         oCvs2et8UUloD+vrojIAPURTZpBE3v6IxPEyUu2BSys0iwEusdFKOn76S9YtMH8K8qTn
         s2NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=h+/J8p7baJr0DOpzZw5pWLEFMQkgQKdthJegqn8/Z3Y=;
        b=iFqydZM+t8rj0EARPCZXnjIBRQQ7g6XtFU0Vx1JUdegKLER0GsonnibeeitnWh0w1e
         ZvkuuilgySUwDapRxk3iCsexiDvAjbBvHf2T+Cj3LRKK6N9Gbv21+WtQOUVbUEEVXXff
         Ozx3MCjUc1+9e7POr1s+bOUuZjI2EnNVxqTflZL9MSwSTh0mtCNl/Hmy8R44jZAFjfdX
         iU1KeuATy39bBjZ0Bu/60VJZzwBywsUyFK9rn6/mBPwQI+SaLClwTzJ1Vd3MW4YZhWal
         q7mWwfQGFLsj/Z6er7AppcoDQCvoxSu9Skuz9OZps5V6kBWBTkfIB1eCICK8aR+UHKax
         wTqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ViQ26Tbn;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id c24si101528lfc.1.2020.12.10.11.42.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:49 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194045.250321315@linutronix.de>
Date: Thu, 10 Dec 2020 20:26:03 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org,
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
 Leon Romanovsky <leon@kernel.org>
Subject: [patch 27/30] xen/events: Only force affinity mask for percpu interrupts
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=ViQ26Tbn;       dkim=neutral
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

All event channel setups bind the interrupt on CPU0 or the target CPU for
percpu interrupts and overwrite the affinity mask with the corresponding
cpumask. That does not make sense.

The XEN implementation of irqchip::irq_set_affinity() already picks a
single target CPU out of the affinity mask and the actual target is stored
in the effective CPU mask, so destroying the user chosen affinity mask
which might contain more than one CPU is wrong.

Change the implementation so that the channel is bound to CPU0 at the XEN
level and leave the affinity mask alone. At startup of the interrupt
affinity will be assigned out of the affinity mask and the XEN binding will
be updated. Only keep the enforcement for real percpu interrupts.

On resume the overwrite is not required either because info->cpu and the
affinity mask are still the same as at the time of suspend. Same for
rebind_evtchn_irq().

This also prepares for proper interrupt spreading.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: Stefano Stabellini <sstabellini@kernel.org>
Cc: xen-devel@lists.xenproject.org
---
 drivers/xen/events/events_base.c |   42 ++++++++++++++++++++++++++-------------
 1 file changed, 28 insertions(+), 14 deletions(-)

--- a/drivers/xen/events/events_base.c
+++ b/drivers/xen/events/events_base.c
@@ -433,15 +433,20 @@ static bool pirq_needs_eoi_flag(unsigned
 	return info->u.pirq.flags & PIRQ_NEEDS_EOI;
 }
 
-static void bind_evtchn_to_cpu(evtchn_port_t evtchn, unsigned int cpu)
+static void bind_evtchn_to_cpu(evtchn_port_t evtchn, unsigned int cpu,
+			       bool force_affinity)
 {
 	int irq = get_evtchn_to_irq(evtchn);
 	struct irq_info *info = info_for_irq(irq);
 
 	BUG_ON(irq == -1);
-#ifdef CONFIG_SMP
-	cpumask_copy(irq_get_affinity_mask(irq), cpumask_of(cpu));
-#endif
+
+	if (IS_ENABLED(CONFIG_SMP) && force_affinity) {
+		cpumask_copy(irq_get_affinity_mask(irq), cpumask_of(cpu));
+		cpumask_copy(irq_get_effective_affinity_mask(irq),
+			     cpumask_of(cpu));
+	}
+
 	xen_evtchn_port_bind_to_cpu(evtchn, cpu, info->cpu);
 
 	info->cpu = cpu;
@@ -788,7 +793,7 @@ static unsigned int __startup_pirq(unsig
 		goto err;
 
 	info->evtchn = evtchn;
-	bind_evtchn_to_cpu(evtchn, 0);
+	bind_evtchn_to_cpu(evtchn, 0, false);
 
 	rc = xen_evtchn_port_setup(evtchn);
 	if (rc)
@@ -1107,8 +1112,8 @@ static int bind_evtchn_to_irq_chip(evtch
 			irq = ret;
 			goto out;
 		}
-		/* New interdomain events are bound to VCPU 0. */
-		bind_evtchn_to_cpu(evtchn, 0);
+		/* New interdomain events are initially bound to VCPU 0. */
+		bind_evtchn_to_cpu(evtchn, 0, false);
 	} else {
 		struct irq_info *info = info_for_irq(irq);
 		WARN_ON(info == NULL || info->type != IRQT_EVTCHN);
@@ -1156,7 +1161,11 @@ static int bind_ipi_to_irq(unsigned int
 			irq = ret;
 			goto out;
 		}
-		bind_evtchn_to_cpu(evtchn, cpu);
+		/*
+		 * Force the affinity mask to the target CPU so proc shows
+		 * the correct target.
+		 */
+		bind_evtchn_to_cpu(evtchn, cpu, true);
 	} else {
 		struct irq_info *info = info_for_irq(irq);
 		WARN_ON(info == NULL || info->type != IRQT_IPI);
@@ -1269,7 +1278,11 @@ int bind_virq_to_irq(unsigned int virq,
 			goto out;
 		}
 
-		bind_evtchn_to_cpu(evtchn, cpu);
+		/*
+		 * Force the affinity mask for percpu interrupts so proc
+		 * shows the correct target.
+		 */
+		bind_evtchn_to_cpu(evtchn, cpu, percpu);
 	} else {
 		struct irq_info *info = info_for_irq(irq);
 		WARN_ON(info == NULL || info->type != IRQT_VIRQ);
@@ -1634,8 +1647,7 @@ void rebind_evtchn_irq(evtchn_port_t evt
 
 	mutex_unlock(&irq_mapping_update_lock);
 
-        bind_evtchn_to_cpu(evtchn, info->cpu);
-	irq_set_affinity(irq, cpumask_of(info->cpu));
+	bind_evtchn_to_cpu(evtchn, info->cpu, false);
 
 	/* Unmask the event channel. */
 	enable_irq(irq);
@@ -1669,7 +1681,7 @@ static int xen_rebind_evtchn_to_cpu(evtc
 	 * it, but don't do the xenlinux-level rebind in that case.
 	 */
 	if (HYPERVISOR_event_channel_op(EVTCHNOP_bind_vcpu, &bind_vcpu) >= 0)
-		bind_evtchn_to_cpu(evtchn, tcpu);
+		bind_evtchn_to_cpu(evtchn, tcpu, false);
 
 	if (!masked)
 		unmask_evtchn(evtchn);
@@ -1798,7 +1810,8 @@ static void restore_cpu_virqs(unsigned i
 
 		/* Record the new mapping. */
 		(void)xen_irq_info_virq_setup(cpu, irq, evtchn, virq);
-		bind_evtchn_to_cpu(evtchn, cpu);
+		/* The affinity mask is still valid */
+		bind_evtchn_to_cpu(evtchn, cpu, false);
 	}
 }
 
@@ -1823,7 +1836,8 @@ static void restore_cpu_ipis(unsigned in
 
 		/* Record the new mapping. */
 		(void)xen_irq_info_ipi_setup(cpu, irq, evtchn, ipi);
-		bind_evtchn_to_cpu(evtchn, cpu);
+		/* The affinity mask is still valid */
+		bind_evtchn_to_cpu(evtchn, cpu, false);
 	}
 }
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194045.250321315%40linutronix.de.
