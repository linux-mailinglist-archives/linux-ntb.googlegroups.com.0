Return-Path: <linux-ntb+bncBC7M5BFO7YCRBFF5UP7QKGQE5W7U2ZQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA1B2E3286
	for <lists+linux-ntb@lfdr.de>; Sun, 27 Dec 2020 20:20:54 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id x14sf8250178ilg.13
        for <lists+linux-ntb@lfdr.de>; Sun, 27 Dec 2020 11:20:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609096852; cv=pass;
        d=google.com; s=arc-20160816;
        b=zfWIKaSKXT6BkoNE3pnr9NA+fpi4alye7NV7ospnRfoQguwlZKtC+6xTC/zUFHlCO5
         wuUD2g08HxN4FkUkv4NoohXDJUZAHoqwXC0+YA4z+4Hftd6vl+I7IiDb0Vh3pepVF3L6
         +5oUPjvn2sY5m3szNfCFOjTCNn3RLfYv8ZKb74ZoYSsDOlcKMgGHd+1YP5v+f+9M5mhq
         JCut1J6tRe7b5vvI+3QY8UZiK2n7R/CMhgDSkSt3aaE6u/bp7ltLRGeF06+2NRD6/PJO
         T8Nh9vQqfwzQNRW/iqVClFdv8SLXfJWnJRNBcMTeuiqYdRFPVs8QTTpXPHi/5zlanDSd
         EAqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5Zxnyq+IF+oPZ697iko9LGu4zNdnwrYww65OvQEmsAI=;
        b=BhXl865XkQtFE6vaXwvIB0gNlJ3VqEEOOY3vHEVzW8vzgY6Wp2GjBQWN0NeUzv4oT6
         OM+9UXHNZOlFwlZ8HfPOwajlw7/hcaQYwAdj0xg3cBzhI1rqiGPFOs+HeeQJv2HbxiVS
         FMOrwWP5FzUncOQkt4nfwTe6gDYyJyh8MZAyRMZ42qmacGBXrvViPFyThFy1rYy45i5i
         ORElp4pvYYg09vKr/0lEdi47EhBDCMN+yoMzVLsNsySjPj8rvjTbHt9WtgUCTFs4ck0w
         BivYpnH0VKJHU65ode16gHehoDQAup9U1Eklqsjz2HdiOMR6lI/qmOTt/rPypteIurWF
         ytJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=snNRM2UJ;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Zxnyq+IF+oPZ697iko9LGu4zNdnwrYww65OvQEmsAI=;
        b=iRRVWpZpyNLX13YTVSofw/DHQ6CrC4FkBtMQAxsQZnOGSp4s9P1N+9RVbleJOimbEs
         pbR/tGRzcd50tTq0S9CKL8iKLQljwmztCn0WfpDmyyCf3NjVM+8VCO1qnF63MdN4YcHo
         csZycJAxl0hAx69vDKWtLO9hfFoYGlRNzTtM/ZR47HkvZIdM8r62osnF1vQVjm8kmnV6
         okFH7pkv7rOM3yHosHynjo0w/rJRG2toHVAJxqIWO/s7ERqrhsqo+feizb9nNf3eKUAL
         m2gokukVCSBqedoVfYJ9xoBE2tyi/NQEDYe55Hmsmq0oK2rxuB+DCZwEFIh/aJSjq8WI
         WFiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5Zxnyq+IF+oPZ697iko9LGu4zNdnwrYww65OvQEmsAI=;
        b=Lu3SnZB3/+TZiRtTuu4tJiY1JYbtx+8+K9pRcjw1SiT8ogAMuJ5iu16HM+dnOP2r+A
         vP41vicnzphpmLiZ1fgwd35LkMXsuZp6KBEXZPfy0sGeRFr4xlSE85cUvhG5vBmlzVAW
         ZEx+lO9J879N0WGARcGxmWUEJg0ndnaLldx+a99B9886+9bBuy/pigJiP2rIcqAzGtvu
         gMz09QKzgxPmCmqQFPCpwCRcpcGg+9ScAlqx2zKF/cVVwh/FIpcRq5AG75sP1a50xDLg
         sLCZlYfa9MkNELAtM3jCOUGFAHLea7vEW0SBBYeHlv8vh8YLqQBPCKju1MKjgph3MtfA
         KxXA==
X-Gm-Message-State: AOAM532OxLGyPWb26NIJ59cZAqDCSU//p2GYhbcVbLly9Y25gdbn0/Nz
	e8FN+QR80SOgr+v2AhMTSDM=
X-Google-Smtp-Source: ABdhPJz9D39eKWMiSKSFooKLiLhdy35wpwOO5QW9562dVcDqdxOQqj35bHMOgoy/PypFz2Q0eLSRXA==
X-Received: by 2002:a05:6e02:c25:: with SMTP id q5mr39811488ilg.286.1609096852778;
        Sun, 27 Dec 2020 11:20:52 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:845d:: with SMTP id l90ls14296604ild.5.gmail; Sun, 27
 Dec 2020 11:20:52 -0800 (PST)
X-Received: by 2002:a05:6e02:1311:: with SMTP id g17mr38786285ilr.223.1609096852298;
        Sun, 27 Dec 2020 11:20:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609096852; cv=none;
        d=google.com; s=arc-20160816;
        b=TexpP75W68P+fpsuU0wLIBEC2j+6HI6rT2L3NuWoFNGjur3GPZhHZNpNhmecOppxj0
         xpYuO9ckzEEP66e98ACvgPK3Llr32zq46PPNzr9aik+Nx95AfeDNwlYt6GbozncPnhj1
         kk53IpAmnOmE+HJ8IgZWRJ/6Xcc4rDx06/otT3YJQrxFghQ5MDaIpJbirvoXoeDeeagg
         INcicPrbP8JTzA9EZe9WPXzQUmG4OPfrv/xSZ1xrf6/N9H1yGvl/TK0EAXSwOlCZWc61
         pHBckXAa+TxyPrx5nXWLpdn6we0/JDD1d7u/TFbeQgwo58dsMe2/bqNM0MeqsKl8t5r8
         YTFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0sVC8j/qFLW+R/BiCcbxfbFuWt0QadRRyfbTVS1VwHY=;
        b=I7fhXyzhRiUW7EOgYZqE5mlDH0cHZN0CMCwfsOM4yESHiPg0uM9q/9hj+TZrt0nOEq
         BCmRo5adSAk9k3Nf3seikUa9Kezq4UUgjiryeNvcDN3TI+vRPamRMhDRsFPUk+JRUMdq
         Laxt6blgkcnkwwA0gNjjR6be/ea/fDnL/zTnCkVWaN7ukgsnLal+TGCt+p+MLDpyhJcV
         +HkivONoxCRFn7yaynjZpON91kiKjHqEuxtCEXhdPiTjS2SHv+VkV/4546vGxVQwTepl
         QxwjfKjdfF3N3kVeAqcoimHYmkA7vDDRh4uYIRhdGCJFB+2QbbI09YPKEl45rQey/LJA
         kvyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=snNRM2UJ;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id e26si2538161ios.2.2020.12.27.11.20.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Dec 2020 11:20:52 -0800 (PST)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Received: by mail-ot1-x329.google.com with SMTP id o11so7610746ote.4
        for <linux-ntb@googlegroups.com>; Sun, 27 Dec 2020 11:20:52 -0800 (PST)
X-Received: by 2002:a05:6830:cf:: with SMTP id x15mr30498943oto.55.1609096852047;
        Sun, 27 Dec 2020 11:20:52 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id v17sm8555011oou.41.2020.12.27.11.20.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 27 Dec 2020 11:20:50 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sun, 27 Dec 2020 11:20:49 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
	Peter Zijlstra <peterz@infradead.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	dri-devel@lists.freedesktop.org,
	Chris Wilson <chris@chris-wilson.co.uk>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Saeed Mahameed <saeedm@nvidia.com>, netdev@vger.kernel.org,
	Will Deacon <will@kernel.org>,
	Michal Simek <michal.simek@xilinx.com>, linux-s390@vger.kernel.org,
	afzal mohammed <afzal.mohd.ma@gmail.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Dave Jiang <dave.jiang@intel.com>, xen-devel@lists.xenproject.org,
	Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
	Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
	Russell King <linux@armlinux.org.uk>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	linux-pci@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
	Heiko Carstens <hca@linux.ibm.com>,
	Wambui Karuga <wambui.karugax@gmail.com>,
	Allen Hubbe <allenbh@gmail.com>, Juergen Gross <jgross@suse.com>,
	David Airlie <airlied@linux.ie>, linux-gpio@vger.kernel.org,
	Stefano Stabellini <sstabellini@kernel.org>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lee Jones <lee.jones@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
	linux-parisc@vger.kernel.org,
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
	Tariq Toukan <tariqt@nvidia.com>, Jon Mason <jdmason@kudzu.us>,
	linux-ntb@googlegroups.com, intel-gfx@lists.freedesktop.org,
	"David S. Miller" <davem@davemloft.net>
Subject: Re: [patch 02/30] genirq: Move status flag checks to core
Message-ID: <20201227192049.GA195845@roeck-us.net>
References: <20201210192536.118432146@linutronix.de>
 <20201210194042.703779349@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201210194042.703779349@linutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=snNRM2UJ;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::329 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Thu, Dec 10, 2020 at 08:25:38PM +0100, Thomas Gleixner wrote:
> These checks are used by modules and prevent the removal of the export of
> irq_to_desc(). Move the accessor into the core.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Yes, but that means that irq_check_status_bit() may be called from modules,
but it is not exported, resulting in build errors such as the following.

arm64:allmodconfig:

ERROR: modpost: "irq_check_status_bit" [drivers/perf/arm_spe_pmu.ko] undefined!

Guenter

> ---
>  include/linux/irqdesc.h |   17 +++++------------
>  kernel/irq/manage.c     |   17 +++++++++++++++++
>  2 files changed, 22 insertions(+), 12 deletions(-)
> 
> --- a/include/linux/irqdesc.h
> +++ b/include/linux/irqdesc.h
> @@ -223,28 +223,21 @@ irq_set_chip_handler_name_locked(struct
>  	data->chip = chip;
>  }
>  
> +bool irq_check_status_bit(unsigned int irq, unsigned int bitmask);
> +
>  static inline bool irq_balancing_disabled(unsigned int irq)
>  {
> -	struct irq_desc *desc;
> -
> -	desc = irq_to_desc(irq);
> -	return desc->status_use_accessors & IRQ_NO_BALANCING_MASK;
> +	return irq_check_status_bit(irq, IRQ_NO_BALANCING_MASK);
>  }
>  
>  static inline bool irq_is_percpu(unsigned int irq)
>  {
> -	struct irq_desc *desc;
> -
> -	desc = irq_to_desc(irq);
> -	return desc->status_use_accessors & IRQ_PER_CPU;
> +	return irq_check_status_bit(irq, IRQ_PER_CPU);
>  }
>  
>  static inline bool irq_is_percpu_devid(unsigned int irq)
>  {
> -	struct irq_desc *desc;
> -
> -	desc = irq_to_desc(irq);
> -	return desc->status_use_accessors & IRQ_PER_CPU_DEVID;
> +	return irq_check_status_bit(irq, IRQ_PER_CPU_DEVID);
>  }
>  
>  static inline void
> --- a/kernel/irq/manage.c
> +++ b/kernel/irq/manage.c
> @@ -2769,3 +2769,23 @@ bool irq_has_action(unsigned int irq)
>  	return res;
>  }
>  EXPORT_SYMBOL_GPL(irq_has_action);
> +
> +/**
> + * irq_check_status_bit - Check whether bits in the irq descriptor status are set
> + * @irq:	The linux irq number
> + * @bitmask:	The bitmask to evaluate
> + *
> + * Returns: True if one of the bits in @bitmask is set
> + */
> +bool irq_check_status_bit(unsigned int irq, unsigned int bitmask)
> +{
> +	struct irq_desc *desc;
> +	bool res = false;
> +
> +	rcu_read_lock();
> +	desc = irq_to_desc(irq);
> +	if (desc)
> +		res = !!(desc->status_use_accessors & bitmask);
> +	rcu_read_unlock();
> +	return res;
> +}

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201227192049.GA195845%40roeck-us.net.
