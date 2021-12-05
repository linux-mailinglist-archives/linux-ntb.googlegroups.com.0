Return-Path: <linux-ntb+bncBDAMN6NI5EERBSUTWOGQMGQE7R3NAYY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A77468B5C
	for <lists+linux-ntb@lfdr.de>; Sun,  5 Dec 2021 15:16:43 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id h40-20020a0565123ca800b00402514d959fsf2575807lfv.7
        for <lists+linux-ntb@lfdr.de>; Sun, 05 Dec 2021 06:16:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638713803; cv=pass;
        d=google.com; s=arc-20160816;
        b=EWtc/UPfFpp5L307iZVzicY3PrjSfdMmJSSU26Nymv/XZQgf5gRJP8J/PZfzMnpdpr
         M5f9wipwrojPLYxzab1rXZLva0u/1kKIr2l+y0wn5oCkvBmf+zS5JQ30Z3Vw+/NzZvo4
         ESnih05pccMjG2gpYtRuxymCOTFxubmP2snarI+GZVTTmeQYPQmL/m/KTLIlaIfVyPHz
         7fhz//f06Hy67FiEOZ+tggurOmC0Btkua1pBOQM7u4ifJ6hhDgnvnCRPaMHdoDsYweP3
         uukf/AU/K0POdYqFa/TRCf9aQ9E0cNQKUbbC++YUUnFwkLzNI2kUssVZDIgEM5wWy/Vf
         bhEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=bnV3GAmDQHJm0HFbmb/hA4oZw6APUXbC/uu1FyoMN4s=;
        b=mnMOqTgKz61BjVfk+LkGaFhPME2sBsZMGTobKL/M7yhgMAINt6aDpBg1T2etlgOG5e
         uf1f9FA/OZWUUVIxzX5VwZBbIOGtpS81na8loibVeuZfDF/B/TUI1BGPkdaajLVSd05E
         5rnn4FPj+W7FQqF+Ig5N24E8u63S3R3iU8dUfhKFvR4cV3Ou9bCULPRuBww4r+rG7KKX
         gWEU9f8y5MSlzbUbNl2SawD0x1B/T4HdchwRGfRcB6wdjoJ2YoJkR6U2VZpACK/AYjF5
         dmuD1FqdwBLOyB8Jie6HBudFhqcBU3jUMiiEEZrH80dr4fIjQ3+WKv7tEAzO90zqM17t
         jHMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=yD1StGSO;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="qH/RLvwS";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bnV3GAmDQHJm0HFbmb/hA4oZw6APUXbC/uu1FyoMN4s=;
        b=Mf3Jfpbh+KBZojoZ3Tb/C2+u2ipe2NtfKoGKUN36Djacg2q8gNY5RcPZ9s2T6swpK4
         olM0PjtnT6SWNID3/H7wPMIPP/qSZ6ybLEbudOMqE2YWESt3bCgr1ajJ9hxwme5uQ0a9
         bJKRtVPWUGz2s4dzZ2Yen2vuWdx9wib2lwu/wt0cmJOyFZf5sgTo92JLUSiSQi6OtZgt
         rXEsFxg4UOP6/dtlBF46hUrtK9m03JPADodsEcWOZtoBDXm++F1AIzZ8F8ZsZ4y3tRpu
         g52zld5+jEtXIA+l+tbDUrHjvOL0ALbclnA3WfzRYIpoDFuahyM5TYnFtz4np7UVExo6
         08cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bnV3GAmDQHJm0HFbmb/hA4oZw6APUXbC/uu1FyoMN4s=;
        b=c00kGhBk95Gg1+6XF8HWSX+gtAThONttNmmrydpuYUFMZ323lPLVtk5+JlLGIIwQwO
         JRT49sr9YGvSIUVe8obG2BC4sDNnSx0Ivhao9KDBtobq52FhnXmRQnxJ7pUoPIUjVDan
         Wk+ck5s1XEQS77a6/Y9+YJ+DoO1/Z+7eWTNpRY4WbLkon3Am9nBSiksVbXGvAKgHViHx
         Nkux985ldANFI+hz4SzmzY3i787/jgSvFRKej5yjjUMKPVYwo9VeAo+gJ3/H9OOBFahM
         uvz8azO/OE4PliTUDhQjeBUbr4G3+SAZRXdA26xQ021/St91/57DOF++Qjr9/hgyIORr
         ZC2A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5310jV6vlIbvWeKg7qsIeS9yYlD9giulIf31QeEI6ZX5taP+e/wo
	4vNUSN5EK6kw9uqtZFEZjuM=
X-Google-Smtp-Source: ABdhPJynl64RXBo0ZMqQC40B7tTOrvMFkwhl1lgUg7BaWGWQ8+5NBgU8MzKsMhl9LcRTJ9EpAb93jQ==
X-Received: by 2002:a2e:a548:: with SMTP id e8mr29410243ljn.24.1638713802913;
        Sun, 05 Dec 2021 06:16:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:234c:: with SMTP id p12ls2407614lfu.0.gmail; Sun,
 05 Dec 2021 06:16:42 -0800 (PST)
X-Received: by 2002:a19:f50e:: with SMTP id j14mr29409089lfb.458.1638713801958;
        Sun, 05 Dec 2021 06:16:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638713801; cv=none;
        d=google.com; s=arc-20160816;
        b=rcYLn1St2Q7iPWTSmCOsPGC3YUZJ30RjldgZdLM5ltmXmMSy93/I5hGYhx+JM5piCK
         ECBMIVjsPmUNzKvMEakW7xO4z7QywJgo6WVrDShfZ4v3mjGMEhWE7ghpqw+lBoAix9Ku
         UmUdJ9jaFqey8ZvAIQUroWd6IAUwMaobMZv3s/Suzk+SNo25IjJV+0cV0F7Hwc4OjKs/
         G3eKlknLBJkP1Ht/WJ85YHA33IO15NHLybm7Ai/nrh/JBlRiaM+RSTXLb4/T+gQ6XYiC
         HyUwSH/hA75LOviA44bD1ttpDdHy0iBScQIvJmkqeIV5UbZmJFmVhsNXlto+4INcGPzI
         +qRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=sJTQUIRR77MaSNIdhZpi/LTBTa3zuBS70Kn6pQ3k3x4=;
        b=Q0a9j+tn7TT8rwfYvdriH9iFD6GhSqUKqRubmQXcV912IHnuBbdM37j3TmAk358q32
         762d0MCINMU6xm2EHvgCv2TAFNgKQRP+jbLziRfNJi/pawG8KodYd77SPtL+5p4AEcku
         myjAR3cjc1CyQHRksMh4ikJKW+eitCtL6AthzQEM/7ZvauW9li3rFxIdBKOBrALSs8u7
         OZx3cOv47R+yBRCym+KxAZdsxDapZ6PhM63WUNvGVjK41efntrf7y2ST4DqSktD8+gCy
         byR/ON5gMFjfMY4ItojxiiadJ69GeK19KJoLVts/xYh53bQVDCIKSb4SABgxDstfeEpw
         x3pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=yD1StGSO;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="qH/RLvwS";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id k26si70627lfe.10.2021.12.05.06.16.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Dec 2021 06:16:41 -0800 (PST)
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
 iommu@lists.linux-foundation.org, Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <87v9044fkb.ffs@tglx>
References: <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com> <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com> <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com> <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com> <87v9044fkb.ffs@tglx>
Date: Sun, 05 Dec 2021 15:16:40 +0100
Message-ID: <87o85v3znb.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=yD1StGSO;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b="qH/RLvwS";
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

On Sat, Dec 04 2021 at 15:20, Thomas Gleixner wrote:
> On Fri, Dec 03 2021 at 12:41, Jason Gunthorpe wrote:
> So I need to break that up in a way which caters for both cases, but
> does neither create a special case for PCI nor for the rest of the
> universe, i.e. the 1:1 case has to be a subset of the 1:2 case which
> means all of it is common case. With that solved the storage question
> becomes a nobrainer.
>
> When I looked at it again yesterday while writing mail, I went back to
> my notes and found the loose ends where I left off. Let me go back and
> start over from there.

I found out why I stopped looking at it. I came from a similar point of
view what you were suggesting:

>> If IMS == MSI, then couldn't we conceptually have the dev->irqdomain
>> completely unable to handle IMS/MSI/MSI-X at all, and instead, when
>> the driver asks for PCI MSI access we create a new hierarchical
>> irqdomain and link it to a MSI chip_ops or a MSI-X chip_ops - just as
>> you outlined for IMS?  (again, not saying to do this, but let's ask if
>> that makes more sense than the current configuration)

Which I shot down with:

> That's not really a good idea because dev->irqdomain is a generic
> mechanism and not restricted to the PCI use case. Special casing it for
> PCI is just wrong. Special casing it for all use cases just to please
> PCI is equally wrong. There is a world outside of PCI and x86. 

That argument is actually only partially correct.

After studying my notes and some more code (sigh), it looks feasible
under certain assumptions, constraints and consequences.

Assumptions:

  1) The irqdomain pointer of PCI devices which is set up during device
     discovery is not used by anything else than infrastructure which
     knows how to handle it.

     Of course there is no guarantee, but I'm not that horrified about
     it anymore after chasing the exposure with yet more coccinelle
     scripts.

Constraints:

  1) This is strictly opt-in and depends on hierarchical irqdomains.

     If an architecture/subarchitecture wants to support it then it
     needs to rework their PCI/MSI backend to hierarchical irqdomains or
     make their PCI/MSI irqdomain ready for the task.

     From my inspection of 30+ PCI/MSI irqdomains, most of them should
     be trivial to convert. The hard ones are powerpc, XEN and VMD,
     where XEN is definitely the most convoluted one.

     That means that devices which depend on IMS won't work on anything
     which is not up to date.

  2) Guest support is strictly opt-in

     The underlying architecture/subarchitecture specific irqdomain has
     to detect at setup time (eventually early boot), whether the
     underlying hypervisor supports it.

     The only reasonable way to support that is the availability of
     interrupt remapping via vIOMMU, as we discussed before.

  3) IOMMU/Interrupt remapping dependency

     While IMS just works without interrupt remapping on bare metal the
     fact that there is no reliable way to figure out whether the kernel
     runs on bare metal or not, makes it pretty much mandatory, at least
     on x86.

     That's not a hardcoded constraint. It's a decision made during the
     setup of the underlying architecture/subarchitecture specific
     irqdomain.

  4) The resulting irqdomain hierarchy would ideally look like this:

     VECTOR -> [IOMMU, ROUTING, ...] -> PCI/[MSI/MSI-X/IMS] domains

     That does not work in all cases due to architecture and host
     controller constraints, so we might end up with:

           VECTOR -> IOMMU -> SHIM -> PCI/[MSI/MSI-X/IMS] domains

     The nice thing about the irqdomain hierarchy concept is that this
     does not create any runtime special cases as the base hierarchy is
     established at boot or device detection time. It's just another
     layer of indirection.

  5) The design rules for the device specific IMS irqdomains have to be
     documented and enforced to the extent possible.

     Rules which I have in my notes as of today:

       - The device specific IMS irq chip / irqdomain has to be strictly
         separated from the rest of the driver code and can only
         interact via the irq chip data which is either per interrupt or
         per device.

         I have some ideas how to enforce these things to go into
         drivers/irqchip/ so they are exposed to scrutiny and not
         burried in some "my device is special" driver code and applied
         by subsystem maintainers before anyone can even look at it. 

       - The irqchip callbacks which can be implemented by these top
         level domains are going to be restricted.

       - For the irqchip callbacks which are allowed/required the rules
         vs. following down the hierarchy need to be defined and
         enforced.

       - To achieve that the registration interface will not be based on
         struct irq_chip. This will be a new representation and the core
         will convert that into a proper irq chip which fits into the
         hierarchy. This provides one central place where the hierarchy
         requirements can be handled as they depend on the underlying
         MSI domain (IOMMU, SHIM, etc.). Otherwise any change on that
         would require to chase the IMS irqchips all over the place.

Consequences:

  1) A more radical split between legacy and hierarchical irqdomain
     code in drivers/pci/msi/ into:

       - api
       - legacy
       - irqdomain
       - shared

     That means that we are going to end up with duplicated code for
     some of the mechanisms up to the point where the stuck-in-the-mud
     parts either get converted or deleted.

  2) The device centric storage concept will stay as it does not make
     any sense to push it towards drivers and what's worse it would be a
     major pain vs. the not yet up to the task irqdomains and the legacy
     architecture backends to change that. I really have no interrest to
     make the legacy code 

     It also makes sense because the interrupts are strictly tied to the
     device. They cannot originate from some disconnected layer of thin
     air.

     Sorry Jason, no tables for you. :)

How to get there:

  1) I'm going to post part 1-3 of the series once more with the fallout
     and review comments addressed.

  2) If nobody objects, I'll merge that into tip irq/msi and work on top
     of that.

     The consolidation makes sense on it's own and is required anyway. I
     might need to revisit some of the already touched places, but that
     should be a halfways limited number. I rather do that step for step
     on top than going back to start and mixing the new concepts in from
     the very beginning.

     But I drop part 4 in it's current form because that's going to be
     part of the new infrastructure.

  3) I'll work on that bottom up towards a driver exposable API as that
     is going to be a result of the final requirements of the underlying
     infrastructure.

     The final driver visible interfaces can be bikeshedded on top to
     make them palatable for driver writers.

  4) Convert x86 PCI/MSI[x] to the new scheme

  5) Implement an IMS user.

     The obvious candidate which should be halfways accessible is the
     ath11 PCI driver which falls into that category.

     It uses horrendous hackery to make it "work" by abusing MSI. It's a
     wonder that it works at all, by some definition of "works".

     I'm pretty sure how to make it fall apart without touching a single
     line of code.

     With a small code change I can make it fail hard without blowing up
     any other MSI/MSI-X user except the switchtec NTB.

     That's a prime example for the way how driver writers behave.

     Instead of talking to the people who are responsible for the
     interrupt subsystem, they go off and do their own thing. It does
     not explode on their test machine, but it's not even remotely close
     to the requirements for PCI drivers to work independent of the
     underlying platform.

     Of course the responsible maintainer does not even notice and waves
     it through without questioning it.

Thoughts?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87o85v3znb.ffs%40tglx.
