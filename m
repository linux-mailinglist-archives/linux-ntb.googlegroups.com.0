Return-Path: <linux-ntb+bncBDAMN6NI5EERBWMXUCGQMGQEZLGK6UA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7DA465A10
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Dec 2021 00:57:14 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id g14-20020a056e021e0e00b002a26cb56bd4sf18526665ila.14
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 15:57:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638403033; cv=pass;
        d=google.com; s=arc-20160816;
        b=WM/7tP1Bqso6eHXIsATaueokXPpqI2/OFzwY6XbJ3hDy8QrU1JqG+Gimw6JNfLlQjC
         6b8y/kiDGfKaKIWCcrEuGuunDfBRF88+wPAkyi5vYH9RcJYNo2p8G+cjcu+dsthPBJA+
         HJQrVt6dCBxVogXcFL6yHEPx+15w3uxWawL3DVyvG+0Y/rvoaJQOKoqXvT4VaZ5OKGdT
         6edtOI5RLKIL1NlYqDxSvdIpNskRA06Fy9kTDelts6//nu/KBc0tO2UkvUJIVWCr74U8
         pFEFp6xdn2777SEu4gb5MJzOQR2Gr3mRtUuzSQw9TflRXPwx0C0agamDac99NxJEBiPg
         748A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=JEM9bVx6lZgE2K/gxF0W7dfDChjLX7+EzPnhch2D2bk=;
        b=zjcq/EnJSHzdxjClJHQF4+gqNWnt7cio1u90mbu6wY1X7T2hswyrb0ZGtJXTxnpTG1
         LkGJZSEAUNYD/MoB23zdHaxziECwkS9U82viYPA85r7uYWwOIRDUNUvoIr0bv7OOdGXt
         hIIY4CmuBLI47TAVgsmC5Tks/mvGazfZouPg2xIpqmFgw01sNlZxgSJo6XcuvfZHnoJU
         p419MZwfoXH0DHx4h+Ont/9HAkJoH6dVBpxlF0YVf4MuY1RV3jNgaNcQS/q7iP1yk9r2
         t+yIIWrLe1A3zamptYmXrUd9r+9EQJglUjgl3zn8Hs91rgGV28bSMQiWb2WiykXWoVpu
         TUHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="Ex/oTvgG";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JEM9bVx6lZgE2K/gxF0W7dfDChjLX7+EzPnhch2D2bk=;
        b=Pg+kExnFp7Lr2FuAp9PelAdUQIjkacfOosSmcvyeswXTm1hAzZtMzba+MJ+VGxXHp/
         2gH1/c5HC27/RUMsChHCdtACsLY2EUbWGwqcUpzVDQfPq46DRhtx3fEKu3YwGEPGple9
         vmaN2z8EquYkBLmb1dwHHqGKGIie3fbM5vEZjEjOioFP+/3xSfCO3WamdWVri9WTkJtu
         /51F/VlPaATAXj31uyg6thuIvUMNZz8Iwmfi39mzlwCusr4lqIvuXcyCnwMPrAsB02ae
         itWFAb9eveOe/OtQNpq6rcrYZbbi5mkfNCb3cHTrTfO5SOav3+TpA7ob6csjeaOObu9J
         RQ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JEM9bVx6lZgE2K/gxF0W7dfDChjLX7+EzPnhch2D2bk=;
        b=57auYKGkMV3opqx58Tv2XF5BLasP+qV7baewJ97uRymaHHQqndUrvbdYqrGZmbhSuK
         ktr8t37WELuDqXQGg86r8cZrIuSh/3JkxJlssCjRnopaHlIuTUnAvMo3FV09S09lWcqW
         wVGu/Oaych/ic0/naKsbub1QWdqPO3hP7sTTolofhfYiTvq7AvK1R3aJBhe/KKgHP8LG
         NlcehbwnMcuSUA/QpDoiy9Ae0uY5uSgR+D1io0LKTqncjD4IHdp8BGVjzOnnEP/1je52
         g8pCsoO0SNFxi8cRCgsfa1R+/YTPA6RJnO4AhFyyKSgjhJhSG81bMWW81NbkL5t3gHRE
         IIRw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531UJF061dRb9G3+j0W7lo8Q7ylXzBsrgckj+Yj/aduWUBElfPPV
	8GJKbIC66KOSkITkgv9X6jU=
X-Google-Smtp-Source: ABdhPJxXNetwibhIwe3OBeE+POA0t2rcMufsAzvl5v6U9sGcU9ogwQ41aE9SCbK009nBPDDauHWx/Q==
X-Received: by 2002:a05:6e02:1a03:: with SMTP id s3mr11122464ild.73.1638403033462;
        Wed, 01 Dec 2021 15:57:13 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:d50:: with SMTP id d16ls375426jak.2.gmail; Wed, 01
 Dec 2021 15:57:13 -0800 (PST)
X-Received: by 2002:a05:6638:2727:: with SMTP id m39mr15441728jav.75.1638403033083;
        Wed, 01 Dec 2021 15:57:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638403033; cv=none;
        d=google.com; s=arc-20160816;
        b=AabcY87P4EWxflqn9CEegbVhmmxJfx4NZg22szOAco9T0Bhlx+1scRwxnTp1oBSiz2
         87qjjHFSEhz4YSjyOHCPVk9UzaqorJxe6LvJG+MZmDkWqIMpINjMvxuTW+2r0GnSAPs+
         FL3Txcf0ohGWcxjWNDVlBCLnZeYjdKpudPrEXiiaCJOYugZ40QDyV+PeEjlf/vJCpKb4
         m0XSIzfKNTXysMplEIdL9QOeVRV+BgRJEuafVHF4smwAJgyGRZLQBoO4BMThU8h2hHL9
         jVzYzZ1Cm+Z88hRIQYUGkjsDprDfLua7HKwxe6QLNm7hlVe5wtylP3QZDb1HKKbiLQDW
         qd7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=HeJ90O/nT9kyUM6cIwdOXyo+g8KJsD3Gi26lD2bQV58=;
        b=jXqS2O/M/McmyyghYY81vY837HZTkk+JY5eGsGVJJ4RpXD+U4wYINHxS2GT8EespgD
         89ms4QSMWwKm8K5847zDCfLVJHECkmebRTrO4aDF1YCAzOtrcjS19ZR9PodWnfpNMJAk
         gaZS1oBwHj1pRVxFA9Purt5T225QxjyGyCSs2hrgQq/YEIKr4ef7tJnprLNe+kqkCA47
         AOlz53OWWhRSUAoCXNBLOtIbUXBdPHarPhlPdQZws2gWesDl226oGbFtgr3tUV+yDqsd
         Pb4fygZCMTGOTAvSRfyOcqQrfpYnJjjK8716VW0aQSYbeHgQ+icwwq5wUDp2i6DWWoFh
         lG3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="Ex/oTvgG";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id y14si220114ill.0.2021.12.01.15.57.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 15:57:13 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
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
In-Reply-To: <0eab4c0e-c672-1138-2d95-3c9bee9ecdb1@intel.com>
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
 <45302c9d-f7a0-5a47-d0be-127d0dea45fb@intel.com> <875ys87zl5.ffs@tglx>
 <0eab4c0e-c672-1138-2d95-3c9bee9ecdb1@intel.com>
Date: Thu, 02 Dec 2021 00:57:10 +0100
Message-ID: <87tufr7uax.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="Ex/oTvgG";       dkim=neutral
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

dave,

On Wed, Dec 01 2021 at 15:53, Dave Jiang wrote:
> On 12/1/2021 3:03 PM, Thomas Gleixner wrote:
>> This still depends on how this overall discussion about representation
>> of all of this stuff is resolved.
>>
>>>> What needs a subdevice to expose?
>> Can you answer that too please?
>
> Sorry. So initial version of the IDXD sub-device is represented with a 
> single queue. It needs a command irq (emulated) and a completion irq 
> that is backed by a device vector (currently IMS).

thanks for clarification! Let me think about it some more.

       tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87tufr7uax.ffs%40tglx.
