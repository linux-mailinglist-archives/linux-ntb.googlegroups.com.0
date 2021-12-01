Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBEEGT6GQMGQE2UEOLOY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id D68294655BE
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 19:46:41 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id bs14-20020a05620a470e00b0046b1e29f53csf34097571qkb.0
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 10:46:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638384400; cv=pass;
        d=google.com; s=arc-20160816;
        b=KNBkPgeLhzoBozBnZoZ+RZJlhRZ8GAJKpg4Hn62QThyDMqasPkeF1t3bj84YPZayH4
         TyVQcoUqxW8/G3ErBUxtHoHM3B+o13MaaSJ6vaZ0mUBYcVzz/p1u+ARKuy3erV7wgCyi
         dIWt0gzC/yoFo182FNmWRriMU7SCCBtaH0aXqHFV94a9fnJbemle3BPn4sxh+DShk3YC
         I59dAK/TsuRiAWLYrmyZK4noImXEKdv8PhWHmzrvLw/w5jaHVYcf9gzCVUmz5QX0H9Ks
         siBUz5EP5SQfdYwLOvjJkpnfdoyNzH42csiFtcirsI5agMJz1hKNIetujK6MZUQLTA+4
         w58g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=tF4d6/s3pARHYpptcJzDGuyRC9F3jmQPzYpSyU0HVmE=;
        b=KazirbXIe7kZ3UEimAd7/ZTo1rb2V38G/JJH7S8c6zghk38vjbUE1mdQyE8UJVw+2S
         nHcgLwIL0XjCZgShf9CglzMbszGgHGrYwdVVHxe5SexD1tlhzfUjQyK0f1uZK23dq9cA
         pZjthZkQwtoCtXwxbifznH4CzmW9I7DaQikY79Xtb1LctEIXxtS1ekfYbf0ee6TNppZ4
         YWqUn3l2Ublo0kx9DaSbi1YsioCCFGKC37p/xHOTRgEM4r1uqxKNtl7tyo+hKyPLy4UD
         krXUKGavyVAZPGdAt9Yvw5JOIujZpkDRLYVr8Pptv5dqjNqr8anq0hqxDvtJ6Gv7Z19m
         nY9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b="s//uUFgW";
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tF4d6/s3pARHYpptcJzDGuyRC9F3jmQPzYpSyU0HVmE=;
        b=dL1/9lddu8EDgcoQg3CfdUAt8+sYK/M4AEI5ZQ1u48n/nUxZw8To0EpCU/QWIx+KAv
         f0QNn22V0HqUtEKNLJbTfu3aLq3pTuOQT6Z4Tjc+z3lVB7ULt7PiqTQ0FTsrp7bJccd2
         Trie1Y0ypGN+C/LFweig6tN1r+2cDHc+JRsA+X/TuPkTq+2w/nNjbMjFs9l3bwm5CdWb
         rxYneVr7zHTjENL+s9AqzBdbOxFnm0oAot6uucVxWqlbIq+UCr5w9/jGE68KKn+isoxi
         SH+TrcX17N9iLmFLb4dEugX+AuwawA+JJ+aDRSwLk9RCF2PCCKkJwJXIGNYrAWPWPZKm
         LPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tF4d6/s3pARHYpptcJzDGuyRC9F3jmQPzYpSyU0HVmE=;
        b=hPWN5VLIKzH7QdZ+z43Ci2ZZlQjSbdad1UpEHPP8L80Z6uWbY2OU6qKZtTG+ZiLT3J
         9L/GcTi0AvVaLV8PQVHt5thjhBgzq6ZkdkjnI0OJN2z7K3mWS2LacCFL7FHLWivrsgwF
         QqkhJdWHVb/RWsAxAaL7kCpIGgv1yNFBNoDPkt3jAPRR5QRvmrYk6wFXi2A3SZNqioxF
         C4mrLLglqmebYxIDAVdkUk9HOvKpQCCv6iNfwMG5i6v32dio3y5hYuUbUNEFIz0ug5np
         pXaQEeyE2KlGXM50gXMtI3RghKYGaCfrraV3mWdTKnppknW6/hArDTzz1JjnR63VofJF
         Xgqw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530hrcvQNoaguRmkvPvsN7UxR5xjDYdBL5yKz3UN4dbbq0Af/U5T
	7s+t9y+uGufV0T49A60VbB4=
X-Google-Smtp-Source: ABdhPJwDG+fW2CTaRqfZbafbTaY47PoJCyWTlxW/7+5JVuvbgVeci+0Sc3+9qTBtzgLeLg3C7H/NRg==
X-Received: by 2002:ae9:e50f:: with SMTP id w15mr7992713qkf.769.1638384400781;
        Wed, 01 Dec 2021 10:46:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:dd13:: with SMTP id u19ls1500762qvk.3.gmail; Wed, 01 Dec
 2021 10:46:40 -0800 (PST)
X-Received: by 2002:a0c:eb8b:: with SMTP id x11mr8670585qvo.3.1638384400420;
        Wed, 01 Dec 2021 10:46:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638384400; cv=none;
        d=google.com; s=arc-20160816;
        b=wA87L4DpYPPLRnJbf38XWlgFQkAHuAws+4ioaeF7t3OPxVg+ACq580n3bOxMCjA5UE
         +OB1A9kPivcu/fHJDKlauiwDfhd4I4EKrA1khF74C0Nl3mZETHcOl/rh/i7XYx1TKpGq
         X2tysQlsa6I1JRJNmNnvT04p+Fe64hAXANZtXm7fSivDJOKJGU0YkIZF0+gzMtPdOJ1D
         NuWu2AdHjwuQH4c7nmyDMVw0/aA50NO136PRmhxFbnPCdOr8pr4m6p14NSZFCnbnvgXH
         QCa+aRAq75s6GgC7Q1fwHkeHzn6EJ+7f+xPBr1jFgXZ1yc+Z++IFqs8Cb2b1K0lZtjza
         fjBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=r30vrxFCP6SncVineLSUUmIOIpLd8fSftlOXik2T9FE=;
        b=ezWLefXSTlWQQ79+5lARrS7td31oHr5yWPNikoD7Zkz5oB0iKW57KATnhnwMzULcaV
         b+wKCFEjBNjr5jfdvUPVTPARK4ruTPaWp8LAjopJIWU8so0DfzFonDG9RvOpbi293oAC
         a2nxmrxx9Tk8TB5VVS85f8gx9k2iEg0RyL+p0B2s8DpzX320lw7dEin5MR2JrqyME/vW
         GPh+W6PJKLuUU4qmVmiPc0JVYKy1C7Bl4ls0e/UqhundpVd7gu0tK6GZQ9V1nKI6sevt
         +oOdb3gqEpHFAZpCzhYfSObbwkmAXKN1IfVcWTkfjxkaREhWByw9XWnqTm+kRYHl4Y1d
         t9QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b="s//uUFgW";
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id bs32si121633qkb.7.2021.12.01.10.46.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 10:46:39 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from s0106a84e3fe8c3f3.cg.shawcable.net ([24.64.144.200] helo=[192.168.0.10])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <logang@deltatee.com>)
	id 1msUci-00Byjo-Gf; Wed, 01 Dec 2021 11:46:33 -0700
To: Jason Gunthorpe <jgg@nvidia.com>, Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason
 <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org,
 Joerg Roedel <jroedel@suse.de>, iommu@lists.linux-foundation.org
References: <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
 <87ilwacwp8.ffs@tglx> <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
 <87v909bf2k.ffs@tglx> <20211130202800.GE4670@nvidia.com>
 <87o861banv.ffs@tglx> <20211201001748.GF4670@nvidia.com>
 <87mtlkaauo.ffs@tglx> <20211201130023.GH4670@nvidia.com>
 <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <c4d4550a-022e-4574-3937-248518dae763@deltatee.com>
Date: Wed, 1 Dec 2021 11:46:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211201181406.GM4670@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 24.64.144.200
X-SA-Exim-Rcpt-To: iommu@lists.linux-foundation.org, jroedel@suse.de, x86@kernel.org, borntraeger@de.ibm.com, hca@linux.ibm.com, linux-s390@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, gregkh@linuxfoundation.org, linux-pci@vger.kernel.org, ashok.raj@intel.com, megha.dey@intel.com, kevin.tian@intel.com, alex.williamson@redhat.com, maz@kernel.org, helgaas@kernel.org, linux-kernel@vger.kernel.org, tglx@linutronix.de, jgg@nvidia.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b="s//uUFgW";       spf=pass
 (google.com: domain of logang@deltatee.com designates 204.191.154.188 as
 permitted sender) smtp.mailfrom=logang@deltatee.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=deltatee.com
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



On 2021-12-01 11:14 a.m., 'Jason Gunthorpe' via linux-ntb wrote:
> On Wed, Dec 01, 2021 at 06:35:35PM +0100, Thomas Gleixner wrote:
>> On Wed, Dec 01 2021 at 09:00, Jason Gunthorpe wrote:
>>> On Wed, Dec 01, 2021 at 11:16:47AM +0100, Thomas Gleixner wrote:
>>>> Looking at the device slices as subdevices with their own struct device
>>>> makes a lot of sense from the conceptual level.
>>>
>>> Except IMS is not just for subdevices, it should be usable for any
>>> driver in any case as a general interrupt mechiansm, as you alluded to
>>> below about ethernet queues. ntb seems to be the current example of
>>> this need..
>>
>> But NTB is operating through an abstraction layer and is not a direct
>> PCIe device driver.
> 
> I'm not sure exactly how NTB seems to be split between switchtec and
> the ntb code, but since the ntbd code seems to be doing MMIO touches,
> it feels like part of a PCIe driver?

Eh, sort of. NTB has lots of layers. At the top you'll find ntb_netdev
which is an network interface. Below that is ntb_transport() which is a
generic queue pair. Below that is the hardware driver itself (ie
switchtec) through the abstraction layer. The switchtec driver is split
in two: the main driver which just allows for information and
administration of the switch itself and switchtec_ntb which is the
module that provides the NTB abstractions to twiddle its registers.

ntb_transport() doesn't directly do MMIO touches (as it doesn't know
what the underlying hardware registers are). Except for the memory
windows which are usually setup to be a specific BAR (or parts of a
BAR). ntb_transport will do MMIO writes to those specific BAR address
which correspond to writing into buffers on the peer.

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/c4d4550a-022e-4574-3937-248518dae763%40deltatee.com.
