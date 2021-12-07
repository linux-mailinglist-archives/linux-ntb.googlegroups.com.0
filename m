Return-Path: <linux-ntb+bncBDXJDZXNUMORBGU2X6GQMGQEER3YBFY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F73D46C633
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Dec 2021 22:07:40 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id d9-20020a251d09000000b005c208092922sf591880ybd.20
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Dec 2021 13:07:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638911259; cv=pass;
        d=google.com; s=arc-20160816;
        b=qgH6LAoUwskpKmHVOpzJpSx2n/AKPVE4+3Y7H+JNfEWUx4xBwfo4AWCUW3RohVIRAs
         fsGItrJI7ljO2z5nHGQ/gRLCWWBPQ/cPCCCxPJxcv64QInYtk4tyV41sBsIX3d9ETKvt
         nG7eSdzEgfJoDz4LTGcf6UVeWr3N6IiuXAK/f3Zv6Ko8PXcqfQnDLN7/GlVVSgh1B2FN
         zhzDKeBUnCB56+PYMGLfj43FJ2DvL05Yn9OiJ5Vh8FZ1dxaRRzpFIdcFiaPyMs3i6C7f
         EHJSiBInbzicv1Jj7quaSPfJK5m2vcM7+uM6tbXtD0wfXMUoFM98M4/UmjcX2xPtroxG
         20jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=d5iFX2aK7PUyZ5JJa0Pi7zJ7VpsqqNti+T6vIzInjTA=;
        b=KZH3Njc17fzGNIgh8rP8Yx1MVgu2gcI9oUK0GtMF68qCv/cEd3kK46rD8+YhwjXOYM
         3u004XckVewkLYS5rEC0ixUnHTmrsDvF3Zs+z0A8Y2HC44/0tZ7YOERNuRMWMf9Gx3fE
         +3LKqAeGXr6RBTXt3dPvpDmmESt7TZkI+El45uarx18YvHEZ5n1pqG8d5BMVUE00vNN6
         P+8tnDd/TJWi1W5T6OnUeUYIHy+ktyjZbIOuHw+F2Kc4VbwpG+DVijsywgJ13GT+++j7
         4EMlxt3cMyP7FL2JuLoVtxRIAVvIhPTwFnXgfHhuaRNwuiR4mBGKEVbOPYsRotU6fPKp
         sGlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BDdTrFkG;
       spf=pass (google.com: domain of helgaas@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d5iFX2aK7PUyZ5JJa0Pi7zJ7VpsqqNti+T6vIzInjTA=;
        b=lPmRwmgHZqfNv2dA86A1B0BksA5lZTEDHPwQ7fUqRQuiJIz0GWpuvuEgOJkTTYr1si
         jaQ8xlGU/NwrCej91+nQcQoy3/fA9cift7EypgbJsvYMCpbKTHbPmaG2nYT0udI9ySIT
         FJLa5PxgW9sA6udILSa/8TbfRI46AQ3PP8BFrRLkHHd2Si0ao64qFRPvjl1R3oI8C80/
         3A1y/7ngbsMMvnddtboIJ/T0J/3pR7zRSZCMSS6cphjJ4W1EZzVECPqBIE2xIbnfYwa1
         I0fitcaN8Ktcf+XZZuskAs/1G+dLf+poVvynf9M5Pm3jOwKDKnblTzZSkYGdUlnfjAM2
         Rq2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d5iFX2aK7PUyZ5JJa0Pi7zJ7VpsqqNti+T6vIzInjTA=;
        b=ZBVovmrUZR3dMFRDHvaP+TAccvyFJ4AoMNxK7eKHKmy4E5c4j8Z63w1DoBrSQ5/r/m
         QXYsL0lp3vej6x9xrsHkAcypa7tWnVfwk8Zj1gjLuIFtd/EiQkSNbF9ENqqnljSJhSou
         lHtHySIfDAmznvQzx4z5YTzmkI7UbMFbaAMGQYgmXQaINt3jx3qSCi5M2X0It7dfLX8p
         bIHDT4KP3w43fSxFZY7Cb0ryTvWQ0pC+TZimGw7LcyQMHxKZeEzyUtgx6O/gIqShtqLw
         zzVmcrL6htmxbJ3KsS3i9XODRBdiM2HZAFpaPF1qIQoc2SnK0vAkvp7LL+njs3gtXiwT
         Qi7Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5318YVccgQIEOM2nWLCm69OWA4XkC0fOP+JhooV+AiD8JFyCt4iL
	h4onKmjmjeCHUfYYKV3TE2Q=
X-Google-Smtp-Source: ABdhPJyBvhWjrqSK8HIUWgjDChwIrX9/+DiERjeqNKkBoIsembCOB1CiUeS1tWF2y25Lj2Rbz54Hjg==
X-Received: by 2002:a25:7084:: with SMTP id l126mr56728953ybc.310.1638911258885;
        Tue, 07 Dec 2021 13:07:38 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:ac09:: with SMTP id w9ls98685ybi.5.gmail; Tue, 07 Dec
 2021 13:07:38 -0800 (PST)
X-Received: by 2002:a25:d248:: with SMTP id j69mr53253724ybg.693.1638911258177;
        Tue, 07 Dec 2021 13:07:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638911258; cv=none;
        d=google.com; s=arc-20160816;
        b=qGa0oBEMk+E5wuzd/Iv2RYP65pGc/JgkIarZfYmcg7IEsWzOAHckneanpTUHK+mSG8
         1x1lSGv1CYRpxInALisFq7UUhhcDQicViD1lZ2R4bGDdaz2IQXLBtI8Bw2iAHU7APJ1z
         nDHczgWWuP6+m7AAEjFidAI8lhAgKLum3VJUFw6kt84OqVFc4iOcMMm7Agnt58vtyEyq
         Rjg4ONEn8iPHU1BYDhvCPDV0hjbu6VaoEpbt12YvgsHmAjPCYfoyVAOMFQgxWOFDq8D+
         W+AQzO8tflzZ6QcK8sa1N5kE2nr6VC7JKiBOwIp1R/QKO67613XTFaZy0tVnIx3qQlId
         emwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=0Y/YaGbTzYCwtv80h1zoQ0Fwy1crBhb5M7wPHqD0yd0=;
        b=P1bujErSHltHgioXjNk4lai8WAsjabEJxQzgfXe6yfltLjbZ0vFv+PVLXo9qZbXSXP
         fNIMAyVSnAweLuMKfOWlTRQSzc4tg/+royct0LVs7At12devvBgBPfPI5ElJ+I0o5HGF
         is1QwFL6am3zLjmIF7c5nd1aQvHDWqdOO7QxAjFnMvw6b513x3g02d4RbOilzRZGtBJd
         oNptl9P+mGkDT1cjb83EsmhwGnwIpHCvcRFk2IL/VoKboXcaWRzORIPQYJppclwT40Z5
         4/nGU1VF3/E5ke1rjpjQLHfIoDZ6hgiOaOFrL/M7uF3/iSdXwH5aV/ibmLpltT1NcKKO
         QaAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BDdTrFkG;
       spf=pass (google.com: domain of helgaas@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id e33si82101ybi.2.2021.12.07.13.07.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Dec 2021 13:07:38 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 84C38CE1E71;
	Tue,  7 Dec 2021 21:07:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 581B4C341C1;
	Tue,  7 Dec 2021 21:07:33 +0000 (UTC)
Date: Tue, 7 Dec 2021 15:07:32 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Marc Zygnier <maz@kernel.org>,
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
Subject: Re: [patch V2 09/31] PCI/MSI: Let core code free MSI descriptors
Message-ID: <20211207210732.GA78249@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211206210748.089085131@linutronix.de>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BDdTrFkG;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Dec 06, 2021 at 11:51:16PM +0100, Thomas Gleixner wrote:
> Set the domain info flag which tells the core code to free the MSI
> descriptors from msi_domain_free_irqs() and add an explicit call to the
> core function into the legacy code.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/msi/irqdomain.c |    3 ++-
>  drivers/pci/msi/legacy.c    |    1 +
>  drivers/pci/msi/msi.c       |   14 --------------
>  3 files changed, 3 insertions(+), 15 deletions(-)
> 
> --- a/drivers/pci/msi/irqdomain.c
> +++ b/drivers/pci/msi/irqdomain.c
> @@ -171,7 +171,8 @@ struct irq_domain *pci_msi_create_irq_do
>  	if (info->flags & MSI_FLAG_USE_DEF_CHIP_OPS)
>  		pci_msi_domain_update_chip_ops(info);
>  
> -	info->flags |= MSI_FLAG_ACTIVATE_EARLY | MSI_FLAG_DEV_SYSFS;
> +	info->flags |= MSI_FLAG_ACTIVATE_EARLY | MSI_FLAG_DEV_SYSFS |
> +		       MSI_FLAG_FREE_MSI_DESCS;
>  	if (IS_ENABLED(CONFIG_GENERIC_IRQ_RESERVATION_MODE))
>  		info->flags |= MSI_FLAG_MUST_REACTIVATE;
>  
> --- a/drivers/pci/msi/legacy.c
> +++ b/drivers/pci/msi/legacy.c
> @@ -80,4 +80,5 @@ void pci_msi_legacy_teardown_msi_irqs(st
>  {
>  	msi_device_destroy_sysfs(&dev->dev);
>  	arch_teardown_msi_irqs(dev);
> +	msi_free_msi_descs(&dev->dev);
>  }
> --- a/drivers/pci/msi/msi.c
> +++ b/drivers/pci/msi/msi.c
> @@ -224,22 +224,8 @@ EXPORT_SYMBOL_GPL(pci_write_msi_msg);
>  
>  static void free_msi_irqs(struct pci_dev *dev)
>  {
> -	struct list_head *msi_list = dev_to_msi_list(&dev->dev);
> -	struct msi_desc *entry, *tmp;
> -	int i;
> -
> -	for_each_pci_msi_entry(entry, dev)
> -		if (entry->irq)
> -			for (i = 0; i < entry->nvec_used; i++)
> -				BUG_ON(irq_has_action(entry->irq + i));
> -
>  	pci_msi_teardown_msi_irqs(dev);
>  
> -	list_for_each_entry_safe(entry, tmp, msi_list, list) {
> -		list_del(&entry->list);
> -		free_msi_entry(entry);
> -	}
> -
>  	if (dev->msix_base) {
>  		iounmap(dev->msix_base);
>  		dev->msix_base = NULL;
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211207210732.GA78249%40bhelgaas.
