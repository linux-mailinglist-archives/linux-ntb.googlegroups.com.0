Return-Path: <linux-ntb+bncBDAMN6NI5EERBWH42SGQMGQETVLUA6Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 89447471758
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 01:12:09 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id q64-20020a2e2a43000000b00218c94eab9bsf3808999ljq.18
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Dec 2021 16:12:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639267929; cv=pass;
        d=google.com; s=arc-20160816;
        b=1C+MU4GssEpuuF6DHh0HQPQIf5sWv4/ZZ2ez2ass7vQVDa2eFLE44HveZlVji8cdua
         D42fXC+gDV62o6Au0nFnwhlnbIRFio06tE/55KW8fuJRKGMeFPjjVp5LAXI33dxozFSl
         9wmwB8mDJZWk6ugOD3ULeMp1W+WKQi4hIt7EQbj9Xz0LAQcuhpGOoqtGZfGN+AuwZ7ji
         RINaGK1rZrEmqHAndrs7xMKYQSQmDg7dSrI/iyU/ruRz69sdu/4S9WpFd3kPvndpgtqv
         1/OFnNrBUWnQ3HVBnQsLw+CG2HB1+1igFzDOHk/5rOjdvVW026XyB7MlwbJC29iQD0oQ
         KLHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=pFjVjOuqKGrCWxYAwQiMXfPw/CxUCIpyyD+N3ntQUm0=;
        b=0Y2Ly5vzamYnmFxUjZQ9yQer6KIjGFAlk4cqgkxxaJycwqd9sMlAPwqOEVZPEgO7kG
         SdzbO4VM5AjXxJJhEPGi392eVjPc6d52wrEcH8oqLCy75n9Z+obdIYYyyAHiXKVmkSX9
         mnmSp2E3X18FNofhHC9wnbbV2RW+mYaAlJ+c0P0TJ7ipxvrc9Bs5Mg92kRSoE5obIZ9V
         yf9lT52fzgelXz7PTZLe1l7dTnW/3PLcpTMWHcNUqsoA8J9JZRr5x/XmpSrTooFSvtdL
         A2/68gDq8WMmp37BFSyFVq/pC0VJ6m5uqhI26a3+IbP9gGxIYqHPkbtv1VMpBzKhkA07
         I51w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="qM/Otsa9";
       dkim=neutral (no key) header.i=@linutronix.de header.b=pzckp4fg;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFjVjOuqKGrCWxYAwQiMXfPw/CxUCIpyyD+N3ntQUm0=;
        b=aEyKDrjPIBBe2Ol8jnb4sqIFt9gXuaVAfXF2alYRzBdRgnyVzxsrTlLc2fLZ1N95+r
         qhkEdCyuIEBLqcQGAw35hdWWrHhrX7BzU6qA9VdQXu/+8TovHgJc+sPPXqZNLtHVQCUO
         lfHSofnWyckWgAesUhZ+EawMCSG6yq1Kz08iJiHG8JgXk3xWNfpcUmy/qVPYSvktf50v
         GDPkMzkuFs3AQAh9S/eNbkxPSXnfPonv3hNeulRfoGwIbV5wXYy0boV15L2a4nPtmMpS
         pCGx26etRUihLxE8abSUbAdbS0SFqaupECjj7ynAp5EtpWxqVf7uC9DaEGLGnb+DWFgb
         AbOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFjVjOuqKGrCWxYAwQiMXfPw/CxUCIpyyD+N3ntQUm0=;
        b=Fa9wQg+eAakDRpjlpGLd0GwoZwQMPkVLDC2rfJNxcDRwYSexFgMJ/4zuhFXutOH2Lg
         yv04Rl0bQwo9h1ln6u2I8WOvpX7oHH1YfZrWL4AEn7+17sTplvCs6STZT4PxO6Z27STi
         tWlmMX2ByEzZNX+9aGCUEuUKFJ2Ivl0SrmBmRaoh9QAIpmcKnKWGJU4nWsKhLcXMPTcE
         hTwojWkHXRXVmRKdiSAdyYFOM0d8RaGw2l8KR6yGmzc55rvQm/Jl306b5K1pRK/B2IUb
         e3IeLSfWXdcEUikdzvzjvnFw6OvmHlsv4fQe4XsHuXau1XOLu6nefEyp+bgZzKHJl0FB
         qDNA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533IkNqeivz/fgJzz6g12/mrkH76RjovNPGMiSM6ac3vBuCfMBOE
	STZOxYClkdlBFX7tGRccSPg=
X-Google-Smtp-Source: ABdhPJz04C0TL1mz1QMCeSstH2qOh7mow98TeVhM7CsM+Hcw+lGNORFVLKFAY/Zx5Ozi2kS9gjuesQ==
X-Received: by 2002:ac2:5e89:: with SMTP id b9mr11852851lfq.616.1639267928911;
        Sat, 11 Dec 2021 16:12:08 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:234c:: with SMTP id p12ls42830lfu.0.gmail; Sat, 11
 Dec 2021 16:12:08 -0800 (PST)
X-Received: by 2002:a05:6512:3b8c:: with SMTP id g12mr21230911lfv.119.1639267927934;
        Sat, 11 Dec 2021 16:12:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639267927; cv=none;
        d=google.com; s=arc-20160816;
        b=SMNTYy+CM50vPYk1ffMhnXk/TdHZyQ6g3h9o4PJDCtBQnFMV2+h2RQWRQ0Qw2VACD9
         dXzh20nOZ2Gqqic8Kvh+TcceYclhteUM7iRUyxY8+w2NR6tjBMtunoR0whP3A/4/koG8
         330TbqtRIhJ2mSMUnuiGQAdty0QGyHz886nAw9Yb0JMfOiqjX/rXlGysx9Lb4E3h1eww
         V7UW5PfUHJ+hlVjt1wPfwyJeWAg2N30D0Befdgx9dxUN9Jz6mlOjguaxkUiKY5rTFqya
         Vn+3rbSGDI7/Z6IwFGlEVjm3Ai7nKXAYXplpRjYbWPecmOoLbLQ77zUdboSTFm2IxzFq
         nX7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=96U2PvNjfJ25atF3ICxYtTfUxrjzv0nAHv5JG16938Y=;
        b=DBvo3b+VYFFss4eUV5szJtaVWwj1FoZYCMWhv5/QB+QGfRGqruRw8PcHIU7iigB8+I
         5AyWB96NZdtfrgbfQ8jwYPBbJir2w4msGZVkYTg4ZQ981fgnqLE2eQdtj1rIOlfR9wUF
         ap2+vRhuShv1TW8kdU8s6Arw6PldwMAQfZ3usQxNqVMt3Hb6n1xHyNpDSwWQSPtm8Si0
         kz0jCewDFhVOiT06RcdtZVIpsRp3+iXOWq3dlct+rDzcOh/5u5QhqlCZJzEVTKIRYSKN
         VVae/g0WPqrb7xpE3ocREy8UD+HgH93h/USnJXfoFiW/131Xg6cPlG7qOJQvwQfP3zk/
         hKVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="qM/Otsa9";
       dkim=neutral (no key) header.i=@linutronix.de header.b=pzckp4fg;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id k26si351254lfe.10.2021.12.11.16.12.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Dec 2021 16:12:07 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: "Tian, Kevin" <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Cc: "Jiang, Dave" <dave.jiang@intel.com>, Logan Gunthorpe
 <logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas
 <helgaas@kernel.org>, Marc
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
In-Reply-To: <BN9PR11MB5276B2584F928B4BFD4573428C729@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com>
 <BN9PR11MB5276B2584F928B4BFD4573428C729@BN9PR11MB5276.namprd11.prod.outlook.com>
Date: Sun, 12 Dec 2021 01:12:05 +0100
Message-ID: <87lf0qvfze.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="qM/Otsa9";       dkim=neutral
 (no key) header.i=@linutronix.de header.b=pzckp4fg;       spf=pass
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

Kevin,

On Sat, Dec 11 2021 at 07:52, Kevin Tian wrote:
>> From: Jason Gunthorpe <jgg@nvidia.com>
>> > Then Qemu needs to find out the GSI number for the vIRTE handle.
>> > Again Qemu doesn't have such information since it doesn't know
>> > which MSI[-X] entry points to this handle due to no trap.
>> 
>> No this is already going wrong. qemu *cannot* know the MSI information
>> because there is no MSI information for IMS.
>
> I haven't thought of IMS at this step. The IR approach applies to
> all types of interrupt storages, thus I'm more interested in how it
> affect the storages which are already virtualized today (MSI[-X] 
> in my thought practice).

They are not any different. As I explained several times now IMS is
nothing new at all. It existed since the invention of Message Signaled
interrupts. Why?

The principle behind Message Signaled Interrupts is:

    Device writes DATA to ADDRESS which raises an interrupt in a CPU

Message Signaled Interrupts obviously need some place to store the
ADDRESS/DATA pair so that the device can use it for raising an
interrupt, i.e. an

   Interrupt Message Store, short IMS.

PCI/MSI was the first implementation of this and the storage was defined
to be at a specified and therefore uniform and device independent place.

PCI/MSI-X followed the same approch. While it solved quite some of the
shortcomings of PCI/MSI it still has a specificed and uniform and device
independent place to store the message (ADDRESS/DATA pair)

Now the PCI wizards figured out that PCI/MSI[-X] is not longer up to the
task for various reasons and came up with the revolutionary new concept
of IMS, aka Interrupt Message Store. where the device defines where the
message is stored.

IOW, this is coming back full circle to the original problem of where to
store the message, i.e. the ADDRESS/DATA pair so that the device can
raise an interrupt in a CPU, which requires - drum roll - an

   Interrupt Message Store, short IMS.

So you simply have to look at it from a pure MSI (not PCI/MSI) point
of view:

   MSI at the conceptual level requires storage for the ADDRESS/DATA
   pair at some place so that the device or the compute unit embedded in
   the device can write DATA to ADDRESS.

That's it. Not more, not less.

When you look at it from this perspective, then you'll realize that

     PCI/MSI and PCI/MSI-X are just implementations of IMS

Not more, not less. The fact that they have very strict rules about the
storage space and the fact that they are mutually exclusive does not
change that at all.

That's where a lot of the confusion comes from. If you go back to all
the IDXD/IMS discussions which happened over time then you'll figure out
that _all_ of us where coming from the same wrong assumption:

    IMS is new and it's just another exclusive variant of PCI/MSI and
    PCi/MSI-X.

It took _all_ of us quite some time to realize that we need to look at
it from the other way around.

There was surely some other conceptual confusion vs. subdevices, queues
and whatever involved which contributed to that. Water under the bridge.

Coming back to your initial question:

> I haven't thought of IMS at this step. The IR approach applies to
> all types of interrupt storages, thus I'm more interested in how it
> affect the storages which are already virtualized today (MSI[-X] 
> in my thought practice).

Stop focussing on implementation details. Focus on the general concept
instead. See above.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87lf0qvfze.ffs%40tglx.
