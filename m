Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBZWKRCGQMGQELK7KYOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 4373445FE8F
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 13:32:39 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id q19-20020a05651c055300b0021a259ae8bbsf4622860ljp.4
        for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 04:32:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638016358; cv=pass;
        d=google.com; s=arc-20160816;
        b=CLFYRizlY72dSBVyewOOSlhsAKiH2o9zZP0+DHi078kyU5zmlyVOtQTLzfJWmzNUcE
         y+iMObUvlJWgpUMJ19xwCNwFTQ40AdQeQarOm/nUJCN7OqLdRTBA6aOMKhXMwYnp1v5/
         lVRMymw14+ZrKKitkOEuI+dqYWE8blovnrwW03Qa15cH4ezBXkbO4Va7BgQI7Mt1usHE
         QSLKZleQb8daUTmzw7B8wt+KOGXCyCtja/se2LxL5l5ypAdhw4AMvzfjZeugHhB4rOTG
         0tMqgydKoD6kpTIrcJu58tgHC5TEfVZ+1LqDp1An/NfJ5mIleTqzaUj6CL3WCZtcXtTF
         +kzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gufnyXbGlOpebcdVbAnihzlzJFGX1midk4QC1sZl0wE=;
        b=GeR06mzS4+9b9RiXLT+iAObQKmkMB1GBPbGsrHBaQyBoDlVOS1NDdnnFld+PcObkpU
         oeBwa46Ov5OA+BndSpcCRihzKUIOQPaWHUIufWarQGESJzZPt8mNQTYEpJSmUVfBEDjG
         2ABjSguMNJVsA+KTWJIO6Rw+7zS2C+70QQcOHaG8b5wJUPxXyVw91gFXIxgyfZopwvtS
         BPsRFi6FfN8BwFrzdSVY34YyYlK7Mp8QhRNRYkOGdJbO/9hgR+LrYuanA2C1g4/1lOiH
         GzKkOK02s4rTjseo8m1goxQNqwUXS6XlXcnC4md1cKREHKI+vivohVLYWvvo/Dcvk6NL
         560w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=c9jY4xW5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gufnyXbGlOpebcdVbAnihzlzJFGX1midk4QC1sZl0wE=;
        b=qvKLijUHAGPQ2PH82suNT787GJQz1veP+qgmlCkdfMTF2seNNewdSOVGHxHBlKzXhW
         om8lMKGMGKJK+cgjQio88byUNFiuKHkTBYqYMU+Xeq+HFQnmcZzwZ/zNOGxzlfzRXJT0
         UOALLj6WC/NVUIBA7ifWVuN6L9glFkLb4Mi94GBzqZqZoWCCmo2yve7p4P39PJsHYOFP
         WmdHj9fgq8GdvLOnYf5gsYMsVnGOh5cp6dWn9roUOS+dx/eERGw2vnsvYBBqHqidQFJF
         SMoQtQ8BDNKnizsG7xOyd6zjNniQYRel54Lctgmt/DKtYWGLtIR9Wyg4fRLjAIrgW2CD
         DKqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gufnyXbGlOpebcdVbAnihzlzJFGX1midk4QC1sZl0wE=;
        b=WTKoXWPiFSxwGAACqq27BF46pYhyD0E3rV9zIARYSBLKi3YATCfwyYMKjqMu5snGOd
         t3X/wLzY8t++522goEKnTB81rR6r/gwtvrEfcYqC3lg/yq2ZAf5ExbQWe5jCoFNlvwd5
         Ic3BtL/wJCkGZjKD1QrjCh1tTWDJDKjsEm/IPKilZV/NeIE1dKGRo48YexUZhnqeSpTX
         ni845iLXD8qLefBzKDvCuxLEx7snLoNi8bnRi7W/LYqedhTveY4WRylaIRO4IdxH6+Dl
         Yj2yV+Nma5lu9+UL3ZTNADYB00f01LUCLoDztTstcxseBCPiVCxcqGpTKuAW+0hvHalp
         /q2A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532nP+BU1s/4HFY6BVZMEMlJHvvyyXp47A8Q1TNqJ4Cl3Y3Rcn4U
	ItkG32CP5INrv+zSPQiZhEc=
X-Google-Smtp-Source: ABdhPJwfs/yGQfa+0WGP9uHdBNBWMyNYgsA2Uvcwn0OnUnliNYEy6TiL+ij5MkCLE853/STcDEgQJg==
X-Received: by 2002:a05:651c:169c:: with SMTP id bd28mr37235076ljb.186.1638016358753;
        Sat, 27 Nov 2021 04:32:38 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:b1f:: with SMTP id b31ls1312118ljr.0.gmail; Sat, 27
 Nov 2021 04:32:37 -0800 (PST)
X-Received: by 2002:a2e:7a02:: with SMTP id v2mr37085665ljc.227.1638016357791;
        Sat, 27 Nov 2021 04:32:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638016357; cv=none;
        d=google.com; s=arc-20160816;
        b=I/VVBevlYNwsYjA9NnH62U5LT/z/JRLqoVH/976aTV2WJCxChvykfIaIVvCSivfOBv
         11JigaMrCjY7ZgQIbHaR4fDl31XxQUivvt+qYVzbJeTH3dtA3PQY21Zha96EuWk3qIAE
         aJoLWBFD+QPAjeCbXr2i9KC+lvOrct5rb/fjFkNkBunhpj804Y7bgEWVIuyN4YekoMl7
         TmPGYEZnwfQIKnxIYc+70kGXzLLA1v3ROX8tDGFCTEZp8P7tTjOvigkRP+TAmLe1Ud79
         re5zW4vvkEppe1es1z3UPjwD9iztYYTiM/Qt+OlHL5U8j8udNpFniU6EqHjJx3MrM2Vy
         TJtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+VVNC23hP5OmzBtXutPa/st2nAV1Zg58FjbDNS029yc=;
        b=tOijUhogCiQ65rrwf/YRkp1t9rNNBTBqrGms2U5DtO0ieHgeHel4ymMvMRxn83TH1d
         K0EH/HQo5JVTFJFX3Ri6tI0gqDp59RW1Ri7jwf2JgfJyR8wDowUqx6CepFAIZKAy17SD
         yQv5Bt4veiglhr6gOhnbzJloqJYjU6ZIT/vAnwBg7ehN3HP/xza+4yVR0LaejL6zcie3
         tOJ+PheWrTbQgRIwZSNsSoGCWUzjxSAx2yESIWeNTQYSDxRpwthqbxraLUU2nP1tWVrG
         QC+HnIWGUQ4e37RclSmy27STnWb/0f03fkPF8dQ4fAadIgAJ0Z/smGDHKPoUnUITPko6
         8eHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=c9jY4xW5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id b11si729535lfv.12.2021.11.27.04.32.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Nov 2021 04:32:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BE56560AB1;
	Sat, 27 Nov 2021 12:32:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68D0CC53FAD;
	Sat, 27 Nov 2021 12:32:34 +0000 (UTC)
Date: Sat, 27 Nov 2021 13:32:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
	linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
	Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com
Subject: Re: [patch 31/32] genirq/msi: Simplify sysfs handling
Message-ID: <YaIlX8bef2jPLkUE@kroah.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232736.135247787@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211126232736.135247787@linutronix.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=c9jY4xW5;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Nov 27, 2021 at 02:23:15AM +0100, Thomas Gleixner wrote:
> The sysfs handling for MSI is a convoluted maze and it is in the way of
> supporting dynamic expansion of the MSI-X vectors because it only supports
> a one off bulk population/free of the sysfs entries.
> 
> Change it to do:
> 
>    1) Creating an empty sysfs attribute group when msi_device_data is
>       allocated
> 
>    2) Populate the entries when the MSI descriptor is initialized

How much later does this happen?  Can it happen while the device has a
driver bound to it?

>    3) Free the entries when a MSI descriptor is detached from a Linux
>       interrupt.
> 
>    4) Provide functions for the legacy non-irqdomain fallback code to
>       do a bulk population/free. This code won't support dynamic
>       expansion.
> 
> This makes the code simpler and reduces the number of allocations as the
> empty attribute group can be shared.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>  include/linux/msi.h |    7 +
>  kernel/irq/msi.c    |  196 +++++++++++++++++++++++-----------------------------
>  2 files changed, 95 insertions(+), 108 deletions(-)
> 
> --- a/include/linux/msi.h
> +++ b/include/linux/msi.h
> @@ -72,6 +72,7 @@ struct irq_data;
>  struct msi_desc;
>  struct pci_dev;
>  struct platform_msi_priv_data;
> +struct device_attribute;
>  
>  void __get_cached_msi_msg(struct msi_desc *entry, struct msi_msg *msg);
>  #ifdef CONFIG_GENERIC_MSI_IRQ
> @@ -127,6 +128,7 @@ struct pci_msi_desc {
>   * @dev:	Pointer to the device which uses this descriptor
>   * @msg:	The last set MSI message cached for reuse
>   * @affinity:	Optional pointer to a cpu affinity mask for this descriptor
> + * @sysfs_attr:	Pointer to sysfs device attribute
>   *
>   * @write_msi_msg:	Callback that may be called when the MSI message
>   *			address or data changes
> @@ -146,6 +148,9 @@ struct msi_desc {
>  #ifdef CONFIG_IRQ_MSI_IOMMU
>  	const void			*iommu_cookie;
>  #endif
> +#ifdef CONFIG_SYSFS
> +	struct device_attribute		*sysfs_attrs;
> +#endif
>  
>  	void (*write_msi_msg)(struct msi_desc *entry, void *data);
>  	void *write_msi_msg_data;
> @@ -171,7 +176,6 @@ enum msi_desc_filter {
>   * @lock:		Spinlock to protect register access
>   * @properties:		MSI properties which are interesting to drivers
>   * @num_descs:		The number of allocated MSI descriptors for the device
> - * @attrs:		Pointer to the sysfs attribute group
>   * @platform_data:	Platform-MSI specific data
>   * @list:		List of MSI descriptors associated to the device
>   * @mutex:		Mutex protecting the MSI list
> @@ -182,7 +186,6 @@ struct msi_device_data {
>  	raw_spinlock_t			lock;
>  	unsigned long			properties;
>  	unsigned int			num_descs;
> -	const struct attribute_group    **attrs;
>  	struct platform_msi_priv_data	*platform_data;
>  	struct list_head		list;
>  	struct mutex			mutex;
> --- a/kernel/irq/msi.c
> +++ b/kernel/irq/msi.c
> @@ -19,6 +19,7 @@
>  
>  #include "internals.h"
>  
> +static inline int msi_sysfs_create_group(struct device *dev);
>  #define dev_to_msi_list(dev)	(&(dev)->msi.data->list)
>  
>  /**
> @@ -208,6 +209,7 @@ static void msi_device_data_release(stru
>  int msi_setup_device_data(struct device *dev)
>  {
>  	struct msi_device_data *md;
> +	int ret;
>  
>  	if (dev->msi.data)
>  		return 0;
> @@ -216,6 +218,12 @@ int msi_setup_device_data(struct device
>  	if (!md)
>  		return -ENOMEM;
>  
> +	ret = msi_sysfs_create_group(dev);
> +	if (ret) {
> +		devres_free(md);
> +		return ret;
> +	}
> +
>  	raw_spin_lock_init(&md->lock);
>  	INIT_LIST_HEAD(&md->list);
>  	mutex_init(&md->mutex);
> @@ -395,6 +403,20 @@ int __msi_get_virq(struct device *dev, u
>  EXPORT_SYMBOL_GPL(__msi_get_virq);
>  
>  #ifdef CONFIG_SYSFS
> +static struct attribute *msi_dev_attrs[] = {
> +	NULL
> +};
> +
> +static const struct attribute_group msi_irqs_group = {
> +	.name	= "msi_irqs",
> +	.attrs	= msi_dev_attrs,
> +};
> +
> +static inline int msi_sysfs_create_group(struct device *dev)
> +{
> +	return devm_device_add_group(dev, &msi_irqs_group);

Much nicer, but you changed the lifetime rules of when these attributes
will be removed, is that ok?

I still worry that these attributes show up "after" the device is
registered with the driver core, but hey, it's no worse than it
currently is, so that's not caused by this patch series...

> @@ -404,97 +426,74 @@ static ssize_t msi_mode_show(struct devi
>  	return sysfs_emit(buf, "%s\n", is_msix ? "msix" : "msi");
>  }
>  
> -/**
> - * msi_populate_sysfs - Populate msi_irqs sysfs entries for devices
> - * @dev:	The device(PCI, platform etc) who will get sysfs entries
> - */
> -static const struct attribute_group **msi_populate_sysfs(struct device *dev)
> +static void msi_sysfs_remove_desc(struct device *dev, struct msi_desc *desc)
>  {
> -	const struct attribute_group **msi_irq_groups;
> -	struct attribute **msi_attrs, *msi_attr;
> -	struct device_attribute *msi_dev_attr;
> -	struct attribute_group *msi_irq_group;
> -	struct msi_desc *entry;
> -	int ret = -ENOMEM;
> -	int num_msi = 0;
> -	int count = 0;
> +	struct device_attribute *attrs = desc->sysfs_attrs;
>  	int i;
>  
> -	/* Determine how many msi entries we have */
> -	msi_for_each_desc(entry, dev, MSI_DESC_ALL)
> -		num_msi += entry->nvec_used;
> -	if (!num_msi)
> -		return NULL;
> +	if (!attrs)
> +		return;
>  
> -	/* Dynamically create the MSI attributes for the device */
> -	msi_attrs = kcalloc(num_msi + 1, sizeof(void *), GFP_KERNEL);
> -	if (!msi_attrs)
> -		return ERR_PTR(-ENOMEM);
> -
> -	msi_for_each_desc(entry, dev, MSI_DESC_ALL) {
> -		for (i = 0; i < entry->nvec_used; i++) {
> -			msi_dev_attr = kzalloc(sizeof(*msi_dev_attr), GFP_KERNEL);
> -			if (!msi_dev_attr)
> -				goto error_attrs;
> -			msi_attrs[count] = &msi_dev_attr->attr;
> -
> -			sysfs_attr_init(&msi_dev_attr->attr);
> -			msi_dev_attr->attr.name = kasprintf(GFP_KERNEL, "%d",
> -							    entry->irq + i);
> -			if (!msi_dev_attr->attr.name)
> -				goto error_attrs;
> -			msi_dev_attr->attr.mode = 0444;
> -			msi_dev_attr->show = msi_mode_show;
> -			++count;
> -		}
> +	desc->sysfs_attrs = NULL;
> +	for (i = 0; i < desc->nvec_used; i++) {
> +		if (attrs[i].show)
> +			sysfs_remove_file_from_group(&dev->kobj, &attrs[i].attr, msi_irqs_group.name);
> +		kfree(attrs[i].attr.name);

That's a cute hack, but should be documented somewhere in the code (that
if there is no show function, that means no attribute was registered
here).

If you add a comment for this (either here or when you register the
attribute), feel free to add:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YaIlX8bef2jPLkUE%40kroah.com.
