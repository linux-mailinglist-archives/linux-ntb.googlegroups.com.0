Return-Path: <linux-ntb+bncBDXYVT6AR4MRBKGGT2GQMGQEZQ7WBLY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD194652C5
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 17:30:33 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id c40-20020a05651223a800b004018e2f2512sf9823992lfv.11
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 08:30:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638376233; cv=pass;
        d=google.com; s=arc-20160816;
        b=y3FOf4NlkvPZw69YTf3nKv8hsF5HatGhOV9bw0CDF8Qm5rlz8b+Sfm8Yc/sJhA3u0A
         8x9/lYPoGzMhnlE3C0Tw0ZetOkOCOjA3cVuhQgSH67+9AIh5CRxngPpu992HqqZVr/Kz
         8cWHShxmljY7uHINfufEulwTXGNen1iVLS2ErGVk293kdlV++FS/r38Md3sSa+n1r9vP
         y9e3UOKow09kogc7K2OB1UFRQ+HSU8/GMPM5TUzFtowScqroY6WqJuRiirGhBUfOJvo2
         7euhujr/MHyW8USCKMHj1cMhycVlt+Xa4IqhSSWfE1Q9Fb8DiBmpCUtCcsVwIY9K+ekJ
         62pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=ogTD7GlvQBEi5Xp1XdY2K54ejhhdiIv5qeogark3ZYs=;
        b=MFQZR8Rg3cgG2Zg146XiSfQK23wPEKaC/EM82J0x/8XSWLUPyqQal13SWKWVmnrWTj
         dFwgtHLY4ZZo2247YcuumGVoVbMA9po9iAdJfq5hLAx+VEkSDsFakkzuta5SaqGdH+1/
         CGyslPCk/85trywUJ/LxTWWiw5GLmb4ZtOQvrDct+9ijXj2Zk8sikFva42JGrxt8JWjf
         uk7oYt5lN+KtM5658y+7DF8iBORcI45l0RgUV15xPMEF2YWQ7BgVYt2ODLtxpPa4A1SH
         84WrNd6cEZJahQ780edAuKOcuHmF0YxGf5EWpQZax1pTxRklq1gbGI7FBscYLN4YP7FA
         zkYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ogTD7GlvQBEi5Xp1XdY2K54ejhhdiIv5qeogark3ZYs=;
        b=XKZR9OPXzIukemHCn1u6jWbEAcCRpko3xoREUjCFP9Er12U0OonftOuEbZ2WkH5QFP
         RiwqLHcBknptj6gDsUmTGkZB/muuNdDgM79V+sETlPymknGNELGcywOOSn1+ssizssDM
         /JNttO8H/6oVsQ/XnKn/OPXIXR2gZKHOkZv9AVLWZwk0KmVdgQZJIzglGBuO2V0FmKvr
         dJS5m7ppWfK3TrsGHYD0KLaKG9rVQE8U0oKoc4z1ck1R15KHTPq48Ai3jjEMPfk/u+0s
         vVBwleGo0gP8LgHYRnB5aOpbQUrrxPoLFPlwc4W6N+jeMzh4mH+GOdSLmZFFN6/WFGum
         2x3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ogTD7GlvQBEi5Xp1XdY2K54ejhhdiIv5qeogark3ZYs=;
        b=zcHPActAW7UdLxrDBkxl8r1zGxRqJhCtViaES1b3Q6BEqjVBfFAuKZF8R9ixeV2ZSj
         l7dcZJYN5ZYyyzA8S2UjaD7bK5miJ7MGSuvDkwySKjriievqlK9pSUf6soPj4FdDZgvo
         KUy2G+pyRqGncjWhZbCPmwrFEbPspKmUaVvGPUIFvP8Hj/fecE5NWXpy8ZpktXOQFtQP
         tzMWcCX7LsQzXYj5xjccPT3XUdpmhVn35wsfRyQzRHLPyVI4MrIznQpLiBuFtkpZlQra
         h3ZtmmgpJeZKKbWAoL8u/HQ3fZHTO6ZZurmYEKJdHIp7YmSnLuvmGF6eSzBZdqqdocYC
         6L+Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532fa/MEn8eX5Wr+rcz5QUrzwDjn8LYP+iVvnx6tsN81eGTUkLTJ
	I2Fzzt5i8fVkn5uYkZEGfDQ=
X-Google-Smtp-Source: ABdhPJzivSuE7lnArtTbvz254DSBLOuLjrFklia8kfXPRcUa9QrIqe4raNfcQGiqynvOKyM4lEFMBw==
X-Received: by 2002:a05:6512:318f:: with SMTP id i15mr6484966lfe.341.1638376233291;
        Wed, 01 Dec 2021 08:30:33 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3d9e:: with SMTP id k30ls1171609lfv.1.gmail; Wed,
 01 Dec 2021 08:30:32 -0800 (PST)
X-Received: by 2002:a05:6512:519:: with SMTP id o25mr6653321lfb.422.1638376232166;
        Wed, 01 Dec 2021 08:30:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638376232; cv=none;
        d=google.com; s=arc-20160816;
        b=k3B8Sw5q4L2zvlKX4XdmPgyKrnZ0alZ7GMd84TORrA8FNrxkIS7ttPIbRoKykhfrcP
         KUjP6DJ8OGm0nId40dydeIU+OXLvTp541DPT+QCgbELbzQv4JodYZdc0UL0C07J9hw4N
         KnsDQRGPX76CfvzRzY443tZ9DaDNDwTPjrlJE0rhQyOq7y7aoAhV0ElGZrInoxS1fkfC
         4Y2Nmh+FTbcgzvcbC9qhRoASHxLr9amoG9m7LsGWu8adlbykwSIi2DftU+eVTCTUie04
         EDtezIuvI+1aORLYGP8RXBOInwxfsikbs3AHFLbMLBEXeh0FHHlGL+YvSLcXs+kZRaHY
         X42A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=IK0UzWzMkH/uNe4yLBsk4LhVOnTnTcHS67JFhRNgB7I=;
        b=uojaH5HuYtCQKpbxBtBBbWRqUKDUmCwneV1IuN+bCuQuCYcrmVfHYNTb40EYy8K5oM
         X0wzknVEyAeCQuA3r6CXutW1c1H1wt/23GtTdfxyJNyozHohS5uICaOCf1xE8/SXHVoA
         XxrkfYsNR7EUzLQCRgJ07mzW1EZMhN4q58qJpnjCgfouvlXWReCc3K+4KxMG6qZVKqna
         dz/LRhB+nhcFDnIOwEoKpzSn8Ito7QElyhcBj8mCtdrA2NzA623xbHKpRIyMfyUu1ZIq
         l1M6T5RC9FNudit4lvQnc5/tfVZ93IyjxavyaZywUt0DH2DHm/ktEzyLs1Au3p24ruwx
         fCFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id b9si21706lji.2.2021.12.01.08.30.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Dec 2021 08:30:32 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223369428"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; 
   d="scan'208";a="223369428"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 08:28:56 -0800
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; 
   d="scan'208";a="602213420"
Received: from cjlee1-mobl1.amr.corp.intel.com (HELO [10.212.64.69]) ([10.212.64.69])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 08:28:54 -0800
Message-ID: <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com>
Date: Wed, 1 Dec 2021 09:28:52 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Content-Language: en-US
To: Thomas Gleixner <tglx@linutronix.de>, Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason
 <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org,
 Joerg Roedel <jroedel@suse.de>, iommu@lists.linux-foundation.org
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com> <87mtlkaauo.ffs@tglx>
From: Dave Jiang <dave.jiang@intel.com>
In-Reply-To: <87mtlkaauo.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


On 12/1/2021 3:16 AM, Thomas Gleixner wrote:
> Jason,
>
> CC+ IOMMU folks
>
> On Tue, Nov 30 2021 at 20:17, Jason Gunthorpe wrote:
>> On Tue, Nov 30, 2021 at 10:23:16PM +0100, Thomas Gleixner wrote:
>>> The real problem is where to store the MSI descriptors because the PCI
>>> device has its own real PCI/MSI-X interrupts which means it still shares
>>> the storage space.
>> Er.. I never realized that just looking at the patches :|
>>
>> That is relevant to all real "IMS" users. IDXD escaped this because
>> it, IMHO, wrongly used the mdev with the IRQ layer. The mdev is purely
>> a messy artifact of VFIO, it should not be required to make the IRQ
>> layers work.
>> I don't think it makes sense that the msi_desc would point to a mdev,
>> the iommu layer consumes the msi_desc_to_dev(), it really should point
>> to the physical device that originates the message with a proper
>> iommu ops/data/etc.
> Looking at the device slices as subdevices with their own struct device
> makes a lot of sense from the conceptual level. That makes is pretty
> much obvious to manage the MSIs of those devices at this level like we
> do for any other device.
>
> Whether mdev is the right encapsulation for these subdevices is an
> orthogonal problem.
>
> I surely agree that msi_desc::dev is an interesting question, but we
> already have this disconnect of msi_desc::dev and DMA today due to DMA
> aliasing. I haven't looked at that in detail yet, but of course the
> alias handling is substantially different accross the various IOMMU
> implementations.
>
> Though I fear there is also a use case for MSI-X and IMS tied to the
> same device. That network card you are talking about might end up using
> MSI-X for a control block and then IMS for the actual network queues
> when it is used as physical function device as a whole, but that's
> conceptually a different case.

Hi Thomas. This is actually the IDXD usage for a mediated device passed 
to a guest kernel when we plumb the pass through of IMS to the guest 
rather than doing previous implementation of having a MSIX vector on 
guest backed by IMS. The control block for the mediated device is 
emulated and therefore an emulated MSIX vector will be surfaced as 
vector 0. However the queues will backed by IMS vectors. So we end up 
needing MSIX and IMS coexist running on the guest kernel for the same 
device.

DJ

>
>>> I'm currently tending to partition the index space in the xarray:
>>>
>>>   0x00000000 - 0x0000ffff          PCI/MSI-X
>>>   0x00010000 - 0x0001ffff          NTB
>> It is OK, with some xarray work it can be range allocating & reserving
>> so that the msi_domain_alloc_irqs() flows can carve out chunks of the
>> number space..
>>
>> Another view is the msi_domain_alloc_irqs() flows should have their
>> own xarrays..
> Yes, I was thinking about that as well. The trivial way would be:
>
>      struct xarray     store[MSI_MAX_STORES];
>
> and then have a store index for each allocation domain. With the
> proposed encapsulation of the xarray handling that's definitely
> feasible. Whether that buys much is a different question. Let me think
> about it some more.
>
>>> which is feasible now with the range modifications and way simpler to do
>>> with xarray than with the linked list.
>> Indeed!
> I'm glad you like the approach.
>
> Thanks,
>
>          tglx
>
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/8c2262ba-173e-0007-bc4c-94ec54b2847d%40intel.com.
