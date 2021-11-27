Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBQOERCGQMGQE72ATN7Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAA945FE7C
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 13:19:13 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id 144-20020a1c0496000000b003305ac0e03asf8588718wme.8
        for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 04:19:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638015553; cv=pass;
        d=google.com; s=arc-20160816;
        b=hgUhr5s4QenoblIThrZk8e24ByczE8WNdH/nh01MviFuXocdeExjZocU5bCuhvrnnz
         Wro6F2WEh/2avD/wfAaAA4bJaYVNIyd6Uf18F17qwVCAR/AeZtwho6pJDmBs2Web21CN
         I+SrtjJby6LPOAOPN0YeMjus/+p81NDPIhyYZL1RzKluvPpGi/00G5cDcFBxl95pBNe+
         ngwrEW0WyveyDdOxRbhpxc/5YS4tWGHPTxQqYvB9Qgs3mKsvJABztwBt4TTlR4pa1ytI
         W62bfdlmp0cL3SHduP9PMxaO1QNpdOnIUwgheuNd+aoBqsS8RiXx31bZSMBEJVSg3L14
         Lx2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bDoEx1FcGtLeIirC48vcipE6WRL3elJTG7di+lpGARk=;
        b=y48srJ4deYKxW0/FjcdLHvPqaG3o4Go58BfOqW6F857x9lTlAmCP2yohydJsgBA0tC
         ELW2ag5GssQrqoYlEmZsWMK4JXFuWFv5Mvmpm2v0Owjo9tmWaWfOf47vAw00qz+XV4sQ
         is2gGSEauDdkzHfcfZot2SI+dDgHlC/UfOOyTbN8YiDTZDS+Ke18p7OYLTse4q5HwbK0
         ilwXX+FsvgpuKYWUIv1mToU8QBHpl9dPdfx7JEfBv2796Wu1CnvOMxTfIgw95Sf6mHp4
         gJaArVWMaTEiOjOApfy4IIHJk+p3OgYJYqsOJTxUVYcQP4ABV42n2VgAaUHgVqdSrcIl
         eGNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=MZtbtKGA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bDoEx1FcGtLeIirC48vcipE6WRL3elJTG7di+lpGARk=;
        b=PdXuGkpdYbEIGoT7Ght09KONgr6H5TyKyQPwKMeuHRV2asIPX25l+W1Y+FSUyXAOjb
         PbmBJ0rGO0yY2iRg5ZNjs9jFaVwLHPUuFauSw9cMt5DYIDr3skNdO9EFCFcpJvTb2RTe
         icE0Gpsa6dePSQfBlbQCuV90oIhqS9DzHTmuzXZV6eW3JL2aPLs2SqealM0NVU8GFRwo
         nPx0P9AjaSpFHndEU+esBMx1ZS5tPAilT11+PackguvbBcqwTqxV/VFZ0BwmkP4pTc/v
         qhr50cKia+BEoIXeOYD2pgfyDlOSZiQokHc6pePuXuKStFz3JY4xQOcdzSM62Ebs/t7u
         5WlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bDoEx1FcGtLeIirC48vcipE6WRL3elJTG7di+lpGARk=;
        b=YwTT/9k5zN+DPJumaWChLjbMjs9UHDw3xQgy/5LdkyV6A/+DO/qZHLlMy5xixxBxHO
         aIu0+aX387pT28bql6VGjbgHBSi8t2xnZu0xSFZb9zOPivhgz6OxOqoqYSh2UYKVzea8
         2fxJHXMcQXJbs5GRbtO/svD0XkQesJN+IUrrKNDohXYJlfW40pFi8nkDKmsPJHQ/Yokt
         tfp+5/d0KvsJba7lVVQjbgC7cqg14YPHC3zLkuOqDcFWJXAvjA9KehR0ntwVwAXuT1t6
         GhI/YEKuUiGovoSyZ1d4Zc30ZFO+Z9AwyTRepdqOgbPj91P0DEGmyY5v3r5O2OIDpAnW
         YMYw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531ZCuodimddq1KLy153sGojApVKvKHtrVkn3vMTu0f24L8Lv97/
	RerWcQH4I4QjGnpGe95nPXs=
X-Google-Smtp-Source: ABdhPJz7H1fiIluRDt/6i4i4XZ05GkuBk20zFVLf9PXEoVx3EdxofBuccAl/1r9EgAOvgdgcoymmTA==
X-Received: by 2002:a5d:49c3:: with SMTP id t3mr20536227wrs.207.1638015553523;
        Sat, 27 Nov 2021 04:19:13 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:ad6:: with SMTP id c22ls7073283wmr.1.canary-gmail;
 Sat, 27 Nov 2021 04:19:12 -0800 (PST)
X-Received: by 2002:a1c:8:: with SMTP id 8mr22390356wma.106.1638015552579;
        Sat, 27 Nov 2021 04:19:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638015552; cv=none;
        d=google.com; s=arc-20160816;
        b=zH0a4okD+uqas4mcD+S3ju+NnyK+zoaDocPdcnD3aELsFbodnXtHE8FL4fqyqiGzEQ
         z3mMybw3T0aa+XYnVFo2v0d28AGJsy9GTY6bpdaNIJGQNXY3PFXoePMVju3hiBX53qT3
         HzMN8LyZ9LYy09T178FAmaPPZarRqgauTvz3GjHcz4yJYXC+5xzn1mjzmj0wqQxSCMUn
         yjR5oE/fBeRqh9jeOBUy/0gqh/TlzCMTLtmeMd6kmm64JFLBhVlZFhh+RhijxurQ381Y
         e5ER5ZGP1pqykzUklDpgbUqi7xiHR4PremTRH6C3c9yx/0K7UYSuymYmWxrSrBcgVrSQ
         0gew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=I17SxBI6qLXOicPCNiF85YdrY1ydPY6lEcC9vKBeDfQ=;
        b=ypl38HME7SajFcnLn5gaU0dKnNasx/rjmJPDg7izvltMyec+IcVXCnO+8cBnch4Nm4
         4X/CKSq93VMDJs6Y/nQdKv/sSHparXrDtFFVMSrcLcV8QgNXer7oo33/kIcvIRFqhUiv
         20YJ0WZS46Hwt121cd11vA0cCR1BY2dJFU5GpkIstKGndIruwGg91CxnXeqRlkdGsXQK
         Q7KsEglX3yVIj8/Bi4sThJMi2ctBo4g6ES0vFkxUM474PefI0avy7iLdrKfXpz5hXmik
         hk9edROazMpM/7X414f117PKFh59gxgBk2alQW+IXtNZPTNRs6b6XexiWzzW7wjLTcWz
         Lm6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=MZtbtKGA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id z64si1401337wmc.0.2021.11.27.04.19.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Nov 2021 04:19:12 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3908760B70;
	Sat, 27 Nov 2021 12:19:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D7ABC53FD0;
	Sat, 27 Nov 2021 12:19:10 +0000 (UTC)
Date: Sat, 27 Nov 2021 13:19:08 +0100
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
Subject: Re: [patch 07/32] genirq/msi: Count the allocated MSI descriptors
Message-ID: <YaIiPISLr7VokL8P@kroah.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232734.708730446@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211126232734.708730446@linutronix.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=MZtbtKGA;       spf=pass
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

On Sat, Nov 27, 2021 at 02:22:38AM +0100, Thomas Gleixner wrote:
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

No changelog?

Anyway, why do we care about the number of decriptors?


> ---
>  include/linux/msi.h |    3 +++
>  kernel/irq/msi.c    |   18 ++++++++++++++++++
>  2 files changed, 21 insertions(+)
> 
> --- a/include/linux/msi.h
> +++ b/include/linux/msi.h
> @@ -156,6 +156,7 @@ enum msi_desc_filter {
>   * msi_device_data - MSI per device data
>   * @lock:		Spinlock to protect register access
>   * @properties:		MSI properties which are interesting to drivers
> + * @num_descs:		The number of allocated MSI descriptors for the device
>   * @attrs:		Pointer to the sysfs attribute group
>   * @platform_data:	Platform-MSI specific data
>   * @list:		List of MSI descriptors associated to the device
> @@ -166,6 +167,7 @@ enum msi_desc_filter {
>  struct msi_device_data {
>  	raw_spinlock_t			lock;
>  	unsigned long			properties;
> +	unsigned int			num_descs;
>  	const struct attribute_group    **attrs;
>  	struct platform_msi_priv_data	*platform_data;
>  	struct list_head		list;
> @@ -208,6 +210,7 @@ static inline unsigned int msi_get_virq(
>  
>  void msi_lock_descs(struct device *dev);
>  void msi_unlock_descs(struct device *dev);
> +unsigned int msi_device_num_descs(struct device *dev);
>  
>  struct msi_desc *__msi_first_desc(struct device *dev, enum msi_desc_filter filter, unsigned int base_index);
>  struct msi_desc *msi_next_desc(struct device *dev);
> --- a/kernel/irq/msi.c
> +++ b/kernel/irq/msi.c
> @@ -82,6 +82,7 @@ int msi_add_msi_desc(struct device *dev,
>  	desc->pci = init_desc->pci;
>  
>  	list_add_tail(&desc->list, &dev->msi.data->list);
> +	dev->msi.data->num_descs++;
>  	return 0;
>  }
>  
> @@ -109,6 +110,7 @@ int msi_add_simple_msi_descs(struct devi
>  		list_add_tail(&desc->list, &list);
>  	}
>  	list_splice_tail(&list, &dev->msi.data->list);
> +	dev->msi.data->num_descs += ndesc;
>  	return 0;
>  
>  fail:
> @@ -142,6 +144,7 @@ void msi_free_msi_descs_range(struct dev
>  			continue;
>  		list_del(&desc->list);
>  		free_msi_entry(desc);
> +		dev->msi.data->num_descs--;
>  	}
>  }
>  
> @@ -157,6 +160,21 @@ bool msi_device_has_property(struct devi
>  	return !!(dev->msi.data->properties & prop);
>  }
>  
> +/**
> + * msi_device_num_descs - Query the number of allocated MSI descriptors of a device
> + * @dev:	The device to read from
> + *
> + * Note: This is a lockless snapshot of msi_device_data::num_descs
> + *
> + * Returns the number of MSI descriptors which are allocated for @dev
> + */
> +unsigned int msi_device_num_descs(struct device *dev)
> +{
> +	if (dev->msi.data)
> +		return dev->msi.data->num_descs;

As this number can change after it is read, what will callers do with
it?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YaIiPISLr7VokL8P%40kroah.com.
