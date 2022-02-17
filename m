Return-Path: <linux-ntb+bncBDXJDZXNUMORBUMKXOIAMGQEPGWZWII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EFE4BAC2A
	for <lists+linux-ntb@lfdr.de>; Thu, 17 Feb 2022 22:59:46 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id h24-20020adfaa98000000b001e33eb81e71sf2871516wrc.9
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Feb 2022 13:59:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645135186; cv=pass;
        d=google.com; s=arc-20160816;
        b=HivmWr+k9TOPzVYpWpUfUdWN5QlDMvHwRC7NZpREG7UKEUo1itUVLME0arc3Theszv
         To7YSyvcRff4GXQgp+zO6/QOK4oX8Q82MvtSeJQ9aZiIvuTEFRV7/tIxF/Y1v9bog6Ce
         tHk37joMDgwpP7iXxq+faLNVw4OuKPe36JBefRb+m4Kb2IwcFIEaIDUcMH5JZlebx1Nn
         G4pPzvcyN1DzojCcn6XrRfK8qeBiNs91wnA+vhPL3PKyFrIvqNqTAZagpjAcO89SnJTH
         B8VK2mTQQAtQ/mtFd/Tu/Liv2ZA0ieRXSO48muhjydjY+aVuZGoHnjR50Xa3sCiNWV64
         Xnog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YWrQsqwpP85fNJRpRGH1s/DoPEVspVv8C1EJ6pZM3/k=;
        b=aDywOcnAAXempuTPCwAKjDejczJaTA1psemM/brt15CEC+a+YyT92siuIynui437kn
         VUbp/iApLRaDtYKnhn4BnLZY50pqDWtXb5NVEhqCfBzUU0bNdbkQr5fMnXBwz0Ebilgz
         69DRdW42z23RYZaqHFirF9GOCxW3GxAVkKYSQTkBPUS+1ZS22oZnx1vy+gOyMBPW/vPM
         qI6edCsw2srtboHp8GXTL5KvmSHc7VmjqzPUqbx9j3wChlbbKcRis7CSnyAmooQD/YbP
         UA9hOx7mlbUD8IdrlQ2SFl/oLU2nmhyHR0DWZLikxL7Sf4d+1qJzebWc7WhBaajsbI35
         5S6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VsBw31Tx;
       spf=pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YWrQsqwpP85fNJRpRGH1s/DoPEVspVv8C1EJ6pZM3/k=;
        b=ErA7IRTkPjHFUv/k5wXOdhOd/zPXx7WmdD/CnEAyYGQz32LEPx1G2MBEaZTy+AfZxU
         H1HNrJlosRMkNhdM42FBBAxl/QpEE9D6/JFvzOaRpNOVOCRm4hgovhDmh8o2DlxDUAFr
         TBy5vljDH2pXHdBgBCLwCfgssdF5l9ChZlBxngt4JaOxh7KHRUTqx9NeAgsBdj8AOnim
         egA7qVFHfKiafVSiLzaIJ9wFdF5eY+mDeLH451Fshk/AJzYO7h5Fo862AM+4NEbwTOpi
         NRHtOoKPYyPQkBYelFTc5K9fUPciBIwFolL3lnNsPVMdDJRwbaYVtj/qIAzHWwTzluIl
         2ZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YWrQsqwpP85fNJRpRGH1s/DoPEVspVv8C1EJ6pZM3/k=;
        b=FVcjDmYrIuG9yd4VEBWmQImZtIq4BZjydQv64EAzbrT1FSO7p26OCmp/6cEMHtU25B
         a/hpKBFawzToauJiskgLTrrwDq2IU6ljIbaW/RQ+FLHnTABMJaD3RkRh5E6FSjVwIeGA
         sGSnTTrZD7JNSbOp/HUmFWk0AsKNWQxFHCJnjxgrwSIyIIHYfS0AByS/RlZlJg+/gV+U
         64WhOqvhKUMw/KlCITRAbMmcltidNLGhzBIJUyOD0gtWuOYVsmm59GsJFa870KoM3daK
         +cgu6e574ePJ2c+bcZBrDaaSTqePro9G7A9e1oCj1EXUxlvizpHyjvm+wT8RTldkfwNn
         /3AQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5334Uib4sUT0YY6v/BCxWVm2+aX7gKsbl+s356r8ENX5URBOBWWL
	b8zPnq2WVmCmGCWVS80GcxE=
X-Google-Smtp-Source: ABdhPJzrxaRv8fSGJtd8PS1p27DyIu70nXJCerC9BosmU8Ih7K8wWQFTQZmC+lL8gxL7SbEJ9iLARg==
X-Received: by 2002:a05:600c:4010:b0:346:e0d6:8781 with SMTP id i16-20020a05600c401000b00346e0d68781mr7957144wmm.4.1645135186341;
        Thu, 17 Feb 2022 13:59:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:1d1b:b0:37c:911f:164 with SMTP id
 l27-20020a05600c1d1b00b0037c911f0164ls2306255wms.0.gmail; Thu, 17 Feb 2022
 13:59:45 -0800 (PST)
X-Received: by 2002:a7b:c8c2:0:b0:37b:b742:a9de with SMTP id f2-20020a7bc8c2000000b0037bb742a9demr4462338wml.37.1645135185270;
        Thu, 17 Feb 2022 13:59:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1645135185; cv=none;
        d=google.com; s=arc-20160816;
        b=RI7TX+zCVB9AHMuAA8EEEIgjZHU3mUsn/xIC/f9THu+Y/MzTHBtwmjSLX4FPmikNce
         fC3U1isLy4aqw5PT5OyMtZou1lnu793sZ6m2dAGmlWRDRUlmPtsKDtAc1Pd05FcPepZe
         mZiSKD7hne/RzNmWmmhTuXZG+xmAhKuRoqvejxCA1AyruJ/vUKFxW2FDMgorOCVGKEyJ
         gNBuqBQ1MocGLk+ngFksEIMAPWdtzbpMKIj4vmfKXIliJs7QQEqavuv6vEVlRyPkpGJq
         VRfbVLb08Jl3MmHJXgzHqtfGoeIX2GMpPRqCV+eblaBLfje036O0+gXKQ5MG6KaQNLlc
         WnCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=iLfXn8mOylOelfOx4C/t3U5gNXb/QGqWA4PTZUSbwC8=;
        b=QecU5PaBSDQbOuDCjonG1JWuSUHaVTfjmZXbWcBY9WKDp03p+FNEtf1t00dbOeno46
         WQ7bwJt1Sax8XiKnHrruSh7rWh3i8QVz67DfZnDX/qbF8PhjTFmn13cPzI5YfjZRIrx+
         5YgLRsG6210kiZvcnC+mV0s5bhrb08M7r8xvu0FjcGk/CbHrhUTnjDnXCsLYQKkOyLNB
         JhcybfNE2F3+0U3O6Ll+y9D1zwYRFHWY4j41LvhPy392FJR5RommYHoAwiYvmWSyb9Es
         JewdZgtlBup7BgPg+nVcNT4BP/jlMy1iD9tJB8qtW4qO6Zfs3JWeDvNGUVUIgXr33qNr
         ToeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VsBw31Tx;
       spf=pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id o19si199782wme.1.2022.02.17.13.59.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Feb 2022 13:59:45 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DAA4EB82486;
	Thu, 17 Feb 2022 21:59:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52AF2C340E8;
	Thu, 17 Feb 2022 21:59:43 +0000 (UTC)
Date: Thu, 17 Feb 2022 15:59:42 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: linux-pci@vger.kernel.org, kishon@ti.com, lorenzo.pieralisi@arm.com,
	kw@linux.com, jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
	lznuaa@gmail.com, hongxing.zhu@nxp.com,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com
Subject: Re: [RFC PATCH 2/4] NTB: epf: Added more flexible memory map method
Message-ID: <20220217215942.GA308686@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220215053844.7119-3-Frank.Li@nxp.com>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VsBw31Tx;       spf=pass
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

[+cc Jon, Dave, Allen, linux-ntb, since you need at least an ack from
the NTB folks; beginning of thread:
https://lore.kernel.org/r/20220215053844.7119-1-Frank.Li@nxp.com]

In subject, s/Added/Add/.

But I don't think it's quite right yet, because this doesn't actually add
any functions.

On Mon, Feb 14, 2022 at 11:38:42PM -0600, Frank Li wrote:
> Supported below memory map method
> 
> bar 0: config and spad data
> bar 2: door bell
> bar 4: memory map windows

s/bar/BAR/
s/spad/?/ (I don't know what this is)

Presumably these BAR numbers apply to some specific hardware?  This
probably should specify *which* hardware.

Please make the commit log say what this patch does.

> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/ntb/hw/epf/ntb_hw_epf.c | 48 ++++++++++++++++++++++++---------
>  1 file changed, 35 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c b/drivers/ntb/hw/epf/ntb_hw_epf.c
> index b019755e4e21b..3ece49cb18ffa 100644
> --- a/drivers/ntb/hw/epf/ntb_hw_epf.c
> +++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
> @@ -45,7 +45,6 @@
>  
>  #define NTB_EPF_MIN_DB_COUNT	3
>  #define NTB_EPF_MAX_DB_COUNT	31
> -#define NTB_EPF_MW_OFFSET	2
>  
>  #define NTB_EPF_COMMAND_TIMEOUT	1000 /* 1 Sec */
>  
> @@ -67,6 +66,7 @@ struct ntb_epf_dev {
>  	enum pci_barno ctrl_reg_bar;
>  	enum pci_barno peer_spad_reg_bar;
>  	enum pci_barno db_reg_bar;
> +	enum pci_barno mw_bar;
>  
>  	unsigned int mw_count;
>  	unsigned int spad_count;
> @@ -92,6 +92,8 @@ struct ntb_epf_data {
>  	enum pci_barno peer_spad_reg_bar;
>  	/* BAR that contains Doorbell region and Memory window '1' */
>  	enum pci_barno db_reg_bar;
> +	/* BAR that contains memory windows*/
> +	enum pci_barno mw_bar;
>  };
>  
>  static int ntb_epf_send_command(struct ntb_epf_dev *ndev, u32 command,
> @@ -411,7 +413,7 @@ static int ntb_epf_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
>  		return -EINVAL;
>  	}
>  
> -	bar = idx + NTB_EPF_MW_OFFSET;
> +	bar = idx + ndev->mw_bar;
>  
>  	mw_size = pci_resource_len(ntb->pdev, bar);
>  
> @@ -453,7 +455,7 @@ static int ntb_epf_peer_mw_get_addr(struct ntb_dev *ntb, int idx,
>  	if (idx == 0)
>  		offset = readl(ndev->ctrl_reg + NTB_EPF_MW1_OFFSET);
>  
> -	bar = idx + NTB_EPF_MW_OFFSET;
> +	bar = idx + ndev->mw_bar;
>  
>  	if (base)
>  		*base = pci_resource_start(ndev->ntb.pdev, bar) + offset;
> @@ -565,6 +567,7 @@ static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
>  			    struct pci_dev *pdev)
>  {
>  	struct device *dev = ndev->dev;
> +	size_t spad_sz, spad_off;
>  	int ret;
>  
>  	pci_set_drvdata(pdev, ndev);
> @@ -599,10 +602,16 @@ static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
>  		goto err_dma_mask;
>  	}
>  
> -	ndev->peer_spad_reg = pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
> -	if (!ndev->peer_spad_reg) {
> -		ret = -EIO;
> -		goto err_dma_mask;
> +	if (ndev->peer_spad_reg_bar) {
> +		ndev->peer_spad_reg = pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
> +		if (!ndev->peer_spad_reg) {
> +			ret = -EIO;
> +			goto err_dma_mask;
> +		}
> +	} else {
> +		spad_sz = 4 * readl(ndev->ctrl_reg + NTB_EPF_SPAD_COUNT);
> +		spad_off = readl(ndev->ctrl_reg + NTB_EPF_SPAD_OFFSET);
> +		ndev->peer_spad_reg = ndev->ctrl_reg + spad_off  + spad_sz;
>  	}
>  
>  	ndev->db_reg = pci_iomap(pdev, ndev->db_reg_bar, 0);
> @@ -657,6 +666,7 @@ static int ntb_epf_pci_probe(struct pci_dev *pdev,
>  	enum pci_barno peer_spad_reg_bar = BAR_1;
>  	enum pci_barno ctrl_reg_bar = BAR_0;
>  	enum pci_barno db_reg_bar = BAR_2;
> +	enum pci_barno mw_bar = BAR_2;
>  	struct device *dev = &pdev->dev;
>  	struct ntb_epf_data *data;
>  	struct ntb_epf_dev *ndev;
> @@ -671,17 +681,16 @@ static int ntb_epf_pci_probe(struct pci_dev *pdev,
>  
>  	data = (struct ntb_epf_data *)id->driver_data;
>  	if (data) {
> -		if (data->peer_spad_reg_bar)
> -			peer_spad_reg_bar = data->peer_spad_reg_bar;
> -		if (data->ctrl_reg_bar)
> -			ctrl_reg_bar = data->ctrl_reg_bar;
> -		if (data->db_reg_bar)
> -			db_reg_bar = data->db_reg_bar;
> +		peer_spad_reg_bar = data->peer_spad_reg_bar;
> +		ctrl_reg_bar = data->ctrl_reg_bar;
> +		db_reg_bar = data->db_reg_bar;
> +		mw_bar = data->mw_bar;
>  	}
>  
>  	ndev->peer_spad_reg_bar = peer_spad_reg_bar;
>  	ndev->ctrl_reg_bar = ctrl_reg_bar;
>  	ndev->db_reg_bar = db_reg_bar;
> +	ndev->mw_bar = mw_bar;
>  	ndev->dev = dev;
>  
>  	ntb_epf_init_struct(ndev, pdev);
> @@ -729,6 +738,14 @@ static const struct ntb_epf_data j721e_data = {
>  	.ctrl_reg_bar = BAR_0,
>  	.peer_spad_reg_bar = BAR_1,
>  	.db_reg_bar = BAR_2,
> +	.mw_bar = BAR_2,
> +};
> +
> +static const struct ntb_epf_data mx8_data = {
> +	.ctrl_reg_bar = BAR_0,
> +	.peer_spad_reg_bar = BAR_0,
> +	.db_reg_bar = BAR_2,
> +	.mw_bar = BAR_4,
>  };
>  
>  static const struct pci_device_id ntb_epf_pci_tbl[] = {
> @@ -737,6 +754,11 @@ static const struct pci_device_id ntb_epf_pci_tbl[] = {
>  		.class = PCI_CLASS_MEMORY_RAM << 8, .class_mask = 0xffff00,
>  		.driver_data = (kernel_ulong_t)&j721e_data,
>  	},
> +	{
> +		PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, 0x0809),
> +		.class = PCI_CLASS_MEMORY_RAM << 8, .class_mask = 0xffff00,
> +		.driver_data = (kernel_ulong_t)&mx8_data,
> +	},
>  	{ },
>  };
>  
> -- 
> 2.24.0.rc1
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20220217215942.GA308686%40bhelgaas.
