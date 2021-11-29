Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBUFHSWGQMGQEJ6OAU7Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D584624CF
	for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 23:27:30 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id u8-20020a056e021a4800b002a1ec0f08afsf13590941ilv.7
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 14:27:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638224849; cv=pass;
        d=google.com; s=arc-20160816;
        b=uiklLrGRhK72fHe9O4PistaWOzcYHK0PLAcJ3FauYzaSQ4ahdG6tR2NHwwFjOj1gHh
         5al57gKie1zCB34avAmIvQiPwljg539Kwaf0lx+SpeCXiJLhtN5v6afs1JgNEHww+DRy
         aNIIWvuNjSZZzuqMwwv9+KJ+0g9ZFr4nl83dshY/78LvU+b9WkGfNHfyrE9XtEApItPa
         0uHndFBdE5xvE8EHKcaDVybIJCPtTX1qfR4g45SHCqmEQNlqZ6g9q1zUDbhcSfxr7GkG
         a+TbHC7qtjFZgpq//UGIHzyXxlS6Ui0lH2RDBz11nYukT3HHMM3F/WzrkWTGUi66bN7X
         mDmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=0dydzNTOHBt96D0AdEIzJwS0qD1tMG4cdb9KWaKvais=;
        b=m2/NKkegk5Ld0O5ZPVRVGBo7dcGEmaJGt/WZia69jd7C+wXzHj66ZVE3e5MVipHHub
         Yzz01CJMFmtyLTQj+3Q2yOdVQko7eQkIwcybYTYYFgqWJubu2q6u+cn6VAynBZY6xVv7
         444sHTqaR/g9EtyJUfOKvUSL2HYyfzWfZFBPHLBMzIpkTnN35QfxmzPvhqti/ZF6c55V
         RPIHKXlcJjwQKat4G3Zb29C+W3izsao324mjmVtNBP4/stUaEuyuitDtqblNgf1LTHH6
         f2wqfhl4705kxGBqPq06w048vpZCMlXa59YdG8+FcHIv3wP3gh3wTybcNFdwInUAPOir
         PjAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=XGhjJUo2;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0dydzNTOHBt96D0AdEIzJwS0qD1tMG4cdb9KWaKvais=;
        b=VPixckPtR5qjA+SUWh7pZ0kuKTFRah8ht32amlbwOvBDgqRQHLhteOKFu/Tgz8oY1h
         HCm9CMjfLVviGwSip73eF30X2wo7MWtVAT3NeKMLEBfy5c3N8ZRudwV7PjrClCgBrQJu
         BR+wbWpis1l2p4BgAZuIDrKnSgq5uvxz5i8nbD+vjSOt4QI51B4GIMR+pLO9DptT7G6p
         G+ImsNzvvREPFvMMTJPG9RaGdJb0CumV6OeebhFiSJp8mdH1m3/sI95todXxQf1/Oq3L
         gZcTjkI0Yd8Iuxq8h4/m3HKFqL5t42YVuBUZrF2til4+DG/IX4hMruS7In+eCEtb1VDv
         sfQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0dydzNTOHBt96D0AdEIzJwS0qD1tMG4cdb9KWaKvais=;
        b=5y0CR/2VOAwT2+a8/wCQqCTA6N6v4pVtY51W2q6H4/xgLxGzwAca7Yu63yqD99mpmT
         xOT4eA6XMqt+4PLKnSquXoT5Vd2YYkZ/nNVnugdeedKGvWx8rLWbqEkl0YufPVINRtKF
         OgJ3UbrqcsYza+/PTrbyItnAEqoFZk/lW1KQlvHCDI9EFQPXi454Y6u9rVdqSPCQB7k7
         V6AHK8Ih3cB9bBvlsY8z8BN5zEEIeJXc07ItVrkhoWePek9/YOEoq53cdmC1LfHkA9je
         tdncgeFkjMUgtELWipIKWRbSS67ftESD6+qFHN1htAetT59xgvktp95xS/hJB0jJ7J98
         PCVg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532V4Q7mSS7EGRDPoL2Pk9sktLaGwcQb2/e4cml7ThgWnB8Wnbu/
	H9yIrsM64Hg++bscSTRexMM=
X-Google-Smtp-Source: ABdhPJwQeIuIN+7gBnaBHlkBNd4rEwmYGkq7MVG4BGLPQPclMW5KlPa5/1BzOv1mx25f6zXWf1mpyw==
X-Received: by 2002:a02:8663:: with SMTP id e90mr66764661jai.14.1638224849207;
        Mon, 29 Nov 2021 14:27:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:da:: with SMTP id z26ls1565901ioe.3.gmail; Mon, 29
 Nov 2021 14:27:28 -0800 (PST)
X-Received: by 2002:a05:6602:1686:: with SMTP id s6mr63295806iow.186.1638224848600;
        Mon, 29 Nov 2021 14:27:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638224848; cv=none;
        d=google.com; s=arc-20160816;
        b=ey5sTDBLSZKwbc5Nx9/LU0Vyfn1gGwoOoB8ZWKp+Io0/Nbrj1SWSEjYuwAEgpgUjGx
         yYcWnPAZU3X9mH9Crr2EYuS7zOrVpX7IBsAwe1epXvEpHGd+tHmlAKVbaVjp35OQ6jqa
         PzrO70Hpt7u/IqMVf3eCMqvY3RkShmvvpv93t6IXGfUgPAtPOTRHgywPqSAMYLOuzfo3
         JIQ25wVaBIsJX/+ncUa0yVQ96M9G2EZG8z+S7KEy6k+gUEtCfv8Mw6mIK3du65NtsM+r
         RVrZZxpFVhv5PTlaeLH6ZMd1nuJ6bVbfPy4RpFbhL85KpvZYxIz3aBRFdmPghgo87E9W
         H40Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=h3I3KuBV0EWpxrs/PZnldvg5FyRAoHiTFhFI8WLZtNg=;
        b=VeJxzbP/koTPyl4gDOIKSqx8Evwz3gZ4ZCM7Yo7AQryvJGS7LJmOAvKjGKb0oH73iX
         bIBeBT3HsFEn7DjJV93KeJD93Z5/d5AaDR7Bo8LX9iz5557kYVg1rvcUDBMO5mWLjRwW
         0aNSRSUzHLRcjPpyQPMmuS/g1hQnn0m3bp+dR8aZ9afANG2OnMwmJFDbtgw9pWLEAXxB
         Voenjki2pjEXy8tb1hH0uoFKhCj9I2ejCuFet+WU9aoLz4W3mqclf9qDJQx/EMk1otl7
         OiaoqBuVWzpY4ht211zkW+iWqO85HZlDsiS7MJnKI2gu9SyYxtbwM+fdMZV9ElJ5CbhK
         w9Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=XGhjJUo2;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id i17si1316674ila.3.2021.11.29.14.27.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 14:27:27 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <logang@deltatee.com>)
	id 1mrp7M-00AR6j-2z; Mon, 29 Nov 2021 15:27:25 -0700
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
Date: Mon, 29 Nov 2021 15:27:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <874k7ueldt.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: borntraeger@de.ibm.com, hca@linux.ibm.com, linux-s390@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, gregkh@linuxfoundation.org, linux-pci@vger.kernel.org, ashok.raj@intel.com, megha.dey@intel.com, jgg@nvidia.com, kevin.tian@intel.com, alex.williamson@redhat.com, maz@kernel.org, helgaas@kernel.org, linux-kernel@vger.kernel.org, tglx@linutronix.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=XGhjJUo2;       spf=pass
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



On 2021-11-29 1:51 p.m., Thomas Gleixner wrote:
> Logan,
> 
> On Mon, Nov 29 2021 at 11:21, Logan Gunthorpe wrote:
>> On 2021-11-26 6:23 p.m., Thomas Gleixner wrote:
>>> Replace the about to vanish iterators, make use of the filtering and take
>>> the descriptor lock around the iteration.
>>
>> This patch looks good to me:
>>
>> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> 
> thanks for having a look at this. While I have your attention, I have a
> question related to NTB.
> 
> The switchtec driver is the only one which uses PCI_IRQ_VIRTUAL in order
> to allocate non-hardware backed MSI-X descriptors.
> 
> AFAIU these descriptors are not MSI-X descriptors in the regular sense
> of PCI/MSI-X. They are allocated via the PCI/MSI mechanism but their
> usage is somewhere in NTB which has nothing to do with the way how the
> real MSI-X interrupts of a device work which explains why we have those
> pci.msi_attrib.is_virtual checks all over the place.
> 
> I assume that there are other variants feeding into NTB which can handle
> that without this PCI_IRQ_VIRTUAL quirk, but TBH, I got completely lost
> in that code.
> 
> Could you please shed some light on the larger picture of this?

Yes, of course. I'll try to explain:

The NTB code here is trying to create an MSI interrupt that is not
triggered by the PCI device itself but from a peer behind the
Non-Transparent Bridge (or, more carefully: from the CPU's perspective
the interrupt will come from the PCI device, but nothing in the PCI
device's firmware or hardware will have triggered the interrupt).

In most cases, the NTB code needs more interrupts than the hardware
actually provides for in its MSI-X table. That's what PCI_IRQ_VIRTUAL is
for: it allows the driver to request more interrupts than the hardware
advertises (ie. pci_msix_vec_count()). These extra interrupts are
created, but get flagged with msi_attrib.is_virtual which ensures
functions that program the MSI-X table don't try to write past the end
of the hardware's table.

The NTB code in drivers/ntb/msi.c uses these virtual MSI-X interrupts.
(Or rather it can use any interrupt: it doesn't care whether its virtual
or not, it would be fine if it is just a spare interrupt in hardware,
but in practice, it will usually be a virtual one). The code uses these
interrupts by setting up a memory window in the bridge to cover the MMIO
addresses of MSI-X interrupts. It communicates the offsets of the
interrupts (and the MSI message data) to the peer so that the peer can
trigger the interrupt simply by writing the message data to its side of
the memory window. (In the code: ntbm_msi_request_threaded_irq() is
called to request and interrupt which fills in the ntb_msi_desc with the
offset and data, which is transferred to the peer which would then use
ntb_msi_peer_trigger() to trigger the interrupt.)

Existing NTB hardware does already have what's called a doorbell which
provides the same functionally as the above technique. However, existing
hardware implementations of doorbells have significant latency and thus
slow down performance substantially. Implementing the MSI interrupts as
described above increased the performance of ntb_transport by more than
three times[1].

There aren't really other "variants". In theory, IDT hardware would also
require the same quirk but the drivers in the tree aren't quite up to
snuff and don't even support ntb_transport (so nobody has added
support). Intel and AMD drivers could probably do this as well (provided
they have extra memory windows) but I don't know that anyone has tried.

Let me know if anything is still unclear or you have further questions.
You can also read the last posting of the patch series[2] if you'd like
more information.

Logan

[1] 2b0569b3b7e6 ("NTB: Add MSI interrupt support to ntb_transport")
[2]
https://lore.kernel.org/all/20190523223100.5526-1-logang@deltatee.com/T/#u




-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/6ba084d6-2b26-7c86-4526-8fcd3d921dfd%40deltatee.com.
