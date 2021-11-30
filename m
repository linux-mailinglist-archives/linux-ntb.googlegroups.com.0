Return-Path: <linux-ntb+bncBDAMN6NI5EERBR5MTKGQMGQEYVVUZAA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 917B6463FE5
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 22:23:20 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id kj12-20020a056214528c00b003bde2e1df71sf30879096qvb.18
        for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 13:23:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638307399; cv=pass;
        d=google.com; s=arc-20160816;
        b=YVS7A1MxgjSqBeY+NdDs+fhpXWruN2pV7+CQgpFnIs7EulncbZTsyKUJR2cv7RHrSV
         lQ79Nyw5m8EO3SyH5REd4VEfqincwHE3Tg656KfyUhdK7/eUKieRktf6vLSMeKQixnrn
         rsH/9UoXUnx7skhNZg7yuCeKVQGxkQjqwKilACieyloTAfIudFGjuIdFsC4bE0SBQToK
         G8bA1/A379HVGPHKCOdS0t0sxqIlvNpXmYw/ke+5Eb1Fjq7EmLH+yZ8i9B7+QohpK85U
         VTnzzeREnE/giknktAi5CmQK4yhAg7o5eeg/FD4LfrHOFzbj7fazDcNvRXPIMsdUAx5I
         WV0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=0Q/TS0cCPULnfWbmtTIIgUz3WvvohWMDoC9w8K2uEyE=;
        b=OJh0IoASiqXKhvL2reG1cflgc/A8fEfU5DZY60yYayAGPP7gnOSUJbM1dnR1zVM1hJ
         NXymqimn6mLZL19orElodqmhPojntgJcVyRZd+n2Hf81fIXUw9xacxk3Xv4BdlizETea
         EWOQi+t3+GcyohRLDydBT2TCE36rkL6IpTrJKWF2VJkVj9bFnYw4340PZf0e3LH4jnaz
         YFqv7NkbfVhH2r6LO4NwG1JoBIlwMK1Xtx3iIbrN9qSt8Ll8dVUerQd2P+FqN+9pxtj4
         sgiInszD3qIhaWzmJKpjo5ahVLwtbJyIfwITS5svoooup87X0EIft353wMm136uQ5fBE
         pUDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=MiSAy+Mx;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Q/TS0cCPULnfWbmtTIIgUz3WvvohWMDoC9w8K2uEyE=;
        b=e881/uakSZno2TIZMqo+RifgvomkNsY3rlrVKKJgBfFCT2dcNeM/wpR7jfPQe6QkdR
         aaz3OH5FP1zH4aDjBALO3cefszsT39IJdbop+dflqTymFjUcjw7eTMMOjrpWx8fkKw0S
         YdQUMet+M1ubS3eCYv7VukcO82mWq6gNJy3uytHwq8/9zykzKsDL7kC07TaP0L9VSvZL
         yftTrxDc/RF1oMdqdXLdlD/AbUJj8yrNQ8O2METoCf/MP47tb7l1J9raAamklDsBD6V2
         dajdIypFKyr9hUiucJEZqRRxVzat4z+y+n92Pf9bZe5dENqj30OtSDuD+GVpMVBdi6zH
         eYFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Q/TS0cCPULnfWbmtTIIgUz3WvvohWMDoC9w8K2uEyE=;
        b=e4nt2A+hEclypXgOCxSwf+lX9Js8g+BVBLRAJn4DdfqZCgFp507FYILFjBhiTpaM+1
         w1V+oJf71z0kLDRYLPtPFk76E3B8tRxeJUcdozlBp7Ha748MwJm+G1rT5TL1BBSTWXWG
         tk6PH7WQMmnvJc8nT5+nHVeeZncaqp2nn17T9JPFgA4iIgenUqXdhKzYJ8Sgh0fSYSfn
         kRwoI4i+zd0iS573jOipjY06YESreJvJyWBfRnpZiIWGVl6frtbN3l0q9iiQJNBUe7q0
         wgMVt6MniLdRyqR7wXTMfe7BdlVHkIn8DDqdsDM91Y3gR7b1acRvzrnwmS6X8OMS+9Ik
         Qyug==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531qfw0oM1sD8fMjEeeFwSmlChljcBhBjBHXikRNs+4qxOfNR80e
	V0mGI6jZ7vY8FnkgXq28Pn8=
X-Google-Smtp-Source: ABdhPJyur03Sf+KOCUn26PGwFS9lgNrYXYU8wbkKEZ4gYHPWRVCnAemHh3nGqQ3/UW1lUZRsiaWtyw==
X-Received: by 2002:ae9:efd8:: with SMTP id d207mr2075585qkg.97.1638307399528;
        Tue, 30 Nov 2021 13:23:19 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:dc01:: with SMTP id s1ls8543qvk.6.gmail; Tue, 30 Nov
 2021 13:23:19 -0800 (PST)
X-Received: by 2002:a05:6214:174d:: with SMTP id dc13mr1908784qvb.7.1638307399063;
        Tue, 30 Nov 2021 13:23:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638307399; cv=none;
        d=google.com; s=arc-20160816;
        b=UvmGuTmV/T1MM0iHtLlue6JGWRifKg/a+HpL5uGE54Zq9kvFFffRo2gbWX00fmC6VI
         yzYPABOxNE/i2ta7tZJmQPzbiProKdvkB5VDdea/pmnjV5xawH6EsEQvvkdV78CPpmPc
         vfNupPVqAscU54R/9qZUIEN/bevsX7dMtlkRYF2RjxcidNovgSMxkZJNLJxz3HthB+qV
         am2PZvG3Alsf6MCutuikhWaGTuuv8m01ZJWoBO9pexAkf/KGhMC6dIL93kpNAcQ5ZIHw
         J6Nke6287GTTqZKgCTmb5ocEfdgIubBE68EI/GxMTexOqUOAzSWwLWqtEbLtpKR+DJFH
         xJ+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=in98yBSPQ1jj4nb7z9Wj+iGoSHUoXZb4meQtKeaOU84=;
        b=OSNoaajPPZQf9Z5cqGsKxGi8Pd7GM7XUY2qqoBBji2xOa0xXJgXc6RmkH+9xH8u8Sn
         nlPM0QUGlXSjqSxr5x4RPdcynLEZ6PJnViqItMlmFmBR2d2GPDriehQbYp1V/Np9fLIF
         XTAjeJU5FaDgkBlygC18ig1eX0d50UOR/6PEyTVImH9P9xov9e8ANpgIbT0FXDOLIKVl
         1tNpR23Sz1w76shL3nA+yxCNXxxSCg5t2IKlvn2udzyFZtY4Efx9HC+vqsM93gTIMiAV
         anfLn2ZH5i5WoHXwzs81/iSIOHXTs7uTNJooLjduWPTWb+z3ghnjFeyduDnKRnD8Fmne
         9PKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=MiSAy+Mx;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id i6si2175988qko.3.2021.11.30.13.23.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 13:23:18 -0800 (PST)
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
 x86@kernel.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <20211130202800.GE4670@nvidia.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com>
Date: Tue, 30 Nov 2021 22:23:16 +0100
Message-ID: <87o861banv.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=MiSAy+Mx;       dkim=neutral
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

On Tue, Nov 30 2021 at 16:28, Jason Gunthorpe wrote:
> On Tue, Nov 30, 2021 at 08:48:03PM +0100, Thomas Gleixner wrote:
>> On Tue, Nov 30 2021 at 12:21, Logan Gunthorpe wrote:
>> > On 2021-11-29 5:29 p.m., Thomas Gleixner wrote:
>> >> I'm way too tired to come up with a proper solution for that, but that
>> >> PCI_IRQ_VIRTUAL has to die ASAP.
>> >
>> > I'm willing to volunteer a bit of my time to clean this up, but I'd need
>> > a bit more direction on what a proper solution would look like. The MSI
>> > domain code is far from well documented nor is it easy to understand.
>> 
>> Fair enough. I'm struggling with finding time to document that properly.
>> 
>> I've not yet made my mind up what the best way forward for this is, but
>> I have a few ideas which I want to explore deeper.
>
> I may have lost the plot in all of these patches, but I thought the
> direction was moving toward the msi_domain_alloc_irqs() approach IDXD
> demo'd here:
>
> https://lore.kernel.org/kvm/162164243591.261970.3439987543338120797.stgit@djiang5-desk3.ch.intel.com/

Yes, that's something I have in mind. Though this patch series would not
be really required to support IDXD, it's making stuff simpler.

The main point of this is to cure the VFIO issue of tearing down MSI-X
of passed through devices in order to expand the MSI-X vector space on
the host.

> I'd expect all the descriptor handling code in drivers/ntb/msi.c to
> get wrapped in an irq_chip instead of inserting a single-use callback
> to the pci core code's implementation:
>
> void __pci_write_msi_msg(struct msi_desc *entry, struct msi_msg *msg)
> {
>         if (entry->write_msi_msg)
>                 entry->write_msi_msg(entry, entry->write_msi_msg_data);
>
> If this doesn't become an irq_chip what other way is there to properly
> program the addr/data pair as drivers/ntb/msi.c is doing?

That's not the question. This surely will be a separate irq chip and a
separate irqdomain.

The real problem is where to store the MSI descriptors because the PCI
device has its own real PCI/MSI-X interrupts which means it still shares
the storage space.

IDXD is different in that regard because IDXD creates subdevices which
have their own struct device and they just store the MSI descriptors in
the msi data of that device.

I'm currently tending to partition the index space in the xarray:

 0x00000000 - 0x0000ffff          PCI/MSI-X
 0x00010000 - 0x0001ffff          NTB

which is feasible now with the range modifications and way simpler to do
with xarray than with the linked list.

Thanks,

        tglx


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87o861banv.ffs%40tglx.
