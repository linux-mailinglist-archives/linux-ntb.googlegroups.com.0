Return-Path: <linux-ntb+bncBCS4BDN7YUCRBYNIR75AKGQE4JWE2OI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBC7250033
	for <lists+linux-ntb@lfdr.de>; Mon, 24 Aug 2020 16:53:22 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id r187sf5449591pgr.13
        for <lists+linux-ntb@lfdr.de>; Mon, 24 Aug 2020 07:53:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598280801; cv=pass;
        d=google.com; s=arc-20160816;
        b=lGnJUc7hcWspNJskdZ//k8+SpcoezCRbykv/g931I0pcNM0ZSHlSQM6X/tBuVRrIk8
         thrznkgjue9uKns+tw2rYw20dTS3jwDVp8bbN75Erf31LDH/zBTnFJg0/aQ4mfQ53icG
         34ZbDvSXT07sDFJr5fpdRl0CRCWj4shUosiJ3DpNe2Z3SvFp8oZ23iHfzoY0X4IL3cYS
         No82uTtu0mOZDPHcF935Z7ZCx30/Q5RbZsNKgwk05dO9zQslrSRjbA7J+Uu7odehihEu
         7qog1B6mhPb3/LBLyuCOtSYnSSbUjtDT5NjrTnmTzK7yQLO46x0k//DXc4UEifD90nG5
         oxfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=MaSWXpu44Y7L+KAPoroluPo6s8xXJATJQVYDUPng05I=;
        b=K+XnsHb13ItwkNqataHj/sRt/i0mp0ckQMQCaE5/LC7/4dz5WQZB0fx0icWZ63N9JD
         fZsuQTQ/Taa69Om6OSMWgyNTKHjlN/vv5ghvHZo07RgOA+gVQVcVpw861unFVUvvu8v/
         SPwlfsEypmlA32FeauQgONAHJPL1xJZiYIrpw4p0hSU8kn1z76gINO1aDeZ5171C52M9
         A4RilgO1hMci4/IOrBHpxHWmUMFU73UpMjto2FYwro07GaDHx9ZyWeXDI12YHaYoOFBT
         VhQ6pIjHhrDtQXs/Apg0HUByXK3KJFM1bAKVeDaY799V5Mq2qX9WmtMJJ5KkGy/nTF4v
         Cdvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=fb2LMxB4;
       spf=neutral (google.com: 2607:f8b0:4864:20::743 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MaSWXpu44Y7L+KAPoroluPo6s8xXJATJQVYDUPng05I=;
        b=gXw0GPLCVW01MYRl3k0Sxm70brKgQYbFRpoY5hiqOWQLpikQy4nMAz8qGA8GdHpgWC
         AGQgyWnSDyKkAs1RxsjvSps6IfJdCrYQTT1ynfz/JTbjfFocHqrL0+NTzhrcllwrkyKa
         1AFbLRyi/JDwkWE7vd5XXyojOB941KfbBDfDJVPsGAGiTSTFMNSwvV0B5+uHPq8LZzro
         1kE1RQtGdPLx7QqRejbtVLnH90k84zcYNHQ7l6Zm4UKasKsbhrf7pi1twzULxG6jfmp3
         mkNEWYKyY0vi7oxfwAQMo2IFH4zFxgOAUgW+1koB1cC0ynAG7PgyI5vv38zxY4TWqEOi
         RCJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MaSWXpu44Y7L+KAPoroluPo6s8xXJATJQVYDUPng05I=;
        b=YSNkLNWkas680/Qk0mHLlnVHc9aKAMuw6HvPHsCw8JBBC7770xtZpvRITlujiIrxnZ
         dHFpCyCLMHG9fpoZnqXAKe5a228bKe/LyrO6B/hS6tUTorspHN90FxCxk1HKVBejwLwX
         Nh3nkgKdtzBFr84/XdgTaDrqz2KwVyvPqnjf6iDWZ25szXd7YYtF9s8mOyiRPaO8d+Lp
         0AH1YEwlm0N3+uyMng2Yy0cmNt56D/1KgGj5npjmJ96q/Tn+GuyOsj8dlmCuTZlkZRD7
         nFzS4vzq/kfdfKBgYinnbxZocHNkp4k/rBtnc3Sto2UN/t8K4uanBnKryzOSzN9wRfcS
         RIvw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532xsJD1XFguwsG5CKqLFr16BLsEcjNu78VehdvuH9G5kh+qXX7+
	HF25uKO/Y4ulKwf6nMVDSNo=
X-Google-Smtp-Source: ABdhPJyLw7igO+temuCCLF+lqtnYgFUfcyMTsbDamKN8D4z5dbFmasxyWsh6mnu3vwPzDb5VimVRyQ==
X-Received: by 2002:a63:e154:: with SMTP id h20mr3620906pgk.428.1598280801499;
        Mon, 24 Aug 2020 07:53:21 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:8f1d:: with SMTP id x29ls1336280pfr.11.gmail; Mon, 24
 Aug 2020 07:53:21 -0700 (PDT)
X-Received: by 2002:a65:6412:: with SMTP id a18mr3700707pgv.215.1598280801083;
        Mon, 24 Aug 2020 07:53:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598280801; cv=none;
        d=google.com; s=arc-20160816;
        b=UHRM3XyNgcy0ouQhtuaI8APLcdarU1cFWu4JHQYzz6Cus9tSHUMQmo+xFZ5drw2YWA
         cypav9IBeQA3GRp8+wU85dj1dzJVC2tfFxiCBshxl+H+FaocwowVt7GRCaxgihn+YoQx
         82v1cJi6zsD8ws5wHPQH4p6TQvTQDnI31l5+lQXO4qAOr5yITDPdJNpbGBvLlA5RlL/W
         DT/Nrq5yuM2bY/gkgLoEB11mQU4j6w/iijwqOG+syp7a+hm6wASdtMwRWn9vLdVmiWkq
         HSx+8A4c/7I7PVVQJCo7RbNH61QoESAnM7wXnaHgGSc5lsWCPKPWU/n1VxrpUZJ5j+y4
         OOYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3l1KJ9xV7Ihgw4DySoyFjywNiCcO94+hClVbk8PhJDY=;
        b=Pi2bTce57L5a0A1h4lJWBHJ89quTc28I/dh7SSLKePBGLvdQLH1ctJ0cQsEOhp4i14
         2SMlg1y2y31vGqmm2EEQJfeAUnqPw8EU7dHAiprRvrOqoi+LKmcA9Q+yQYvlvc/T4zkb
         NFnLKxcAFv9iCbY0YvgIzlrc9Z4tYnwFmt8usRPWRsYSQd6PwhkfdZHT32mKYHBvvAp4
         NUTT3Mf4nn40a6hUAiHfHAgYvJvrwdsxER3A7sf3IJak9VMzvaXBhyhsL6YH1o0/Ni38
         1Ih4poVmxwSqwhk+NAPGKHp8R4NrJFp98jyO1WKRkVsuwiCac+xmFaf0ORfghVS0Zcrd
         JDkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=fb2LMxB4;
       spf=neutral (google.com: 2607:f8b0:4864:20::743 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id bg1si430843plb.5.2020.08.24.07.53.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 07:53:21 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::743 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id p25so7621596qkp.2
        for <linux-ntb@googlegroups.com>; Mon, 24 Aug 2020 07:53:21 -0700 (PDT)
X-Received: by 2002:a37:8cc3:: with SMTP id o186mr5193554qkd.390.1598280800264;
        Mon, 24 Aug 2020 07:53:20 -0700 (PDT)
Received: from kudzu.us ([136.56.1.171])
        by smtp.gmail.com with ESMTPSA id f3sm2668691qth.56.2020.08.24.07.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 07:53:19 -0700 (PDT)
Date: Mon, 24 Aug 2020 10:52:47 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Kaige Li <likaige@loongson.cn>
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [RESEND] NTB: hw: amd: fix an issue about leak system resources
Message-ID: <20200824145246.GB27238@kudzu.us>
References: <1597111197-28563-1-git-send-email-likaige@loongson.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1597111197-28563-1-git-send-email-likaige@loongson.cn>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=fb2LMxB4;       spf=neutral (google.com: 2607:f8b0:4864:20::743 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

On Tue, Aug 11, 2020 at 09:59:57AM +0800, Kaige Li wrote:
> The related system resources were not released when pci_set_dma_mask(),
> pci_set_consistent_dma_mask(), or pci_iomap() return error in the
> amd_ntb_init_pci() function. Add pci_release_regions() to fix it.
> 
> Signed-off-by: Kaige Li <likaige@loongson.cn>

Pulled into my ntb branch.  I added:
    Fixes: a1b3695820aa ("NTB: Add support for AMD PCI-Express Non-Transparent Bridge")

Thanks,
Jon

> ---
> 
> changed commit massage.
> 
>  drivers/ntb/hw/amd/ntb_hw_amd.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
> index 88e1db6..71428d8 100644
> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
> @@ -1203,6 +1203,7 @@ static int amd_ntb_init_pci(struct amd_ntb_dev *ndev,
>  
>  err_dma_mask:
>  	pci_clear_master(pdev);
> +	pci_release_regions(pdev);
>  err_pci_regions:
>  	pci_disable_device(pdev);
>  err_pci_enable:
> -- 
> 2.1.0
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200824145246.GB27238%40kudzu.us.
