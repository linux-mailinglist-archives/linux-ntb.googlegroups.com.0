Return-Path: <linux-ntb+bncBDAMN6NI5EERBGHCT6GQMGQEFG3TQZQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 195D54658C7
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 23:03:06 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id s8-20020a056602168800b005e96bba1363sf30660430iow.21
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 14:03:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638396185; cv=pass;
        d=google.com; s=arc-20160816;
        b=KqUmoYKg8avDsRuAX0VoMWVw1yz4YT7q1hxhhFIwdYzjepkTe8YmsF9rfUfTmENM1O
         uUfkyAKQ1lER8jF9ccpCJG+jr1C+j0FFPjfKja8y63bi7CBkmxbp17UuCShTPpuo9NM5
         EFJhP9xFCQ4yPBEs3W66VcefnJsx+eVzuJe66gZ/Lreb3AQlpjtVN1gZbbOhM7wt1qJ7
         ehLD9K7rWlwI3uMZD6zsrVJ8vbabnLkUcmZRqX1FxKwN7s7JSZVhnxUqdw0DjaP33rWT
         p1KF+/mDOdehoFul0edVEAF1s6P4DuFV7KGX8c42alHsibmz/Weg/eDPFtm4fCRcdvDQ
         4V5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=lZSOkbING/3IRKZfgd5J4oHZ60D5TQmFpFAVZELAlww=;
        b=i02anQJdcTXwIbBM2NI5IiynT8USxKHsB12dOboaQg31MH2YZfynYCmbUnJWEMwHfv
         npvXWbudB/xV8lDDPs8nbRE/uS7HTvlVuVfaxmnCoul+AqaY8+HpKMogdeGxmSd1fmz8
         AGNjjCeYnDWZEAZ8LGVsBs7EL2UvA4Zg7jE0Lg4ePeF7bjVPOsEFhyxynpe+67F2Bf61
         3p4xDVAZxW++aPTy5F9etsdW6AiA+d3kX7ahnrHtClDy+CgB7iTtz/GerTKgWUH7BkFD
         g9U7bpPn8Iw92G/8nXeCRjZqEF7vUOi+ciZ8qB43eNIxFQa4V21mDHU0i4AqUrXkwfnz
         /GoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="QK/m6+RY";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=CIcddPGN;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lZSOkbING/3IRKZfgd5J4oHZ60D5TQmFpFAVZELAlww=;
        b=ic549+PuMJnU4/A3DO79GGKHgp7m4ntdZo35UHcDMZeZ7B9vVSAzLaH6z5GtqGPyqf
         28PGmPq7wGVyZB8zcVk4Ykswb9blfaKRd7Ezpqw4NzOmMRxWL9rI7BQSHgg2ejMZhRTP
         0Q7J7rFUim5gFSAaYta0m2moM6kMeLiWGRy1yeqDPymg5VK2DWFGo3WkSA8HA4LxNEBI
         D/7wfd4TbyJQXgsXZicfqOp0nlA7IcJWyFFha0y52d3zzIMLQzcSP1joWzxvwYVSWzUd
         BNyKLD1YqexNJWkoeQCnxxnoaf3jVNU0bQc5IZ5S82Ncd5pBG1pMDD3Y9tBHuyc36X7m
         gubA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lZSOkbING/3IRKZfgd5J4oHZ60D5TQmFpFAVZELAlww=;
        b=5y/I9x+WXY45oFnenVJrAeR6P5zXYJdJV3717ZJwpNfd61kfDTt6lGlwbLx6oHhUY5
         GjRr/TvFJkXEsmD36hPAmued/YIs3cjSOf+pdsvenaG5YhAefBsVWUYX+00IXhKsWZYd
         XZWJH1Ke4ubZZUWRpBBwg/6RJ1PHsct5Cyxq0DczTUW6IZIQyfOTDD0GnhXndm552KOM
         xEuuJujCe9mV50lI4FanRkwWv54sIXorVOsa3AfgcjfQE2G/gJ0s9rqjVWp9jYgkAP35
         9CEvtHuzkhdGyuuyJL9A6cZkzUAKp8k/lTE8pwEVYh5+ty3BRePakX/8O+vsBoHIFhsS
         iP3g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5300TbHmRmRWBLzRqzUlB7Zw8iMNK3L+yF11W81KzgzydroFea5p
	/1vdEN+BKVSFcdUCGykwQ98=
X-Google-Smtp-Source: ABdhPJxXh0GdT2T9PBQZO9WktoddhY3Y7MmATslmug/mlspR7ciKeRWSKUKh5+BI6yN8nHJApMIk6Q==
X-Received: by 2002:a6b:2b12:: with SMTP id r18mr12294068ior.66.1638396184802;
        Wed, 01 Dec 2021 14:03:04 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:419b:: with SMTP id az27ls356410jab.8.gmail; Wed,
 01 Dec 2021 14:03:04 -0800 (PST)
X-Received: by 2002:a05:6638:3711:: with SMTP id k17mr14573508jav.72.1638396184408;
        Wed, 01 Dec 2021 14:03:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638396184; cv=none;
        d=google.com; s=arc-20160816;
        b=dQL65ZoE6fV8IMGvbbHw82M8HSKRp6bN/aI1TAtyFVWOsWjzoqiwYREdiG4b0KHlwC
         EuSy47STX9i5ETJCkvRjgJmOEH6h78HXWgDkc7Aud60ULMtHllqieli9ULPrVw1ZVUmM
         D4wnodo2AsdyOZY9pKDAYd6KZn0TA2vISKY2i2Fr0Ui5Dmzj6Ci4W24IZnTGcBTfVtKC
         n/nARrpswU/jBX9hKURxn/vfvcrLjAIWSrFOIZQp/Ogq/R0TiaTS1Ym3avFMnydOZ5G1
         GVEpeD+bQ18KG2ZT0Wd74DikWcaJLaHEiMDQxFOyHnyCTMIL3T1YX/jUzhdxj+5b/PGq
         oRpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=ADwxWazAFdxjnnTjDcEZ69QP7SpknGKLWrCglJZzXdA=;
        b=iP83Aep9rFsz91zi8yLHIXS462KCsV1oatA0RXwePncpERRs9rP33Rp5e2cvpWr8Xu
         ldl7H98BM79VItaGjK8HxMyPVuhpZ7enPoxOPKy4cUxFOfXc09t2bhDO/eTdPES1rhIJ
         8YGze4NZYkXoPYxHIemPxQGZODQ//KvEy+zHjx5k7Q9qRI3CcZ0MwTIZ5k+T1ZXazzc7
         HdBhoY7ZHJa39brywZOi3GPc0MLmJGsw6W6+oVyrjLdQHXWRor0Ryy2IdGFRg7Vt2+vn
         8c8LLdLfJjwSB3X7LagQ3YlC1pV3m/C+Ms+rcxHHM62wHDQ39r+klxl9lQn0/DJfr3Ki
         dGMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="QK/m6+RY";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=CIcddPGN;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id a15si204958ilv.2.2021.12.01.14.03.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 14:03:04 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Dave Jiang <dave.jiang@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>, Ashok
 Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Allen Hubbe
 <allenbh@gmail.com>, linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org, Joerg Roedel
 <jroedel@suse.de>, iommu@lists.linux-foundation.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <45302c9d-f7a0-5a47-d0be-127d0dea45fb@intel.com>
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
 <45302c9d-f7a0-5a47-d0be-127d0dea45fb@intel.com>
Date: Wed, 01 Dec 2021 23:03:02 +0100
Message-ID: <875ys87zl5.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="QK/m6+RY";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=CIcddPGN;
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

On Wed, Dec 01 2021 at 14:49, Dave Jiang wrote:
> On 12/1/2021 2:44 PM, Thomas Gleixner wrote:
>> How that is backed on the host does not really matter. You can expose
>> MSI-X to the guest with a INTx backing as well.
>>
>> I'm still failing to see the connection between the 9 MSIX vectors and
>> the 2048 IMS vectors which I assume that this is the limitation of the
>> physical device, right?
>
> I think I was confused with what you were asking and was thinking you 
> are saying why can't we just have MSIX on guest backed by the MSIX on 
> the physical device and thought there would not be enough vectors to 
> service the many guests. I think I understand what your position is now 
> with the clarification above.

This still depends on how this overall discussion about representation
of all of this stuff is resolved.

>> What needs a subdevice to expose?

Can you answer that too please?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/875ys87zl5.ffs%40tglx.
