Return-Path: <linux-ntb+bncBCUJ7YGL3QFBB4VNUOGQMGQESL2CAYY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id BA738466532
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Dec 2021 15:23:46 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id 83-20020a2e0556000000b00218db3260bdsf9666692ljf.9
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Dec 2021 06:23:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638455026; cv=pass;
        d=google.com; s=arc-20160816;
        b=FFllXX/ElexyrRHqqI9CTZyw2YrDCNguG+bEwQyUFXQKHE2CA1bTFbHP00N9S2jeSh
         sD3/TjQQHrhcEF7OnAHklH3H6HdmLp32z+4ebNGJeh7/639mLBijgKZ3wT2VeCpAlxE3
         yn7AduDh2GLqcRNBG0H/11evdew7jTiAynsavi2+2i8s2PY2b9NyUqHCDlSiHdbqU3HY
         LlGcn7uyLChmA8gyco0ARHNeqQM/EKXgfCLUc6BxsehiivjbpQzT7lgNXJtT4ed7v3BA
         ktz3OijuprTGj19xRefiCYKKgkFydplQR1dHZRbqW1IZC4ugqNfAq0llu1+kfbLI/2Af
         BZYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cB45ZfAGXRoELNh4D+/EtGeTr9/H3XFPwn9+lgk7bNI=;
        b=dbt1ejdO3A5kG6tI7TMly6PoTcnatLu3x/zgKCOs5WM88vgr35Pkj6BNoNlRlV4Hz4
         I5Y4xb1SUm/pldfZkAMOLWZbu8mJ7TiNYO/swquzjn8Tsydqwcs03ffJAiYje7ledkxQ
         rojXA+Lt/KVPMroNgwLtOBPVghSDeh3wrKqDrlRLYbSkF/RC/GwYCMedMs84PwK2usz8
         iCGXkwUtecRuP9J8s2YGxb+Fe+ec2Xts6YmOA0FZZouBaE8uvDRrVw1nXOQwnKlSG7Dk
         em1uzDTadUg4Wo/9KrQWZYbTeCQsUBDaUzoLFS34sMghDcZ4qIt88A1iH4wuNeliQXYo
         y0/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="d/aD7jGG";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cB45ZfAGXRoELNh4D+/EtGeTr9/H3XFPwn9+lgk7bNI=;
        b=J1Fw+qg5Sh9nkdsO6Lsur7cx7gqpNVl9JcFk6eCz5+j3o6rxhzxGYFIjuFgO5xZ6t8
         UgdFiDmYdEYsZ9z9fVGGwWmma5DQDk9SFzeoIL6EJoFcOcMPv8HjupNNUMSOGJMhV5IB
         PQKZSfx8x8G7g86aPHiHlduSFH8nkbU2b+gkxf8efic2sieMzUST9EBHo4Yuw94edgnc
         jDU9lK7UTq/8U0t+v8SY4H5RM38SSV3XZIz5NHHXpv7ev9NjThMeI+eMJwnDl8M8y9hH
         BMIUK5MtGWsvnnsGs+WtrFLgVkAzCISPhhgqt8oj3+4iW0rdN41fyNqgBeON9zSZYrAQ
         v8TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cB45ZfAGXRoELNh4D+/EtGeTr9/H3XFPwn9+lgk7bNI=;
        b=fOOXWfvuND1RANklZ5iddAiHdHn75XbufHvaPr81pLCmleumE8FS5G2Emy5XAUqylL
         iSFU87HYcC+TMxy6PpyViLA82fqpGKyps+ao3bWL/bC7yY1bzuZrkxQbgTvlF2VMipFy
         w5AVLZXD4KiR+wyezJzjR8SYZZ4HhjlGq1jWqS4UlvfUw55SZKcA/VRUHdNC/sfGXMKy
         P+6Hx6PyXVQX46CZp4A/G5dzJSa/GZoyAXlRfWcrFHjOKa1QlkBS3J7FpaO09FBnVqz/
         VpZq6NLg6beIL4cmy3gwVBQSQJd5hCzaOwyVWcc2skf9Che5yznlo7LDOBWBFwxBMh6Z
         2IYw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530uzVs9BvvkLGiQJVuPKyOSO5fQaWL+YCvQNEU7PCEbFzUZxxTm
	VqdJT2aFpN7dBXzh2IYsBZ0=
X-Google-Smtp-Source: ABdhPJz0DIabumdD/Nvt51HtWMzbQdI7IQvFNY0enA5Mf+GUes+yZXDKhuxInPYFeddlX/+Xc9ckIg==
X-Received: by 2002:a2e:80cf:: with SMTP id r15mr12465030ljg.34.1638455026202;
        Thu, 02 Dec 2021 06:23:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:8611:: with SMTP id a17ls1045397lji.1.gmail; Thu, 02 Dec
 2021 06:23:45 -0800 (PST)
X-Received: by 2002:a2e:86cb:: with SMTP id n11mr12412204ljj.425.1638455025259;
        Thu, 02 Dec 2021 06:23:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638455025; cv=none;
        d=google.com; s=arc-20160816;
        b=0qFFSncEEKe5MHjcOdgogSF3ZIgR4qD8TcgK7Cz7/Dcy1pFx3GfwNen+DCzMuOuhxT
         wmnIwgl6U9lOLxDPVBiHgaaV/ZLEujOJPbRDiFHd7qXpCVKBUmnGuBEYk6THZ2ja0tkl
         L7VPYDeLnw8rgZllOfioqXmDBOLTMXhVHMvfwCTYsNkkxeALBYNysQ6bRgxmcPquKY/v
         8bm8agQ+yvrD4w+/PiKm32ACjkO1K/QAVX4XVGkvc2kt/hevwVrYWaRVNmde9mKTFqHr
         AroL3cioEoKEbSuOVUE7R3otlZq0J4pSlW8tsN+JnSQ/qEYq9oP3OaflYR7Phwzl3HIL
         dfjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4uqCtq9hS7+PfIInjdlbHpIvXncRHrtHn86ak1ZHbfk=;
        b=n9V7nxAoy0GnfR5QzoH49E7KmcuGfqsIzsEZcrXqmShz4YPaH4vsbHIZYfP2mFUjBY
         6cnJxuS6iDBA4wXdGNn/QM4XGPPIgUPNFDbXxtQOGyQI9ezAuS2LClz7Y8uoQ6+ojyj5
         Oo+gDZxz/dotYCzbBcmSawQff0WQHYfpb6JY6Y5D89UdB0jem4V2Mo0EZta6PfWJz33v
         CFRdTtJg5qiFPuMBZg6HH6E0ASDJSMpvPx6a0i50agqzzooe/+ktkHywjfA/gZHR1YFf
         PL4i6viMUICwpBWUsjvjRBZ5FTapa+QAjJkXngkZOB3Jko1ZgwnQp3NrYwMjyAAEOhdw
         tb6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="d/aD7jGG";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id e18si223259lji.3.2021.12.02.06.23.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Dec 2021 06:23:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 34D2CB82398;
	Thu,  2 Dec 2021 14:23:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 153FEC53FCB;
	Thu,  2 Dec 2021 14:23:41 +0000 (UTC)
Date: Thu, 2 Dec 2021 15:23:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Logan Gunthorpe <logang@deltatee.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
	Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org,
	Joerg Roedel <jroedel@suse.de>, iommu@lists.linux-foundation.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <YajW6veanK4GZUkv@kroah.com>
References: <20211130202800.GE4670@nvidia.com>
 <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com>
 <87mtlkaauo.ffs@tglx>
 <20211201130023.GH4670@nvidia.com>
 <87y2548byw.ffs@tglx>
 <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx>
 <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211202135502.GP4670@nvidia.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="d/aD7jGG";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Dec 02, 2021 at 09:55:02AM -0400, Jason Gunthorpe wrote:
> Further, there is no reason why IMS should be reserved exclusively for
> VFIO! Why shouldn't the cdev be able to use IMS vectors too? It is
> just a feature of the PCI device like MSI. If the queue has a PASID it
> can use IDXD's IMS.

No, sorry, but a cdev is not for anything resembling any real resource
at all.

It is ONLY for the /dev/NODE interface that controls the character
device api to userspace.  The struct device involved in it is ONLY for
that, nothing else.  Any attempt to add things to it will be gleefully
rejected.

The cdev api today (in the kernel) exposes too much mess and there's at
least 4 or 5 different ways to use it.  It's on my long-term TODO list
to fix this up to not even allow abuses like you are considering here,
so please don't do that.

> If we really need a 2nd struct device to turn on IMS then, I'd suggest
> picking the cdev, as it keeps IMS and its allocator inside the IDXD
> PCIe driver and not in the VFIO world.

No!  Again, a cdev is to control the lifespan/lifecycle of the /dev/NODE
only.  Anything other than that is not ok to do at all.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YajW6veanK4GZUkv%40kroah.com.
