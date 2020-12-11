Return-Path: <linux-ntb+bncBDAMN6NI5EERBKXSZ77AKGQEZMHDDCI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BC12D826B
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 23:56:43 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id h3sf5452774ljk.11
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 14:56:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607727402; cv=pass;
        d=google.com; s=arc-20160816;
        b=XU5IKSreC60/7CUSTboqBrx3RO9MUo5IUsO+mO+ew12rXbVmt74BKgr+JfsA+Tu2ej
         bKkkRCdMNN3kM6ocbBEyRChggdAHUZH6EhRVogOLNHjHcuSa7QfmQk2emtG241BQuRKT
         eypR6mucrOWbhrgu3crygYkra6T9XwWNKYxI4dQDdCvYGd6Vi+K0y3p+gh1GC2ugPzCZ
         g7HcBuPg6NGLQnnPO2TyfEVRkf0daKl0C6R6k8emFlhQ1Bbb+dYDOT6EFng8bkTOVn1+
         phMSkFeTndj18qcMCDS7tZhE14Pw4jJFaxLR5skhTmUQZUnoZqrYfBVsYaL1tZqs40A/
         LODw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=Rlit82fhQTpGRY8YUn5rTD9Zv4HQE0VxuETrmwJPA7E=;
        b=XOl4oKKNTA3iQYr5dNM8ru2hFjl/DUjrgpE4tvWZl1xe+kbEBXbOO5Ec0tTJkqYrRJ
         15o7mforfC6k0AT+EHo8ApY/49yYotM64c9FklPeBvAygXSx+VJjLVKzf9Q2j6mxpQO1
         8RImZYBdD0u6MMvcIAHyvhc0ZlDrhjgKHbQgDCbsZ7ut+GykTRpBbd6aAL0r5GfYPGcD
         KEw5J2h7zoaAs4FrTfdL02a2hPxW6FIx61fSNNrUJwAWiLphr4R0WDGATW0+EQ9+LXiY
         yTc8aqpFPwRQjIpxq+hXdBcHiEntce0k+F0YiMppXcEET08ultmKRCObA+8K2MoeKPmg
         1Tog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0WcDMUhL;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=ljcajSXu;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rlit82fhQTpGRY8YUn5rTD9Zv4HQE0VxuETrmwJPA7E=;
        b=soShV8b79GET19+v+bAe4QDCYfFA9wj1CwZVrv1jKwpwR+Fw+oGORvdGSKP4Lh047K
         kDNT/8nEogp5LjBHfrI66jnmguPLaYWurkZ2fg2cPa6wg+1QVVlGlUdtxzOlYMlvt+2/
         8CqChhOyF1l0iBlkyl0uHhYGiHxq9AJO52t+YTPxz5xR6suPWgRGSPCcpxAaeC3ZO1mK
         tXICA8OYUMSd/UqoaMunOH9mgAugLZ0XDzFV6W+XKvb/QHUPYIHP52gaMwWVWs3OXUv3
         rUND+nbkTugvuRUQmpNd2WzgT/pn52q18A+kb0mkfB70+Sy9bFFiVxVWHldfPNxOY6Gq
         YRhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rlit82fhQTpGRY8YUn5rTD9Zv4HQE0VxuETrmwJPA7E=;
        b=uNo0yGbktKpeAaKCR/0h156WxdHkX4JeiSzWSmuSTbK00XKM0NLH7IritnLX9FEVTz
         gXZ4WZLm7HEApbGIYdEaMutZB5gTXWokPasL/IrESXnUbrt+V09H7/Cd2VgQqJSaT516
         jMm4ZJFawI5cjPs2JczXtHCNXsZP8P8shWc/7fJZ26qoYZT7ZeeXw2muEDOCIq0L9J2w
         YcXJvSS0zDRweO4lxigPI59iZUy1fOAfoswMAHQCvB6qBQKzC77Xmz+M41G4hJQW4xVP
         bqreHTaEWsEpKzT21eE4FpF7FXA+T0EOJy2RGEcAWIcuHMUnXL+8ov3I9VcQKmbFFtTb
         /77A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533L2CgPSbuOP6v81DzgZoIMAiGhzvIkVmfB2lsSUNwVxBMdO4Pi
	xSpO8B1dPOIjs1qXNBYyQ1w=
X-Google-Smtp-Source: ABdhPJxFV/06LL6HQXQ9vYp6HK+VCYi6CoKQ+5mHPJQIBR3jLZAPPD0l3vwEhr6JgeoNr1vfRtCsZA==
X-Received: by 2002:a2e:9f53:: with SMTP id v19mr6068891ljk.109.1607727402719;
        Fri, 11 Dec 2020 14:56:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:bc2a:: with SMTP id b42ls1959233ljf.2.gmail; Fri, 11 Dec
 2020 14:56:41 -0800 (PST)
X-Received: by 2002:a05:651c:1027:: with SMTP id w7mr5960524ljm.297.1607727401643;
        Fri, 11 Dec 2020 14:56:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607727401; cv=none;
        d=google.com; s=arc-20160816;
        b=OT4fwwDtwbEQTocV6C647eFNIh6YDXKnTs3JLmR5KgkZEtnhAy9BuGqmwK0rTJaQbt
         Jw6mqufw7e6XjQjrdRQZIkA2voyZIxODIFcCuCEW/nYrMfwBTTSac/wJz93lDf4pbx3I
         jaNfwsfYodW+fHjIH00oA816fk2qvEFs/RyOsZDEs7TYjZYbix45hf1i+TLURDH6Z0Di
         pfbWl9kQVau9EJD9Z4o4DtI/nUIV/yPjwFG1P0SwcFt/RTJQLcdkRDKDy2/frQsClbRu
         3FdVAY0oVQRFGkqiSZyeKyuZcnyTyD+4OTyfz6ZOpB6BDVRdrquPx8KqjkzxY4NAblAx
         4Y3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:dkim-signature:dkim-signature:from;
        bh=RMdJ5cNpvG94MqmN/2d6QVEWUP/YrLyBgV8MUkzsNlA=;
        b=krIsxtmrf/YYh+yNYZ4mjQm69TWos4pw/aSwbt0qCwwVExMSNKHRkmV+z+wmVEj8Z8
         S2HqzhloCEaUaysKFLHrOpmYhLcjFbICKIPcPXMjfQ3d/8UVpdZ6lbe25Px65nF3KK6v
         xvvzX+hS0BADhHwsVwFcWsLuPnBIdGHKYqXJVKX+/Zsgx7DqDyoa6CLUgEsC3fjWBC/9
         U63Zr2hIywKhngmXNThHOotYIP9WcxXyef7who+ZuJZ3mDYvo0uUv1hUaIEYcdA5X7Hu
         oKayli8V8vl0Sj2Gvr1IjguQ/IGaXbPHgeIPKtO4+L93EE9J9vv4W/onpRaYD7ytZWPB
         Ba/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0WcDMUhL;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=ljcajSXu;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id v18si351898lfp.4.2020.12.11.14.56.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 14:56:41 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Andrew Cooper <andrew.cooper3@citrix.com>, boris.ostrovsky@oracle.com,
 =?utf-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>, LKML
 <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>, Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Helge Deller <deller@gmx.de>, afzal
 mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org, Russell
 King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org, Mark
 Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Tvrtko
 Ursulin <tvrtko.ursulin@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Michal
 Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org, Karthikeyan
 Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, linux-rdma@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>, Leon
 Romanovsky <leon@kernel.org>
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu interrupts
In-Reply-To: <edbedd7a-4463-d934-73c9-fa046c19cf6d@citrix.com>
References: <20201210192536.118432146@linutronix.de> <20201210194045.250321315@linutronix.de> <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com> <2164a0ce-0e0d-c7dc-ac97-87c8f384ad82@suse.com> <871rfwiknd.fsf@nanos.tec.linutronix.de> <9806692f-24a3-4b6f-ae55-86bd66481271@oracle.com> <877dpoghio.fsf@nanos.tec.linutronix.de> <edbedd7a-4463-d934-73c9-fa046c19cf6d@citrix.com>
Date: Fri, 11 Dec 2020 23:56:40 +0100
Message-ID: <87y2i4eytz.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=0WcDMUhL;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=ljcajSXu;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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

Andrew,

On Fri, Dec 11 2020 at 22:21, Andrew Cooper wrote:
> On 11/12/2020 21:27, Thomas Gleixner wrote:
>> It's not any different from the hardware example at least not as far as
>> I understood the code.
>
> Xen's event channels do have a couple of quirks.

Why am I not surprised?

> Binding an event channel always results in one spurious event being
> delivered.=C2=A0 This is to cover notifications which can get lost during=
 the
> bidirectional setup, or re-setups in certain configurations.
>
> Binding an interdomain or pirq event channel always defaults to vCPU0.=C2=
=A0
> There is no way to atomically set the affinity while binding.=C2=A0 I bel=
ieve
> the API predates SMP guest support in Xen, and noone has fixed it up
> since.

That's fine. I'm not changing that.

What I'm changing is the unwanted and unnecessary overwriting of the
actual affinity mask.

We have a similar issue on real hardware where we can only target _one_
CPU and not all CPUs in the affinity mask. So we still can preserve the
(user) requested mask and just affine it to one CPU which is reflected
in the effective affinity mask. This the right thing to do for two
reasons:

   1) It allows proper interrupt distribution

   2) It does not break (user) requested affinity when the effective
      target CPU goes offline and the affinity mask still contains
      online CPUs. If you overwrite it you lost track of the requested
      broader mask.

> As a consequence, the guest will observe the event raised on vCPU0 as
> part of setting up the event, even if it attempts to set a different
> affinity immediately afterwards.=C2=A0 A little bit of care needs to be t=
aken
> when binding an event channel on vCPUs other than 0, to ensure that the
> callback is safe with respect to any remaining state needing
> initialisation.

That's preserved for all non percpu interrupts. The percpu variant of
VIRQ and IPIs did binding to vCPU !=3D 0 already before this change.

> Beyond this, there is nothing magic I'm aware of.
>
> We have seen soft lockups before in certain scenarios, simply due to the
> quantity of events hitting vCPU0 before irqbalance gets around to
> spreading the load.=C2=A0 This is why there is an attempt to round-robin =
the
> userspace event channel affinities by default, but I still don't see why
> this would need custom affinity logic itself.

Just the previous attempt makes no sense for the reasons I outlined in
the changelog. So now with this new spreading mechanics you get the
distribution for all cases:

  1) Post setup using and respecting the default affinity mask which can
     be set as a kernel commandline parameter.

  2) Runtime (user) requested affinity change with a mask which contains
     more than one vCPU. The previous logic always chose the first one
     in the mask.

     So assume userspace affines 4 irqs to a CPU 0-3 and 4 irqs to CPU
     4-7 then 4 irqs end up on CPU0 and 4 on CPU4

     The new algorithm which is similar to what we have on x86 (minus
     the vector space limitation) picks the CPU which has the least
     number of channels affine to it at that moment. If e.g. all 8 CPUs
     have the same number of vectors before that change then in the
     example above the first 4 are spread to CPU0-3 and the second 4 to
     CPU4-7

Thanks,

        tglx
  =20

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/87y2i4eytz.fsf%40nanos.tec.linutronix.de.
