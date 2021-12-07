Return-Path: <linux-ntb+bncBDXJDZXNUMORBJE2X6GQMGQEFCJIYBY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7ED46C639
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Dec 2021 22:07:49 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id z138-20020a1c7e90000000b003319c5f9164sf1802394wmc.7
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Dec 2021 13:07:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638911269; cv=pass;
        d=google.com; s=arc-20160816;
        b=PLIT4hkTWl7Cfbjwdj8tvfcPqfBfUYkm7wONGYrmX33N6L3QAF4Kk6MQrFzfGL+klO
         t7lEyOc91pXNdqHF6aDefAZq/VIQavv1ddhcdSDZ06tecW2y811Qnt5XNb9eGTmRJXgS
         KTrsE1eWwu42EpX1DLj6xeBvtmSyMBNOi5yQJKfMLGKPPH+LAF91osoG8STrS4XdCYWf
         X3osZ9T1HdLwPDbUuz+WR70ETygpouR3Dm/l91RiG6ppzLoTiId3qwHeDR+ufnz4n+Dp
         uIOwLOhiUwh/LSrPWZLkI2SccY9jwaN51T02CMxoKtWhuXBjayDsrPaAy9M0sA8JJFul
         D5JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9re/NNg4MJo+C6dtLTnSsOWzoYQQ/HtcjQzv/UA16+g=;
        b=0VPiFm9v2cODqJzV9D+l65GtvEhYXU+VWZ8eXsf3dN3dVjdKsX9shtKvS8kwqZx2VQ
         JQEtaGs3BJ2AvVCbBiAHjf4epuJrDZm5PBGS+buQc2B3BC+L6Kb6wUsyJGjh44EI4oAU
         y89E553HKI31TlkzLcAvy31oXyiixXVcVzRWrsJ/74FV7sNMbb2qKJktMhRcdHUWiTpa
         2eHy1Vkv04sX+OPc0aN7epxPF37AldKGa48U3G8VZXe3tCPyOiUjEa6KfYaYJBgQQlc7
         5C65BehXwY0/DQ/Jwe7lOoE8+8p3zr8F52XMoLt19im6+ezwR6ahvcAndahrOhkwbQXI
         JhTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cBYISP9L;
       spf=pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9re/NNg4MJo+C6dtLTnSsOWzoYQQ/HtcjQzv/UA16+g=;
        b=iO3gDNe3Z7gMgMEURyavThB4sVfiapyX+IXz1EeD0FlYyakVlEqDi15tVAimCoKhOO
         9a8PonHCthywZEKg3CtTUYqd6bS4mpm89jgyML5UzyCjE4OZ1cGGqBcwTdV3vy9s8h+k
         TRW7rFx67NOQ6pAwf7oNCUCjpUix65s+/EGI5yxx8DqQBjZ1TMPwE/HaqOa34DyrKOSG
         pnEg+XWKMnaQGERnlMtH8gSdncSW9l7wjai8mOZe1weaffCKLIQM8DR8qZL4zoJv41me
         TN6+qIwrUV2koyxQ5uD1mQVL0TKOngsoeKBzfrYfYSu7WzVMGfrhGm35KJ/r7x16Tfi5
         WLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9re/NNg4MJo+C6dtLTnSsOWzoYQQ/HtcjQzv/UA16+g=;
        b=wPVxi/ILH8lAVIgg1OXfJH2IrhdKPyLJf2T3zl9ovDvEPMnpzJ3eVLi6lICiPM/dWH
         xPnuFjQiqwfs9BfFtKssJMTFhLKGZbxTCBtXXNhCAWCoPA7RIuAt+uwcZVX6QNt4triM
         6Kn8wXetAtBNKkyYLJmVYm0PhdOHp+GLuQskf4Ua375U8eexwGNKEFP09PPz7DHcIE5q
         rsOBZQoVwlAIgbdIT/w0ebha0xOJUzFlbGES8Bw5gVjcjfaN7o5IFFhL6+5A6SC5aOU7
         sRBV+4WRlh39K5kuA9App1VbH1fuyca+Am2yKdjObDc0HKn+UrLEJN/tpchROsnG47YO
         ClDg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5324pdiYcJzwm0Qx3/XnvZ5B5sjEqzVUHDqi4hKh7fJDdpiZJkW0
	DEVdLlZwfT26SWfHw4sH7ZM=
X-Google-Smtp-Source: ABdhPJy80uYCCWQRsQrLYKJDwSSx4NufK+Bf3jr5wCojUglyLwq2Eu+67jnWR5mah37F7TZbdagv7w==
X-Received: by 2002:adf:e501:: with SMTP id j1mr52559779wrm.516.1638911269309;
        Tue, 07 Dec 2021 13:07:49 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:c90f:: with SMTP id f15ls12805wmb.1.gmail; Tue, 07 Dec
 2021 13:07:48 -0800 (PST)
X-Received: by 2002:a05:600c:3506:: with SMTP id h6mr10120146wmq.122.1638911268317;
        Tue, 07 Dec 2021 13:07:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638911268; cv=none;
        d=google.com; s=arc-20160816;
        b=Xk9x0PklcU2TdWn+ywHIiS1T23XjSaKoLWHcTZdZaXGVMcqHsrEYVLt/mAO+wQxAid
         OF+7eyTadjMG4icZm9/9w8YNyoGVnVd5pIdC0YbJZ3fV6PMoB9VvF+KvzWRq3hDJNR7k
         BB7SGENF1mL7d/M5rSwTtV6EgRez/UwLKnW0aG5My9AOF1UxLsvvqxVPyG5IevdGBevq
         QcIgnRu93eCVap7TevqZwlGxmwoXb9Ff+RsR3pXDumt+zr4hw67f6J+f0Lia0NcOtX7m
         vzOvSEoZCNQNoccLAWqxY6bAujmJ9zb9jCyfm9QZAC6Jl/rySfkyV8Y4q9Q/kWvUBvfg
         HGRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=XSXGNQXivrHZs+i+AszMVpkF/1h8JRUmhM/9ie/WX+Y=;
        b=qd/ERVwF0foThwiIi/n17EEOUuZ4UNTMlRIuC/O+WhHdg6qefkPZZ8C4VoIqjEr0/N
         0pe+nd7tjTAW5QueppyLaEIWO2bzKz8oGR8XYqj8p6q5z7G+rcFd2pV2EeZTOMo+2aaY
         BhIDgvS/neVdDytz5y2zvm5PmkVV6ciCztEQfrKjsnKKUrgQEJGGNxWxqi2Xh5OqIC4b
         MnsEJoQwufYPr8FAPvD9BGhqkN8slgR/oAfFqM5m8N2Gi0WqYFa1VWgObIVhVm/3/qAV
         06GEjldD7YoJWtI4vjFdGN8+jipAAE447GyYkpGBHPGuP9YYNAvUTIdkJDz6XFTqgrZM
         ETqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cBYISP9L;
       spf=pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id o29si180627wms.1.2021.12.07.13.07.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Dec 2021 13:07:48 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 094F1B81E81;
	Tue,  7 Dec 2021 21:07:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64422C341C6;
	Tue,  7 Dec 2021 21:07:47 +0000 (UTC)
Date: Tue, 7 Dec 2021 15:07:46 -0600
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
Subject: Re: [patch V2 10/31] PCI/MSI: Use msi_on_each_desc()
Message-ID: <20211207210746.GA78295@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211206210748.142603657@linutronix.de>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cBYISP9L;       spf=pass
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

On Mon, Dec 06, 2021 at 11:51:18PM +0100, Thomas Gleixner wrote:
> Use the new iterator functions which pave the way for dynamically extending
> MSI-X vectors.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/msi/irqdomain.c |    4 ++--
>  drivers/pci/msi/legacy.c    |   19 ++++++++-----------
>  drivers/pci/msi/msi.c       |   30 ++++++++++++++----------------
>  3 files changed, 24 insertions(+), 29 deletions(-)
> 
> --- a/drivers/pci/msi/irqdomain.c
> +++ b/drivers/pci/msi/irqdomain.c
> @@ -83,7 +83,7 @@ static int pci_msi_domain_check_cap(stru
>  				    struct msi_domain_info *info,
>  				    struct device *dev)
>  {
> -	struct msi_desc *desc = first_pci_msi_entry(to_pci_dev(dev));
> +	struct msi_desc *desc = msi_first_desc(dev, MSI_DESC_ALL);
>  
>  	/* Special handling to support __pci_enable_msi_range() */
>  	if (pci_msi_desc_is_multi_msi(desc) &&
> @@ -98,7 +98,7 @@ static int pci_msi_domain_check_cap(stru
>  			unsigned int idx = 0;
>  
>  			/* Check for gaps in the entry indices */
> -			for_each_msi_entry(desc, dev) {
> +			msi_for_each_desc(desc, dev, MSI_DESC_ALL) {
>  				if (desc->msi_index != idx++)
>  					return -ENOTSUPP;
>  			}
> --- a/drivers/pci/msi/legacy.c
> +++ b/drivers/pci/msi/legacy.c
> @@ -28,7 +28,7 @@ int __weak arch_setup_msi_irqs(struct pc
>  	if (type == PCI_CAP_ID_MSI && nvec > 1)
>  		return 1;
>  
> -	for_each_pci_msi_entry(desc, dev) {
> +	msi_for_each_desc(desc, &dev->dev, MSI_DESC_NOTASSOCIATED) {
>  		ret = arch_setup_msi_irq(dev, desc);
>  		if (ret)
>  			return ret < 0 ? ret : -ENOSPC;
> @@ -42,27 +42,24 @@ void __weak arch_teardown_msi_irqs(struc
>  	struct msi_desc *desc;
>  	int i;
>  
> -	for_each_pci_msi_entry(desc, dev) {
> -		if (desc->irq) {
> -			for (i = 0; i < desc->nvec_used; i++)
> -				arch_teardown_msi_irq(desc->irq + i);
> -		}
> +	msi_for_each_desc(desc, &dev->dev, MSI_DESC_ASSOCIATED) {
> +		for (i = 0; i < desc->nvec_used; i++)
> +			arch_teardown_msi_irq(desc->irq + i);
>  	}
>  }
>  
>  static int pci_msi_setup_check_result(struct pci_dev *dev, int type, int ret)
>  {
> -	struct msi_desc *entry;
> +	struct msi_desc *desc;
>  	int avail = 0;
>  
>  	if (type != PCI_CAP_ID_MSIX || ret >= 0)
>  		return ret;
>  
>  	/* Scan the MSI descriptors for successfully allocated ones. */
> -	for_each_pci_msi_entry(entry, dev) {
> -		if (entry->irq != 0)
> -			avail++;
> -	}
> +	msi_for_each_desc(desc, &dev->dev, MSI_DESC_ASSOCIATED)
> +		avail++;
> +
>  	return avail ? avail : ret;
>  }
>  
> --- a/drivers/pci/msi/msi.c
> +++ b/drivers/pci/msi/msi.c
> @@ -299,7 +299,6 @@ static void __pci_restore_msix_state(str
>  
>  	if (!dev->msix_enabled)
>  		return;
> -	BUG_ON(list_empty(dev_to_msi_list(&dev->dev)));
>  
>  	/* route the table */
>  	pci_intx_for_msi(dev, 0);
> @@ -309,7 +308,7 @@ static void __pci_restore_msix_state(str
>  	write_msg = arch_restore_msi_irqs(dev);
>  
>  	msi_lock_descs(&dev->dev);
> -	for_each_pci_msi_entry(entry, dev) {
> +	msi_for_each_desc(entry, &dev->dev, MSI_DESC_ALL) {
>  		if (write_msg)
>  			__pci_write_msi_msg(entry, &entry->msg);
>  		pci_msix_write_vector_ctrl(entry, entry->pci.msix_ctrl);
> @@ -378,14 +377,14 @@ static int msi_verify_entries(struct pci
>  	if (!dev->no_64bit_msi)
>  		return 0;
>  
> -	for_each_pci_msi_entry(entry, dev) {
> +	msi_for_each_desc(entry, &dev->dev, MSI_DESC_ALL) {
>  		if (entry->msg.address_hi) {
>  			pci_err(dev, "arch assigned 64-bit MSI address %#x%08x but device only supports 32 bits\n",
>  				entry->msg.address_hi, entry->msg.address_lo);
> -			return -EIO;
> +			break;
>  		}
>  	}
> -	return 0;
> +	return !entry ? 0 : -EIO;
>  }
>  
>  /**
> @@ -418,7 +417,7 @@ static int msi_capability_init(struct pc
>  		goto unlock;
>  
>  	/* All MSIs are unmasked by default; mask them all */
> -	entry = first_pci_msi_entry(dev);
> +	entry = msi_first_desc(&dev->dev, MSI_DESC_ALL);
>  	pci_msi_mask(entry, msi_multi_mask(entry));
>  
>  	/* Configure MSI capability structure */
> @@ -508,11 +507,11 @@ static int msix_setup_msi_descs(struct p
>  
>  static void msix_update_entries(struct pci_dev *dev, struct msix_entry *entries)
>  {
> -	struct msi_desc *entry;
> +	struct msi_desc *desc;
>  
>  	if (entries) {
> -		for_each_pci_msi_entry(entry, dev) {
> -			entries->vector = entry->irq;
> +		msi_for_each_desc(desc, &dev->dev, MSI_DESC_ALL) {
> +			entries->vector = desc->irq;
>  			entries++;
>  		}
>  	}
> @@ -705,15 +704,14 @@ static void pci_msi_shutdown(struct pci_
>  	if (!pci_msi_enable || !dev || !dev->msi_enabled)
>  		return;
>  
> -	BUG_ON(list_empty(dev_to_msi_list(&dev->dev)));
> -	desc = first_pci_msi_entry(dev);
> -
>  	pci_msi_set_enable(dev, 0);
>  	pci_intx_for_msi(dev, 1);
>  	dev->msi_enabled = 0;
>  
>  	/* Return the device with MSI unmasked as initial states */
> -	pci_msi_unmask(desc, msi_multi_mask(desc));
> +	desc = msi_first_desc(&dev->dev, MSI_DESC_ALL);
> +	if (!WARN_ON_ONCE(!desc))
> +		pci_msi_unmask(desc, msi_multi_mask(desc));
>  
>  	/* Restore dev->irq to its default pin-assertion IRQ */
>  	dev->irq = desc->pci.msi_attrib.default_irq;
> @@ -789,7 +787,7 @@ static int __pci_enable_msix(struct pci_
>  
>  static void pci_msix_shutdown(struct pci_dev *dev)
>  {
> -	struct msi_desc *entry;
> +	struct msi_desc *desc;
>  
>  	if (!pci_msi_enable || !dev || !dev->msix_enabled)
>  		return;
> @@ -800,8 +798,8 @@ static void pci_msix_shutdown(struct pci
>  	}
>  
>  	/* Return the device with MSI-X masked as initial states */
> -	for_each_pci_msi_entry(entry, dev)
> -		pci_msix_mask(entry);
> +	msi_for_each_desc(desc, &dev->dev, MSI_DESC_ALL)
> +		pci_msix_mask(desc);
>  
>  	pci_msix_clear_and_set_ctrl(dev, PCI_MSIX_FLAGS_ENABLE, 0);
>  	pci_intx_for_msi(dev, 1);
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211207210746.GA78295%40bhelgaas.
