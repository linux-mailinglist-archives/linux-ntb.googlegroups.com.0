Return-Path: <linux-ntb+bncBCP4ZTXNRIFBBKXP6GHAMGQEYFP7O4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FF5489EEA
	for <lists+linux-ntb@lfdr.de>; Mon, 10 Jan 2022 19:15:07 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id m8-20020a0565120a8800b00425edb1a456sf7153984lfu.16
        for <lists+linux-ntb@lfdr.de>; Mon, 10 Jan 2022 10:15:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641838507; cv=pass;
        d=google.com; s=arc-20160816;
        b=xNgHnEYqCp+AJ77sA86X8nAL/FjjELeGS45w4xNJoPS2FO/YFqifqldpu0wwMHjhSe
         cVBq3FAfpLWM9gmOohTQjzF73vjX8g/HYf+Ke6l7pIb9H5Iply4/7AZN85Lk1E5fCA+o
         i1BPOItG9dQv7H66Oq5y3//ckZCQJsbGJfOZk8lBThOzawK5Y6Zkc3JrmHZsd/t4eNnb
         rzWUD/6ZnCFStsM0lP+h8A5zlM8N/ZbMRARDsGmQAHpEdE90e/PJjcdmZSLcFQ1BfTPh
         +ejHoVuLKzw7B7fLWejTnkikpn9RnOdV92/jigTKm9qeG9uq1hq5qGqh9uTTj/KebRHI
         R3tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TT7gNM3pSHJsWWJimB7MS7NYEqhZhVVVer125IITDrE=;
        b=yQvNhXQQdtWKFJdlRQzqWeDsuPNGQ2K0gjACn2ACWT/WALfxo7MWzyd7w54dyekpa0
         xoAfhFt2BjlgGIzF4CTMnOD3gE3HWzKXBDwP3LcxFrJ8RSyCmi2rFEC0xXbnAIjlzA+q
         olPs9/yNT34ArxaQw34KR4MmqNvVM2YYFMYUrueMUw7CV4ZroIuRJjzy++rGFTihgywE
         BvaGT+iOidvkmA5w/3UkkVOcQaAulwMsQg4KyrEw4aHsL5+/szTpIBfjwOU0QSJjZ8qV
         DlLJcG5DQdttyh+8gfx/WZtTL73nLyN4xqxuU+Wd1eQV8tAfuUAR0TjtpgBsfLw86QC2
         xBKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=XNy8DlnS;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TT7gNM3pSHJsWWJimB7MS7NYEqhZhVVVer125IITDrE=;
        b=gd5CngS1zTZoUl0eadHdVWhM+H5oe6GHjMD9E358pGi4stg1oRwmKnpbnZNR3hLobE
         Tdz4hGsCNgTSVqXuhC6z04TD71vVlMkDZc+VDPTWsFBXIGOexzRdvoRhJ6By+5t160o3
         l/Kjbu11Do8ER1aIgYA2SM7LL6J9x8a4k/n0qvplANeblIfU+ROjeGfxqjm/2C3D9YRP
         8uP4YMtD4WNAEnymBe77a0MyuNlO1Poz8hz0kSxO18zsl6dViMlISRSVDO3gvLJE4d6k
         K6gPBN0FtrShDG11D4kPr/OwSdrjozUQ5VYhrC3MV7aN+Td41L0fNMjzv/xbEcZSIzgq
         Y22g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TT7gNM3pSHJsWWJimB7MS7NYEqhZhVVVer125IITDrE=;
        b=HeilxwFygesEu34JnBvpNIBvtFeWCt3CffzXdwyYGSAhD5tVrtbpiw72PwAJMZYbVN
         3CiS0SIMX+BF2N0GWO4HfRkqBNiRmCsECciPh6XLiE9e0RqoF/INTCZOd+dce7y47D4c
         OvWCF9f06JjB40NSeBrSP+CdEimHSy6qOxyvBwhCk0MGNr96wzrfoPMiWbl6YN2uA4Ug
         NJ+VK4wLTE5NZz9NW0UQSt9x38PE/zc+iAdswXME4DZf6SipEps7MCvckHFLIAwUzy58
         Hi+g5Myr2kHLafojGsV3t/D0aPYkJV7fC87FWoiufXVY24VPkb7y4s6cKey9EYTHnbTK
         yN4w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5338af5BIV51j9C5uB81b54dgWXohSgua/XbUxVLhf7YEPvad00S
	NatjPwpkyqJWBe+7k8utsmw=
X-Google-Smtp-Source: ABdhPJxt0K0aq6+pDh9Vy7614lUgKZt6ToN7Lqnr/zRHrehWx08Jj0qaeWhORFZwwnhk3Czf+u9GHA==
X-Received: by 2002:a05:6512:3a94:: with SMTP id q20mr652484lfu.544.1641838506779;
        Mon, 10 Jan 2022 10:15:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3d2a:: with SMTP id d42ls705219lfv.0.gmail; Mon, 10
 Jan 2022 10:15:05 -0800 (PST)
X-Received: by 2002:a19:6542:: with SMTP id c2mr636104lfj.661.1641838505796;
        Mon, 10 Jan 2022 10:15:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641838505; cv=none;
        d=google.com; s=arc-20160816;
        b=qMvK12Kh1O3vRLNKITI28/A1+/DG40tg/KBuzp5w013CsOFkvP9QcX+OPoZjcxJIjw
         PYOO/45MrhRDZ+G0+1VdzekpTWErqz75oF8rI2DQFxgFGeoGrlCgk2aQhV7w0d2rFMp+
         iH7P64GnIS+hPUWV8SmZFbfGB/EzWqCZz1gAIRrLAi+o2FAfunjLSUD9+skKo/re6PiF
         l3OJ1aUdwXMB8bi6a0A7gStNfz7XWc5Hlx98NO9i6W958pb09SXZYhsU9iXUatB+SIjK
         FlkpstigxXZ6vTATYXkGKKy6GPegfD2ZaKHVZfwVUFotxVEdnx9G74/ejXK6xM3zwthH
         wRqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yJijyw2InAbx08UK5J76GgYEEJY5KfsyCm4JE5m3fms=;
        b=ygQZclWacpx0Kapiykgpw7/PzOH/JHk5DE9SIA12MDay07inffcvl2C18EvyLIAy16
         es8jN5xTzR8HLqWKtG3dr+KJjtRXtOUN8BaLG2TwX3mTVSF3VPU94dJGLYvK2/eAgHfz
         hAF6HrymMvUZbOfzW4xfzNZx8MYR1zjnDLHqPZNqMeUCKom5JgjJ9+uusEVUAehEMJVE
         Yr/v0DlCz1iz6OY/zgxd8KaKk4uWgbPD2IWMRGIrmgxaBIqRTybmFq/6pKbk+tqF9GPS
         i9GTCpbVkIt3P3v00nM51vuMUFcqvkc/FW/Fai2huE94bABvlUTm0w/cTJPCWeGrAIh7
         9XCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=XNy8DlnS;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id x32si352773lfu.8.2022.01.10.10.15.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Jan 2022 10:15:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (dslb-088-067-202-008.088.067.pools.vodafone-ip.de [88.67.202.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id C94C31EC0588;
	Mon, 10 Jan 2022 19:15:00 +0100 (CET)
Date: Mon, 10 Jan 2022 19:15:03 +0100
From: Borislav Petkov <bp@alien8.de>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
	linux-pci@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
	xen-devel@lists.xenproject.org, Juergen Gross <jgross@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Logan Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com
Subject: Re: [patch] genirq/msi: Populate sysfs entry only once
Message-ID: <Ydx3p35NW6Y9tDvO@zn.tnic>
References: <20211206210600.123171746@linutronix.de>
 <20211206210749.224917330@linutronix.de>
 <87leznqx2a.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87leznqx2a.ffs@tglx>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=XNy8DlnS;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Mon, Jan 10, 2022 at 07:12:45PM +0100, Thomas Gleixner wrote:
> The MSI entries for multi-MSI are populated en bloc for the MSI descriptor,
> but the current code invokes the population inside the per interrupt loop
> which triggers a warning in the sysfs code and causes the interrupt
> allocation to fail.
> 
> Move it outside of the loop so it works correctly for single and multi-MSI.
> 
> Fixes: bf5e758f02fc ("genirq/msi: Simplify sysfs handling")
> Reported-by: Borislav Petkov <bp@alien8.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>  kernel/irq/msi.c |   11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> --- a/kernel/irq/msi.c
> +++ b/kernel/irq/msi.c
> @@ -887,12 +887,11 @@ int __msi_domain_alloc_irqs(struct irq_d
>  			ret = msi_init_virq(domain, virq + i, vflags);
>  			if (ret)
>  				return ret;
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
>  		}
>  		allocated++;
>  	}

Yap, works.

Tested-by: Borislav Petkov <bp@suse.de>

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/Ydx3p35NW6Y9tDvO%40zn.tnic.
