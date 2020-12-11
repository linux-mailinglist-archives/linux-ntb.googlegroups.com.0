Return-Path: <linux-ntb+bncBDAMN6NI5EERBT6AZ77AKGQE2RSR4JA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE7C2D807B
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 22:10:39 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id c8sf4546499ljj.3
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 13:10:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607721039; cv=pass;
        d=google.com; s=arc-20160816;
        b=eFu2dvDVQ9tPByvSG8hUOEwfS9o6mYOSKu4tMHZc3SzgXg/LSvkMGBhNqYO76G/iik
         cLIOyLRzSmdP4eXnIjCr6PkO6UUga//x+smYs0Mmq5/bH+rvLCjUl+RRHheXyolbephG
         4PT12cTzjrK6c3neRWB+yL3NUyuMGpB841R7biFY86WHOVtqUB8n55ImsWpYEAtXMPsw
         OVmZNUDwR92I4X0VT7wx1qi/0vIjOJ8clFoEzLkG0CUlwmbVSChTcdej9/eMIuOq6bIR
         CYW/I54Q33lC1dq9wbAS/YOVh+CLqcX1vZj8ye4lo7+ep4UaSY/rLyJUgrm8zcR7j/Xz
         R6aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=YFn/Ph6c79SXU6II7MhGlQZUr0NUV/7aICD6z7D5Ui0=;
        b=0acOI7Scn1OixrzIsTporq4u/zj70+aT75C8CQ8Y8m1H+dUXucMBrwA5M3of5x6zcG
         B3UBPx5BlxYl7GVgF+6fekeQSeL4BUo6Ga7XTi80zIKR2ByLEu4ma3rNqzEg1VDnT51Q
         3klXw2nk8tx2yVeDOBFdEYXAfR/AzIU2YrJigoMwyZ2v+wnw76Bd7ILnh0jYvQOEaTKa
         51TQqxfU2PcQeGc+WisD7BtEDCV9L6vTKyM+T/1V53b/qUDT8RdAHaZrk/VLF2q4KGRL
         M1fQ/v0+Szji/9CCNaJQKw2RYxyJVpeiNgYRYWduH/BNO6/cWO2gaplN8Przx50HI5ma
         vO0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Jwq6ijv1;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YFn/Ph6c79SXU6II7MhGlQZUr0NUV/7aICD6z7D5Ui0=;
        b=iWmbgBb4HxTmLxDdN+xsLt71jV5aprkVOmQGKn/Ayf+w+kKgRxvfX5vdxHzGZOhWuo
         5uodig0SIqt8cfBChM376sR/KLd0FfbEm4x2V2TT3cvJHknr9AFbaZUDOhtqLxtzkB/E
         vTMweEwJuoFpxP+WwI9Yq76EAGLgPL1jtBb8CE353FVI8te8TXc55ftrAbaf4CC62ALG
         Y1u+o1V1SvHNEk6GbqxtrZ8YL8kkuW5+IY962epuJXcok+7mGZwmpZNV4vMkP2mAKhH1
         ty7gobIauhj+iUrglSHYaLufw79aFC2L/mejPtfUIM3bIg4osvUN/meUibpHSLPF//XM
         tKGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YFn/Ph6c79SXU6II7MhGlQZUr0NUV/7aICD6z7D5Ui0=;
        b=FRNnusQxul3vZZPvqe7R+Ti86g9iFHiUNOPxW4wkN461hrPga75PeS6E64WmpBt1c6
         uHaAohNVtRGF34Flx9sv379OdUhFtJZxCPXAj5XlfyCgPwe50eEw+CFr6vvlNeIpA4lQ
         7j0fdK8AWWZG7JsYNiDau8BSmuXCGJCIDm2BNTflM1CBSQkjfda6y+e3rVpwK4o/mmz3
         k88MYacK8MQEgK8xeJjBtaqgkwJJHiBTGSKJmmrqyAqPuZDcuXHDEVk2D+Bazbms49Y2
         +q4y47+Gtv4MoUmc0gRjo7McUoD9G4rgPaMi7yuPTWaUI3nH02uXSsraDs03o15rU2zl
         o9uQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533Zss8sVL/sTBF+PWQVSKErXp5k1G/mVKt1/PpFc4IPD5Uu6Cbm
	mJdcQhGbd+LM/lEKdHlkWTs=
X-Google-Smtp-Source: ABdhPJyItHrVciimo2qFv0lp2vXs/nWbjJyPEkm5RVqhXk6Akfaq89KkvjI3e1QXc1Nh3/KLEeidHg==
X-Received: by 2002:a05:6512:3e4:: with SMTP id n4mr4428075lfq.291.1607721039347;
        Fri, 11 Dec 2020 13:10:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:10d4:: with SMTP id k20ls4381891lfg.3.gmail; Fri,
 11 Dec 2020 13:10:38 -0800 (PST)
X-Received: by 2002:a19:6108:: with SMTP id v8mr5444642lfb.429.1607721038161;
        Fri, 11 Dec 2020 13:10:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607721038; cv=none;
        d=google.com; s=arc-20160816;
        b=WM0zecHxNTImpOSCK5khlNw9OjCVidKK47hwLvFmCwlog3/mGmztIMmUWQRMUu/b40
         7Zc1QkyrG3HIUcVQF7igJDOGfWSAJHvTybW8Fc4mUKubV8PEXpmkAUhC38xdsh0PPRn0
         pp/3EcfjbiAyHDW+bHZA+vCVwqGkMSQi0ouN0RBqw/kv4e+USRNnEedHp//7T9+dp9DP
         tkT1C/jVDoV4yl+KjwSzHq2v8fl7IjId0FdZNLgXnFEZyhRdA+LjWz/rryxyUhEcObYe
         fTI/GD4ETa9dhgRLpJK9rPhFQ5wXIVWdTQQBA+WRWYHlRG5NvkErAx2A1zOOthM5o+1t
         cmQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=Mo2pAYuz+fdW3SgRq/XPKjojssrrAkt+Ucf5porPagA=;
        b=tX93Irxgqeh+XQ5XQPYrxUFG0eKh3+e0hdjA/mS0YFTRkTpcSRnsYmw/zl/Lnd3vUR
         VotbCKE6VG1qKnHoZM/nJgvpJUoSTCJdnQsOBLdCjuKQ7aWpHICwugm0cAd7A3kwLdLR
         /IyND7z22fjTV1E/0Ip8c31bH0ZyLNXg7FYF8oqSQhss/YHWi9D3ICeDlyVyjsvhBXyi
         L68j8XtOqlTShNSDMCgbgp1GOYYCEfZxxPKdN2daQguxED7qCCd+cC38HH30iVkz9JQh
         WYDKtVufbZZhojR9VTpAWMlDF6VDUayRMRc+bQ0nthkS7lGfkIgYn+yZZqxYRO/zn1wn
         R/3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Jwq6ijv1;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id j15si311162lfk.12.2020.12.11.13.10.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 13:10:38 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: David Laight <David.Laight@ACULAB.COM>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel\@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Helge
 Deller <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 "linux-parisc\@vger.kernel.org" <linux-parisc@vger.kernel.org>, Russell
 King <linux@armlinux.org.uk>, "linux-arm-kernel\@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Mark Rutland
 <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, "linux-s390\@vger.kernel.org"
 <linux-s390@vger.kernel.org>, Pankaj Bharadiya
 <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, "linux-gpio\@vger.kernel.org"
 <linux-gpio@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>, Jon Mason
 <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
 <allenbh@gmail.com>, "linux-ntb\@googlegroups.com"
 <linux-ntb@googlegroups.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Michal Simek <michal.simek@xilinx.com>,
 "linux-pci\@vger.kernel.org" <linux-pci@vger.kernel.org>, Karthikeyan
 Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang
 <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>, "David S.
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 "netdev\@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-rdma\@vger.kernel.org" <linux-rdma@vger.kernel.org>, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, Stefano
 Stabellini <sstabellini@kernel.org>, "xen-devel\@lists.xenproject.org"
 <xen-devel@lists.xenproject.org>
Subject: RE: [patch 14/30] drm/i915/pmu: Replace open coded kstat_irqs() copy
In-Reply-To: <d6cbfa118490459bb0671394f00323fc@AcuMS.aculab.com>
References: <20201210192536.118432146@linutronix.de> <20201210194043.957046529@linutronix.de> <ad05af1a-5463-2a80-0887-7629721d6863@linux.intel.com> <87y2i4h54i.fsf@nanos.tec.linutronix.de> <d6cbfa118490459bb0671394f00323fc@AcuMS.aculab.com>
Date: Fri, 11 Dec 2020 22:10:36 +0100
Message-ID: <87eejwgib7.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Jwq6ijv1;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Fri, Dec 11 2020 at 14:19, David Laight wrote:
> From: Thomas Gleixner
>> You can't catch that. If this really becomes an issue you need a
>> sequence counter around it.
>
> Or just two copies of the high word.
> Provided the accesses are sequenced:
> writer:
> 	load high:low
> 	add small_value,high:low
> 	store high
> 	store low
> 	store high_copy
> reader:
> 	load high_copy
> 	load low
> 	load high
> 	if (high != high_copy)
> 		low = 0;

And low = 0 is solving what? You need to loop back and retry until it's
consistent and then it's nothing else than an open coded sequence count.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87eejwgib7.fsf%40nanos.tec.linutronix.de.
