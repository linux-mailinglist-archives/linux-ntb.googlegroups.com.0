Return-Path: <linux-ntb+bncBDAMN6NI5EERB3ONXCGQMGQE5G6ELEY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 57822469AA9
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 16:06:22 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id m17-20020aa7d351000000b003e7c0bc8523sf8610849edr.1
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 07:06:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638803182; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z+GT892Dk4h/cKvscarPFFkDXM4khRokrs4btel0iOC/OHHwWm0Zr5YFhw1I1ho7WO
         vGvANGrst/MEj8AI2RT36wchq0zqpxcjYr8iFQIN2czNwmq20PnN6A1f6KZSpX2tqRs8
         +uKFpmNl2Bh7fVBiu4zD0q3yhqSeWjl2dUmGMsaZNbzQCB8r6n9Taaww+OkPPiKTFakc
         TsBXNCNSX0BgjupF1Ki0gFvrAhuf/ZyFFTJnfh7aghgEM7ADx59zNTQMM5Vth8XueNQ7
         zlBP40tmNcj736s2HbOKC5tDwxJvUP5r88XjaMzDgRbWFdzpYkd80dNYRf0n/+0S58xz
         Ft0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=0nZ1SmyHvvebmixeTU/jyMs7wen3XIs7p/TXGGq7VqA=;
        b=Hh7WOFnl9rq9cSVwuHQQtrDHEzOLisLzE7aFxW8X3VyWCemaEfVVe1SxLnWL54OeVE
         FZt6J8KXHOxuBWG3xtCG05fwG/umAdhrWbALwwvrl84m7lARxdHD6GHHhsnJ6wB7ksPE
         h4kGhHipIxBDWvsyTVPGabPkR0a3NRevLJe4q4OwAvJFm1XNbVVve22ZAWfJJUHnD4IX
         WatTFaQh7Fvg/dkf31AdQEVxmusoZ5sRlCgyw73C5/zLZyZ4NARUhlYEgv8/yUsyW/On
         F64vnrmSL8ofyesiSNAExZyXwg+m1l687nZDIsbhaexTtBoRd0KmYHPdCA14aInGJoy+
         R+CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=xjheNe0r;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0nZ1SmyHvvebmixeTU/jyMs7wen3XIs7p/TXGGq7VqA=;
        b=HORCCl03HGRDAt+U646d+v+dn9PHMlROFie4FOLv8XDMQyxhjQqw09qeXBhG/9uI7N
         1WB+bHN9MzJibB6PhpYYoQlQcuuWfMrokMbI2hyOt7dpdMD1FUJTL13dk0QcGSuqsfzZ
         BL6Z00G2KrLA3zC/XHrNJW32lIJWQ4/m5k+pREkfuulojne5OrGTQEW8Ff15C3GKiX4f
         Fqm1DSSqSR0piHn/Uv3LoYXr6Oq1iItdcus9ql+tlzA3QmTLh/b7XBqMkcU8aHib6WYE
         iXn7L1CwFt/r2uaPe7umchcxp9kyxHzx1T+fy415XPP1dU7dDfvEVOTlNKP0PYyN/qnp
         8UMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0nZ1SmyHvvebmixeTU/jyMs7wen3XIs7p/TXGGq7VqA=;
        b=nBfm16TKCieXhKzm3Q5K5PwPERbz/b4xFVTV/+M5nuW22bVra2Z9JRWsY8i5qbZ54S
         5u4hv+wF7ABdEccqum9E9ybyZ2qL/tKkBjsZiU9f8FlN8+iv4z+sQlealBEaJM5zetyd
         jncq12aXy62ZR86s4ryn7RcB78ckS72tQ8zTaM+e2wJKPCKbw+reJVMGqrOCx3f7/esH
         EUtUZPWU55X2yhfCLJZ67STEUpCrVpVR7bPhnIR+oBi5vEh6anGrluFPMG9OcZxB4FpY
         qdvoeYb6aNDIHnQguxALWZt625ghcttK2R6LEJVZ2BYkP9My5RISUEsK3ynSVMlvat6O
         37YQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532/FgcR6tSAOImE/rrfDcIo9Za6d79aYEcj8gi3XI0yvhvvuwKj
	JvMYnCYp0QojJHSFZVz7OyQ=
X-Google-Smtp-Source: ABdhPJyFxvJCFKPQBp4j/TXjD1Lg6rgjy5nxlcHiGUFRD0JPnvytRSBqxpcFUYTTcHFtmH8/zTd9XQ==
X-Received: by 2002:a17:906:58c9:: with SMTP id e9mr45498290ejs.181.1638803182041;
        Mon, 06 Dec 2021 07:06:22 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:907:7e93:: with SMTP id qb19ls5996344ejc.4.gmail; Mon,
 06 Dec 2021 07:06:21 -0800 (PST)
X-Received: by 2002:a17:906:8c3:: with SMTP id o3mr46754953eje.10.1638803181221;
        Mon, 06 Dec 2021 07:06:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638803181; cv=none;
        d=google.com; s=arc-20160816;
        b=LTVbd7y16KJTumrBO+ePQtv4dqMErFWDlMHt0o0CfMDVsXSAQNiV50FDD8QWm8ROiE
         fCKmaQQKC9ZrTu4ChM0Lo520lhEc4iZ1MSiR41v9plNyiABuwLGNjCoU/hNgqmpe/qll
         wyEEpGxCmUwqsRofIfSGy9w0a0Ut3JBTF4bw7tA575TBeqNKQPSSzmfAExDj0fI9Tsyp
         jdTFGpwr74CJJTSjGNt2IlHTtyRsTNKVvR1iuQPEbSO/VXf4oI2l60fxBtS95y/rdggy
         MUigEXu06ljraUR3/Pf9Reduub/uVNfjA4P+luYW8jKJaUjJFm1U4t8+/ohyn1AqBLSQ
         uuSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=5DFKQyDJzCq+mYQ4+RqEzYuEHbWxZbUzi+iE4nicGGk=;
        b=tXWN7fmtMo+chGItg58ALewHnVQu6EyxsCIVm9p2qwAD54QFi/Q8eAVcKsCxs6kZY4
         o/8OoVWdQpDOlz9j8zoVR7hDkO69uQWaZu2duNP5jliNdPGE78y9ynN/mjxytWlgqNsw
         ve2jcs4A34uzUc94P34snsqmekAnQ9KEq0T5ISLRRdH01HYzpqXIWJy1UGrzCN1DQY9+
         1X9dDCGpqpW1LK3QR5O7Om63SFH+ys9sjSeLCJOXHj70jJK2ZPPRhXU/4mO97gP5YHsQ
         yOdTuzXhc/R4y3kB7XXZ/v3ddr3GvbKoSiwdXbedqVMETMeFvZ8fZT68OmaZCndNjzJZ
         0RFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=xjheNe0r;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id s8si631257edx.4.2021.12.06.07.06.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 07:06:21 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
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
 x86@kernel.org, Joerg Roedel <jroedel@suse.de>,
 iommu@lists.linux-foundation.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <20211206141922.GZ4670@nvidia.com>
References: <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com> <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com> <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com> <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com> <87v9044fkb.ffs@tglx>
 <20211206141922.GZ4670@nvidia.com>
Date: Mon, 06 Dec 2021 16:06:20 +0100
Message-ID: <87lf0x4vtf.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=xjheNe0r;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

On Mon, Dec 06 2021 at 10:19, Jason Gunthorpe wrote:
> On Sat, Dec 04, 2021 at 03:20:36PM +0100, Thomas Gleixner wrote:
>> even try to make the irqchip/domain code mangled into the other device
>> code. It should create the irqdomain with the associated chip and that
>> creation process returns a cookie which is passed to the actual device
>> specific code. Allocation then can use that cookie and not the irqdomain
>> pointer itself.
>
> Sounds like your cookie == my msi_table? Maybe we are all agreeing at
> this point then?

I think so. It's going to be something the driver can use as a
reference. Same for the actual interrupt allocated through this domain
reference.

>> So thanks for being patient in educating me here.
>
> I'm happy you got something out of all these words!

Definitely so. That's why we are having these discussions, right?

The shiny irq subsystem is not so shiny when the drivers cannot use
it. OTOH, it's often enough the case that driver folks want to use it
the wrong way just because.

> Yes, it is amazing how many patches this is at already.

Don't worry. You'll get a few more patch bombs in your inbox until IMS
is supported, unless you want to be "unsubscribed".

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87lf0x4vtf.ffs%40tglx.
