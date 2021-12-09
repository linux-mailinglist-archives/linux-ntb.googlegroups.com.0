Return-Path: <linux-ntb+bncBDAMN6NI5EERBNEAY6GQMGQEWA3SEFA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D822446E457
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 09:37:09 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id u20-20020a056512129400b0040373ffc60bsf2339500lfs.15
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Dec 2021 00:37:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639039029; cv=pass;
        d=google.com; s=arc-20160816;
        b=k8PxzYLoppRbBg3d/OTMSkPllCc9mCG6w8AHKuTBnlytNvXNONIYPuQmEMd5YGZf1T
         dlb3SEUtDRIvCNFg2mwXc3DfM8AuTaBBMIN2e3Bkkc+h+kIXFHdJCPJwoxPU5HLVPqP1
         IQZyUiMEb+k0SvZHvNEcMZK65mgUtqwU8GN8hqfqRkgooRorn31EqKuA5LiMFl/DZyve
         Qi2Q6h7ko7QDAxn+T1k3XvOsCjCik2I07JZmcVuwxXAcRsDRPwUGZDPpk0r5eHI1SEzN
         2LjEYmIw/Y4P5UJ7ZF8M/8Q/EkG3yg+Q7LTF+dBp2flAY/9N9DhESWxExyPtlKBWk7lm
         eYPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=EfDhOwXjXYG+bsM0dvPYscgjavqbJ7Mhht7VeP2AU7o=;
        b=VTRhC13eoZOHfusGD5kJ0edcqg+LOgLYJG96YbibJydx74T93orDnsUBt4ZCpdnr4I
         yREy5HLoOTan+9E5AkZDsyfl52VvrFgZy/J9fVWEs4qlmRRFt2vwfJg6iWTNiUVS/CWf
         j4lvmZx1EmF5Lt5D+5T8G7UaJ2N/td+tAWFBblURUjqNS7xxK6WG1TbRQl5OUXZ83H5t
         158YYUtvf0ABS8LPGdhnKAFsl9pTc3lpdRySWIWh8esbIyflpR9moXpvZCiKfNp+baSq
         5tOTZZGWN9rXRDeOJNTgT1KV8lg/BmFkTbczXzfHQ+0gXCGTaaDlsRmovHtBAOv203iu
         kiGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=H2fIzRBi;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=bi+8Ibnj;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EfDhOwXjXYG+bsM0dvPYscgjavqbJ7Mhht7VeP2AU7o=;
        b=Y4xRfJbBrOYhFGP7jEdnjWy4QytcTDA3SqtFXbr0rQLCHh3MNndLc+eqtO6vdswdwR
         CFpPOtikjiPjngf9hMh3UU+u3fCJe73LPZeQR9F+f0UBPFbEwiYvoFLS56lC2EBJwb+/
         1kZBav1XmxSKbUox7C2G65BG3u/RRmXH1Ap0CbiokpD1Mds5ontIU2l9ttFtfrlgFlFh
         b89cr4XLwk3cVDTli2BDwqgqfTC6G6CRk4EG2pzHEQtUxjMdlCXX2v9c2fHvwXoJpBTV
         JHGo+UuLNVYAg8sh/Fp3LPNHETjlWGNIdFO9wcWOLZ6I2s+eVRRv+a+fKN8HtxuUjoSF
         wJKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EfDhOwXjXYG+bsM0dvPYscgjavqbJ7Mhht7VeP2AU7o=;
        b=bAx0S55acoEDnwx2HRhdviKL58/gH95EAfOoHVZHkcCgVLvLb+kxiIfT/uu4K9ucDW
         O4k33VGMxzCa5AVKfDOKY5EFI2pC/DveKoOZHLx0IwXEeKf6eDVcK7FtEq0E06DD1pSZ
         SK/0rWCMPnSz/vft7XYMbDhfcH5qGprL9DhBM/1Nt5wLTrgjEj2TQbodA8FO8sZR5k4z
         SAGWzzX8j2hkba0OFkpkhzhX8ayaIyPaity6niK256Qcs76kpuIWGdecBylRMET7AZ84
         ocvEuA8aYgoWy9FCoHbtgRajgdabyL1PDMUAgnc+ZU3Ny78E/UHsHquOXLY0XIKwhQtU
         6C5g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530fflvjiJxx944c+24WV2GhIyaVaFW3/iuHEvnu76+9/7zgO+bR
	zWgT2f0pWbWe6THZPAjCU9Q=
X-Google-Smtp-Source: ABdhPJz8WAhHxygSG/JU4vORM4NikhHbRe3KfL63xZ818pzySaDa1EcQP70y84heR8QTOrDFUGESfQ==
X-Received: by 2002:a05:6512:33bc:: with SMTP id i28mr4724665lfg.33.1639039029252;
        Thu, 09 Dec 2021 00:37:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:234c:: with SMTP id p12ls2826637lfu.0.gmail; Thu,
 09 Dec 2021 00:37:08 -0800 (PST)
X-Received: by 2002:a05:6512:31d3:: with SMTP id j19mr5029208lfe.286.1639039028081;
        Thu, 09 Dec 2021 00:37:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639039028; cv=none;
        d=google.com; s=arc-20160816;
        b=nEYFsqtApu31QQCmax0qLoQ+vCsg9tnuN1/TxiWTrBNN9xAe7ndSUctjXJSeh6hD99
         So/QoZ6KgwVldWK0+FTxVJt5NmKHmyf2PUMphxBLh/ekG0QdJFcq4LE2Bbsmn1xEXgTn
         1+pmgmGP2maoaZV5MuPICdQjsUMnLbK9wEJiOrP67hr1tM1UkZF1TpQoYxFH0snMud6o
         ZmVdXJ1dFBvcJdn2AHG59L71QBVAFBTNr0hE5djP0AbaaQqoQqRjYnNyuo/UCX+/dQEE
         RCsVB2yQfoO+JkHeh2rLZrlgLB5hcCDY4KbqyzAR0OL8W+KUKIhrAXn0AEecmWmAN+xX
         mg0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=lzMFnVW/85YWmTw86Zk7iMM6erPIn8vff7QnFiF41HE=;
        b=oT9rltrLt1vTgNv6jm8zHDvceWhCePPRYaK1DoeIw7ZGG0AdCcYXa7yLduu45QK5t0
         9DAF5BChe/cMM21aRj1hTIBt52acIeykUACeWX1GbM0RWLpojalg2lfz/jU/oFaD+6oh
         remcG7ut7AZvtrpBpZlf9YES5qgUUdOEc6oHO+BJWzof4TBc4PZOzz68Ud+Mb1Ctn+LF
         PJY3L2nTIZQlY9QT3BHIYgkllOzM1ImA7OMKFuJuhJA8O7JKzMLectUg1w3kSxIMjzwj
         0ftI+iDriNT04Q8FgRaLeUVLebgnlyX/1n4Jq8k/s8Bf0tKBPfvU1Oej5Z9husLkhGbn
         u75g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=H2fIzRBi;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=bi+8Ibnj;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id e15si512809ljg.0.2021.12.09.00.37.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 00:37:08 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: "Tian, Kevin" <kevin.tian@intel.com>, "Jiang, Dave"
 <dave.jiang@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 "Dey, Megha" <megha.dey@intel.com>, "Raj, Ashok" <ashok.raj@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>,
 Allen Hubbe <allenbh@gmail.com>, "linux-ntb@googlegroups.com"
 <linux-ntb@googlegroups.com>, "linux-s390@vger.kernel.org"
 <linux-s390@vger.kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Christian
 Borntraeger <borntraeger@de.ibm.com>, "x86@kernel.org" <x86@kernel.org>,
 Joerg Roedel <jroedel@suse.de>, "iommu@lists.linux-foundation.org"
 <iommu@lists.linux-foundation.org>
Subject: RE: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com> <87mtlkaauo.ffs@tglx>
 <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com> <87pmqg88xq.ffs@tglx>
 <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com> <87k0go8432.ffs@tglx>
 <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com> <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
Date: Thu, 09 Dec 2021 09:37:06 +0100
Message-ID: <87sfv2yy19.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=H2fIzRBi;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=bi+8Ibnj;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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

On Thu, Dec 09 2021 at 05:23, Kevin Tian wrote:
>> From: Thomas Gleixner <tglx@linutronix.de>
>> I don't see anything wrong with that. A subdevice is it's own entity and
>> VFIO can chose the most conveniant representation of it to the guest
>> obviously.
>> 
>> How that is backed on the host does not really matter. You can expose
>> MSI-X to the guest with a INTx backing as well.
>> 
>
> Agree with this point. How the interrupts are represented to the guest
> is orthogonal to how the backend resource is allocated. Physically MSI-X 
> and IMS can be enabled simultaneously on an IDXD device. Once 
> dynamic allocation is allowed for both, either one can be allocated for
> a subdevice (with only difference on supported #subdevices). 
>
> When an interrupt resource is exposed to the guest with the same type 
> (e.g. MSI-on-MSI or IMS-on-IMS), it can be also passed through to the 
> guest as long as a hypercall machinery is in place to get addr/data pair 
> from the host (as you suggested earlier).

As I pointed out in the conclusion of this thread, IMS is only going to
be supported with interrupt remapping in place on both host and guest.

As these devices are requiring a vIOMMU on the guest anyway (PASID, User
IO page tables), the required hypercalls are part of the vIOMMU/IR
implementation. If you look at it from the irqdomain hierarchy view:

                         |- PCI-MSI
  VECTOR -- [v]IOMMU/IR -|- PCI-MSI-X
                         |- PCI-IMS

So host and guest use just the same representation which makes a ton of
sense.

There are two places where this matters:

  1) The activate() callback of the IR domain

  2) The irq_set_affinity() callback of the irqchip associated with the
     IR domain

Both callbacks are allowed to fail and the error code is handed back to
the originating call site.

If you look at the above hierarchy view then MSI/MSI-X/IMS are all
treated in exactly the same way. It all becomes the common case.

No?

Thanks,

        tglx


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87sfv2yy19.ffs%40tglx.
