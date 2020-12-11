Return-Path: <linux-ntb+bncBCT4VV5O2QKBBCHNZ37AKGQEMB7HMWY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 105A12D7DC1
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 19:12:26 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id 193sf6847646pfz.9
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 10:12:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607710344; cv=pass;
        d=google.com; s=arc-20160816;
        b=yW03zldGlHUT6amlWw5BYLOV5rpBK2/vjhCfEO+MpqHu8jGxIdnKofkbsJkeQHkLk2
         IKWFvz2THYhrShUlQ5VMSIhsMlLpVdyG0jrdgGpdtj0cuyxmN+Ov4zwyHtNgo1Aqer8s
         ZriraNqDz9gBEAgY2F3NzluBqv4h016DBlmspQodLFFaJYATCJWDCcXEzPOkbMFFUrMc
         vhr6MLcHH/TK0veNr8fFGzWOpITqtPMNM6Um9EG9pMalt8ngpaR2uyo/DKfTJdQU33wv
         wYF9SEvh9k7Etfw40VyFCFNe4B104loCeTktPwlIAF8nmOcO7ho5Zz1eTCcMUSvshsPt
         VCrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7vH2EopJd+PdisCppjaraWxVZ6aScsASuK10K27jsqA=;
        b=m0B2yoFTFTrDrZJoopehWAD7qG2xNOApB1Xz5Xv1nkWYWN8PZRgHgHQaR3/Ok2CEgT
         ZDRoV7sIMsWOW+xUSAMcVUi1k1WU9BewiEdf6JkyDx/OM1Z27v3QphaufMBcl75T99yW
         ExvvacvHiLt6qrSdM7VOWXYVFrOjzdm6KmkcXftFUpKtJ/AuUuNt8wtVWG2YFnnaabYb
         AN0raD2gfFCRb/QORJIdNDSS8fbNNNRKB/qg3j9xj8SnyAWANHxgtaUnE6LSZsIuhBOD
         8jGD8mqU5lMLzVAsLeEleeTSRC4WhnFzJXzFjpRHMmXklP3ZZqSoLblY3AZhhsCRrD31
         bmeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pm8buLXs;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7vH2EopJd+PdisCppjaraWxVZ6aScsASuK10K27jsqA=;
        b=TwdfcSkbQt18493pRR/vfbMdh3J4Uxmf0fIgu10XUh6L0PodgXsdd6xuMFl8R8Mt9L
         2GXxCqOLfDHXgcy0igZqdc6iYKqNP+9e/pn+lXHnCqj/jk0LaNRNVecIpGNGYEZ4ShAw
         IMElww5/RiIGp21mEE3cdME7qeOA3S8pbqFRoO4M4qTgSp+1xPKEWq5CFCAXC64Vt9hR
         1Ys0J9EkyC4tyVbzKmQvRkoHu5ZcJJa6BU9VWROHQv64UUFIgPyQTmWOGwAfhBhuBcIr
         rw4CRxuO7wPUvkAKURd8fvNq9J0zVO8UmtkcR/KNKgYHI0fh4tv0O7fPSiwIgmzW+r8D
         F+eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7vH2EopJd+PdisCppjaraWxVZ6aScsASuK10K27jsqA=;
        b=tFm3WMkAF77RIgbBp6ncVFbNP4ThEb2MPV4PSS6pQUZ7P6VjpOOEqoChdNuA+Gbuaw
         /X7RErvCsHEUibDV684CBKj+1qqwu5kFKwmIAftar7pKBg9spGwSDw/s0XGC1fRFxzTB
         PFJTpFtXXwiVjJHCzfyroKTVDnAKfPk0do/ac96uFu8BlBMxzb7YG9vwAt/1S0hP2li9
         wZ8Fue4DRhYKd5yprH1v24Otff2CIalPfgwtdotDx1J3f+kxC7Gi1ShyfUJbqtnd1HvC
         cIIMAdRaSuQpaCsL8ZNFMHBYhwGca+/398tl3tS20oV+5xkmz0LBY4mRuWk1WD3tmBcZ
         6F5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7vH2EopJd+PdisCppjaraWxVZ6aScsASuK10K27jsqA=;
        b=NXcaP0nTsd2gb+N7GXVjUDMqHIJgywcNbctq7eVYZwHZd75p59G2OIefYPzB997KaO
         9GaAzuW+q43/UcqgmODQNRh3WxL1C305itmA7migTvBFm95vPrhg82I0YrFAGvI4YpSN
         zbNMu8eu3gnBnLelUo+PXsdUXUflz3iCW7ZnATW6XT92GxM6wHEjtAYhh+jnCVnqwuWh
         w3+tILPw65nLamidhz3+yKjJp6QBHkkFGbHUhXh692Hy7Rcv1znF3XKgGsu9BMoDVaDi
         70bWeNxDqX3UGB+Zv9B8rnjYjRBBbfZ/zAyf6M8a6N8G4DJ51tL1vYnrhcFcCRjUBK+I
         GTDw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530jY0B8afhU0adepm+ShXkj24aaP9qTis76dJdwRvdDIpjPmPpY
	wdOrY6gEHQfP8E9W66CmVOM=
X-Google-Smtp-Source: ABdhPJzEtGmZqC5SNNXi7vVo5J56iPC4BS2rZjaqiWIToiAjykzmU8OnjTbljITB4l9FCrvJlDiPeA==
X-Received: by 2002:a17:90a:4fe5:: with SMTP id q92mr13992314pjh.188.1607710344799;
        Fri, 11 Dec 2020 10:12:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:4b61:: with SMTP id k33ls3827988pgl.0.gmail; Fri, 11 Dec
 2020 10:12:24 -0800 (PST)
X-Received: by 2002:a63:cb51:: with SMTP id m17mr13065548pgi.337.1607710344258;
        Fri, 11 Dec 2020 10:12:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607710344; cv=none;
        d=google.com; s=arc-20160816;
        b=iPgRF5U89hOPdhDYMxcISRn1BRSgqEGlETr7Aws3BgRLWhmJW0o0EG7mT9QkCETQGa
         u3BaaUvP71m46EA6zt087jfxzuW6NruDamNhQumf00DDg99emsmYf3krZEk+Aiv0HwYb
         tHPgoyTmarviO2Xs/XUpmMd7kH2EN/xV3/LRuemSp7VACX5ii1pSSYlESLJwBjCwBKzX
         EWu0RpmaFbELzAAVJVqG5QjncP8uKdpMdOMcdz6KYQA+YX4pk6DSqfrFxGjOOnjaKlzC
         2VlohPk4UPn4gRc5asq4nRN4/6vMXrvh1wmcI0Tbg40YtqGXiXYtWHN6Muvanmdly80C
         mG5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q/1zdMH3DpxGtZ8QgtITmolgonObU/7AjOPUuWKrWNo=;
        b=zRcZqyZwY3c7Hk031oaOeFXdbKfiSEw8BCbp5fo5zuk3X1S//lYPFJPhACI0hfcotb
         l+HGh3i+D+rsuQ84RNGr4hUhfuPkm1MkqRhiAJ7VYw8JjZ+HYX+KCuz09W/Hgx+y2xJF
         ZlBk24L5AExUZ+P1DjuDKRE+Kbo2pp6HYnTtqVdU80SjrtL5ffOeZ97g2JGaZuGfvt+6
         xDFfsucOlr8JDfzVSWJswqsoi0aM5KVfhwIQZquVbWX/705WgPt9Iv+eSpjbiYIekaMj
         Zy4VWvy83tDPj1Rjl3MRPaDxBIBqtjhB7qSphOclf7/oDQfWq/+PCYzFxYVFunx4ihZZ
         pUaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pm8buLXs;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id q18si712180pgv.5.2020.12.11.10.12.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:12:24 -0800 (PST)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id w6so7496066pfu.1
        for <linux-ntb@googlegroups.com>; Fri, 11 Dec 2020 10:12:24 -0800 (PST)
X-Received: by 2002:a63:4002:: with SMTP id n2mr13054398pga.4.1607710343875;
 Fri, 11 Dec 2020 10:12:23 -0800 (PST)
MIME-Version: 1.0
References: <20201210192536.118432146@linutronix.de> <20201210194044.157283633@linutronix.de>
In-Reply-To: <20201210194044.157283633@linutronix.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 11 Dec 2020 20:12:07 +0200
Message-ID: <CAHp75Veo9aQLCp9ZuCcoexPLHM=R_PEu6uhP_P2bSpsVzyUaNQ@mail.gmail.com>
Subject: Re: [patch 16/30] mfd: ab8500-debugfs: Remove the racy fiddling with irq_desc
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Lee Jones <lee.jones@linaro.org>, 
	linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	afzal mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org, 
	Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, 
	Chris Wilson <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>, 
	intel-gfx <intel-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, Jon Mason <jdmason@kudzu.us>, 
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Michal Simek <michal.simek@xilinx.com>, 
	linux-pci <linux-pci@vger.kernel.org>, 
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, 
	Tariq Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>, 
	"open list:HFI1 DRIVER" <linux-rdma@vger.kernel.org>, Saeed Mahameed <saeedm@nvidia.com>, 
	Leon Romanovsky <leon@kernel.org>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Pm8buLXs;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Dec 10, 2020 at 9:57 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> First of all drivers have absolutely no business to dig into the internals
> of an irq descriptor. That's core code and subject to change. All of this
> information is readily available to /proc/interrupts in a safe and race
> free way.
>
> Remove the inspection code which is a blatant violation of subsystem
> boundaries and racy against concurrent modifications of the interrupt
> descriptor.
>
> Print the irq line instead so the information can be looked up in a sane
> way in /proc/interrupts.

...

> -               seq_printf(s, "%3i:  %6i %4i",
> +               seq_printf(s, "%3i:  %6i %4i %4i\n",

Seems different specifiers, I think the intention was something like
               seq_printf(s, "%3i:  %4i %6i %4i\n",

>                            line,
> +                          line + irq_first,
>                            num_interrupts[line],
>                            num_wake_interrupts[line]);


-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAHp75Veo9aQLCp9ZuCcoexPLHM%3DR_PEu6uhP_P2bSpsVzyUaNQ%40mail.gmail.com.
