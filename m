Return-Path: <linux-ntb+bncBDAMN6NI5EERBGUPRKGQMGQEXBXWU5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 70124460134
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 20:31:39 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id z138-20020a1c7e90000000b003319c5f9164sf9093731wmc.7
        for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 11:31:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638041499; cv=pass;
        d=google.com; s=arc-20160816;
        b=SdBvt27CA1ZzWdjchyxpWYSAXtspIO6baA7NgB+/QV00KtTzdXhxAnMDGvCPHDOEND
         XsNJ04lmeJ3IOnb56j/fbztq1EJB9tw3+niUiK8h0fI2oGtBxTq3mM63crrODQED7m6q
         mGPm3huKfKENrfRZPTa22qrL8YgcYnYTWq1lk9ESdU6i7ZgcJd3q00jHovzFg5oed178
         vGfZ6kQW+EFndKU3nWYq0dXUXLcRYRyKPND+eGQ3B4Gni/8Ijd73PtwjlggT0DO3yrnC
         cjoWuOV1dKbuaRQP9tWac1sOk1OxjW8bxCiTqHRh2TrnktU3Pz29tXwQfRsxQubg2s2u
         cV/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=MjZpW3dACIHkh4V619YqHtDUkgVUObNA7rhILL1Ivz0=;
        b=iRL6fF5OZlslHTVv7RM2fp71d2HhUWhpCrKgtk+E8VcAnLcarVIJUIp/H1r7qVfxFE
         eldPGBHoQS3l3VZh5kiG82z9rTIKgb2Q0T0YPgviFi3dobGTTOqD3645HIMcuWHqzhUB
         JbM5uRgO1l37V7vaqvfMN9qXSPnuT2YUeiBU+l3nyRvtgZV3CRli5ApCjEIFv6yoWHDg
         Fl9kNLUpppnP8/Bou9L3hOeRzopCgphzdiAPp+snohJk48lBL7wGNeCQIz8KdfK4riPm
         N34T4f+9q9k3XTfyWblDDF1P1SYLqhUYpxjr0zHqzV+wP1CehdUYv74U7lr94TzCX2n1
         I/hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=12PZFwTo;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MjZpW3dACIHkh4V619YqHtDUkgVUObNA7rhILL1Ivz0=;
        b=Sh8GbGADbYLYvaLs4+AYTfkOt4k05VLgiE/BtTW3JXp19cWbZknB54qBHqIouy+87C
         qREy/O8kbVWxmHwE4OkmUbdDWZ8w5CT+HeaftfTZgeTCjLusE/wsN/yZqKZAU2iq1aU/
         xu7FJnOVDYLM7AtWhTxT1FxAU4/aO47lnncvzW3Z1JzZsiiNCkRr816lB1kFUcwgvffD
         djAD31oGZf7nd6TSKfUlvn0UE9bQmsaFGM8ds2NIIP8jGSADiO5sUvf5h0N+AS4XauoO
         BKd8Rf6RyFDvlkHcbOhcKejEmvu3Ryfh/wievyZyoBTfSDo7WNoHeJZjxuy60inp3jTD
         3rNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MjZpW3dACIHkh4V619YqHtDUkgVUObNA7rhILL1Ivz0=;
        b=i/YDtV8y26jx5qStmkEPvzYSEwtGEv1rdT63HxW9M8coDCsfRoTy81NVjXAjlUbflg
         kMmrHcYF29Rmb3B0SUgATTGszgDHS6vgemO9kZSp1kvrPYddrt8DTArqj4/wfjD5/Ziv
         zPDzFa6Yxy1x0kmYhbY5t2SpinwS8bA/ZwWSa46ppLdcU2JWJ5QccwC7Ai45gjx2eUSy
         Qni2YtRov4LOWG5IBSgHoEJNmd4OmwGuAYk6eevz3f/xywfX4ohZVPGYCQqAwqSYEE4M
         3m4KzlPMmdV7BJS1KbpBbdIJNj8MCWZ/WJLwTv/wuvu8qkDFpZwhyj+XPd0Ubs4lifgU
         8bgw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530LmO1YyYLCfBnIhHQWjqsWSObfIp+cTBX1GLrVKcOYorhjEDLM
	vKHP4G9fRA3KJoXC+vlStQg=
X-Google-Smtp-Source: ABdhPJzjFfFK1Au+5zmxDnZrHM7D3oOw6JEHk1s5sk5TzWOQkVfSkuCzC2U0BScTHeMz5BLnYGYD9w==
X-Received: by 2002:adf:f352:: with SMTP id e18mr23207182wrp.39.1638041499132;
        Sat, 27 Nov 2021 11:31:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:1943:: with SMTP id 64ls4617568wmz.0.gmail; Sat, 27 Nov
 2021 11:31:38 -0800 (PST)
X-Received: by 2002:a05:600c:3510:: with SMTP id h16mr24482624wmq.144.1638041498065;
        Sat, 27 Nov 2021 11:31:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638041498; cv=none;
        d=google.com; s=arc-20160816;
        b=qFYZ7VXuQ5tUNA7ZKM3yBfABh7ew7nD7e4jpnScPjvR526ieJRNjOO5Tbu5pmn5hxS
         0JJ+KwK+1zo12ViyZR0MDpm5aWKhNY/GNYcNn2pTbHSA+khR7LDSIjJDlv88pFkmaAEO
         XmdPDk4tLRu3GPYUybJgYaDwXElt8mPun863NKhUepzU94Lscq1jXcTzgD31y6CCjm8s
         qX3n2OSMfXa+xeWYqy8c1AGDBfcpM210rHrgG4BDvSAU3W9SeKi2SNuPbQn134D9U1V1
         bieRmJcQtVPIlWi8KZIfPZOXuVWj/3IKM+d+W7v5Gr+Ac42FCUV7gMKPgorrCwXsd+j5
         Omeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=dBon8SfZp1CEsl8BVx51RpGEII8dcWVBs/L2NZ3qLTE=;
        b=Ch96bJoVxQ6Z2TVvR4Ua4u/6pmFcGSdjpF/7d/SUDXsY4qRUKF9CjctIAvvLLPhnmy
         9re5VKxuupkmnGQSopA/q+16wmPpIykGmzgLspK43kag9xhs/XJ1t6HFe7DRp7fLazBJ
         T/11MBisron/eB59cuBkuvf5SRN1lTRW4CLSOa7ASWr3O6x118/4HHZsA/TEX+PtngPb
         AKg5rkhs3HAEZROiCHZgugZDKRS0EYdyjyJMIKLeL5QShvFlRGDzj1sY6y6Fhgqo1DMy
         qsMorMKbeJaOorE/sEM7G+dSqftGvynBflwPWzlAhACQ5YuGWOLEcVFyrU4zIyn/TfBK
         uRLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=12PZFwTo;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id c2si1957387wmq.2.2021.11.27.11.31.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Nov 2021 11:31:38 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>, Jason
 Gunthorpe <jgg@nvidia.com>, Megha Dey <megha.dey@intel.com>, Ashok Raj
 <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>, Jon Mason <jdmason@kudzu.us>, Dave
 Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: Re: [patch 31/32] genirq/msi: Simplify sysfs handling
In-Reply-To: <YaIlX8bef2jPLkUE@kroah.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232736.135247787@linutronix.de> <YaIlX8bef2jPLkUE@kroah.com>
Date: Sat, 27 Nov 2021 20:31:37 +0100
Message-ID: <87lf19fl9i.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=12PZFwTo;       dkim=neutral
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

On Sat, Nov 27 2021 at 13:32, Greg Kroah-Hartman wrote:
> On Sat, Nov 27, 2021 at 02:23:15AM +0100, Thomas Gleixner wrote:
>> The sysfs handling for MSI is a convoluted maze and it is in the way of
>> supporting dynamic expansion of the MSI-X vectors because it only supports
>> a one off bulk population/free of the sysfs entries.
>> 
>> Change it to do:
>> 
>>    1) Creating an empty sysfs attribute group when msi_device_data is
>>       allocated
>> 
>>    2) Populate the entries when the MSI descriptor is initialized
>
> How much later does this happen?  Can it happen while the device has a
> driver bound to it?

That's not later than before. It's when the driver initializes the
MSI[X] interrupts, which usually happens in the probe() function.

The difference is that the group, (i.e.) directory is created slightly
earlier.

>> +
>> +static inline int msi_sysfs_create_group(struct device *dev)
>> +{
>> +	return devm_device_add_group(dev, &msi_irqs_group);
>
> Much nicer, but you changed the lifetime rules of when these attributes
> will be removed, is that ok?

The msi entries are removed at the same place as they are removed in the
current mainline code, i.e. when the device driver shuts the device
down and disables MSI[X], which happens usually during remove()

What's different now is that the empty group stays around a bit
longer. I don't see how that matters.

> I still worry that these attributes show up "after" the device is
> registered with the driver core, but hey, it's no worse than it
> currently is, so that's not caused by this patch series...

Happens that register before or after driver->probe()?

>> -		}
>> +	desc->sysfs_attrs = NULL;
>> +	for (i = 0; i < desc->nvec_used; i++) {
>> +		if (attrs[i].show)
>> +			sysfs_remove_file_from_group(&dev->kobj, &attrs[i].attr, msi_irqs_group.name);
>> +		kfree(attrs[i].attr.name);
>
> That's a cute hack, but should be documented somewhere in the code (that
> if there is no show function, that means no attribute was registered
> here).
>
> If you add a comment for this (either here or when you register the
> attribute), feel free to add:

Will do.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87lf19fl9i.ffs%40tglx.
