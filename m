Return-Path: <linux-ntb+bncBDGNZTVZVAFRBROPZL7AKGQELWWIQ6Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 2759A2D6AD8
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 23:57:11 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id 1sf4191423plb.4
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 14:57:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607641030; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZOfSZLP34RVhuRmwVnFs+wSF81z0IsPoeBDh/pmwDPA3f3jVnYNVZL6xUJHDOu5PUg
         uNmUcNiXKDhJwrEpiEEJznZH3se2dwfon+4NLcru2mFGAAfKKMKNsk6sEQwfMESynnsY
         oy2eLaQSM2paG78g6OsS3cmcBcC+UKp9NP/epIQ68LnmUAYR5n7uVFVlMv1eMU6MuTr8
         VSc57fzFsZdvyw99AJnW7/4IqRylYW5m7LgDhW4mQtd/YD8G+5D7LOil1ePH/I0/Pivo
         zRI6ZYe3Rv4ji8BVz3EilBkz4Z9r7kkLarpYkRbkM0MdMEhiWpYUDXSBtoh1DoVaUvcf
         /DjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=bvcXBnZrbUZNHebczUv6vVkxa9ZvsnJyZnzPlDSv1JU=;
        b=aslPIRTCPGc4UUKA0HWlusE+THX8D0mjJjmnhQ+f3Z5Gn7c1xaHR07yYj4BqeAXEuf
         vugWW3MBirTovDIT00I23lurlF4TqYWXMFk9mGfXohd6XDrvJLLETXpnVXCdci7lt/eu
         u9C9Kc1KPeNVWwZ62MfpKGWrdTcde6NSEHVWK0rbFc1k9rK4eRfhkLM0mya0LZNJfI4h
         +IxLb4tUssoysct5F9zK1nC0+pxH6jhSssC0EbPWfV+tnlTsJCd1eqKYWocZC2wCqMPk
         kRBJ1Ee/5okhBEw45P2I5cnKPaQ2/O+rT583AIo+lcSjiR+BzkO1BfWio70d7TcSDlra
         13vA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NX100t6g;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bvcXBnZrbUZNHebczUv6vVkxa9ZvsnJyZnzPlDSv1JU=;
        b=J5maEtVgI8ctYpm2kK2HcAuy8UcBvwti+h9kngGlHUDV9kozz+xMR9qQ0xNo6izeAu
         JBexXYYVdcfhysvo9eZdoQORJkcJMsu4uIgg9gPiRCexoWivZpvL/BdX99Q3cpYbz8Jl
         Nolff05tC9ISS2I7wGXd0zVqjDb367yScOTkL3hg6Oa0CF+8sofRKvD0s2bBy5atAiQQ
         g0KSAEEX7AYw9BIQYvjiUBPefvV+0U3WG7yiXftUUzW1t6b7URyq0B8+7c2qMNEILPoJ
         9NrIwr5pfxOlNNSnH9ZQ545OJSfPxKi2WWkuINO4F7MvGycbLKHJ5/GYkdpEtiekdJY9
         DDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bvcXBnZrbUZNHebczUv6vVkxa9ZvsnJyZnzPlDSv1JU=;
        b=Nr7iHn+c2BZtTnkrkqQ8w1uimXQFv8D01gRRKRfpUEFboAksRMz8VtpIZuVJYIcwpd
         owqll0RkT1CS5Z+spPRq2q6b9hkfHDj7N1ZWCYaSPX45RtNUvHHjWvZ1b6ltnOJGYVQm
         +kGmL/4cyo7U0kqwT8wg4JHpNiVBJqp/mCHD9+CpO2IOQ91RkukuSsqXp+jR/KzNzAP4
         nhhDBbqR/kmnVG+lksPRNQrQieNjdy6jobBWH/KdZKQ+xxmKfI42CeNwmTtNWPie0uxN
         vOGfG3OVfxD/O4EaHbMdxslRds/DTpBccDm/UPVz/hZyixYkuiXqxtEcd9x2KsCEOnnj
         MtVg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532TSws7phNy272QLFDxd08U7/td5/nciyVG+iyAH/GDdqDj8+tc
	15wk8Ck78AdPg4FEoLph0fE=
X-Google-Smtp-Source: ABdhPJzsXnDmCvE/CU1jn0vI0SEhA/GM3Hhk2sR3d4aR8VFX+83MjESwhV9GwXuYlA4BEMYK80Q2gg==
X-Received: by 2002:a62:c104:0:b029:19d:d9f1:ac17 with SMTP id i4-20020a62c1040000b029019dd9f1ac17mr8713589pfg.63.1607641029897;
        Thu, 10 Dec 2020 14:57:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:e54c:: with SMTP id z12ls2585538pgj.8.gmail; Thu, 10 Dec
 2020 14:57:09 -0800 (PST)
X-Received: by 2002:a63:d741:: with SMTP id w1mr8572533pgi.131.1607641029263;
        Thu, 10 Dec 2020 14:57:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607641029; cv=none;
        d=google.com; s=arc-20160816;
        b=dFJdLqox4Kcy4jFlF9jDh4wiAF5REgXqCCQOnq+juIZWnXI/QX9Mr9nAiM9NQ9306w
         0lPaZm/A/9Zqz2JmsxhnLUjPwOJ2ZEiWIYYSTXWCuPVwP9LVnzMXPqwdi4XZeL/rLYJO
         opyCZnB+Wcd7BXKwuZVGYS3M17H5+C7dz43YU68I+0jSsSR3NeipVdi3mmTDW0IFLMMC
         y5/Y1DDlf996IMI+2fKHuwFTEiq6+gvD4iH5mG2dVCtlrQtHjMZ6QupoHh470Bt4LQbg
         PiDJg++UTcfDgzX0p/kLSmq7uXlyFI6gBJ0hzW8K+0waYvV7/QwQ0LKpwfKCNhweqgZ2
         J7aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Fo1MdpkvL7LqXSPZ6fGxErpfcynv4Okc+KhrOy3Fwdc=;
        b=XvMy8YA/soWrfTEuqlJptAvjBUWEEF2+4AvL/qeTd8Gmo8bCRFQG1S2RkzAZulX8ST
         VRVb6tc7A9k0dldfVTbyMZROOvEH9fZu4MUCbxjo1gIuTPxLgdu37erNIrZUhFu6xN6F
         rzKypLoTW7i+a25m44UL8a/Orn0L4HwgkbgcsF8FBWc8LX7SeyAQFYNZ/OxhDSkLY8lu
         O41cukHi3H9QhQow6R7iAySYGnMAFqiOwDYFpbCjfGwnjD6mq0dfSUJ3Pk88whcMoRuf
         CLffz0ALt/YuM33DjperVkasY9TMy8lqcXotJSDb0RLJSM61wg5A7cXfN7HIt8jk9UGx
         HtlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NX100t6g;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f204si391883pfa.5.2020.12.10.14.57.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 14:57:09 -0800 (PST)
Received-SPF: pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a17:906:c20f:: with SMTP id d15mr8477099ejz.341.1607641026526;
 Thu, 10 Dec 2020 14:57:06 -0800 (PST)
MIME-Version: 1.0
References: <20201210192536.118432146@linutronix.de> <20201210194044.473308721@linutronix.de>
In-Reply-To: <20201210194044.473308721@linutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Thu, 10 Dec 2020 16:56:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK4bVyqyT9ip9A5P7gQQwDt1HMksjkCe6bwHrBCGrZYug@mail.gmail.com>
Message-ID: <CAL_JsqK4bVyqyT9ip9A5P7gQQwDt1HMksjkCe6bwHrBCGrZYug@mail.gmail.com>
Subject: Re: [patch 19/30] PCI: mobiveil: Use irq_data_get_irq_chip_data()
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Marc Zyngier <maz@kernel.org>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, 
	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, PCI <linux-pci@vger.kernel.org>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	afzal mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org, 
	Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, 
	Chris Wilson <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>, 
	Intel Graphics <intel-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>, 
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	linux-ntb@googlegroups.com, Michal Simek <michal.simek@xilinx.com>, 
	Tariq Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
	Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, 
	Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NX100t6g;       spf=pass
 (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=robh@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Dec 10, 2020 at 1:42 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Going through a full irq descriptor lookup instead of just using the proper
> helper function which provides direct access is suboptimal.
>
> In fact it _is_ wrong because the chip callback needs to get the chip data
> which is relevant for the chip while using the irq descriptor variant
> returns the irq chip data of the top level chip of a hierarchy. It does not
> matter in this case because the chip is the top level chip, but that
> doesn't make it more correct.
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
> Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: linux-pci@vger.kernel.org
> ---
>  drivers/pci/controller/mobiveil/pcie-mobiveil-host.c |    8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAL_JsqK4bVyqyT9ip9A5P7gQQwDt1HMksjkCe6bwHrBCGrZYug%40mail.gmail.com.
