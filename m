Return-Path: <linux-ntb+bncBDAMN6NI5EERBKPUZH7AKGQEXJGEKDY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 6890F2D66E3
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:34 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id c8sf2974327ljj.3
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629354; cv=pass;
        d=google.com; s=arc-20160816;
        b=JnGSO0mDmLyyHcOKvSVn885UnUy+/+KIkxYuqg7Yn7GUkCWeOtZnE4zvstSIleoVzr
         2E6kWzuQjm18kx1x4wLGXsGvkVdSv1023EsJ+MWw04M2RScw8XLi9NbznwLTGEznOO7d
         oxJdLERoAxbNDX0fbkuzYq2Ehd4kkNJvBzZqO7Vo8QlYR7z6VMUlh64cEOkQyS30WK7x
         QLXTT+UKM2LHBwUa9mG4RJmpHChOypLe76PTNvR802pqW2iO+G345pPKaDaLIk3DXCGK
         rpXPOvMdrIwrdswa5y0/z1FghDKB4H0//VVHT4LsSym87vH/dd04tXlhMAVD9fVssteH
         pVDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=Dl0zv8KhhPLXEHQKJQror2hzOO7xlYq1JOlUQNl1geE=;
        b=JDEkmIU6yVua5CLcfLvcKbYu7M6SVF5TDtxQPRtPy4g04v/4TeaQOTOKCOQPx6JanC
         QbrIE9L8z5zPVC5Mz8SThZouPgTTllyMmsmpK1G5y2T1vHgpoLB2uwycexCAnjUoyCYp
         FXUYhUFzRaBbfatKJfbwT1zGP+4HIQt9sG+H+1ceXpeao+MDuNxoa1z0NDAI5KSwE/Wo
         E+ZgWk/mlqJX7l64lGKMAhmvIgQMwR8p7GR55i6Sf/Q+nvPm52nYYtww0XgpdeS8prNK
         Nd5h8Lp9qo5j7PzqdzdtJ8pwCo33c+VeTOhIaoOAGpwFEHZLDRaNdQUFlE3IX56PTXN9
         /a9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=hIJe5uDF;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dl0zv8KhhPLXEHQKJQror2hzOO7xlYq1JOlUQNl1geE=;
        b=kTwpcxoQUA8J8DmYFnITLzwDIO4/HD/HyWlC+Xz/zYeorXAzNfuuIUU3dp7i8U2i2V
         2C4ML/AJdIFD0CYA8qH8RWCB+uSlgEp8dt5I6fhr2dgDJlb5qcoU9Ya6WqPURA76T4Lh
         qcQmSLdt6Laym3oZBhm6sEAUkjkSzrghwODIjsa+wJiRgFrwZNAcmhtHKyiOjGIwSs+w
         5CpKN7pLQYO5Pckhr77WjzDwfb2OzK+eUqx95dPppmPpbzC7B0oFHqVtcnK/tsMuIKIO
         aYPjzYcSvqsxNhTaWTUE1JGInlcpgluyh8BRrpmlCYsvKh4BvOkJZz++/mu99kOD2wTG
         EaiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dl0zv8KhhPLXEHQKJQror2hzOO7xlYq1JOlUQNl1geE=;
        b=Aacb7rxHpjzdhpiHqjplz+jRTkKfNZq1dLa0fujMFNXYSN2tqnfeJw9uWmVZae6Tbv
         TrloBx04kJHPacipJXYA5jXunNS6bEAGky3GFzpDBE4z/B3izxerenGjmdHrmBXrVm4H
         w2GLLdGAvKwI3KNKy1UjevBjkAeB7jE2gNSiFEeJO5k6TLzRA+LUkLhVFIJUNGKFvMEN
         bUsgVp1/bdKoKVohjC2QRBe+mCcaRe2GrWQdjK/PX+jAGK3XlXUhFYWVAlF6cW3zobh3
         nASdANvgfCDiUCd5lmVtvEeK1mnL8XAWdB8yFTrY/hJErzN1yQusYBNCiKhf5FiqH52v
         igxg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5306QAh9asIoCQ84DJ6dt5vsIMvB3OrEdRPTLJJsCcY2WJpPdUjr
	dXR6Wc/puGttt05EZajo+00=
X-Google-Smtp-Source: ABdhPJw0SkKij7yVLxEvvWCDaftJSZH0QEIeSNrBIYZezQLJCvnhrkyP/+TcK2PBNIJWrXeYY5TMHg==
X-Received: by 2002:a05:651c:8d:: with SMTP id 13mr3903965ljq.33.1607629353985;
        Thu, 10 Dec 2020 11:42:33 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9b9a:: with SMTP id z26ls1229897lji.7.gmail; Thu, 10 Dec
 2020 11:42:32 -0800 (PST)
X-Received: by 2002:a05:651c:205b:: with SMTP id t27mr236385ljo.368.1607629352891;
        Thu, 10 Dec 2020 11:42:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629352; cv=none;
        d=google.com; s=arc-20160816;
        b=iKcDssXBGv2TE4wHLiMSz12iqDCDwrqGOXN9qMa5ciH475FXOIF/Qv2hYKtUHy+Pmj
         UQJ9jS2xtnxOg+lcIhVO1r4yFnx/Zxk+c6qDtRIvj/hY1Pt8VBqN3Z68rzVHViJL0Gev
         A3HbRcouNUlFvtzK4F53vR2jEkpejcZNejkmM+7Dog7IcwdXm0ViLK3+pfTtBJ8j1xZ2
         Hx+t2hTlM328+Uty9ew2Z4GkRnfzXWSRg4PPYFaqFgSARSFp+6uLyQFuqwHqRxjh99e7
         Ck3kJoEjZG6RAy4KjsRGSuehI0fWF1ATAra7XbCYJ9pYD6c/n97c1pX4SnEldr50EaWA
         +MEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=aHjBasf7kS/mugPgGoqzaKHWX8S9MZAhVf8pOv9wzqI=;
        b=JO6EgwUb0M1xAbt3+q4qec5apWtJBPjteBmKXA7qKrmNLRBqst+KyHLSkY+Af//4hn
         h0s6LywkLmY4LRSu27Wl6K19GzXZ0Lo0+0EUZO9qpNGlkX4xV06T55mJN8ssNeg5ywm8
         nSoiFHIgsM/F2N4He4wh2hW0rxExJn5BhgXLwV8PO/WAgaxFx7iGhpJq1oe8rspOXWwN
         HnZYZiPvsjO2CfyZhZcvzUunpFgxWQkJZ+/OXFfOqZMD+WwTxx8YEKKyst/pn5UU2wCv
         KH6gsT8FaC35iGPoEjzu7Ze6lnyQ/kZyJll9oxl93o9rY5A8ii/i45NvS60YPjGUrH1q
         trUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=hIJe5uDF;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id d3si205514ljj.4.2020.12.10.11.42.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:32 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194043.957046529@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:50 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
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
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>,
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
Subject: [patch 14/30] drm/i915/pmu: Replace open coded kstat_irqs() copy
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=hIJe5uDF;       dkim=neutral
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

Driver code has no business with the internals of the irq descriptor.

Aside of that the count is per interrupt line and therefore takes
interrupts from other devices into account which share the interrupt line
and are not handled by the graphics driver.

Replace it with a pmu private count which only counts interrupts which
originate from the graphics card.

To avoid atomics or heuristics of some sort make the counter field
'unsigned long'. That limits the count to 4e9 on 32bit which is a lot and
postprocessing can easily deal with the occasional wraparound.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
---
 drivers/gpu/drm/i915/i915_irq.c |   34 ++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_pmu.c |   18 +-----------------
 drivers/gpu/drm/i915/i915_pmu.h |    8 ++++++++
 3 files changed, 43 insertions(+), 17 deletions(-)

--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -60,6 +60,24 @@
  * and related files, but that will be described in separate chapters.
  */
 
+/*
+ * Interrupt statistic for PMU. Increments the counter only if the
+ * interrupt originated from the the GPU so interrupts from a device which
+ * shares the interrupt line are not accounted.
+ */
+static inline void pmu_irq_stats(struct drm_i915_private *priv,
+				 irqreturn_t res)
+{
+	if (unlikely(res != IRQ_HANDLED))
+		return;
+
+	/*
+	 * A clever compiler translates that into INC. A not so clever one
+	 * should at least prevent store tearing.
+	 */
+	WRITE_ONCE(priv->pmu.irq_count, priv->pmu.irq_count + 1);
+}
+
 typedef bool (*long_pulse_detect_func)(enum hpd_pin pin, u32 val);
 
 static const u32 hpd_ilk[HPD_NUM_PINS] = {
@@ -1599,6 +1617,8 @@ static irqreturn_t valleyview_irq_handle
 		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
 	} while (0);
 
+	pmu_irq_stats(dev_priv, ret);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
@@ -1676,6 +1696,8 @@ static irqreturn_t cherryview_irq_handle
 		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
 	} while (0);
 
+	pmu_irq_stats(dev_priv, ret);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
@@ -2103,6 +2125,8 @@ static irqreturn_t ilk_irq_handler(int i
 	if (sde_ier)
 		raw_reg_write(regs, SDEIER, sde_ier);
 
+	pmu_irq_stats(i915, ret);
+
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
@@ -2419,6 +2443,8 @@ static irqreturn_t gen8_irq_handler(int
 
 	gen8_master_intr_enable(regs);
 
+	pmu_irq_stats(dev_priv, IRQ_HANDLED);
+
 	return IRQ_HANDLED;
 }
 
@@ -2514,6 +2540,8 @@ static __always_inline irqreturn_t
 
 	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
 
+	pmu_irq_stats(i915, IRQ_HANDLED);
+
 	return IRQ_HANDLED;
 }
 
@@ -3688,6 +3716,8 @@ static irqreturn_t i8xx_irq_handler(int
 		i8xx_pipestat_irq_handler(dev_priv, iir, pipe_stats);
 	} while (0);
 
+	pmu_irq_stats(dev_priv, ret);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
@@ -3796,6 +3826,8 @@ static irqreturn_t i915_irq_handler(int
 		i915_pipestat_irq_handler(dev_priv, iir, pipe_stats);
 	} while (0);
 
+	pmu_irq_stats(dev_priv, ret);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
@@ -3941,6 +3973,8 @@ static irqreturn_t i965_irq_handler(int
 		i965_pipestat_irq_handler(dev_priv, iir, pipe_stats);
 	} while (0);
 
+	pmu_irq_stats(dev_priv, IRQ_HANDLED);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -423,22 +423,6 @@ static enum hrtimer_restart i915_sample(
 	return HRTIMER_RESTART;
 }
 
-static u64 count_interrupts(struct drm_i915_private *i915)
-{
-	/* open-coded kstat_irqs() */
-	struct irq_desc *desc = irq_to_desc(i915->drm.pdev->irq);
-	u64 sum = 0;
-	int cpu;
-
-	if (!desc || !desc->kstat_irqs)
-		return 0;
-
-	for_each_possible_cpu(cpu)
-		sum += *per_cpu_ptr(desc->kstat_irqs, cpu);
-
-	return sum;
-}
-
 static void i915_pmu_event_destroy(struct perf_event *event)
 {
 	struct drm_i915_private *i915 =
@@ -581,7 +565,7 @@ static u64 __i915_pmu_event_read(struct
 				   USEC_PER_SEC /* to MHz */);
 			break;
 		case I915_PMU_INTERRUPTS:
-			val = count_interrupts(i915);
+			val = READ_ONCE(pmu->irq_count);
 			break;
 		case I915_PMU_RC6_RESIDENCY:
 			val = get_rc6(&i915->gt);
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -108,6 +108,14 @@ struct i915_pmu {
 	 */
 	ktime_t sleep_last;
 	/**
+	 * @irq_count: Number of interrupts
+	 *
+	 * Intentionally unsigned long to avoid atomics or heuristics on 32bit.
+	 * 4e9 interrupts are a lot and postprocessing can really deal with an
+	 * occasional wraparound easily. It's 32bit after all.
+	 */
+	unsigned long irq_count;
+	/**
 	 * @events_attr_group: Device events attribute group.
 	 */
 	struct attribute_group events_attr_group;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194043.957046529%40linutronix.de.
