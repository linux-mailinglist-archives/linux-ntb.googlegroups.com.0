Return-Path: <linux-ntb+bncBCUYFO7N5UDRBJPZ277AKGQEVCNGM5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5EA2D8CC9
	for <lists+linux-ntb@lfdr.de>; Sun, 13 Dec 2020 12:36:05 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id z12sf5238296wmf.9
        for <lists+linux-ntb@lfdr.de>; Sun, 13 Dec 2020 03:36:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607859365; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yrx2BKWlJMAJ5xj0AwzKFubQ5FQD1ME6CWJdCjpfVHntF+tKnP3dd7++WyT+8xxOh+
         cwGqEyWy8uaGikLnh0VO98fI+nNNB1B9bE2rrh955pXxEMJxdzveQNP1M1+DFwXk9isK
         ktSYNuv5MSfmh5GNuZ6MYOHT95bpVunsMW5m8xdIt0VJEP0Jhq0JNaJym7VD1I55Yd7C
         hvbHOmoG4VjS/FNyZi9sLSzL8/K0VyDptm3ezTGxau5UBMb+w86JBET5Xy6QRnDj4pH0
         Kv4bxVALl2PUtd0sWpmH/MJTm07PqISon5wHDNNHYs1DTJRYZ5SdcZfT+iIqxHAM4nvY
         fhFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=B4vtD5odtHhIkUELdkimUD39g4GgK6H1zybGeiRXk4c=;
        b=bq007mi61An5seBwe29Mu85lkEuog4o4v9gfH7GRAz9tkRLx54bPnP6QjV2DdkXA7z
         MMDST28H1WjOSN0hH+GTjJjn+mP8RnBg3x+lw/dQcqIr85XXRrEyP9rKz4xs53xE/7Zi
         xwHe8SIU76PegzW2Ghu6UD2n5MGhI/TXc0SRpQs1KJRU5Z0ac6HFsOljCGmuCsQcUHoH
         KfUd25a+A/Rh1NXxcM/REDW+C93o62bUd775aVLsJ9ksrRM0/gZTzx3vHGOd0bcPsK1c
         Dx8odv5uSYXNgapWGVYokMzk1LZE/lMDn7AovBDZqTUBmuqn+PNsgon5IJY9kw2YarOr
         lPpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c6i+ahBj;
       spf=pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B4vtD5odtHhIkUELdkimUD39g4GgK6H1zybGeiRXk4c=;
        b=WWwUs/mEmfTeWsiyg6VtQbSXysCbZhprKIdWrklvwu/S/Pjs7NcWeyBmX0Ph6yz0t/
         vxzvcnEQlMVaKGcv+8jfAASX4jYU/X398e3pA1kKh6Bv34qrIXmC7fGjx/XoEzWpaV38
         IlK+9mHEOF58Fw8tygStK7TXV7xJn9Vc98hK9vxK/dhFBe6dtNUQmL8HP6i06UzU2U8y
         /eYHX7GF7v4VrqGyOJrKp2T4gGjTAVtb8APxxJYpo6IP2mHWjdN0rAkVLIXPkc93xHLC
         xJKnNoqG6E1pHpi2k8hW8bPHKzLAjsKa0rgtod03f33VcvM6QVaNCxjaNFob1b0nxwD/
         01Zg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B4vtD5odtHhIkUELdkimUD39g4GgK6H1zybGeiRXk4c=;
        b=sqssKHXYcR4Um0+5nqAJmDxzCllzfvJ6Kq1Uer0gc+Okm6HqoIeNDCsziMl77xhZ2J
         IuSHjh0RN0XldqIdfo8ULPsR33+vSnYwbztbZFAikHNJwB71mRGXMUzfh7U8E8Xrq7so
         zqCxlUo4fnwxxYwm5ICxQd911vo4PhiMWZMithWJcN7wdvsNRuT8yBUverMgpR9HyeQp
         aXCx5vYigomW9sHNilnvyrQ9UcYGXI1e1QbEJPvy5562SlbCkyorCaOZBcS86oslv6F6
         0VsWgdmJqLiHdAsHI+oOOTPomglBObi6lfXuTJ51Vs/m8e9cuoo5/dSCItvZEbx4/qWh
         jRVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B4vtD5odtHhIkUELdkimUD39g4GgK6H1zybGeiRXk4c=;
        b=lICgXkreOXCX2OX1/mg8z+AuY2D3gIalH/7KuXWqz2a6a1OnrywFrvMxHa3pH5HAFp
         hFWSZMEgcZBfjyennZKyp2joVXpZiecSTGSG6NJw2rLY0IQVJdBGdXfmpQTJyuTIWXbG
         17in+8kLlOv/a2qxNnVHgStqqoB0/2NWORofv+SQwSapYqg91gn1MdaMO3BwEAAyfy3X
         WVPVUPCpP+043hWPgNHONIjbvwELbvdlCYQbo3s148dYDVHzSuaiii6ZnJmjwPrx17Kn
         tmXJPZKrMBiATtWJ/+5uFYEk6BSjj4Fu5g0WjdXyip8NIuhCQmjSxlDX+hRNGsOEMWb2
         pUhA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531LZLDWhoFiN2yKt+kYd9ednOEWxcl4JgqDYUUjSAO+S/1uutOI
	oPQCJ22DG/1JSD25zB9L4b0=
X-Google-Smtp-Source: ABdhPJxe61G+tdVPA6Ofbjokv8BoyRxhWI9ahvieM5zlzz8kZv7f4WXS858yh8neoAEMx4bz9aeTeg==
X-Received: by 2002:a1c:98c7:: with SMTP id a190mr22648648wme.184.1607859365419;
        Sun, 13 Dec 2020 03:36:05 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls9116658wru.1.gmail; Sun, 13 Dec
 2020 03:36:04 -0800 (PST)
X-Received: by 2002:adf:ce90:: with SMTP id r16mr24123873wrn.100.1607859364439;
        Sun, 13 Dec 2020 03:36:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607859364; cv=none;
        d=google.com; s=arc-20160816;
        b=L5zblmWjDR/N+oKN9M7JdDSyykAUm6BEIWhWRAYnrzWS8ZwYk50DHqqc7uHuZgfQM5
         loJJ4rl9F4deFcNc9mby2WWq19F4Uzh2/IPdjcTj0wsTdKtFSjkR/7w8JfYmj2bbTHo8
         s6DKD0dXfEcvBCh5V4doxE3l5u8RMfg1gnjG5F9fcrrZ6SCsyK3Ms0XCHVM+dOk1iELZ
         KUWOWUmyUC5mX2w8A9cWTmvAT99fhf3hrmwH6/+CK6dZIKHMmWbNmaC58nGI7fjXcKv+
         zuBLEcwXJrLjrf9Mf0DSyXc9nNdVyCkvhsnc6hERqsikVNLZhfeUSALKlRBU9Oy0uLAa
         /kBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=yO3vpR//yJ3KukN+tPfw/ullrK0O2qQE7kKjDuWCMp8=;
        b=xVVHvKD8j+JLi9oy5oMIFCett4sZble/rFCRWEYuE9y3/1vzMWIofWibBD46fW8kR2
         FiIspCdatuU+2xTDw99SNl43BrATnmQPDzdBTM713mMivVO69M8ummS6Sg54vIOj60PZ
         vqDbyyY5mm+VA1Oz7639trBvYfyQ+4rmuKWAZOrGXKrpFS8vpOKRAkdTk3+hnB3ZQrCt
         QCFB8GydK10IB4A8DHXEVn8sOEKnX3Hu8B3Il6FwD+EAQafZ/phisFK4PcOVrP7r/MKO
         zt3vrB8LUwAIroOZTTuuXA6GhdaL1QI+VYBIsmebfdEhv/SB8sVJ3n8e8z7HHd1UoZpA
         7Gwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c6i+ahBj;
       spf=pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 18si481193wmg.2.2020.12.13.03.36.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 03:36:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id dk8so14172069edb.1
        for <linux-ntb@googlegroups.com>; Sun, 13 Dec 2020 03:36:04 -0800 (PST)
X-Received: by 2002:a50:a6c9:: with SMTP id f9mr20130904edc.158.1607859364213;
        Sun, 13 Dec 2020 03:36:04 -0800 (PST)
Received: from [192.168.0.107] ([77.127.34.194])
        by smtp.gmail.com with ESMTPSA id ef11sm11222266ejb.15.2020.12.13.03.35.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 03:36:03 -0800 (PST)
Subject: Re: [patch 23/30] net/mlx5: Use effective interrupt affinity
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org,
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
 Lee Jones <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross
 <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
References: <20201210192536.118432146@linutronix.de>
 <20201210194044.876342330@linutronix.de>
From: Tariq Toukan <ttoukan.linux@gmail.com>
Message-ID: <f0a01d6e-0333-e929-eabb-28cb444effe0@gmail.com>
Date: Sun, 13 Dec 2020 13:35:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201210194044.876342330@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ttoukan.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=c6i+ahBj;       spf=pass
 (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::541
 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On 12/10/2020 9:25 PM, Thomas Gleixner wrote:
> Using the interrupt affinity mask for checking locality is not really
> working well on architectures which support effective affinity masks.
> 
> The affinity mask is either the system wide default or set by user space,
> but the architecture can or even must reduce the mask to the effective set,
> which means that checking the affinity mask itself does not really tell
> about the actual target CPUs.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Saeed Mahameed <saeedm@nvidia.com>
> Cc: Leon Romanovsky <leon@kernel.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org
> Cc: linux-rdma@vger.kernel.org
> ---
>   drivers/net/ethernet/mellanox/mlx5/core/en_main.c |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> @@ -1998,7 +1998,7 @@ static int mlx5e_open_channel(struct mlx
>   	c->num_tc   = params->num_tc;
>   	c->xdp      = !!params->xdp_prog;
>   	c->stats    = &priv->channel_stats[ix].ch;
> -	c->aff_mask = irq_get_affinity_mask(irq);
> +	c->aff_mask = irq_get_effective_affinity_mask(irq);
>   	c->lag_port = mlx5e_enumerate_lag_port(priv->mdev, ix);
>   
>   	netif_napi_add(netdev, &c->napi, mlx5e_napi_poll, 64);
> 

Reviewed-by: Tariq Toukan <tariqt@nvidia.com>

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/f0a01d6e-0333-e929-eabb-28cb444effe0%40gmail.com.
