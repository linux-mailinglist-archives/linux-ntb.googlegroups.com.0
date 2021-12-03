Return-Path: <linux-ntb+bncBDAMN6NI5EERBUHFVCGQMGQE7WHAKSI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1B14679FF
	for <lists+linux-ntb@lfdr.de>; Fri,  3 Dec 2021 16:08:01 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id i6-20020a0565123e0600b00417d29eede4sf1159892lfv.12
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Dec 2021 07:08:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638544081; cv=pass;
        d=google.com; s=arc-20160816;
        b=zOSwUbrCC9qudw2fbFR6XaCJNPiyTLzyl9N9uz9Frs1NFU7TVvjdZSWtlT/nMMXNy/
         AqskHpRow8bxhni+6S1kPJht/A0hH5KVM+WhTP8cAvT4d/y7qg6CZxoHzW3CoaL0TVac
         +oVe5aZ6BF5JNny5OiY9fjmQIvJomo6rULxZvJbKoygI5qgpRqhna8PdZ7O7jCGD25jj
         qxbv07XidMfavj5Zkv8qompFPjaxofvy/7VTub6gzgzlRUGYW3+wu/i4tAGhdA/uxVF3
         Djt2zxwdiehAmWXPXrDwy/B2F1j6fUem+Hqs63ZrdiG48IMlBHkZbWTp/FgpBWSDu5hi
         gZFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=1v7LR307twMzrU6B233ltsRm17Q7zqD6CdVaSibmkqU=;
        b=zgZlsBoFw5rhbRNav1j6EpUKr55pv+WoCeCj0jIPqFaYtYucEzk2OljGzG8OBQCoZe
         Pbm5WACI/OavJEKEDROGX1CSd8VE86dthjpSKF+Im4JtM8zE//U3gMUYG5zuN/ImG/tt
         wL1qu93kJaKiyJdif/s7UB5QF6+d9MuFhX7jByXNgn8ZeAZQmPTEciGSQY9rIPrHcJNA
         P2gp7COFj8b7rRjCXKO/NGdIxMOy7mjPdqBlz1JQFpIVZ5C3y4Ss+npnS4t5xrUVm9by
         btLt7oiD5BArBsFfc7kt8Q63OhWDaxxK1LOz054OHT2/PnsTa3HkK0re+/TNi5bOsbQb
         yQ7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0uGHErG9;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1v7LR307twMzrU6B233ltsRm17Q7zqD6CdVaSibmkqU=;
        b=p9fLQKgnoih59bzvF3qXpFZfAUNVDlfyFNSDR00NZJtzxlxmKDvJDxXA/8I1TTinE+
         1skp/yrU9Sdrh97IZAkxRFTFUN2poZ54s79dZRzoN8ROE8/hHPE0rWq80oCZYoBWfweF
         OGsKuBN82E71JInpjln3APk2jqsPhEHF2An+bHkLzzdT6lm2MvNmxNpMkD4ZpLBD92T/
         cJEpdC7F9rqyRxMRDmOChhcseE22WyIQqFjE9DPnOzXDvh/xJB30ctKI/rR3JmtHDPLf
         7B3B/vWs0cMvLaNYjFXWNNSNcC9raXnYL3lhLG1QG0eMWBEouJCP/uQTOKWEx7tdhUH2
         7H5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1v7LR307twMzrU6B233ltsRm17Q7zqD6CdVaSibmkqU=;
        b=QYAm/L8+qNOmI6ym7XNczBW4c8GLGV1GPF/LFdxlcE7LCslU8OBvTfeQzNTdpxlnz4
         vO0uPG5Bh2L+dgCyC5Ics9K19531uNzRkajs729mMeuFFtL2Ifs+IesQ1M5eEDJLynh3
         qydcgP6J+4yWquSEmJzyNttUzg22KN9sFvPqcvLriCIgZ7tvsLMIZlRUmLKE72uyQU/U
         dZq5RH244bmJzmfFKeBSI3RGz1EmvROWYfabK9lq0IrQGDpd33oggeHhA/UrxAe7OpoR
         HlyjZWtLevq7agXCYwCzAIdl02Myuprqv2eQ89sUpWECXckg74bPmI66ch+T6sd+SYhj
         HeDw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5330yPuLkeZsCFeSOyYnrSTN4emjMmqEPYOvH8bXOojGToV0dK/T
	0wxgoSS5g8H9pLO3TNnCTT4=
X-Google-Smtp-Source: ABdhPJxIE3lyVfJZeQDz3wX8QIXXK8A50Og/+M9DgAVnPNNwRafDMIZ7exjgDVMyaMzDSnjysxWfrw==
X-Received: by 2002:a05:6512:16a4:: with SMTP id bu36mr18612788lfb.255.1638544081000;
        Fri, 03 Dec 2021 07:08:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:234c:: with SMTP id p12ls437269lfu.0.gmail; Fri, 03
 Dec 2021 07:08:00 -0800 (PST)
X-Received: by 2002:a05:6512:39c1:: with SMTP id k1mr17620932lfu.207.1638544079997;
        Fri, 03 Dec 2021 07:07:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638544079; cv=none;
        d=google.com; s=arc-20160816;
        b=HWGRMnvXS9YDOndePmu1J4yHQFeZAo/YHP74P3fCUx3jawhPS9tCXdaX3wI4Q5SHOC
         GYsW5QTdhcM1taABja6EpvlbTHfKaNaiq2Xye1GV9Mb0gmTAWORWwDy5x9wsqd8fkjGy
         YMQJQuTefDZ7g9oURIjMPHNVzejL58AkTuB07utlQzEtJO3y2AXRWlx1+9SmaXjEwPGQ
         c53pWNlwJc/cVSUCIgj4c8YWANFoxgLfDtSlkMoDJJZLbCnbTsPt1s4upB1GzN4+wp0f
         AzUylE9KzHb811Ke+lAhLDWJXSIF4/o9VlJRWFpMbOAd6SzSR6PETumTy3wf7znnC/6j
         fhGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=t5DWEYeg5U2h8L+FTX54oEQ7W1kCRjbyOxlwP1Aeuss=;
        b=AML4Gu31hGVVt5tsstOHfz40jdWJvBdROOGL5+WmkAUHZPyAVlkbzdIpoPfYoopwn8
         /PsgEpRTzpunM/97Mfni2oXEwniRmgFv9baikOugaAPsAuWz6z9eZ5qqUmt8tntqbXbR
         LOrvoN8IvQeGWVrhvqQaXIRBfBX/Dg7aGnyxbouEWhtlDAUcbTk5qZ9u86e2Z69HNG9S
         3rY5R2CAQ579jZ3OUj9aF2vn+CymTF+S5MPiAyJtj9rKojxw541RNkhqwmOX5lae+pfY
         2jJA4IoafwthjZx9+OefzOBvvFpgexswkZDMnZjFKkWHY6l9S4Fcyye5ufiUYagtZV0Z
         HF8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0uGHErG9;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id b29si211761ljf.6.2021.12.03.07.07.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Dec 2021 07:07:59 -0800 (PST)
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
In-Reply-To: <20211203003749.GT4670@nvidia.com>
References: <87mtlkaauo.ffs@tglx> <20211201130023.GH4670@nvidia.com>
 <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com> <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com> <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com>
Date: Fri, 03 Dec 2021 16:07:58 +0100
Message-ID: <877dcl681d.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=0uGHErG9;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

Jason,

On Thu, Dec 02 2021 at 20:37, Jason Gunthorpe wrote:
> On Thu, Dec 02, 2021 at 11:31:11PM +0100, Thomas Gleixner wrote:
>> >> Of course we can store them in pci_dev.dev.msi.data.store. Either with a
>> >> dedicated xarray or by partitioning the xarray space. Both have their
>> >> pro and cons.
>> >
>> > This decision seems to drive the question of how many 'struct devices'
>> > do we need, and where do we get them..
>> 
>> Not really. There is nothing what enforces to make the MSI irqdomain
>> storage strictly hang off struct device. There has to be a connection to
>> a struct device in some way obviously to make IOMMU happy.
>
> Yes, I thought this too, OK we agree

One thing which just occured to me and I missed so far is the
association of the irqdomain.

Right now we know for each device which irqdomain it belongs to. That's
part of device discovery (PCI, device tree or whatever) which set's up

     device->irqdomain

That obviously cannot work for that device specific IMS domain. Why?

Because the PCIe device provides MSI[x] which obviously requires that
device->irqdomain is pointing to the PCI/MSI irqdomain. Otherwise the
PCI/MSI allocation mechanism wont work.

Sure each driver can have

     mystruct->ims_irqdomain

and then do the allocation via

    msi_irq_domain_alloc(mystruct->ims_irqdomain....)

but I really need to look at all of the MSI infrastructure code whether
it makes assumptions about this:

   msi_desc->dev->irqdomain

being the correct one. Which would obviously just be correct when we'd
have a per queue struct device :)

>> Just badly named because the table itself is where the resulting message
>> is stored, which is composed with the help of the relevant MSI
>> descriptor. See above.
>
> I picked the name because it looks like it will primarily contain an
> xarray and the API you suggested to query it is idx based. To me that
> is a table. A table of msi_desc storage to be specific.
>
> It seems we have some agreement here as your lfunc also included the
> same xarray and uses an idx as part of the API, right?

It's a per lfunc xarray, yes.

>> We really should not try to make up an artifical table representation
>> for something which does not necessarily have a table at all, i.e. the
>> devices you talk about which store the message in queue specific system
>> memory. Pretending that this is a table is just silly.
>
> Now I'm a bit confused, what is the idx in the lfunc? 
>
> I think this is language again, I would call idx an artificial table
> representation?

Ok. I prefer the term indexed storage, but yeah.

>> I really meant a container like this:
>> 
>> struct logical_function {
>>         /* Pointer to the physical device */
>>         struct device		*phys_device;
>>         /* MSI descriptor storage */
>> 	struct msi_data		msi;
>
> Up to here is basically what I thought the "message table" would
> contain. Possibly a pointer to the iommu_domain too?
>
>>         /* The queue number */
>>         unsigned int		queue_nr;
>>         /* Add more information which is common to these things */
>
> Not sure why do we need this?
>
> Lets imagine a simple probe function for a simple timer device. It has
> no cdev, vfio, queues, etc. However, the device only supports IMS. No
> MSI, MSI-X, nothing else.
>
> What does the probe function look like to get to request_irq()?

The timer device would be represented by what? A struct device?

If so then something needs to set device->irqdomain and then you can
just do:

     msi_irq_domain_alloc_irqs(dev->irqdomain, dev, ...);

> Why does this simple driver create something called a 'logical
> function' to access its only interrupt?

It does not have to when it's struct device based.

> I think you have the right idea here, just forget about VFIO, the IDXD
> use case, all of it. Provide a way to use IMS cleanly and concurrently
> with MSI.
>
> Do that and everything else should have sane solutions too.

To do that, I need to understand the bigger picture and the intended
usage because otherwise we end up with an utter mess.

>> The idea is to have a common representation for these type of things
>> which allows:
>> 
>>  1) Have common code for exposing queues to VFIO, cdev, sysfs...
>> 
>>     You still need myqueue specific code, but the common stuff which is
>>     in struct logical_function can be generic and device independent.
>
> I will quote you: "Seriously, you cannot make something uniform which
> is by definition non-uniform." :)
>
> We will find there is no common stuff here, we did this exercise
> already when we designed struct auxiliary_device, and came up
> empty.

Really?

>>  2) Having the MSI storage per logical function (queue) allows to have
>>     a queue relative 0 based MSI index space.
>
> Can you explain a bit what you see 0 meaning in this idx numbering?
>
> I also don't understand what 'queue relative' means?
>
>>     The actual index in the physical table (think IMS) would be held in
>>     the msi descriptor itself.
>
> This means that a device like IDXD would store the phsical IMS table
> entry # in the msi descriptor? What is idx then?
>
> For a device like IDXD with a simple linear table, how does the driver
> request a specific entry in the IMS table? eg maybe IMS table entry #0
> is special like we often see in MSI?

If there is a hardwired entry then this hardwired entry belongs to the
controlblock (status, error or whatever), but certainly not to a
dynamically allocatable queue as that would defeat the whole purpose.

That hardwired entry could surely exist in a IDXD type setup where the
message storage is in an defined array on the device.

But with the use case you described where you store the message at some
place in per queue system memory, the MSI index is not relevant at all,
because there is no table. So it's completely meaningless for the device
and just useful for finding the related MSI descriptor again.

If the queue or the controlblock have an internal small array of
messages in their queue or controlblock specific memory, then how would
a per device global index help?

Or has each queue and controlblock and whatever access to a shared large
array where the messages are stored and the indices are handed out to
the queues and controlblocks?

If each of them have their own small array, then queue relative indexing
makes a ton of sense, no?

> For the devices I know about there are two approaches for allocating
> interrupts. 

I'm aware of that.

> When I imagine mlx5 using IMS, I see IMS as a simple extension of the
> existing MSI-X vector pool. Every IMS vector is interchangable and the
> main PCI driver will apply exactly the same allocation algorithm we
> already have today for MSI, just with even more vectors. When VFIO
> wants a vector it may get a MSI or it may get an IMS, I don't want to
> care.
>
> All of this about logical functions just confuses
> responsibilities. The IRQ layer should be worrying about configuring
> IRQs and not dictating how the device will design its IRQ assignment
> policy or subdevice scheme.

The IRQ layer _has_ to worry about it because there is a strict
relationship between device and irqdomain today.

Now with a PCIe device having PCI/MSI[X] it's a strict 1:1
relationship. Now add IMS to the picture and we end up with a 1:2
relationship, which does not work today.

That's why my initial reaction was to partition the device into
subdevices which would have solved the problem nicely.

> IMHO this has become hyper focused on the special IDXD VFIO use case -
> step back and think about my timer example above - a simple pci_driver
> that just wants to use IMS for itself. No queues, no VFIO, no
> mess. Just how does it configure and use the interrupt source.

That would mean that the PCI device would not use MSI-X at all, right?
So it could have pci_dev.dev.irqdomain = IMSdomain.

But that sucks too because it's yet another quirk as the PCIe discovery
cannot set that up simply because the device specific IMS domain does
not exist yet.

> Is it helpful feedback?

Yes, definitely. It helps me to understand the bigger picture and to
find a proper representation of these things so that we don't end up
with the usual mess in drivers/* which makes it a fricking nightmare to
change anything at the core code at all.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/877dcl681d.ffs%40tglx.
