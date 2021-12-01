Return-Path: <linux-ntb+bncBDXYVT6AR4MRBTEGT6GQMGQEDYCCDCY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id C77E04655C8
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 19:47:40 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id b15-20020aa7c6cf000000b003e7cf0f73dasf21094340eds.22
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 10:47:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638384460; cv=pass;
        d=google.com; s=arc-20160816;
        b=STrEF5szrpBZrQlIFSBN5zOS+jb5ptdIuM5Xtc6KafRRKE/saJ/vonbFRtNw7E0tyF
         Whzu7PbsVP7tkdqXkLAnBFVoTV5dh5m55vMPbaGoq5S7F4oFqsug+pfjrLkuj88BEXMH
         /TafTXz1g8/VenFeEL0ONSeUI24VmZ3lw5MIJ5wKQW6nZIagwKt3IaPja7gzpUABrAOY
         15xAIzg5at03fdqR7E5JpeBZ9rIu21iPUQbWyyNePuFZfL1PgDUClBderHGnLJRJpPD4
         T4WigzJSUmgpQNlizbtSM03dnKoMmaz5KEaZ4XG0e3X8Rm0o11/j3kecL2w/mXLJXQx3
         5HKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=vwlbyrS8zyf6nKT7uCkQX8Tzgv41S9GCioxpEZjuqWU=;
        b=qvyg3yT9vIXP+ZcdJkR1VwKnYd0WYkuGUP33kXxLH7WFxBhvMG0/FmH/+y/M1xzw7n
         PrxHkvgrPpCiWceckBal5Xu9A3U6Ym/ukSpFJpqKs/j9bPFkL5DtguxtPl1AaDFZuvGV
         0dvMjP1QwD239Tv60sJ3KO9ioTUZRCsdUuEAYFyGgB/CDwbogox5QoHI9f3pj2szBlNN
         yv4UbPvfI6XMVqCgLJvsoqIBw0ay1rhD872wIBizFu7cYs50Y/AcAP6k7SneUUt30bj3
         4uH6puqT89o+XMWKeWKWQ+SzCPRvUX02WtNkkerNNtlCmo04kz89uM0F5unuqvXl4D44
         4bJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vwlbyrS8zyf6nKT7uCkQX8Tzgv41S9GCioxpEZjuqWU=;
        b=h0nvmYfKVlj47z+02kBENpRcHLS6aL1iJoTFKQsaAohPT7b/yvcf+vL0Cwr68jyqYC
         N8b6WOzaWADOIIvHfuMz65e7lCzH3Q5n2+G7m+bXEbppbTxHuFgoYXgplN9J6ITu2YBo
         Yp08ayntEgT0Ur5qwhoT+i/dqW6YY6LHaY82L3OqsQFaMO4RW1T6YuhODstFDIcgTC4P
         3P6M54ornQaXu4zMT0MVZtHw3MXQxi3ZC+/evfrrfJlaUr3aoN9t2wLbam1pfUiYLhiR
         /GMJDh6xy2etlim0XBtrNpAz9+zJ1uZ9QZMK9FifU3A5SyC8xv/IBSPaX9U4mZUzbIj8
         n+FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vwlbyrS8zyf6nKT7uCkQX8Tzgv41S9GCioxpEZjuqWU=;
        b=z+KpcUpn0aC1lH+aCSOgraINJfgLJE3r/TcTb8P9kB/nMf0gckHfi+ieQeaj3CZYbp
         wVeZc+pbaiI9pqxOdLByzAXZa87NdS+7PIEeHje9oaiExFdW5I3GRoqdvDCntdU8fd6x
         ptl2EkTrBh5TeEs49yXvinfxFEOxESeqH8OA+ylkzw+GAvz23DG0tfUJ1vODKy1BpgP2
         5EbfN8XCIFJZZQVR9RTTgRQRjdFzkEBEgnAOIlqExBa7zi0GBPC/mZZ7P5wFpBidkqOn
         +DtIqJlsTF9zT9Y225s1ErStg62gB63Qyet0zsMaXXHu3DHOzTY9ITC0rn+4+/nGOktt
         kNAQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533JjbLDhHLPg4nX/ZW15TfRXR6WCisU1Nv84FSKi1+qeqS39w3N
	cI2dhI/gsdO4lvZrmX0Lt5Y=
X-Google-Smtp-Source: ABdhPJxszwa8YrnFX4Yr01EuOMsnnovFBPMo6RDKybgHpE17WJnAKY+5qDI+i/sAJDnVIAqzMt0p9g==
X-Received: by 2002:a50:d741:: with SMTP id i1mr10983950edj.37.1638384460596;
        Wed, 01 Dec 2021 10:47:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a50:fd09:: with SMTP id i9ls3766711eds.3.gmail; Wed, 01 Dec
 2021 10:47:39 -0800 (PST)
X-Received: by 2002:a05:6402:354e:: with SMTP id f14mr10736730edd.245.1638384459762;
        Wed, 01 Dec 2021 10:47:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638384459; cv=none;
        d=google.com; s=arc-20160816;
        b=GsOZJ8H4ma3E8kyQDDheXUl0lFuozeh7qhzH0VdQnQJTR++AQgddkeu2Cdu+V/t+/E
         TPJNVqfV+pWuYMdF78vY0g9mTYm2nXm8/AtEpQWOQ0rxdTxo1guk4dxMF9t2mG/SRqBj
         NdLMziaIrySTJRFuTKDiIjILYZEPoxyJWGI31ncfn/+cZoLUZUpS/sE+gS3TELcnxAKu
         grdPMaSmSHdqJcFnU0xp/FNcYpWAzrnGC1Tq0NPmiVmplju9vEzgP8EJzLfZB9UYEJzU
         MMjobaVcegQSAjD76BB3NrIkzntAxY8/7iGkL+dQWw2L5g3rUoYVb4+2jhz3RX8zFL/T
         PT+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=lSm+lEGDdGSvDcfFv9XiegpdBQmKaPzi7WIfnNbwD04=;
        b=Cv8eLTYDhApqHMoZs2HFnFY+bOKNBqeO+Ld+cwlZcCUd559xUdOb6ZQSL4ynqIwyJN
         FxbTZhsv1N3fi9VlYBfEDEujK+0YAjSTT8iBkiGPRWy31ecHOmHMup7GzHO/KkW44ctW
         VslFX/4+Dj7CcxlfF7sJuo9npnwySiYtQikmG7HHGpC5BKWvbCaW3Tgcypt8zPQr+pX8
         q6sRuVT3YWnfbmwxQC2kRkcYB0g0o6D/r0kb8cJwz5JPu1KSaObS+0CWOlO6Wi10z9Dt
         4PYUEyHxCfJ++5LBD9PXLAq6LcaxgrHgzRg6NTl1L6jtMbRycjSvTQsNIYN68uMcAiIF
         H5XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id fl21si47338ejc.0.2021.12.01.10.47.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Dec 2021 10:47:39 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223759724"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; 
   d="scan'208";a="223759724"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 10:47:37 -0800
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; 
   d="scan'208";a="602264166"
Received: from djiang5-mobl1.amr.corp.intel.com (HELO [10.212.64.69]) ([10.212.64.69])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 10:47:35 -0800
Message-ID: <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com>
Date: Wed, 1 Dec 2021 11:47:35 -0700
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
From: Dave Jiang <dave.jiang@intel.com>
In-Reply-To: <87pmqg88xq.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.20 as
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


On 12/1/2021 11:41 AM, Thomas Gleixner wrote:
> Dave,
>
> please trim your replies.
>
> On Wed, Dec 01 2021 at 09:28, Dave Jiang wrote:
>
>> On 12/1/2021 3:16 AM, Thomas Gleixner wrote:
>>> Jason,
>>>
>>> CC+ IOMMU folks
>>>
>>> On Tue, Nov 30 2021 at 20:17, Jason Gunthorpe wrote:
>>>> On Tue, Nov 30, 2021 at 10:23:16PM +0100, Thomas Gleixner wrote:
>>> Though I fear there is also a use case for MSI-X and IMS tied to the
>>> same device. That network card you are talking about might end up using
>>> MSI-X for a control block and then IMS for the actual network queues
>>> when it is used as physical function device as a whole, but that's
>>> conceptually a different case.
>> Hi Thomas. This is actually the IDXD usage for a mediated device passed
>> to a guest kernel when we plumb the pass through of IMS to the guest
>> rather than doing previous implementation of having a MSIX vector on
>> guest backed by IMS.
> Which makes a lot of sense.
>
>> The control block for the mediated device is emulated and therefore an
>> emulated MSIX vector will be surfaced as vector 0. However the queues
>> will backed by IMS vectors. So we end up needing MSIX and IMS coexist
>> running on the guest kernel for the same device.
> Why? What's wrong with using straight MSI-X for all of them?

The hardware implementation does not have enough MSIX vectors for 
guests. There are only 9 MSIX vectors total (8 for queues) and 2048 IMS 
vectors. So if we are to do MSI-X for all of them, then we need to do 
the IMS backed MSIX scheme rather than passthrough IMS to guests.


>
> Thanks,
>
>          tglx
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/df00b87e-00dc-d998-8b64-46b16dba46eb%40intel.com.
