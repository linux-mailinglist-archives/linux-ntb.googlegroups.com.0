Return-Path: <linux-ntb+bncBDAMN6NI5EERB2PET2GQMGQEWDD5E7Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C54246541A
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 18:35:39 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id m9-20020a056e021c2900b002a1d679b412sf22945400ilh.2
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 09:35:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638380138; cv=pass;
        d=google.com; s=arc-20160816;
        b=pImz3AsBKnE8+gJaSvj6UDfu90PvGzx5SxAYi7ZFLqhfh/jVysXv287lMe+YtHuCeG
         NDXgSn9lJxZIPAaQHt7xB5eCBzKjC4IOjEHjkjUpAmVlosK2sv+54hl00gx+8zsJjeFG
         NV6vdMB9R90izUDmSGEYXpRiZ2YRWaFjlHvVVWPfxzXHJzeBxLPt3aLNImDJyMiM/K0F
         pLD+8nBsxvEFPvTBXpOfL0sUhC9BvSrvcIFfbG18i3AyzdNK2RSu/gU3SRFo4uHhbzjc
         17ABrRH3bJXY82DsjOzolJ3pz2FC250AsyXrmt17aY90jK0pCo/8uqQ3qy1/yoq8i5fc
         w+Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=mVDz/kR1MsSxazQsu7wjIcmAhzLQoob+6vREF34bRMU=;
        b=RPtatMvYxJk4AOFFxU2jAeD4xp43SNjOHnKOWhc0mGnCSyAZYFR9lkxp6h/Esjy6W/
         Hhze1Kb4WJd2M4NJ5/Ko43Ma4i46QvSZWBgfywKw2KCuzmwRVvzowS4xHkqX6Owes8P2
         Fbyh1zqUbKZWQUOUhhyqLYmy3e7xdN91OEdAnbvJotQXXxnF6c9cf5iwjp+dBKPnmSbH
         LiH3M45w3ebvYNJtBAUx3BtZWH578rxEfrLjwpBw5ycbTRxTAdafBkKRnxF2FLM8tOzb
         h/i4o+jecgi/04x+LE4IqIY/sb9wtSCqrLxJuyu1eRiA3At01OyLvIJ9YoYwy8/Q414v
         0ubw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Pt+06zaI;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=MnhqyMiR;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mVDz/kR1MsSxazQsu7wjIcmAhzLQoob+6vREF34bRMU=;
        b=fwT4/TC1Ey+9P/zp4ATmhIEgumHgsokS7zE4nP9c/JvFB1ieM2oYK2v32xiKKmR0n7
         7c/0HY0JMsZISBNUSR0wjq7/BZhEX/ld+G1mUFBZPrT2fGX/hhXLbw+2G/QdS3WFBHY4
         nR7RhOJ7lEXW+99bSR54LlfTciM+VtiQb7lnzo+InqhEBcL+iYvrzVWNgt0ElVFvyfMW
         sQXmYlQCuy1M19hHhha0RADFJC6jLmgRrsUNDhDzYQVbGI6Y6YyFDRF+U6LAp61wMl9Z
         lsOANaPCWhfm19HG7VhvZ6ghafTZBMopS3NsYEDd5WFCoY7dPIB81h4GK1dqvIjsw2IS
         grlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mVDz/kR1MsSxazQsu7wjIcmAhzLQoob+6vREF34bRMU=;
        b=L3PjMhaBSL+amGPmnUrEYIcOe4k8XArhpVhQ5E15DzG0xb7O6QJzmeCBy0pmHJvALV
         Kvcd3eFi8yX/jc+cq6l2FjJzk4S1Eo0tcEtCTtsJ8v1VGONNfzpwWwzNoPEkImdNRpg7
         TGkseThX0icznyLtHvKGXD2HjIblxwIwNhMob0YAElKfNmnj1mAoajlrPU9gBaeJVCyx
         K9ie8zxMVRSxuUAd/yv1I+RZ2UPgKlvfNT7mH+CZnGUHmj99FaSCJvCYOlOPuElhwBrc
         a4sS028S94cAaC6fKEoR8TSgkrelUVtJDzij0N5Gnlr3sn1LWLfWRrXA/+mT9W1YTayJ
         6XgQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531f+ifyGbjDBLbd2cqN28yMG83kH5eXh+/fB9baJKB4ebnsEC4x
	l6XAxKaTd3ts6hM2b0+AQRE=
X-Google-Smtp-Source: ABdhPJzf4ATt+zNFoZw0GUu6y6Py45GqDR1qBM6aXDS3YJ4/9mojK65Jj84QNCZlWFcWZoobOC0sUg==
X-Received: by 2002:a5d:9a95:: with SMTP id c21mr9318026iom.189.1638380137965;
        Wed, 01 Dec 2021 09:35:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:2165:: with SMTP id s5ls491277ilv.7.gmail; Wed, 01
 Dec 2021 09:35:37 -0800 (PST)
X-Received: by 2002:a05:6e02:c94:: with SMTP id b20mr9170068ile.257.1638380137498;
        Wed, 01 Dec 2021 09:35:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638380137; cv=none;
        d=google.com; s=arc-20160816;
        b=pB9nqjq021MLTF2TpWZKD5EKoVCbd1SKuJdFYIGhRPtK6mHUdfz2FRWFxpux6vBQPq
         BFxqnkRnDDHsRo0za7Zs9qyNyUVhySd0ghAr6B5Y9bIP3qMGD2e00gxLual2md+kA+tg
         6cLf0zdPqqA8yM4WmwX7U9jNh/vkeBFp1eslnlKN+iWECuM/Z6GQny/B8otLBnrA2JzO
         eNe2G3EHXZ0THtVMeyRG2QXp2rWe27+XmpU70NkShjiron3DzLNWIA+1mRdOJ1d81GQV
         YCYm4tUJwCdFk2VoFNoe1ejRVOoUAQLCxtGlVmI6y3HyJkwN0gMEiNeGscnLQXnYpWJ+
         G57A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=Wl46BdwZ1KGmv50G3jfsI0iPOejQIWMQSjLutgaOqHk=;
        b=m/lLqwJyoH22lQcMP2NpI3ulDXCDzUJ44Sfvt3JgaMaULHN6kR9JTFhLagCSmIPbuF
         W4auUp+iwQEME01Hr+YzqUYjGOXew9el7a8tBpVUWbb8+PlpJDuA8S8Kv2+VxqKkKMzq
         ZHRO1untlu9EpVaxMQr3k11L8+D9z32DW/v4Tgq0LJTisVKbwFFgotZO8nrd5+5h2Hrq
         8hd1zjHCBVsr8HLw6AMV4x36rjd+jE/ofiYeeha729LzT9AaGOVjUb3I01XcepHTsdFe
         lNc3jiC7+L202JVCadCCg75qKnf0ocgUhyFi5d9een+QB4KRc3vPp9OD+Xur5Xp1sG8Q
         bVyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Pt+06zaI;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=MnhqyMiR;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id l7si102875ilh.5.2021.12.01.09.35.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 09:35:37 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
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
In-Reply-To: <20211201130023.GH4670@nvidia.com>
References: <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com>
 <874k7ueldt.ffs@tglx> <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
 <87ilwacwp8.ffs@tglx> <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
 <87v909bf2k.ffs@tglx> <20211130202800.GE4670@nvidia.com>
 <87o861banv.ffs@tglx> <20211201001748.GF4670@nvidia.com>
 <87mtlkaauo.ffs@tglx> <20211201130023.GH4670@nvidia.com>
Date: Wed, 01 Dec 2021 18:35:35 +0100
Message-ID: <87y2548byw.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Pt+06zaI;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=MnhqyMiR;
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

On Wed, Dec 01 2021 at 09:00, Jason Gunthorpe wrote:
> On Wed, Dec 01, 2021 at 11:16:47AM +0100, Thomas Gleixner wrote:
>> Looking at the device slices as subdevices with their own struct device
>> makes a lot of sense from the conceptual level.
>
> Except IMS is not just for subdevices, it should be usable for any
> driver in any case as a general interrupt mechiansm, as you alluded to
> below about ethernet queues. ntb seems to be the current example of
> this need..

But NTB is operating through an abstraction layer and is not a direct
PCIe device driver.

> IDXD is not so much making device "slices", but virtualizing and
> sharing a PCI device. The IDXD hardware is multi-queue like the NIC I
> described and the VFIO driver is simply allocating queues from a PCI
> device for specific usages and assigning them interrupts.

Right.

But what is the representation for that resulting device? Some VFIO
specific homebrewn muck or something which is based on struct device?

Right now with VF passthrough, I can see the interrupts which are
associated to the device.

How is that going to be with something which is just made up? Does that
expose it's own msi properties then somewhere hidden in the VFIO layer?

See below.

> There is already a char dev interface that equally allocates queues
> from the same IDXD device, why shouldn't it be able to access IMS
> interrupt pools too?

Why wouldn't it be able to do so?

> IMHO a well designed IDXD driver should put all the PCI MMIO, queue
> mangement, interrupts, etc in the PCI driver layer, and the VFIO
> driver layer should only deal with the MMIO trapping and VFIO
> interfacing.
>
> From this view it is conceptually wrong to have the VFIO driver
> directly talking to MMIO registers in the PCI device or owning the
> irq_chip.

The VFIO driver does not own the irq chip ever. The irq chip is of
course part of the underlying infrastructure. I never asked for that.

PCIe driver
     Owns the PCI/MSI[x] interrupts for the control block

     Has a control mechanism which handles queues or whatever the
     device is partitioned into, that's what I called slice.

     The irqdomain is part of that control mechanism and the irqchip
     implementation belongs to that as well. It has to because the
     message store is device specific.

     Whether the doamin and chip implementation is in a separate
     drivers/irqchip/foo.c file for sharing or directly built into the
     PCIe driver itself does not matter.

     When it allocates a slice for whatever usage then it also
     allocates the IMS interrupts (though the VFIO people want to
     have only one and do the allocations later on demand).

     That allocation cannot be part of the PCI/MSIx interrupt
     domain as we already agreed on.

We have several problems to solve. Let me look at it from both point of
views:

    1) Storage

       A) Having "subdevices" solves the storage problem nicely and
          makes everything just fall in place. Even for a purely
          physical multiqueue device one can argue that each queue is a
          "subdevice" of the physical device. The fact that we lump them
          all together today is not an argument against that.

       B) Requires extra storage in the PCIe device and extra storage
          per subdevice, queue to keep track of the interrupts which
          are associated to it.

    2) Exposure of VFIO interrupts via sysfs

       A) Just works

       B) Requires extra mechanisms to expose it

    3) On demand expansion of the vectors for VFIO

       A) Just works because the device has an irqdomain assigned.

       B) Requires extra indirections to do that

    4) IOMMU msi_desc::dev

       A) I think that's reasonably simple to address by having the
          relationship to the underlying PCIe device stored in struct
          device, which is not really adding any complexity to the IOMMU
          code.

          Quite the contrary it could be used to make the DMA aliasing a
          problem of device setup time and not a lookup per interrupt
          allocation in the IOMMU code.

       B) No change required.

    4) PASID

       While an Intel IDXD specific issue, it want's to be solved
       without any nasty hacks.

       A) Having a "subdevice" allows to associate the PASID with the
          underlying struct device which makes IOMMU integration trivial

       B) Needs some other custom hackery to get that solved

So both variants come with their ups and downs.

IMO A) is the right thing to do when looking at all the involved moving
pieces.

> It would be very odd for the PCI driver to allocate interrupts from
> some random external struct device when it is creating queues on the
> PCI device.

No. That's not what I want.

>> and then have a store index for each allocation domain. With the
>> proposed encapsulation of the xarray handling that's definitely
>> feasible. Whether that buys much is a different question. Let me think
>> about it some more.
>
> Any possibility that the 'IMS' xarray could be outside the struct
> device?

We could, but we really want to keep things tied to devices which is the
right thing to do.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87y2548byw.ffs%40tglx.
