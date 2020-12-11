Return-Path: <linux-ntb+bncBCS5BWNH3ENRBUEDZX7AKGQE55C5ORQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id D126D2D7323
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 10:54:25 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id b35sf6156506pgl.8
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 01:54:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607680464; cv=pass;
        d=google.com; s=arc-20160816;
        b=jVvBHaYvRQaq7mkgrIaSH1UVi2hNGvwq+IiQcYUhwA71NRMe7IA/yRc9zxmuFaqnna
         GgFP1eCOJjnP5urFvpz74ewVnE6aqW6/AAnBfxEqDmcda4Xw+6Ov+H11oQHWhahLQdqa
         3omEFvYrO4SD9lGGI8O3sGL/kmU21k4CWel1c5Cn4Hzd4CFxntsneJbOKM/sIJ/VQbhs
         aY6CusoiBYeFSt36ufxnnk3WJzMkbSUagHgPsdlTsAcf4UNx++KAN5IqSMIb24/v2lmU
         wPDwkGiwq59wiCAYdW7/I8M0uTmWIJJ4vtNN7lykgufDtKtl6gjNXzPT7Ty+wSAwjPCY
         Lh0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:organization:in-reply-to:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=SVeYffuTkPlP4XX3z4xVvC8XBF+AzNqRnqZtDZfzxZo=;
        b=ii1C1M8xtQJJDdAdMkZsQGXMErBY5AQvELnZY7n6hO8ImJnIv8LCMVo/wv7uClJJ+8
         Yn1VdguhJx4jDWhVHHvlunGIBkckN+av8LSPDwDmBFb+Ldwvlg4Uiodbzjr8vZXk0nAS
         zGhK2LkGTgm7YYGcaH2mcHs9bvsNYAqU/yFJ+ycC8YvoW9rwgcBok1Zms96dRTWkFZYY
         N/sldS2shatV8b60DcVBg+Fwz1tHBPj2jwqvMyA+belYt2wpUpdfJ6NPnID+acdT994R
         KLqsq5BAUSmG8eoCd5UOu8GGIhpjCQEu0lXSovqztlO/qsGEV/9xpEECn6NTDm/mzKEW
         uYbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVeYffuTkPlP4XX3z4xVvC8XBF+AzNqRnqZtDZfzxZo=;
        b=ntl1muyZQdtzsIScp9JzSkZVhqvoDazPx21W3DMRJMfTbGvdLGONjorKIdAvL+Eujh
         MkcmAaMzgiyx0Eb5rLMqZjgf67DCtgur2kDjwnXQS8HMSrFrptPGg58ZDrdqbIB7xtM4
         1QXyos9/ULAkPd88/1gOIROtt5SAXvvufgcJf3auHL31vKQwZY+hDgOA3+IlvbFwfVI3
         xvXmZHouhTKNwBCv6Qh4x4pz0w932Rgf7F8ik/b0FFzdl3pdPu+dxw6MhnC4GcO0l1mf
         89fbAVelwD48x4b9wOjPfCFhvasqgJoI+K7rTwS8N6TFNKAYETGEdgVl6DmE0sm6yfg3
         IIYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:in-reply-to:organization:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SVeYffuTkPlP4XX3z4xVvC8XBF+AzNqRnqZtDZfzxZo=;
        b=bQdmV4Yd8UHi2qlvbfCnSvzOXc59zJu1vyDah9xhHsN6FRYGZ3224wG7HEnEBnKtat
         HD0CGRMNvs4nATfC4FQ6eLjfaKmz1PU/76fdW1OtBwZKOVZ2hgMgi8APZj6jgoMJggqG
         7hFT0pI3GiSZ3T5mHOgjfPK+3M7FliN4aqBXEoKLez06HL4F2UtODegRwzlfSzea0cIN
         XraCpXfm5OxABxhgT9Vxos9MaFdGVOhxUHYXv0wn5R/zqUyq6DM+ojxnWLgFjM4grAeU
         bY8A8qRsp7dCptC75Vqq0E2kns4iNcfcLv8Kbu0tcYS+R0u12WSuqMmFGSmHTLLIL2CD
         BFzQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530HAbWcWVI6JBIESJvpJq5GEtAqzdgZ1+ZPQn5+NKM8bkJ/drdo
	D48rcpG7Q1Bs/hV+Skqgl78=
X-Google-Smtp-Source: ABdhPJyDMvf8KovVXfEeN8DRrq4P4DSCnML7QY6F3Zdb2h0dnthXKfj+AHfDfRwVzPrkDjOFt3J9DQ==
X-Received: by 2002:a63:7943:: with SMTP id u64mr10846401pgc.139.1607680464536;
        Fri, 11 Dec 2020 01:54:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls3883592pll.0.gmail; Fri, 11
 Dec 2020 01:54:24 -0800 (PST)
X-Received: by 2002:a17:902:bf44:b029:da:d140:6f91 with SMTP id u4-20020a170902bf44b02900dad1406f91mr10478386pls.51.1607680463924;
        Fri, 11 Dec 2020 01:54:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607680463; cv=none;
        d=google.com; s=arc-20160816;
        b=ND9B9kbEIEwOfb4Yv1TxGlfCS/QYAi+rzRCtold/oiFW+Kmdqj4gpzXNtE3t1MdX9Q
         uk3NtljRqUid07KXjhj5By5r3x8WM2BjIwFPww7hJ1cv49Z328PXMDqs36omqIb4anbd
         r9hwuasBRBYa750TbYLFwOTWPx4j4kkwz1PEEZHn2v/QdmKzqbi+1ez+UnkmGwqbPwUw
         2WUy4h6+pejIy633xONd+jxnc7ojG/8hNRe0KBRx84eE0YpaSAUMvMuxol1EF19W1u9R
         gOLoxuOyvRQhgFy+ka/M2oRCkNsagDiScX72uzX2X5SdL3rwVuuv0EAzc49yVZGJRCJ9
         W/Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:ironport-sdr:ironport-sdr;
        bh=tBI2X5hH5zQM6TkF5R+DFCo+J0XJrx1VqtLmx6bi1Qk=;
        b=XJ4YE0TjZ7dRxjFSGHEDVv3hM/OCPGz6SxHRLpWQkE3cwKuapRF/z+FK/n5buz8/Sb
         koyLXGeKuFFDBWjor9HyWxeYvleFb0R26Fcd2jcekKkagQbraF99wXaJLZfqchN6V06v
         afLsXKa6V6qMmieSJvBxQW9RJku7UXOoBSSaVOtmml/mbTtjpUTNZrTKTI/anWFv70XA
         8AWjIJIwdBNd1Z1Wzgvw7lK+RvO8dJJdioPvbLzp/rSR/6mPAc3v4TJcYbFLaDEMPfIX
         Js5CP7M41i8oH62IGl7/IxV69IMpWkoxFoGE3bRVS8cJPwDatJFY84ChtSfOmT2t2MOp
         jIuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id r2si532727pls.2.2020.12.11.01.54.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 01:54:23 -0800 (PST)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: KaUISFA9IlXweZlgbK7GJVqspLFW1QbtTU2SRFp7yMXe3qDIdTVPQ6vyXh7Wha9qoLruxV5Mf9
 Efq9ESzg3PTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="153640948"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="scan'208";a="153640948"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 01:54:23 -0800
IronPort-SDR: /ufv3vGNGQifQf4WI2wmyr1gYEo9JLcct/eEa85fh974wAfL2ugGQDoLz9o6bLFhFYPLXeOH+B
 J5isAR9V2pBA==
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="scan'208";a="333982962"
Received: from dkreft-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.158.206])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 01:54:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, "James
 E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Helge Deller
 <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens
 <hca@linux.ibm.com>, linux-s390@vger.kernel.org, Pankaj Bharadiya
 <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org, Lee
 Jones <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Michal
 Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org, Karthikeyan
 Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang
 <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>, "David S.
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, Stefano
 Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Subject: Re: [patch 14/30] drm/i915/pmu: Replace open coded kstat_irqs() copy
In-Reply-To: <20201210194043.957046529@linutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201210192536.118432146@linutronix.de> <20201210194043.957046529@linutronix.de>
Date: Fri, 11 Dec 2020 11:54:03 +0200
Message-ID: <87wnxo7jno.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jani.nikula@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=jani.nikula@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Thu, 10 Dec 2020, Thomas Gleixner <tglx@linutronix.de> wrote:
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

I'll let Tvrtko and Chris review the substance here, but assuming they
don't object,

Acked-by: Jani Nikula <jani.nikula@intel.com>

for merging via whichever tree makes most sense.

>
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
>  drivers/gpu/drm/i915/i915_irq.c |   34 ++++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_pmu.c |   18 +-----------------
>  drivers/gpu/drm/i915/i915_pmu.h |    8 ++++++++
>  3 files changed, 43 insertions(+), 17 deletions(-)
>
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -60,6 +60,24 @@
>   * and related files, but that will be described in separate chapters.
>   */
>  
> +/*
> + * Interrupt statistic for PMU. Increments the counter only if the
> + * interrupt originated from the the GPU so interrupts from a device which
> + * shares the interrupt line are not accounted.
> + */
> +static inline void pmu_irq_stats(struct drm_i915_private *priv,
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
> +}
> +
>  typedef bool (*long_pulse_detect_func)(enum hpd_pin pin, u32 val);
>  
>  static const u32 hpd_ilk[HPD_NUM_PINS] = {
> @@ -1599,6 +1617,8 @@ static irqreturn_t valleyview_irq_handle
>  		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
>  	} while (0);
>  
> +	pmu_irq_stats(dev_priv, ret);
> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	return ret;
> @@ -1676,6 +1696,8 @@ static irqreturn_t cherryview_irq_handle
>  		valleyview_pipestat_irq_handler(dev_priv, pipe_stats);
>  	} while (0);
>  
> +	pmu_irq_stats(dev_priv, ret);
> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	return ret;
> @@ -2103,6 +2125,8 @@ static irqreturn_t ilk_irq_handler(int i
>  	if (sde_ier)
>  		raw_reg_write(regs, SDEIER, sde_ier);
>  
> +	pmu_irq_stats(i915, ret);
> +
>  	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
> @@ -2419,6 +2443,8 @@ static irqreturn_t gen8_irq_handler(int
>  
>  	gen8_master_intr_enable(regs);
>  
> +	pmu_irq_stats(dev_priv, IRQ_HANDLED);
> +
>  	return IRQ_HANDLED;
>  }
>  
> @@ -2514,6 +2540,8 @@ static __always_inline irqreturn_t
>  
>  	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
>  
> +	pmu_irq_stats(i915, IRQ_HANDLED);
> +
>  	return IRQ_HANDLED;
>  }
>  
> @@ -3688,6 +3716,8 @@ static irqreturn_t i8xx_irq_handler(int
>  		i8xx_pipestat_irq_handler(dev_priv, iir, pipe_stats);
>  	} while (0);
>  
> +	pmu_irq_stats(dev_priv, ret);
> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	return ret;
> @@ -3796,6 +3826,8 @@ static irqreturn_t i915_irq_handler(int
>  		i915_pipestat_irq_handler(dev_priv, iir, pipe_stats);
>  	} while (0);
>  
> +	pmu_irq_stats(dev_priv, ret);
> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	return ret;
> @@ -3941,6 +3973,8 @@ static irqreturn_t i965_irq_handler(int
>  		i965_pipestat_irq_handler(dev_priv, iir, pipe_stats);
>  	} while (0);
>  
> +	pmu_irq_stats(dev_priv, IRQ_HANDLED);
> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	return ret;
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -423,22 +423,6 @@ static enum hrtimer_restart i915_sample(
>  	return HRTIMER_RESTART;
>  }
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
>  static void i915_pmu_event_destroy(struct perf_event *event)
>  {
>  	struct drm_i915_private *i915 =
> @@ -581,7 +565,7 @@ static u64 __i915_pmu_event_read(struct
>  				   USEC_PER_SEC /* to MHz */);
>  			break;
>  		case I915_PMU_INTERRUPTS:
> -			val = count_interrupts(i915);
> +			val = READ_ONCE(pmu->irq_count);
>  			break;
>  		case I915_PMU_RC6_RESIDENCY:
>  			val = get_rc6(&i915->gt);
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -108,6 +108,14 @@ struct i915_pmu {
>  	 */
>  	ktime_t sleep_last;
>  	/**
> +	 * @irq_count: Number of interrupts
> +	 *
> +	 * Intentionally unsigned long to avoid atomics or heuristics on 32bit.
> +	 * 4e9 interrupts are a lot and postprocessing can really deal with an
> +	 * occasional wraparound easily. It's 32bit after all.
> +	 */
> +	unsigned long irq_count;
> +	/**
>  	 * @events_attr_group: Device events attribute group.
>  	 */
>  	struct attribute_group events_attr_group;
>

-- 
Jani Nikula, Intel Open Source Graphics Center

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87wnxo7jno.fsf%40intel.com.
