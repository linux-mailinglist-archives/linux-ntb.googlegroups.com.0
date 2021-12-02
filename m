Return-Path: <linux-ntb+bncBDAMN6NI5EERBMUSUWGQMGQEFKD7BGY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C2020466CB7
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Dec 2021 23:31:15 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id k6-20020a0566022d8600b005e6ff1b6bbasf806182iow.8
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Dec 2021 14:31:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638484274; cv=pass;
        d=google.com; s=arc-20160816;
        b=S83QKjUNxbrdr/zA4Ord0M7tAWx3TH6KgSblrY5Nj/iEScUMVzFY3Za567Gi8fibGS
         ScM2rOajQIKYC0wo4GwyFJSMmnO3BpgJdpZrw5RCpFRMXAlKACNfzmssApzcI9j7AQbq
         EJT5X3S/gjPxiWCfKT3rzxpEsTDM0nDxXZvArOdS9bYuqBWqVWNeV4QEFR+FCf0SqOIU
         oLntPXLbGcWlv7wHkpTpEeqQyFkr5SSoemMplNAi/uTHpyZAOy9CBwBvpGb9RV98DtQI
         0v5UQDqPlzHQKQ5oh+Mm02HSCBg/IxPFK7qFjct+Ifr5Qs2RQtuXOg/08rAbV9uNPSAZ
         jj7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=b6Dj2OSD6nh6jrNUGC++rz7+WV2LrUNS+G9mkkOlA5k=;
        b=S/yTjqrJfsr9V0yxM1nz9xuUJcohJAewMPCECtOCYIZWi6xix6IYw5McZNPzrcY0iI
         Sp7qIrOk1Ie6eXZ3sNzJeUTi50an/tB+yr3uGGmq92wXPrnqk4iEYVeBH0j/EHT8k/o5
         hhI0t+1jZBdhddAo/o5T6nwh/GTsyV+BLtOctqAPjMTjw5XyrYAwskzti9H3YhajxakT
         ZIGaMynLe4PkAWlDH6IciEnpb5lAZW4+ru1CRIebmUIPZBepzyIp/rmWtSJ7++lYoTXT
         w/RmgDMr6a4OnwII6f2NmSMd3MRNHpkX0FRMiu1wuTtPEMTPiPdn5zJCuqEHRhhM8k5Y
         NsLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=KSrBvnhg;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=mNChMHoz;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b6Dj2OSD6nh6jrNUGC++rz7+WV2LrUNS+G9mkkOlA5k=;
        b=bydWrdv7/154gd6+D1nTmBALEOzkQi3F1jyROek20yfQ0Zkqc48PILRG8luL2pw9Yd
         aXAJJ6PrV7Kod8mu1/GjANyBKiGQgIBnPyUNzmk51jdQgh5fjAsPaDkre3s33MrwBChE
         dbcTixKUpILEyBTHFxXKTCZ2JxwA9QBwE3DFIodHCaww5JdsIXzzcCVC2dO/+MaOlpQh
         k0ty2XCnqw5C0Jiq6v2TULfj2VBegwQT9Tgc3tfSOi+UUCbYup73dODI0QEMmW+mbgmM
         /z/Cn3uEjffDhjQKVQfzig5uNhbdN0H/qFq8iuIJ6v86MJawx9kOl/C/JNuBDGKbWvxs
         NL1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b6Dj2OSD6nh6jrNUGC++rz7+WV2LrUNS+G9mkkOlA5k=;
        b=vuOnC39nFl1n/vz13Z9a+TsH5kSh1heWGzx6JoTsXeil4eguXDq2lLkhlZ4pvxoF0O
         niRDC37gK/kRvWaZ0pCwGgmQOM9ofUWfDJUeVbxwdlHfRYrBd/VgAHUpfLDFFtT6qEDQ
         TLVvKs2MlTIoZA4N2H8rQUy7OTW6CN+RaQ9HXDCAsLqzGGABMU1COm7nHE7llFwQCn00
         8ntd01B/yGLKvHrLd2+i0C+tgVcuO84/pExc09cM2+46U0sXxQbaPgcsPVJqjHmjcDSo
         NnopkRSnk7+kXWkSa9RKu3MWo5i7Pc9Fn2DYSPIMngtQgv6iwk4KQRdhuZkrrNS3/Xjq
         +qQg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531pRJJUwmZAWzW/zMD6Em3vYfw/KMz00kkpjZDzIbbvRhFI+Z7d
	m+AuO/N+wqcnB1uUv4SgH/A=
X-Google-Smtp-Source: ABdhPJxLEPUcgr1zdn60RXcG1O/3DprX2hXozDVPPDhmAqFlpfi+FfATpk8bVTbS5WtcgYmPCFvolA==
X-Received: by 2002:a6b:b4cc:: with SMTP id d195mr17294029iof.0.1638484274456;
        Thu, 02 Dec 2021 14:31:14 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:d50:: with SMTP id d16ls827854jak.2.gmail; Thu, 02
 Dec 2021 14:31:14 -0800 (PST)
X-Received: by 2002:a05:6638:1346:: with SMTP id u6mr21628161jad.126.1638484274004;
        Thu, 02 Dec 2021 14:31:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638484274; cv=none;
        d=google.com; s=arc-20160816;
        b=w99fFawPYWQe2+PLbShscbRe/n6a7dy06owlXybufB6oo1gFQaTLgtdAIFiDdWpYwD
         65kzRrIJ0v7NDFpnuOSFt3FMC5q0g5G12lSy2Rn/bmNfYPDblw0425cN1Wmj2AetO4G0
         wk0896k0TlIC51uIXP529CLLA9RPAdDSty2Jl+s9MZGsJFD2RLrUlG3Dfm5iMN6rruaT
         yJdF9Vp2MA8H86Qv9BpWAJQ7Kkvwc+fDFnHF3K+yA1ZB6sNXAA0tszFkBU9ooOCXtnXP
         rhFOYDW/kWxK7IEtFA1gly/l5GSke2mvGiNns7uaqJ0lNBSojeC7fQM0YwARgPeDW2qd
         Xftg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=VPV/P40v2U0P8DhSWSQCuWDSGa4mGn96LwynWGTQrSo=;
        b=MahvPf2qH8jVLx+8kilgzZyyHl95DsckfpemBS6V4PGjsgWFkP4NtnwbvyJoYtVTHu
         zJkuT1uaNL/84hk4R7Vg5bWBHcusaQCRUz+Qiy6kl9OUgKJcM3uMaIypiIW55vZ/vdro
         KzYsWeN+Nyh6N/xw/dPY97kdEboYeBMduXN3dYjHz097B4u6FFYgbmmSYOA5aa4UgAoD
         XzU2+ZzGLyRmzTxfbccmWH/x2uK7pcUY4vkmVWWxE48Ad5h5AgaqVW2nSgxMqNlLQ/1/
         J1Wu5QEo+Trko86TlyzXKJZFVcnVormppzG0N6cjAApJL9upLPxWoHWBrR6gUvsavTK/
         t4mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=KSrBvnhg;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=mNChMHoz;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id l7si199840ilh.5.2021.12.02.14.31.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Dec 2021 14:31:13 -0800 (PST)
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
In-Reply-To: <20211202200017.GS4670@nvidia.com>
References: <87o861banv.ffs@tglx> <20211201001748.GF4670@nvidia.com>
 <87mtlkaauo.ffs@tglx> <20211201130023.GH4670@nvidia.com>
 <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com> <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com>
Date: Thu, 02 Dec 2021 23:31:11 +0100
Message-ID: <87o85y63m8.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=KSrBvnhg;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=mNChMHoz;
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

Jason,

On Thu, Dec 02 2021 at 16:00, Jason Gunthorpe wrote:
> On Thu, Dec 02, 2021 at 08:25:48PM +0100, Thomas Gleixner wrote:
>> We seem to have a serious problem of terminology and the understanding
>> of topology which is why we continue to talk past each other forever.
>
> I think I understand and agree with everything you said below.

Good!

> The point we diverge is where to put the vector storage:

Kinda. The vector, i.e. message storage is either:

  - MSI entry in the PCI config space
  - MSI-X table in the PCI config space
  - Device specific IMS storage

The software representation aka struct msi_desc is a different
story. That's what we are debating.

>> Of course we can store them in pci_dev.dev.msi.data.store. Either with a
>> dedicated xarray or by partitioning the xarray space. Both have their
>> pro and cons.
>
> This decision seems to drive the question of how many 'struct devices'
> do we need, and where do we get them..

Not really. There is nothing what enforces to make the MSI irqdomain
storage strictly hang off struct device. There has to be a connection to
a struct device in some way obviously to make IOMMU happy.

>> Such a logical function would be the entity to hand out for VFIO or
>> cdev.
>
> What is a logical function, concretely?

That's a name I came up with for a abstract representation of such a
queue container. I came up with that as a obvious consequence of my
previous reasoning about PF -> VF -> XF.

> Does it have struct device?

It does not necessarily have to .

> Can I instead suggest a name like 'message interrupt table' ?

Well yes, but that's not what I meant. See below.

> Ie a device has two linearly indexed message interrupt tables - the
> PCI SIG defined MSI/MSI-X one created by the PCI core and the IMS one
> created by the driver.
>
> Both start at 0 index and they have different irq_domains.
>
> Instead of asking the driver to create a domain we ask the driver to
> create a new 'message interrupt table'. The driver provides the
> irq_chip to program the messages and the pci_device. The core code
> manages the irq domain setup.
>
> Using what you say below:
>
>> If this is not split out, then every driver and wrapper has to come up
>> with it's own representation of this instead of being able to do:
>> 
>>      request_irq(msi_get_virq(lfunc, idx=0), handler0, ...);
>>      request_irq(msi_get_virq(lfunc, idx=1), handler1, ...);
>
> We could say:
>   msi_get_virq(device.pci_msi_table, index=0)
>
> Is the 0th PCI SIG MSI vector
>
> Something like:
>
>  ims_table = pci_create_msi_table(pci_dev, my_irq_chip,..)
>  msi_get_virq(ims_table, index=0)

Which is pretty much a wrapper around two different irqdomains for the
device and either partitioned index space in the xarray or two xarrays.

Just badly named because the table itself is where the resulting message
is stored, which is composed with the help of the relevant MSI
descriptor. See above.

We really should not try to make up an artifical table representation
for something which does not necessarily have a table at all, i.e. the
devices you talk about which store the message in queue specific system
memory. Pretending that this is a table is just silly.

Also I disagree that this has to be tied to a PCI specific interface,
except for creating a PCI specific wrapper for it to not make a driver
developer have to write '&pdev->dev', which is the very least of our
problems.

IMS as a technical concept is absolutely not PCI specific at all and not
invented by PCI/SIG. It's a marketing brandname for something which
existed way before they thought about it: Message signaled interrupts.

Aside of that 'my_irq_chip' does not cut it at all because of the way
how the resulting messages are stored. IDXD has IOMEM storage and a
storage space limitation while your device uses system memory storage
and has other limitations, i.e. system memory and the number of queues
the device can provide.

An irqchip is a just set of functions to talk to hardware either
directly or via some indirect transport (I2C, SPI, MLX queue management
magic...). These functions require irqdomain and/or device specific
information to function.

Trying to create a universal pci_create_foo() wrapper around this is
going to be like the 13th Herkulean task.

Seriously, you cannot make something uniform which is by definition
non-uniform.

Let's not even try to pretend that it is possible.

> Is the 0th IMS vector
>
> Is it close to what you are thinking with lfunc?

Not really. I was really reasoning about an abstract representation for
a functional queue, which is more than just a queue allocated from the
PF or VF device.

I really meant a container like this:

struct logical_function {
        /* Pointer to the physical device */
        struct device		*phys_device;
        /* MSI descriptor storage */
	struct msi_data		msi;
        /* The queue number */
        unsigned int		queue_nr;
        /* Add more information which is common to these things */
};

Now the real queue, which is obviously not generic:

struct myqueue_function {
	struct logical_function lfunc;
        struct myqueue		queue;
};        

The idea is to have a common representation for these type of things
which allows:

 1) Have common code for exposing queues to VFIO, cdev, sysfs...

    You still need myqueue specific code, but the common stuff which is
    in struct logical_function can be generic and device independent.

 2) Having the MSI storage per logical function (queue) allows to have
    a queue relative 0 based MSI index space.

    The actual index in the physical table (think IMS) would be held in
    the msi descriptor itself.

`   Which then allows queue relative addressing without extra device/queue
    specific meta storage.

    i.e.

        msi_get_virq(&myqueue->lfunc.msi, idx = 0)

    v.s.

        idx = myqueue->msidx[0];
        msi_get_virq(pcidev->dev, idx);

        where the queue management code has to set up myqueue->msidx[]
        and stick the index of the underlying device storage into it.

 3) Setup and teardown would be simply per logical function for
    all of the related resources which are required.

    Interrrupt teardown would look like this:

      msi_domain_free_all_irqs(irqdomain, &lfunc->msi);

    vs.

      for (i = 0; i < myqueue->nrirqs; i++)
           msi_domain_free_irq(irqdomain, &pcidev->dev, myqueue->msidx[0]);


Now change struct logical_function to:

struct logical_function {
-       /* Pointer to the physical device */
-       struct device		*phys_device;

+       /* Pseudo device to allow using devres */
+       struct pseudo_device	pseudo_device;

	/* MSI descriptor storage */
	struct msi_data		msi;
        /* The queue number */
        unsigned int		queue_nr;
        /* Add more information which is common to these things */
};

where struct pseudo_device holds the phys_device pointer and then you
can utilize the devres infrastructure like you do for any other device
and do:

      pseudo_device_add(&myqueue->lfunc.pseudo_device);

at setup time and

      pseudo_device_remove(&myqueue->lfunc.pseudo_device);

on teardown and let all the resources including MSI interrupts be
released automatically.

Needs some infrastructure obviously, but to me that makes a lot of
sense.

And I named it pseudo_device on purpose as it is just a vehicle to make
existing infrastructure which is device specific usable for this kind of
thing.

I might be completely off track. Feel free to tell me so :)

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87o85y63m8.ffs%40tglx.
