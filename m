Return-Path: <linux-ntb+bncBCUYFO7N5UDRBFPX277AKGQEEVV2OKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8662D8CC1
	for <lists+linux-ntb@lfdr.de>; Sun, 13 Dec 2020 12:31:34 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id i23sf5252022lfl.10
        for <lists+linux-ntb@lfdr.de>; Sun, 13 Dec 2020 03:31:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607859094; cv=pass;
        d=google.com; s=arc-20160816;
        b=gJy6jEqDMsQvhLRNNpl2K2gqi86mrlol4jvLQSHzAARUAt90686p8waWknvyMFzyKN
         xsZEJY/dlvZEOPxzYCAEWr2NeKTwUDb1uEyjExMTuCILTqaZcXwdaPzLmk/EFl+cmen6
         bzZ48O2OmU6Kh7S7dD/eSyB5HOl6T2hfSch9kVEorKXvO399oUJe6JJ2WtS0fHaPYxYn
         DkyirjcmIqbUcOm0Ag5iB93NVe6o+6NlRzz3Obvn0Gn5raNTOyZhrt/drIvI8f0gSYQD
         1efwuVCtwTFtTEo9zF4h5EMZzeQlZ8Mot0a+C/zLC/Z8VO3Ttj3o6v2csJBzW9E5Rcew
         tyEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=oxFtSo9psXtG1xA7AWGYU+dhAPwPAOxsbTxY3ZLBJSw=;
        b=lN7vVr/ML1RCZGOYuA+Kqf05UaLZVzbN6Y+ev3YODQWd/qr98z/8IYSk0Uz4cuqnUc
         A3vVtW+Hzwxj894/vmMMg35PF0PgyjU8/7Z0ajVrK5q4Mw+WyLbGHtmTX4dFFSY2xZra
         CEMvR6Vo1P7Mz8xD0vrKsIR8C8co0XM6N4xM+cPZht+5VDDUcLLFgcZwfhmlFWnJVMTg
         DLxWNSMP/nCYT/uav/ThuAKRz+c4MsduFBsyVd5N0hoD0YqE71hXuzZzNno02DXZ1jLG
         n3Qa7hB7IteyyvLwi2obWoby2trQRD6xfLdwCPJdi3/Tc5rU5gmbYCJTBXn42FswsyiG
         eR1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPvvh2iQ;
       spf=pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oxFtSo9psXtG1xA7AWGYU+dhAPwPAOxsbTxY3ZLBJSw=;
        b=VI0QzznnkFHxxmTqI2jBoBEuCZr2/Qqj2WI5GcLvPAOOnFtQg1EAFqvdaPoDEVWZoH
         Q0fKKlT7gK1xrIBhk4n8Fs24HMIYFR8PURXVDhxDecbSvUwEFihRb4zNdUGikQ8ZVzJQ
         lCCi4TU7/mUJ/xRk5ctiiOSouunIOG+eYctkbtz2awjTk9Mm9ro+30BbBkuh/LnNgEhs
         9yckrLXn6uesa8j5SYvBP948bNb6BfEXhW3+lLWvaeq1nNdGslSzvTCdoPcrTBDVGeWm
         yEDB6vKFFfTNVeTGvWIWV6oSk0vzjiO5eamUr2zMjQaqpaciwbZ8dm19GSUBMBn95D0f
         tKww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oxFtSo9psXtG1xA7AWGYU+dhAPwPAOxsbTxY3ZLBJSw=;
        b=Lh5K/b/Oq/d2opDaBPghc8B3enau5UunbvpGAa6fl5QeOreYFdy8h15N44Tpi+fbuD
         i58zoRzyImcl+te/9jT+Ho3UCAZ6IyLKD7vGUGMuUYeIlKyv/zfMQ7+pabTmt/aiM4O5
         npG5KyPCgR1lQMS9tQTjjTnZDBkzP/3dJbFwmYmsWlLcXqygJlasSNUmu+bG2orOuaO5
         3TO1FSaqeNYCnzZLkISdv1dMdjHskM7n7ddVG9+QaJ0pDlVsb5MUkxOpMGqW1KxfCqK6
         Fqx48pv863pVZ8CUDsxInzHJ63RLxSEqFYRqXNGDsWRLcnMpEJJDbEfARTk3PONPyd20
         TP5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oxFtSo9psXtG1xA7AWGYU+dhAPwPAOxsbTxY3ZLBJSw=;
        b=LON7q0Gazap5ChODeYPpThC9IKXqZSFMqtUbWW/T+F/6yv0+7M6ieNR1J1T/OHAOsN
         kJ1RtqGXM2urG1tgBGcwq0tBC1FC3JaOnDWQBGIamF3CC7lkrOpDJnzl++3OnbIfR4mF
         T3yOaFrR1p61nHGWK+pQcUCDpCXLLxx/fp56bn7ZDlVr8gCkqgjkpU9gGMPvjTOl+RAD
         DIhrI0zuQnY6E2f8ExFUWcY8+hXOcaDABCBqaEfyXklofCd1PbCsHrNQrF6rzAkhD0YU
         diPzh8GougxEtQSZTD74CpPFgjKjCFlGcS3XdOf3hFLK3GvDD3KrxkNBl34uyNuXoRHr
         N+KA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533djpjoXsc4/p98lfo+MYIU+o+0QU1U77a6vAnQZ31emNADwlPq
	PzgslhlbD7kYOwiI8ioISc4=
X-Google-Smtp-Source: ABdhPJwug4Y5ahJujzy6S5RSKFiIMxgdqUJ29fyYGPih5iEwweS0acoNuvc0vCm/EsPAg/aY07Kk1Q==
X-Received: by 2002:ac2:5c08:: with SMTP id r8mr7579081lfp.12.1607859093905;
        Sun, 13 Dec 2020 03:31:33 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:8055:: with SMTP id p21ls2404597ljg.5.gmail; Sun, 13 Dec
 2020 03:31:32 -0800 (PST)
X-Received: by 2002:a2e:b889:: with SMTP id r9mr8062627ljp.44.1607859092712;
        Sun, 13 Dec 2020 03:31:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607859092; cv=none;
        d=google.com; s=arc-20160816;
        b=a7oPskic5+jD7tnF9GYcG+gUmlV++MlkpddgSwGdG83Esf9sJRUyPoz1k1OC/uGH7n
         aR2FeN2tL4fICUyv3TcRWo8ccqguLMxd6yFzD1zeEvDaW2JIlcH+TksnpwUyG50W/shz
         0kiUFTbqlntLtzbsctJx5T1jLVW/8cD/LyXjmCblOMR04KPtSPE48NriwUTTffnqWDVE
         wytUocOdbhWYhn/tkDETx/T3nb7z1u2Eo8RELTs6Wnb78NSa9ELXl6GC+SCXRnrnRmWk
         i5EyqjdzBrAr+vp4Re0Pab8RDmBPS7tZf6Qo47fW9v8gOWtepTmyUbLvQKr75/WxrOui
         sOmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=TjWjwM1ceLhbF1IYJl3oWPHfyZ88hbVMXIeiKOfmwOM=;
        b=yHnktGR3upQW+wWHfGILvj6QxVCv7au3PB6r2nZSnnqk0lUpyxofup3kN3vfKRCNNV
         bDoUVUTTUy8gYpDvlqy4c4lLi/GuiRkTD743FFDvcCCT10OhCq5eQcuriUIBtZE21iUg
         FJKAZqZonSjFIq4peXdW5o5xgQXKo8yjBYNi2K00Webn8MgAxe1BpIPsHKH53S1HYy0D
         Z2XtWpw5YNW88B10i4haAzFI96tl41TW8w18aBkHtzd2Fkq2h0ZZK50NlCyiH5Ao11K5
         p8wvxFrl6DD2nWOj7ZrYKtQiWE+nnnajMDxTnnoi2RiRBvag+Xl7PB8oqxIN4yD/mtT6
         3oxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPvvh2iQ;
       spf=pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id q28si523998lfb.10.2020.12.13.03.31.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 03:31:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id ga15so18611284ejb.4
        for <linux-ntb@googlegroups.com>; Sun, 13 Dec 2020 03:31:32 -0800 (PST)
X-Received: by 2002:a17:906:4bc5:: with SMTP id x5mr1966810ejv.55.1607859092305;
        Sun, 13 Dec 2020 03:31:32 -0800 (PST)
Received: from [192.168.0.107] ([77.127.34.194])
        by smtp.gmail.com with ESMTPSA id d6sm11014971ejy.114.2020.12.13.03.31.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 03:31:31 -0800 (PST)
Subject: Re: [patch 21/30] net/mlx4: Use effective interrupt affinity
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org,
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
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross
 <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
References: <20201210192536.118432146@linutronix.de>
 <20201210194044.672935978@linutronix.de>
From: Tariq Toukan <ttoukan.linux@gmail.com>
Message-ID: <57c3f9d3-7262-9916-626b-c2234de763f0@gmail.com>
Date: Sun, 13 Dec 2020 13:31:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201210194044.672935978@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ttoukan.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vPvvh2iQ;       spf=pass
 (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::641
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
> Cc: Tariq Toukan <tariqt@nvidia.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org
> Cc: linux-rdma@vger.kernel.org
> ---
>   drivers/net/ethernet/mellanox/mlx4/en_cq.c |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/drivers/net/ethernet/mellanox/mlx4/en_cq.c
> +++ b/drivers/net/ethernet/mellanox/mlx4/en_cq.c
> @@ -117,7 +117,7 @@ int mlx4_en_activate_cq(struct mlx4_en_p
>   			assigned_eq = true;
>   		}
>   		irq = mlx4_eq_get_irq(mdev->dev, cq->vector);
> -		cq->aff_mask = irq_get_affinity_mask(irq);
> +		cq->aff_mask = irq_get_effective_affinity_mask(irq);
>   	} else {
>   		/* For TX we use the same irq per
>   		ring we assigned for the RX    */
> 

Reviewed-by: Tariq Toukan <tariqt@nvidia.com>

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/57c3f9d3-7262-9916-626b-c2234de763f0%40gmail.com.
