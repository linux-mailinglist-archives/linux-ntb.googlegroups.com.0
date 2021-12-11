Return-Path: <linux-ntb+bncBDAMN6NI5EERB5OD2KGQMGQEQGIP3XQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC254713E0
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Dec 2021 14:04:54 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id 187-20020a1c02c4000000b003335872db8dsf6586694wmc.2
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Dec 2021 05:04:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639227894; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xaq+oLPKW4QFH3O1XR8BwDLe8ipyfOV6nF5DFWIq6PDUFty5xUWZIhhy39DrG2Nvem
         QT4RmcjR818zRalQUbetjrmNokWoPj1wsnB9qpujf2U9e17dSZtTfquJRK+rEOsSH80D
         Dfr8YpbJ8VYyGRvzvT0oNCU3YEUvsNVYnNvUA5BN3wPcVjxQ6eXr5K9+T61HKACB00GF
         SWeLWFowXPihuicl3ImPN8c/oyEy4jqOQs3or9ctUUXQjBtOsMpXal4MowilXGrFUjDw
         +I82Ju/gLEKPaWmJjIXqRFZ3BXCBYNf9BSPUFno3JTsNnGnFYEcuMIRtvBIpwbGQv5Zo
         aMkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=6SSvuVSwogz8SDSZnS2Frilfkitsuz0LvfBoAcf3P/8=;
        b=xxQfQORi0e3RyTryekvQXC6caR/qwNAedXv9+EmGV2e2ItaTOo6gK1b3CM98HrrEJb
         t5PlCSVvr4fi2O6uOKfqGVbrh0FxpZg+piuuFhVfdZrdjw3eczwmHFqvFU3zy87pXShJ
         Ob4bzm7ncnv9G02DV/8QAUy7IqLTLaWSY9b3yRt6ClPYTcL8RpTxwkSvtGyxSc5AAB+a
         bryFDD/r3U03gssGdatXuWko+XpTQqKDX4Cl6eSOzZMEXP7gmEEW/PAt2YXouSqLT8rL
         Nh2VeHOSuZAKIpoVkzKxMxAJwOiQtUH/ML+ecT+NqV1q9tBAFCBpui6lJu8ZIgsWvRtR
         gNYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=w841xfDq;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=F0rZXep5;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6SSvuVSwogz8SDSZnS2Frilfkitsuz0LvfBoAcf3P/8=;
        b=tEgkqfXayCUHABZcbcJTqM+e8v+7AdXueM/1/FZw3KEn8sekv6XeZXEJTbM05IN/Cd
         Gd/NeGWnGQBL2FMj8QFPphSQ17XszMWdnTYK5jY6yG+Bw6VQ4f58O8mZpUGv5ynnzDM3
         bXwmDvW17VxaVGNbt6IV2Y+6BxoyCjwvYTELx3K90vZNyJ51PyGhVsc3Rbj7aCvPvBNZ
         kdoUaJYQWn7xLGyTNFHieyZ7Kw+bBpFw9mozcuPWUlNVMsYu11rnMDoHTHydpe2smBFh
         /Q/9+7HffDThp1pANKa0wNzf3/wigbioUSc1IzC8bffpILxQu14Oe6Qv72SdHAjAja3x
         T++Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6SSvuVSwogz8SDSZnS2Frilfkitsuz0LvfBoAcf3P/8=;
        b=P/RIgT3ehhxQpQb+yc2WWLcYGLvD13EtmVhP/DXwsQardVzALjidCZBveWguaalpvL
         nIqnlKpo99Rs5JemxJ++QIZCJwBMHZQcTDj/ZR6fBHycQ0JWv3tmOwCavAEt5k0QGTk2
         mC88vF3f8B1FUI+rReizyHRXY8qbrTNynpe686C+zZJpFNO31uhGE9inN97wFNlSCaOT
         m2K58K00udrkyuKxwOGUF/J5seP0dGQigZ6LB3c+PL/UZMFZk/06LAVzg0SIFXNffeWA
         T7QurkYsrYAjBx5BtmXBHR6JnUCSYNu0N8yz0qpwsUrC7F+7wxsyFtF2tvYQPoTN1Qg2
         FdBw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531kvIgvIYC4+cSkwm+X0GUCfmE+zxiGo3VnAyaTup0jftGxdsZO
	IbGMiJAxP2iu+eD76uC27Tk=
X-Google-Smtp-Source: ABdhPJwuIKaA52W3MxMlVGB79+DqMbuyaXNPfyGR9+YPh3hcM6DK+6QiouwPbm0HJFzjkK2Y0otiIg==
X-Received: by 2002:a05:600c:3846:: with SMTP id s6mr24013274wmr.55.1639227894169;
        Sat, 11 Dec 2021 05:04:54 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:fe0b:: with SMTP id n11ls200912wrr.0.gmail; Sat, 11 Dec
 2021 05:04:53 -0800 (PST)
X-Received: by 2002:a5d:6a4d:: with SMTP id t13mr1875837wrw.36.1639227893337;
        Sat, 11 Dec 2021 05:04:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639227893; cv=none;
        d=google.com; s=arc-20160816;
        b=eG9pb5GKOToVsbHuYT4QQyBLn0Msjai5qCNGVZIukJdnw2UdmxNjYOt9kBe1J3vxVc
         o/lij2dtQNkiy6SyIq9P6HGjKBbb3qGoTqahLerd1JuDgFq+Be/nmsggGyAw7ie27KHa
         tHQCZIngRkGrKuUhZcGP/iuj7oDYbMWvCcCtTldkyLsT1hyyydOOYI6GTm7PJZA89sty
         mN8PCGdCUwseUxRP41BYx2hvWVOGana11QkPIbrL8kqK5qxQjjn3lcXOcr1qHZTYsMyP
         Ubgsu240yBsA+UGVooMEr/LqXVFpDZ/ycaioUqHEY6Nn6ksBVO1sTShFuQrFX3rLApKr
         aHNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=38/Db3j/tuzM5sMDcn0hVrQ9Hr7pHpt39b3WTf8tlcA=;
        b=QihOQK42Au8DrRhU2xNO7zyz2XCaAW6e7HCtAQQ0MIfhr6jP9NkqCEmHfQH2D2nt5a
         Is+qmJKPMUEPR6OElm0WrG3HcQ1HNN7kTY+XwP6PREKqrEB9ojBmS57mLYFtESncozkz
         4BGtCSq4rgoGDxXW5yW2bq7kgvPjVZJDjhbl+U5U6KYL65XUcyZj+WsPA77eMuc701W7
         0y2eXq+xnsdCC5hyEBosS4pz948PO/torSE4rTT4efBdJyFOttKw5rSsmn4F6AWi5upE
         erEZCsIQg4NDBSXUrWdrGoQO7khoer4M3XkQafS4vX3n8eOjOkcOxLBSfzbR1fxjNNtc
         HVng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=w841xfDq;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=F0rZXep5;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id o17si79492wms.2.2021.12.11.05.04.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Dec 2021 05:04:53 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
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
In-Reply-To: <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com> <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
Date: Sat, 11 Dec 2021 14:04:52 +0100
Message-ID: <875yrvwavf.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=w841xfDq;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=F0rZXep5;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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

Kevin,

On Sat, Dec 11 2021 at 07:44, Kevin Tian wrote:
>> From: Thomas Gleixner <tglx@linutronix.de>
>> On Fri, Dec 10 2021 at 08:39, Jason Gunthorpe wrote:
>> > It is clever, we don't have an vIOMMU that supplies vIR today, so by
>> > definition all guests are excluded and only bare metal works.
>> 
>> Dammit. Now you spilled the beans. :)
>
> Unfortunately we do have that today. Qemu supports IR for
> both AMD and Intel vIOMMU.

can you point me to the code?

All I can find is drivers/iommu/virtio-iommu.c but I can't find anything
vIR related there.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/875yrvwavf.ffs%40tglx.
