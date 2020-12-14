Return-Path: <linux-ntb+bncBAABBZ5K377AKGQE5JK2GLI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA3A2DA265
	for <lists+linux-ntb@lfdr.de>; Mon, 14 Dec 2020 22:13:13 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id 25sf5319443pjb.5
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Dec 2020 13:13:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607980392; cv=pass;
        d=google.com; s=arc-20160816;
        b=z7uGAkJiaAEO7V29BMT+Nk8pbx1tExCrP4rkfkN4vTBfPmWdzvK1xx3y7/qfwcBALw
         mOpD48zW3r2MzpaPcGr8leBZZX7xJHh43cLm4FgvxpuGErJhMCVeNTkZDB9sxYTUsFn5
         6IYCFzayf+bs91BDLyBE2TFYFFTHGKlgWdGjKBMGqOwEMP5DTkTOHNr5rVMceya6rxUT
         jH9W7hsFP/za4RwzTio8DaCn/hPWFOFuZI+/Jr07NNMr1cKt2yt+7aKfHHYjBJI/aWkp
         LtlE3PMoS0+44L9k01AyxzbfPWOwSqLJ1WT59d1essvagHiw6iEciaRhvbAzLwhE8/jc
         tCJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=nPOeLMh7k86rO7H/vJp0UNAK+WRF+im1ryg5MNUmAXk=;
        b=jnSLA+T77OLqGotczuwwqOB4EWM/fUCbNuiY4UWsX44+Jra313FW72jVRX+brfiS2t
         PqDZKSQ/Z8U6QHzu7DCRNJ5aMpn514AcT2im/+P/9A1ZJ7KAnJi7Ep9qf9Q/6otJgMhS
         p5XQAerGBM7BsAYLA8c3B+Gyxy4GyivRs+3ENyFPiCdFR4x7ZJRbKudGsczBIP6177dn
         kxe7jWPKAsIM+hMg0YtLXDH1EOZygHCCoTXNV5LrbtN1Tu4/g51rEon5cQdHYM0vxivB
         9U3HLZ/UgAzrgw8QcIuVZwCJfUNuLb2DVtlkkvn2gvzCRM5ysvraCTSO8XAiKb8dYWVz
         ti+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ks3P3xnv;
       spf=pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=saeed@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nPOeLMh7k86rO7H/vJp0UNAK+WRF+im1ryg5MNUmAXk=;
        b=IaGOkhF4xjfgF8+V/4H9z0lbxS9drzTnjS+Se8dKmTNNgJQhD6AH0WsU8JFXLJzQNI
         7n1PB9efyflO7tldTllvxgsVWbkNXlKc5UEZDRz3jSzgqN52/Mgi50+R+4sKfT7sRUDV
         xbhqyedqji8dLzGYvMkAMLSzXeEbzEHrps4ztbkrVQRWAsrP1Dbsyit8MFvewRpRMCO+
         9vA5LiX7sk3Fe77Tu5B//F3UVe/TbpCQfKO1pAWATWy/C6WU/dGFeEVHcRaerrQIL/Fw
         RxSR5PWApAozNB5HTj54m0U1SMxc7KxNLhl64SdXp4ozWrQMaTgF1IhSwokW47xyIaw8
         elrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nPOeLMh7k86rO7H/vJp0UNAK+WRF+im1ryg5MNUmAXk=;
        b=bvtSWzyPUjngWMrQgW04cmaNmSi5dE9IOqTsLGQ9rpu6haTXDclvWVIY47jh5vaVBT
         x5iLt/ax2pne9z7aYeEp3KAjvSz+dKl1hiN6oj4rRfWeXy+WYL8c5dEnSsjBur/qi+74
         QywmPOTRyHt/GL/91xj7xkkLlHw2K9HpF4Za8dPldus3i9DLtpl9dU/V3x0t7/tCk1td
         W8FvvetKCuy17JVKExyzuRefAvxtwidelwDtqO8K1/0f61Nsr9TVslt7sP//PoxcAhuS
         riKk3Sm5veBJjK55rj51NVWcXX93Bki6RVWbW/8ugSYqBRakq58OD5N+Q9hkaN3YYuyT
         tGSg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531mn8kfqc4iMK+f8jrZf+s1Tqzg/FrRebAFcgZc+OqS/9Phlwq+
	OAkbZeoPFyG5Nvu5KwxtAOc=
X-Google-Smtp-Source: ABdhPJzy/9mtOYKMGfXbz7hHkVDF4PkElVFP6amV/hgz/JX5ZdQhVt4fwKVTTNjDrKpBu5cMfWvLBA==
X-Received: by 2002:a17:902:c583:b029:da:b32c:cf9f with SMTP id p3-20020a170902c583b02900dab32ccf9fmr24472786plx.44.1607980391986;
        Mon, 14 Dec 2020 13:13:11 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:ac0b:: with SMTP id o11ls9228947pjq.3.gmail; Mon, 14
 Dec 2020 13:13:11 -0800 (PST)
X-Received: by 2002:a17:90a:4cc5:: with SMTP id k63mr10358322pjh.202.1607980391471;
        Mon, 14 Dec 2020 13:13:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607980391; cv=none;
        d=google.com; s=arc-20160816;
        b=Xj2P9A3Oa3ECfETkCCkFSOy0prq6mu8j/iKrn0EQELpMWYjLK+6BWPE9bEcK0bhtxF
         Rl32a9VwP+ESb3IDdv4fUjM1scOUn64QOMRmgSORXggfMAptKvdAS39fQjajE5tNIU4t
         ITyaNb7x1310UaXjXsNielMnJ2U9KRo5Hc4s4guz2A/CLWwWATPH5uv1hGzR0/sThWLq
         HRizjAP8ZBOskJdxEegh6mmjgGEDyK63NvCyjPF5jHrdsEJpWmmW4NY1xHNti4LMzEBe
         BQ+8ZYOuW2y6dnim0mmkiQ99Rwo3EtuY2YY4PRkxJB7YgX5Z7+X+5C3dcUNccGTAIQa3
         JjXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:dkim-signature:message-id;
        bh=sNG4Zt7ThoLC+d0ennIqKin8aW4cS5Pdf+M4jr9sICk=;
        b=s0ODo5ybP5rgo9eTrKd9r02EXcDp0CqlUTaN+QtIHBziJ8t5FJSRU9AWSW9qgJ85DO
         otl8155Kg8LEH+7/m8E9vAqJvzLmNeCo0t/iTREjYeFXyv0McDy07rOiwaPNXznHKzoO
         I/nQQZvFPEVNbn0jCQ0hhn8WUQUm3kG3JMmWUMxej3TWE2p7mkoDSdr/G13kgzDFsc5V
         TMAGxrpjl/DQdBd6VUCGTlsVDJdLtU55VWjAfiQZSCNGUrjRLf4J/qSlPa1s7SmRH50N
         8WNkh8QP+LlsADFeDTxIjbHKMDJTOFlymWeqmQp/mU0vxXf4VGku3vgm/hvxHybpKw3X
         oeGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ks3P3xnv;
       spf=pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=saeed@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ne6si1126597pjb.1.2020.12.14.13.13.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 13:13:11 -0800 (PST)
Received-SPF: pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Message-ID: <0f8eda3bbed1100c1c1f7015dd5c172f8d735c94.camel@kernel.org>
Subject: Re: [patch 22/30] net/mlx5: Replace irq_to_desc() abuse
From: Saeed Mahameed <saeed@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Helge
 Deller <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens
 <hca@linux.ibm.com>, linux-s390@vger.kernel.org, Jani Nikula
 <jani.nikula@linux.intel.com>,  Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Pankaj
 Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Tvrtko
 Ursulin <tvrtko.ursulin@linux.intel.com>, Linus Walleij
 <linus.walleij@linaro.org>,  linux-gpio@vger.kernel.org, Lee Jones
 <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Michal
 Simek <michal.simek@xilinx.com>,  linux-pci@vger.kernel.org, Karthikeyan
 Mitran <m.karthikeyan@mobiveil.co.in>,  Hou Zhiqiang
 <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>, "David S. Miller"
 <davem@davemloft.net>,  Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org, Leon Romanovsky
 <leon@kernel.org>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen
 Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, 
 xen-devel@lists.xenproject.org
Date: Mon, 14 Dec 2020 13:13:07 -0800
In-Reply-To: <20201210194044.769458162@linutronix.de>
References: <20201210192536.118432146@linutronix.de>
	 <20201210194044.769458162@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
X-Original-Sender: saeed@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ks3P3xnv;       spf=pass
 (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=saeed@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, 2020-12-10 at 20:25 +0100, Thomas Gleixner wrote:
> No driver has any business with the internals of an interrupt
> descriptor. Storing a pointer to it just to use yet another helper at
> the
> actual usage site to retrieve the affinity mask is creative at best.
> Just
> because C does not allow encapsulation does not mean that the kernel
> has no
> limits.
> 

you can't blame the developers for using stuff from include/linux/
Not all developers are the same, and sometime we don't read in between
the lines, you can't assume all driver developers to be expert on irq
APIs disciplines.

your rules must be programmatically expressed, for instance,
you can just hide struct irq_desc and irq_to_desc() in kernel/irq/ and
remove them from include/linux/ header files, if you want privacy in
your subsystem, don't put all your header files on display under
include/linux.


> Retrieve a pointer to the affinity mask itself and use that. It's
> still
> using an interface which is usually not for random drivers, but
> definitely
> less hideous than the previous hack.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/en.h      |    2 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en_main.c |    2 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c |    6 +-----
>  3 files changed, 3 insertions(+), 7 deletions(-)
> 
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
> @@ -669,7 +669,7 @@ struct mlx5e_channel {
>  	spinlock_t                 async_icosq_lock;
>  
>  	/* data path - accessed per napi poll */
> -	struct irq_desc *irq_desc;
> +	const struct cpumask	  *aff_mask;
>  	struct mlx5e_ch_stats     *stats;
>  
>  	/* control */
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> @@ -1998,7 +1998,7 @@ static int mlx5e_open_channel(struct mlx
>  	c->num_tc   = params->num_tc;
>  	c->xdp      = !!params->xdp_prog;
>  	c->stats    = &priv->channel_stats[ix].ch;
> -	c->irq_desc = irq_to_desc(irq);
> +	c->aff_mask = irq_get_affinity_mask(irq);

as long as the affinity mask pointer stays the same for the lifetime of
the irq vector.

Assuming that:
Acked-by: Saeed Mahameed <saeedm@nvidia.com>


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/0f8eda3bbed1100c1c1f7015dd5c172f8d735c94.camel%40kernel.org.
