Return-Path: <linux-ntb+bncBDAMN6NI5EERBTNST6GQMGQEASSUEUA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 136E2465707
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 21:21:35 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id y21-20020aca4b15000000b002a819a3cd6dsf17012531oia.15
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 12:21:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638390094; cv=pass;
        d=google.com; s=arc-20160816;
        b=NWuBlchSGnabWE5UkdSi1M5Hu1s1OXdA7gUGHzqgmWCyB6pfi+EVrNQpSDN9ABMk6s
         9wfmO7AWOnnBJTT5BDVTLeECpqW7I4GkyWKvNRs+jxtsBHdliO5fuCrLR2SyvkJG+Tph
         NJi/yf/EyuPKJbKKmProDZujRzokC71Nn87OwGtcFgvRdwpXdPl6H32KXarroiM1B61J
         966vPW22gvS/fFZwa+wSnC0XxHH1HbpxVt4tYpKvGtxbypu3pSP2X8uAym6lHYNrsvkK
         GlCgXDRjBUVPGaLcrQuwSZ/urIRraBIoAz6v0uQ2ic+f8axpOGAMg4T+yimP3QnOO+8V
         sOOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=E0resvlXO5ogGwc7ZdLhi4Ow/oyiOh7z+HH/2hb6+a0=;
        b=MBuDehMzrLguBZHr1QBDegRN4OPGNSnFuBbAn74L9zlUegq6uOlKQLJ6U2aQrSoTVU
         Gto4vnOo05RgSxjjZBQ3WRcQDKqJS/L6jgz5E+WfWQnOYHofdtlLF2tEjWEHgXxrOUqT
         wfq9N4EZBDkR+euCv4PoKMJhmG5NXr/IyFXJKu5iMHOC9LyHeNIB5uFXM5ZcY60CiteE
         efwUYjN/URlaNOuwG+6IysdDJDqeNVkdbtubIAGl3zYPFY7EVSys6Y5/Bx8IhSin7mHg
         ljYJY9vmOf49Bvgb7jZd9jit9U8ug6XKDRx/lSUwIbk9RI4pQ33m/6xSQ0IXrBRAoPKy
         wmhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=sbuHX70H;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=8iqy66nC;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0resvlXO5ogGwc7ZdLhi4Ow/oyiOh7z+HH/2hb6+a0=;
        b=KvXn9+Wjby/XECovb0qpD8s22Py9GQNbMKwJT7v1X4gx7Cd9Zy81sTtE3qBDDxTCmk
         2/omqxECPW75KAbz2dWuystdoRkByfj8BWkHb1V1PxLVxrWoGJTFXmN4LL//n7p19wXx
         uPD5rq5UJIFHQd5LyDTw9inxpClPsSSBSu/vR829pp8P2Eb4GAX4wJaKgf7k/lmvDcm0
         IrmPYn7oihUKfsCdoWP7loLD4FYkfs8nNhiMjhNb0oFQAaWz8pTJSL+fIXzMtqLOA9y+
         hy9gX6y2QeQ3gDs5kbECBxFBHWnHITriJL3EVi5d1xTm4BlYZL+f56Vc8AeauW4yM5E7
         hp2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0resvlXO5ogGwc7ZdLhi4Ow/oyiOh7z+HH/2hb6+a0=;
        b=MrA1sVr6AbDnpwJF+AVcHumMXfHmIVk09QYaGH/UA4GuEWkvom7xkiVcwW5yU6nFDg
         GuMF9+Vs8r75cKkArm3dGQtvXSX/55iNW6bY3e8f7ObD4rlMEh9waZ4FEAhwXZyCND/c
         WcZFlaMFXC4JVaag0ubquDq/vEJYLqoT2W0NW1as6yZTT+LeRzQ412+nSHSnncoUPvJZ
         rok9jLXpHm0JjgKP+De2sV6wJHfc+AQQJxfkM94R3lGkBl1A0vVXjSsDFyULzEMO8vtm
         nrElsMoPIez05R8+BUd8W5lLm8Yr8NLc6W5kO1eorYYoLeBxSai/AYdbHZsvowpTCFxC
         bKXg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531wzJoes/cPf7VNHwMXOEmmS4Qpun9EdpbvCHLT1dG/Niq6omTF
	tnz8GGioJeKS7HCLrXsmHNw=
X-Google-Smtp-Source: ABdhPJy1xjH3qdBRmtYi70Fqn4W0oGPZ/IjUSCqA+Yqmbgr8JJMtJeuqg5km7+5f/SqOWHbDGFUQjQ==
X-Received: by 2002:a05:6808:11c1:: with SMTP id p1mr452868oiv.113.1638390093953;
        Wed, 01 Dec 2021 12:21:33 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:3499:: with SMTP id c25ls1260058otu.4.gmail; Wed,
 01 Dec 2021 12:21:33 -0800 (PST)
X-Received: by 2002:a9d:67c1:: with SMTP id c1mr7772711otn.299.1638390093504;
        Wed, 01 Dec 2021 12:21:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638390093; cv=none;
        d=google.com; s=arc-20160816;
        b=bQ84V2Lzs6+Z8NFBlV8/sK3RVkD2ZgVpco/CcvZjfKhsQHayVApjr0hsbb2OqZ0JCt
         YOrUdHotaKrGBo5cy+iwOu5NgNuwgAODMqMe8tMBJp8x1x2DuptrTsDgIZNk33Qmu3TI
         4c2c4Ugq6LfYZsL4e8Ng6nEu20HA4+26UxWlhfjdiKIm0RE167ta4+8uIbh5RSoz5sAc
         /N3bBzcs6WsUQkNfwyWH02XLJ54zC6tGpPL7vDM6ZFSkTBTjVVKLtyH+A1/CPxUH+MsM
         t8GSSQv0qboPtrPa1ZwoZdHcCc63+vE0DVj6b/39KdEYMyKMtd+pIlXrW+d9jxJiCsaO
         G/5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=XT2wUHCzGqHpG3jIMlo/pIyGWM+MoMGI0fdIA1I0A8A=;
        b=O0h9Xi8OyOud1COM6NOl2SmpHbToHl+oGkpTCi0KYgrQ6Xh5QA7jxzm4V/RjP4l6wP
         K59NDDCdO8RAg2O9JXlVZGch5wA1+FkFxcbgoY+BphWzTyKcW7JjucjuhHkoLHYzA7Qr
         ph8qE85zQmujj6W/XsU2s5C2eWXdYCvTOHb7I1SgU2pwA8mmvYo3Uh/v0c6ue4gpCzhE
         rlzN1ROTApUYBLyfueE9tuij9XTznkESHubBzT0fPRfZBg+nWfMZw5Fv3e/fPZMPvXgP
         nJ5KqQU/ykLj4Xy0Xmp099eAczDYQI5GQsgxO/pyL8QPbeu/9R+PYj9OS3YdUlQ1r8L5
         eqfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=sbuHX70H;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=8iqy66nC;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id bg19si187691oib.5.2021.12.01.12.21.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 12:21:33 -0800 (PST)
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
In-Reply-To: <20211201181406.GM4670@nvidia.com>
References: <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
 <87ilwacwp8.ffs@tglx> <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
 <87v909bf2k.ffs@tglx> <20211130202800.GE4670@nvidia.com>
 <87o861banv.ffs@tglx> <20211201001748.GF4670@nvidia.com>
 <87mtlkaauo.ffs@tglx> <20211201130023.GH4670@nvidia.com>
 <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
Date: Wed, 01 Dec 2021 21:21:29 +0100
Message-ID: <87mtlk84ae.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=sbuHX70H;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=8iqy66nC;
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

Jason,

On Wed, Dec 01 2021 at 14:14, Jason Gunthorpe wrote:
> On Wed, Dec 01, 2021 at 06:35:35PM +0100, Thomas Gleixner wrote:
>> On Wed, Dec 01 2021 at 09:00, Jason Gunthorpe wrote:
>> But NTB is operating through an abstraction layer and is not a direct
>> PCIe device driver.
>
> I'm not sure exactly how NTB seems to be split between switchtec and
> the ntb code, but since the ntbd code seems to be doing MMIO touches,
> it feels like part of a PCIe driver?

It's a maze of magic PCIe driver with callbacks left and right into the
underlying NTB hardware driver which itself does some stuff on its own
and also calls back into the underlying PCIe driver.

Decomposing that thing feels like being trapped in the Labyrinth of
Knossos. But let's ignore that for a moment.

>> The VFIO driver does not own the irq chip ever. The irq chip is of
>> course part of the underlying infrastructure. I never asked for that.
>
> That isn't quite what I ment.. I ment the PCIe driver cannot create
> the domain or make use of the irq_chip until the VFIO layer comes
> along and provides the struct device. To me this is backwards
> layering, the interrupts come from the PCIe layer and should exist
> independently from VFIO.

See below.

>>      When it allocates a slice for whatever usage then it also
>>      allocates the IMS interrupts (though the VFIO people want to
>>      have only one and do the allocations later on demand).
>> 
>>      That allocation cannot be part of the PCI/MSIx interrupt
>>      domain as we already agreed on.
>
> Yes, it is just an open question of where the new irq_domain need to
> reside

The irqdomain is created by and part of the physical device. But that
does not mean that the interrupts which are allocated from that irq
domain are stored in the physical device representation.

Going by that logic, the PCI/MSI domain would store all MSI[X]
interrupts which are allocated on some root bridge or wherever.

They are obviously stored per PCI device, but the irqdomain is owned
e.g. by the underlying IOMMU zone.

The irqdomain is managing and handing out resources. Like any other
resource manager does.

See?

>>     1) Storage
>> 
>>        A) Having "subdevices" solves the storage problem nicely and
>>           makes everything just fall in place. Even for a purely
>>           physical multiqueue device one can argue that each queue is a
>>           "subdevice" of the physical device. The fact that we lump them
>>           all together today is not an argument against that.
>
> I don't like the idea that queue is a device, that is trying to force
> a struct device centric world onto a queue which doesn't really want
> it..

Here we are at the point where we agree to disagree.

Of course a queue is a resource, but what prevents us to represent a
queue as a carved out subdevice of the physical device?

Look at it from the VF point of view. If VFs are disabled then all
resources belong to the physical device. If VFs are enabled then the
hardware/firmware splits the resources into separate subdevices which
have their own device representation, interrupt storage etc.

As VFs have a scalability limitation due to the underlying PCIe
restrictions the step we are talking about now is to split the queues up
in software which means nothing else than creating a software
representation of finer grained and more scalable subdevices.

So why would we want to pretend that these are not devices?

They are from a conceptual and topology view a subdevice of the physical
device. Just because they are named queues does not make it any
different.

Let's look at VFIO again. If VFIO passes a VF through then it builds a
wrapper around the VF device.

So if a queue is represented as a subdevice, then VFIO can just build
a wrapper around that subdevice.

But with your model, VFIO has to create a device, request a queue,
wrestle the interrupts in place, etc. Which is exactly the opposite of
how VFs are handled.

So again, why would we want to make software managed subdevices look
exactly the opposite way like hardware/firmware managed subdevices?

Let me also look at the cdev which is exposed by the phsyical device.

The cdev is nothing else than a software vehicle to create a /dev/
node. (ignore the switchtec case which (ab)uses the cdev to connect to
NTB). The cdev allows user space to allocate/release a resource.

Of course it can just allocate a queue and stick the necessary
interrupts into the physical device MSI descriptor storage.

But there is no reason why the queue allocation cannot allocate a
subdevice representing the queue.

That makes the VFIO and the cdev case just using the same underlying
representation which can expose it's properties via the underlying
device.

Which in turn is consistent all over the place and does not require any
special case for anything. Neither for interrupts nor for anything else.

Thanks,

        tglx



-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87mtlk84ae.ffs%40tglx.
