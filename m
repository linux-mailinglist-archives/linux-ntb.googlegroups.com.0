Return-Path: <linux-ntb+bncBDAMN6NI5EERBRGHZ2GQMGQE3GUNG2I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id F3131470999
	for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 20:00:20 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id n11-20020aa7c68b000000b003e7d68e9874sf8989242edq.8
        for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 11:00:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639162820; cv=pass;
        d=google.com; s=arc-20160816;
        b=TyN8xWCHCXmaemQ7TfnO2Lgec52ICMku8/5kcWc2HyLo7MmNkw6v+oZqvUD5zi7F1+
         k1sA6kRgSJuKZR2YlctQHdE1BsN539YZrBUyvCdHhdvCM12ncVBhMc4vuMYyScFJa6xc
         zArzNf2gV6QAYz497RcI/Q1pXKPwwGqgkYHyGJHzrT1lTtm88jeekVVR2RhTjWcEJojC
         4QROWpBoB8lhgsfvaa4WS0XhQYVZb2gtt9jlWlcjQ1G2LlGtKZBm6XhCRqvFSD2YWS4d
         dcr6o0ON/yPZS87p4lJD/bLMI2wmooX5K+s7ZnhYjF1X46zPeG5IeofXKSInL1CP9+F0
         pY0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=/ygP/fHuikTiv3lQErFaqAiB80WOAnODmqqKpjlknt0=;
        b=L2BkZZziE/togX3G6wD1Ajf24BRbaLfzZN77nEtFnUGd7uY5DJ8jBW9bsO0evSJ+aF
         r3cE3FcQWPvG4AbfDFUo+k1dZc7GPWSpohJvOpL4HWHaTkaYi1rNsA92qwxC5lmBZckk
         auGlU62sILuhE1H8IK2K1A6BTZltIFoAFerKmA3HfufSyOX9r7bl0/HzSJ4N6+Y/Azjc
         n4WWZTWFdKrSMclYAIS0mGUPCJSglf/En470sVO7j02BqZvc4whsbckkGiMAgBMq4/v7
         dE6hhkGygSLu8Il1nN/Bz54/3vte7bTMmozcvDrblaN+0YZXebZmD9Mpm8IXUnF4VjsN
         Ywjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=4xfvC4na;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/ygP/fHuikTiv3lQErFaqAiB80WOAnODmqqKpjlknt0=;
        b=BnySZIb9nTQkWB+fDP3W+GdbxZExdVIxDxUbE46nEdUX4+9KUw56iMN0gS40ka+ZuF
         q9j4OUjgRqTuJjwYF7+S0xVhKOgltiGbfYR6Wf0ZASbJRH5oOEA+eP8VP1aGWFHgs87A
         ObZoec/cRtN4Tz4mtBe5vp4g53hzKiL5FfHHCRMN14UfQL1nIsrefcN6SCPq9N/WUSSI
         Lar4H/zKXkXh1/l0M+Mzv3/V7DzRDg5hXc3194PvDMl3DdUhORBFWlfh/Y+UapKTIdCf
         eOXIO/ny0r48bMDEQY6pfKbSzcA8UIAZKsLNZHxkvVKTb+9BPMxBfWXT9Q6GwDmIpDAx
         Z4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/ygP/fHuikTiv3lQErFaqAiB80WOAnODmqqKpjlknt0=;
        b=cwM04bvV62cCCIJSNpORJsgXt6buXTsD3sH/FQdVCLp+DWV4orJijt0WUaWPDkMGll
         6yYawDq4R7/xHbmMfxeyHs0wMZBAT12wxZTZ0UYT45yYhicha/uyE1wrmE5nnR/QQgPL
         zGTFz3XevcLAknDb8YH76IEvCTvMykolqOoUNnYGOTD5q9k7nZ30Cyd6j4u8TgUjScyA
         Fwfb2xecSei48bMXgIOTN5/Ms/GFZKf7OM67H4UtrIQG6pnJjkvlkLI2EaGqD3cuxwpO
         p5SG4aq6eT9vnnAe/XDfo07Ckt0wEJ3hj1/hZn0Y9aj8v2z80PzLutXicDuDBoDxRfFj
         AMPg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531VENSIiL21hCSVooG3wYH7sbAxUdNezCdW3eh2vtnqfFD/GnPV
	wNvsHqjykfr17owyhcDpXeQ=
X-Google-Smtp-Source: ABdhPJxwbtufg9ASbpFFC49gwH6oB1GXkt64tifVnv4A2TvCDC72cRUEJPZAbkTBOIEExOvQFvjRag==
X-Received: by 2002:aa7:d316:: with SMTP id p22mr41459158edq.109.1639162820630;
        Fri, 10 Dec 2021 11:00:20 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6402:4246:: with SMTP id g6ls270563edb.1.gmail; Fri, 10
 Dec 2021 11:00:19 -0800 (PST)
X-Received: by 2002:a05:6402:1292:: with SMTP id w18mr40781656edv.46.1639162819687;
        Fri, 10 Dec 2021 11:00:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639162819; cv=none;
        d=google.com; s=arc-20160816;
        b=s+vRc50JL5GrPik9KJlsULN0RLps1lm/vUjxXjytKUT/qNsio1Mu7zCJ3wE8eLMsd2
         CI+Y9zLyda8YQC0jKVzgoqbhPAhx7yeePKyErMcv9nh10HW+3GDXjbMDmCRJSB2uZn7g
         Ow7r6iQeKtT9cLcdAmBvlsfkupujkFkTQpoJg2PIjb3Q1MrvmjTuReMqXLeiEKqggPq+
         djlHGvJSqiCmntbk3oeQ/ij9mdIfdioca7vS2cIk7rREEgfEXJwzrfvDMvEgQTxS1b/n
         TA7TlqhVbHP9EzLXsVk6Z4srHz2gi4YEqpjlXS8YbOa4Oq1Sw7WPWiatLXTMBfgtleVy
         d2Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=0BeH0Kn3WigadkhEUoB01iDiT99PSY041SAX6KkeNTw=;
        b=0Ezg3xMlI/mJtPe6RJvz4Wn+3yCgPE7K1rEdL2YYtZE99HpLWIoB9nK8UUcI4oRcNk
         cHn57L0DnOQGWIr6ONKy88IW6RPHT+RJUqdVohVNTuf2O1Dj9s0ESEUEOgABgvqTIFk4
         Rbttwt9Dr7UwM37WuWqNWbjweUa31XtL9k6p7YClenXbjKDnAK5Q4pi/khS6kyLpa3xU
         xdKblhLyLVlVoNjWagFtkQdg3S8g2vYt/1mQ5vTIRY2PmuR5mpR2dmm4shDCeIBfM8uS
         iQjAQT9tiTK0fIg0wvJkKFYQ/a5nukfRY+q7YOqjvDNQ5enjPhthADgcJADt4+uUn9c6
         YVrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=4xfvC4na;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id fl21si285768ejc.0.2021.12.10.11.00.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 11:00:19 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>, "Tian, Kevin" <kevin.tian@intel.com>
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
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <20211210123938.GF6385@nvidia.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com>
Date: Fri, 10 Dec 2021 20:00:18 +0100
Message-ID: <87fsr0xp31.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=4xfvC4na;       dkim=neutral
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

Jason,

On Fri, Dec 10 2021 at 08:39, Jason Gunthorpe wrote:

> On Fri, Dec 10, 2021 at 07:29:01AM +0000, Tian, Kevin wrote:
>> >   5) It's not possible for the kernel to reliably detect whether it is
>> >      running on bare metal or not. Yes we talked about heuristics, but
>> >      that's something I really want to avoid.
>> 
>> How would the hypercall mechanism avoid such heuristics?
>
> It is clever, we don't have an vIOMMU that supplies vIR today, so by
> definition all guests are excluded and only bare metal works.

Dammit. Now you spilled the beans. :)

>> > The charm is that his works for everything from INTx to IMS because all
>> > of them go through the same procedure, except that INTx (IO/APIC) does
>> > not support the reservation mode dance.
>
> Do we even have vIOAPIC?

It does not matter much. INTx via IOAPIC is different anyway because
INTx is shared so it's unclear from which device it originates.

> It seems reasonable - do you have any idea how this all would work on
> ARM too? IMS on baremetal ARM is surely interesting. I assume they
> have a similar issue with trapping the MSI

On baremetal it should just work once ARM is converted over. No idea
about guests. Marc should know.

>> Then Qemu needs to find out the GSI number for the vIRTE handle. 
>> Again Qemu doesn't have such information since it doesn't know 
>> which MSI[-X] entry points to this handle due to no trap.
>
> No this is already going wrong. qemu *cannot* know the MSI information
> because there is no MSI information for IMS.
>
> All qemu should get is the origin device information and data about
> how the guest wants the interrupt setup.
>
> Forget about guests and all of this complexity, design how to make
> VFIO work with IMS in pure userspace like DPDK.
>
> We must have a VFIO ioctl to acquire a addr/data pair and link it to
> an event fd.
>
> I'm not sure exactly how this should be done, it is 90% of what IMS
> is, except the VFIO irq_chip cannot touch any real HW and certainly
> cannot do mask/unmask..
>
> Maybe that is OK now that it requires IR?

IR unfortunately does not allow masking, but we surely can come up some
emergency button to press when e.g. an interrupt storm is detected.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87fsr0xp31.ffs%40tglx.
