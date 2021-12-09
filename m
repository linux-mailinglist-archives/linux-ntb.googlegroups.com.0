Return-Path: <linux-ntb+bncBDAMN6NI5EERBM75ZGGQMGQE4YZFILI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C0746F682
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 23:09:56 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id w16-20020a05651c103000b00218c9d46faesf2355020ljm.2
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Dec 2021 14:09:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639087795; cv=pass;
        d=google.com; s=arc-20160816;
        b=tMgHM5MzZ9Jk0owv1NZ8nM7hpn1H2lOyFAxlg7NsQpdj+Ngpz55V4s1zY+f2jJLCm/
         msJzIAKvaCnHziz5S4TJa5xjTQnN5BEkKkseP0A3s7PTepSNSDunbB4u14UpTEjYXzyb
         AWc2OgIu99CnuxW5LNQiS6SZqDSxeyDJVJZtV7nC1Mowk3sHXlgUBuvavs25YmpsPHJ3
         Zu47489a3bODBuhf5BW/6d7Rh5SMH71XzCpd0q0H+x21Uz9NlOcueFv0op8SiPGM9mL0
         XVLvZ2UGBFa7G9JVZS3RrhD/nF2eL0naH5PtViAKvwZl9G77FJsyrTqWA0dl4+T6U+ju
         j1vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=E+TrqrfTRHljUTkGGypuKragbScrQVOAL/r3NAC6kVU=;
        b=wXl2CsN56rMfzZuyL2JrKeUN4QgWBnfdyBmqSGcplzdV9Ec483p7ZM+kHoSuI2dJ9B
         ZWkf9vBQ03pDlcNG+e7OCvsMvQB6zmPvO03zaJWKRmYuDvKTQSNCl4/EeMqA052qEsw9
         Xpz5n89RLwP8ZA7ZHA6e6frXwz+D88EjLPjvXNbMNISFVqAi+8KszT6eeU+n0qJ9kQNs
         kTWK++KHgtmSAng5Ke7S1naES3qAjyZCpZnXbqGF3RtPihXl51l5I6jk8Kfq/TduH8bm
         PfA5CtufV7S/7VrP9Gu6js1jk7WS8hbADVGafjjBr+dHcFZj0RBVXmgMnAnjBN4V7V/R
         CFXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=WW18ExaR;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E+TrqrfTRHljUTkGGypuKragbScrQVOAL/r3NAC6kVU=;
        b=VV+TY+wE7lQEaBsfWPYW0RhckmmFGRR5Ugaoje9yE7SarBki7RDLKoKICIpxSqmgC/
         88sQysynGMaX0ymbKMrCh4SWa1bI9WFb4/fJsAT50U1NC0aegW213Cgb7xNualP/ZeSZ
         4lb1CAlPVPZGcukeeRjfOK3NHGnUlc3UvLPNuMU2Ze6dOe3KYN9mBjt7CSrPg41lo9Gi
         3+AYJCnAqPlYzRQlKsiyfxByU+/uAcsIVlN33BshRnpuR2RDoyi07ioI4k8NFM66zLG+
         J1pYE7h4dZOhYkfloirjsbQ+ON+flMPgKIPEdijVa+taSGwa8qslhk57KOY8uClg4ZdZ
         7kBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E+TrqrfTRHljUTkGGypuKragbScrQVOAL/r3NAC6kVU=;
        b=3C9wNHTb3UKiueW67dnFXU2rTqxOAlTkly5b6Zc7XaZl4JhoZbGQla8DwwcCrUAQrG
         Eu0Dprq2K0wEuId0vpBBGTbbny6Fpmv1Ii4EGVljmiBueDShp1RRSX0zySsHxWyN8ctX
         cGlQa1EEk04hrYR9We44b87ogL0BnzfzhmlwVuwhcJ6LBb8sNVhWpPd0PZh4DJ/0Pn6/
         Ba4bIXJmWocvOktZ+V4sUTxj8BCikxVUAHvFbnseuE8VhJ4B0Y2C7UzCrGxqb2YpihIh
         Ub2iaQkfLiZv6TgCXTT7hhakFx1qBd7cLkHKecGwG9LAtV99CsiWAf3KkAedcr+eONAd
         TkQQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5305ds/inRTfOzxEfUHx3XWUEepnjWS8Fc8/RB9jUqGCo0oJ2Uhc
	BMHosUiq19aZHzkc0/M1VTQ=
X-Google-Smtp-Source: ABdhPJyCgoU6LSX3wceGRnYutKx0gWbBUiu45ZCcpTJy5vdvu6aJ09bWuWsnQ1oYAXkvRTUfP/liRQ==
X-Received: by 2002:a19:c350:: with SMTP id t77mr8732505lff.152.1639087795590;
        Thu, 09 Dec 2021 14:09:55 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:234c:: with SMTP id p12ls33063lfu.0.gmail; Thu, 09
 Dec 2021 14:09:54 -0800 (PST)
X-Received: by 2002:a05:6512:b10:: with SMTP id w16mr8883404lfu.223.1639087794452;
        Thu, 09 Dec 2021 14:09:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639087794; cv=none;
        d=google.com; s=arc-20160816;
        b=E/K9V1JfqQVqn3hJoWylPkfbgOwbbAG1hyaC9Um19hQulASrH16XBXvCMa/xHe+QDk
         KO6EtFn2OWlcRbTtHlVW/A1raPI5hk2tw/xM/n3anRrHuExIef+XdAFcpmxxaniiqBes
         4gouPXMze4xPMts0fXykfxCtxypsi0/LitvijO1ir5EJSRoSaVQadBW4ZnBklcGlxiLc
         38mdFYCWzVQEG/2oQJwRNRetuqQSxVigammfrlglic4dXYxXHcMdFBhordcZqKvg/20h
         83k+pqYpFwcNUU90/qeIdKtS0K/UqcozAr1pXwtxQOy8wHVBGCEmvFGvG8duXKw/Yevq
         ZiEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=B+lqUDLWtnvLeY/KahuIZ2Xvfr4Bwoi1ABSMRvnITCk=;
        b=hUvUtKRWF5i5OPGF1XfXt8M31J2nM5ySli3KkkgbHRlvzxxgfW7n0OdeVcGVT7H6Ww
         WYwaK9jvcmxYKXnQEcUdNI3TK9bwLDhrcFN0douH/6PPtcBakSSQjyNC/AQLkfXX74sk
         j/Hyirp21V9C/QLdUUnX+kKtFWDm/IqUGdxDzieVCPxaIgxeQnI6oj0boXis2AjTMEir
         o8Y6QDn6J0fAk4Ya0VWIHetykLI/SpByhUkJBa0c/3G3BTUKQXMNj/yJbmsowleTM8ws
         U5pQ3Hg6oUmQL0GWLc1v05ocG1ZIGi3zHAOio8e+zD8hD7xjTybQraaIeScOsWdeKGrG
         /8oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=WW18ExaR;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id y8si59002lfj.0.2021.12.09.14.09.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 14:09:54 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: "Tian, Kevin" <kevin.tian@intel.com>, "Jiang, Dave"
 <dave.jiang@intel.com>, Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 "Dey, Megha" <megha.dey@intel.com>, "Raj, Ashok" <ashok.raj@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>,
 Allen Hubbe <allenbh@gmail.com>, "linux-ntb@googlegroups.com"
 <linux-ntb@googlegroups.com>, "linux-s390@vger.kernel.org"
 <linux-s390@vger.kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, "x86@kernel.org"
 <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <20211209205835.GZ6385@nvidia.com>
References: <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com>
 <87pmqg88xq.ffs@tglx> <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com>
 <87k0go8432.ffs@tglx> <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
Date: Thu, 09 Dec 2021 23:09:52 +0100
Message-ID: <8735n1zaz3.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=WW18ExaR;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

On Thu, Dec 09 2021 at 16:58, Jason Gunthorpe wrote:
> On Thu, Dec 09, 2021 at 09:32:42PM +0100, Thomas Gleixner wrote:
>> That was my thought to avoid having different mechanisms.
>> 
>> The address/data pair is computed in two places:
>> 
>>   1) Activation of an interrupt
>>   2) Affinity setting on an interrupt
>> 
>> Both configure the IRTE when interrupt remapping is in place.
>> 
>> In both cases a vector is allocated in the vector domain and based on
>> the resulting target APIC / vector number pair the IRTE is
>> (re)configured.
>> 
>> So putting the hypercall into the vIRTE update is the obvious
>> place. Both activation and affinity setting can fail and propagate an
>> error code down to the originating caller.
>> 
>> Hmm?
>
> Okay, I think I get it. Would be nice to have someone from intel
> familiar with the vIOMMU protocols and qemu code remark what the
> hypervisor side can look like.
>
> There is a bit more work here, we'd have to change VFIO to somehow
> entirely disconnect the kernel IRQ logic from the MSI table and
> directly pass control of it to the guest after the hypervisor IOMMU IR
> secures it. ie directly mmap the msi-x table into the guest

That makes everything consistent and a clear cut on all levels, right?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/8735n1zaz3.ffs%40tglx.
