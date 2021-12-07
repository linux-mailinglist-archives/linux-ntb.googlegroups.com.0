Return-Path: <linux-ntb+bncBDXJDZXNUMORBDM2X6GQMGQEXX44H2A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC4B46C62B
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Dec 2021 22:07:26 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id l3-20020a056e021c0300b0029fcec8f2ccsf426688ilh.9
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Dec 2021 13:07:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638911245; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ei8j/gVoV7lD4eIBEiGDdZfQszQnNHk0etg7s1TuKzOP4bf4LnBQ6EV+uSseUBlQoo
         1ltgLnCB2fYlXEra0Kz5efc79yWDoZ/IfOh74K1xGNpNfJ6sNgSV9DOatEApQH2sFmEs
         PwVALOIAzgljIGbnSq+hFqs9casiPxjFaEf5hgD6iT2ts8zkt48RKG5ozP/VDTdO/yNT
         jcKIzvpGjnDY5ARrchWaj9doK8ua/FbnsspECh7CoxHpnfz2oiZyZS2FI+BMQCHMuDmM
         tnIrBYxArmbxl74agjYdG5lA39iiivsb4Ld+5dx7hnJrhXCadmq8Cw/fnckhfb58idn/
         lDNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XTGv5sVbGgeC6ATcyLFsFRS52QBDBISx11c6cQjNcf0=;
        b=Sz+lXjg8i2NBHliTpBzbquCwqoXIxNqhNuQickvWf08wfE5ZjLxEFj9h0sE8H2F4go
         hCkLrFo4xhAziYGskDGLWwpcic0GbtYPcNZEXpKMkVUU5pDrKLpIynI5qTPKdqn6vXJ2
         naE/yekcZsmTRhCLsSXfeqsCta6HMdk5wC4B83O+zO3OrTYlgYQLctCy73C+nEpQKTH8
         wjrp/J7NZpXUObrdhR/ScY7BwBpH+waCRhSMzf43biUzyOdqLrRcd5OydPGctdmMUi4C
         qD12D/ncggYq/VtTMCnAVXrao3PfGOJ+a5jyLbh4w+6Aib2iajSRRvKmrREnyQiyDR03
         iglQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Utdeatg9;
       spf=pass (google.com: domain of helgaas@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XTGv5sVbGgeC6ATcyLFsFRS52QBDBISx11c6cQjNcf0=;
        b=ZR2OcvH8VJUqr7EcdUloyeeFwWLIOzBLt/rY6ME0KiHZi1PRqZEVJJ75PBeLDlSw57
         7U6JtslDfC93i7YbjLga55gu+/aWyQJIyy5j/tvksgpLFnl1Iv1lIoKxTnY+EiIhxYfg
         qt/l1D+lLU5/27RajOwutdC+1rKF//tMM4BA1Zf+yMtAy0dd47bzs9RzjO+eEhUFnGgs
         POvmYGIsKyxPbWihZZdOmkvx7CJECqZBbHGrb/xR0g/75cYBStSr4PPFreukTvKGasZr
         KW3H0yGu6WQMqrFO11BfkIOLbzIZsIN4LBYUboReMwP0sRvYeLBSrix/Q0V1PGpVVsj/
         /Prg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTGv5sVbGgeC6ATcyLFsFRS52QBDBISx11c6cQjNcf0=;
        b=bVJ8Z3soBonD+PgSB/8oLu9+TjvcrdaKgFFX7gSbgoza3cjQWvgBX55KVeOjpUfm2o
         lRqj8Kxo+F9bMaPqV+VQbe6C4QVrM5QIrI/ggb0UCz1MikdYSNIUdtACfqy/ujLHoOzj
         qRUNGrsL9EJOOZslwQpkIgwTNhn14Qw4ULPBej4iQidU7+pGxu4PRO+ztrhV/oCOvM8/
         q04KMwGeA/hJA1RWA71zUZi7CZlt0tVJwpqJ6jiFq14LRLIYlBIMVh8QfWKR43Z7zEaJ
         pA+vgKeStuE3ib2rQ0IDo3PRG3+2JyVYmBpodQsTFLkBmCp/HHCqaCfc38Q5BBdlt1Vl
         Uaqw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532sl6aOwVMOfvm68gFAws7jAfJ8pbCnIQ7PryYf/uWlkgl3pOZn
	tAVqjMiCk2vsK1KLwbMZcf8=
X-Google-Smtp-Source: ABdhPJztNhzGx7ouQ/ayeAVGDevEY/HmAueTpSV2dNxT9KEcdNBlcRKXEQ3YVFQiaREWw9DZNg5FOQ==
X-Received: by 2002:a05:6e02:214b:: with SMTP id d11mr1999631ilv.241.1638911245603;
        Tue, 07 Dec 2021 13:07:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:388f:: with SMTP id b15ls12864jav.0.gmail; Tue, 07
 Dec 2021 13:07:25 -0800 (PST)
X-Received: by 2002:a05:6638:1607:: with SMTP id x7mr55267129jas.27.1638911245307;
        Tue, 07 Dec 2021 13:07:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638911245; cv=none;
        d=google.com; s=arc-20160816;
        b=EuMKcd4u90PgBsP0jR0tYy3JMSzHYhTfyVodrie7E5acqSgpXbk7Sq2LGg53wGW+E8
         o//hGqeC8SvWfvlxaX9scCiOlS9zTJQSggisociv3B1eNbREpMKbRAGLW9iOd0WqrEu8
         JSJJSJyg1UZTQO/Yif3i8Bz/Xh/K3gH8lTTpeA2UQ7nMqO4iXI3xJH4c2oKZEdLfjVMX
         wyWjNc67b5O9ak/iv5WNnDbNCqIt0z6CqtTvcXSphqQ4G4SAvPnZu8sn87fiUxj52iLC
         ZuaavruyFbFTw0uGDQHsYZ2tQqzo5nK8sPsy0dRPkFt/yFRtjyA0GQr5KwQ5OTvUJRPl
         Kmbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=OUkbW7k8WTAzCKZQnEvePzVufVWygVheAcYCIiW45Uo=;
        b=BZjLbb30YzKZEdxY2xB2nzC5yf6Y8rg713w6qubL9cJfFW+DqOa3RfJZSPlCB06EEk
         0wrzR4LS7ku3ThxnyqNwhlCnruac6oYzBTGr5iakJjz1qsJ4Drq6N+HWYQW1XmL15tcn
         acy/IoDTFbTeJQyblRoIcOg7lZaibMKMO9lSJg6cmMnaIRKNid5rC66OOU4rDMKOkL70
         PalzO1mzlNXVJLWZtqDlGfzGak1ifyPOnrWqulSUd/A2+GUIpPSVRt7Q0eCBNn7SQnWk
         FgLWvvxnv585SZgurg9VDFpAcVYA1EVum3YPSrvHi7HcSbUXcmiBsuPckhsUe4WUTdNx
         rU6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Utdeatg9;
       spf=pass (google.com: domain of helgaas@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id y14si167770ill.0.2021.12.07.13.07.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Dec 2021 13:07:25 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 751A6CE1E75;
	Tue,  7 Dec 2021 21:07:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45E93C341C3;
	Tue,  7 Dec 2021 21:07:21 +0000 (UTC)
Date: Tue, 7 Dec 2021 15:07:20 -0600
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
Subject: Re: [patch V2 08/31] PCI/MSI: Use msi_add_msi_desc()
Message-ID: <20211207210720.GA78195@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211206210748.035348646@linutronix.de>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Utdeatg9;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 2604:1380:40e1:4800::1
 as permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Dec 06, 2021 at 11:51:15PM +0100, Thomas Gleixner wrote:
> Simplify the allocation of MSI descriptors by using msi_add_msi_desc()
> which moves the storage handling to core code and prepares for dynamic
> extension of the MSI-X vector space.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/msi/msi.c |  122 ++++++++++++++++++++++++--------------------------
>  1 file changed, 59 insertions(+), 63 deletions(-)
> 
> --- a/drivers/pci/msi/msi.c
> +++ b/drivers/pci/msi/msi.c
> @@ -340,45 +340,51 @@ void pci_restore_msi_state(struct pci_de
>  }
>  EXPORT_SYMBOL_GPL(pci_restore_msi_state);
>  
> -static struct msi_desc *
> -msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity_desc *masks)
> +static int msi_setup_msi_desc(struct pci_dev *dev, int nvec,
> +			      struct irq_affinity_desc *masks)
>  {
> -	struct msi_desc *entry;
> +	struct msi_desc desc;
>  	unsigned long prop;
>  	u16 control;
> +	int ret;
>  
>  	/* MSI Entry Initialization */
> -	entry = alloc_msi_entry(&dev->dev, nvec, masks);
> -	if (!entry)
> -		return NULL;
> +	memset(&desc, 0, sizeof(desc));
>  
>  	pci_read_config_word(dev, dev->msi_cap + PCI_MSI_FLAGS, &control);
>  	/* Lies, damned lies, and MSIs */
>  	if (dev->dev_flags & PCI_DEV_FLAGS_HAS_MSI_MASKING)
>  		control |= PCI_MSI_FLAGS_MASKBIT;
> +	/* Respect XEN's mask disabling */
> +	if (pci_msi_ignore_mask)
> +		control &= ~PCI_MSI_FLAGS_MASKBIT;
>  
> -	entry->pci.msi_attrib.is_64	= !!(control & PCI_MSI_FLAGS_64BIT);
> -	entry->pci.msi_attrib.can_mask	= !pci_msi_ignore_mask &&
> -					  !!(control & PCI_MSI_FLAGS_MASKBIT);
> -	entry->pci.msi_attrib.default_irq = dev->irq;
> -	entry->pci.msi_attrib.multi_cap	= (control & PCI_MSI_FLAGS_QMASK) >> 1;
> -	entry->pci.msi_attrib.multiple	= ilog2(__roundup_pow_of_two(nvec));
> +	desc.nvec_used			= nvec;
> +	desc.pci.msi_attrib.is_64	= !!(control & PCI_MSI_FLAGS_64BIT);
> +	desc.pci.msi_attrib.can_mask	= !!(control & PCI_MSI_FLAGS_MASKBIT);
> +	desc.pci.msi_attrib.default_irq	= dev->irq;
> +	desc.pci.msi_attrib.multi_cap	= (control & PCI_MSI_FLAGS_QMASK) >> 1;
> +	desc.pci.msi_attrib.multiple	= ilog2(__roundup_pow_of_two(nvec));
> +	desc.affinity			= masks;
>  
>  	if (control & PCI_MSI_FLAGS_64BIT)
> -		entry->pci.mask_pos = dev->msi_cap + PCI_MSI_MASK_64;
> +		desc.pci.mask_pos = dev->msi_cap + PCI_MSI_MASK_64;
>  	else
> -		entry->pci.mask_pos = dev->msi_cap + PCI_MSI_MASK_32;
> +		desc.pci.mask_pos = dev->msi_cap + PCI_MSI_MASK_32;
>  
>  	/* Save the initial mask status */
> -	if (entry->pci.msi_attrib.can_mask)
> -		pci_read_config_dword(dev, entry->pci.mask_pos, &entry->pci.msi_mask);
> +	if (desc.pci.msi_attrib.can_mask)
> +		pci_read_config_dword(dev, desc.pci.mask_pos, &desc.pci.msi_mask);
>  
> -	prop = MSI_PROP_PCI_MSI;
> -	if (entry->pci.msi_attrib.is_64)
> -		prop |= MSI_PROP_64BIT;
> -	msi_device_set_properties(&dev->dev, prop);
> +	ret = msi_add_msi_desc(&dev->dev, &desc);
> +	if (!ret) {
> +		prop = MSI_PROP_PCI_MSI;
> +		if (desc.pci.msi_attrib.is_64)
> +			prop |= MSI_PROP_64BIT;
> +		msi_device_set_properties(&dev->dev, prop);
> +	}
>  
> -	return entry;
> +	return ret;
>  }
>  
>  static int msi_verify_entries(struct pci_dev *dev)
> @@ -423,17 +429,14 @@ static int msi_capability_init(struct pc
>  		masks = irq_create_affinity_masks(nvec, affd);
>  
>  	msi_lock_descs(&dev->dev);
> -	entry = msi_setup_entry(dev, nvec, masks);
> -	if (!entry) {
> -		ret = -ENOMEM;
> +	ret = msi_setup_msi_desc(dev, nvec, masks);
> +	if (ret)
>  		goto unlock;
> -	}
>  
>  	/* All MSIs are unmasked by default; mask them all */
> +	entry = first_pci_msi_entry(dev);
>  	pci_msi_mask(entry, msi_multi_mask(entry));
>  
> -	list_add_tail(&entry->list, dev_to_msi_list(&dev->dev));
> -
>  	/* Configure MSI capability structure */
>  	ret = pci_msi_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSI);
>  	if (ret)
> @@ -482,49 +485,40 @@ static void __iomem *msix_map_region(str
>  	return ioremap(phys_addr, nr_entries * PCI_MSIX_ENTRY_SIZE);
>  }
>  
> -static int msix_setup_entries(struct pci_dev *dev, void __iomem *base,
> -			      struct msix_entry *entries, int nvec,
> -			      struct irq_affinity_desc *masks)
> +static int msix_setup_msi_descs(struct pci_dev *dev, void __iomem *base,
> +				struct msix_entry *entries, int nvec,
> +				struct irq_affinity_desc *masks)
>  {
> -	int i, vec_count = pci_msix_vec_count(dev);
> +	int ret = 0, i, vec_count = pci_msix_vec_count(dev);
>  	struct irq_affinity_desc *curmsk;
> -	struct msi_desc *entry;
> +	struct msi_desc desc;
>  	void __iomem *addr;
>  
> -	for (i = 0, curmsk = masks; i < nvec; i++) {
> -		entry = alloc_msi_entry(&dev->dev, 1, curmsk);
> -		if (!entry) {
> -			/* No enough memory. Don't try again */
> -			return -ENOMEM;
> -		}
> -
> -		entry->pci.msi_attrib.is_msix	= 1;
> -		entry->pci.msi_attrib.is_64	= 1;
> -
> -		if (entries)
> -			entry->msi_index = entries[i].entry;
> -		else
> -			entry->msi_index = i;
> -
> -		entry->pci.msi_attrib.is_virtual = entry->msi_index >= vec_count;
> -
> -		entry->pci.msi_attrib.can_mask	= !pci_msi_ignore_mask &&
> -						  !entry->pci.msi_attrib.is_virtual;
> -
> -		entry->pci.msi_attrib.default_irq	= dev->irq;
> -		entry->pci.mask_base			= base;
> +	memset(&desc, 0, sizeof(desc));
>  
> -		if (entry->pci.msi_attrib.can_mask) {
> -			addr = pci_msix_desc_addr(entry);
> -			entry->pci.msix_ctrl = readl(addr + PCI_MSIX_ENTRY_VECTOR_CTRL);
> +	desc.nvec_used			= 1;
> +	desc.pci.msi_attrib.is_msix	= 1;
> +	desc.pci.msi_attrib.is_64	= 1;
> +	desc.pci.msi_attrib.default_irq	= dev->irq;
> +	desc.pci.mask_base		= base;
> +
> +	for (i = 0, curmsk = masks; i < nvec; i++, curmsk++) {
> +		desc.msi_index = entries ? entries[i].entry : i;
> +		desc.affinity = masks ? curmsk : NULL;
> +		desc.pci.msi_attrib.is_virtual = desc.msi_index >= vec_count;
> +		desc.pci.msi_attrib.can_mask = !pci_msi_ignore_mask &&
> +					       !desc.pci.msi_attrib.is_virtual;
> +
> +		if (!desc.pci.msi_attrib.can_mask) {
> +			addr = pci_msix_desc_addr(&desc);
> +			desc.pci.msix_ctrl = readl(addr + PCI_MSIX_ENTRY_VECTOR_CTRL);
>  		}
>  
> -		list_add_tail(&entry->list, dev_to_msi_list(&dev->dev));
> -		if (masks)
> -			curmsk++;
> +		ret = msi_add_msi_desc(&dev->dev, &desc);
> +		if (ret)
> +			break;
>  	}
> -	msi_device_set_properties(&dev->dev, MSI_PROP_PCI_MSIX | MSI_PROP_64BIT);
> -	return 0;
> +	return ret;
>  }
>  
>  static void msix_update_entries(struct pci_dev *dev, struct msix_entry *entries)
> @@ -562,10 +556,12 @@ static int msix_setup_interrupts(struct
>  		masks = irq_create_affinity_masks(nvec, affd);
>  
>  	msi_lock_descs(&dev->dev);
> -	ret = msix_setup_entries(dev, base, entries, nvec, masks);
> +	ret = msix_setup_msi_descs(dev, base, entries, nvec, masks);
>  	if (ret)
>  		goto out_free;
>  
> +	msi_device_set_properties(&dev->dev, MSI_PROP_PCI_MSIX | MSI_PROP_64BIT);
> +
>  	ret = pci_msi_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSIX);
>  	if (ret)
>  		goto out_free;
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211207210720.GA78195%40bhelgaas.
