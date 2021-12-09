Return-Path: <linux-ntb+bncBDAMN6NI5EERB6OOZCGQMGQECSIYS4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A56446EC5A
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 16:57:46 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id 83-20020a2e0556000000b00218db3260bdsf2023671ljf.9
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Dec 2021 07:57:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639065465; cv=pass;
        d=google.com; s=arc-20160816;
        b=pA35mF4XGXHURZz0bhFOYKUs+N7oF3rjI//THAe8UYqOmoGwVcWEuu23OymqWw6OR3
         Xl9z9LNPislzFiWnACFqzi9iBMaPyDj79t0HLJdf1ZokSaHc+ldCcDEp3ZZ3Pkawf3tO
         J1A5mrQZKkoDDDuzz/kiG2KShrHSz1iXIw/4zESs1ahxXYu2Ml6g0KDaJ9froyo5+mEh
         hPlE1vEY1VTUkLeOIpptmlp4ne9f0xxRQuk63Nv02Vctvwi7agHlT4+BITn3u7Gv20YB
         zSZWvMMvJ6xHHLv+mny2O/tfsKl4197my6ziA2usPbvU8aSfQTaYK0dgRMbVVCFG1NmR
         CTuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=YshxpRRJu5zV5x/jV6ntrjwbdliYNb1bmFPLPhTIizQ=;
        b=julKcwyMbeSfBrtt1nlqNA34IyGZrX7LbwL4K3MORaFq67vwvyvDWMltfN9nBihnxc
         XQmnzdTod7xv0s2H/3gBc82g/YXqXACw6yu7xjWQQ2XF+i0BBt5YkTwTdhK3ernMGSKb
         ug/tsF87cd3cB7yrcrap2OvL6jQIwxaoouy7MJWK5SCXjUFXgeUJ7g2+yOjKKHGL9eqT
         jA9ffYPgkB3ZzAYS0GbtRgta+eSbhXLjxHQUYmZqKSBLOGA2wkYS7ETaPSj6EbMYloGm
         yTFxVvL1TlLMl39wK5HNL2sV5P7hGMp4zJNLoswQsEQjM4WW7odoPvz2AsRH76VZetPy
         TH1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=HCnrcDa+;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YshxpRRJu5zV5x/jV6ntrjwbdliYNb1bmFPLPhTIizQ=;
        b=pYD+In9+MCauCzUJwdFBK3yXxebXGsTXM7xFVF3Y8KctN29EJPk349iWoZEcK/5xlg
         1DTX4wvrNQcfSOWGssSwUUA5CEj+OczJv0y0zDB4LFZ7qVgwFqSp1ZGQCnaSyBHVluhS
         TXjEMCc4EDgL3m10dwf94F9ysi4Fexda3YrL58eXZcJg7xU3IozGSEH+N6aDh+KrzlJ3
         0+yf9A8kuzKspyKflNg28F9XbizNyAIfpFGhz4iCb8SBQYrWafB/XRCIhCMo0Ns6W/hv
         qf9zYLLD2Zb7sjx2D1yZctEmj6Jvvrx8ZGLc3hWcih7SFmyoRGtsgEo8FhzeWzf4X7Z4
         lu1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YshxpRRJu5zV5x/jV6ntrjwbdliYNb1bmFPLPhTIizQ=;
        b=3QDYsRRKblgbvJEqzt+nZ2AkSpiMPiJLobUoGuugkaRxmQwtMFTrDnin6VK/MCrzRj
         VPOtB3AVrjCqtGn4V7c3dL00smV950gax7uxZeeMeYLtszepx9UySpuWZEZa5fVU7aCR
         /n2NpLfQfqpF24vifJ+iYaaGG6ZGloBboEQ77QErifOtRHL/QPqdFKVRhMN1Gb8Qujuz
         Bj+cUTKtikrzLOthCrpl2JrK0kMfLuSm22+st7tv+2vou6Pjf49eO+7zMsmu2bGgLM+u
         woFHzqdbiccK4fLcjEEhX1MIOsQoGb6URsj/bbfTOByFHEUX59rEmT0n+Nqa8MxhfF1D
         cgrA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531XV7XOCpfgHNV/bYjWOhR5z0vB0r4mrhI7mwCc4aV1DlFEEbx9
	d8FmXqIJQ5rHnWRGF17Opjg=
X-Google-Smtp-Source: ABdhPJxgWqTDHNHDTk3/moL4fA/TIcnC0soXdN11yAtxRqx0zqFQtoh2dt+YRLvcBzmmK0F+SGpxUQ==
X-Received: by 2002:a05:6512:3a8b:: with SMTP id q11mr6958260lfu.94.1639065465692;
        Thu, 09 Dec 2021 07:57:45 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:a7c4:: with SMTP id x4ls998753ljp.8.gmail; Thu, 09 Dec
 2021 07:57:43 -0800 (PST)
X-Received: by 2002:a2e:95cb:: with SMTP id y11mr7174989ljh.461.1639065463144;
        Thu, 09 Dec 2021 07:57:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639065463; cv=none;
        d=google.com; s=arc-20160816;
        b=KQZ55A1jGSkpVY9OfUpK5Ngramt3sLL5EfWQVk0jY8476oZtiWnS1h7VhPDNZcZ86j
         bU4Np2pa7/i92S0UaS+7YgeqzKRvtFHs5hgnyJjXDYZwanQqTpYG4AU6QJLV1PodRDFy
         6LrJqpDCKcsJxsPNd2/ins+yOJZdXIIK7622/5PMpXmK3XuGbey5Rl6XD79+euu/MAQg
         dcHK2EnOI9kaebokPJ55OisTSWXZuk6uvIGgsT9vZ56yRHZD6DmoxlD4vzwxkrXXKlDy
         S1HZbskr+LLVUM5LQrG0FSbybD0Y5P0KL9LIL9upMGdskNQs4AOLlXvScRGRhznkEUew
         wpwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=14WfH/W9sOwaA03mQuVJyudscZd8WKKilKyxkGeP1Hw=;
        b=e3t/JDiHw/+NooImxA6rU4s0lgX7qD5jviU4NFI7KplVyyOxwqWSNM3IZCr35XkCO2
         IdEmCcqioK6NqWMwPbsQ07iFPAQDXfZBRwxxSahrD6W48CofXL/eGaNTLH0l4bSB3EOS
         qsudQPLLDXX6iRB5lAiQPPgRpdIczk/tWYmJUOjoN00yqSDOAZ+wxErItZlS6gMBKCCx
         dkRe8EjGvaI2duHckO8sNA/KX3csA1hQqpBYsDhwLQpu6xQGXZomIS5T45ZU5XDEzpFL
         jsz2HMyxCFm4YRqjgJXy71Vkv+kMgNWPCKncH2e6+e8Arug/joQ+ZyLjs3v3I1HnWVoF
         kvwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=HCnrcDa+;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id y8si14926lfj.0.2021.12.09.07.57.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 07:57:43 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: "Tian, Kevin" <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 "Dey, Megha" <megha.dey@intel.com>, "Raj, Ashok" <ashok.raj@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>,
 "Jiang, Dave" <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
 "x86@kernel.org" <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: RE: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <BN9PR11MB5276BDE2AC58ADA7A66CAFBA8C709@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com> <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com> <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com> <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com>
 <BN9PR11MB52766CC46D3D4865308F61D98C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87pmq6ywu3.ffs@tglx>
 <BN9PR11MB5276BDE2AC58ADA7A66CAFBA8C709@BN9PR11MB5276.namprd11.prod.outlook.com>
Date: Thu, 09 Dec 2021 16:57:41 +0100
Message-ID: <87mtl9zs7e.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=HCnrcDa+;       dkim=neutral
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

On Thu, Dec 09 2021 at 12:17, Kevin Tian wrote:
>> From: Thomas Gleixner <tglx@linutronix.de>
>> I think you are looking at that from the internal implementation details
>> of IDXD. But you can just model it in an IDXD implementation agnostic
>> way:
>> 
>>      ENQCMD(PASID, IMS-ENTRY,.....)
>
> Not exactly IMS-ENTRY. MSI-ENTRY also works.

Sure.

>> 
>> implies an on demand allocation of a virtual queue, which is deallocated
>> when the command completes. The PASID and IMS-ENTRY act as the 'queue'
>> identifier.
>> 
>> The implementation detail of IDXD that it executes these computations on
>> an internal shared workqueue does not change that.
>> 
>> Such a workqueue can only execute one enqueued command at a time,
>> which
>> means that during the execution of a particular command that IDXD
>> internal workqueue represents the 'virtual queue' which is identified by
>> the unique PASID/IMS-ENTRY pair.
>
> While it's one way of looking at this model do we want to actually
> create some objects to represent this 'virtual queue' concept? that
> implies each ENQCMD must be moderated to create such short-lifespan
> objects and I'm not sure the benefit of doing so.

You don't have to create anything. The PASID/ENTRY pair represents that
'virtual queue', right?

> If not then from driver p.o.v it's still one queue resource and driver 
> needs to manage its association with multiple interrupt entries and 
> PASIDs when it's connected to multiple clients.

That's correct, but there is nothing problematic with it. It's like
allocating multiple interrupts for any other hardware device or
subdevice, right?

What's probably more interresting is how the PASID/interrupt/RID
relations are managed.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87mtl9zs7e.ffs%40tglx.
