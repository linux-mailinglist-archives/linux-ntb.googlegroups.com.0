Return-Path: <linux-ntb+bncBCHOL743RIIRB6GL2KEQMGQEMYJXX2A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id AA712400F40
	for <lists+linux-ntb@lfdr.de>; Sun,  5 Sep 2021 13:11:53 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id m10-20020a2e97ca000000b001bb5da17f7dsf1629423ljj.19
        for <lists+linux-ntb@lfdr.de>; Sun, 05 Sep 2021 04:11:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630840313; cv=pass;
        d=google.com; s=arc-20160816;
        b=KFMUCbmQ73PBXaN0fM+MYCuWj7HeHlWp//s49GC7C01aTc+IyFXlNMoE3AL4H6K+in
         Pidrc36RaQcdgBimsg1GoL3JZ105rl+hbs57Yzartapu1SG3wD+m8DKlwEyjAnJj36+X
         fM5O2AExpjs6GWEkP1driK56sWfvOF5clhS/BBItsJyBCv5yVblSoHtKmDcD/5JYpXcJ
         6Es9Uh+lyH1iP3IcScIHWi3QLiPn/VpUHmcuQvy9dZ+TXv33Ja/PlORilLj/aDsp6hxX
         HDeHStV5IpGwVOTcZ0YG4eTNuEsc2GRLoL8F9llnjrbnqtEW3xP8gVk7Wz+ehXANBpfa
         IVAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=stWatrOi4S/EkpnvlqNcFNWIlY3aLDqPx+VcOJDqFbI=;
        b=u6yazSneFEIk7AMXwtWoViDQFKqTsqTR/QDSDP9PiWi/Ws87aIIft1QTGdjjOzpinH
         OkHIRCQmpvxXLDmaMa8CjLGpwd98GeQemEXrTNkKyAsl8Ra19S1c2+SWCndaCwBTUk1o
         K/ASQIXVqB5wh5ScsUrG0tx/pKWvFlcGgB7DMyLFAmXZ3TusbiDk7y0zRPxLjYtKe02T
         yKFRSfK8heQmk+U1TCqAHX7yDTQo6Dz9mSo1D5CypGzMstspfG06hkynfZM91v6FVB9O
         NhaCnQ4CyhDusw0DAhVrkSaXphyOQK3MC0u2cr90dwS2FmX2f1MvlQFtCrmHrNuQeV5N
         OCQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=KAHeikv6;
       spf=pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=stWatrOi4S/EkpnvlqNcFNWIlY3aLDqPx+VcOJDqFbI=;
        b=ZJiPWXIynaLQCJFf7oIrMUU1uCnsJYPAR+rjl/jAu1Ri0O8aG3rvHYrx5IgrQ8WRcM
         INXmOWsOJg49VMvnkEvyn+3Agccp0wkvKJuRLvEIfYZnasdHsx5ZpogrPHO9iEId1VEA
         KLBP7AE7uF3qImh2XTnr1M8yXWoHfC3CoglrTaXM9kYHxGbypRWkZOnZWzTgC37gbyQQ
         Ukh8GZ+Eic+Q5k/89k7+XlLKOxZnLTsWvV9ot2XY8herquVkmP61/95hIcjV/qHWyBbt
         ImqvEaeCgDIO0uaSLeFnAZFmKt0E2ydI54qUMB8gbIDXLfc07KYkzZDml39J7CG8cuf1
         9ApQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=stWatrOi4S/EkpnvlqNcFNWIlY3aLDqPx+VcOJDqFbI=;
        b=KRNgV+f9e9zhe7hv1Gx0wK5O/uYWk6hx9c80TOGyBocSMpBC8g+ov/s45umiHix8GD
         Ee+QOi2k9BoLZdKqwZBLwWyJDtWKwTcMQw00JBIZBRS/9Wt5ls/y0Nzeze31Qr9QbkTa
         jRvcmLhvGWmlUJvtisAQkHndCdnffy+IwjSETEW0gm3LFn3Zm50/uS4kwTQ1gI7waVbS
         vbrE9wz1UvScLL7bnh+N2LYDEOXiJ5JSw1SzUe0joC9hXCnuphz44hr2MTfLRk3V4z6v
         4ZT0LcVlEeWyFggpBi8lsre2+SJ2/Bqrlh97WB945TW1ISOsOgh/NxotM2BcKFlABU1u
         C3fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=stWatrOi4S/EkpnvlqNcFNWIlY3aLDqPx+VcOJDqFbI=;
        b=fTJ6j9mR+MpSeQBUnC6/vkhD8MQ4g0L7MSuuvIU8U5evXGEIgWFMGENKAnPcOwZXJB
         U7MOckWaUvJUiv+z8p+navqpARpwvk5LSr3+pm2SYKQ88pKag1yEaYnF+0O0r1b3iakA
         AmFXbjbcma7TH7M7tnBCFerfeWcbS0qtLkhWzkFmaGgIcDJlLvQdJ6NcpqM74ItrKgD8
         gtlAdwTw2rxQUewyKfwrr4AWBacM/0toVvJoL1147xhzHdGVQe4GNcqoW0PvzxEe7dlF
         r4h17owE5gxtkkasgRI+jX58Iphdx1jFr7rdB1ClSDyCVV9qtwwd3LckcParBH/YLTEC
         bHQA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533V4o1H40RHk0s/AA3lY9lMAv2cOyzRMsL3MxTkuxUir/JmShqP
	9fkXTFrk6dnT5fCOQI31ivo=
X-Google-Smtp-Source: ABdhPJwBTW86AajDK9aE1MrcJfCtIrhFURz+ZTvNFf8byV1rnft0rwCh7z2UlpuXGonVopUiknsJsg==
X-Received: by 2002:a05:6512:104c:: with SMTP id c12mr5753059lfb.479.1630840313203;
        Sun, 05 Sep 2021 04:11:53 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls1615231lfi.2.gmail; Sun, 05 Sep
 2021 04:11:52 -0700 (PDT)
X-Received: by 2002:a05:6512:241:: with SMTP id b1mr5657448lfo.99.1630840312037;
        Sun, 05 Sep 2021 04:11:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630840312; cv=none;
        d=google.com; s=arc-20160816;
        b=Be2zRh6hx/ZNnqKpPjFwsStm9kIEtp9ea7gGUWuQNcagy6zdTCYNb7XlST2qBukGNt
         6rbor1ZBnXXk37LvYAVQR7PPI8kfc1X256zFORXFYqOZG5vbYntfWJj3Lkr2v5E3W5JH
         hxTGbX4FuyYPvfGmJOik77UxGM7ftvcroqMt6gc3BAfZWTsCKpyyN4OUaFR5uI9BkLC0
         n9qMBCh1W8IlBkfpBEPLAAi/vT762XxkUzjN4MvnslXIX+Fknzvu1dKPfiK/T5EHJiL6
         ndl59hEQhZJJtGdXvY7oMsztL16CP3k9dWo4w4B6a2nHoE5KqHewp0XQ24HpC0MP07/Z
         cGDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+U3UCSNl0YCQFxJbxthaYAnyClY/Df6RLpX0xQi9nss=;
        b=NIcjaJYSzSOPte5+S5E++hZQLyjuo+BvfmKbChQb7kC7ZiwyHZ+Uvq5WTHrmwE6AcU
         nK2KQXAM5jcscRVJyK5Cs3Rzg3/3w0/Z6eLAIEQHmDCyRR0wDl4bA4P6AJe/mDFJlmAr
         KTdeBt1aTTW4a0ucMgyL6D/9sOKIWERdi3yZSfjzJiAYkunGzCYokO6UczShUj80uxPk
         wgm6nsym+L2xp3UZeNlJNS8tCogu3SHn174XKxAP/0nRakjqaSDMAyXDF43ewacvAFLm
         CFwdR4uEMF2HEyzXUzlWKVQ1PkNbr+DtRuq+X7bmaaRki3DSCfzVLPb/XJuQYiBftiqx
         0ROg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=KAHeikv6;
       spf=pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id v25si225779lfr.1.2021.09.05.04.11.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Sep 2021 04:11:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id h16so7553177lfk.10
        for <linux-ntb@googlegroups.com>; Sun, 05 Sep 2021 04:11:52 -0700 (PDT)
X-Received: by 2002:a05:6512:3d0d:: with SMTP id d13mr5793425lfv.513.1630840311782;
        Sun, 05 Sep 2021 04:11:51 -0700 (PDT)
Received: from mobilestation ([95.79.127.110])
        by smtp.gmail.com with ESMTPSA id l11sm460515lfg.39.2021.09.05.04.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 04:11:51 -0700 (PDT)
Date: Sun, 5 Sep 2021 14:11:49 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: sanju.mehta@amd.com, Shyam-sundar.S-k@amd.com, jdmason@kudzu.us,
	dave.jiang@intel.com, allenbh@gmail.com, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] NTB: switch from 'pci_' to 'dma_' API
Message-ID: <20210905111149.atqgurplzy472thz@mobilestation>
References: <6a1db73ba4e46958cb40d3766eff771ef5d7a11b.1629640974.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6a1db73ba4e46958cb40d3766eff771ef5d7a11b.1629640974.git.christophe.jaillet@wanadoo.fr>
X-Original-Sender: fancer.lancer@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=KAHeikv6;       spf=pass
 (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::12f
 as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Christophe

On Sun, Aug 22, 2021 at 04:04:12PM +0200, Christophe JAILLET wrote:
> The wrappers in include/linux/pci-dma-compat.h should go away.
> 
> The patch has been generated with the coccinelle script below.
> 
> It has been compile tested.

Thanks for the clean up. Explicit Ack for the IDT-part is below.

> 
> 
> @@
> @@
> -    PCI_DMA_BIDIRECTIONAL
> +    DMA_BIDIRECTIONAL
> 
> @@
> @@
> -    PCI_DMA_TODEVICE
> +    DMA_TO_DEVICE
> 
> @@
> @@
> -    PCI_DMA_FROMDEVICE
> +    DMA_FROM_DEVICE
> 
> @@
> @@
> -    PCI_DMA_NONE
> +    DMA_NONE
> 
> @@
> expression e1, e2, e3;
> @@
> -    pci_alloc_consistent(e1, e2, e3)
> +    dma_alloc_coherent(&e1->dev, e2, e3, GFP_)
> 
> @@
> expression e1, e2, e3;
> @@
> -    pci_zalloc_consistent(e1, e2, e3)
> +    dma_alloc_coherent(&e1->dev, e2, e3, GFP_)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_free_consistent(e1, e2, e3, e4)
> +    dma_free_coherent(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_map_single(e1, e2, e3, e4)
> +    dma_map_single(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_unmap_single(e1, e2, e3, e4)
> +    dma_unmap_single(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4, e5;
> @@
> -    pci_map_page(e1, e2, e3, e4, e5)
> +    dma_map_page(&e1->dev, e2, e3, e4, e5)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_unmap_page(e1, e2, e3, e4)
> +    dma_unmap_page(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_map_sg(e1, e2, e3, e4)
> +    dma_map_sg(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_unmap_sg(e1, e2, e3, e4)
> +    dma_unmap_sg(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_dma_sync_single_for_cpu(e1, e2, e3, e4)
> +    dma_sync_single_for_cpu(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_dma_sync_single_for_device(e1, e2, e3, e4)
> +    dma_sync_single_for_device(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_dma_sync_sg_for_cpu(e1, e2, e3, e4)
> +    dma_sync_sg_for_cpu(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2, e3, e4;
> @@
> -    pci_dma_sync_sg_for_device(e1, e2, e3, e4)
> +    dma_sync_sg_for_device(&e1->dev, e2, e3, e4)
> 
> @@
> expression e1, e2;
> @@
> -    pci_dma_mapping_error(e1, e2)
> +    dma_mapping_error(&e1->dev, e2)
> 
> @@
> expression e1, e2;
> @@
> -    pci_set_dma_mask(e1, e2)
> +    dma_set_mask(&e1->dev, e2)
> 
> @@
> expression e1, e2;
> @@
> -    pci_set_consistent_dma_mask(e1, e2)
> +    dma_set_coherent_mask(&e1->dev, e2)
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> If needed, see post from Christoph Hellwig on the kernel-janitors ML:
>    https://marc.info/?l=kernel-janitors&m=158745678307186&w=4
> 
> This patch is mostly mechanical and compile tested. I hope it is ok to
> update the "drivers/ntb/hw/" directory all at once.
> ---
>  drivers/ntb/hw/amd/ntb_hw_amd.c    | 12 ++----------

>  drivers/ntb/hw/idt/ntb_hw_idt.c    | 15 ++-------------

Acked-by: Serge Semin <fancer.lancer@gmail.com>

-Sergey

>  drivers/ntb/hw/intel/ntb_hw_gen1.c | 12 ++----------
>  3 files changed, 6 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
> index 71428d8cbcfc..87847c380051 100644
> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
> @@ -1176,22 +1176,14 @@ static int amd_ntb_init_pci(struct amd_ntb_dev *ndev,
>  
>  	pci_set_master(pdev);
>  
> -	rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
> +	rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
>  	if (rc) {
> -		rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
> +		rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
>  		if (rc)
>  			goto err_dma_mask;
>  		dev_warn(&pdev->dev, "Cannot DMA highmem\n");
>  	}
>  
> -	rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
> -	if (rc) {
> -		rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
> -		if (rc)
> -			goto err_dma_mask;
> -		dev_warn(&pdev->dev, "Cannot DMA consistent highmem\n");
> -	}
> -
>  	ndev->self_mmio = pci_iomap(pdev, 0, 0);
>  	if (!ndev->self_mmio) {
>  		rc = -EIO;
> diff --git a/drivers/ntb/hw/idt/ntb_hw_idt.c b/drivers/ntb/hw/idt/ntb_hw_idt.c
> index e7a4c2aa8baa..733557231ed0 100644
> --- a/drivers/ntb/hw/idt/ntb_hw_idt.c
> +++ b/drivers/ntb/hw/idt/ntb_hw_idt.c
> @@ -2640,26 +2640,15 @@ static int idt_init_pci(struct idt_ntb_dev *ndev)
>  	int ret;
>  
>  	/* Initialize the bit mask of PCI/NTB DMA */
> -	ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
> +	ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
>  	if (ret != 0) {
> -		ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
> +		ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
>  		if (ret != 0) {
>  			dev_err(&pdev->dev, "Failed to set DMA bit mask\n");
>  			return ret;
>  		}
>  		dev_warn(&pdev->dev, "Cannot set DMA highmem bit mask\n");
>  	}
> -	ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
> -	if (ret != 0) {
> -		ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
> -		if (ret != 0) {
> -			dev_err(&pdev->dev,
> -				"Failed to set consistent DMA bit mask\n");
> -			return ret;
> -		}
> -		dev_warn(&pdev->dev,
> -			"Cannot set consistent DMA highmem bit mask\n");
> -	}
>  
>  	/*
>  	 * Enable the device advanced error reporting. It's not critical to
> diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
> index 093dd20057b9..e5f14e20a9ff 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
> +++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
> @@ -1771,22 +1771,14 @@ static int intel_ntb_init_pci(struct intel_ntb_dev *ndev, struct pci_dev *pdev)
>  
>  	pci_set_master(pdev);
>  
> -	rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
> +	rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
>  	if (rc) {
> -		rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
> +		rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
>  		if (rc)
>  			goto err_dma_mask;
>  		dev_warn(&pdev->dev, "Cannot DMA highmem\n");
>  	}
>  
> -	rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
> -	if (rc) {
> -		rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
> -		if (rc)
> -			goto err_dma_mask;
> -		dev_warn(&pdev->dev, "Cannot DMA consistent highmem\n");
> -	}
> -
>  	ndev->self_mmio = pci_iomap(pdev, 0, 0);
>  	if (!ndev->self_mmio) {
>  		rc = -EIO;
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210905111149.atqgurplzy472thz%40mobilestation.
