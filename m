Return-Path: <linux-ntb+bncBDAMN6NI5EERBY4ZXKGQMGQER6GGWZQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCFF46AB56
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:21:23 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id b1-20020a5d6341000000b001901ddd352esf2390528wrw.7
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:21:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638829283; cv=pass;
        d=google.com; s=arc-20160816;
        b=HKk1wpGqgt1R0dCorRwDou2kLnz7I0SqUbW/Z44QEqE7x1+yoC26asq1CBGLsPireK
         CAdu5QQBv4wrkMpfb86VTpxuyaXfp677EXZzlYNxxlvTbNMQM+vDFxroZ20Vr4Wrtluv
         i+4+LRYJJbtIBAuNL4BH+9PDod0YLESEYZxxlh2k5iG18Mxz619kmhgyKKexu5Rk44aK
         7apxTvxlBOX+fjAnRoKxPIlrBMXbHCQohhQTFaWXxZYlkpAJnp7GxDyBWn5z2AeN+dmm
         +vdkzB+4QU2H7MWz7X6hP9bbGCqkM/7ztGG42do4mkgY8Z8AE+ZOARJlnxBvMpCeQEMI
         7+PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=/x6B+TqDRopqyaD2r0HyhPo10+M1K9OJaat+RXpM+Lc=;
        b=QKTJ1WV5QOu/rvi9Ec07NdWutYzvr0OZMfVQw35eis6qRdcr1/a6b3BuVnnztIvRGt
         ixZvBFOkt/cxNum9EQAUa1UD2DWm/YhM5iiz6W8SEjnRyLC0lypE0ewRqAUEQIICTbWR
         vHp4xRsbebK3Qs2sDWXsc3UBV7pB+Zv5SIdG0IR6o/FpkqdF5aT6WMEQgATffg1ZyuP4
         7Vm2iPqGLElE/Z1ktR9nTHtKDLH/oF2cnZCPck5Gsv0xGpKBQLuoMNqx8Irx2xdlEfOn
         vR6R4Ox6w28gxCQVrM/RHoI7MVGxyEikcNux2+71b6ft3n4+vUwx+zhhgjs6aFHOyy5i
         LZsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0J9687id;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/x6B+TqDRopqyaD2r0HyhPo10+M1K9OJaat+RXpM+Lc=;
        b=lfh+Ggmy0b/7385rrCBtirfoIwNr2otDyAVUdQlNjB7EvDFhJHjuIhV96JBLaJAdT3
         aoRYrBmS8v8EyHOcHLpqfYfkQNrsywA0mJsvSJY9SFGaoL0BZI7MgGzxP5BQgdkl62GR
         Vb3EsWhZZ3c1c1u1GJbsqMgHNyAxYgOlt4L5tTC3zscAyg0JvKC4j72Iw1LoDjZicCjV
         aSeSZOgu8aj1AA+xbzuNnCNdk6aSuL+CbqCzYMOwCfQMvUfrdLGwTjM98OJkE6UU81k+
         BXUmu2chU+YeY9md4iliwcXNiGnj6MEjhOfolw/0gSpIJVbcdoQujQM6Ty8NIXq/B5Yy
         qpsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/x6B+TqDRopqyaD2r0HyhPo10+M1K9OJaat+RXpM+Lc=;
        b=OvIoam0PPfYZXKmAUGIGEBW2+bhGJ+Cm8TibWvjLUkrEc+3Z//XE8W+T/o2cnnWOxV
         cGxpAqtyzPayxICSWTZkBhgnRb4pHe0dzUF11ANCv/mHZJTNlrCEPCNLubK+j2RndWu/
         AM4+ezG4sFBKlyUEIMJXjTpwDK4dF2o3sWM1QcIrNP8TT0C22xqPZQV99LE3bMLnIvt7
         HeeWo7sYC1+LXgN3uRunak4+/HJYfv5iuihuWrKx1pmp1O1K9c8qoChBOD0KeFl7iySl
         JaNtkCSggPr+NijiKC5ONc6Vg4QH/c9wNcQe+1aZj3zkzzxUIYH4IqGeogn610bC4eAp
         vyJQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531CgHGmm9v3mWDQWd47lyLwBeZCtPg7RdnrL6GG+oWcAtzfFO03
	8KYbvEPci13BfvLt2RbU2es=
X-Google-Smtp-Source: ABdhPJwkawaAmBOjlJ5h67BowV/mQv5y5TEVHLuGmjhdTiNZUa7j5pU5aWFGSkpH+DcFYXGRLlwubg==
X-Received: by 2002:a5d:6510:: with SMTP id x16mr47048740wru.2.1638829283780;
        Mon, 06 Dec 2021 14:21:23 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:fe0b:: with SMTP id n11ls1221022wrr.0.gmail; Mon, 06 Dec
 2021 14:21:22 -0800 (PST)
X-Received: by 2002:adf:9bdb:: with SMTP id e27mr47137286wrc.417.1638829282801;
        Mon, 06 Dec 2021 14:21:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638829282; cv=none;
        d=google.com; s=arc-20160816;
        b=wuODVKMM5TIlhcOpPqV7428+TdHxFOyaeAAQ1LX5wCsbJfOTp/jdhZKOYWewV+2epd
         7BUyoi9I/FwNIFlRz63XjjbDDpp8eu6T+BjLxJ4LOL83f8Q91rz5QGFr7hg0Mv5/hWYn
         DBL7ruJekPDG2fm9LmeCFJlSlahy969A1LvIGcUg6prpdKqcP/XKZhaNMmTKlVt4gMcs
         uX0Sk46wjeHthsjEM+GnFt+W7upYNf+VQKTSPcACaTIZWE8FhQLCeBcWS/OTOETjIvK3
         JZMWHgb7TBk4HEiX3GMWbAlWNE34+3/ueq7GDNHwYXaf74sDMLORnUec3UlhOdBpwstr
         HF+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=N49gEhli14ajV1XqLRb5F9ss4iZ1ZN+8bFDUJvAuM3M=;
        b=N6tlr28cca/CmPG054mMGAggUILAsK7e151tzENNOaZ14oJTEWyH2MhXn8njmrn/WJ
         vB88g0lOI2mxZ3TNQq8dRbORhaYNEK1i4EvsXwRUW7C1wDQYPdtQJ8GVtBtpio77ZhgP
         49CzU72pTd0o+rz64OmC5xard6qSpf6t1KK3afbBTpd0uL+CBdLG3oBl80oTtR/BWDaX
         /Lx+1ppPwWvdj6YqtkGkeTAgW2A82+XTt6lleeZJHyyQOGDUN22/DzVHxkU4LkCzSiud
         j5J3yDZMtucJ5W56jrmy6IMuVe/Zh0aw92uNKxP4DWt+b9r2UnckdcPBmsLM9bACprNx
         Eu+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0J9687id;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o19si121887wme.2.2021.12.06.14.21.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:21:22 -0800 (PST)
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
 iommu@lists.linux-foundation.org, Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <20211206210609.GN4670@nvidia.com>
References: <87o85y63m8.ffs@tglx> <20211203003749.GT4670@nvidia.com>
 <877dcl681d.ffs@tglx> <20211203164104.GX4670@nvidia.com>
 <87v9044fkb.ffs@tglx> <87o85v3znb.ffs@tglx>
 <20211206144344.GA4670@nvidia.com> <87fsr54tw1.ffs@tglx>
 <20211206170035.GJ4670@nvidia.com> <875ys14gw0.ffs@tglx>
 <20211206210609.GN4670@nvidia.com>
Date: Mon, 06 Dec 2021 23:21:21 +0100
Message-ID: <87zgpd2x3y.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=0J9687id;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
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

On Mon, Dec 06 2021 at 17:06, Jason Gunthorpe wrote:
> On Mon, Dec 06, 2021 at 09:28:47PM +0100, Thomas Gleixner wrote:
>> I wish I could mask underneath for some stuff on x86. Though that would
>> not help with the worst problem vs. affinity settings. See the horrible
>> dance in:
>
> My thinking here is that this stuff in ARM is one of the different
> cases (ie not using MSI_FLAG_USE_DEF_CHIP_OPS), and I guess we can
> just handle it cleanly by having the core call both the irq_chip->mask
> and the msi_storage_ops->mask and we don't need ARM to be different,
> x86 just won't provide a mask at destination op.
>
>>     x86/kernel/apic/msi.c::msi_set_affinity()
>
> Okay, so it is complicated, but it is just calling
>    irq_data_get_irq_chip(irqd)->irq_write_msi_msg(irqd, msg);
>
> So, from a msi_storage_ops perspective, things are still clean.

Yes.

>> You forgot IO/APIC which is a MSI endpoint too, just more convoluted but
>> it's not using MSI domains so it's not in the way. I'm not going to
>> touch that with a ten foot pole. :)
>
> I left off IOAPIC because I view it as conceptually different. I used
> the phrasse "device that originated the interrupt" deliberately,
> IOAPIC is just a middle box that converts from a physical interrupt
> line to a message world, it belongs with the physical interrupt
> infrastructure.

I mentioned it because there is mbigen on arm64 which is the same thing,
translates hundreds of wire inputs into MSI. It's even worse than
IO/APIC. There is a horrible hack to make it "work" which Marc and I are
looking at whether we can kill it on the way.

> Possibly the IOAPIC considerations is what motivated some of this to
> look the way it does today, because it really was trying to hide MSI
> under normal PCI INTX physical pins with full compatability. We kind
> of kept doing that as MSI grew into its own thing.

Not really. It was more to avoid having a complete separate
infrastructure for irqdomain based MSI[X]. Lazyness and lack of time
added the rest of non-motivation :)

> I'm curious to see if you end up with irq_domains and irq_chips along
> with what I labeled as the msi_storage above, or if those turn out to
> be unnecesary for the driver to provide MSI programming.

I cant avoid irq chips because from the interrupt handling side of view
that's unavoidable unless we create a duplicate zoo there. What I have
in mind is to convert the msi ops provided by the device driver into a
real chip as that just falls in place without further changes.

The irqdomain will be real as well just to make things consistent and to
share as much code as possible.

> Also, if msi_storage_ops can be robust enough you'd be comfortable
> with it in a driver .c file and just a regex match in the MAINTAINERS
> file :)

That might work. Let's see when we are there.

>>    - Have a transition mechanism to convert one part at a time to keep
>>      the patch sizes reviewable and the whole mess bisectable.
>
> This seems difficult all on its own..

I've done that before. It just needs some thought.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87zgpd2x3y.ffs%40tglx.
