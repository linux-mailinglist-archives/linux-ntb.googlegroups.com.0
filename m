Return-Path: <linux-ntb+bncBDAMN6NI5EERBTMMZX7AKGQEPSGMMBQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6B42D7393
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 11:13:34 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id r22sf4622234ljd.4
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 02:13:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607681614; cv=pass;
        d=google.com; s=arc-20160816;
        b=xuaEhERp7T7zXXYK8xFA1g680+Mu5tPjuKDuq/zqUXjhYkAgebKhhKESU9Oqx2FMXk
         U4VPk9j+Ma7nq2s25UCuszj1dxuQ8bj5r6xlNodGirpWjjRTcaeXtTgflNcqcJC7j70Y
         K/KMhszDAf4PYX3795k0gO+3RdCo4irYnfQtNdxEKe00G5H3wN7wprbbNAclOH28wDl1
         FhSITek9KhobrJbx3Pr/PXbzvlg5SejbaVbU+MXeBzlYJrV8Tpxw0cQtXYLU5FWJuuBz
         S/Qa2lonV01nDfOjtS21ldszKjqDrx/ojYUZx0RxQk1XMDphKmGSPlq8uTeaP5RH+5Yk
         quxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=MTuczAsFxoj2r4K4VyCUufOG4vcaVCFD8p3qEtfZrGw=;
        b=ZtEsxoRDLdNX2HeWVfaTbyuqgN4HWoqiS0EPxqXWyxcgfbdg0hvYlNq6tFdNY+FdHK
         5mFlCmaT5OQruLGhF9g3iMQU49jEzJKXZnG5MbBzF0MAIvA5Ccx7Gsow5+H+pye6UaE4
         1eXBwXs8PfyvZasnXBWmuMFEdK4UoTHqYatHdbQvlROPXmBolBwM98VSt3e6nwqiF83P
         CTmCz8fF8jiS8XtB7mgjGmTxoFeeno1eTb8aZN3qw2zCScKQY2efaYTyV6gH/h6xZ+Jq
         57sRXBbuzc7SPpqEhg8hDHQp1mezerGLtlm/dWsrqVw7lhruC7suY0KMdcEww4Kn4GG8
         XQEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Ebn4XFcC;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=xExbb1La;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MTuczAsFxoj2r4K4VyCUufOG4vcaVCFD8p3qEtfZrGw=;
        b=qgb7NVGg+9PODriCi0gR4FK/dquxtjZXX5YWbhw8pnMkrHoBJfQz+XWc0H6rOIuOwi
         Pv91Vd0VvvRGXB1smn7Y4slTJHT0D1FVHmorJShkRg2DvHAu8HBEsyZ81FozYb8Js3u+
         6LVERMgNVWIfKzfShlElsQP713Jk3YqYltWz+EkeGmb+vrIVbKvJ+7+y/9JRE3UaLVeu
         CeT1GD8xI22bsHY+aQqqtX9u1qzAyx5snRezdpLanhPH0iIB9m8KOe6lUXD+qHIkO5UL
         qWpc3EoyZWcrOP8+0EeyWzbFo+q98qX1e55cp5o62jmEisO/elqBkWXBbCVsSWoDA1wm
         MoRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MTuczAsFxoj2r4K4VyCUufOG4vcaVCFD8p3qEtfZrGw=;
        b=VPbCdOrFCrERGBeVqC7oUr0dUui1RkjozptvxVOlF+llgqXacAM0r+tethzfn0Ounz
         UXZkKtlpsiSRUZIk+gJQILeNTfTycvcn61/923vSw00hAHajEctaPVINCYGGiKsc44ou
         XJHaM7IIhJgn5Wk/Aqwm7dl6hbq+cVNsUOUbcTYkiHzWHGE20Yf5CDXQl+1B8O6U7BVG
         riQa+T+D/ZeaghNyV67gXadTG3uwxYrHoHmiqiTbsNeESoXxA9QMvdMyZZlmbz6jNr7V
         a1Pyny7It08V94NkBIwFxhdurGn0HW1T6i2etCIZgcR1fQqVcb3PUjITqhpvxEH//gH+
         UVrg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530kZeSHp/uWBEvRZ0KJcDP+ZTQs7rGQtAYccposWWaGayMyLxiU
	UZaPLl6vILhe5DjVyymjDwQ=
X-Google-Smtp-Source: ABdhPJzaIONEnSrl1n9W9wzFr63RUqJhcpEBfsJJ6kBDPsOX8qwlTMF9wkN461jmmzAKmW3bqHIidg==
X-Received: by 2002:ac2:47e7:: with SMTP id b7mr1310786lfp.117.1607681614101;
        Fri, 11 Dec 2020 02:13:34 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3608:: with SMTP id f8ls3161561lfs.2.gmail; Fri, 11
 Dec 2020 02:13:33 -0800 (PST)
X-Received: by 2002:a05:6512:3888:: with SMTP id n8mr1835058lft.458.1607681613057;
        Fri, 11 Dec 2020 02:13:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607681613; cv=none;
        d=google.com; s=arc-20160816;
        b=sW75QBngeqN6uIQRrRVF/ftINC7/vRR/YgOYDhRGArdbkINHdqK9/V4kPxuuk5nkMR
         x9Vn47TWtWO+BMyZ+TUR2JXh+ZERX2zgkYX2cpWYm5lovajKJcH1ZxfoBeTAMN/9OCl9
         uTw5iTs9bBCgHFJAlVXQVmXfjHMLB2n09dJPgLvM6MmZhf7gga9OnXiKd/5QAGrgpMV8
         P4fEgfpzst1637bwxUnaRwNuZP/eKsVL4ifK3ifuanmeMQ2DTl4BkE6RyTx8KJ5tDImi
         mwQ7gwgP3s5Ee1UF/ctChB/r0nUToWwusPXxy2vv6iNCNogD8x8FuLkSBJ+NVDOdEn3X
         nRBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:dkim-signature:dkim-signature:from;
        bh=4TDbx5/eRxAHfo/4EOFfTsBBr8/iJ4NkSA5alVnInbw=;
        b=DQYuHUXgH4NSAjk6ezgiN8q59iKhyAFcVwfhpWoDyj5At0b8up80GkidUyNoHM+tfJ
         hgBAdHZi9Bp6FPR/JRMSX/Vlvx7vMSKHztphDTdHKA7LQBfZiFxz22Hl0vW3vSeji2T6
         uUsdrz+mSt6CmdtjPz4xc/aScq3DR17gjIKxkfzDKc6uzEQH7sdMkQfGplh7JBZWWoRT
         DP39tH/NV00AV2DTaRgVso022j+lm7CZdoPKl2Y07uIStsvIWSNxcwx5CrXOXPW2N8e9
         VYDNBCjbJqyxJWBBU/MOE00S33eMI0CnQfDGj2kXTVDCGGv8F5vxYa4D3/BN7+oKVioF
         j77Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Ebn4XFcC;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=xExbb1La;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id q28si287321lfb.10.2020.12.11.02.13.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 02:13:33 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: =?utf-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>,
 boris.ostrovsky@oracle.com, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org, "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
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
In-Reply-To: <a4bce428-4420-6064-c7cc-7136a7544a52@suse.com>
References: <20201210192536.118432146@linutronix.de> <20201210194045.250321315@linutronix.de> <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com> <a4bce428-4420-6064-c7cc-7136a7544a52@suse.com>
Date: Fri, 11 Dec 2020 11:13:31 +0100
Message-ID: <874kksiras.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Ebn4XFcC;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=xExbb1La;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Fri, Dec 11 2020 at 07:17, J=C3=BCrgen Gro=C3=9F wrote:
> On 11.12.20 00:20, boris.ostrovsky@oracle.com wrote:
>>=20
>> On 12/10/20 2:26 PM, Thomas Gleixner wrote:
>>> All event channel setups bind the interrupt on CPU0 or the target CPU f=
or
>>> percpu interrupts and overwrite the affinity mask with the correspondin=
g
>>> cpumask. That does not make sense.
>>>
>>> The XEN implementation of irqchip::irq_set_affinity() already picks a
>>> single target CPU out of the affinity mask and the actual target is sto=
red
>>> in the effective CPU mask, so destroying the user chosen affinity mask
>>> which might contain more than one CPU is wrong.
>>>
>>> Change the implementation so that the channel is bound to CPU0 at the X=
EN
>>> level and leave the affinity mask alone. At startup of the interrupt
>>> affinity will be assigned out of the affinity mask and the XEN binding =
will
>>> be updated.
>>=20
>>=20
>> If that's the case then I wonder whether we need this call at all and in=
stead bind at startup time.
>
> This binding to cpu0 was introduced with commit 97253eeeb792d61ed2
> and I have no reason to believe the underlying problem has been
> eliminated.

    "The kernel-side VCPU binding was not being correctly set for newly
     allocated or bound interdomain events.  In ARM guests where 2-level
     events were used, this would result in no interdomain events being
     handled because the kernel-side VCPU masks would all be clear.

     x86 guests would work because the irq affinity was set during irq
     setup and this would set the correct kernel-side VCPU binding."

I'm not convinced that this is really correctly analyzed because affinity
setting is done at irq startup.

                switch (__irq_startup_managed(desc, aff, force)) {
	        case IRQ_STARTUP_NORMAL:
	                ret =3D __irq_startup(desc);
                        irq_setup_affinity(desc);
			break;

which is completely architecture agnostic. So why should this magically
work on x86 and not on ARM if both are using the same XEN irqchip with
the same irqchip callbacks.

Thanks,

        tglx


--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/874kksiras.fsf%40nanos.tec.linutronix.de.
