Return-Path: <linux-ntb+bncBDXJDZXNUMORB5UZX6GQMGQETEBCN2Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECF646C622
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Dec 2021 22:07:03 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id r20-20020a2eb894000000b0021a4e932846sf133209ljp.6
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Dec 2021 13:07:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638911222; cv=pass;
        d=google.com; s=arc-20160816;
        b=amnVt5GF/kAjIrVJ4epFfuqpIi1dmlh3uKRvLV0ZHFvjMt25VhqvvqkjB3Qk7PjK11
         ZgWg9B3KX7IRp0RV5Zr/sGqnW+5YwBFwFoamiX5D4T73b4os4XzkHaFl7Vpi2p3gze+W
         H/TSeMgpxINs26Pfpg1+F6c7dTOf9mK0eLBJ3ki3tgUSEDNyFMdx13owgmuLrmG0jbNt
         0IJx/igLpM9TvRduP6r73wfbC3neFjXtcf8LAklu45/squrFsAOiFGbsd/+Xb/x/ttQs
         IlDyEh/LwnYnjhlsJuH8O9ZF2kS5bXQebSv13Uc91fp+lHN9UeqUyxqTfYO6hUK10kH3
         obNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=eMU1ph4HqF5PEtJsTh0TpLUI2VRqxyVx+SHbDqeroKo=;
        b=kdcks3o/LUccT3tapCYnKUCwWNNQMViBS8cjG63hpXUrf0tVcO4cn1nAhQ0LPs76Ah
         y9fEhSuruKyCNwd9n2Kc0/sib2j5pDQigLPQrHva2DD9F6gXPmfZaq3Df2HkfurI2h1h
         FBcqpvCprlhJw1GHdLwJIkkxH7bwuuSQh8lnkWIGBMVmW4VSrSKsSvLhGKkgRQIsoTMp
         UaRqqKo2zPUYNsgGZS/jtMzPYySoCVjlfEYIhcCXoUSyVNpet4pBJh/v3DpDioN7Ofz+
         EUflbz+XURJLIoGKtIoEZMIkzfYhGpowJxCsCCdocGuEsQIGWvg4WDOYSjvwsbwq1JV2
         1XWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=b+Kx6nja;
       spf=pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eMU1ph4HqF5PEtJsTh0TpLUI2VRqxyVx+SHbDqeroKo=;
        b=LiPOMKqPKY8HgptevdAQyz2WJcwP8NceZldzjrGMG18ox6u3PNxA3R2n+iGD42/w7I
         exCBdJwL3uYn3mqvgJy+JNWnx/q/UFg95RYeA2Z9Rgt3RmWG5uaqasL+3CnB8XV6w8mc
         7uaLC5qHq/SByIUwiT2bIISdfzatdNggiTG8I2bx3By7m8jJ5NfYHBj97vVJEX/6fwxS
         RkbIXXJfUwOxBvcGivnVWQLPLH1ah4zwGnj6XfHOxKmkvtB5WYRgrlR9bldGlrji5RI+
         E0Xd6j99uAwu8bp9iKKQiKfd60Y7Rh3ahjouB80PMM/NXc2XEK+SDm9iF/1Yj0Wh/3iB
         9udg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMU1ph4HqF5PEtJsTh0TpLUI2VRqxyVx+SHbDqeroKo=;
        b=tSwsqtA8LjzLlqU+WFa+EkN9KGGwMIE2gfB61Hz2E6bj5PCJxI+p9cKs3KMX1KwV4i
         PTxKCcj2Cxa9HU8yO9EqC8Nhk7AZuosqXYvkEr3w8GrTMvIfh6MfbvFC4MdAor0PotDt
         nZOvPKYhoqkF3kGDBQ6Cy/HlJHIAkHodDPXdLyW/7jLOZtr0TL3xpYHhbBjV6E3/Kd3d
         P6xS41nNxbXeeH5ypS/b6zQtLO+uDga+fU+modYAFPo9U8AM08wR1JQ/d4u6NBe48T5C
         ztzTgtmp2kAlkbT++Hd/kb7HBlO3HyM+4g3niXupHirWQUybALJPfVPS0mBRpa14cmE/
         5lOA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531YolDXTfinluKHeMNqb+rgnrjF57sHAVuYSu/uPwCGo6WckCSi
	mY3XzLIvb30gZl9UkxMcFuU=
X-Google-Smtp-Source: ABdhPJzVnrMGwxTreJJgsdRzb3b+xxJ8rmuoYSdW8CwPAi9T613/DIG+4KZ/AQ7vDgPzNtYrT4WOmg==
X-Received: by 2002:a05:651c:323:: with SMTP id b3mr44881763ljp.316.1638911222585;
        Tue, 07 Dec 2021 13:07:02 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3e10:: with SMTP id i16ls4289lfv.3.gmail; Tue, 07
 Dec 2021 13:07:01 -0800 (PST)
X-Received: by 2002:a05:6512:12c9:: with SMTP id p9mr44166077lfg.43.1638911221501;
        Tue, 07 Dec 2021 13:07:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638911221; cv=none;
        d=google.com; s=arc-20160816;
        b=OtjUMOIoX6y3d1kwdlR2fmtlGALWDFJx1SKFdGjqMQeHIQCz7x9DkIrRShgRhgGizh
         r7JrGTyPA+JXl4+khiLUR1+PIlDYc9Qzs4YUd6DzFWh8adcF1duvhoxVq1HQy+VATWn8
         jiNeTlqmLdlzBPJMnsqMPYT3kcR2YEj9QeBXx5rqaqbW5sZBF+FVFfZTLdvJWehPf+9s
         Vhyx4s2hwe2YEJyhLGIpPYw7gjt6c3NhWuSfJkFJCiAoar4FdPwpy+p4+mwS6Jfn7EfM
         +Dy5qvLXcjsTk1LDCx1+lCkCDNCui68vXVK0T59uYjwP2E6HBESL2DhXGq98Rml0JI9B
         OVqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=suehN5Ccdma6yaBCtk44YE9xYsRX/3hWcI6JVgWHuH8=;
        b=nXfQUDWEfIGKgjL8pF+K3sIB0ATD+MB5GHmCkcr6RK7CW/xdcbNZN4L6nBYAbJOSG9
         D10R0NE/jHcKb17wqOanWILJX+h1ZMZLFZpHPDGekgOd8qMuOgS3kLm3jaqyLslPWKuw
         zKAziLrJedb5d54JUMQmuZnMuj3/lDdduqzzQQj4hUnyfN3DNUjPzCU5iTDodrzOPKXG
         7u1waWSfJgx7bOm60C8FmkP9zlJkbKKXp4yv4T7q62bl6QoiCxQdV7hdOdh0NRB6JTNK
         m5FMwk3uBZUovSTT4lykj9tyUnec9SXBUUJTAM2sua3XAn8U+9qQDwNOrd8bTU4/dV2M
         Dffw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=b+Kx6nja;
       spf=pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id w21si18714ljd.2.2021.12.07.13.07.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Dec 2021 13:07:01 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 762F5B81E81;
	Tue,  7 Dec 2021 21:07:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD973C341C3;
	Tue,  7 Dec 2021 21:06:58 +0000 (UTC)
Date: Tue, 7 Dec 2021 15:06:57 -0600
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
Subject: Re: [patch V2 07/31] PCI/MSI: Protect MSI operations
Message-ID: <20211207210657.GA78127@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211206210747.982292705@linutronix.de>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=b+Kx6nja;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as
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

On Mon, Dec 06, 2021 at 11:51:13PM +0100, Thomas Gleixner wrote:
> To prepare for dynamic extension of MSI-X vectors, protect the MSI
> operations for MSI and MSI-X. This requires to move the invocation of
> irq_create_affinity_masks() out of the descriptor lock section to avoid
> reverse lock ordering vs. CPU hotplug lock as some callers of the PCI/MSI
> allocation interfaces already hold it.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/msi/irqdomain.c |    4 -
>  drivers/pci/msi/msi.c       |  120 ++++++++++++++++++++++++++------------------
>  2 files changed, 73 insertions(+), 51 deletions(-)
> 
> --- a/drivers/pci/msi/irqdomain.c
> +++ b/drivers/pci/msi/irqdomain.c
> @@ -14,7 +14,7 @@ int pci_msi_setup_msi_irqs(struct pci_de
>  
>  	domain = dev_get_msi_domain(&dev->dev);
>  	if (domain && irq_domain_is_hierarchy(domain))
> -		return msi_domain_alloc_irqs(domain, &dev->dev, nvec);
> +		return msi_domain_alloc_irqs_descs_locked(domain, &dev->dev, nvec);
>  
>  	return pci_msi_legacy_setup_msi_irqs(dev, nvec, type);
>  }
> @@ -25,7 +25,7 @@ void pci_msi_teardown_msi_irqs(struct pc
>  
>  	domain = dev_get_msi_domain(&dev->dev);
>  	if (domain && irq_domain_is_hierarchy(domain))
> -		msi_domain_free_irqs(domain, &dev->dev);
> +		msi_domain_free_irqs_descs_locked(domain, &dev->dev);
>  	else
>  		pci_msi_legacy_teardown_msi_irqs(dev);
>  }
> --- a/drivers/pci/msi/msi.c
> +++ b/drivers/pci/msi/msi.c
> @@ -322,11 +322,13 @@ static void __pci_restore_msix_state(str
>  
>  	write_msg = arch_restore_msi_irqs(dev);
>  
> +	msi_lock_descs(&dev->dev);
>  	for_each_pci_msi_entry(entry, dev) {
>  		if (write_msg)
>  			__pci_write_msi_msg(entry, &entry->msg);
>  		pci_msix_write_vector_ctrl(entry, entry->pci.msix_ctrl);
>  	}
> +	msi_unlock_descs(&dev->dev);
>  
>  	pci_msix_clear_and_set_ctrl(dev, PCI_MSIX_FLAGS_MASKALL, 0);
>  }
> @@ -339,20 +341,16 @@ void pci_restore_msi_state(struct pci_de
>  EXPORT_SYMBOL_GPL(pci_restore_msi_state);
>  
>  static struct msi_desc *
> -msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity *affd)
> +msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity_desc *masks)
>  {
> -	struct irq_affinity_desc *masks = NULL;
>  	struct msi_desc *entry;
>  	unsigned long prop;
>  	u16 control;
>  
> -	if (affd)
> -		masks = irq_create_affinity_masks(nvec, affd);
> -
>  	/* MSI Entry Initialization */
>  	entry = alloc_msi_entry(&dev->dev, nvec, masks);
>  	if (!entry)
> -		goto out;
> +		return NULL;
>  
>  	pci_read_config_word(dev, dev->msi_cap + PCI_MSI_FLAGS, &control);
>  	/* Lies, damned lies, and MSIs */
> @@ -379,8 +377,7 @@ msi_setup_entry(struct pci_dev *dev, int
>  	if (entry->pci.msi_attrib.is_64)
>  		prop |= MSI_PROP_64BIT;
>  	msi_device_set_properties(&dev->dev, prop);
> -out:
> -	kfree(masks);
> +
>  	return entry;
>  }
>  
> @@ -416,14 +413,21 @@ static int msi_verify_entries(struct pci
>  static int msi_capability_init(struct pci_dev *dev, int nvec,
>  			       struct irq_affinity *affd)
>  {
> +	struct irq_affinity_desc *masks = NULL;
>  	struct msi_desc *entry;
>  	int ret;
>  
>  	pci_msi_set_enable(dev, 0);	/* Disable MSI during set up */
>  
> -	entry = msi_setup_entry(dev, nvec, affd);
> -	if (!entry)
> -		return -ENOMEM;
> +	if (affd)
> +		masks = irq_create_affinity_masks(nvec, affd);
> +
> +	msi_lock_descs(&dev->dev);
> +	entry = msi_setup_entry(dev, nvec, masks);
> +	if (!entry) {
> +		ret = -ENOMEM;
> +		goto unlock;
> +	}
>  
>  	/* All MSIs are unmasked by default; mask them all */
>  	pci_msi_mask(entry, msi_multi_mask(entry));
> @@ -446,11 +450,14 @@ static int msi_capability_init(struct pc
>  
>  	pcibios_free_irq(dev);
>  	dev->irq = entry->irq;
> -	return 0;
> +	goto unlock;
>  
>  err:
>  	pci_msi_unmask(entry, msi_multi_mask(entry));
>  	free_msi_irqs(dev);
> +unlock:
> +	msi_unlock_descs(&dev->dev);
> +	kfree(masks);
>  	return ret;
>  }
>  
> @@ -477,23 +484,18 @@ static void __iomem *msix_map_region(str
>  
>  static int msix_setup_entries(struct pci_dev *dev, void __iomem *base,
>  			      struct msix_entry *entries, int nvec,
> -			      struct irq_affinity *affd)
> +			      struct irq_affinity_desc *masks)
>  {
> -	struct irq_affinity_desc *curmsk, *masks = NULL;
> +	int i, vec_count = pci_msix_vec_count(dev);
> +	struct irq_affinity_desc *curmsk;
>  	struct msi_desc *entry;
>  	void __iomem *addr;
> -	int ret, i;
> -	int vec_count = pci_msix_vec_count(dev);
> -
> -	if (affd)
> -		masks = irq_create_affinity_masks(nvec, affd);
>  
>  	for (i = 0, curmsk = masks; i < nvec; i++) {
>  		entry = alloc_msi_entry(&dev->dev, 1, curmsk);
>  		if (!entry) {
>  			/* No enough memory. Don't try again */
> -			ret = -ENOMEM;
> -			goto out;
> +			return -ENOMEM;
>  		}
>  
>  		entry->pci.msi_attrib.is_msix	= 1;
> @@ -522,10 +524,7 @@ static int msix_setup_entries(struct pci
>  			curmsk++;
>  	}
>  	msi_device_set_properties(&dev->dev, MSI_PROP_PCI_MSIX | MSI_PROP_64BIT);
> -	ret = 0;
> -out:
> -	kfree(masks);
> -	return ret;
> +	return 0;
>  }
>  
>  static void msix_update_entries(struct pci_dev *dev, struct msix_entry *entries)
> @@ -552,6 +551,41 @@ static void msix_mask_all(void __iomem *
>  		writel(ctrl, base + PCI_MSIX_ENTRY_VECTOR_CTRL);
>  }
>  
> +static int msix_setup_interrupts(struct pci_dev *dev, void __iomem *base,
> +				 struct msix_entry *entries, int nvec,
> +				 struct irq_affinity *affd)
> +{
> +	struct irq_affinity_desc *masks = NULL;
> +	int ret;
> +
> +	if (affd)
> +		masks = irq_create_affinity_masks(nvec, affd);
> +
> +	msi_lock_descs(&dev->dev);
> +	ret = msix_setup_entries(dev, base, entries, nvec, masks);
> +	if (ret)
> +		goto out_free;
> +
> +	ret = pci_msi_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSIX);
> +	if (ret)
> +		goto out_free;
> +
> +	/* Check if all MSI entries honor device restrictions */
> +	ret = msi_verify_entries(dev);
> +	if (ret)
> +		goto out_free;
> +
> +	msix_update_entries(dev, entries);
> +	goto out_unlock;
> +
> +out_free:
> +	free_msi_irqs(dev);
> +out_unlock:
> +	msi_unlock_descs(&dev->dev);
> +	kfree(masks);
> +	return ret;
> +}
> +
>  /**
>   * msix_capability_init - configure device's MSI-X capability
>   * @dev: pointer to the pci_dev data structure of MSI-X device function
> @@ -592,20 +626,9 @@ static int msix_capability_init(struct p
>  	/* Ensure that all table entries are masked. */
>  	msix_mask_all(base, tsize);
>  
> -	ret = msix_setup_entries(dev, base, entries, nvec, affd);
> +	ret = msix_setup_interrupts(dev, base, entries, nvec, affd);
>  	if (ret)
> -		goto out_free;
> -
> -	ret = pci_msi_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSIX);
> -	if (ret)
> -		goto out_free;
> -
> -	/* Check if all MSI entries honor device restrictions */
> -	ret = msi_verify_entries(dev);
> -	if (ret)
> -		goto out_free;
> -
> -	msix_update_entries(dev, entries);
> +		goto out_disable;
>  
>  	/* Set MSI-X enabled bits and unmask the function */
>  	pci_intx_for_msi(dev, 0);
> @@ -615,12 +638,8 @@ static int msix_capability_init(struct p
>  	pcibios_free_irq(dev);
>  	return 0;
>  
> -out_free:
> -	free_msi_irqs(dev);
> -
>  out_disable:
>  	pci_msix_clear_and_set_ctrl(dev, PCI_MSIX_FLAGS_ENABLE, 0);
> -
>  	return ret;
>  }
>  
> @@ -725,8 +744,10 @@ void pci_disable_msi(struct pci_dev *dev
>  	if (!pci_msi_enable || !dev || !dev->msi_enabled)
>  		return;
>  
> +	msi_lock_descs(&dev->dev);
>  	pci_msi_shutdown(dev);
>  	free_msi_irqs(dev);
> +	msi_unlock_descs(&dev->dev);
>  }
>  EXPORT_SYMBOL(pci_disable_msi);
>  
> @@ -812,8 +833,10 @@ void pci_disable_msix(struct pci_dev *de
>  	if (!pci_msi_enable || !dev || !dev->msix_enabled)
>  		return;
>  
> +	msi_lock_descs(&dev->dev);
>  	pci_msix_shutdown(dev);
>  	free_msi_irqs(dev);
> +	msi_unlock_descs(&dev->dev);
>  }
>  EXPORT_SYMBOL(pci_disable_msix);
>  
> @@ -874,7 +897,6 @@ int pci_enable_msi(struct pci_dev *dev)
>  
>  	if (!rc)
>  		rc = __pci_enable_msi_range(dev, 1, 1, NULL);
> -
>  	return rc < 0 ? rc : 0;
>  }
>  EXPORT_SYMBOL(pci_enable_msi);
> @@ -961,11 +983,7 @@ int pci_alloc_irq_vectors_affinity(struc
>  				   struct irq_affinity *affd)
>  {
>  	struct irq_affinity msi_default_affd = {0};
> -	int ret = msi_setup_device_data(&dev->dev);
> -	int nvecs = -ENOSPC;
> -
> -	if (ret)
> -		return ret;
> +	int ret, nvecs;
>  
>  	if (flags & PCI_IRQ_AFFINITY) {
>  		if (!affd)
> @@ -975,6 +993,10 @@ int pci_alloc_irq_vectors_affinity(struc
>  			affd = NULL;
>  	}
>  
> +	ret = msi_setup_device_data(&dev->dev);
> +	if (ret)
> +		return ret;
> +
>  	if (flags & PCI_IRQ_MSIX) {
>  		nvecs = __pci_enable_msix_range(dev, NULL, min_vecs, max_vecs,
>  						affd, flags);
> @@ -1003,7 +1025,7 @@ int pci_alloc_irq_vectors_affinity(struc
>  		}
>  	}
>  
> -	return nvecs;
> +	return -ENOSPC;
>  }
>  EXPORT_SYMBOL(pci_alloc_irq_vectors_affinity);
>  
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211207210657.GA78127%40bhelgaas.
