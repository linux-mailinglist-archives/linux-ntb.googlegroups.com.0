Return-Path: <linux-ntb+bncBDAMN6NI5EERBNFK5GGQMGQEWCLL34I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAB94763BC
	for <lists+linux-ntb@lfdr.de>; Wed, 15 Dec 2021 21:51:01 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id b83-20020a1c1b56000000b0033283ea5facsf308724wmb.1
        for <lists+linux-ntb@lfdr.de>; Wed, 15 Dec 2021 12:51:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639601461; cv=pass;
        d=google.com; s=arc-20160816;
        b=jkDyzNMjSXWmLzNfIJwNG2XbKmIjLs2alA2z4DqYahiGpHxY5kTkC439rx+e8Ctd7y
         UnoyHJgcDXcl0JXUs9F6twKjJe1MUV1WrJrloDC+RBgnqcPlEvzMSlkKuhh5ImUqPa3j
         yqkfdf0OOzZR4my0NQE1aJCzgPqWWJlc9FybKpsIyscSEwtT79r6XVfnK2sEyz5IvE/A
         XY/COFqDfv6lTjOoWPEQew/WiGqRiPkx0RxurN5bMMd2rGIxNTbXJ59GBn61gGq1t2/p
         I6oWLU+Uiptr+MwmFPN4V2ccYC6XSajL57Fwe4paQBWVPD6/9KNNIQ6O6GusjzPfDW8H
         NKyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=KzvMAdl3Ruc3K/12dy3Y7DrljXTnKXvbAcHLsnRqDB8=;
        b=BKF4RC5dC205Oc/TI0cmruW9J4e26uIeUNhhyDmTtpfDRdGkiIuR2Wl+sy3b2UOGGy
         gCVus+ejNm34S53tX3kOjP1QS2E8E5nnotqPBqRczSR5S8f7JiaswTAESO0NFvrWoVCu
         M0ZhH9s/usGxUM8kZJIoq6aFsgWwYMp9smUVy86nUvBxvSJlpvIExNpwEz9uOyiOaC3Q
         fwb3KBbCk7FC3LOX0AZFYpoQcclodOUFyRA9HSL5lpPlwwfInOoiIngjSMlvs/c4FXe2
         lDt/Q4kWdybPy9BClR18Q6MyAafiZ7z2Kv96v+zReWUkrmPsos3Q+3vi1zpQc8+fAYcW
         PWhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0MC08SjO;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=SDPAxqej;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KzvMAdl3Ruc3K/12dy3Y7DrljXTnKXvbAcHLsnRqDB8=;
        b=Cw5815tXc7EG66B7PdXUJDqLyYKlPYkraE03yK43cdfsjCr6UJ8z0dANSz1yvkxdFm
         XgefbIY93EYhNYM77xZVDBiKL2cGsJ3A3vPrzVYuPsk67gbB1oX+M0NTpvlIpPawuVIH
         6MweLcXeQmXDkSAaLupg3hJnl7e8hy6XgJMc2t4+78Yf6VwgjWy9/Is83URDaZ7NBaFh
         0XVK0R9IgQIKuBUplRgabZkAhoLez0dhD1PCwCwfLsmyvgXb4f8yCbNMV5tr7dTBh/T8
         PJ6Z2c3IGvjeSd7ZsXokowWuJeoLsBG5M2YWO8lEKbNBCOMS4xkke7DS8+Oe6ehEK3aS
         1CUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KzvMAdl3Ruc3K/12dy3Y7DrljXTnKXvbAcHLsnRqDB8=;
        b=HWIsq26d90ASpCe1wm1Wuk+Q3tsxXwPs5ZiYkL4AMmqnXXeP7N/YcF/h366GSCHtC4
         tt8nv0M0UN7mt+bIG0bzc/LY2NnigxTrdxOTED6mxwY23ghqyEuSOR4aHEpNrklp2BRU
         /JMEO5v4cXkq20zvave2txJcV2Uu4y5aA1EHeeDY43ljVylQBWT51YpoeMrEkynFRWLu
         PkGYPOjVxQe6oBlmgOdm2YqdYJEmjuNFdV7iEE6Ynp2MssWhdlGAIJF1lGH0TOpVeLJQ
         kEq/I295GbH/xlkYRSIULV3HCo7Yd8S2mVDuwj4yZd1wYIqfm0fk+PuCDAVb6T9cfM3j
         8jLA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533lq0y8HNsrQ2rNr0BcSqI9T4d7vmh3l5Bv1ft91t94h1x2OnG1
	YYi5G4wLFI6R/KKqyVzYCIQ=
X-Google-Smtp-Source: ABdhPJw4SqADyInBeV+ukab/38qiKOoD4M6n7lXLQS6pwpPqoIpD8GPemV/eYaVumaRvAwupDSVcig==
X-Received: by 2002:a5d:6ac7:: with SMTP id u7mr5946622wrw.57.1639601461103;
        Wed, 15 Dec 2021 12:51:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:3b56:: with SMTP id i83ls1682947wma.0.canary-gmail; Wed,
 15 Dec 2021 12:51:00 -0800 (PST)
X-Received: by 2002:a1c:1b15:: with SMTP id b21mr1930147wmb.174.1639601460065;
        Wed, 15 Dec 2021 12:51:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639601460; cv=none;
        d=google.com; s=arc-20160816;
        b=RZRdS5Nq3+kI31ubi7yfs2C4FYIoQafBZ7geJ+Xlvqm97fdWs11LitfLfWTYV4PcOL
         4dqioH29FVn5ajDGLz8u8wQJiuWD5SHTQ1Zb4HB8F+QwVGoDYX5PfyoUIyDiFE2dKchZ
         fLbJcs/fMrnftdNGioAAwTpoTkHKrD5vVx4fOzvWv77hHEuxYCWWSW9gAguVpKgwS6Ht
         /SCVTnkETsg6LGr+7ffFLkiYk8Z0cklx9rhoZ1glkHADOupCl0pbPUwTidbJLzYCR1Gi
         UfaqqjIm4jDfyVAR9wXd0IjL60+/e+S4KOGt11R61ZCWIRF3A1ZOfDriMlqj6NsQx3XC
         940Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=77DCNiXl9B9x9ao8a3ckFicR+A7/8jsezE822YCoYkI=;
        b=jzzqpkmlMcQ1m9jpn5Eo61s4TqOP6swqltGIvwalb0NTKbYfx9bQh3Xf6e5GrZRMjU
         PyGqXX3n+v28qLn4LwQ5VJvv86r/mBFJVMnR8dE727O9oR1XgTgddEMy4LnLddCJPPCD
         X5DeGvLgqhJIoYYgc5GDeYWKiTbhcXpS2pnpMhbSdn0EVEGNIUU5CDGl0nKgN4cKOHNN
         rVgsyGPSOMCprTJJ2RPE9hh+F2av0uaD1Tt8JQtL2ciiJfXbYQbG8+LnkPNTDUVI4ZzU
         gWsCd5iv6lC2Mh9HcJfo9xSPx4KpdCFWzussa28087e6lQsZuHKSsNmpzWz5vRBoQ2Nc
         d2XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0MC08SjO;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=SDPAxqej;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o29si200919wms.1.2021.12.15.12.50.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 12:50:59 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex
 Williamson <alex.williamson@redhat.com>, Kevin Tian
 <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>, Megha Dey
 <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
 xen-devel@lists.xenproject.org, Juergen Gross <jgross@suse.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Niklas Schnelle
 <schnelle@linux.ibm.com>, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, Logan
 Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Nishanth Menon <nm@ti.com>
Subject: Re: [patch V2 21/31] soc: ti: ti_sci_inta_msi: Rework MSI
 descriptor allocation
In-Reply-To: <20211206210748.737904583@linutronix.de>
References: <20211206210600.123171746@linutronix.de>
 <20211206210748.737904583@linutronix.de>
Date: Wed, 15 Dec 2021 21:50:58 +0100
Message-ID: <87a6h1r3rh.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=0MC08SjO;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=SDPAxqej;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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

On Mon, Dec 06 2021 at 23:51, Thomas Gleixner wrote:
>
> No functional change intended.

Famous last words.

>  static int ti_sci_inta_msi_alloc_descs(struct device *dev,
>  				       struct ti_sci_resource *res)
>  {
> -	struct msi_desc *msi_desc;
> +	struct msi_desc msi_desc;
>  	int set, i, count = 0;
>  
> +	memset(&msi_desc, 0, sizeof(msi_desc));

This fails to initialize msi_desc.nvec_used which makes the subsequent
interrupt allocation fail. Delta fix below.

Thanks,

        tglx
---
--- a/drivers/soc/ti/ti_sci_inta_msi.c
+++ b/drivers/soc/ti/ti_sci_inta_msi.c
@@ -68,6 +68,7 @@ static int ti_sci_inta_msi_alloc_descs(s
 	int set, i, count = 0;
 
 	memset(&msi_desc, 0, sizeof(msi_desc));
+	msi_desc.nvec_used = 1;
 
 	for (set = 0; set < res->sets; set++) {
 		for (i = 0; i < res->desc[set].num; i++, count++) {

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87a6h1r3rh.ffs%40tglx.
