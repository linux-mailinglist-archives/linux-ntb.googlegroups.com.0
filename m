Return-Path: <linux-ntb+bncBAABBVUMZX7AKGQEFZTKZJY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 005BC2D7398
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 11:13:43 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id g12sf1971622vsm.5
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 02:13:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607681623; cv=pass;
        d=google.com; s=arc-20160816;
        b=QLFmLHFA8wjS1IQnM2eC9AbI35u3bCp43grWJeDC9njWDwVJrbUkwIWhomGm/P9xeK
         K+UlofiIRWxX5vN8PhNN+BifvhTulnPwWvYAcBCpaxCB4XaO8wPebAgI3rAEl8wATWxK
         hFbprOiAW1oKmFi99r1lN77ysbE52GwESrpqYQrTkxcaEHx3ODyc4v5pVBg3D5h4twYV
         kefFUMCuCyK/wW3C3/q8J4NR0Xn5rkm8/hOxhTC7DWdqq6E8iPS+PQQDy/Oj7/bvzCJk
         WW1FGTGuKfygBr+hzHcsJswWNn9BKdeeR95qA3m+DaUDi8LProAhTpRgDNhyeOAbKWtH
         oMfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=TBMoPhOMPZSvAtljLqFvIycejSk6Bt0vR4NHmKXMgcE=;
        b=FMsrFRog3pRfmFWIP2GyUYq4yVFsUz/Rpx+qfU7teQGeVtVwyb+wp3EoGW/yVaLbjr
         CBraUioNe+rwZnYRRZolXH9TOoW6YoyMzmevA+J7psMs01clyAzHVLi2CzgYTvKcQB5D
         /ztKEe5o16CMNotXxPtW6RDSCIYIQ9gx/dS3qRqXYcS17UlgEcytH3d6Aahl+G1Q3YbV
         Q7HvZ347lYKkn890tpg158du1Exen8FWitj8knyEZGO2etdmyyr3zrACkx93hDzD9/hN
         DFbPkgDSZKHr5DpkGLimP1L5JQ4g0HOfRORmJf015QZLlqG11dll8c+M5AYFHtg/WxFz
         mM7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tvrtko.ursulin@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TBMoPhOMPZSvAtljLqFvIycejSk6Bt0vR4NHmKXMgcE=;
        b=mWn+WBwFQDPZkLk4OEaGtQhzMXGDzgJ1DfzodOuwQqJFKk7fx61PxS4xSLj+cxRE+0
         mrSuJ/7xy2jSy/lTf9uAooUUFviPy8RfIo3qxnkhJdbTPexvWyXFwFseMo2gFgKvQbzJ
         IqNFUm0Q1dp6X/U8YlLjz7///4MVwOOp821DgOz4Amx/pYwLTbiKSZysvlToMCrCbd5i
         mXv61oty45xmQJx+pWklVKP6RfQ+f79F6A3JVTEv1XOAo+mgp7td+BR3gELn57+HR1RL
         wRW9c1s3tMxrCFloQmXVf284+jJm3my4H6PntLVtNX9Gpl1mRW5kM0o/Slnf/4gGu5/F
         h0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TBMoPhOMPZSvAtljLqFvIycejSk6Bt0vR4NHmKXMgcE=;
        b=d3+l3gVdOvtrix4rrDkHwCQSFGlyAyGj4lP+EP01MYmD3G//guD6kiU9xS2vf78OTL
         VLoSQSyZdcM7cM3nD4VGzUopqXlm/4R+8IlTMzTgSGWcnSX+1HOBIUX21tXmCsQKa2+m
         K0XkdRjJi8khgJ7FJA+JAygLm6HCG/mxkjRcvJc5a25q6Kl+77b59n4n3IVHTEQGEcl9
         W3n+ol1nSGj+SB/TkXaSqYMEvdptKw2ADRLpkZ8hFc4g+pz8JGKqlKzBnHNpk2rq+TBs
         uzfLE5msZMaBoBTycWDbBP7bd1YY9YRtCjnHAWF6BVF8x4aESEwNQmcGjc/eYPTz0otq
         /NTg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5332OKub73jWNpzxeVTpOt0JUM8XsXihpU8NQFiPGIig3kE3eXrL
	9QV0aBl8m0Krsgm+I7pMorU=
X-Google-Smtp-Source: ABdhPJydOHICQ0X4B69n3JBcqGHdVIFLG2dIJTtMQFkXaTRDzUWCgETdh2v1334FQ1TVim6cSHhyRA==
X-Received: by 2002:a1f:4595:: with SMTP id s143mr13000030vka.6.1607681622937;
        Fri, 11 Dec 2020 02:13:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9f:24af:: with SMTP id 44ls604107uar.10.gmail; Fri, 11 Dec
 2020 02:13:42 -0800 (PST)
X-Received: by 2002:ab0:2e8e:: with SMTP id f14mr11610062uaa.22.1607681622405;
        Fri, 11 Dec 2020 02:13:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607681622; cv=none;
        d=google.com; s=arc-20160816;
        b=QsiWKGpdUxUYT4yBhJtMaH6rVH2wbI8bFsaTuKAFZ2LR68a0vyF0dzWEzss6FODOV1
         vf1xfUen8FKUpnebn1EkY0+//aAAqoMu4B6M4vFHQ4iznbpH/B7LZB5xjCEFvDemWrXu
         GjwOGZMRxjsNTKGMuv3uj7N94KV8ciG/nXpYhe9XuArYqIUvkD3CvFpNxDpvjmkxnBtI
         H9Fj6VuM//OEHwEDwW9l4/wT808CjHcq8BhQmslq1qHWsWNYoLnwiJIFn5uMHJ9rhjnp
         /FmFxFeaivRuGDGt30ya4gJdz0Hwo9ddI9e+yJA1iJqC26NiBP3nlGsploW1pwcoCPhp
         F9FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr;
        bh=w0eW0a7KXmm63AkK3FlltD4gNmKxhq4htK+hX8VWITM=;
        b=SG/JApngdX+7BnBk2/IRjnlTGwfqkAEgM7OPMVENaqSsAM6naN2DFkol1aNc8v9l0u
         r8ujSHNor5DODLO3ZPpCbdq1343uakwIDpKLq2kxtSL3TrB4nAzjZQCUIYEVirnUk0N7
         qgDlWRZ7h0oJ5GngZAbfCYHlMxFTx5Y7OWji0RsqlQJiMpV0oLcFAAMDUD/6n/ebIZ4R
         CrizR96zJtFPzjxJinVlE+wLu1A36Bxq4EngU/JT9d++czdJQHc1ij+SO3U0CEsduaeq
         JxR3cyLDA+yetA6eAIPvZdASTjxYz6An6Nogp/slAeq/PR//VqYLfaMSVNhWloPomt6D
         MJwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tvrtko.ursulin@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id y129si610077vkf.3.2020.12.11.02.13.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 02:13:42 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tvrtko.ursulin@linux.intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: aSuSDFt1b2AzVWigSDPSjPPGYHXSwmPb/7usfk+5N7mV28LU3TRXLPdNgM0/5ly3p4lkAYxstl
 if8K18fSR1Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="174554595"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="scan'208";a="174554595"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 02:13:39 -0800
IronPort-SDR: RsQ7lmI/Ay9vaPccFC88f8JfxCXrqcVSXV/MMPaui8twEB+RtpNdJLZX44RdUN4vBcYtBFso8b
 xcHG9HzNR9pw==
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="scan'208";a="321689328"
Received: from ynaki-mobl1.ger.corp.intel.com (HELO [10.214.252.46]) ([10.214.252.46])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 02:13:24 -0800
Subject: Re: [patch 14/30] drm/i915/pmu: Replace open coded kstat_irqs() copy
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross
 <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
References: <20201210192536.118432146@linutronix.de>
 <20201210194043.957046529@linutronix.de>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ad05af1a-5463-2a80-0887-7629721d6863@linux.intel.com>
Date: Fri, 11 Dec 2020 10:13:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201210194043.957046529@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tvrtko.ursulin@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tvrtko.ursulin@linux.intel.com
 designates 134.134.136.24 as permitted sender) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


On 10/12/2020 19:25, Thomas Gleixner wrote:
> Driver code has no business with the internals of the irq descriptor.
> 
> Aside of that the count is per interrupt line and therefore takes
> interrupts from other devices into account which share the interrupt line
> and are not handled by the graphics driver.
> 
> Replace it with a pmu private count which only counts interrupts which
> originate from the graphics card.
> 
> To avoid atomics or heuristics of some sort make the counter field
> 'unsigned long'. That limits the count to 4e9 on 32bit which is a lot and
> postprocessing can easily deal with the occasional wraparound.

After my failed hasty sketch from last night I had a different one which 
was kind of heuristics based (re-reading the upper dword and retrying if 
it changed on 32-bit). But you are right - it is okay to at least start 
like this today and if later there is a need we can either do that or 
deal with wrap at PMU read time.

So thanks for dealing with it, some small comments below but overall it 
is fine.

> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org
> ---
>   drivers/gpu/drm/i915/i915_irq.c |   34 ++++++++++++++++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_pmu.c |   18 +-----------------
>   drivers/gpu/drm/i915/i915_pmu.h |    8 ++++++++
>   3 files changed, 43 insertions(+), 17 deletions(-)
> 
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -60,6 +60,24 @@
>    * and related files, but that will be described in separate chapters.
>    */
>   
> +/*
> + * Interrupt statistic for PMU. Increments the counter only if the
> + * interrupt originated from the the GPU so interrupts from a device which
> + * shares the interrupt line are not accounted.
> + */
> +static inline void pmu_irq_stats(struct drm_i915_private *priv,

We never use priv as a local name, it should be either i915 or dev_priv.

> +				 irqreturn_t res)
> +{
> +	if (unlikely(res != IRQ_HANDLED))
> +		return;
> +
> +	/*
> +	 * A clever compiler translates that into INC. A not so clever one
> +	 * should at least prevent store tearing.
> +	 */
> +	WRITE_ONCE(priv->pmu.irq_count, priv->pmu.irq_count + 1);

Curious, probably more educational for me - given x86_32 and x86_64, and 
the context of it getting called, what is the difference from just doing 
irq_count++?

> +}
> +
>   typedef bool (*long_pulse_detect_func)(enum hpd_pin pin, u32 val);
>   
>   static const u32 hpd_ilk[HPD_NUM_PINS] = {
> @@ -1599,6 +1617,8 @@ static irqreturn_t valleyview_irq_handle
>   		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
>   	} while (0);
>   
> +	pmu_irq_stats(dev_priv, ret);
> +
>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>   
>   	return ret;
> @@ -1676,6 +1696,8 @@ static irqreturn_t cherryview_irq_handle
>   		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
>   	} while (0);
>   
> +	pmu_irq_stats(dev_priv, ret);
> +
>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>   
>   	return ret;
> @@ -2103,6 +2125,8 @@ static irqreturn_t ilk_irq_handler(int i
>   	if (sde_ier)
>   		raw_reg_write(regs, SDEIER, sde_ier);
>   
> +	pmu_irq_stats(i915, ret);
> +
>   	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
>   	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>   
> @@ -2419,6 +2443,8 @@ static irqreturn_t gen8_irq_handler(int
>   
>   	gen8_master_intr_enable(regs);
>   
> +	pmu_irq_stats(dev_priv, IRQ_HANDLED);
> +
>   	return IRQ_HANDLED;
>   }
>   
> @@ -2514,6 +2540,8 @@ static __always_inline irqreturn_t
>   
>   	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
>   
> +	pmu_irq_stats(i915, IRQ_HANDLED);
> +
>   	return IRQ_HANDLED;
>   }
>   
> @@ -3688,6 +3716,8 @@ static irqreturn_t i8xx_irq_handler(int
>   		i8xx_pipestat_irq_handler(dev_priv, iir, pipe_stats);
>   	} while (0);
>   
> +	pmu_irq_stats(dev_priv, ret);
> +
>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>   
>   	return ret;
> @@ -3796,6 +3826,8 @@ static irqreturn_t i915_irq_handler(int
>   		i915_pipestat_irq_handler(dev_priv, iir, pipe_stats);
>   	} while (0);
>   
> +	pmu_irq_stats(dev_priv, ret);
> +
>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>   
>   	return ret;
> @@ -3941,6 +3973,8 @@ static irqreturn_t i965_irq_handler(int
>   		i965_pipestat_irq_handler(dev_priv, iir, pipe_stats);
>   	} while (0);
>   
> +	pmu_irq_stats(dev_priv, IRQ_HANDLED);
> +
>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>   
>   	return ret;
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -423,22 +423,6 @@ static enum hrtimer_restart i915_sample(
>   	return HRTIMER_RESTART;
>   }

In this file you can also drop the #include <linux/irq.h> line.

>   
> -static u64 count_interrupts(struct drm_i915_private *i915)
> -{
> -	/* open-coded kstat_irqs() */
> -	struct irq_desc *desc = irq_to_desc(i915->drm.pdev->irq);
> -	u64 sum = 0;
> -	int cpu;
> -
> -	if (!desc || !desc->kstat_irqs)
> -		return 0;
> -
> -	for_each_possible_cpu(cpu)
> -		sum += *per_cpu_ptr(desc->kstat_irqs, cpu);
> -
> -	return sum;
> -}
> -
>   static void i915_pmu_event_destroy(struct perf_event *event)
>   {
>   	struct drm_i915_private *i915 =
> @@ -581,7 +565,7 @@ static u64 __i915_pmu_event_read(struct
>   				   USEC_PER_SEC /* to MHz */);
>   			break;
>   		case I915_PMU_INTERRUPTS:
> -			val = count_interrupts(i915);
> +			val = READ_ONCE(pmu->irq_count);

I guess same curiosity about READ_ONCE like in the increment site.

>   			break;
>   		case I915_PMU_RC6_RESIDENCY:
>   			val = get_rc6(&i915->gt);
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -108,6 +108,14 @@ struct i915_pmu {
>   	 */
>   	ktime_t sleep_last;
>   	/**
> +	 * @irq_count: Number of interrupts
> +	 *
> +	 * Intentionally unsigned long to avoid atomics or heuristics on 32bit.
> +	 * 4e9 interrupts are a lot and postprocessing can really deal with an
> +	 * occasional wraparound easily. It's 32bit after all.
> +	 */
> +	unsigned long irq_count;
> +	/**
>   	 * @events_attr_group: Device events attribute group.
>   	 */
>   	struct attribute_group events_attr_group;
> 

Regards,

Tvrtko

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/ad05af1a-5463-2a80-0887-7629721d6863%40linux.intel.com.
