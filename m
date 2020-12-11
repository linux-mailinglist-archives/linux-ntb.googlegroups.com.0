Return-Path: <linux-ntb+bncBDWIJUMT74BRBKHLZ37AKGQE44HZ77Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFA52D7DA5
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 19:08:41 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id v8sf2459367vso.10
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 10:08:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607710120; cv=pass;
        d=google.com; s=arc-20160816;
        b=iSqhma+2IUaROdD0rG8d719wvXqq9kY+XFl8NKvl+BSPv6KYkAT70UAM7FTOVTNZ7W
         Psb8LEcMtVIjVnQqqKfc6Rlou4h3BeXU6GP5mul5RAfLOpR2DlISpc18YrmC2KvB5Fq7
         mSMwmPnaLokLSXm9c4hC2lld/BY8J9PhuUlZRRu+/I+9L5uPzouMaPxMOPU4svHkvd1S
         Kbl05rwdkBxy3hSMH8JImTpigfJMdlI0maziZZNQDvtMGg1lKtm9n4EeDNJu8R9kygbv
         kc9dU2s/NFn6227/ipelUwio1/Yb0dZxh7dee60dummCbRcQlu4YcN2947MjELpVaunN
         kLCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:subject:cc:to:from:message-id:date:sender
         :dkim-signature;
        bh=onohdog33r7mgLMB2746BCAjQtmFOfFG8FybT9n4kG0=;
        b=jZDQaaskJfC29mUvbBBimI5i85MuWTORULpo1CxVgLmm84Zayg1iZpQ8vd8GZLLPeS
         hceLOQRvUbJcpI6oCocoeT7Edg4YwvoEY39KaKq5wxqfvVoO1CAytfkIruT3JMvqNGcW
         lTpZ8IoQWdGiROXhvrZl8sHveVB/tB4wdB/575kwz+fdRO+/YL4aG10U4RvhOmVC/ot4
         ZaCeDD4nnivtHG0dXhjpdwHQnKkGEhlq0s9rjwT1+V6HfQukJGlLvCZ3aLuRUdufNiYc
         s6WxwUIMiQlwMqWtmM3Exljx4cmskpH2mW509yLqT5sL1DkOlcxPrStVft8SX4p67NcR
         fKWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=onohdog33r7mgLMB2746BCAjQtmFOfFG8FybT9n4kG0=;
        b=BXWq+gvqmQOd/jkrFZaelTUmDA9A2NKmOua/s8JgGg+N/irGHnoT/gwFp00y5xKQvM
         ebtzIVhhjjADDIG4DoIHGVkA0teqf76B54V8w591cZcmfWXuV4eGRbS/Z4eUec6Blel5
         hMDHYN13PV+FmpTcDeb5HIzvYzJt2+w7gsDU41Eaj01wVjMLM3ZG8v+1Q8/qzWnLRYwB
         +/hgxzzspIUDZXmr9ZEk/bzhfDe9i9R8f5rZKoJS4o+rjhyEFwKVEGdfLKmP2NGvfl03
         68ZDcTUtewjd1bMCTKGIDW8IEni3PoulFkbwGzw3kDRVL/Yc6yMel5oiLxoM6BcX4c+u
         mZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=onohdog33r7mgLMB2746BCAjQtmFOfFG8FybT9n4kG0=;
        b=AfjUPSpHDXl7B8D5LA+adH6gQnG0wKdwn7DL+SHGI0NS4V99Yjnu6FyZ6hSLLeRhOW
         OVNdJY832f8+Gjy1pTKR/RrzMy4vlcz9euBUGHmcpz2Jgr7GyeJhP9/4LzxlwhVBCrKN
         oE1MxTkR/baE9HjIsRE1JT5Ng3aeVAJIEEO7t6qxIUZtJrYxzzIbS5z1RgBTfxSDIXbq
         7P9mHEZcbV0m8jo89zuNiC6dTrUlqim3Gr9Kdk71BlQLoc94rTPn4ggiuDZ9Y7mqFSG9
         ErWbphcuniQNgCCwvxCC99usi2R6cxEb9uy6RaT6oYz4A07QOjVittV0gnUPZuLuJAX6
         PDLw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530z3gzED0/+0Kzn+3OdRUOChVZtm8QylPXlMU8ckkxcBtjjIBQi
	HC9e9cTGv3x4b9sp6CeQt1E=
X-Google-Smtp-Source: ABdhPJzkHRVNCzYWC7Q0vg2VuYLJVO4KI8v+6H2OXFUSZorvzih/r3oOnPt/R89InZbMSuOY6nAcmA==
X-Received: by 2002:a67:c282:: with SMTP id k2mr14113063vsj.1.1607710120843;
        Fri, 11 Dec 2020 10:08:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9f:24af:: with SMTP id 44ls723217uar.10.gmail; Fri, 11 Dec
 2020 10:08:40 -0800 (PST)
X-Received: by 2002:ab0:6456:: with SMTP id j22mr13698546uap.57.1607710120324;
        Fri, 11 Dec 2020 10:08:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607710120; cv=none;
        d=google.com; s=arc-20160816;
        b=tmfXS59+t7zPxZaaSOZFWaiVZXnpfJU4vhGuhv5Av93SU8XFev81gQsloWoUPEAR0H
         sNkYLgPezGUso/3qP3VGmXFnIkx8q2ysuEqT/TOJ1sedYJUxpBqIjzREBEZjFy9vmbh9
         OOQMTBBdXof/0QI8tmnIwkIEtl6g7AgwBwNu5QZSUmXPaLhDEUcRiCUt5A2OvpZHLjop
         Y3TbBYPFIsPAG/TbHDaJNd0cqPUUbyVVc75HHe/RIYQH0BEjQIKLrVWS2/4IeR/owFgn
         2SdnfGsxRcR9wpKoRFJbR53/RdgZDPNaCAYT2G/WklQcUNL6OZR6fHxBIwbxO028E+AZ
         dy+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:subject:cc:to:from
         :message-id:date;
        bh=ZYf2lHWQEbS1bsDAffdBcwlLLVva3RTyRCh1CTpsTSs=;
        b=yqnhHS+sFejhk3QzG+PJ9VsckdsLSU3UC0MDpSzGuXAKedB4VmYt+FVgiEFz59W+Ri
         GxQ1Ll4MmfiCHE4BKIKWsA05pTq/QaRNc7BW2isyPyxNA2MkioYq0HgmMO9dC9AKJX4J
         gCjewwX3My0Dp5S/gT9qqpufTQ9Ioc4rgSvMiHMQdpjCmtm3EzDis1ZYSybMF9e5//Ax
         qe6wJ7e5G/UUYmWiLnk2ONvQM/X31exbu/5HXxI9oc/VaftV1u39M7QPK9alXbeYYS2o
         ntcjaJS6FEe0cm+BaaQsKHVKXkct8S/X6zH+WKCENBAcSbU298RbvemxxR681pXjhuJp
         8biA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k67si548768vkg.1.2020.12.11.10.08.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:08:40 -0800 (PST)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3300923EF3;
	Fri, 11 Dec 2020 18:08:39 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=wait-a-minute.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <maz@kernel.org>)
	id 1knmqL-000Wxd-8Z; Fri, 11 Dec 2020 18:08:37 +0000
Date: Fri, 11 Dec 2020 18:08:34 +0000
Message-ID: <87y2i443ml.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	afzal mohammed <afzal.mohd.ma@gmail.com>,
	linux-parisc@vger.kernel.org,
	Russell King <linux@armlinux.org.uk>,
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
Subject: Re: [patch 10/30] arm64/smp: Use irq_desc_kstat_cpu() in arch_show_interrupts()
In-Reply-To: <20201210194043.546326568@linutronix.de>
References: <20201210192536.118432146@linutronix.de>
	<20201210194043.546326568@linutronix.de>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 Emacs/27.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset="UTF-8"
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: tglx@linutronix.de, linux-kernel@vger.kernel.org, peterz@infradead.org, mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org, James.Bottomley@HansenPartnership.com, deller@gmx.de, afzal.mohd.ma@gmail.com, linux-parisc@vger.kernel.org, linux@armlinux.org.uk, borntraeger@de.ibm.com, hca@linux.ibm.com, linux-s390@vger.kernel.org, jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch, pankaj.laxminarayan.bharadiya@intel.com, chris@chris-wilson.co.uk, wambui.karugax@gmail.com, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, tvrtko.ursulin@linux.intel.com, linus.walleij@linaro.org, linux-gpio@vger.kernel.org, lee.jones@linaro.org, jdmason@kudzu.us, dave.jiang@intel.com, allenbh@gmail.com, linux-ntb@googlegroups.com, lorenzo.pieralisi@arm.com, robh@kernel.org, bhelgaas@google.com, michal.simek@xilinx.com, linux-pci@vger.kernel.org, m.karthike
 yan@mobiveil.co.in, Zhiqiang.Hou@nxp.com, tariqt@nvidia.com, davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org, linux-rdma@vger.kernel.org, saeedm@nvidia.com, leon@kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com, sstabellini@kernel.org, xen-devel@lists.xenproject.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 10 Dec 2020 19:25:46 +0000,
Thomas Gleixner <tglx@linutronix.de> wrote:
> 
> The irq descriptor is already there, no need to look it up again.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/kernel/smp.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -809,7 +809,7 @@ int arch_show_interrupts(struct seq_file
>  		seq_printf(p, "%*s%u:%s", prec - 1, "IPI", i,
>  			   prec >= 4 ? " " : "");
>  		for_each_online_cpu(cpu)
> -			seq_printf(p, "%10u ", kstat_irqs_cpu(irq, cpu));
> +			seq_printf(p, "%10u ", irq_desc_kstat_cpu(ipi_desc[i], cpu));
>  		seq_printf(p, "      %s\n", ipi_types[i]);
>  	}
>  
> 
> 

Acked-by: Marc Zyngier <maz@kernel.org>

-- 
Without deviation from the norm, progress is not possible.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87y2i443ml.wl-maz%40kernel.org.
