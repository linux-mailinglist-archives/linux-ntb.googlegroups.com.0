Return-Path: <linux-ntb+bncBDWIJUMT74BRBGXLZ37AKGQEF3J3A3I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 943322D7DA3
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 19:08:27 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id s21sf1877221uar.13
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 10:08:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607710106; cv=pass;
        d=google.com; s=arc-20160816;
        b=J8eongm/+ox1HzfUi59KgHR49Adj8OEjDEvn93r9IVAa//Z/je8BGDz/8O9pbWN5iN
         ii/bXaxYh3QC953dD9gVAKwUCkgXTckZXIJt8sKLLI62CWHfgMiFL4KbG2IRCt7DpCuv
         XfHnzcTohrvvn+59AvH0GoIPR98l9GRXLhZQfBPq+4CLRFmJbW4xL35yi4h+ID14WGqR
         E6s6W3vERZWwxB4VeMfZiPCQaqiWAj/B6PnxoMgY/G82ohxAc9X1bzHFPgKySmTTBnK2
         D4vJe4pZoxymlhgxBh/RtclLfAh7QBs+naT+O7ePkD+UmN2PQYj7LVrJtvVmp61yuhsh
         2qbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:subject:cc:to:from:message-id:date:sender
         :dkim-signature;
        bh=oglJZX71xWTbK7R0mzQPjKNythbC54VQvSS2EO2F6/w=;
        b=RpK9wUekGvpqOFnOwiZXVaw3jvpTvfv4Z/veIv+5rCF9c/LlMLCuHqdpF2LnewMUQz
         rUNfy9C7+6nUZrLDBCbMNz75d9QhwsTA3W0Nb7cHh7nkRYDKAT3XXeeAeYtNtL+CGz83
         0TFZILNAgKPhJQt1h6g+m5AftoSao2RP4KN7We9xGV7R6yVImEBB7nMsTRuVwoaxHyIT
         3tzfdG8TyfQUo9wkd6OM9K+iaTsQDioMHREevo+qFwR0l04kbnk5sAk+4XWBsTVr17r8
         mWfkjUF+Oi57duunwSDGPhcz95jpgyGw3xwBdj7ZjX8PzFvxJMxIwf9MWUvv9u5WJbqt
         a2Hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oglJZX71xWTbK7R0mzQPjKNythbC54VQvSS2EO2F6/w=;
        b=EgRneVtozMvYMF+1Knt2NXeyHdyZQZRmaKc2+EKXWBkCKDF4HokdsDZWTb+8jqc0es
         4HdSwfdDCBv4oCNt/Z8UAO6kv3r/O9D1lbAAPOAmsXdJ1jRyeRXojPA3chR5tZ+5gjtd
         O5u/KjT6lc5R34ZpNSzmriqo3sIH2oyjOhQ0XEeH1AI++ofoXcl4VIgunnJC7C86znVf
         Nyxm186qFnDconhWyFmixjPj8D16JLvbj+NfAGwLPqfkjA1qVfl9oHG1S0bdz1PXNTUG
         fYYlLWwXnkFgxcYHn8/E25tE0aJ8cGGDv6fYcTyqhrEWsgxHmI3SY1MbvmvZTVUMVEU0
         uylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oglJZX71xWTbK7R0mzQPjKNythbC54VQvSS2EO2F6/w=;
        b=a7H8PckqfI5tlqQQHlReQyezzuaPtr5zPymfp3qvs2/0YQlxYiSxsEgKVg0Z3DJzyz
         z5VqLGEuoJCL8Sf4BFiZ8r4v7cGU0lOlsZIascK+0el2CLy3mFcpCUdoNNKfzSdkYac1
         Ds+Z7tYMnPxZrQ1mjtfngyXxqP/9/p02qkr/4aFllQaXrYLuFbHwRcqs3tplT2TeSJGW
         Nq84q+kUCcesukF64w3JAZ8FuuJiWojjgxyiN3P9iLFuX1MDgtBymoyrDTPWMxlV0P6j
         +2wn5C4YJEk++DLWC9koRKpFdUliyGSNrKy7wMhV4CQiIcODBoMiveWGM3/zN8CcOs6o
         cc4w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530kyOx52fscpyMNOHcMuAMWKrCmCnhmV9A6HB6KEm6R0CYUTvgA
	uJoRxqgNvlIDmi5vzeukdYc=
X-Google-Smtp-Source: ABdhPJwf7MoFu1YkLzJc6/s6ve1MBKHiUft8XreTliiACBrKnHE6M9tt8MX55pMH/2cE6n2XqT0aGg==
X-Received: by 2002:a1f:9e88:: with SMTP id h130mr15175369vke.21.1607710106386;
        Fri, 11 Dec 2020 10:08:26 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:e287:: with SMTP id g7ls1234921vsf.5.gmail; Fri, 11 Dec
 2020 10:08:25 -0800 (PST)
X-Received: by 2002:a67:c402:: with SMTP id c2mr14842676vsk.54.1607710105854;
        Fri, 11 Dec 2020 10:08:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607710105; cv=none;
        d=google.com; s=arc-20160816;
        b=MCDo+8RpsuhttfdfEA0qo3MJF4lPwtd6iCrOaipx3GGWrgv+oAARTy17PuIzWbR5UP
         oJP/+JgP0s392gonOdMCSJ6to+1oWtKw9O/IH54gKcJVXDP8+j01FxScmBYf5YvynCnu
         CQpAcrAeg5sJABbqeDXOFTeeot7RE20ac6HvTEdJqUhb/IVVShyaUWMVtu7j/DoC6gIa
         ya02Oj//rrCylmEkSoGVktLJWaz9lit/6rvIuWuz1K5HuBsyQo9h40h8pn11qCW9CtxH
         MXKOzDlz6Nfm1Sj9ln1LkM6Fe+hJw11IYcVTjMiBrRzVzUzPLQh8D4TmVnud9W3BkJLc
         tjpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:subject:cc:to:from
         :message-id:date;
        bh=TlkwGzXqoW3CqfvKys3v7Y0lzfqW2yBAQgdLtZJ/9C4=;
        b=qiExDbso7DsD8EzjZVuyx+DFlNUHHNfyW3UvNX/M/Brlkx4ur6n76Z8G99Sn4kiw32
         QwwHsOYM4KXEXqEW8J9NYC2GnZSHaAWDlRYsoIIU3VQznlKciaRsupEieRAUliBxzB9I
         dl/eI+NAmmLjf5iGn1VPe22viKhflC0b5H7iXLzSAd9oWZrBwHHJAAeizvsVNcJrUfXS
         EgCv8kQBdxeUKRZbj66FOs2f2BUd9AGVgGQ9+ZS9wpfsO7MVkGn368hHQY6Jnv70sMNk
         QAeNRRCv6HwMb/Hde3gA26pB1AAfC0mhamG1taQ45JMtaypO9LDR5M12LjtqB59xSWYs
         5BEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q22si695968vsn.2.2020.12.11.10.08.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:08:25 -0800 (PST)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 891FF23D3C;
	Fri, 11 Dec 2020 18:08:24 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=wait-a-minute.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <maz@kernel.org>)
	id 1knmq6-000WxV-AL; Fri, 11 Dec 2020 18:08:22 +0000
Date: Fri, 11 Dec 2020 18:08:19 +0000
Message-ID: <87zh2k43n0.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	afzal mohammed <afzal.mohd.ma@gmail.com>,
	linux-parisc@vger.kernel.org,
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
Subject: Re: [patch 09/30] ARM: smp: Use irq_desc_kstat_cpu() in show_ipi_list()
In-Reply-To: <20201210194043.454288890@linutronix.de>
References: <20201210192536.118432146@linutronix.de>
	<20201210194043.454288890@linutronix.de>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 Emacs/27.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset="UTF-8"
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: tglx@linutronix.de, linux-kernel@vger.kernel.org, peterz@infradead.org, linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org, James.Bottomley@HansenPartnership.com, deller@gmx.de, afzal.mohd.ma@gmail.com, linux-parisc@vger.kernel.org, mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org, borntraeger@de.ibm.com, hca@linux.ibm.com, linux-s390@vger.kernel.org, jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch, pankaj.laxminarayan.bharadiya@intel.com, chris@chris-wilson.co.uk, wambui.karugax@gmail.com, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, tvrtko.ursulin@linux.intel.com, linus.walleij@linaro.org, linux-gpio@vger.kernel.org, lee.jones@linaro.org, jdmason@kudzu.us, dave.jiang@intel.com, allenbh@gmail.com, linux-ntb@googlegroups.com, lorenzo.pieralisi@arm.com, robh@kernel.org, bhelgaas@google.com, michal.simek@xilinx.com, linux-pci@vger.kernel.org, m.karthike
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

On Thu, 10 Dec 2020 19:25:45 +0000,
Thomas Gleixner <tglx@linutronix.de> wrote:
> 
> The irq descriptor is already there, no need to look it up again.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/kernel/smp.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/arch/arm/kernel/smp.c
> +++ b/arch/arm/kernel/smp.c
> @@ -550,7 +550,7 @@ void show_ipi_list(struct seq_file *p, i
>  		seq_printf(p, "%*s%u: ", prec - 1, "IPI", i);
>  
>  		for_each_online_cpu(cpu)
> -			seq_printf(p, "%10u ", kstat_irqs_cpu(irq, cpu));
> +			seq_printf(p, "%10u ", irq_desc_kstat_cpu(ipi_desc[i], cpu));
>  
>  		seq_printf(p, " %s\n", ipi_types[i]);
>  	}
> 
> 

Acked-by: Marc Zyngier <maz@kernel.org>

-- 
Without deviation from the norm, progress is not possible.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87zh2k43n0.wl-maz%40kernel.org.
