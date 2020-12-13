Return-Path: <linux-ntb+bncBCUYFO7N5UDRBWXT277AKGQEC75DSJA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B42F2D8CB1
	for <lists+linux-ntb@lfdr.de>; Sun, 13 Dec 2020 12:24:11 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id i23sf5243269lfl.10
        for <lists+linux-ntb@lfdr.de>; Sun, 13 Dec 2020 03:24:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607858651; cv=pass;
        d=google.com; s=arc-20160816;
        b=B4l16tMuRfZQIErDlMrIUsCAPwFP/VS5hZgssZRGq51AO9LyuzC3cs0W5bacL/2RQF
         g4mwxe5W5sg840BYL7jIMArJUkcV5TsH1qTgRS0IWKKNQhJvsCRASDG4W6KqmojFsA+9
         nKFF/fFZXMb8/HqIjjSsa3CQruNLEdqqU0z5HBiUKg7UxTKEnhOT+TSVAlXxrFiYMHLJ
         MC8C5IODw6BaOxLiacq2rNJTogDUS2BAOJxfNiPO0MFJbApeRpsA9R9tZ0E2cesg4R0h
         hHtjpe2spBjG3rdehB5HXmdv9Hfr3ubgBH2a8EWwa9ipYsSMLAcc6jYVE3/1qfLcgP0b
         rppA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=FCQi0bOOpZidTo8eIDq/AI1rhuqcIilTP2hMUN2zGUA=;
        b=A6Z8AsyaqnbZPPwLA0w0I4ynhVekPNRMV23PIgYJZ5pnmjYEFXVPOWDNNTON9yfiqo
         YlG1HJYeHGMaDaj+Go9kDJHiwXG5L2GhjqGRfro0lUGQtS5SJRV4XFjmbsh1g8i1V3YP
         aqbNTXs25xWgBYXJZIUPK5c05XVFY9A73TQmlUe5ziUhIBy6rCvfDQAWvhg7xasWsp4q
         sPg0akQ68QPeche8HWQfXyX3ZK1+J4TukRLPWcTUgk6W2VxBMc6tlV4srK+0yIb2m0BU
         vqe7iBGB9TAhSG6d9Xkp+BblosYmGLUDqk27FteDjsVWA00j6BkGFtpYcA2vRaRwA8TE
         LLOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bQn+oB1J;
       spf=pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FCQi0bOOpZidTo8eIDq/AI1rhuqcIilTP2hMUN2zGUA=;
        b=bScZ9Bq9uw6dBwo2khq/J6LQ5Th8YS8l1Zg2qUrLT0l3yl/DQQU8vLskeVSwlTSN9y
         Si68D+zLLdhMt5WIL3E5ggh6xQxN29PzGc69TW/TJqyhm/UFVDMqtcp4V1PPQwAzKjAb
         S00GnJbSsiqqSQvSHEaf4LQ1JVCgtMwSjHRh+jDsx4QmjKJl8216g90MuRLqDdTAlD2d
         OAkmJ1U+Ja2z686N8Wxrf+PJ5WE7DHvDWiUO1O4GcWrVoWJwFRCg1mHKiALGOWFCgGBW
         h5AlF+VbBggPGqUPFM33+GDPSrBs6RpYf1q5X5DslkMfZQFmEnhUPkMtYSuTmFSHHm2G
         o3FA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FCQi0bOOpZidTo8eIDq/AI1rhuqcIilTP2hMUN2zGUA=;
        b=IULIkiIvwNIi5ZFNwcl0ytZzckAkyLe2GZo1Vvx/fJE00Aq5xLR/VWBxd1A8OVIQ8C
         XTGkDtayu0vIubTSh6yP2rt21ynyO07QkyFP6MgoUknmYbirPATTVO0Oe0dst9glwzYC
         RJCR0CHlU98PMq4BJ2ej8v0y19pnfCAg+d18zPDoOXAIBhe+RyQ6lUtrLZoBDMBt+V8c
         EGlDlaL8Khq4yxayWWBnFY+DeY39kRY9MHZ/0D2ddy5rWuPL5Q3OpgtGYTs35KF5rhng
         oWYpcOOTz2YzwjD2ThE33eDyHONqnlyekH0Z920vm72m6Sc/xAZVa7D4Q8O1V/9aqjlQ
         SS6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FCQi0bOOpZidTo8eIDq/AI1rhuqcIilTP2hMUN2zGUA=;
        b=HmEAjVe8S9yfToWBe6gQU2CKlIiNp5y/1Z+MgPV4/XqdpxXtlRNlXyTgWsBTTZ8sUM
         yP42KY/Yjsh4nUjXPMSfeVR3NNN3G5uNmnxU5OMqX6wx1p3aLEyfH7O9VU84jZPqxMTN
         AYRont80FbBrokSOqF/DSLYaFpqji5gxyuQNONDIroxIWmACmM32+r2BK8aCez/SY+dF
         ALr/o79aZn6ic837DP0OvSgr+sfOvvoLlELkxlu3n+nFPGAXniYXP9H9gyz8Gbj+dIDj
         U82IvJVSn5h+/4f5TfRbsmBCZteuw0Ehd6CqWIx8oFinUlrw53CGb4INjJkXz3UyfLlg
         uAGQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530XzwdJIbb51x5f2zzJc3HNDKbfkCWI87c9XoKeBV0w9frillv/
	GFOzj6AQ77rkVI7mQqcXO/c=
X-Google-Smtp-Source: ABdhPJxiz1m0MTOqmzTvHslYryQWSTzw3ryu4Z2GLG2uMa5MvN3tZ0ZKvRUaBgkpEAumux0DWrzI2A==
X-Received: by 2002:ac2:428d:: with SMTP id m13mr7342303lfh.137.1607858650885;
        Sun, 13 Dec 2020 03:24:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:860d:: with SMTP id a13ls334462lji.8.gmail; Sun, 13 Dec
 2020 03:24:09 -0800 (PST)
X-Received: by 2002:a2e:9c5:: with SMTP id 188mr8035144ljj.446.1607858649734;
        Sun, 13 Dec 2020 03:24:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607858649; cv=none;
        d=google.com; s=arc-20160816;
        b=fIqrDMBzlmASQSBIX+w87Gow6FKjYSV3zkZi5FgUxLnnXld+UsfueUvo2FJ5qK9lPp
         M4jntv4U0ihkgNJtlonWLrG18YAdD1LXN32+Mc7WvyaI18ePfobd2/TpcTqPmXyINFLZ
         VhPV6uef3nFwS0yKqsHneG0Du0vU58/XCrmETcjpP/IrcfTZrRZAT3NXeW9tAIWxL6Tv
         +RdMe+Fzl6pPHKS07wssbtlYhb/ZAGUkJiUPmkyJBfaE/0aUJHjdlOhqPfTr3iWOSDEa
         nLqc5DeEzMSGxKFcpCAb3uHg6Rnr5w4hzgHPXSDnEWsV6Lg5XeTJi+XWjl6Vcl6TqWAe
         KooQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=IW66fMc7VTs1PtxS+22ry7ms1/9mizOXCdVTfKV5hpo=;
        b=XiKyEWuWS4H6Q29Sd4a6lFWubb45eHRxuEX6t8Y9SguZJafKGNudaipYQqg3BuUlmd
         PmHjY6SyF4GHVv+28f7v74Sb6nGF0QisKorer0LnW6pu6G4YBv47xYDgxBE3ZiIftWyV
         u9lXZ9aQ5um5rCy7Jk/QA898zUsWzb050Z5fyg53uOI71HZB62XEThBtV2170DtDirXz
         26Psvtt+C0d7d0XJTF7fKF+fkcyCjDda4EmE9L4iCts2Hw8G8n5oHN7fOWtiyyg/SW3A
         u2UHUgQCsot5UNnOqmvsGm9EFoUwgrQuIpeOm39e5hhdHcNjyxw4wRmaUQYi5fP/scHo
         ZeHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bQn+oB1J;
       spf=pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=ttoukan.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id r12si504635ljm.1.2020.12.13.03.24.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 03:24:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ttoukan.linux@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id q22so864190eja.2
        for <linux-ntb@googlegroups.com>; Sun, 13 Dec 2020 03:24:09 -0800 (PST)
X-Received: by 2002:a17:906:a2d0:: with SMTP id by16mr18015254ejb.207.1607858649230;
        Sun, 13 Dec 2020 03:24:09 -0800 (PST)
Received: from [192.168.0.107] ([77.127.34.194])
        by smtp.gmail.com with ESMTPSA id de12sm12533753edb.82.2020.12.13.03.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 03:24:08 -0800 (PST)
Subject: Re: [patch 20/30] net/mlx4: Replace irq_to_desc() abuse
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
 <20201210194044.580936243@linutronix.de>
From: Tariq Toukan <ttoukan.linux@gmail.com>
Message-ID: <01e427f9-7238-d6a8-25ec-8585914d32df@gmail.com>
Date: Sun, 13 Dec 2020 13:24:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201210194044.580936243@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ttoukan.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bQn+oB1J;       spf=pass
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
> Cc: Tariq Toukan <tariqt@nvidia.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org
> Cc: linux-rdma@vger.kernel.org
> ---
>   drivers/net/ethernet/mellanox/mlx4/en_cq.c   |    8 +++-----
>   drivers/net/ethernet/mellanox/mlx4/en_rx.c   |    6 +-----
>   drivers/net/ethernet/mellanox/mlx4/mlx4_en.h |    3 ++-
>   3 files changed, 6 insertions(+), 11 deletions(-)
> 

Reviewed-by: Tariq Toukan <tariqt@nvidia.com>

Thanks for your patch.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/01e427f9-7238-d6a8-25ec-8585914d32df%40gmail.com.
