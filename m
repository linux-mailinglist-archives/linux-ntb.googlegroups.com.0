Return-Path: <linux-ntb+bncBCCNVOPP2QNBB2NW7CHAMGQEZ4IJORY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id EC40748BB9B
	for <lists+linux-ntb@lfdr.de>; Wed, 12 Jan 2022 01:06:02 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id l9-20020a170903120900b0014a4205ebe3sf800020plh.11
        for <lists+linux-ntb@lfdr.de>; Tue, 11 Jan 2022 16:06:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641945961; cv=pass;
        d=google.com; s=arc-20160816;
        b=A0j5IzrxJ7fiTOZ31G8J0sNRRj+AjsgUAE2AK8pSkfQdzNUH/Q8WPPSX8BRk7oGqjc
         vDOV6YTXjn2v4Aoa5keNX5KqrNGXXsTaXaxUFjO1XGPvmFg2QItuSsDtfmNvbCqF/GHJ
         jbSGnl3QAIXQaVfeBRYCBV1XamAgNG6qJamRsUqfAgWUEXpfejlWj9WUOPKlkmxiFwdI
         xeedyDg8ittE16ju3IDr2PoMyzOc6w5FrE1ts4BmH3iwUvSbbXfOGF/ukTKZqrWOiA+O
         ty1PeTi9fSjgspYk4VjZNbx76/NBrTA9bc2j3Amd0ld0s5kbQArh0cwe8L71sEV+GKU6
         Il2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=N/mTSt+3oQl0R9sJkbB09hrEBIeOBfsO48NCVsXPhr8=;
        b=Nd9m/kjxAxbL339+l1GZz2YgnL8BiMDXYOA1C2jpCcGBxcEeZwjQBlH1eEqhneKWCG
         3/PTC5WFVuYfVbCk+BYypfp96bcVrHugR/zyIOMVrgYVZiZGJw5jR+KtagYKX1CjKmku
         ZUdaJkTTapn5IqcKKuJTZ04159tCRo9apuHmFxME2SWienvY9jN6F8u9N3pFegIrCowe
         MNxoqBxxpe61ZT+ZXmQFt7U6b2u8Q0PcRZKm2+Eu42RrsknBlvILdZY0NIFliQkxair+
         ifWa9XWj+0L6GM5jkh6w8tEtEwpdj2XiUCq/wLYo7wa5OSHJlTED/WVnYNxkNVlBoG41
         Xm+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hayashi.kunihiko@socionext.com designates 202.248.49.38 as permitted sender) smtp.mailfrom=hayashi.kunihiko@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N/mTSt+3oQl0R9sJkbB09hrEBIeOBfsO48NCVsXPhr8=;
        b=qNFidIp1r+C1nqo3XckaJ4A1umnZMHAR6NSxUWjPlJ06bHlpdpKMgAEIlulm892Ofk
         QBqEHM08+hYwSYdzu6idjyXhmTFdNe2bmHUx7tCIm8KaqntvF4El5ZFGilwFf5Z9muc9
         jc/5gNhuhm94RvTx0Fu+Cf6kpCjMAQ86vIyf7im5lu0srSV+4VxTMVGvnWPAIDrcLg/Y
         Q3RcOf5FDqcAJPvffcMaZBk3+qroUbiKy0p34bDsvLV7dTG0vH8ZyfOVVrb/3+McNQKY
         XrGIfp22XIiJnXoiMA14ew5wzdYnIL1pLCUYSg97kNqViJZzcpQfV/NFGom59xw0EL9s
         XEyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N/mTSt+3oQl0R9sJkbB09hrEBIeOBfsO48NCVsXPhr8=;
        b=I1LLYggLPkFHXYULQX2I5ZVmurL4/s07PVHLdWIdL2Eh7T//7EZjvKNir6rGEQSDaE
         +3FKiempJF7Irs6Y5iFuW+sc3BznZvkX6FnYsoKuFq4iH33u7Tm6Z6TGL5Q07HrPZkEC
         lSBV1V48h0H1tzEdOHwv5Xr0W2fFW7xQkeswogk9cFuMJsFy89BBxdDHCZBud+fT0S+n
         ubbA0vY8A7thp1d4SyC6aoWphFxUQy2qCJSyz1iYcUVonPXXlznKIA3i8LR/mbkdXO80
         Ng2hOosaBP1t6vo+my7JMQLb+0OFhkIuGuw2k/ZAj9pma9+AC7VUFCGM9cBTCLNqYRX3
         jE5A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532QRIYXRQwwtpNRGZtaexNbJP237+OyajBl2aZsCu0rpPkxosob
	auy6JdiOPqekyHAou6sR7Ws=
X-Google-Smtp-Source: ABdhPJyVLcFp35NH5sVklQed0vqYvfTlgs720SbSqO3cJjPexOqRsrfDFD5VAf5+gD0Km+W0y7dA8g==
X-Received: by 2002:a17:902:eb42:b0:14a:40eb:6d2 with SMTP id i2-20020a170902eb4200b0014a40eb06d2mr6630089pli.67.1641945961338;
        Tue, 11 Jan 2022 16:06:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:903:2346:: with SMTP id c6ls3993297plh.8.gmail; Tue, 11
 Jan 2022 16:06:00 -0800 (PST)
X-Received: by 2002:a17:903:1ca:b0:149:7cf7:a173 with SMTP id e10-20020a17090301ca00b001497cf7a173mr6356299plh.128.1641945960347;
        Tue, 11 Jan 2022 16:06:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641945960; cv=none;
        d=google.com; s=arc-20160816;
        b=nkYPyz6KK+FRXH32j70R0oERbf5/CY0IN0aV2nfuDwTenQFSmS0cYoSIwG4kjbvDqE
         osD83NO9oz59bYRYMW3ISxA7c4U9kUs3+EV/Az8bbe27WEMtJAwc8iDub0Dml5DD25Vb
         0BjIMj5UbWzpPobUDbcqag7ef4P7v05yrMCNv3gQAGq+GeuZJAnVUWHFecKj/SgWUsRT
         i293vU5RTcbcOqtVdVuXdkw52idpLVbKmMKtfbZcq3d1UDOPzdbaAdcHDs2JMxypEo90
         8970BRS8pPznI5NTWpEeFlOqbsFsNfbPfNd4fJZVatZJYVaMr08MoPxlBrpQ6h4fT19I
         WdRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=dIfwy/mP0XqVgwK2fgECkPQAa4IjW6tLjokTiE5Yh0s=;
        b=06LpJv46ws0AzXCj7647y+I5oSKY1hjHi8fqpa+1jh10krPj5ROaOrAZdBenJPsDig
         EAtBjHvKs+QSxAHIshS1r+2HKUeZUwCerWfoaTXKzeBBq/P5ri9Eo1prbD1SgXGsoQzp
         oKOhsD4Ji8C8Z21PBmvvwQFrr80XkIGnJbg9RMInXFbcgFD9vVFCpmllXVa4pgV7wELi
         k708//4pqqmT9zt/dtxSLXfXNnwoyL4YF1tdaq19OEp9x6865zqc5En537/yhgKJdgtY
         Mt4YWVFFbS4xkFvuH3ZFBxBL1yRJ7zwSvcKvrEaVZKeXsnIoa/5Pn7epXtZAtXPIdhkW
         0IYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hayashi.kunihiko@socionext.com designates 202.248.49.38 as permitted sender) smtp.mailfrom=hayashi.kunihiko@socionext.com
Received: from mx.socionext.com (mx.socionext.com. [202.248.49.38])
        by gmr-mx.google.com with ESMTP id ls16si323545pjb.2.2022.01.11.16.05.59
        for <linux-ntb@googlegroups.com>;
        Tue, 11 Jan 2022 16:06:00 -0800 (PST)
Received-SPF: pass (google.com: domain of hayashi.kunihiko@socionext.com designates 202.248.49.38 as permitted sender) client-ip=202.248.49.38;
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
  by mx.socionext.com with ESMTP; 12 Jan 2022 09:05:58 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
	by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id 859602059054;
	Wed, 12 Jan 2022 09:05:58 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Wed, 12 Jan 2022 09:05:58 +0900
Received: from [10.212.180.44] (unknown [10.212.180.44])
	by kinkan2.css.socionext.com (Postfix) with ESMTP id 56BA9B62A1;
	Wed, 12 Jan 2022 09:05:56 +0900 (JST)
Subject: Re: [patch] genirq/msi: Populate sysfs entry only once
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
 xen-devel@lists.xenproject.org, Juergen Gross <jgross@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>, linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Logan Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
References: <20211206210600.123171746@linutronix.de>
 <20211206210749.224917330@linutronix.de> <87leznqx2a.ffs@tglx>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <1d5711be-c26d-d57b-10db-1b45d279515d@socionext.com>
Date: Wed, 12 Jan 2022 09:05:55 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87leznqx2a.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Language: en-US
X-Original-Sender: hayashi.kunihiko@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hayashi.kunihiko@socionext.com designates
 202.248.49.38 as permitted sender) smtp.mailfrom=hayashi.kunihiko@socionext.com
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

Hi Thomas,

Is this fix the same as below?
https://marc.info/?l=linux-kernel&m=164061119923119&w=2

On 2022/01/11 3:12, Thomas Gleixner wrote:
> The MSI entries for multi-MSI are populated en bloc for the MSI
> descriptor,
> but the current code invokes the population inside the per interrupt loop
> which triggers a warning in the sysfs code and causes the interrupt
> allocation to fail.
> 
> Move it outside of the loop so it works correctly for single and
> multi-MSI.
> 
> Fixes: bf5e758f02fc ("genirq/msi: Simplify sysfs handling")
> Reported-by: Borislav Petkov <bp@alien8.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>   kernel/irq/msi.c |   11 +++++------
>   1 file changed, 5 insertions(+), 6 deletions(-)
> 
> --- a/kernel/irq/msi.c
> +++ b/kernel/irq/msi.c
> @@ -887,12 +887,11 @@ int __msi_domain_alloc_irqs(struct irq_d
>   			ret = msi_init_virq(domain, virq + i, vflags);
>   			if (ret)
>   				return ret;
> -
> -			if (info->flags & MSI_FLAG_DEV_SYSFS) {
> -				ret = msi_sysfs_populate_desc(dev, desc);
> -				if (ret)
> -					return ret;
> -			}
> +		}
> +		if (info->flags & MSI_FLAG_DEV_SYSFS) {
> +			ret = msi_sysfs_populate_desc(dev, desc);
> +			if (ret)
> +				return ret;
>   		}
>   		allocated++;
>   	}
> 

---
Best Regards
Kunihiko Hayashi

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1d5711be-c26d-d57b-10db-1b45d279515d%40socionext.com.
