Return-Path: <linux-ntb+bncBDAMN6NI5EERBE4XTWGQMGQEZ67R62Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E85464B6D
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 11:16:53 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id u4-20020a056a00098400b004946fc3e863sf14799323pfg.8
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 02:16:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638353811; cv=pass;
        d=google.com; s=arc-20160816;
        b=BGrC2M6oEW270pLlkC8LSkTDOVWKpFPQ7TZF8vzw6jZDEPRrB5f4/hGiZqf3b8nTOe
         OY5+94V2o9eKWvfkiPGAYxrZlkDEJIkIhSRVAMS4kr8gUd7LZHo1kgrTOyVMtyRl2De1
         MXULQAJ/M3QrqG8qMXkJyolkXBvz6kWngD7Piy3ewVqVTs6DZEnwe/WwJsWdHyRJj414
         41Zk92nqM27H+z0jitZwmjehN+N/glhVu3YHMg+5NtsnFBp4wiGXvAHaKr4Qt9r1ILiN
         OUpGyOR9CcPVWLEr7kLvihVcc4NRBFOwE80kZW2Ogu/HA8+6QziRi1ObYY3pD7Mj456C
         2Leg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=oH7sgEWewFkFpgyuRmLZSJie9H8ZbA99SuCI5onkLkw=;
        b=qBFJPu+bRtp1De1wJx6j6NfB3Ny0Qt8xfWCeYqCeQ/X1HurgEztPMPWQB3Er5KLtV3
         gJpGlTtLokEycGL1psOd8NmNPCEzXyAVyHENDbuyhnLj8bHxXz8I92pPm2Ql0lJIwXNY
         hDngBtWmwPG2eAQKQb72eKWNw12pcLScrVQjeP+kGxvSz/8Ja0+saq3c2j21brIA2rmz
         Py9WRWzUeEUPIiT/lMBR+co3YWizwQ1hkBEulYo96kh8lkhn4AlgNU6gR2hkaVVGMuoA
         q5deqBIvtJ3XaT20XPDwlAkxQ7yB+/SQHyziWYHhu7By4dtZpHzEBKeMSIIvZTuVSUiP
         PaVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=DQUYrHcJ;
       dkim=neutral (no key) header.i=@linutronix.de header.b=UinCQtLZ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oH7sgEWewFkFpgyuRmLZSJie9H8ZbA99SuCI5onkLkw=;
        b=rohPMzJDt3B/CGfR8LLWCJDJqqnaEszHz5EaSHdwo/hml44zfQFjvXgOEjTVIbxTDe
         lnUGeBz6qi/THxJD6oRlEutgUm+jKzVu4BkS+dImI3n5/yItSIlmnLJ6vP3XIKTjJlAf
         Q6r4Zmb6z0Ns/55Zr00IDfkh7GtKFAJXofbxAlmrI9ijTwcnMpRZUGTHlhZXI8GojBtW
         Bl9wdnimmmc/uz4jL6p+PRGkN/8ANcfGBboq75yz9ckpGoCq7KfvIw5QNaa75eaYKG3Y
         M3vstGR3NIjyHDxlpGFa4x1/5G7s3yYGYs32EnvcNtU+TCh7uHu3IECR15xuEcg5DkYF
         ombQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oH7sgEWewFkFpgyuRmLZSJie9H8ZbA99SuCI5onkLkw=;
        b=s1cBjEsP9z97ekl3WQl1h4bm5rKUbEHQJBjjHMS/NXT9T3xVR2G+9hpsZfTWKPCe0V
         9CpSdyqNF8P8s9Ey4ICbgmSFtx2S7BQzZ/BNsGgWPmnUt2cnq3WgP1AD1YPRsy4zI+VF
         LmXs/VStcCXhUmTT4grkv9l9iOA3j4AsNd6UcsQunfs9JMyCwUsquYXszgbh7cM+YGb9
         3Bwp+DwmnpFUJ3TZwUAOaDpwBD380LmsfUypM6UQ9udUJ8oQxjIEAtLP8R4WtfRHm/st
         /cEeETc6NkdIbVJjkDUgawytasi9iBMXP5UQL1vZz0GDz4QbLNvJLBToxyfPZgPsMMwf
         2dkA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530UQvWMUgqMXyTR9vV1cm2neM/YDli3i5aezUQqpmC/PnwlvQEs
	eEV3qpAKhHnPge3rRchL4pc=
X-Google-Smtp-Source: ABdhPJyh6vTTvkt8eqCRZpgjTFMHR89srb3IbW1gXB35abyHUV2QOzPPWn+DP3+rbZFRG+lCfZ5z3Q==
X-Received: by 2002:a17:903:245:b0:143:c5ba:8bd8 with SMTP id j5-20020a170903024500b00143c5ba8bd8mr6352440plh.64.1638353811547;
        Wed, 01 Dec 2021 02:16:51 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:4509:: with SMTP id s9ls560672pga.11.gmail; Wed, 01 Dec
 2021 02:16:51 -0800 (PST)
X-Received: by 2002:a62:1e81:0:b0:4a3:7a97:d868 with SMTP id e123-20020a621e81000000b004a37a97d868mr5034011pfe.52.1638353810998;
        Wed, 01 Dec 2021 02:16:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638353810; cv=none;
        d=google.com; s=arc-20160816;
        b=tYRaLWzvcaRGhWwIn/yrUxrL//tWRhSwC53i/nlYyORnAgVvauI928r6Ux9nkwYKiV
         1G0FsKMhHTWbAH5SF/Dy57SKRE7cLBIYgxuyiDMgX9wqnZetG3QfADJUYjHOBPmBjIwO
         gPGTSkfOWs1lPB/IbQ3hQEdlkfF98+VF6ok2hu/XXZDDFWoNn8R8tiCjPyjEcV4onLUY
         n1pjSoaL/5HmCDSOsl8MFiV7aGpB3r91idk3YfGfvavEt5OPQkGJSWmCzc5h7QHJ4imF
         tJ77W8awF+STExKp0RuT0elgC2Hu7lMHGiPyKmrVu0ImK56fhOGac3tfikHzJn1yplYo
         2Ppg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=wbiMD6K2khcbAApwZxiyDtRNkrqwDaQ0eoVHy6k+DAE=;
        b=lm6k5+huSWXdax+QDOmtfDhxvZr3fEkOjTRINeQWN65q9sjIuTbnf74l6nZhexEHry
         8RP+MOOMVolGYrf/TMOBtO04w3yAqG0iF9wTFK8q0BuzsFXXZonGBrTWxTeH1bERQYz4
         ew0NFFkHQ7YpbofFKNSEq0eCxAUVaI/inJCi6eNvWRP42Lj6p+q5LkA1LuTAvV4XMr3k
         biNaWQvOfAnWAvFRFh7HRmSjWK6zuh1m5duhfg1RZU4FIH1XuIISoNI1aFDENWmCV8sC
         rTaw4ZV6mQ3c7LTAvqKAJCT5LIwPyohbuZOuWcWjj4Mtj87ZyEHZ8yFUivo2e7SeFdlr
         FSqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=DQUYrHcJ;
       dkim=neutral (no key) header.i=@linutronix.de header.b=UinCQtLZ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id v7si2147585pfm.6.2021.12.01.02.16.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 02:16:50 -0800 (PST)
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
In-Reply-To: <20211201001748.GF4670@nvidia.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com>
Date: Wed, 01 Dec 2021 11:16:47 +0100
Message-ID: <87mtlkaauo.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=DQUYrHcJ;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=UinCQtLZ;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as
 permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
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

CC+ IOMMU folks

On Tue, Nov 30 2021 at 20:17, Jason Gunthorpe wrote:
> On Tue, Nov 30, 2021 at 10:23:16PM +0100, Thomas Gleixner wrote:
>> The real problem is where to store the MSI descriptors because the PCI
>> device has its own real PCI/MSI-X interrupts which means it still shares
>> the storage space.
>
> Er.. I never realized that just looking at the patches :|
>
> That is relevant to all real "IMS" users. IDXD escaped this because
> it, IMHO, wrongly used the mdev with the IRQ layer. The mdev is purely
> a messy artifact of VFIO, it should not be required to make the IRQ
> layers work.

> I don't think it makes sense that the msi_desc would point to a mdev,
> the iommu layer consumes the msi_desc_to_dev(), it really should point
> to the physical device that originates the message with a proper
> iommu ops/data/etc.

Looking at the device slices as subdevices with their own struct device
makes a lot of sense from the conceptual level. That makes is pretty
much obvious to manage the MSIs of those devices at this level like we
do for any other device.

Whether mdev is the right encapsulation for these subdevices is an
orthogonal problem.

I surely agree that msi_desc::dev is an interesting question, but we
already have this disconnect of msi_desc::dev and DMA today due to DMA
aliasing. I haven't looked at that in detail yet, but of course the
alias handling is substantially different accross the various IOMMU
implementations.

Though I fear there is also a use case for MSI-X and IMS tied to the
same device. That network card you are talking about might end up using
MSI-X for a control block and then IMS for the actual network queues
when it is used as physical function device as a whole, but that's
conceptually a different case.

>> I'm currently tending to partition the index space in the xarray:
>> 
>>  0x00000000 - 0x0000ffff          PCI/MSI-X
>>  0x00010000 - 0x0001ffff          NTB
>
> It is OK, with some xarray work it can be range allocating & reserving
> so that the msi_domain_alloc_irqs() flows can carve out chunks of the
> number space..
>
> Another view is the msi_domain_alloc_irqs() flows should have their
> own xarrays..

Yes, I was thinking about that as well. The trivial way would be:

    struct xarray     store[MSI_MAX_STORES];

and then have a store index for each allocation domain. With the
proposed encapsulation of the xarray handling that's definitely
feasible. Whether that buys much is a different question. Let me think
about it some more.

>> which is feasible now with the range modifications and way simpler to do
>> with xarray than with the linked list.
>
> Indeed!

I'm glad you like the approach.

Thanks,

        tglx


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87mtlkaauo.ffs%40tglx.
