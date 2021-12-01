Return-Path: <linux-ntb+bncBDAMN6NI5EERB34BT6GQMGQEE3PHAUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1B94655A5
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 19:37:37 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id o8-20020a170902d4c800b001424abc88f3sf10685309plg.2
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 10:37:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638383856; cv=pass;
        d=google.com; s=arc-20160816;
        b=EEwZYqkUDHTqNPYgH2DEifopEPIncp+x92CdnDM4szFRRGcs2hw1J3e2Ljz714D+PW
         ky7vVIjuTv8F8bC9TQ9ME+h/39xkfETvFTFehNQ8wEj3E7KkckF0FIt6uj0gCtc72KJB
         JR6op6lGFPasCa1hy48XyzIiajtVfC3jpMFfwNJnf5r4Co6vjvO0gbcIPqP0QL9wHglW
         ZiKaIVHvh2oGfuUMKGhCc/pAMzxoAfrzCFlbPVpgJVF2jeaufyuR//94Ys+4kzCHiqM4
         CdRUuikTbQoP378eNjRhVj2mxBXsQnP2Dqk+H0YzKTUijCtJTWYqrwmqLC7QkbL6inlo
         yPsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=LFqS2Fn9LxeI1eej67cX4opry682SGZ3STSzMKwGHGQ=;
        b=JKNIugRJKc3gKdacEKUxQuVeZHtGsXmDsLmLkohN6jTYxRZiSWarWqNWQW3fbng9+X
         xp3Ayld4x5ALu9pgDC3MjyYD3G50vQCdDd7SW2uy4DYk1/oFjjDLLakSnybEscX6DTWd
         UIzfppKQiHAF0+nU7Gtxk3b5f5IBIxDMttCRzxKi8NqZheL/5WW++Lo9WnA7Z8jUMWUe
         8zO/cv0qqGhYjXWhYOHDe2c1MmQJqeNnxV0nDGN+kyXpG548OZQkCopjn8Irjx55q5vg
         4kM0y9+gBvQTH/7K5sQQ+4rapIjt5mYleLJnvrMlE4MyqwqP3i5FCS2aCrrv3piCVUNw
         ibVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=nXMiRjaW;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LFqS2Fn9LxeI1eej67cX4opry682SGZ3STSzMKwGHGQ=;
        b=TRsyw/MZ5xdI8H/XvARclznY13fxeJp4Ww1T+RC9Bn79rzpbG/fa0OoZUP3LhMJglt
         uNjrlGQav2oFXw2SHxMTh+kXQNvfl8Q+jCV/F/kvpd5jHqLKF062IBf4jG9hlh1M5v8M
         4DKL0dEJ7ToS9q9CJYMWhmbZ0vZisdW1DPfpAvVP7Ou+S7KbCAyKIMi1yLTqwsRcDvGl
         S4HeTKcAnqhW7t84gsf5M+1RUeSUA2OxYwWbmKwwnFeCUDSTxpcAfdFPVTMd1hf0dPtY
         eIF9kmrbzvwRsxtg9uCO0CuBqCEliE/KNHWh23Fgdnks+7r95hlU281XXB98GsGrUtwU
         IYoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LFqS2Fn9LxeI1eej67cX4opry682SGZ3STSzMKwGHGQ=;
        b=ynRRZKkUNMVpMBA//qAoZ6tkVu/3cBpySOTpRd+cWt+eR5MZFdiBGXS7bFEu/NiOpX
         eJdLBZOsxg4u+2g5y7GB7R/xaYDfRWBBIRTwbIP/e4cDCnoUT73DeT/37/KEZsze3F7o
         J5W2ty1ueITS+4/0Vva5CeU1eSlUArnnLpOuUbARy6WmMdOum9p9YeLmQSAkOPU5CONR
         jri8KebL2ICtpgVQlJHBkL1SlxCNrlTBDYmgyrZFDX5ifM9XEBFreyyB0QGRf54BVqAJ
         YLHtbABehx6a+4wTFdzL5jELfWDMLKXAlTPekdTqDNASeas7L2TeQRcgu7vtQMGuYiiM
         zANA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533EFcciu0YEFf6m70wN3S1Yexm4IbocK6RYmpFzsZF6yyWw16jc
	R3vdWiRXiAa91yrxYZjTBu8=
X-Google-Smtp-Source: ABdhPJwiljUQg3cuhcdkHSiRzNXGKxSWHsLqwJdy9yUHgzR1HdpuLY2rOZNoiX4Tc8tzwDDnyoZ4lQ==
X-Received: by 2002:a17:90b:128d:: with SMTP id fw13mr9639815pjb.50.1638383856236;
        Wed, 01 Dec 2021 10:37:36 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:e749:: with SMTP id p9ls1788973plf.6.gmail; Wed, 01
 Dec 2021 10:37:35 -0800 (PST)
X-Received: by 2002:a17:90b:2290:: with SMTP id kx16mr9704880pjb.193.1638383855468;
        Wed, 01 Dec 2021 10:37:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638383855; cv=none;
        d=google.com; s=arc-20160816;
        b=GELRQMJMs83d0EDzaH3w+g7/6hQXTQjtg6IC2zIESG1pBQ9nEcGbQEscyBP1rgtheE
         kR2m6/O+hL51BG4hLb16EG8Ah81diMWyYZGKaUg+PfcfDKZZTKJEKQdzBS4dw4D61Weq
         BpAGCXvVlQuEJkDHJm8jeAkdgGAJcqEkjXB8PKBIl5jmIUnIJaRKAPTX6b6kg0C6nHs/
         Mbxg7jJubp9Dbs5QVS34GCAzbKd/mVuJiY1jyaNEAGbML4zyhVGYRmp4TNdg2FJJrGiG
         Gny+rFk9WPfUaDZ5tZ643LLpSFHr/21UgNihgyxfGWXaIi7WBzbTuganQfxA2TykP9J8
         ZDxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=G7J5pGHISXVsNZNvGx6mpaYhl7xzevUiJitTR5UpWPA=;
        b=m0FbXG1gTI2r89IY7PWuqNBky9g6PG+foWXudpyyrE9z6Fbyzk9xIey2v2IAUDGwF2
         cjsKJC4qPgcZSlXpIbSl0EA3fQOLd6LSPHwd/02sTyXtYou62adKYAhC5odlvhTpGb+t
         5+0G+cudwWWA8685hQnRNp8q44zNm/Uzoglkh1G1Peu4Ie732BAojS2d0l6br1RHELh/
         jzaBwzZ4sDMbXmmcyWfQZ14JRzHOhylE/ZSp7TWPRjTbKrFSY7s1np0vQYqEoYyUaB9D
         4vjM8q0cw5UMMjYowOhF8Z0+QjOTDO1sSnAEldv1HgWiDupQRJIfWDJgqVF6iu/vJiF8
         qv8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=nXMiRjaW;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id mu12si434441pjb.3.2021.12.01.10.37.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 10:37:35 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>, Ashok
 Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
 x86@kernel.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <20211201151121.GL4670@nvidia.com>
References: <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
 <871r2w9y3x.ffs@tglx> <20211201151121.GL4670@nvidia.com>
Date: Wed, 01 Dec 2021 19:37:32 +0100
Message-ID: <87sfvc893n.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=nXMiRjaW;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Wed, Dec 01 2021 at 11:11, Jason Gunthorpe wrote:
> On Wed, Dec 01, 2021 at 03:52:02PM +0100, Thomas Gleixner wrote:
>> So we really can go and create a MSI irqdomain and stick the pointer
>> into stdev->dev.irqdomain. The parent domain of this irqdomain is
>> 
>>      stdev->pdev.dev.irqdomain->parent
>
> It can work (pending some solution to the iommu stuff), but IMHO it is
> strange/hacky to put HW objects like irqdomain on what is a character
> struct device with a set major/minor in dev->devt and associated
> struct cdev.
>
> Conceptually it makes no sense to me, cdevs are software constructs,
> they should never go into HW areas..

I picked that because it _is_ already used to establish the connection
to the switchtec_class NTB driver which is beyond the usual cdev muck.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87sfvc893n.ffs%40tglx.
