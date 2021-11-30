Return-Path: <linux-ntb+bncBDAMN6NI5EERB57ASWGQMGQEGRFDOMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E12B146291C
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 01:29:44 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id b15-20020a25ae8f000000b005c20f367790sf26060535ybj.2
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 16:29:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638232183; cv=pass;
        d=google.com; s=arc-20160816;
        b=L95azrx/PutesLWEBAeoBkSySwfxJL6V90Y7rbh5aG6Ok8vU6JpekBVhf3v2uZ8to4
         bVJ22Ck2TmqickwSW37221m1o1YoJ6PjwaAGIbSWn1a6i877dPH9INWMrvBj9/Gda4ls
         9oy5qPtOOmpe8O7PzF4qZCAroPhtx6eAtBiZ9HVFP99FNyF3wuqnet6SZhdqWjNEL3lh
         YfLfwtCFLmPQ8zPH+qr7qoQmZGh7hql8tH9clnYHHz+KkbFHsqjGDdY9T7GgT80rdVAY
         4xPHDEGGWb3g5Oe7Rje+HTaANuoOarisEgffHMoIFYxgWm2yaRKMcwgFFNT/i1/mS5tC
         471w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=7PE3vlpBwOk4rIhWUXnrdsoaeFDLOtQEXU5Ibnutz54=;
        b=XjwtaZC2iKst4M9MbTigeu3XVDYR8UefkKocuw5e7TfJ3Y3DJjEY6+G5QZrRwblW1z
         bShLh4K4Spfbl5WgjoNbKYPIP+Pqx4N+K50txw0nJX8J93c3mH8wWCqQtzzPWZs6m8Fv
         eiGdpbYWDnBsI2SgZ4eDdWqRnnsnPOyIV5PnDNVa5w8XQtbDdKKdJApsMshgS+9wIrQn
         bFFrip2BeDgGPyr6A4o2t4LOYpaQalmIZR0fTo/tJWtaQKUc9z7OUNEvfIBVoFC8cWvt
         jwP9/vFkVYV8h5H4tycZL0gA8IjqMgsnHJkR0mK5aZCPFzMnu870iLVDsxh35aVF9o2N
         /14A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=1v1Ftk1I;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=f7dYLMdQ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7PE3vlpBwOk4rIhWUXnrdsoaeFDLOtQEXU5Ibnutz54=;
        b=H65rNxhatVq0+rYOiyk6T1Y5Bh/VEv6mDBvPUjwg9sYisxcguqlPlO416WowDaAt7r
         Ezl4+J8sLyCrxV3Qmuavmto/pseW0GBawcvpManeBXmYunSMT7liPLUSWBWGWoG393El
         YSvvrIlsijy4bb+syDllKNkiIDHzBEC8iAnYegceVRqJCbfcXkx9bqlY/0ZbTwoMeY0G
         7RJN7QQKgAUfZNcnIoDllmhH9G0GnSli+r2oeTozb+jSwOvlrpnseF+65IlR8yAtTCTx
         EPahTXSc/RRBrzJKb9MykwV6essNsYgitvpYBuNwzkqPlasHi28W6d/6zgHmd1ZRzQYk
         IPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7PE3vlpBwOk4rIhWUXnrdsoaeFDLOtQEXU5Ibnutz54=;
        b=Obnge/Y6me2CZbwDQaNMUWWH/l89F11Gtj11O/sIjvElRuTc9kwH3y7YORlGV/OTIs
         U8+Fck680KF6KQ4ZF0aSZQn8V8cCee4YlxdH3fgmDGkuyWtSytd72u2QYuZ1+OAxCslo
         uan8BQIzks2qxpxS4/sejBZlKebpuP8rSzuIG8t5On0R7JnQv++HNS4ntESY7Yd02q8w
         C4cuuCbgNoD/JGsy+ZFaeEhiz0mLgD92JZaQSUBsIN4arnZdV+IMWsIFhq/WOPVkFyG9
         NE7rg6CnGjMPbBKBMwlCpAIIzG9QqdrYvroPeaAzsEHsnJVMPzZMI4fm8T3cn8ct8+xH
         c6Gw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533BWx09nBTkYlRoTGTxUach1QUpRmRUU8qw86DdfQW+WkCqoIXz
	u4C1eWIX4qo9Gf94tajxRiE=
X-Google-Smtp-Source: ABdhPJw9WAvo8Owj4eOEQeV8BevY3fAFcyybSmGcvJgzOTEZTQ8UlSLJx5M+5u3lrFxvFciq9ctfBA==
X-Received: by 2002:a25:ad06:: with SMTP id y6mr37998910ybi.278.1638232183254;
        Mon, 29 Nov 2021 16:29:43 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:2c53:: with SMTP id s80ls1860386ybs.1.gmail; Mon, 29 Nov
 2021 16:29:42 -0800 (PST)
X-Received: by 2002:a25:6c87:: with SMTP id h129mr37770969ybc.82.1638232182791;
        Mon, 29 Nov 2021 16:29:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638232182; cv=none;
        d=google.com; s=arc-20160816;
        b=XSbJ2IhMJGgW9cb36CALmfqdoEJDvx60iGqfYBr9QZSaNR+Br8VOJ+W1pyj8+Ps//s
         SPMQHUa4DNeu/rhjq5V3/aRY0Pr9dZ4AyYnnY1czVVrQQJlWNcx7UE/IO8cHNkEgSQcp
         qYOj9DC2j2EcmQCspZ9vTzhSwKhOg5skXQaPe9slOrf8bKsy1JlsXiVhp5a/l9YX7h6+
         n1SqhJjAtxD8QxXv0w1xYQbXNQZaecjB5nUf447F02x30lEQT/g4R84YEeXBwdGtiJyZ
         kPpk5izkB746hb6VMbo2qRmNjwY3Mo/ZOQd73ubhNMQMGUYF12q/Zdw1NQBCcXClpgqT
         LYWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=Ov7S8ctUVOm/fzBM/u7NjugMxVazBJXa1iv3Y2wSy0E=;
        b=VHEjhhMCkSjIl4X2URi6BfAiqLODjI99GaeNBfEZtk8JUJm9spghOM8LrRbAlrhyQU
         CF3VVNJrKB/dt2k+23CHolb8S3pTEk5msGnbwxljo7o5SSpDT+t3v26cSZ+I9kbJGibE
         wqf6IUy+71PCS2WB+KSoXkDhVg9qHHYIPAdmfvqPlIFB29jewy9OKwFoR7aW7qONejPh
         zRnTSWINGxSR2BacZ+TVb4FDjPn2jAdOnq/4Z1y3lQ86wMfTe0TcKS69/twIIrlAAm3g
         kcOQJl2G93bsC95u/rJKyZyoOlL8guAoyrizaYY8Ni6G+xQxnU+Huf+wr/ixE/rg4pAb
         fnsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=1v1Ftk1I;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=f7dYLMdQ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id y75si676748ybe.3.2021.11.29.16.29.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 16:29:42 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Logan Gunthorpe <logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex
 Williamson <alex.williamson@redhat.com>, Kevin Tian
 <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>, Megha Dey
 <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
 x86@kernel.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
Date: Tue, 30 Nov 2021 01:29:39 +0100
Message-ID: <87ilwacwp8.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=1v1Ftk1I;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=f7dYLMdQ;
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

Logan,

On Mon, Nov 29 2021 at 15:27, Logan Gunthorpe wrote:
> On 2021-11-29 1:51 p.m., Thomas Gleixner wrote:
>> The switchtec driver is the only one which uses PCI_IRQ_VIRTUAL in order
>> to allocate non-hardware backed MSI-X descriptors.
>> 
>> AFAIU these descriptors are not MSI-X descriptors in the regular sense
>> of PCI/MSI-X. They are allocated via the PCI/MSI mechanism but their
>> usage is somewhere in NTB which has nothing to do with the way how the
>> real MSI-X interrupts of a device work which explains why we have those
>> pci.msi_attrib.is_virtual checks all over the place.
>> 
>> I assume that there are other variants feeding into NTB which can handle
>> that without this PCI_IRQ_VIRTUAL quirk, but TBH, I got completely lost
>> in that code.
>> 
>> Could you please shed some light on the larger picture of this?
>
> Yes, of course. I'll try to explain:
>
> The NTB code here is trying to create an MSI interrupt that is not
> triggered by the PCI device itself but from a peer behind the
> Non-Transparent Bridge (or, more carefully: from the CPU's perspective
> the interrupt will come from the PCI device, but nothing in the PCI
> device's firmware or hardware will have triggered the interrupt).

That far I got.

> In most cases, the NTB code needs more interrupts than the hardware
> actually provides for in its MSI-X table. That's what PCI_IRQ_VIRTUAL is
> for: it allows the driver to request more interrupts than the hardware
> advertises (ie. pci_msix_vec_count()). These extra interrupts are
> created, but get flagged with msi_attrib.is_virtual which ensures
> functions that program the MSI-X table don't try to write past the end
> of the hardware's table.
>
> The NTB code in drivers/ntb/msi.c uses these virtual MSI-X interrupts.
> (Or rather it can use any interrupt: it doesn't care whether its virtual
> or not, it would be fine if it is just a spare interrupt in hardware,
> but in practice, it will usually be a virtual one). The code uses these
> interrupts by setting up a memory window in the bridge to cover the MMIO
> addresses of MSI-X interrupts. It communicates the offsets of the
> interrupts (and the MSI message data) to the peer so that the peer can
> trigger the interrupt simply by writing the message data to its side of
> the memory window. (In the code: ntbm_msi_request_threaded_irq() is
> called to request and interrupt which fills in the ntb_msi_desc with the
> offset and data, which is transferred to the peer which would then use
> ntb_msi_peer_trigger() to trigger the interrupt.)

So the whole thing looks like this:

    PCIe
     |
     |   ________________________
     |   |                       |
     |   | NTB                   |
     |   |                       |
     |   | PCI config space      |
     |   |     MSI-X space       |
     |   |_______________________|
     |---|                       |
         | Memory window A       |
         | Memory window ..      |
         | Memory window N       |
         |_______________________|

The peers can inject an interrupt through the associated memory window
like the NTB device itself does via the real MSI-X interrupts by writing
the associated MSI message data to the associated address (either
directly to the targeted APIC or to the IOMMU table).

As this message goes through the NTB device it's tagged as originating
from the NTB PCIe device as seen by the IOMMU/Interrupt remapping unit.

So far so good.

I completely understand why you went down the road to add this
PCI_IRQ_VIRTUAL "feature", but TBH this should have never happened.

Why?

These interrupts have absolutely nothing to do with PCI/MSI-X as defined
by the spec and as handled by the PCI/MSI core.

The fact that the MSI message is transported by PCIe does not change
that at all, neither does it matter that from an IOMMU/Interrupt
remapping POV these messages are tagged to come from that particular
PCIe device.

At the conceptual level these interrupts are in separate irq domains:

     |   _______________________
     |   |                      |
     |   | NTB                  |
     |   |                      |
     |   | PCI config space     |
     |   |     MSI-X space      | <- #1 Global or per IOMMU zone PCI/MSI domain
     |   |_____________________ |
     |---|                      |
         | Memory window A      |
         | Memory window ..     | <- #2 Per device NTB domain
         | Memory window N      |
         |______________________|

You surely can see the disctinction between #1 and #2, right?

And because they are in different domains, they simply cannot share the
interrupt chip implementation taking care of the particular oddities of
the "hardware". I know, you made it 'shared' by adding these
'is_virtual' conditionals all over the place, but that pretty much
defeats the purpose of having separate domains.

This is also reflected in drivers/ntb/msi.c::ntbm_msi_request_threaded_irq():

	for_each_pci_msi_entry(entry, ntb->pdev) {
		if (irq_has_action(entry->irq))
			continue;

What on earth guarantees that this check has any relevance? Just because
an entry does not have an interrupt requested on it does not tell
anything.

That might be an actual entry which belongs to the physical PCI NTB
device MSI-X space which is not requested yet. Just because that
swichtec device does not fall into that category does not make it any
more correct.

Seriously, infrastructure code which relies on undocumented assumptions
based on a particular hardware device is broken by definition.

I'm way too tired to come up with a proper solution for that, but that
PCI_IRQ_VIRTUAL has to die ASAP.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87ilwacwp8.ffs%40tglx.
