Return-Path: <linux-ntb+bncBAABBFMRZX7AKGQEE2OSM7I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 089752D73D6
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 11:23:18 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id x17sf4568290ljj.5
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 02:23:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607682197; cv=pass;
        d=google.com; s=arc-20160816;
        b=FkZqCzeJthUTYWJ1NcaxZ4n46DiHZoP2rE30hW79f8XtOaXI3cudivPBW9BXK7XJH9
         6soupitgE7iBVQbnmi7yFRKrbxSu/fSOzFerufAyO78e6dReORXqfr9K2WMXEEc3Cc7t
         Xmo2NHxWkf39aesvsdsqfbkdVC4F5RAm8nyg0uU2e3wDSJYCiMQlxWq8+uE+7dUH8ms9
         Wg+AMj3st0leZK98K43BaKTt6xbYiZnaBfW52y/PPvd4uAUtKoYKsWC6fhEZ9uGJyBQs
         u0MyhVeH9CGx1MZaxeOACvhK+rOCHZl6Ix69lBftTAcgCSNbc/3AnhY7PkBpUuw/1QWS
         hn4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=m/CB+5+yn5ynToC/ihJUjV/RZnDDhI9n2iukBT6hu1s=;
        b=l2IVA5PZ33zB8OuvNs2ixrgl+UXtCivbsv0z31KKDDdf+qjSLbUOtLaRA13W+7ldWk
         IlAyuZdlLZeeWSopLLLP2U/qTXN+HD2UUAPvj/tZlgCymmtv5w3SYMygNUOYDZ3gzKTU
         FR/XrM/k4kNU0cTuF8WDCgUyw2KZPagF3B+6bG+3K+ar3fivwAc9ZIB+LDPDU8cYqY19
         JL3aKHze+IIHD5IqqbZIszt6BPecrOIQd/aIHahHZuu42Wm3X4uT6YP0pYecTPTHv3+k
         CEJVGeEdWQPIg6IU5tDENGr7CBT+URVJhAhp/Yp5hKc64agXGy3OkFpc1xo8UbMfEdLU
         EoWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=JX3YEGDa;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=m/CB+5+yn5ynToC/ihJUjV/RZnDDhI9n2iukBT6hu1s=;
        b=IzknNb3EB9FYHbWs3wvvuAA+jce1hzdOMmrE8grrluaTbsbZpyWcn2rrMBgePBU28w
         NNGSrmZjOj/DAvy44XmEMKqbqTRfwhzHHZ2Xh2uoqfWnLNyf/O/yr+A57Bhz58PWUVf/
         0003ZAj0Y5L4NdJEodx+lqvyq5IhAiYDuNJqSvzlOjOFC9kHmi9mtFXy0DGzVbgwdCtM
         8WTxR7PLVpDMzLa1Ttp4i78Uhk3bFX8iJEtzbgZrfPPCrKTL74E3teo9+ZOtm82a62B5
         1HGQo3YtXJaPMzMCrYRCBcFoPVJc0/CnyksX+YUcqrb2Vtx3BUTF/8iRvyahPACg+fP1
         xNdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m/CB+5+yn5ynToC/ihJUjV/RZnDDhI9n2iukBT6hu1s=;
        b=klU1hRGe7eqMBq5NnIMQSDXVqi5f2EpNKQ9ihWD9myrq8r06BXRKAFBPFCceUMItXE
         0PX/4vy6XUJQiOaVlVIU5seuMH/hfRrsNQfL+zUHOVdzOjAMCBhTfdUjhAOeOVZorRFW
         Ov0Upwm+1dVYYotaH8jIPb65pjDljwvO0rMigrRaaFrY6mciNBA367T3xBlNpvQAc3Ly
         z3ejnNUkDngSn0eAbusHXxvTnTCeC5HxwVeQxvbOqgEM0yKjfXztWmzOGVMpWq2Dfcl7
         pqBT0RoHuuBqUQo9F2quSW+f80B6u1MuC6kreCTwCYewEtgbXFNN30kURafnWRj1VCi/
         e+ug==
X-Gm-Message-State: AOAM530TqUUHwnBD+Mx6gKEp8l9pz4DYRwFxi90eEbLPvTmbOvaNtZNf
	6aHUVtKxGcXVcoUJWIhi98M=
X-Google-Smtp-Source: ABdhPJzj/W75VzFZOU6h32Cxw0P1wnRLguAUj5wY0O4cQrpkRpI/z//hiRJ0lFxsWKDG+pEZDR5Kdg==
X-Received: by 2002:a19:ae18:: with SMTP id f24mr4564800lfc.528.1607682197533;
        Fri, 11 Dec 2020 02:23:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls1398216lff.0.gmail; Fri, 11
 Dec 2020 02:23:16 -0800 (PST)
X-Received: by 2002:a05:6512:318b:: with SMTP id i11mr4070059lfe.364.1607682196645;
        Fri, 11 Dec 2020 02:23:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607682196; cv=none;
        d=google.com; s=arc-20160816;
        b=bY8w09t23SUAfK62R+ckrv2KtkUsQ7Mcfh9sAD7jtrjrknmY8HjAd3wJGCCaTbzus9
         wHqXzSIeO5rE6l2iFtwlth3XbW49HpDFvkVzxJS4qVdwpCkB0f68+Fc9bDLvc3n3pcWW
         EgJTkBMoX9t4uN+5IO/d6KoI1E5KF4WVjwwT+0dYxM5y2X8KoBEEs5YbmlE3YMlJ54Xe
         mmPsoc/j3SplIX2i24ZYqvmy2ZOq+rKCNWKpO/ttmU6R8CmcJekQVbgQWlBj1desKikc
         VEXx6RFGzw6jFQMhG0gjgViyOmrmjZsi6MqjWvLooXD8OEMINTiIhPeyufFiWiG3qPp3
         KQnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=Ylj5Ou5EGxXoY8HzgwHM13TBu2785E6dSVq65gzanwU=;
        b=V0MtKosjDXwbBFfGOBaPcaITuhVt7ig34xr+gbToXzd+5YkMMZTwvHy7OAm6CSJXkq
         hfWXxPU6jJchuKa+4jhrFFwh6r1UeZR2adAQ997xLhIUJm31Qmx6JTMB486Ff8qmzrgD
         SMZZ3kV0e7328zVx3OLn5NptNMlJ9G2CRBnRUaP8bclZnfAAsaZHjKmKN2qxv0tM34Mk
         SMwuCnx5pxJFsuC6YhvJh6SiXk67DnJADTN9pjHXIpu4HntmE1h7Tx+cUO0BCvIEicTs
         F2nP5nLFsvLjL3909pbF/GAPG4DQygq+pwuNEZZWcZEYdQJsPpcGoSS05gxkziznKily
         0NHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=JX3YEGDa;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id h21si338134ljj.6.2020.12.11.02.23.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 02:23:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 86CDFADA2;
	Fri, 11 Dec 2020 10:23:15 +0000 (UTC)
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu
 interrupts
To: Thomas Gleixner <tglx@linutronix.de>, boris.ostrovsky@oracle.com,
 LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org,
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
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>
References: <20201210192536.118432146@linutronix.de>
 <20201210194045.250321315@linutronix.de>
 <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
 <a4bce428-4420-6064-c7cc-7136a7544a52@suse.com>
 <874kksiras.fsf@nanos.tec.linutronix.de>
From: =?UTF-8?B?J0rDvHJnZW4gR3Jvw58nIHZpYSBsaW51eC1udGI=?= <linux-ntb@googlegroups.com>
Message-ID: <83b596c7-453b-34b5-a6a5-6c04d20e818a@suse.com>
Date: Fri, 11 Dec 2020 11:23:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <874kksiras.fsf@nanos.tec.linutronix.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="JLZob3e3TcGZaffU2V6GYg9zw25iTy30k"
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=JX3YEGDa;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
X-Original-From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Reply-To: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--JLZob3e3TcGZaffU2V6GYg9zw25iTy30k
Content-Type: multipart/mixed; boundary="W7MOwpcHMEZDHVpnNeRdRpRviypq0k3b2";
 protected-headers="v1"
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
To: Thomas Gleixner <tglx@linutronix.de>, boris.ostrovsky@oracle.com,
 LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org,
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
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>
Message-ID: <83b596c7-453b-34b5-a6a5-6c04d20e818a@suse.com>
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu
 interrupts
References: <20201210192536.118432146@linutronix.de>
 <20201210194045.250321315@linutronix.de>
 <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
 <a4bce428-4420-6064-c7cc-7136a7544a52@suse.com>
 <874kksiras.fsf@nanos.tec.linutronix.de>
In-Reply-To: <874kksiras.fsf@nanos.tec.linutronix.de>

--W7MOwpcHMEZDHVpnNeRdRpRviypq0k3b2
Content-Type: multipart/mixed;
 boundary="------------C0A97F76D1E2DDEBCBB7C379"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C0A97F76D1E2DDEBCBB7C379
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11.12.20 11:13, Thomas Gleixner wrote:
> On Fri, Dec 11 2020 at 07:17, J=C3=BCrgen Gro=C3=9F wrote:
>> On 11.12.20 00:20, boris.ostrovsky@oracle.com wrote:
>>>
>>> On 12/10/20 2:26 PM, Thomas Gleixner wrote:
>>>> All event channel setups bind the interrupt on CPU0 or the target CPU =
for
>>>> percpu interrupts and overwrite the affinity mask with the correspondi=
ng
>>>> cpumask. That does not make sense.
>>>>
>>>> The XEN implementation of irqchip::irq_set_affinity() already picks a
>>>> single target CPU out of the affinity mask and the actual target is st=
ored
>>>> in the effective CPU mask, so destroying the user chosen affinity mask
>>>> which might contain more than one CPU is wrong.
>>>>
>>>> Change the implementation so that the channel is bound to CPU0 at the =
XEN
>>>> level and leave the affinity mask alone. At startup of the interrupt
>>>> affinity will be assigned out of the affinity mask and the XEN binding=
 will
>>>> be updated.
>>>
>>>
>>> If that's the case then I wonder whether we need this call at all and i=
nstead bind at startup time.
>>
>> This binding to cpu0 was introduced with commit 97253eeeb792d61ed2
>> and I have no reason to believe the underlying problem has been
>> eliminated.
>=20
>      "The kernel-side VCPU binding was not being correctly set for newly
>       allocated or bound interdomain events.  In ARM guests where 2-level
>       events were used, this would result in no interdomain events being
>       handled because the kernel-side VCPU masks would all be clear.
>=20
>       x86 guests would work because the irq affinity was set during irq
>       setup and this would set the correct kernel-side VCPU binding."
>=20
> I'm not convinced that this is really correctly analyzed because affinity
> setting is done at irq startup.
>=20
>                  switch (__irq_startup_managed(desc, aff, force)) {
> 	        case IRQ_STARTUP_NORMAL:
> 	                ret =3D __irq_startup(desc);
>                          irq_setup_affinity(desc);
> 			break;
>=20
> which is completely architecture agnostic. So why should this magically
> work on x86 and not on ARM if both are using the same XEN irqchip with
> the same irqchip callbacks.

I think this might be related to _initial_ cpu binding of events and
changing the binding later. This might be handled differently in the
hypervisor.


Juergen

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/83b596c7-453b-34b5-a6a5-6c04d20e818a%40suse.com.

--------------C0A97F76D1E2DDEBCBB7C379
Content-Type: application/pgp-keys;
 name="OpenPGP_0xB0DE9DD628BF132F.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0xB0DE9DD628BF132F.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFOMcBYBCACgGjqjoGvbEouQZw/ToiBg9W98AlM2QHV+iNHsEs7kxWhKMjrioyspZKOBy=
cWx
w3ie3j9uvg9EOB3aN4xiTv4qbnGiTr3oJhkB1gsb6ToJQZ8uxGq2kaV2KL9650I1SJvedYm8O=
f8Z
d621lSmoKOwlNClALZNew72NjJLEzTalU1OdT7/i1TXkH09XSSI8mEQ/ouNcMvIJNwQpd369y=
9bf
IhWUiVXEK7MlRgUG6MvIj6Y3Am/BBLUVbDa4+gmzDC9ezlZkTZG2t14zWPvxXP3FAp2pkW0xq=
G7/
377qptDmrk42GlSKN4z76ELnLxussxc7I2hx18NUcbP8+uty4bMxABEBAAHNHEp1ZXJnZW4gR=
3Jv
c3MgPGpnQHBmdXBmLm5ldD7CwHkEEwECACMFAlOMcBYCGwMHCwkIBwMCAQYVCAIJCgsEFgIDA=
QIe
AQIXgAAKCRCw3p3WKL8TL0KdB/93FcIZ3GCNwFU0u3EjNbNjmXBKDY4FUGNQH2lvWAUy+dnyT=
hpw
dtF/jQ6j9RwE8VP0+NXcYpGJDWlNb9/JmYqLiX2Q3TyevpB0CA3dbBQp0OW0fgCetToGIQrg0=
MbD
1C/sEOv8Mr4NAfbauXjZlvTj30H2jO0u+6WGM6nHwbh2l5O8ZiHkH32iaSTfN7Eu5RnNVUJbv=
oPH
Z8SlM4KWm8rG+lIkGurqqu5gu8q8ZMKdsdGC4bBxdQKDKHEFExLJK/nRPFmAuGlId1E3fe10v=
5QL
+qHI3EIPtyfE7i9Hz6rVwi7lWKgh7pe0ZvatAudZ+JNIlBKptb64FaiIOAWDCx1SzR9KdWVyZ=
2Vu
IEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+wsB5BBMBAgAjBQJTjHCvAhsDBwsJCAcDAgEGFQgCC=
QoL
BBYCAwECHgECF4AACgkQsN6d1ii/Ey/HmQf/RtI7kv5A2PS4RF7HoZhPVPogNVbC4YA6lW7Dr=
Wf0
teC0RR3MzXfy6pJ+7KLgkqMlrAbN/8Dvjoz78X+5vhH/rDLa9BuZQlhFmvcGtCF8eR0T1v0nC=
/nu
AFVGy+67q2DH8As3KPu0344TBDpAvr2uYM4tSqxK4DURx5INz4ZZ0WNFHcqsfvlGJALDeE0Lh=
ITT
d9jLzdDad1pQSToCnLl6SBJZjDOX9QQcyUigZFtCXFst4dlsvddrxyqT1f17+2cFSdu7+ynLm=
XBK
7abQ3rwJY8SbRO2iRulogc5vr/RLMMlscDAiDkaFQWLoqHHOdfO9rURssHNN8WkMnQfvUewRz=
80h
SnVlcmdlbiBHcm9zcyA8amdyb3NzQG5vdmVsbC5jb20+wsB5BBMBAgAjBQJTjHDXAhsDBwsJC=
AcD
AgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey8PUQf/ehmgCI9jB9hlgexLvgOtf7PJn=
FOX
gMLdBQgBlVPO3/D9R8LtF9DBAFPNhlrsfIG/SqICoRCqUcJ96Pn3P7UUinFG/I0ECGF4EvTE1=
jnD
kfJZr6jrbjgyoZHiw/4BNwSTL9rWASyLgqlA8u1mf+c2yUwcGhgkRAd1gOwungxcwzwqgljf0=
N51
N5JfVRHRtyfwq/ge+YEkDGcTU6Y0sPOuj4Dyfm8fJzdfHNQsWq3PnczLVELStJNdapwPOoE+l=
otu
fe3AM2vAEYJ9rTz3Cki4JFUsgLkHFqGZarrPGi1eyQcXeluldO3m91NK/1xMI3/+8jbO0tsn1=
tqS
EUGIJi7ox80eSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuZGU+wsB5BBMBAgAjBQJTjHDrA=
hsD
BwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey+LhQf9GL45eU5vOowA2u5N3=
g3O
ZUEBmDHVVbqMtzwlmNC4k9Kx39r5s2vcFl4tXqW7g9/ViXYuiDXb0RfUpZiIUW89siKrkzmQ5=
dM7
wRqzgJpJwK8Bn2MIxAKArekWpiCKvBOB/Cc+3EXE78XdlxLyOi/NrmSGRIov0karw2RzMNOu5=
D+j
LRZQd1Sv27AR+IP3I8U4aqnhLpwhK7MEy9oCILlgZ1QZe49kpcumcZKORmzBTNh30FVKK1Evm=
V2x
AKDoaEOgQB4iFQLhJCdP1I5aSgM5IVFdn7v5YgEYuJYx37IoN1EblHI//x/e2AaIHpzK5h88N=
Eaw
QsaNRpNSrcfbFmAg987ATQRTjHAWAQgAyzH6AOODMBjgfWE9VeCgsrwH3exNAU32gLq2xvjpW=
nHI
s98ndPUDpnoxWQugJ6MpMncr0xSwFmHEgnSEjK/PAjppgmyc57BwKII3sV4on+gDVFJR6Y8ZR=
wgn
BC5mVM6JjQ5xDk8WRXljExRfUX9pNhdE5eBOZJrDRoLUmmjDtKzWaDhIg/+1Hzz93X4fCQkNV=
bVF
LELU9bMaLPBG/x5q4iYZ2k2ex6d47YE1ZFdMm6YBYMOljGkZKwYde5ldM9mo45mmwe0icXKLk=
pEd
IXKTZeKDO+Hdv1aqFuAcccTg9RXDQjmwhC3yEmrmcfl0+rPghO0Iv3OOImwTEe4co3c1mwARA=
QAB
wsBfBBgBAgAJBQJTjHAWAhsMAAoJELDendYovxMvQ/gH/1ha96vm4P/L+bQpJwrZ/dneZcmEw=
Tbe
8YFsw2V/Buv6Z4Mysln3nQK5ZadD534CF7TDVft7fC4tU4PONxF5D+/tvgkPfDAfF77zy2AH1=
vJz
Q1fOU8lYFpZXTXIHb+559UqvIB8AdgR3SAJGHHt4RKA0F7f5ipYBBrC6cyXJyyoprT10EMvU8=
VGi
wXvTyJz3fjoYsdFzpWPlJEBRMedCot60g5dmbdrZ5DWClAr0yau47zpWj3enf1tLWaqcsuylW=
svi
uGjKGw7KHQd3bxALOknAp4dN3QwBYCKuZ7AddY9yjynVaD5X7nF9nO5BjR/i1DG86lem3iBDX=
zXs
ZDn8R38=3D
=3D2wuH
-----END PGP PUBLIC KEY BLOCK-----

--------------C0A97F76D1E2DDEBCBB7C379--

--W7MOwpcHMEZDHVpnNeRdRpRviypq0k3b2--

--JLZob3e3TcGZaffU2V6GYg9zw25iTy30k
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAl/TSJEFAwAAAAAACgkQsN6d1ii/Ey+l
mgf/d2+/6FRTlqTIKtgTaI9zWYXHFZUVv6aYW6iBE6VxANXvSWq9HMk6KnsreMEFtZ6/gFqr/hEu
oLKI4zId8FjcveupY8yiEXvBkWDXXQHXm2vw2fO6Fe2D0RCcR0QLeFpvolQBAp0s4pGQNCWixekr
Q6YyAWOKOmAjWmLsSsyend9GfjL+BFR6pObB4CLRdm5rvQHbPW6pNHBTTX2bxeszchEibXqmy+eX
K7jbAijkr/Vq+9h84FBdAOZQRgXCIrWI14ae2O+8CGs9w5v/Yczedv+z4knUyDtXHly4+zuhkPSW
tmVXo5DD0Oh4PaNITuXRo6Y9sSrWG1w22F+SVn8vKg==
=c494
-----END PGP SIGNATURE-----

--JLZob3e3TcGZaffU2V6GYg9zw25iTy30k--
