Return-Path: <linux-ntb+bncBCUYFO7N5UDRBMPY277AKGQEYIBREHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF932D8CC8
	for <lists+linux-ntb@lfdr.de>; Sun, 13 Dec 2020 12:34:10 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id w8sf5351011wrv.18
        for <lists+linux-ntb@lfdr.de>; Sun, 13 Dec 2020 03:34:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607859249; cv=pass;
        d=google.com; s=arc-20160816;
        b=WszpX75hMGX2yU5p1xj6xG3Q/R27eFpwKYZNIXo2RLL52MmrUZtAeS6JmSd6++QvP6
         lmJEO85I3vOpEpguwOYylcM+5Cnjnpcm7pLzhf1uEb6TVcPCd72wD61ArQUkldyc2mqc
         XG8fot9gRHTm6V2uv+1HHeq/5P1CdcUS6P2LHZroChuzNLgjJbi5eh23lx1LyYhPuCA9
         uP1veMjvu4cdHP480DOjvvPurYs8EotEux+tJA93RfqRxxIfYt+MV9829FNjK+oQo5MJ
         CFHbssOzz9XeQUM90aG5tc74rZ4bmOzoVLjYAP79vqcakXNi58RmJn2RvvtNJc+oHdV9
         /idw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=36Z0gXu1XE1BIHtwhYVCaYExywPNrkYCYd4FbjseIt0=;
        b=ioVQ1ygGRF8GZ/Q30WiBIuqZbOYLVDHuXFuTkId9d1ZRpbAeGVRrt2TIXlLobyP6oQ
         dXtuwOi3yuT2VVmBtV/R1J45v14Li8n45IXe718XP9b9SMdQYVV+7P5LmkXeRGF8l8CX
         KoQ9D3azlb4pBd0cJ+ANcqN+OQDkOdkwMKo4+xkL1HY5xnd863gLEAxRNk4TwE8yXbVF
         2OPyJScMY6eH2maWN/JD4l+szH3wyJq+gkxq5BFgnuO5BaiisbPGEaNS9jN2p0fB5f2N
         hIYH+s3ekM4RtropBtg8CEsFx6E9GNQq8170fyI+Lb6BKJYsDnbLD5jF+kcGCO8oi9w5
         WHAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dTA8b5OU;
       spf=pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=36Z0gXu1XE1BIHtwhYVCaYExywPNrkYCYd4FbjseIt0=;
        b=CJ7ltl4Xbt2eXHVzDpFwsedXR8Y/408+09hvzQ2LQxQz1qwel+JZx6K/BwMgEG6v9K
         /XZ1SfP7/hvGkB7p4jInBXOPmfCap8AXauXfqC0wgtSvlWnRqQPNeCGRtG3TK/fa3lHZ
         RIzdC8JFq/8BuDEFqAr963hMH0t0y4EbjkgtF+eWkDqSl8gQpCTbqYGdU/qt1E34LVza
         ZcRlyxrxCQpDU8xO+WeyWDeqmRZrXMnflHRF+bcI3/6k/OoK8dMZxJyTe87XnlipNxAq
         lavRQtdgIEliz93+35T7/1/Xm6aBC9p92WMgzw5OSOCB1cMkk2LpHlub4n/moeIFsQnD
         NEuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=36Z0gXu1XE1BIHtwhYVCaYExywPNrkYCYd4FbjseIt0=;
        b=e78ZkX17/NnQSjXt1S/OSjCFlVXh1W+CIuf+ZTuuWIcsu7nEmSqpqMlMbO5Dd0vW4S
         oKp8TIStPodE2NQplpCvsaykRKFv4Vx8weus+Smnhn5du/VDmffbovmjULYtTYIDwUm3
         8bcOa7jg8U9a20DymZcnOULaTltyGRyUVLfDBr8mAgx6iMIBTUWPmV/ij8NXI75z14aa
         dZNSfehRJl1/4s7b+uzDD5XlGiU715tXtO8ghmNzZYg9WYNTvlRRag5pWwtBO6Ka/Hvx
         xDiaKM9Mhp987bH1IiUI3VIyGkCRcH+KuZNdfLsCRXDVLWSijD+Nr70rL4Ohwd5GbDbX
         TMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=36Z0gXu1XE1BIHtwhYVCaYExywPNrkYCYd4FbjseIt0=;
        b=fZJNOzRbkYtDkGLsS2lvnQ2y/zInXKuytDvaJM2rL/UMQOf3DEjilEPhlwKlzUYb/o
         enx/0KEnvEy31lt6TP2AJXHLQY1E7pxNyqx8qCZGnOL17sK5SFZ8qTWA9dVfAXRicsYj
         I1TvZbpYi9fDdPf2h4f6V5kuZsa4KKn0WCaG67YGMEvt/PKblJ46Y2WfNd55PSOxmWvF
         CFYPPxcBYDtmCZxWVJzEt7ZvOTl2b3UC7/fSRUxupgeHtTjrEqcJcuBgWXu1+rjMG/pw
         5JS9VTZSUV+yKFs5GTTdg/44E1l36sYKBD0LxSjrUYs24BUwtNahq0Hp4jRwt6ntJHCU
         XgVQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531F57khRHAuMEjIJwGMNOPWjHw8gzdXIJo9uRo3Sp2vmtN2/2Dt
	0voRweP31V17digDDcpIC0I=
X-Google-Smtp-Source: ABdhPJzPDAluZnYL0nJp+HTDFQambVEr5il95yshSF7lLrh9aO2PbWnCthV3rkfS3VUklgeh5fYyxQ==
X-Received: by 2002:a1c:a785:: with SMTP id q127mr18209647wme.25.1607859249840;
        Sun, 13 Dec 2020 03:34:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls9125047wrw.0.gmail; Sun, 13 Dec
 2020 03:34:08 -0800 (PST)
X-Received: by 2002:a5d:540f:: with SMTP id g15mr23675399wrv.397.1607859248958;
        Sun, 13 Dec 2020 03:34:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607859248; cv=none;
        d=google.com; s=arc-20160816;
        b=GluNuclWQ8ls2A9ZO2qliObZwtQBGIEHxArNBU2zdgui21OOka+klNeRGESsSrz3d1
         yKVpQoS2SzS5mEYJZueVyrTXT0iGxaI2AGYrruDBXZksgfJKQoUk8k3oKoOrBBBtz1lb
         kTTK7u6p5DPfmXcOEidNoBH4ol+lhGi0MByW5Qq27GJoEMRA5iSxzY7wiutGmwNIDJnn
         itUNDR0Oq+0XZ/QnXZIMkVysDup1Hjw9GlWkA80lPaB0DQuPOrHMbQHT785dGttqeZz6
         EdN8B3EGku8HU2lgIoBBMk93CHqL+LVF8sS5WLLe8rtxTUtoYkDE0gSb5CnKuyUq0h7z
         G9UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=32JDNSeqhHqyIaOh/qzFvhnj5b/m+w8QZFr6dtEN8Bw=;
        b=nn/kHjhosDgKYV4sXryiNi1M3mgNIRyVicNRQHwPwboj0xnvbMZAHycy3VQ/KzDiJF
         eVWXL/4xYk6riNuhpIDpfNr4KGOa6mxhR7U3i3tcjgcm8mG37x9sRs04N/3ZrK0C8kBj
         vbZQNc00oPTIosJp56QT4D++h90ie191w7SCDYobpEWR0EyFKQydZcMGsFey7CGd3Pj7
         L0pjXfydNY+Ee/xhVTHhn61tdb8cjnp9yM2yL1c8St1jGTOAvHaQj/oYIf+EL7xwsjVF
         6c41W+H6uSxZzE+3JD+lrZ+w0pGdOuio3YQnuaW35AS+tKWU9YtOnt6rpKoFYYHJr8X0
         6b+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dTA8b5OU;
       spf=pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id z188si45547wmc.1.2020.12.13.03.34.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 03:34:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id jx16so18594132ejb.10
        for <linux-ntb@googlegroups.com>; Sun, 13 Dec 2020 03:34:08 -0800 (PST)
X-Received: by 2002:a17:906:85cf:: with SMTP id i15mr10621618ejy.373.1607859248729;
        Sun, 13 Dec 2020 03:34:08 -0800 (PST)
Received: from [192.168.0.107] ([77.127.34.194])
        by smtp.gmail.com with ESMTPSA id r21sm1242331eds.91.2020.12.13.03.34.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 03:34:08 -0800 (PST)
Subject: Re: [patch 22/30] net/mlx5: Replace irq_to_desc() abuse
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
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
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross
 <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
References: <20201210192536.118432146@linutronix.de>
 <20201210194044.769458162@linutronix.de>
From: Tariq Toukan <ttoukan.linux@gmail.com>
Message-ID: <02be0e10-f2b5-7cbb-3271-4d872616ffd4@gmail.com>
Date: Sun, 13 Dec 2020 13:34:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201210194044.769458162@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ttoukan.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dTA8b5OU;       spf=pass
 (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::642
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
> No driver has any business with the internals of an interrupt
> descriptor. Storing a pointer to it just to use yet another helper at the
> actual usage site to retrieve the affinity mask is creative at best. Just
> because C does not allow encapsulation does not mean that the kernel has no
> limits.
> 
> Retrieve a pointer to the affinity mask itself and use that. It's still
> using an interface which is usually not for random drivers, but definitely
> less hideous than the previous hack.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>   drivers/net/ethernet/mellanox/mlx5/core/en.h      |    2 +-
>   drivers/net/ethernet/mellanox/mlx5/core/en_main.c |    2 +-
>   drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c |    6 +-----
>   3 files changed, 3 insertions(+), 7 deletions(-)
> 

Reviewed-by: Tariq Toukan <tariqt@nvidia.com>

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/02be0e10-f2b5-7cbb-3271-4d872616ffd4%40gmail.com.
