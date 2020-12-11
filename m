Return-Path: <linux-ntb+bncBAABB5PBZ77AKGQEXARSDHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED922D81E0
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 23:21:42 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id v18sf7491622qta.22
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 14:21:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607725301; cv=pass;
        d=google.com; s=arc-20160816;
        b=vi/3Nua8uwMB0pN4lvcLYE9xpiTUmAWudcPRy6BfviQmSFVuBlEe4G2bWPCtiaoHJp
         E9z2+4oMRryOje63OCs8bEwcBm30e5RVoobxoIwyY2ik3/Atvb3xQwpPYU5tUsggxc68
         VzFlUPq7miEoJATPKrGYzEJ8lTMwWSfUc8LbzLaN7wJjPLiO/7Dm17xJEAzVZ/RurUli
         WVJ8Mz0QCvRGrOyxB4B6a2A8j0aYMcqP1rQoHf/OdORePfnSnu7lZRxxVltOnEayaODh
         eyH6uTDQMyKvP5qgtPrmB70B5xyex0WPvvYjeNwbKqoJpXF9DwFbBenVSchx0HYxt9bu
         GQ5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr
         :dkim-signature;
        bh=lleSMaDj5QMbKUUBm/zjnie3r81UzgUwksYaoYudyyA=;
        b=s2hNVFfDxm+00lt6a25UbdlDO8SCDpTx5daCBj8RytINsrlMCAZ9trjGQoSI20xVEM
         VCNoXL3mrJIXl0JD0dVTV3JRK8vI6XPpClKG0b7PTHX82NGShLbX3xBWAwC0ClKU1qZL
         psubBwrM9LBzgUqbohC1lkeybrgIeRN0hRjp1YVGD1Q+YTpcKMHXUSJJ9vXgZWHJS77U
         FDeipbTneHHNz9LY47eN1Fr+wM940WmDEEgy/1yyt+3Gh/EmoWlD+HieEo1QzunIvZj2
         WE6xCJ9EtV45Bvq6dOZOrhTx3LuKoAn2Qset9b8Dii+gCREqKtX6/tnmMb0A9KEZgU8I
         fXKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=VCYhqaHM;
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.155 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lleSMaDj5QMbKUUBm/zjnie3r81UzgUwksYaoYudyyA=;
        b=L2aLt8enA/8B8omAyf/50skbcrJR+sLDi+ORd5qHNtgPU6NRo+DtjKkHfQOgjtnD4d
         M/r5GA9cz16/2wMDpqxEEJkoDa9XtHlmEjDaAqANeb75VCveYh+dItTqauBbDQCRX7hV
         QP4wVIIc9FfylcKy1K26KTr1kC4Px7yTvhJYPWwrvHzE7fbzxH6fIf7XOh74YEpu+zDH
         vEj3qiG+1Vs2+FtATIUS11DMtcw10AX694h4cJqerECQFMKngsNGVdhLbR/3KCKcxuYe
         /gWsNikT7xopvejaoI0SlVhF6n2T+r+KO7v0P3ZoluTHazTBpiUn/sattGSzyfV8RFtV
         PWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lleSMaDj5QMbKUUBm/zjnie3r81UzgUwksYaoYudyyA=;
        b=P2jDR2EpNUpTMk+dBvp/pzeKpYRaWgYQradpj2sU+1mecu6YekTjGKHODBtc9+zEpS
         ky7+8j0qt+yatKyUlPm3gPyQom3LyK0GP7gujF/aFmuZ+20zquYydQfC5CNQW+vV09KQ
         by+OOlty3WbhOJd83Mnl95nTi7MwlMT2rylwQdF3we5fbUzTfcc30PZBdOxj8tQyB6XS
         wYJfGHKRxPtVW5hI+PWtOUUEX+rhfBBxSylTT10x7xZcDsQpyK3aCXpmTOMzlyVZcZ01
         uH7hPVhMeABJJt494tHTX7URgk0L4Qi6Srct/ZbnKWPXSa+0ovcS4W6uktD4YmIN8hnO
         ghKw==
X-Gm-Message-State: AOAM5306orQwpQ/VRCRG8RTRHC2+iBubjbeOI9qjw4chSpzOil7glVYp
	AngCqrDQHAVLRnvJZHSe978=
X-Google-Smtp-Source: ABdhPJz234IS9CJh89FsEd6t2XV6KAbUGZ76GN5URZThQ8LOjhtw+VzfegwGzT9BD8iWlByVg6tcKw==
X-Received: by 2002:ad4:5b82:: with SMTP id 2mr18212581qvp.28.1607725301493;
        Fri, 11 Dec 2020 14:21:41 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:7904:: with SMTP id u4ls4864466qkc.7.gmail; Fri, 11 Dec
 2020 14:21:41 -0800 (PST)
X-Received: by 2002:a37:809:: with SMTP id 9mr16275163qki.156.1607725301104;
        Fri, 11 Dec 2020 14:21:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607725301; cv=none;
        d=google.com; s=arc-20160816;
        b=F585H2BCpYb9Ld0szBDUZIGvB1FJ0dYeXzZSwfwawX8H+uFLCLyq4jF0fYpon4af4w
         oIVXAfINj/PrDYKn83pjg4aF4oLDkVyG8QZIObpz4fP1354mxUxGO1ScYs4iiYUt5dv5
         IOY6ryMSl4sNEwSPdtoL7honDjXBIcoRNsOu9C4D2F9oVW8tqOcWbjPkQxmYrr+d35bo
         dH8UABRsExYl7+2cfb2JpSsvZ1s3Q8XCLyNllykIqATqY7ivEnLeZ/US2An+Kfgtc1Zq
         TKZ6GYdo1BbAlCW8KhNEXiSlPvdK208oH17JddLXitPyvjlZrVgjAiGIVHzEb8ESQMTM
         lpRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:dkim-signature;
        bh=JDt7jeZUMHNMy8i+NOzY89UInXSAQT0f868ZDWTxtaE=;
        b=nIRSfqm3BOmbHhu1/skZOFLKd02Z2dZyJ3nqb2d1+H1Sjk060eiPz2nqtpskiwlyIN
         1M5/I8oW9C2HuKtnSQcqmyDwY1tT/LYTW0/ww6m+tjwLDQFGDFnmo3oaQx0PwWhdOvFm
         fYzpCYnsgRBGY2Nmpe4I08AmgwghH95J4GMBGlA+MQ5Sk8pHG89iOvHnMl/MsOM29aVy
         qPgJ3BPvO9G0+TRYXi/3TKpOR+LHNBafTG8QXa4+iUdAZslWkfIRKOfveoabRZTVJLFt
         wXEMOa/lwFgOrADf7XOVfq/0GrjqygFBH6jLSAYxLAwP5NVv2X5J+JlJlifbLeexyBVW
         iu1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=VCYhqaHM;
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.155 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
Received: from esa3.hc3370-68.iphmx.com (esa3.hc3370-68.iphmx.com. [216.71.145.155])
        by gmr-mx.google.com with ESMTPS id z94si454742qtc.0.2020.12.11.14.21.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 14:21:40 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.155 as permitted sender) client-ip=216.71.145.155;
IronPort-SDR: zxKa8rgyFeg2y8fCG3oi7VnW2gUpr9OYlkvCF/sBtRwerKcGUj3U846xesB6P0sd8TbXpQL30D
 M+yqnl9FyOSn4AVTQICd1n20O7aUuBZJHO1hO49Y7WMuixViLEiIv7JOWQDh2eVZ9soCVAFoQW
 vfrc7AECE95KCs5m0z0M9zvfWWGUs6ClwL+l6kwP1ibvxZE1mGugR63NagsSn+AjDypKzJbLJy
 9z6mlpc3fKmjPgHdEEba0IFcfG0cgQo5L6XZQsW65QXYXuCPJHzmXpVX8QCySh2BtbtSv6z0yL
 eso=
X-SBRS: 5.2
X-MesageID: 33047865
X-Ironport-Server: esa3.hc3370-68.iphmx.com
X-Remote-IP: 162.221.158.21
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.78,412,1599537600"; 
   d="scan'208";a="33047865"
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu
 interrupts
To: Thomas Gleixner <tglx@linutronix.de>, <boris.ostrovsky@oracle.com>,
	=?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>, LKML
	<linux-kernel@vger.kernel.org>
CC: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
	Stefano Stabellini <sstabellini@kernel.org>,
	<xen-devel@lists.xenproject.org>, "James E.J. Bottomley"
	<James.Bottomley@HansenPartnership.com>, Helge Deller <deller@gmx.de>, "afzal
 mohammed" <afzal.mohd.ma@gmail.com>, <linux-parisc@vger.kernel.org>, "Russell
 King" <linux@armlinux.org.uk>, <linux-arm-kernel@lists.infradead.org>, "Mark
 Rutland" <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Christian Borntraeger
	<borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
	<linux-s390@vger.kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
	<rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
	<daniel@ffwll.ch>, Pankaj Bharadiya
	<pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
	<chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>,
	<intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>, "Tvrtko
 Ursulin" <tvrtko.ursulin@linux.intel.com>, Linus Walleij
	<linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>, Lee Jones
	<lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	<linux-ntb@googlegroups.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, "Michal
 Simek" <michal.simek@xilinx.com>, <linux-pci@vger.kernel.org>, "Karthikeyan
 Mitran" <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
	Tariq Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, <netdev@vger.kernel.org>,
	<linux-rdma@vger.kernel.org>, Saeed Mahameed <saeedm@nvidia.com>, "Leon
 Romanovsky" <leon@kernel.org>
References: <20201210192536.118432146@linutronix.de>
 <20201210194045.250321315@linutronix.de>
 <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
 <2164a0ce-0e0d-c7dc-ac97-87c8f384ad82@suse.com>
 <871rfwiknd.fsf@nanos.tec.linutronix.de>
 <9806692f-24a3-4b6f-ae55-86bd66481271@oracle.com>
 <877dpoghio.fsf@nanos.tec.linutronix.de>
From: "'Andrew Cooper' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <edbedd7a-4463-d934-73c9-fa046c19cf6d@citrix.com>
Date: Fri, 11 Dec 2020 22:21:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <877dpoghio.fsf@nanos.tec.linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB
X-ClientProxiedBy: AMSPEX02CAS01.citrite.net (10.69.22.112) To
 FTLPEX02CL03.citrite.net (10.13.108.165)
X-Original-Sender: andrew.cooper3@citrix.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@citrix.com header.s=securemail header.b=VCYhqaHM;       spf=pass
 (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.155 as
 permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
X-Original-From: Andrew Cooper <andrew.cooper3@citrix.com>
Reply-To: Andrew Cooper <andrew.cooper3@citrix.com>
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

On 11/12/2020 21:27, Thomas Gleixner wrote:
> On Fri, Dec 11 2020 at 09:29, boris ostrovsky wrote:
>
>> On 12/11/20 7:37 AM, Thomas Gleixner wrote:
>>> On Fri, Dec 11 2020 at 13:10, J=C3=BCrgen Gro=C3=9F wrote:
>>>> On 11.12.20 00:20, boris.ostrovsky@oracle.com wrote:
>>>>> On 12/10/20 2:26 PM, Thomas Gleixner wrote:
>>>>>> Change the implementation so that the channel is bound to CPU0 at th=
e XEN
>>>>>> level and leave the affinity mask alone. At startup of the interrupt
>>>>>> affinity will be assigned out of the affinity mask and the XEN bindi=
ng will
>>>>>> be updated.
>>>>> If that's the case then I wonder whether we need this call at all and=
 instead bind at startup time.
>>>> After some discussion with Thomas on IRC and xen-devel archaeology the
>>>> result is: this will be needed especially for systems running on a
>>>> single vcpu (e.g. small guests), as the .irq_set_affinity() callback
>>>> won't be called in this case when starting the irq.
>> On UP are we not then going to end up with an empty affinity mask? Or
>> are we guaranteed to have it set to 1 by interrupt generic code?
> An UP kernel does not ever look on the affinity mask. The
> chip::irq_set_affinity() callback is not invoked so the mask is
> irrelevant.
>
> A SMP kernel on a UP machine sets CPU0 in the mask so all is good.
>
>> This is actually why I brought this up in the first place --- a
>> potential mismatch between the affinity mask and Xen-specific data
>> (e.g. info->cpu and then protocol-specific data in event channel
>> code). Even if they are re-synchronized later, at startup time (for
>> SMP).
> Which is not a problem either. The affinity mask is only relevant for
> setting the affinity, but it's not relevant for delivery and never can
> be.
>
>> I don't see anything that would cause a problem right now but I worry
>> that this inconsistency may come up at some point.
> As long as the affinity mask becomes not part of the event channel magic
> this should never matter.
>
> Look at it from hardware:
>
> interrupt is affine to CPU0
>
>      CPU0 runs:
>     =20
>      set_affinity(CPU0 -> CPU1)
>         local_irq_disable()
>        =20
>  --> interrupt is raised in hardware and pending on CPU0
>
>         irq hardware is reconfigured to be affine to CPU1
>
>         local_irq_enable()
>
>  --> interrupt is handled on CPU0
>
> the next interrupt will be raised on CPU1
>
> So info->cpu which is registered via the hypercall binds the 'hardware
> delivery' and whenever the new affinity is written it is rebound to some
> other CPU and the next interrupt is then raised on this other CPU.
>
> It's not any different from the hardware example at least not as far as
> I understood the code.

Xen's event channels do have a couple of quirks.

Binding an event channel always results in one spurious event being
delivered.=C2=A0 This is to cover notifications which can get lost during t=
he
bidirectional setup, or re-setups in certain configurations.

Binding an interdomain or pirq event channel always defaults to vCPU0.=C2=
=A0
There is no way to atomically set the affinity while binding.=C2=A0 I belie=
ve
the API predates SMP guest support in Xen, and noone has fixed it up since.

As a consequence, the guest will observe the event raised on vCPU0 as
part of setting up the event, even if it attempts to set a different
affinity immediately afterwards.=C2=A0 A little bit of care needs to be tak=
en
when binding an event channel on vCPUs other than 0, to ensure that the
callback is safe with respect to any remaining state needing initialisation=
.

Beyond this, there is nothing magic I'm aware of.

We have seen soft lockups before in certain scenarios, simply due to the
quantity of events hitting vCPU0 before irqbalance gets around to
spreading the load.=C2=A0 This is why there is an attempt to round-robin th=
e
userspace event channel affinities by default, but I still don't see why
this would need custom affinity logic itself.

Thanks,

~Andrew

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/edbedd7a-4463-d934-73c9-fa046c19cf6d%40citrix.com.
