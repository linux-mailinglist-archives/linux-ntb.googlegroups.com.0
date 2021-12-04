Return-Path: <linux-ntb+bncBDAMN6NI5EERBNXSVWGQMGQEQOM2DAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 73173468552
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Dec 2021 15:20:40 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id b15-20020aa7c6cf000000b003e7cf0f73dasf4808563eds.22
        for <lists+linux-ntb@lfdr.de>; Sat, 04 Dec 2021 06:20:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638627639; cv=pass;
        d=google.com; s=arc-20160816;
        b=lMxlH9bqQV/+CF2kgMqMaky4U4JwDHMiheJlru2QmTYLKsn2EEkkYJGEjKIAmP29Ka
         PoGRJSS8Cg7hN54QeW2QZUwKVmz1YQlNB8knTKIGk0p/k6GI3LKHWpyQA+SnBH6tL/J+
         HS35RB7EQQrKQEhMTHCz+d8N4+szJAMKjE+2Bgl1xNE8tYzd8YkwZgyZA+ZhKLo3rQqO
         seCzWW3ikktHk+JHaANIEOTlRrpNqvAY8F3u6wqDScGZ51ifCs18IFmFPUIL+9ATbwFt
         AyxLWiJoi6NdfVaUFiqBp2lJVER8ETpp1hQiYvwD1FKk0kfFqA6W/wtL/SdK4OT+AZoo
         tHlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=nGd81xrHWzqIEMJuODmUt4D/FqmmnXxCYVuLEB6Xm8g=;
        b=eNvTIZeqv7yJ+qvTg3sh8CCgA7ol9fxHD3z0KKTCvtkBWNlSdM3V5MfvI10kbJygT9
         Y1eeZHHDvqcAg4++SNZxFP3L3IN/cyykQR2uEhL2dL+Tv7DwFnZg4i4utcN9t+d58pY1
         TJUlMqDMDuxw+MA5MDmTuNyW0dCbXO0WgfPAmi5nLPXjqIiOZ4E4eNU4RXVwdijyhawe
         g2d2o23aFyo5HsaAx+IpJkHMhgNBtstDD2h3lxjKXDqST+sCcHN3TJM9+yuep5VjDybr
         xoGENcfZM9sJUnOFtwk6IrrJLy63GL3B5SDqq/uR1n3vrpRPp2I4qw2RL6kpyj4fitOG
         S32Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=UvXEFQnJ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nGd81xrHWzqIEMJuODmUt4D/FqmmnXxCYVuLEB6Xm8g=;
        b=I7pSldkCDmWUrYBeid9nAweFuSih5dJfXuXDuNY87PJUXKXkqGHceepffOHuJQxlZ7
         gbhFS+d+d42A8tl5cj392OqN7t2zS3OC6sSeGlO7H0+2LJBN3UCB+5ayWklORHHKH3ME
         HXIM9R1loW537J+4NhT9lxKT1WVkB9PJp/9WwbrbGTxBjB9w1Q+K6Ur+Z9epitIRvrbf
         kxFqI+HnrIAoWZcDD+Gn0AQIVS9h071CsMsFZAfCTGzOtn5GQ/0BAwdXES5yyRaVEpqc
         R/nAcwzrcPlbCy0Nj9M6ZTtncPY7W6/gjxtBgT7o1fWgJYTVjGMzVPYaMt+xWCrNcdpM
         bDmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nGd81xrHWzqIEMJuODmUt4D/FqmmnXxCYVuLEB6Xm8g=;
        b=OtNhumChpbMotzrdpVEtCT2s6ahJMUx01bea/+3CC6Q0W0krp1ldQdGJgDGwQC9nOr
         Z9k70cAsXd5QbXSQazyJp90/OZp0QmwXHP5F1CkKvTYpqO/ickkb6QmA8hM0JuR8ic8/
         AouQj5OLCBz6hllcOUdtLEGZlp+UheoVYEcIko8caLTWtWTd4mxr16u3KytGEGGrIVjl
         h+DCiBSaOpWfz27U7twxZb0OrZK50b8TjrT4hx6Kz0GZuqucFw2tc/tWWJraDDMQbECu
         dHWsKoh/1BicGGsndkS63NygpqO7+Y5a/opmQxj6f5luS3uw67SSLkRTMEQmOaupM//4
         81uw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5307zOqP5VbcL+Kwv3p8yLMEbLbffdIVmjAKAAXzxBNEF6XrULkM
	wuy8dGMqULdg7xZzbgCj2og=
X-Google-Smtp-Source: ABdhPJzK4vrSKpWykRYDKSHWAFBUsVew4p8juLP7rF6PbR4eyRZfeUKp4mBx7qfzN6mM7OZ2KiLRmw==
X-Received: by 2002:a17:907:1c07:: with SMTP id nc7mr29869629ejc.546.1638627639159;
        Sat, 04 Dec 2021 06:20:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:907:3e9d:: with SMTP id hs29ls4673759ejc.2.gmail; Sat,
 04 Dec 2021 06:20:38 -0800 (PST)
X-Received: by 2002:a17:907:96a4:: with SMTP id hd36mr31685624ejc.407.1638627638174;
        Sat, 04 Dec 2021 06:20:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638627638; cv=none;
        d=google.com; s=arc-20160816;
        b=k3746KeLZADh0HPTD7cwnfuyZ27XxdnsmCMyoyftaie8w3sqgdUR9DHGqYDz1wtf+8
         oLV2k1DIfTaV+HL7vmuljAB8zrMzQWVPwZzd6FnPxQfg+5UiMZKH6LluXbOUkVpKMRA3
         bYv1UCS75SBovTxJnc9eO0VR8EjUM1yKbusgpypt5D+wy7p/5ewQdOtkHTebmRWy08g4
         kclsL2mp0ZuuEgGwCWfLsVafEAGpu8ulQ2IODEAiS5Q+9bgILq/1DAGRPvt4m0VxGv1x
         13WP2FQhhyfEyXLg5DYKUTc4XmK/xjThXGZ5IUGFrpsybZRVMotGqUHW3sgV/GNs7hnV
         PvKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=oC4rR+ZzJhUFWEhNk/yS63wLbPwpFqTfGsr/JOeeegI=;
        b=I3hflolHKbxz8CNtrEDldLqrOOWtpPNVLBE6UQOtdSQRVFIe4QRKhY1g5olFHi0Koa
         YSay5ckMntehy1PoKF7QsjHc0PaCkRTji2aH+40yG7O8IBedE40uHxatFLcZOmTz7us1
         g332zwcvDv7Sclawo5KgHA9SqDpPX2gF8JzJY/rZaPLbmu3yMKIOt7xPSDmKT0LqXXsn
         3BFzPHX4QnLeHQyaUxnUA7XEMQJVULnO6E4cwgwBYe+f77dvNf2jPanlBSmzmBXpAKaE
         eIdJ6QdwIY7d4o8B/x+gHUUlK9PlDuV267Lg+AVoVEcimBtqDBrSh4rP+1sNF+7fPoFB
         lk+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=UvXEFQnJ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d5si488578ede.2.2021.12.04.06.20.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Dec 2021 06:20:38 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>, Ashok
 Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
 x86@kernel.org, Joerg Roedel <jroedel@suse.de>,
 iommu@lists.linux-foundation.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <20211203164104.GX4670@nvidia.com>
References: <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com> <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com> <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com> <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com>
Date: Sat, 04 Dec 2021 15:20:36 +0100
Message-ID: <87v9044fkb.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=UvXEFQnJ;       dkim=neutral
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

Jason,

On Fri, Dec 03 2021 at 12:41, Jason Gunthorpe wrote:
> On Fri, Dec 03, 2021 at 04:07:58PM +0100, Thomas Gleixner wrote:
> Lets do a thought experiment, lets say we forget about the current PCI
> MSI API.
>
> What if it worked more like this:
>
> probe()
>  // Access the real PCI SIG MSI/MSI-X table
>  mystruct->msi_table = pci_allocate_msi_table(pci_dev);
>
>  // Special interrupt 0
>  mstruct->desc0 = msi_table_alloc_vector(mystruct->msi_table, hw_label=0);
>  request_irq(mystruct->desc0, ..)

A device driver should not even know about msi_desc. Period.

The code which gets the msi_desc pointer handed in is the irqdomain code
and eventually the irqchip callbacks which need to deal with it.

I just cleaned up quite some places again which fiddled with msi_desc
for the very wrong reasons. We've had subtle bugs due to that in the
past.

The time I wasted in the past to fix drivers which fiddled with msi_desc
and even with irq descriptors just because they can, makes me think hard
about encapsulations because I have absolutely no interest to do full
tree cleanups every time I need to change something in the core
code. Neither do I have interest to deal with the resulting bugs which
end up on my desk because the usual consequence is that the abuse makes
the core go belly up.

If I need to change a dozen irq chip implementations, that's a limited
scope, but chasing the abuse all over the place is insane. I'm dead
tired of it.

The driver can get some info struct which has the index and the linux
irq number in it and that is all it needs, seriously.

If C would provide access protection scopes in objects then the msi
descriptor pointer could become a cookie. But we only can document that
the driver writer has to treat it like a cookie which is equally
effective to not documenting it at all. That's unfortunately the sad
reality. So the goal is to make it harder to screw up and not to make it
easier. The only way to do that is strict encapsulation.

>  - msi_table is a general API for accessing MSIs. Each bus type
>    would provide some kind of logical creation function for their
>    bus standardized MSI table type. eg MSI/MSI-X/etc

You can't give up on that table thing, right? We just established that
for devices like yours IMS is not necessary a table and does not even
need the index. The fact that MSI-X uses a table does not make
everything a nail^Wtable. :)

>    It is a logical handle for the physical resource the holds the MSI
>    addr/data paris.
>
>  - Use a pointer instead of idx as the API for referring to a MSI
>    irq. Most drivers probably only use msi_desc->irq?

No. pci_irq_vector() translates the hw index to linux irq number.  The
hardware index is known by the driver when it is doing a batched
allocation, right?

There is also that magic interface which hands in an array of struct
msi_entry.  msi_entry contains the hardware index and the linux irq
number. The hardware index is filled by the driver and the linux irq
number by the core code when the allocation was successful.

Yes, it's awful from an interface point of view, but that has nothing to
do with the underlying infrastructure and the problem at hand.

I'm fine with using the info struct I described above as the reference
cookie.

>  - We do not have device->msi, it is held in the driver instead.

No. First of all drivers have no business with that, really.

It's infrastructure which the driver utilizes and that infrastructure
manages the data it requires and uses it within the infrastructure, in
this case irqdomains and the associated irq chips.

Aside of that. Even if it would be a good idea, then someone has to
rewrite the PCI/MSI backends of powerpc, mips-octeon, s390, xen and some
more first. Along with the MSI and the PCI/MSI core.

Then create either nasty wrappers around the existing interfaces which
create those magic tables automatically and store them where? In struct
device->msi perhaps? :)

Alternatively cleanup ~360 usage sites throughout drivers and add the
same silly boilerplate code all over the place, which is wrong to begin
with. We want less boilerplate not more.

I'm sure you're volunteering or can provide the engineering capacity to
do that. Depending on the capacity this might be done in 1-10 years from
now.

>    dev->irqdomain is always the bus/platform originated irqdomain of
>    the physical device.

This is a guarantee for subtle bugs and I'm not even remotely interested
going there. See also below.

>    Thus we break the 1:1 of the device and irqdomain. A device can
>    spawn many msi_tables, but only one would be on the dev->irqdomain

Why are you trying brute force to push things into device drivers?
That's really the wrong direction. We want common infrastructure to be
managed by generic code. And all of this is about common infrastructure.

The only device specific thing which is required due to IMS is the
irqchip plus it's data. Whether that irq chip implementation is part of
the device driver itself or is preferrably an irq chip implementation
which can be shared and instantiated by several device types is not
making any difference here at all. It's from an encapsulation POV still
an irq chip which is handled and managed by the interrupt subsystem.

We don't need that for PCI/MSI[-X] at all, so why would we go and give
up on central managed storage and add pointless crap to drivers so that
driver writers can screw up even more?

>  - Rely on dynamic allocation instead of the awkward batch interfaces.
>    This means a msi_table starts out with 0 msi_descs and as we go
>    they are allocated, installed in the xarray, and connected to the
>    HW.

We need to preserve multi-vector batch allocations unless you have the
engineering capacity to fixup the stuff I mentioned above.

And no, you can't just make the batch allocation a wrapper loop around
single vector allocation as that will break the world as well.

There is a very good reason why I made runtime expansion of MSI-X
interrupts opt-in by the underlying architecture specific MSI
backend. IMS support has to be opt-in for the very same reason.

>  - hw_label is defined by whatever type of msi_table it is:
>    for PCI MSI this is the MSI table index
>    for IDXD IMS this is the IMS table index
>    for mlx5 memory IMS it is -1 (?) and the msi_desc is just placed
>    anywhere in the xarray. msi_desc->xarray_index can store its
>    location
>
>  - 'msi_table_alloc_vector_range' allows a simple API to get any
>    free entry from a group of fungible entries to make it clear
>    to readers the typical special/pooled HW design pattern
>
> Is it sane? What really needs device->msi anyhow?

device->msi is a container for interrupt management and that's done by
the interrupt code and not by random device drivers. Again, struct
msi_desc is a software construct which the interrupt core code and the
irqdomains and irq chip implementation use for various purposes. Nothing
outside of this realm has to even know about the fact that this data
structure exists in the first place. See below.

> IMS is a logical progression of this concept:
>
> probe()
>    mystruct->msi_table = pci_allocate_msi_table(pci_dev);
>    mystruct->ims_irqdomain = <....>
>    mystruct->ims_table = msi_allocate_table(pci_dev->dev,  mystruct->ims_irqdomain ..)
>
>    // Use MSI
>    mystruct->desc0 = msi_table_alloc_vector(mystruct->msi_table, hw_label=0);
>    // Use IMS
>    mystruct->desc1 = msi_table_alloc_vector(mystruct->ims_table, hw_label=0);
>
> Not saying we can/should go out and just do something so radical, but
> as a thought experiment, can it guide toward a direction like this?

What I agree on is that the interface should be in a way that the driver
can:

 1) Allocate vectors at a given hardware index

 2) Allocate vectors within a given hardware index range

 3) The core returns the hardware index and the Linux irq number in
    a separate info structure which is independent of the interrupt
    stack internal data representations.

But the driver interface is _not_ the problem at all.

Interrupts are fundamentally a resource pool which roots at the
CPU. There are layers on top, e.g. IOMMU, which are involved in
routing. On top of that there is the outermost interrupt chip which is
handling the device specifics.

Interrupt delivery roots at the CPU too. So the interrupt core code has
to have a consistent view of the whole chain. That requires to have
proper data representations and a consistent relationship between these
representations.

That brings me back to device->msi. This is part of the data
representation and disconnecting it make things just harder and more
exposed to the whim of driver writers. Thanks, no.

Sure the driver can get a cookie of some sort to do allocation/free from
different resource pools, e.g. PCI-MSI[X] and IMS. But the internal data
representation management has to be done at the core level.

That means that a driver which utilizes device specific IMS should not
even try to make the irqchip/domain code mangled into the other device
code. It should create the irqdomain with the associated chip and that
creation process returns a cookie which is passed to the actual device
specific code. Allocation then can use that cookie and not the irqdomain
pointer itself.

But the driver API is the least of the problems at this point,
really. What's important is to know what kind of functionality the
drivers need.

Then you build the thing up from bottom to top, layer by layer
considering the functional requirements.

The final driver API is a conveniance wrapper based on the underlying
infrastucture which hides common tasks from the driver level.

> I agree alot with the other email you wrote that IMS == MSI - I think
> that is key.

Yes, that was clear to me from the very beginning, that all of them just
raise interrupts by writing msg.data to msg.address.

> So much of these conversations have been warped by thinking of IMS as
> some wonky thing for virtualization, or trying to focus on VFIO as the
> only use case.

Well, I was always thinking about all use cases.

The important thing about this discussion was that I had to understand
how this is used and that my naive assumption that this new approach is
just a logical consequence of splitting the devices up further into
smaller slices is not really correct.

The Physical function -> Virtual function -> Logical function view made
a lot of sense to me. And that's how some people explained it in the
earlier discussions. From that point of view having a struct device to
represent it was not that absurd, right?

So thanks for being patient in educating me here.

The fact that we will be able to support this at all is based on years
of cleanups, consolidation and restructuring of the infrastructure. The
result of doing this is that my trust in driver developers in that
regard is very close to zero. The cleanup patches I had to do for this
series just to solve the single irqdomain case did not help to elevate
the trust level either.

The common approach is: My device is special and therefore I need
special X. The core does not provide special X so I hack something up
which violates all known rules of encapsulation and layering in one go.

Reality is that this is in 99+% of the cases not true at all. If "my
device is special" would be true, then writing and maintaining an OS
which can handle this hardware zoo would be close to impossible.

That's why I'm insisting on understanding the use cases and the
underlying concepts of representation deeply. That's why I'm more
interested in data representation and the relation ship of data than in
function interfaces and code.

Code and function interfaces are defined by data representation and the
relationship of data. Doing it the other way round is doomed.

> I think the other sort of tangential issue when you think on IMS ==
> MSI is how pci_msi_create_irq_domain() is basically a special case for
> PCI MSI by providing chip ops that only work for PCI to the irqdomain.
>
> Not only that, but instead of cleanly having two irq_chip ops for the
> very different HW programming under the MSI and MSI-X cases it is
> handled with a 'if (msi_desc->msix)' on each op.

I'm well aware of that. That's historical ballast which is also required
to keep the legacy architecture code alive. Same problem as explained
above.

> If IMS == MSI, then couldn't we conceptually have the dev->irqdomain
> completely unable to handle IMS/MSI/MSI-X at all, and instead, when
> the driver asks for PCI MSI access we create a new hierarchical
> irqdomain and link it to a MSI chip_ops or a MSI-X chip_ops - just as
> you outlined for IMS?  (again, not saying to do this, but let's ask if
> that makes more sense than the current configuration)

That's not really a good idea because dev->irqdomain is a generic
mechanism and not restricted to the PCI use case. Special casing it for
PCI is just wrong. Special casing it for all use cases just to please
PCI is equally wrong. There is a world outside of PCI and x86. 

But yes, dev->irqdomain _is_ part of the problem and even the root of
it. I definitely stared at it before, but for stupid some reason I
stopped staring at it. I blame it on too much email. :)

The point is that up to now we had a strict 1:1 device irqdomain
mapping, which starts at dev->irqdomain. The MSI descriptor storage is
just a consequence of that. And yes, it took a while to understand that
there is a use case for 1:2.

So I need to break that up in a way which caters for both cases, but
does neither create a special case for PCI nor for the rest of the
universe, i.e. the 1:1 case has to be a subset of the 1:2 case which
means all of it is common case. With that solved the storage question
becomes a nobrainer.

When I looked at it again yesterday while writing mail, I went back to
my notes and found the loose ends where I left off. Let me go back and
start over from there.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87v9044fkb.ffs%40tglx.
