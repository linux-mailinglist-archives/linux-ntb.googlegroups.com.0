Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBW4MZL7AKGQEIN2AKQA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF752D68C2
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 21:34:37 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id h206sf4850675iof.18
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 12:34:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607632476; cv=pass;
        d=google.com; s=arc-20160816;
        b=H1EIquZZeTE08FvmFra7bJcYLqc9IseJxjwI1ApAeXnjeUNZNgCG3IqDuxBbXHMKgn
         nWyLnWXkGLwJ/zSWdrUPNrxLCkvBfuEXbgd/553d2S/TMjFvV6vu80A4SbAfautRlOxP
         UHM2GcRX8QwXBNE/cZIiOFdLrVaYsg8LkAp9IyrefhRgFI9sJ0VvBj6b0Mz9R+a+GfHh
         RznSz1I0dNqu4q66ak5ENjN8psFKrUaPrwjsL+Oo2jYG0iiVlqn01SitXhSOmmp6rNtS
         WmsKfFzMy0Vo2NDIEufvwKE5tVJR/yWTGA2Wm62TFBIxycOkPkyzLx67GEtHLXZSBX4h
         K3eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=YNC4VLsLLt9wwSq5zNNTS0fQPSFpq8zjEyEVTwt58+g=;
        b=sZ/sPaJV3j3AlVtw23IQ10uNatszjx6BAWJOqvxDWuJYpdylyTu8Pwndsdn5qh9HCD
         VfHFcCPBCyQp2iiqCea/eAMaYIqotg/5/jWOL+kXrn2cx6Lhh8YdGAACh0JYZ6xuktqk
         dDPwxWoGajfo4r7BaHMe2nwwl/p7id9mxcGQVkcpyFbhf8/qKQqsydT230pPkQcCT5mg
         lQ1sSP0/JtF5pj4+rwKPyWO3lEshqxmt+U+t2U9iPF4BJXlX+P7ahUFnGgxHuZSU7H99
         l/NcEn7Fb2B4BDGAD8IEiFk6UlFdWuk+zzumTBKYmloIR2RHuXgM0uhaWjgB9AqbLyEl
         k0Ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=ommLdATm;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YNC4VLsLLt9wwSq5zNNTS0fQPSFpq8zjEyEVTwt58+g=;
        b=VAMZ0KYif8O0ScQ6zy5OCK/APRrJTYiXvdctdwLX2ImxFXSU22i2/OIWJcEWsFIpHF
         sRKSiH2ZqiDl9JAx3Nf1rGn6qgYz+0Qqb7Z3/Dy0NiVIXaaKkbi6o4BUDnuCHzZgUtxd
         rsvObgxqAw1inh9xxDI8JPxG3rqqUajSifA2692SUrZwqWdDTiuY1RnGbxET+JS0jQSW
         a528Huk+qa+I8BzWfOaMnqaxoofmgp+q4X7AXrH6bvzP/TwgGGU8i00V3IfuP+gb8aZX
         NKJq8qjhfpjT05kt5HCZNQ9e1DcoY3gTngMSeldDMtY4J3d1I7WJwwFoG+ohPOww6Pg7
         Pulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YNC4VLsLLt9wwSq5zNNTS0fQPSFpq8zjEyEVTwt58+g=;
        b=Yb22xb3sikj28P10zQbka0wPrHaOptGzhK168UrY/U473P2pUa/RSNMqvmxTvsH4ZU
         FoxP9mRZGUB0XgCR8qdQcbruFqpXGzBj1mPiB3P2Nb9o35wy4YcvZ6PRqCsI/xXc3Xer
         XmlAPVW6E8JX7dOvcU3NpNHhi0DMXS+H3mdDyQ22gHiF3iz8Rv5cC5G7M8hM3YaXl9m/
         oxRqZlb3XHOyGH70UEKEJPgzlEtuTbTM0L2PRKQgIAWXfhNQrZvdXe/jQ1P4agN1g/py
         x3t0fC7rZessKNPopAtfOfv5IzUVxVoe4aYwKBS93GVqbsz0iejUBnCxGDFxncMV2cOQ
         GSyA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531wJvw4tbZjVNGy7q+XS350ALPF7sKJL//tJ5laO9ldoMnoGX94
	ahhOnIF6nkYLLJDIXOJDcgU=
X-Google-Smtp-Source: ABdhPJzvsjgCqRLmk1y2X2896rtp2HVluDkCM8EdYN6oKhy/jlwofHc4iHo8UwoFGd7u4TKkIhrdIQ==
X-Received: by 2002:a92:8707:: with SMTP id m7mr11025761ild.217.1607632475681;
        Thu, 10 Dec 2020 12:34:35 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:921:: with SMTP id o1ls1648734ilt.2.gmail; Thu, 10
 Dec 2020 12:34:35 -0800 (PST)
X-Received: by 2002:a92:bac3:: with SMTP id t64mr10305608ill.193.1607632475279;
        Thu, 10 Dec 2020 12:34:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607632475; cv=none;
        d=google.com; s=arc-20160816;
        b=YUHEUvfCmwQTLn2KUpgCNmothBk169e/ZBoPuuYsmHO9sHTilznLjN6wF0E+NVbB+5
         iWphOb9u01TKh4eOWo7aYOj8iL3nfKHKNu133m4j+TiOBNZ1Qym4UQZL1DpcqehvmDNX
         ++02nbwaUyaO06lo2vhVIOrOaIHpSnl37oNZ2D3+hB5GrjGFgbXpXMdn+/93Bp2iPmZQ
         5pTA+h5Ehtp3xwtkXZNRXSl37W58tkk0YycE4Vr/U2GVXbS+ZmZcdqMTpAFE+iuCEsy6
         udWGzNyHJzBMHcNXowjNAF1C5bISexXY2wRRuqJkTiMa4mpjRFRVCvxR7QNI3YVqKsK6
         VeWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=noa+454Phd4GD+cflUApEkbCBzQWdQM9xVdZ/BdtqiE=;
        b=CkpJ1cbyrZCkEOyU+8KEyb+JZwtbdZvZUa8dW3FMIP63ZojeywO6BaiP1VGIKVb1NZ
         hmmKISTkkgnqLZy0vyKPGY5E12RpbAwYRVUpAQ/Cmx2GGTiEbInZMiZWeZuZwVXH48u/
         iBmAStg9kgo+jjx4wSYeSsf7K8TbTt3njQUcuXvrbVPVJcT9H9TfN2qoiIBDw5oLMXeJ
         IsLskJ61SDGqWSjFMtdGttZYR2T+MW2JX4cymZIbihnEqW1qoC/KrIjVVil2m9hK1ftD
         6ipUdcMIVdLBuGmwAXeO01FyQmI76H+/iOBq/fnAi8FcC0V3LIYhk1xZ0iUvjo7HbtTU
         ZKQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=ommLdATm;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id p8si495738iln.0.2020.12.10.12.34.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 12:34:35 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4] helo=[192.168.0.10])
	by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1knSdJ-0002Fm-25; Thu, 10 Dec 2020 13:33:50 -0700
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
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
 <20201210194044.255887860@linutronix.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <3526d997-a629-9843-7060-78d9e0a487c5@deltatee.com>
Date: Thu, 10 Dec 2020 13:33:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201210194044.255887860@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: xen-devel@lists.xenproject.org, sstabellini@kernel.org, jgross@suse.com, boris.ostrovsky@oracle.com, leon@kernel.org, saeedm@nvidia.com, linux-rdma@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org, davem@davemloft.net, tariqt@nvidia.com, Zhiqiang.Hou@nxp.com, m.karthikeyan@mobiveil.co.in, linux-pci@vger.kernel.org, michal.simek@xilinx.com, bhelgaas@google.com, robh@kernel.org, lorenzo.pieralisi@arm.com, lee.jones@linaro.org, linux-gpio@vger.kernel.org, linus.walleij@linaro.org, tvrtko.ursulin@linux.intel.com, dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, wambui.karugax@gmail.com, chris@chris-wilson.co.uk, pankaj.laxminarayan.bharadiya@intel.com, daniel@ffwll.ch, airlied@linux.ie, rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com, jani.nikula@linux.intel.com, linux-s390@vger.kernel.org, hca@linux.ibm.com, borntraeger@de.ibm.com, will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org, linux@armlinux.org.uk, linux-parisc@vger.kernel.org, afzal.mohd.ma@gmail.com, deller@gmx.de, James.Bottomley@HansenPartnership.com, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, maz@kernel.org, peterz@infradead.org, linux-kernel@vger.kernel.org, tglx@linutronix.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,NICE_REPLY_A autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [patch 17/30] NTB/msi: Use irq_has_action()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=ommLdATm;       spf=pass
 (google.com: domain of logang@deltatee.com designates 204.191.154.188 as
 permitted sender) smtp.mailfrom=logang@deltatee.com
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



On 2020-12-10 12:25 p.m., Thomas Gleixner wrote:
> Use the proper core function.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Jon Mason <jdmason@kudzu.us>
> Cc: Dave Jiang <dave.jiang@intel.com>
> Cc: Allen Hubbe <allenbh@gmail.com>
> Cc: linux-ntb@googlegroups.com

Looks good to me.

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

> ---
>  drivers/ntb/msi.c |    4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> --- a/drivers/ntb/msi.c
> +++ b/drivers/ntb/msi.c
> @@ -282,15 +282,13 @@ int ntbm_msi_request_threaded_irq(struct
>  				  struct ntb_msi_desc *msi_desc)
>  {
>  	struct msi_desc *entry;
> -	struct irq_desc *desc;
>  	int ret;
>  
>  	if (!ntb->msi)
>  		return -EINVAL;
>  
>  	for_each_pci_msi_entry(entry, ntb->pdev) {
> -		desc = irq_to_desc(entry->irq);
> -		if (desc->action)
> +		if (irq_has_action(entry->irq))
>  			continue;
>  
>  		ret = devm_request_threaded_irq(&ntb->dev, entry->irq, handler,
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/3526d997-a629-9843-7060-78d9e0a487c5%40deltatee.com.
