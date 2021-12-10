Return-Path: <linux-ntb+bncBDAMN6NI5EERBKV5ZKGQMGQEAGY5YXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5944146F801
	for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 01:26:19 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id 187-20020a1c02c4000000b003335872db8dsf4014172wmc.2
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Dec 2021 16:26:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639095979; cv=pass;
        d=google.com; s=arc-20160816;
        b=H0pzAHhG4SdiE3/Oov4x8HeNgj0w8IiLKJpa5EDmJu8S/23L46y0V4LZ7qeSG0voYh
         qyuWiZU/2Yv9gM9Y6Qp6VDBAevOmOzxcyzEIaRkMPvI2NBJ4i1Yn40uZ45uhu+sZPRGI
         tzUVxm4NsIuJfZTu+S+Xz0Kl8PMs3INqO9sn4x5YQfs4zH4civUjWIG/jI4vAasN1Yli
         woBrMfui8l0xpZ3KBEt5WIb1PoakEGnvN0jGt8pC4/NABVnH4VIt/IkP5+AcInWHaN53
         WMpghZjA8ReGjRDt4eJyGjD/7h4LulN3HEEcVQQqHUibkpe3t+cwLz9H4Jk/Ir+2IVLy
         sBNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=9P/D3eWeKjtDWmlTq5zC2s8HMSZejObLe/8ntakBvvw=;
        b=Y1ti211h+kHDPxOHDDusvYyOFD4VMCx9O28Hz9wWwxTxN1q7Vlpxa7cYPJZ2wWHHRE
         6AnrxhHk0AfmobwAZ6Bq0ydmooMRXC9/JISsFYiulswI7MIszqMHhKc8pT2nqgaVTUnF
         0XatA2hLLber9BvzS0Ecm5eekLRqgiJxi88+5KOnkbIUTMWU6r1b/SsPr6gRaHx62RRR
         WMfcx6J16z9mJiSaySKnfzmoE7MtXH+8LLnz+NCo6nF6DVVB+VI2KazZGw2/MEuM6Yxf
         TbjXoQrKZQuxr2I6Py53i9i//vP+HMmjWpv3cCbhzrJYipnwbOvDBDtOJVKeNLw98JM2
         MJrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=SGuP3jiE;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9P/D3eWeKjtDWmlTq5zC2s8HMSZejObLe/8ntakBvvw=;
        b=ZDSxC5tYYGTe8u9Xb4QXuyi7NaeSWetXb+XTqkulqxdHdNHz2yeByji1DQtcvPRRqL
         1oK2j78ppzhmo8NqSV1jI9yUAQksQSHdjDPZ6Vdimdvj+2T9Q+jXGHhZjyptE7n+DPT6
         u/NsnFtp5QtfQYJo0d0JtY8YRxFW/sDD07Z2ib7dwNaPmvAaJaXp3qZg4AnCF1X55Cdd
         TqXWTHHR3Szo6rY6Hq+bnfrtDAIESNKzMi+1112xU1vsaaMhHZQWib2qswXCLolUBNDI
         egPtzF2NastBsNHW3NjPCLmNFM1KZ0FBYj8marmaMgNMTrg/mAzd6cD6elIjnctOuA53
         vNOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9P/D3eWeKjtDWmlTq5zC2s8HMSZejObLe/8ntakBvvw=;
        b=ut3gJu2+tVyF7svYk/mSnxUVKhOnl3wtQmDzZKOHkT4hCeu2Q6k9I0d9+HBMjvgAQT
         18yRj1LjW47C3UeoJj5cGvBxm/GQiTbZ7PK2Vf1LsyaVyloFwksdwpKxedJn5F0lUSOU
         nQB8X/ohe4b6KuO2+3OICiplaSGk5Uk3Gmmip437PbldbIRgOzYy2mjOgwItxLIks9Nq
         JtSqE0UxDdMemdeXlp9Z7NMzNzuItQoYkXAA6vfJqtMDH0rJ0S7j+aA0pETnKr6L2G7+
         htDbD2DyB/25L91XiSq1cKPztN7mKEvlgYgL+We++ReFwhQKMvDl//BePWoK4FpixyBh
         p1Kg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531YTKRasiZ/kgnfcuv6iolY5Ly9myjRjlURlJ1G87R8BKBUHBFZ
	r7BVfnoZHJn/ZS6kgwyC45o=
X-Google-Smtp-Source: ABdhPJwxt81E4QjCVcXkjyH3bK/7S8aoiOJ4jDAq7FXafaRZXsG2JpDelLKW9okcV6Nys+a1M7chnQ==
X-Received: by 2002:a05:600c:4ed2:: with SMTP id g18mr12111384wmq.122.1639095979035;
        Thu, 09 Dec 2021 16:26:19 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f1c2:: with SMTP id z2ls483469wro.2.gmail; Thu, 09 Dec
 2021 16:26:18 -0800 (PST)
X-Received: by 2002:adf:f206:: with SMTP id p6mr10241890wro.509.1639095978112;
        Thu, 09 Dec 2021 16:26:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639095978; cv=none;
        d=google.com; s=arc-20160816;
        b=iyndZ9yYARL8rq/UFnr/u75RhR0FPedd0fAZUCNUt05YfRWU9mcSsife0Z36zGfnk/
         QxDk/RCks8jqdi0+TWZRv3y/0ZjevZtgdsg/g6qFhmeE1SKArx4uMsqx5Nxy11qVlBCU
         g0h/Np8cGCoVznkAnNK5KJSba2+w1bUJXP7KhJD8/qI5er482hVLvgFkiR5rxwBur04X
         Sx2IitvViBSflqyDzpEUmlFbbkgOlst4s0rhAkECikZBNdessvkKF7TSPJ+ywt+0mmzS
         5VZxs9UFT9FFZFZnuuTemQr240sAKNh7E6RJU2n/EHyIXZuDxAtcToPt5WSvqjnhWLj8
         WTtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=oyRD+ut1wwQO4SYEZeVrK3aZY2EypBixx+iW/lkFS4g=;
        b=MfLzoV2VcmfK3C1AVeZTJVYdvHhyD6Kvwxh3ah9kc9uxSwCVgo3ib7sHpqNMZ960FQ
         pE4SscK0uGkFBCOVo+nhfaOEocCknMd6dhkUi+hBmOIo2xjmbg/SauhFcNM2qF+6hWaT
         UcvARv7CYXrvkHIfAN8Pl0JrQ+DLweuR0ImG02wg/52X2dx7RhOa90ktddY3Kbf5rL8Q
         ZxH3a+6fneXnCMnzYOxrBXI6/bJh2WwrjxXQwNUh/gIHnOhBboTGAEj/bxHWC2mINVWt
         hUBGNgiuwnGEP0b3d8uZc47qAGTF8eE4b85hppwiGy2dEfe0cQp+Lco3T+uKGQNyt5Ih
         3RFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=SGuP3jiE;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o19si204806wme.2.2021.12.09.16.26.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 16:26:18 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: "Tian, Kevin" <kevin.tian@intel.com>, "Jiang, Dave"
 <dave.jiang@intel.com>, Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 "Dey, Megha" <megha.dey@intel.com>, "Raj, Ashok" <ashok.raj@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>,
 Allen Hubbe <allenbh@gmail.com>, "linux-ntb@googlegroups.com"
 <linux-ntb@googlegroups.com>, "linux-s390@vger.kernel.org"
 <linux-s390@vger.kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, "x86@kernel.org"
 <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <8735n1zaz3.ffs@tglx>
References: <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com>
 <87pmqg88xq.ffs@tglx> <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com>
 <87k0go8432.ffs@tglx> <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx>
Date: Fri, 10 Dec 2021 01:26:16 +0100
Message-ID: <87sfv1xq3b.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=SGuP3jiE;       dkim=neutral
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

On Thu, Dec 09 2021 at 23:09, Thomas Gleixner wrote:
> On Thu, Dec 09 2021 at 16:58, Jason Gunthorpe wrote:
>> Okay, I think I get it. Would be nice to have someone from intel
>> familiar with the vIOMMU protocols and qemu code remark what the
>> hypervisor side can look like.
>>
>> There is a bit more work here, we'd have to change VFIO to somehow
>> entirely disconnect the kernel IRQ logic from the MSI table and
>> directly pass control of it to the guest after the hypervisor IOMMU IR
>> secures it. ie directly mmap the msi-x table into the guest
>
> That makes everything consistent and a clear cut on all levels, right?

Let me give a bit more rationale here, why I think this is the right
thing to do. There are several problems with IMS both on the host and on
the guest side:

  1) Contrary to MSI/MSI-X the address/data pair is not completely
     managed by the core. It's handed off to driver writers in the
     hope they get it right.

  2) Without interrupt remapping there is a fundamental issue on x86
     for the affinity setting case, as there is no guarantee that
     the magic protocol which we came up with (see msi_set_affinity()
     in the x86 code) is correctly implemented at the driver level or
     that the update is truly atomic so that the problem does not
     arise. My interrest in chasing these things is exactly zero.

     With interrupt remapping the affinity change happens at the IRTE
     level and not at the device level. It's a one time setup for the
     device.

     Just for the record:

     The ATH11 thing does not have that problem by pure luck because
     multi-vector MSI is not supported on X86 unless interrupt
     remapping is enabled. 

     The switchtec NTB thing will fall apart w/o remapping AFAICT.

  3) With remapping the message for the device is constructed at
     allocation time. It does not change after that because the affinity
     change happens at the remapping level, which eliminates #2 above.

     That has another advantage for IMS because it does not require any
     synchronization with the queue or whatever is involved. The next
     interrupt after the change at the remapping level ends up on the
     new target.

  4) For the guest side we agreed that we need an hypercall because the
     host can't trap the write to the MSI[-X] entry anymore.

     Aside of the fact that this creates a special case for IMS which is
     undesirable in my opinion, it's not really obvious where the
     hypercall should be placed to work for all scenarios so that it can
     also solve the existing issue of silent failures.

  5) It's not possible for the kernel to reliably detect whether it is
     running on bare metal or not. Yes we talked about heuristics, but
     that's something I really want to avoid.

When looking at the above I came to the conclusion that the consistent
way is to make IMS depend on IR both on the host and the guest as this
solves all of the above in one go.

How would that work? With IR the irqdomain hierarchy looks like this:

                   |--IO/APIC
                   |--MSI
    vector -- IR --|--MIX-X
                   |--IMS

There are several context where this matters:

  1) Allocation of an interrupt, e.g. pci_alloc_irq_vectors().

  2) Activation of an interrupt which happens during allocation and/or
     at request_irq() time

  3) Interrupt affinity setting

#1 Allocation

   That allocates an IRTE, which can fail

#2 Activation

   That's the step where actually a CPU vector is allocated, where the
   IRTE is updated and where the device message is composed to target
   the IRTE.

   On X86 activation is happening twice:

   1) During allocation it allocates a special CPU vector which is
      handed out to all allocated interrupts. That's called reservation
      mode. This was introduced to prevent vector exhaustion for two
      cases:
      
       - Devices allocating tons of MSI-X vectors without using
         them. That obviously needs to be fixed at the device driver
         level, but due to the fact that post probe() allocation is not
         supported, that's not always possible

       - CPU hotunplug

         All vectors targeting the outgoing CPU need to be migrated to a
         new target CPU, which can result in exhaustion of the vector
         space.

         Reservation mode avoids that because it just uses a unique
         vector for all interrupts which are allocated but not
         requested.

    2) On request_irq()

       As the vector assigned during allocation is just a place holder
       to make the MSI hardware happy it needs to be replaced by a
       real vector.

   Both can fail and the error is propagated through the call chain

#3 Changing the interrupt affinity

   This obviously needs to allocate a new target CPU vector and update
   the IRTE.

   Allocating a new target CPU vector can fail.

When looking at it from the host side, then the host needs to do the
same things:

  1) Allocate an IRTE for #1

  2) Update the IRTE for #2 and #3

But that does not necessarily mean that we need two hypercalls. We can
get away with one in the code which updates the IRTE and that would be
the point where the host side has to allocate the backing host
interrupt, which would replace that allocate on unmask mechanism which
is used today.

It might look awkward on first sight that an IRTE update can fail, but
it's not that awkward when put into context:

  The first update happens during activation and activation can fail for
  various reasons.
  
The charm is that his works for everything from INTx to IMS because all
of them go through the same procedure, except that INTx (IO/APIC) does
not support the reservation mode dance.

Thoughts?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87sfv1xq3b.ffs%40tglx.
