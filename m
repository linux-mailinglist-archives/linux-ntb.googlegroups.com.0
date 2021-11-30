Return-Path: <linux-ntb+bncBDAMN6NI5EERB5P7TGGQMGQEDY7PN4I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1AF463ECE
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 20:48:06 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id d20-20020a05651c111400b00218c6372b7esf7957807ljo.16
        for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 11:48:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638301686; cv=pass;
        d=google.com; s=arc-20160816;
        b=AKjytr1ojZeg/tun0OFIY++Lmny3VarvM0wFe/as4mRtQO7yDE23H70MwHyfZEiH2+
         6UxdAmD1cCA8tBA92bxTkU8Z/RFFrs3vOMZiOlZvCLsWf+PbB5izwcOMjQQzBPUN4oRe
         b/MwzmBANO+007ykgu99CHKcD0TbtEDVK8GKu9TK0V5TMH6c50MSTB18JEU62SLNHFoS
         8H6zTsNRlsxpelhh7sTgBdCw8HqmvtKIiYba9Ul9adjSim5IG6ydyuYqzkSa4FeoeyKe
         VhfDwnALZzkEG/DiHkOVVYLZgTmN4akHHwkrtTy8fC3eXMG1/FazpShMTToWOFTH8ClI
         oXWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=PWSxpjUep4X5uK+OTn4KX48DCajYW+Dx7P5Q/GN/Ots=;
        b=fn9AnXEZIlpcVccG2oFR3Wlsu+GchugvwH/6vQW8awDsP6erjjRiyXTh+DtI1bLxb2
         /pNcLaKBpBpFGS2WsCtNPhWQjJM1oBE6IqiHhmQkYWHv1Hwf2NagI5zT72rAQycfq0ir
         J6QRawKB8mraZZ9HgXxByvmcXV4RxBUrwY8t1DoeDcJr00r8k79OupnTwB1+LkdQiu1l
         P370wDcaJvGyrKtQ4ZqbVvCm2821d1Mbv+drt8vEG4/XCSANt211KRCsckVHvnlJJgzF
         3NCYBjAuXz9fs3QpZZOYz6Cs4Yc7wUGjRFfTDvVPOPk5mfg7Y4Ww+eT4hhnlfWxsw7dE
         rOSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ImCfCdMo;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=d9drm8P0;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PWSxpjUep4X5uK+OTn4KX48DCajYW+Dx7P5Q/GN/Ots=;
        b=i2EFIOC0N3jqPldAmYlDrwWyj+qUbdMYY04R+8EhhNeQ5G5j+rN7jIh2A2nnrUxYk9
         CN8sAq2h1I/StJJ17yC8TKI4Gi0u/hBLAL7+B595ZT2FA521XenoS/PAeR0whK1cNpQe
         tYMPoE95tHEYDoZA11aZDhFFdETfWWBROeAfQReRKS02hbk3mwMbgyIUa9u1kyNbc5DX
         txCP7LjPrwcVnYfloi2650iV7j6oHW20vCwjDe5EiHXPTMDj/kGRtaEKY1bJpWna0itF
         0icGQiUCMXOdS4zahSlEUZ1LW/4H5ecWCc24XHuAF1NCfKHLWlmNPPpaLumsBJemWQ5l
         4vgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PWSxpjUep4X5uK+OTn4KX48DCajYW+Dx7P5Q/GN/Ots=;
        b=fMtvomoYs4Pb6VWIJQuGJlszsWT5Co7aih8A/G8Mr7szB4LiWc1ystV9BQeMCXI6fH
         w4dtL+B7hxQ/4Pk+uIGof48FRPLGJx9sCY95RQ39sxlonDb3vAlOjeSpENJ0x6kMe8fV
         UOnmxYfILMTN6Hlitbyu2iytTXyn7hMuzcz9QS/RpphbcN47lm8v+CJYUXWWs5qd3mpH
         6FydJ95H5Oc5q312t/ihI4dXV7a7d7Zq5W/d0Efy30mLkbnvE5CB/jbbwy6e9OY+giKX
         CfKcFtlXMtsaF7nMNNNoV+WiJjmxatTxPJEC28h8OENl3Z831xoG/ldHLXCmSAblfXAj
         Lq/w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533NqXBEZV0ua/cMJy/GpaJ4eC1ji1CsOYnuDflgrOm4BwhTjfpt
	U8JDFf0kCwBWYPBk9t1sa2M=
X-Google-Smtp-Source: ABdhPJz8N62CxA9qg/3opPC4CcBLzDLhYd3GDKw8XSaMQ9M/O0y5BGgQOmpB3zC+/qaip1fz2rKqfA==
X-Received: by 2002:a19:ee01:: with SMTP id g1mr1343556lfb.44.1638301686134;
        Tue, 30 Nov 2021 11:48:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:bc09:: with SMTP id b9ls2713898ljf.2.gmail; Tue, 30 Nov
 2021 11:48:05 -0800 (PST)
X-Received: by 2002:a2e:7305:: with SMTP id o5mr1015301ljc.180.1638301685155;
        Tue, 30 Nov 2021 11:48:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638301685; cv=none;
        d=google.com; s=arc-20160816;
        b=MUGBiFWbobMLCtuDES1kjez2yRYBogcjDtX+5oqgE/ASP/4gmqVuE32Qt02znTn8s8
         Go+BxprmFAwsXXUppWjCHZ2CQk+GhpiCSIaaq+jCV3R08RYC6r6pxS6I4m0BWjizw/Bg
         Gq5sfJgdMHxXN/KalaMA56gjU/AGASmAmwh9gBxoHPhjhKq0i+9u39rbvsV9GagaaBR0
         KBnAZUAybZdC19jZViKDfFiPLzRew5tO9AQMkcgGyvZCDbJL97FEJgTeeabXa4AYSvVJ
         exe6yg8Os4hk3XekmluhCINutb0wWBr7AvLZjIz2zetoU7frdGpPHOdhADdky/a+ZqN7
         OqGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=1PGGF31MvMk64+aUTPz1Do+PDXuwrIRZVKdbxPEpPtA=;
        b=QaqHc1H5eXgEGjAAZxV0Zi/qR1jCpo8oM8jypL8C5hYkIdh7EE/4dtmOXGHkE0Eu8T
         z3cgmho9ndxttssXNkE87U07jNWB4CWf2VvGiyenuex337NVKwtUx1JTEnppz/kAlkxR
         YkHiplYowJVSNUst2N9OoXi/tkUSEL8n0SPFcArShbEISsQFS5pUxzGWBIzfMsw4WEyo
         bldWFhEL9ntIzHC/P7oS1kfAKRc5IVga+EwDgotf+fgSzqm4I2vOqsEejqDXfawswxr6
         bbgBvmWMgxLXT/p/B7N/iDJDROJNY2Q72QKU1alSDqkiuhSM3y2wW6KMe5hm5QFk55m/
         mECg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ImCfCdMo;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=d9drm8P0;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id u19si1435802ljl.5.2021.11.30.11.48.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 11:48:04 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Logan Gunthorpe <logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex
 Williamson <alex.williamson@redhat.com>, Kevin Tian
 <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>, Megha Dey
 <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
 x86@kernel.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
Date: Tue, 30 Nov 2021 20:48:03 +0100
Message-ID: <87v909bf2k.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=ImCfCdMo;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=d9drm8P0;
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

Logan,

On Tue, Nov 30 2021 at 12:21, Logan Gunthorpe wrote:
> On 2021-11-29 5:29 p.m., Thomas Gleixner wrote:
>> I'm way too tired to come up with a proper solution for that, but that
>> PCI_IRQ_VIRTUAL has to die ASAP.
>
> I'm willing to volunteer a bit of my time to clean this up, but I'd need
> a bit more direction on what a proper solution would look like. The MSI
> domain code is far from well documented nor is it easy to understand.

Fair enough. I'm struggling with finding time to document that properly.

I've not yet made my mind up what the best way forward for this is, but
I have a few ideas which I want to explore deeper.

But the most important question is right now on which architectures
these switchtec virtual interrupt things are used.

If it's used on any architecture which does not use hierarchical
irqdomains for MSI (x86, arm, arm64, power64), then using irqdomains is
obviously a non-starter unless falling back to a single interrupt would
not be considered a regression :)

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87v909bf2k.ffs%40tglx.
