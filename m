Return-Path: <linux-ntb+bncBDAMN6NI5EERB65SR6GQMGQE5A7Y2SY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E6A46096B
	for <lists+linux-ntb@lfdr.de>; Sun, 28 Nov 2021 20:33:17 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id be34-20020a05680821a200b002bd24f9a87bsf9702656oib.17
        for <lists+linux-ntb@lfdr.de>; Sun, 28 Nov 2021 11:33:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638127996; cv=pass;
        d=google.com; s=arc-20160816;
        b=brHWXxx9A4jLRtOfWmgOZzNbgBmTY9UruWIP4pJUcEOt+Wvne2wBR/9kdBNrIBrP7z
         kW8ajgpJRRFIYuoCyXv4Ux8yK5puF6LU2oFb1RhAHOhV+bh9LD5sUsRqNBJUsA62BA5t
         myw8sV7ItQ9AgSyUve5L3uTDEDJ3LZtWQPr8IyvwtUBvhSuKxBpUGACFHVkNAv7Dwub1
         Z4aYSsgkIwZFKE+VvDHaDupx7w/bDta1zJ72Kb5UazznnovZIe5nyBD+LIxNvjQq1U3j
         7Di77WAa3ok1kuDU6fOdpJUkvOMWsHkhBXWO/KBHegRxAMNM6EoqzRckCqFuxRcQO2y8
         yMZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Odog/PYDsGfLo5OG/6M76N9Kv54SJfrVHllMpYWKrpg=;
        b=cXbvF3HKuAGcgu3uiw37Tg+ZcFwldLAhsLioHagIPBIDRA/FLr935V7do/3IfUIg1d
         1OL0GUsftr5lSc+StEqUTfuKtp+jtTY/ETw1efuCJ2L1JPx6HXA0BDfhGzKpJeag931v
         Zli4J7jcgHI1Hs7VtGcOg7o4C865u+17ol6u8M0UeKqYRhueWN9sIIWmQqxTg6ZGVzdg
         /cneuoejHqn4Gz02qENmyXKEyEE9jnjsYQqVb7OtU1sLEW0rDC+Hx/smNt2uH3hQ9KoV
         l05fnkg/26tSL+/FYYKVF9lRoN1luMHt21aNuILyDz2dJjIILzki/W6LoLkalZj26vue
         6xtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=DgcprPBW;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Odog/PYDsGfLo5OG/6M76N9Kv54SJfrVHllMpYWKrpg=;
        b=Yba8aNCESpAnOXlXFjf5cEJ6OuG3oFdWUmRO3wQqgayhyCvdz+P2ttWJgVsD/6eYmS
         /bp0Te/cFrbr6akBhPUrQMi5Ux4ZyVIvmkvHwKOT/Ib9Cy+WkCdbojcMD1ZYroBQJJgZ
         abNnuozS3urv+iBhuubqJaLKLD5cnzNtilkgjgA0Qe9jOMJ41aUN8Uc3mWfQ5+zHv2t9
         iWhMJ8/QcVftsEzika2Fahm6z0ZORcyayFOh80DSlP8Mk907d3unuNR9N81cT8mJ64Ee
         9zyIXa3fgFZzsZCiRRAn4ZldTLA6HqZlWNqOnQL9oiuqOES8H4DN22naguqgt5PjIxv5
         bGCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Odog/PYDsGfLo5OG/6M76N9Kv54SJfrVHllMpYWKrpg=;
        b=sLqof61rFcBrO6jie2MPtoaKbxAWCRcPYGHUcRoEOqE/MfTTgsuqlgE7aQfRgohDni
         GPYrmZkyW5drGtLPZZh9AGq1midewuId9zH0chG+ewyZi8vqNOzq/FDljWHHoLRuZE1/
         INy9dyVd7hN+mRkWagQao8jKrWQ3ouyeyOGyEH20ztIrLPd9RiyOJrkLQIH5gQcWBRUH
         mwd7yeZmHUdmtmwaykaCQDFCmKg9KJFSgmWOjgyYQh7T9XT3zLff+VOcX1UHR8/jWUjp
         NXGCknm81Su0UjwL5lADNbUfByC0T6MHKo0WW0scbQP9sP7qfX71dSph13AKdBRpKgTJ
         TZAA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533VxMO7qysJq6yyITCRs6vfPwQc2sr/fF0YCB7++bQGbD7tdNIq
	5+4qzO6Yykof8SvCGNMwWXc=
X-Google-Smtp-Source: ABdhPJz2c3orddIC+7Umh+YBi//lCnC+8/+c6dg17aOpAIKvOp2V5xI0fPYudQUYVJL2HRGvOgHlEA==
X-Received: by 2002:a05:6830:22f1:: with SMTP id t17mr41111875otc.39.1638127995857;
        Sun, 28 Nov 2021 11:33:15 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:457:: with SMTP id 81ls3822741otc.5.gmail; Sun, 28 Nov
 2021 11:33:15 -0800 (PST)
X-Received: by 2002:a05:6830:195:: with SMTP id q21mr40480272ota.355.1638127995581;
        Sun, 28 Nov 2021 11:33:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638127995; cv=none;
        d=google.com; s=arc-20160816;
        b=qrnZkTko5111e9tsOlf7Yt31w/tGrFO0Vt68pB0ahaQ98Vt7hlA+HYr6PbOUCAGO5o
         Al7jFRW16vBkAgKdrkugrwh+duXpGfYItBNoHbLTKlwhEif72i0Bn3xisUBOU2wz7tvI
         EetzJV3hE/i0U56AEEIhsvCl4uR5yhm9+q3r4u1N7KFITTCi6EN0gmTfuhrVgNw3yOvH
         ahQSloI1ufFAFEuHa5hAv1blhnH+HMsv+O79sb1YYUPVrSzp7jmifK4VK38HSYVIEoSS
         wZsWqY5NIraQWmJP1ruI98M1mgQvFwSsmmuj+UvxW95wHi2e3wOY/ZLS7LkoA/rZaeu0
         okiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=1GlxYQghjX/NPZP4Y4QM4fareAu4mBm93KG+myCiGto=;
        b=rug15Oi1M2zY4Y1ugukSFNzflCnSme2gSJBv/paq+3vZnRseUvJ2OqdsqKM+wOdj9d
         kTo1Azp+L74bc56z8pcwFk2EK3FnclWhYsVezvHO3HNz0cIzU0zI0XLWPEiJKRhT5ugx
         dMRp6fxk5c/kguyGsAfx9OQCSIkC86qOH3vfsekSQFf137tbcVOXn/Vp88Dq+jmYoRpt
         e9NwfbIWHtOQ8su/mbZSAIhG8X+FVeElVK/PUHiJ04bcywRz7sBzn3vAVUI/q49QyDpW
         uP4I3oPufB0sqDCIxY6OKSDnOqMAV7mZpFpt0ZcGkOvaKzmKsaqTDTnba5yBbecaSefY
         i6eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=DgcprPBW;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id g64si1891079oia.1.2021.11.28.11.33.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Nov 2021 11:33:15 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>, Jason
 Gunthorpe <jgg@nvidia.com>, Megha Dey <megha.dey@intel.com>, Ashok Raj
 <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>, Jon Mason <jdmason@kudzu.us>, Dave
 Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Neil Horman <nhorman@tuxdriver.com>
Subject: Re: [patch 31/32] genirq/msi: Simplify sysfs handling
In-Reply-To: <YaNi2RkiYdnoEDau@kroah.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232736.135247787@linutronix.de> <YaIlX8bef2jPLkUE@kroah.com>
 <87lf19fl9i.ffs@tglx> <YaNi2RkiYdnoEDau@kroah.com>
Date: Sun, 28 Nov 2021 20:33:13 +0100
Message-ID: <871r30f53a.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=DgcprPBW;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Sun, Nov 28 2021 at 12:07, Greg Kroah-Hartman wrote:
> On Sat, Nov 27, 2021 at 08:31:37PM +0100, Thomas Gleixner wrote:
>> On Sat, Nov 27 2021 at 13:32, Greg Kroah-Hartman wrote:
>> > On Sat, Nov 27, 2021 at 02:23:15AM +0100, Thomas Gleixner wrote:
>> >> The sysfs handling for MSI is a convoluted maze and it is in the way of
>> >> supporting dynamic expansion of the MSI-X vectors because it only supports
>> >> a one off bulk population/free of the sysfs entries.
>> >> 
>> >> Change it to do:
>> >> 
>> >>    1) Creating an empty sysfs attribute group when msi_device_data is
>> >>       allocated
>> >> 
>> >>    2) Populate the entries when the MSI descriptor is initialized
>> >
>> > How much later does this happen?  Can it happen while the device has a
>> > driver bound to it?
>> 
>> That's not later than before. It's when the driver initializes the
>> MSI[X] interrupts, which usually happens in the probe() function.
>> 
>> The difference is that the group, (i.e.) directory is created slightly
>> earlier.
>
> Ok, but that still happens when probe() is called for the driver,
> right?

Yes.

>> >> +static inline int msi_sysfs_create_group(struct device *dev)
>> >> +{
>> >> +	return devm_device_add_group(dev, &msi_irqs_group);
>> >
>> > Much nicer, but you changed the lifetime rules of when these attributes
>> > will be removed, is that ok?
>> 
>> The msi entries are removed at the same place as they are removed in the
>> current mainline code, i.e. when the device driver shuts the device
>> down and disables MSI[X], which happens usually during remove()
>> 
>> What's different now is that the empty group stays around a bit
>> longer. I don't see how that matters.
>
> How much longer does it stick around?
>
> What happens if this sequence happens:
> 	- probe()
> 	- disconnect()
> 	- probe()
> with the same device (i.e. the device is not removed from the system)?
>
> Which can happen as userspace can trigger disconnect() or even worse, if
> the driver is unloaded and then loaded again?  Will the second call to
> create this directory fail as it is not cleaned up yet?
>
> I can never remember if devm_*() stuff sticks around for the device
> lifecycle, or for the driver/device lifecycle, which is one big reason
> why I don't like that api...

Driver lifecycle AFAICT.

>> > I still worry that these attributes show up "after" the device is
>> > registered with the driver core, but hey, it's no worse than it
>> > currently is, so that's not caused by this patch series...
>> 
>> Happens that register before or after driver->probe()?
>
> During probe is a bit too late, but we can handle that as we are used to
> it.  If it happens after probe() succeeds, based on something else being
> asked for in the driver (like the device being opened), then userspace
> has no chance of ever noticing these attributes being added.
>
> But again, this isn't new to your code series, so I wouldn't worry about
> it.  Obviously userspace tools do not care or really notice these
> attributes at all otherwise the authors of them would have complained
> a long time ago :)

I have no idea how these attributes are used at all. Neil should knows
as he added it in the first place.

> So again, no real objection from me here, just meta-comments, except for
> the above thing with the devm_* call to ensure that the
> probe/disconnect/probe sequence will still work just as well as it does
> today.  Should be easy enough to test out by just unloading a module and
> then loading it again with this patch series applied.

That works just fine. Tested that already before posting. After module
removal the directory is gone.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/871r30f53a.ffs%40tglx.
