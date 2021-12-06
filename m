Return-Path: <linux-ntb+bncBDAMN6NI5EERBMHBXCGQMGQENL64QHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 488F5469F8E
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 16:48:01 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id r129-20020a1c4487000000b00333629ed22dsf8068399wma.6
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 07:48:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638805681; cv=pass;
        d=google.com; s=arc-20160816;
        b=VZIkgEEGuZI8ghuX0NVEu9p5KR8SP4BGoEyPGOs3NyPllCSvWwO7ca9Bia1coug+Fq
         ++pNI7SgoVDazfx/gc1TeqWrk7wXgMcLSlfY5AJ5ELFJyFVFjC+67LnBXbbsyEB/qDw/
         CbMZlChkQvj6/XjTVEigPZB1qKORojH6GWrbirLWugy4KUdl+NyANHL2/2nm99Qs7hhZ
         v9EXSonj8jtUIOYURiGrYnA0pjZpHr+spwRWN5OvInzh8A5Bjdaa0ytlpAZRKM7NHYha
         wFMexcBzPQfnHQKbvgbxHETx8GPk8exeXCz2Uln/sRCV/iOQRbqnL4uhJBVh3PZCWl5i
         6s/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=bkl3iONCMg1lp+HU2sv6Eu6yHKdiNpryFUhOOi49Cu0=;
        b=R49SnHsT7/LPz3Lp/muWd/U28sfF3Viqmrbu/te/GBn9EQCL8LLCa8k3igu4tjjbbU
         uuP7OM6xzGIOwa5ifw1Q/5rtCSFfvExWSJ2U2/gr5SAfXXlvC7EayOXMj9ktCIpj2nQx
         thLjKGWy7k+pyjeMgmezzWq/KNc8mHZpIgEk4LqjIgzLS+XArMfOycUNDKOE5HHMBU0v
         uQ+EiU/PjnD3xxUTZF3Iz9TwJUjsdvIcouVEABkFQuK5nt3IE63rFvhM+Lt0YB5dvq60
         T69BzZYG/4UQVm2OPklTbQf/1ihBUJ83VVm/uCVnkXnYIFTssDw733hV/TKOik7GWJm8
         cyLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ht236YaY;
       dkim=neutral (no key) header.i=@linutronix.de header.b=qpqmyJ62;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bkl3iONCMg1lp+HU2sv6Eu6yHKdiNpryFUhOOi49Cu0=;
        b=J6+vZBgcPtqCHGc7L5XsV2sodQK8DKuk5M42QgrvQ/o1tXf9vFpmHluQdegwiseFQa
         tNvpUzy68zEEYEp3qX+Y/BBaYtkzgNUgPfBn4oLkXjk08gjVphvWYQv+Uu2nfu7AfM2H
         HJAxFVcqxhdDH2gf0H4K82Ytyzh48OfUkKIyABplj3H16j3S5XewyO5MkxzC6rmX25bt
         F0+gtBFG7rQrGKNd+qoMn7oWvjJre6j7ynoVd/K24QLswj1/b4+cWOpnUYwKb/gSRiEa
         mO3fHOwA620wjevo6pfzgqcI5nJpB7z47ld1a5ofQmrMuwCWa+qXWJ6YcWz75ULq6A5b
         +Q5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bkl3iONCMg1lp+HU2sv6Eu6yHKdiNpryFUhOOi49Cu0=;
        b=m/BH+FMYJJmILIVYKuHqfEhmARu5PLPDD+VdblOavQbW6kh/7LAY+hVuv71JZda2vR
         kC9D8IsfdDYu8jtpoTo59TwfmNNELlMx22gUIEoeuNRqX6jvsyFwFWw1dC7YlkkT5ymM
         LCu0stjvyp7q+CPdEU2VkddHVCWI/yLGhtxY3C7LDXuKNxIi+SQfhn/dBmtopVotRMra
         YedRPgk+CXSaQ3xr4Ks8PpGcKIXKE4wy69IMYJwdU7SV2NXB7BeKUl/UkMesNRvH4J2K
         f1UbYKWIGGvo0bzsq9VpWnddsBnOtAAUDPfG82sbrnEHivamIyrCX1dXN6IW+9ly59Y7
         brjw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5338YppUPXsDWPsYD5Wxd9pTrp+MD/70F2OuQRg+o+9rhB7WqGD9
	xK9R1tsLR0alGdFXUhmbB/Q=
X-Google-Smtp-Source: ABdhPJxLp85ztqt8vsuozz9jT340OfzRcH/qgFMdml+revhgNxpgoPFuT9+LV8GWflvTMSuyfRMycQ==
X-Received: by 2002:a5d:69c5:: with SMTP id s5mr43555598wrw.283.1638805681062;
        Mon, 06 Dec 2021 07:48:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:1c7:: with SMTP id 190ls10365563wmb.3.canary-gmail; Mon,
 06 Dec 2021 07:48:00 -0800 (PST)
X-Received: by 2002:a05:600c:4108:: with SMTP id j8mr39712209wmi.139.1638805680138;
        Mon, 06 Dec 2021 07:48:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638805680; cv=none;
        d=google.com; s=arc-20160816;
        b=Hoy+ZUWCOj2qQ9ewJcWionihxQSGlkPkQoTYc60h7CY8zhNNI4/fY3o95A3ASh5brT
         O2eDNUxQnRO6vCIJts/77pBLVAzjbNxdPi7hKzkyh1zRlIL6yDiKl7S7p0FojB3kkUZB
         UFvbwRffL+9QDOAv94C9K0dgArFeNknlfxxM7g7uq6zNeWwxnKlLHiLWv2ONdLSnLXK/
         RCSMKJ6aNDPXKkd5oxUECx+UHt4C/i1hnmjpRekU7IsXm+ABpFSXXus0AirdsGarCvOC
         CeDrPCGYAsaihBWtoyLoilQ0OdjtYRTd7QlvTT83cUOkizkA4KvKqA44XGwCeJ1JTFPY
         mkAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=spAnJwZVm8pxfwQA4Do9Y38VjUk5clCJipJp2dzk73g=;
        b=TG51RRqZT2T6uYCg6DQU7NwinTcAtIawk+XBhdnEljhdseaMr4MCBWCgUIA0XQEm5g
         uhGsusD59SasBie1noFsPQ62Ke22TXl/ax3226dH26F3DNd+3fnuaQ77EBjddtX3LJyx
         UJn7D8F1+XWCADNTIWvzb37VsMs1iykdeOKRTr6+rD79c/bKzAYmS4BqHa+mPnY88BsL
         AZ+uiQltoYaHGoxTsdMba6uNGLSi1QqQZzFqAsEkc/mbg7geeDYpNKxdkvJIjGnp/j71
         mgLDCW824g36hbzLIQx/N30Tk5SBKDba0XBNKZCpEw6MSy68dg80eR2+v8Jmctit8FbH
         xesA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ht236YaY;
       dkim=neutral (no key) header.i=@linutronix.de header.b=qpqmyJ62;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id 138si847125wme.0.2021.12.06.07.48.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 07:48:00 -0800 (PST)
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
In-Reply-To: <20211206144344.GA4670@nvidia.com>
References: <87r1av7u3d.ffs@tglx> <20211202135502.GP4670@nvidia.com>
 <87wnkm6c77.ffs@tglx> <20211202200017.GS4670@nvidia.com>
 <87o85y63m8.ffs@tglx> <20211203003749.GT4670@nvidia.com>
 <877dcl681d.ffs@tglx> <20211203164104.GX4670@nvidia.com>
 <87v9044fkb.ffs@tglx> <87o85v3znb.ffs@tglx>
 <20211206144344.GA4670@nvidia.com>
Date: Mon, 06 Dec 2021 16:47:58 +0100
Message-ID: <87fsr54tw1.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=ht236YaY;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=qpqmyJ62;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Mon, Dec 06 2021 at 10:43, Jason Gunthorpe wrote:
> On Sun, Dec 05, 2021 at 03:16:40PM +0100, Thomas Gleixner wrote:
>> > That's not really a good idea because dev->irqdomain is a generic
>> > mechanism and not restricted to the PCI use case. Special casing it for
>> > PCI is just wrong. Special casing it for all use cases just to please
>> > PCI is equally wrong. There is a world outside of PCI and x86. 
>> 
>> That argument is actually only partially correct.
>
> I'm not sure I understood your reply? I think we are both agreeing
> that dev->irqdomain wants to be a generic mechanism?

Yes. I managed to confuse myself there by being too paranoid about how
to distinguish things on platforms which need to support both ways, i.e.
x86 when XEN is enabled.

> I'd say that today we've special cased it to handle PCI. IMHO that is
> exactly what pci_msi_create_irq_domain() is doing - it replaces the
> chip ops with ops that can *ONLY* do PCI MSI and so dev->irqdomain
> becomes PCI only and non-generic.

Right. See above. That's why I went back to my notes, did some more
research ...

>>   2) Guest support is strictly opt-in
>> 
>>      The underlying architecture/subarchitecture specific irqdomain has
>>      to detect at setup time (eventually early boot), whether the
>>      underlying hypervisor supports it.
>> 
>>      The only reasonable way to support that is the availability of
>>      interrupt remapping via vIOMMU, as we discussed before.
>
> This is talking about IMS specifically because of the legacy issue
> where the MSI addr/data pair inside a guest is often completely fake?

This is about IMS, right. PCI/MSI[x] is handled today because the writes
to the MSI/MSI-X message store can be trapped.

>>      That does not work in all cases due to architecture and host
>>      controller constraints, so we might end up with:
>> 
>>            VECTOR -> IOMMU -> SHIM -> PCI/[MSI/MSI-X/IMS] domains
>
> OK - I dont' know enough about the architecture/controller details to
> imagine what SHIM is, but if it allows keeping the PCI code as purely
> PCI code, then great

It's today part of the arch/subarch specific PCI/MSI domain to deal with
quirks above the IOMMU level. As we can't proliferate that into the new
endpoint domain, that needs to be done as a shim layer in between which
has no real other functionality than applying the quirks. Yes, it's all
pretty. Welcome to my wonderful world.

>>        - The irqchip callbacks which can be implemented by these top
>>          level domains are going to be restricted.
>
> OK - I think it is great that the driver will see a special ops struct
> that is 'ops for device's MSI addr/data pair storage'. It makes it
> really clear what it is

It will need some more than that, e.g. mask/unmask and as we discussed
quite some time ago something like the irq_buslock/unlock pair, so you
can handle updates to the state from thread context via a command queue
(IIRC).

>>        - For the irqchip callbacks which are allowed/required the rules
>>          vs. following down the hierarchy need to be defined and
>>          enforced.
>
> The driver should be the ultimate origin of the interrupt so it is
> always end-point in the hierarchy, opposite the CPU?
>
> I would hope the driver doesn't have an exposure to hierarchy?

No.
  
> So we have a new concept: 'device MSI storage ops'
>
> Put them along with the xarray holding the msi_descs and you've got my
> msi_table :)

Hehe.
  
>>      Sorry Jason, no tables for you. :)
>
> How does the driver select with 'device MSI storage ops' it is
> requesting a MSI for ?

Via some cookie, reference whatever as discussed in the other
mail. We'll bikeshed the naming once I get there :)

>>   1) I'm going to post part 1-3 of the series once more with the fallout
>>      and review comments addressed.
>
> OK, I didn't see anything in there that was making anything harder in
> this direction

It's helping to keep the existing stuff including the !irqdomain parts
sufficiently self contained so I can actually change the inner workings
of msi domains without going back to any of these places (hopefully).
  
>>   5) Implement an IMS user.
>> 
>>      The obvious candidate which should be halfways accessible is the
>>      ath11 PCI driver which falls into that category.
>
> Aiiee:

Yes.

> drivers/net/wireless/ath/ath11k/pci.c:  ab_pci->msi_ep_base_data = msi_desc->msg.data;

That's only one part of it. Look how the address is retrieved.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87fsr54tw1.ffs%40tglx.
