Return-Path: <linux-ntb+bncBDAMN6NI5EERBYEIZWGQMGQEKQVO6OA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id F09F3470076
	for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 13:13:20 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id y141-20020a1c7d93000000b0033c2ae3583fsf4822578wmc.5
        for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 04:13:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639138400; cv=pass;
        d=google.com; s=arc-20160816;
        b=MWubf+xDZBRiZeVCjYKOiJBsIHZ9cjoXlKYHsDBPXHUOxqH439jKjxr7cOe5Ow2zp2
         18yk2yH0/BopGaJXcGyi+LTh+jpksK9m2KXkl78piwS0yCvtw/Kf3y3Oi/cTQa/IQe0y
         lpCdjCoQ30UXpA8QWursdznVB58cwr/87QCdWzPKdujpz1Jejsjz2ZT8NLr9ftKXJB3a
         txTv986EbOmYzGDwN9wY6fLlb/63XmBMuI2WLtXMMh8vulHX2BVSFwY4Z7EI5ifarAxB
         +CL+yfivH7qe7nD25ssKkw/RZqLxQK56o8Ca0/uP1TbqMYN+sKVt2SUH+QMVsWQ/xRz9
         oSYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=ZocWNy8mFtdCo/QX6YtuuTJ1maX0uxQM9HgXpIgr/m4=;
        b=zKNRzZWx+JjgrTiU2nVm2cNIvRdJPHUnIGqiIuC0JUJ/zCZiRCGgqip1lIBb+JQTdH
         GxmsyDJN+mWEYeTDa4hAgqt8csSIJslXVcVqOfV234GkuSsOzAWUGQhgSH4nr3J/Cp0f
         DYy/dvw4Q/weqPNXoy77ET2luzZi5VvlSmGs7QlUdRXdDMdlWkFUCVo+X2E+KyRrOHvI
         b7Aiz3K/26hHGpJp/RgqYPCKXYJuqBS62N78wBpr13y8EAHb/q9oNiHLruL6nfdbwbQf
         LIv8nuxkDongLoRH2w52uQ0NpgOe+U4RabaihjF8lR0h/pUkrf9LBHOC+GGINrgmLJbK
         8rZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=oe+ng6LU;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZocWNy8mFtdCo/QX6YtuuTJ1maX0uxQM9HgXpIgr/m4=;
        b=cTx1mG+TH0h4Qp+EtFtq+5J44wwajASCPBKEHjrG2z0Z05FYnMZwnkWjwKrD0/Tpwq
         vPL8oHujAvrfOfKQ+sBiRAHCv217m/28L9uYQ9qY4nKYZQtZwlNhoch4TkSr57W8pxUL
         yBlA4AmzMt98CI3ReR/fgKEJsnbl207qDoUgRlSAxlK+EQ8Xd2I+sdcIB2PwVtcdR0Ku
         nPeItb/tIkqyPVX+3zDyCVHTsK/vzwkQftOihnb8ESeebWj1tp9Jfoh7EnSFI6hJZ0iA
         dRBzvx8BQnUeGTI5OErqXSBUz49rLsMEdw8nzpQ7uEGrZfWJ9kf2YlqdYAq8sXn8jhfa
         7McQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZocWNy8mFtdCo/QX6YtuuTJ1maX0uxQM9HgXpIgr/m4=;
        b=SEv5LB80UeM9IzgUgJL3Kxcz7y3TBpI99NNukVbycjZFRj3NBIHI5A3w6gHjYrlNTu
         1mmHc0P4X85BNvmBr5cqyypkQjQ5XXz0TdXTelepsdRsBfjhzdz45OUneLEVpfdUQ3lO
         G/xkN6PwRTFezFcaYL2/EviMcJHB1ovfFJFIQegRt3g3umTjq9YTel5n630+YiTUbkGj
         aB0YpYGsrScSo58G4lG+mQqkW+Bbx+92IyMI5qvNwI8+68yHD10OXzIMjxglamkBHqWf
         CKYBN7bFR99IvqqPZrOSddXr/DJxqalWni9o0E7sdJlnTI5f2/1WalJgb0+228CVvaTP
         2G8A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533mDvr7ocwvm01INIg12qSyizV41VeDVFuijAD3oHY/X7lDtnwE
	jY1oxDEHy59ocpF5Wlu+/Dk=
X-Google-Smtp-Source: ABdhPJyKzNdaYxjmrvG+D5DxK3IkF5inFCxWx/SX4JBCmEWVekGKG02MmGGYkuEnvLtba+yXSb1Wow==
X-Received: by 2002:a05:600c:282:: with SMTP id 2mr16377087wmk.91.1639138400506;
        Fri, 10 Dec 2021 04:13:20 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:c90f:: with SMTP id f15ls3996473wmb.1.gmail; Fri, 10 Dec
 2021 04:13:19 -0800 (PST)
X-Received: by 2002:a7b:c76e:: with SMTP id x14mr16079455wmk.27.1639138399622;
        Fri, 10 Dec 2021 04:13:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639138399; cv=none;
        d=google.com; s=arc-20160816;
        b=kq0TBoTmrNZYkkHlKzbmbuU7I4usjxXz7865jhiriZe/X7reDGz7Oea6cy2N78ovLs
         cfdM+8rKL0W0OOJdQePDJXQqOo/B9Up5vRSH0oCLRb7sIwCqmf6SQ1i9WcLYzfTY7LKU
         t/2qhQN6L/YjYM1Z37KDo7biJ2Qa2eXYb63xxENMapptGv7lGHG8Cd1TGlrM0VhggdGP
         XME83q9hF4GEWrsmjDU6Jq57AY1yRZwDfEx6RKCNX/Q0Bd5LaTzZvB6EBftOHYIc2xsq
         DL/qlb48WZjdhpKt9geYSy3YD7jtdgk+IqowNtmLS+6rLs2npqF9cRz8fCPYVDX9HYFk
         XXLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=QIJx3V1nvr+fY8tSaxth/62MySjeKbxzIzd3EtwZXi4=;
        b=KcMf7TuL3q+yaNkX5qzv+UN2H39VlV8B8j6JJ2zzG4ZQAYW02RSFTFDUtJTcd3pyX+
         LOel4QWEENYnVbmp2tjesDyAOUq+cVB1zYQcBeGP4xxvQddbGtb+8jkKDLH0FjDLqgqI
         O+5C3SPwXo4/0ovUX3dhVUEPHSfoIuBTg3DUxQzJEAMQFdi+P+Kyw7JfQMqqDl9w9nSg
         piIfhTVrME6HCXTAGqX9q5VOilZdMRoQOYvxqqkh6jVPFgfKN8YVi+q7yNBdVo2BYzrT
         WjrqYSeR0/ojpc3sROb3YFtyxhuTZ0yi66IJ7lTtNCL0xFuRaOI7vQjxnWO68dPKKufq
         ea+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=oe+ng6LU;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o29si335546wms.1.2021.12.10.04.13.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 04:13:19 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: "Tian, Kevin" <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Cc: "Jiang, Dave" <dave.jiang@intel.com>, Logan Gunthorpe
 <logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas
 <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, "Dey, Megha" <megha.dey@intel.com>, "Raj,
 Ashok" <ashok.raj@intel.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Allen Hubbe
 <allenbh@gmail.com>, "linux-ntb@googlegroups.com"
 <linux-ntb@googlegroups.com>, "linux-s390@vger.kernel.org"
 <linux-s390@vger.kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, "x86@kernel.org"
 <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: RE: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com>
 <87pmqg88xq.ffs@tglx> <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com>
 <87k0go8432.ffs@tglx> <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
Date: Fri, 10 Dec 2021 13:13:18 +0100
Message-ID: <87lf0sy7xd.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=oe+ng6LU;       dkim=neutral
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

Kevin,

On Fri, Dec 10 2021 at 07:29, Kevin Tian wrote:
>> From: Thomas Gleixner <tglx@linutronix.de>
>>   4) For the guest side we agreed that we need an hypercall because the
>>      host can't trap the write to the MSI[-X] entry anymore.
>
> To be accurate I'd like to not call it "can't trap". The host still traps the 
> MSI/MSI-X entry if the hypercall is not used. This is for current guest 
> OS which doesn't have this hypercall mechanism. For future new guest
> OS which will support this machinery then a handshake process from
> such guest will disable the trap for MSI-X and map it for direct guest
> access in the fly.

Right. What I'm suggesting is a clear cut between the current approach,
which obviously needs to be preserved, and a consistent new approach
which handles MSI, MSI-X and IMS in the exactly same way.

> MSI has to be always trapped although the guest has acquired the right 
> data/addr pair via the hypercall, since it's a PCI config capability.
>
>> 
>>      Aside of the fact that this creates a special case for IMS which is
>>      undesirable in my opinion, it's not really obvious where the
>>      hypercall should be placed to work for all scenarios so that it can
>>      also solve the existing issue of silent failures.
>> 
>>   5) It's not possible for the kernel to reliably detect whether it is
>>      running on bare metal or not. Yes we talked about heuristics, but
>>      that's something I really want to avoid.
>
> How would the hypercall mechanism avoid such heuristics?

The availability of IR remapping where the irqdomain which is provided
by the remapping unit signals that it supports this new scheme:

                    |--IO/APIC
                    |--MSI
     vector -- IR --|--MSI-X
                    |--IMS

while the current scheme is:

                    |--IO/APIC
     vector -- IR --|--PCI/MSI[-X]

or 

                    |--IO/APIC
     vector --------|--PCI/MSI[-X]

So in the new scheme the IR domain will advertise new features which are
not available on older kernels. The availability of these new features
is the indicator for the interrupt subsystem and subsequently for PCI
whether IMS is supported or not.

Bootup either finds an IR unit or not. In the bare metal case that's the
usual hardware/firmware detection. In the guest case it's the
availability of vIR including the required hypercall protocol.

So for the guest case the initialization would look like this:

   qemu starts guest
      Method of interrupt management defaults to current scheme
      restricted to MSI/MSI-X

      guest initializes
          older guest do not check for the hypercall so everything
          continues as of today

          new guest initializes vIR, detects hypercall and requests
          from the hypervisor to switch over to the new scheme.

          The hypervisor grants or rejects the request, i.e. either both
          switch to the new scheme or stay with the old one.

The new scheme means, that all variants, MSI, MSI-X, IMS are handled in
the same way. Staying on the old scheme means that IMS is not available
to the guest.

Having that clear separation is in my opinion way better than trying to
make all of that a big maze of conditionals.

I'm going to make that clear cut in the PCI/MSI management layer as
well. Trying to do that hybrid we do today for irqdomain and non
irqdomain based backends is just not feasible. The decision which way to
go will be very close to the driver exposed API, i.e.:

   pci_alloc_ims_vector()
        if (new_scheme())
        	return new_scheme_alloc_ims();
        else
        	return -ENOTSUPP;

and new_scheme_alloc_ims() will have:

   new_scheme_alloc_ims()
        if (!system_supports_ims())
        	return -ENOTSUPP;
        ....

system_supports_ims() makes its decision based on the feature flags
exposed by the underlying base MSI irqdomain, i.e. either vector or IR
on x86.

Vector domain will not have that feature flag set, but IR will have on
bare metal and eventually in the guest when the vIR setup and hypercall
detection and negotiation succeeds.

> Then Qemu needs to find out the GSI number for the vIRTE handle. 
> Again Qemu doesn't have such information since it doesn't know 
> which MSI[-X] entry points to this handle due to no trap.
>
> This implies that we may also need carry device ID, #msi entry, etc. 
> in the hypercall, so Qemu can associate the virtual routing info
> to the right [irqfd, gsi].
>
> In your model the hypercall is raised by IR domain. Do you see
> any problem of finding those information within IR domain?

IR has the following information available:

   Interrupt type
    - MSI:   Device, index and number of vectors
    - MSI-X: Device, index
    - IMS:   Device, index

  Target APIC/vector pair

IMS: The index depends on the storage type:

     For storage in device memory, e.g. IDXD, it's the array index.

     For storage in system memory, the index is a software artifact.

Does that answer your question?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87lf0sy7xd.ffs%40tglx.
