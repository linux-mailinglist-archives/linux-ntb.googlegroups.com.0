Return-Path: <linux-ntb+bncBDAMN6NI5EERBJXQZL7AKGQE2T62URI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id C228F2D6C07
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 01:07:02 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id t10sf4056620ljj.2
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 16:07:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607645222; cv=pass;
        d=google.com; s=arc-20160816;
        b=C0+833YPC+yX5QndZC7v7OTEm1dfS+C8UXua+8WjW9K2YMmwZliqBTRz/f+AtiKoHr
         h/UAtoFgUpBEs8oGe0U/Jzk2H5PLv9tNuA4gPUFFXhgTYtW3nTqUd7G1zykKJj0Apfxo
         txjTmoaD8suE6YSeyyMNyeVzVdrWpqHwkIC+vMpsYUmVh3yGR5BlH0ZjVfzT8+ajLZnw
         4JL0RKFmU2StwWzf3dVKE1XQg/7x6Zhiu7Qxb6hjOXO+jsWNauOc3O6IvcDtDfpxfcYM
         WRqI4KDXLdOkFgTVhmVYI798gjQmqEnmAa6awYBybFwYV0HCa/lLjOJbkzmpPdMlQvtg
         OtMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=j4iDAhHJ6wFQ5BbzE9Z5KZXUQZc9+hQRSo0QDHg6lds=;
        b=KByDKYw6fPQPAnGmO+7sKAEYG4yPHsgrXyI6axUxROakyrAS9NpONPUyc67zv73LFd
         rqxhrF/435vIIepdIfEOQlfCQpCPWBqpEbQmzoJcPfkTL4ho3yAeeOBWkLbYp7+0Px8/
         Wx3KdvuiB1fvhcMTRL67tLAssO/13I+5WUnm1+ui7KFSYmy85RYJQW8ccrbiKyEDjang
         1+UJgZjf3PDNN9OP338FU/oVr2E06hawiCOYumWDspRNMmuGRjQPqp/17wq+6bop3Duu
         Csts6Q5Jj3SUuFx1LM6cQ1JYWNVhaCkGAlfN1C6eFnMNPeDtDq01NkA+kjwUiXh693tG
         yjEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gGpzgKDI;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j4iDAhHJ6wFQ5BbzE9Z5KZXUQZc9+hQRSo0QDHg6lds=;
        b=kjwReU5hZT4ro3sazdUVKkwMy+Rkf+VSqiCBCQlMeACEvU0wCYE3olQqDp0ggKYi/0
         mbHQNibZkNrUV1h1q3pLB/cfPpj6jzYptSoZsRd6uhOp3x7IYAwLbHlkuHjJZSuQAEnY
         Hx+WqejqFJhMxlAPUEHFnZtQSAebT8aosC6/Odl49l6ozbTBEmZ6XdZOvV6NoH9FFluO
         gngHqaYUZeYok6pnqZCp6Fn7cx316DZTaY+mGf59V4wH9py54URKWJVeOuEyFEJuM1fK
         iPX/t8pqVQf5U19Zo7lROPos+zvUZZ5MIohiWx5evlOaXTeFLls2U4DqmVREomtgrXPm
         n0qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j4iDAhHJ6wFQ5BbzE9Z5KZXUQZc9+hQRSo0QDHg6lds=;
        b=VJk7o6Pxq9UROHj/0hEPe+JXgwm3Sr6HjOQalWg8PlL3QixyIxwXmW9i8LvD1fkuOX
         QhAWqMaiX9zpipWaJ/Bu4H7M06HqSGQ+jpn5w44aAIXepu+fP3kdeNidyoug9LAquSeO
         P4G2EPwPbadFdBVIlaaKnt0xx/6n4dt92B9UPED7rNPPgcIVzSY+7gyf+3GM0HH9XgUh
         aFy8jOB3kA+alzQLSPKgs8uTspNkTg/Fgujf2aBPsexSi4wQSs1851Dl7OwVzvCAflVD
         DoYTTzfG6CaHjsPL91HxYtkteyglGiZ5U/BGgvnZabLUt7KKTGUFD2zBjt54lRjdffHn
         NF6Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531619H17UXkW9G9SQmIfr8mTHMs2Y+VDVt7yfpago1SF+RvxEyG
	DKCHUmx9tQjPzwL5BFKesWU=
X-Google-Smtp-Source: ABdhPJw68avnVblRK52SERUxuKfULEQt/dWYr9so42gXwt5O/WcZnr0Xv9N5ZFfRgGSgQTDxRx9jJQ==
X-Received: by 2002:ac2:5970:: with SMTP id h16mr2355078lfp.338.1607645222323;
        Thu, 10 Dec 2020 16:07:02 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3608:: with SMTP id f8ls2334378lfs.2.gmail; Thu, 10
 Dec 2020 16:07:01 -0800 (PST)
X-Received: by 2002:a05:6512:21a8:: with SMTP id c8mr3761248lft.139.1607645221150;
        Thu, 10 Dec 2020 16:07:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607645221; cv=none;
        d=google.com; s=arc-20160816;
        b=b714sMjbD/lLagGn50nMoj3+IN4yFiCGxev5rZiZjT8zpQuEGX5ikcyvW2eanVmDxL
         ier/fgcyK2SzEcIVQuvFBgVExoW3uJyRJXbXv41qgYrjDyy4PIm2KA0JBf09aXkt2IkP
         BKZwtYflx7B1jHzNdLhry/lnKE1njPKFC3yLM7bAX5B5iGzdS2Z7t52+CIua4Z+WDD7Q
         GEtnRo6R3uwefLaRXvFdc+GR+JG/d6LBepjCDGaAZEzDF05nw8L9ZcWTuJePeGqeUuPx
         leCj0cAWM78DjR8RNix4bRqyo0j8pq8kkUxPvXGiQqILzYHxisqZrGslVleTTRJEjLFC
         qB4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:dkim-signature:dkim-signature:from;
        bh=QO8ZPs/aGTq6EeeiALBW4EwIli8xcBfNVbHQE3SuKNs=;
        b=VYsjeuTAlKcWZuULwBo03yQkVIGWpKxvb5MQsOX4+ksPtlSRk55T5AoRCVmC/6cetK
         Hj48iqm+lik1H75bI03kq0xCsASugBwu/rmjL4rvlRZbfRfJ/rUKTWOR5jCUOm8S5acv
         MjmI/OKHxIE/hAc3VFkPsZiav4AQegicBJ66eva4C81Qwe9NUl532t5v1LY8RE7hGq2z
         7RQOjUoG0WwVIJiAk5nxrMrUVqkL2ifKFvKAm3lpuRmqYFqgK3151m0dSveK2D/eQ15L
         otjr6gWR+4Rq1wRqGfD+smOk6W2Yx9lMsZ4BTrwEZzlBtYeFyq+mlmWpz8BvRsXCHHQ8
         iEdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gGpzgKDI;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id v191si273203lfa.9.2020.12.10.16.07.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 16:07:01 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: boris.ostrovsky@oracle.com, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Juergen Gross <jgross@suse.com>, Stefano Stabellini
 <sstabellini@kernel.org>, xen-devel@lists.xenproject.org, "James E.J.
 Bottomley" <James.Bottomley@HansenPartnership.com>, Helge Deller
 <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens
 <hca@linux.ibm.com>, linux-s390@vger.kernel.org, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Pankaj
 Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Tvrtko
 Ursulin <tvrtko.ursulin@linux.intel.com>, Linus Walleij
 <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org, Lee Jones
 <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Michal
 Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org, Karthikeyan
 Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang
 <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>, "David S.
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu interrupts
In-Reply-To: <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
References: <20201210192536.118432146@linutronix.de> <20201210194045.250321315@linutronix.de> <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
Date: Fri, 11 Dec 2020 01:06:59 +0100
Message-ID: <87ft4di4t8.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=gGpzgKDI;       dkim=neutral
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

On Thu, Dec 10 2020 at 18:20, boris ostrovsky wrote:
> On 12/10/20 2:26 PM, Thomas Gleixner wrote:
>> All event channel setups bind the interrupt on CPU0 or the target CPU fo=
r
>> percpu interrupts and overwrite the affinity mask with the corresponding
>> cpumask. That does not make sense.
>>
>> The XEN implementation of irqchip::irq_set_affinity() already picks a
>> single target CPU out of the affinity mask and the actual target is stor=
ed
>> in the effective CPU mask, so destroying the user chosen affinity mask
>> which might contain more than one CPU is wrong.
>>
>> Change the implementation so that the channel is bound to CPU0 at the XE=
N
>> level and leave the affinity mask alone. At startup of the interrupt
>> affinity will be assigned out of the affinity mask and the XEN binding w=
ill
>> be updated.=20
>
> If that's the case then I wonder whether we need this call at all and
> instead bind at startup time.

I was wondering about that, but my knowledge about the Xen internal
requirements is pretty limited. The current set at least survived basic
testing by J=C3=BCrgen.

Thanks,

        tglx

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/87ft4di4t8.fsf%40nanos.tec.linutronix.de.
