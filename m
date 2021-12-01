Return-Path: <linux-ntb+bncBDXYVT6AR4MRBY63T6GQMGQEO4LC4UA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC3946588E
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 22:49:24 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id m12-20020a056402430c00b003e9f10bbb7dsf21552472edc.18
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 13:49:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638395364; cv=pass;
        d=google.com; s=arc-20160816;
        b=VGf3BrylG00ko8GlJzdIawBtgUFHXqKJpCKcPVLYS/xK+gw0i+C4+gtcSquQnxZqP6
         uTOwnT4mCoJ7HVPIob1MuDwGUeQncRJd5ezGSzJQd+kgMWmdE/CWO/87x8BClS3uPn7Z
         ZIJLUlvJGcEleE+kAWWkHyBZU1g+Z956D342wzAaWXAqUWRje/D/MfSxzzymcIvPFd+5
         gM0cVimb+oH9tAOlssQ2egKp8dBv+hapgPPVovVzp8tjXEey9SxhNV+U5j02dgf9cEtH
         EtNiJ9UToOtP/AGoISbRxsuIitqpHTfMBw043nBQmL1sC5pm/mPZ3oNOrPVb8sm3laZl
         LZUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=tDyujzpqZlNHWvSlK/MLviCT4MkLnumBKCGHCRTMUqs=;
        b=WsCTBIQ3vpv+rcCXKln3vD67IldQ6zpNoTkRYOZgrUjvmhAnJBEwBJLH5m22Wi210v
         E4k97czOkY4Dz7QWhg9EkadwFUxiiedXsZx8+dldgqb2M2oe57hMw5baPNiuSSfLG04G
         Hd/UfrP0yAE/lHY3tP9P2k4o47UnB/qTob7/l9moKWauRnHkUGL01EhwqGoP0Qx1efbP
         ULug8rnVzH5LELDxR9ox+TGVxu39qTrlhN2Fn9gZus3FJ5hUwb5X2QFFU3+2oTXvn1sj
         axsnj92nuTZ960Ac1dnoy1yTgZaidp032P2ogp6hsI7OGO7HuZo0+3t1NpD4/hzUiK/C
         9Ziw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tDyujzpqZlNHWvSlK/MLviCT4MkLnumBKCGHCRTMUqs=;
        b=O009mm8VObs2mD01shmliHGQvOtep4PvDBHrzdGbCtRQFhqBv+e/mJI0buD5kebZSw
         qw0qMvvEWvhBOTpxM90qW0Yk6RSiZbK4duzO0VjSWRVBVukvrd6qMmZc+5Aw/2+Aai3N
         aUIreDkkT1FjPjIp4NKiULl0sBPrZSvGL2kgeoOJ42A43BlpwBInCu3mKKiv97lu6+Se
         iQmJIDmttk9Y7swNYidqoDf92TBek9346mx1NnEoTDhJXhNJDDWqmMJ07fcqcSj7pRr4
         Lp0SPmkOpieOhMmHoK9dgHJ0Xu4J/fhCgDkZXMoEFoBdOQ/DOy1gpMisyDJfYQcjrRra
         /hzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tDyujzpqZlNHWvSlK/MLviCT4MkLnumBKCGHCRTMUqs=;
        b=teaT/nWcSrIlySmnuFLH9dKJWKbD+geeu2aSk4LHhLtaG8l8RO9J/U3tKyl2jAgWJA
         MgySKFqfbHaR/CDa+EDOHbkW67DTOFWs0ficu3SprtbCEHby1FlLhOomp+K9yGgv9aha
         xyRK0u6v78Hm4pakL6tPQriliru+2sPMKHVnqMrKq86Mk/2hHtfS5CB+vLbjwTIJqwL8
         kz74GSIdbZBt/RWlwDnsa0K4PaAMMqec5Pi1fUdlx2/o2aboUhTz0Cv2G6HOfWpRJL0t
         HT1OFDheeLVXyQVufSlgGKjDi/P3XC6lCcRKrhyK2l63IEmUhQKPummXvyt9Zuwemmkm
         rWQw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532Yn4ITWipj3c2WxcOZTHxVOd82zTS8HUP+3NGmMTnKcy9+sgAd
	W/eDay6USs3t5n9DTzytNpY=
X-Google-Smtp-Source: ABdhPJz3btdXlqQHwxo3MIGfZfSkj7xoOPgy2hSe/6lfpabbP5VQ/srDyut0/EL77SomDMcHINNMkw==
X-Received: by 2002:a05:6402:27c8:: with SMTP id c8mr12324436ede.151.1638395364177;
        Wed, 01 Dec 2021 13:49:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:c517:: with SMTP id o23ls4248894edq.2.gmail; Wed, 01 Dec
 2021 13:49:23 -0800 (PST)
X-Received: by 2002:a05:6402:2789:: with SMTP id b9mr11734328ede.28.1638395363314;
        Wed, 01 Dec 2021 13:49:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638395363; cv=none;
        d=google.com; s=arc-20160816;
        b=J+/5vIjx8bkCIJJylMgID9PYLvrSqi8xRwYWEncsXpvAYQOWi6pl/Zm+k8zcp48Kp3
         oFv9e69lx/lgHtYw8LXc+Bhwz4N3UeuQigztcfjThkz/orHkrkwcoZvHpr5NZHlp8vWj
         V5Jzn6eTm6CFGqBIG3jw6M1wI8cyXpKtdsfBubbKnKxUud2fdbXz8BuyNH/+xUKTQmiD
         boK/dUw+qze1toFAvLkJzavvwXJs96wekMntHEnys7UH+DfihzlRI1ZsfrUDS8KgsLrR
         SOXMZ/AAce/AWdpC77WnxXVd4cR3Yfi6CzP6Oub3P9J7vsiWLUmLXqACvuc4wPZjk2oz
         T4vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=KHCHvAxNGgaLx6bqRbY5JncqBx+6F0UTbvGwwLsue1k=;
        b=dEuKNjeEs7xcGwWoPBaprKIUisgcRoMg6qtNzfObhczMHj0wpDRPetpJeu0wZ7Waz3
         G1QbEWr859B9tHIH+AbXikNQ4DkRK44XeGDEvJffbeUkTN9P1SgxlJpPZhGihcwrlLV0
         ehngHkJmrB2N5yQDYViJKo7QhA4zIx1r223NopypJHatIQKflLMc9UxZp7KoCUISNJrN
         LZrwneLWJTOMMC9NTAZv9QQ4pOo3rCOq7Eex+fG8hX7v2HmeqRwbomp3HWuq4G33opgd
         BDyuqEdnLSi+VO0JW6DTwkL7nT7O1Px+Zu2sL/RjxLqNwXUwMlvFAbV+2o9lAtRbkSXo
         eV4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id e10si108303edz.5.2021.12.01.13.49.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Dec 2021 13:49:23 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="299954038"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; 
   d="scan'208";a="299954038"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 13:49:21 -0800
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; 
   d="scan'208";a="602315926"
Received: from djiang5-mobl1.amr.corp.intel.com (HELO [10.212.64.69]) ([10.212.64.69])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 13:49:19 -0800
Message-ID: <45302c9d-f7a0-5a47-d0be-127d0dea45fb@intel.com>
Date: Wed, 1 Dec 2021 14:49:18 -0700
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
 <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com> <87pmqg88xq.ffs@tglx>
 <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com> <87k0go8432.ffs@tglx>
 <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com> <878rx480fk.ffs@tglx>
From: Dave Jiang <dave.jiang@intel.com>
In-Reply-To: <878rx480fk.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.100 as
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


On 12/1/2021 2:44 PM, Thomas Gleixner wrote:
> On Wed, Dec 01 2021 at 14:21, Dave Jiang wrote:
>> On 12/1/2021 1:25 PM, Thomas Gleixner wrote:
>>>> The hardware implementation does not have enough MSIX vectors for
>>>> guests. There are only 9 MSIX vectors total (8 for queues) and 2048 IMS
>>>> vectors. So if we are to do MSI-X for all of them, then we need to do
>>>> the IMS backed MSIX scheme rather than passthrough IMS to guests.
>>> Confused. Are you talking about passing a full IDXD device to the guest
>>> or about passing a carved out subdevice, aka. queue?
>> I'm talking about carving out a subdevice. I had the impression of you
>> wanting IMS passed through for all variations. But it sounds like for a
>> sub-device, you are ok with the implementation of MSIX backed by IMS?
> I don't see anything wrong with that. A subdevice is it's own entity and
> VFIO can chose the most conveniant representation of it to the guest
> obviously.
>
> How that is backed on the host does not really matter. You can expose
> MSI-X to the guest with a INTx backing as well.
>
> I'm still failing to see the connection between the 9 MSIX vectors and
> the 2048 IMS vectors which I assume that this is the limitation of the
> physical device, right?

I think I was confused with what you were asking and was thinking you 
are saying why can't we just have MSIX on guest backed by the MSIX on 
the physical device and thought there would not be enough vectors to 
service the many guests. I think I understand what your position is now 
with the clarification above.


>
> What needs a subdevice to expose?
>
> Thanks,
>
>          tglx
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/45302c9d-f7a0-5a47-d0be-127d0dea45fb%40intel.com.
