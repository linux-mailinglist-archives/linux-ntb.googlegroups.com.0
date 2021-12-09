Return-Path: <linux-ntb+bncBDAMN6NI5EERB6ODZGGQMGQE6OK7QAQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBF546F4A3
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 21:07:21 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id 145-20020a1c0197000000b0032efc3eb9bcsf5427677wmb.0
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Dec 2021 12:07:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639080441; cv=pass;
        d=google.com; s=arc-20160816;
        b=cMgz4TXH0GxVRqsQ81YOkAuWdYFwF7EMZVANVmL23Cbwv/CgBWM46FqTjzGvTuFzbU
         8VjT2HnUO+qtt/nnU7/1YHL5moIb1UEDxIGlX4u5Osl21yBxOkQjPBLwfgeR179IGgME
         jadgq4JL/KWNPqW5zqPKW4pjHZMrv9yG1kpnba5+TWQOkgyuA33munvIxZxE1JXj+9DD
         WkWFrmUkfYJ40YYYXOVgaDhV/p7wrSPYu2fsgSRlBnXScr+iSi/mOq47CzdWgfiEmdX2
         SLz2NqFwostxmeahUgd7svmGBQJSV2/dxXsR4HCaBd1iW0rUiCjXyaH07NM4U5sY98fR
         faRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=TTcgmOru374egZFhyY1eDr/89kvYL0qGQkUe9db//Jk=;
        b=Mi6/a3Vf40VQVC/Lowt+osFg/yOsd3DwypBKLZZxQRJUqnZTmFSyl5U4/s4sUZlEQi
         rsS/VCFxude17vUKTMY5voriG+pzztmvykStoEnp2T+gEoSiUHEiH1rArpnnRUAcCPHL
         W0hRyPtQHeawE7/rPJvHL5USPJI5Xr5lSFVgoiu7b9RA4swNb9yIiDU/wKwrZdHtd/9U
         N7CxeAsoZzbBQQnWcCpoBbLA6G7UGMrEVUpcA53eDFt6KcPFtTVZLsvAksnXMDDXopRE
         t0nFH02IGAuL0V9by2MzSZItmsNlaJN599v+SgF2np7R6nIKhcv++M8K0e5Cnh7Gfqwj
         UJ/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=sHhovCXY;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TTcgmOru374egZFhyY1eDr/89kvYL0qGQkUe9db//Jk=;
        b=rZnvG08svI8z9MLAPhA725iikc7IAQpyO1UNgmfFpdzWphN9VUFoRxp0KlDY3yqyDu
         OOYwSwX8ReGb6/KVtdfYs2D23dZq7n8mvEyinc2kcvNvUUfIVuhOBEr0X6nEboDA/B3Y
         subecuIjJU7GKMKacnSDTVyb4IQu0BFdumI5X9eVyxOqy7UVFZnCRIKQ7q6vcMN6glRn
         el6KDe+Q7ymWBplkT+opPO0pAdR+aFHAdKKdMfEE4UjwYg3u+vHGeRP14NQH1rZ5P2Tz
         IUg8b05gsbnX5bBoZ7OLEGlvwGt6Rw+18u4HtSGD4uSTuQnWOquPeWw4WJUCDTdWEd5l
         chPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TTcgmOru374egZFhyY1eDr/89kvYL0qGQkUe9db//Jk=;
        b=a+ExabQBehflKYISL74vUiI1HsyAWN5yYyMu3WqYNzao94U1n2qC+pJ5EfLpwrtnIK
         MK0MSfTQ0/nqVpewVFw0qQO6n3Bns/4oNUl03s6WaWgmdBa9K44o1LHDmAvyOqTahz1m
         TPf2Ar6nNfZGwVcno6U9X7x95fb/lglQcPlOpdaTlO773XMfPBw66M9N7Oo5nVfmkbAQ
         4MwwwaHEr3oamM09p9jVnSZDqwzVgQYXboFsWfPIkDT07SRaf3t7lr521jd5BFeaGXWi
         Azr9yyxf4MTljYThsgQ3Zo98HYFys+Xig9JJl4b8gE6KkfL8hSPZ63ut0QJwWJXK1Agx
         mBew==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533aSITo4APVWV6wR2EdvFVmOw81FN2LuZJU5Y91AXIHjYCwaSGW
	Gw5hPKWnHCg4JsZs+20vvec=
X-Google-Smtp-Source: ABdhPJzZHVyC3TbtuDp+AY2CsDl6i3sxfulg/BuNR8y5SVEGgEOXOs9owpJXnLXLQ0apxFBxmBMliw==
X-Received: by 2002:a7b:c008:: with SMTP id c8mr9867072wmb.87.1639080441396;
        Thu, 09 Dec 2021 12:07:21 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:fe0b:: with SMTP id n11ls337144wrr.0.gmail; Thu, 09 Dec
 2021 12:07:20 -0800 (PST)
X-Received: by 2002:adf:d1e2:: with SMTP id g2mr9178769wrd.362.1639080440346;
        Thu, 09 Dec 2021 12:07:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639080440; cv=none;
        d=google.com; s=arc-20160816;
        b=YIqbNbTUMc8hF1KAzMfaqyPD2k1TRM8KKTpbqsmYYSUiUoX6v00rM6G43MlIy+nYjp
         ZT6I4LO25D0/YPqQnuhwstfejFSsfgPimHXhmqD2UNiA5SOmTg6iMdw06xbaPwmwtR8B
         3BaSMFLyIpBtKmSlGnWM6H7aj3CIKKY5YvBcnfuPO7y3Ipo/exW/q3s0Jfnhg8jts/ej
         un3GAFQJNnpjTsUVF4xqNPythb4VkafHWZkHmL0BSS7mJSHsfgFFgzSrfpLcpUJQFLxr
         PDcEd4cuPv+g6ZcmjFDPK05xUtbhGjjfk3kj7f5N4RRheVQgWS0AImhJkL1WlARh/q3W
         ZMEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=t8vWSJsQ3BPUuA0dl4ZxOCitpzQBCnAQcAG9d/AyszY=;
        b=D1aJ4W43LRCLuZWQseFIG/PB88TcV2rpNQdXnn+ZG3OxxFrqnChjZUp/Lnc/IIQP/r
         vpUrlG9K2W61siSEvPdcrYhm8e/kmYwykewP/bWmpuHDQ2V+xHwzfllPnQQV6l4vcID/
         b1S7Yr04K2cmPqz1e5/CV50JTuHLjwFLL+ocPSFTEb13v1AmHSETSE8frYi1HD6udob5
         cftFlYjOSv48LqbxBRNl9JW84/F+iB6ZbQxxT9hA7AGbAySZay2iFvMxpOZuytFI9ZOO
         XpRT/MU/xrKkPL08tA/QgaXQUYFhBYv5hHGmaXZ6RnXTMmGJfxHlyiI4sIOX3eWdqZHl
         hbFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=sHhovCXY;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id 138si70011wme.0.2021.12.09.12.07.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 12:07:20 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>, Megha Dey
 <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
 xen-devel@lists.xenproject.org, Juergen Gross <jgross@suse.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Niklas Schnelle
 <schnelle@linux.ibm.com>, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, Logan
 Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: Re: [patch V2 02/31] genirq/msi: Add mutex for MSI list protection
In-Reply-To: <20211209004702.GL6385@nvidia.com>
References: <20211206210600.123171746@linutronix.de>
 <20211206210747.708877269@linutronix.de>
 <20211209004702.GL6385@nvidia.com>
Date: Thu, 09 Dec 2021 21:07:18 +0100
Message-ID: <87bl1pzgnd.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=sHhovCXY;       dkim=neutral
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

On Wed, Dec 08 2021 at 20:47, Jason Gunthorpe wrote:
> On Mon, Dec 06, 2021 at 11:51:05PM +0100, Thomas Gleixner wrote:
>> +++ b/kernel/irq/msi.c
>> @@ -127,12 +127,37 @@ int msi_setup_device_data(struct device
>>  		return -ENOMEM;
>>  
>>  	INIT_LIST_HEAD(&md->list);
>> +	mutex_init(&md->mutex);
>>  	dev->msi.data = md;
>>  	devres_add(dev, md);
>>  	return 0;
>>  }
>>  
>>  /**
>> + * msi_lock_descs - Lock the MSI descriptor storage of a device
>> + * @dev:	Device to operate on
>> + */
>> +void msi_lock_descs(struct device *dev)
>> +{
>> +	if (WARN_ON_ONCE(!dev->msi.data))
>> +		return;
>
> Is this useful? Other places that call msi_lock_descs will continue on and deref
> null dev->msi anyhow - is the dump from the WARN_ON that much better
> than the oops from the null deref here:
>
>> +	mutex_lock(&dev->msi.data->mutex);

I put it there for paranoia reasons and forgot to revist it later. In
that case yes, it's of questionable value.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87bl1pzgnd.ffs%40tglx.
