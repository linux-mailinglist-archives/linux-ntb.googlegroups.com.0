Return-Path: <linux-ntb+bncBCS4BDN7YUCRBHUX2D3AKGQE7LDZNBY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F15F1E9A45
	for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 21:55:12 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 203sf3087340oie.19
        for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 12:55:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590954911; cv=pass;
        d=google.com; s=arc-20160816;
        b=e6IyemSWh5xrjaqVQPPvACdzJsKRmGr7I6hmuU/hO9EoUu1Xsa2ymWMAKgL693xaqW
         w0kxynfItZLlpAcpmW2rNISIkOKYEsxmtTcfU29cInarUokLGQ20clcLrhzmPMnNebmb
         Xz0cpO8akNG0VjdJqqYn0wtHC2UGIZUIXZbOKU4n+ctxaWCr4JPsUyTfxIaYi7JUTMXn
         GjrXzZKJRt8PmoOrzY26pW5gjmqdXLXy/OmW9uw7bd/iumS2MRrvRizkJ1DHbDc+tgUd
         0pdPw1me310JhDVrRSz6cYeJ8tuG8ytGNZbGj+65TFgf53JTZ4IEzyhi6DhSMGXbzQD5
         Nqbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2CrW1UQImWHkbkgStp27snNQyx2ej6TjU5ED3zYEAqI=;
        b=fkGlEoM9IdLCFySJpb/SLV4cqybtn6JDzbpUR3s8uitJfAofPO6hFb95sStvVTsraf
         IHNgIDmoBv21CyBJqJKuosu3W1tQeY0aXUiltKvdXdQc9lZ6NHmXVhiWngCy5FyQqh55
         GXZEjovRzrzitjdffWoWe9nPo8cZn+ZJJw8tX+reIX3OWBxixqIcUIwxAc+DPRYjHpB4
         hwznS9tR83GF83yCtObBgI3EpUySh+64/LNKgCsIzjYw5kwfVOd4jQVgxp/Mh3LD9jn7
         tFmSMQc58bPKs3NtZ7ExTzpwB/oBvBGfzRT41R40Wc/K582EexAPsxMY+bIX9wSfT7KN
         MhmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=R7RvVgBR;
       spf=neutral (google.com: 2607:f8b0:4864:20::741 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2CrW1UQImWHkbkgStp27snNQyx2ej6TjU5ED3zYEAqI=;
        b=Lk9Qx7vyzllQUF4dsMxbkRjsNbQpt1nVk2ujknd/w1TvI+KQ8ZXi5kSEUKmWIL3tup
         CbhuufeFZU/noTu+1ksjwjxBYpouZO8wzovYa9OjmFtFjdlaSbYU0kUe79wy0emz5OfM
         70yju5NfTfX77MGPCj5Hrt64m1cUee5JZWsNgpQPokhrPg8E7X7WznL2WidflOG3UVv+
         l2izXcqJ63FHCUpn/bdNe1o29Ett5xDH3Fe8slPZMfEMrMvC3l+Fhn6Q1evw3vbNBK/S
         SJRO90K8SqhCMj5YjL85ifMBQpBt95l9HxFf3znuMtUpxUNYmgvzXalDQwUEJMUfN9B3
         Qa3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2CrW1UQImWHkbkgStp27snNQyx2ej6TjU5ED3zYEAqI=;
        b=AuYNvv84Yn/2n0JdDfkW0KH77khl0iPB6Ck3zW/dUf9vLPkCXLTTsVmAS+22ua2Ta1
         tvN112XN8YvfrlWVMYj0obd7SZ+Zwx/akr/PPTnaImvwd6KNmWhGcFPGEgyQ579iLTsn
         IEwPtPVEPMkwqAZaUU4lkrvN74yE4iMK/QAlrNpToLWxxr2MECLn5kLTkHux+GOnQw6B
         0wLhR5UwYZs2tKiitRGCm+yDoIQOI7nDWfdcH5tWPP9oEW9uB6RXDcQBMkiOPUSrJz0M
         +xi938ATuPgyVHtISrm8Nf/QOVmWXIjjt7S1BfuVoPL0z8wV6D6M1uXePVRD/pEz9aAP
         j6RQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531bkFbnWulrEnk2Hn1AXnYLD+iHSo3rzmK4suHTy1PCdRXK7bH2
	sq80RphY3adyJY+8VHOUpWs=
X-Google-Smtp-Source: ABdhPJw4c+7X3+eCdiGkpkGl48KekDakxjGLk7JgoX6iWjSXqfijNNF80y04dP21c5mmG4g79mYDAQ==
X-Received: by 2002:a05:6830:2004:: with SMTP id e4mr13926930otp.60.1590954910984;
        Sun, 31 May 2020 12:55:10 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:cf10:: with SMTP id f16ls2064500oig.10.gmail; Sun, 31
 May 2020 12:55:10 -0700 (PDT)
X-Received: by 2002:aca:c746:: with SMTP id x67mr12328558oif.179.1590954910660;
        Sun, 31 May 2020 12:55:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590954910; cv=none;
        d=google.com; s=arc-20160816;
        b=N2dyUPAuPox9rwJanRq+SZu5FMnU2BTSGIgAzEtKlpLDAT1f8t+MFi3EVROcHkFq9K
         NQ0B1LYjn3pZvoPHp1Zujfpe89UuNEFUGOAxOaA4WwKy7r+U7sFIHXlbtU2IweyTDNul
         8YMZl/e6FU3OoBSSvPOLO5WOodqVrP+RLDsqQUe4vwVpWfRFEGWpQaUvoAbcTM2h1ZHs
         eMmmWVRjdTJANwN08SCqXk5fwyzwgfaYct5zL1AtBiuZqhuSC/pQk9wLNABA1hoMCYqO
         XsnaRlhXYUMNqPoiPW93McP8FtK8SCdD3vZhaE8vWUU2w2qqM6v6sRQkDZrwmDxlMDlY
         DMaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BStX54751XEkX9fy3ii2Mt40/dt/8bIi6sWxN0SFitQ=;
        b=MMdE6dOIgLBCKQxMkdxMr2kLBqwvTrvDHMeGC9gjByXrsbR16DWIQwh11CS+25PoRX
         GXgyoLORtQ/dLga6UbKyXePJviOBkYN7m+CeuFuPhn1sqnM870O6LMUKQ/5ycrsKs8Lx
         +Y41xW/5htOkYxTbHP813/qgrLJF9UckDCTFAOGuXASgwNZ/6x0Mb2FjbikjJoGdQPJ7
         +ioYanr3yi3O0dl87kyH7SIs+hdV7X+bi1laHrBuhClUh7qoEG7xY6zXCo9nZUIuLpeJ
         Q7Kw5/afPF/kpLTNYPOfMuWAGMYT2RhXVbN5Gr3+8Y7yygQ60vMbahpDj+795P2Wbcwg
         Soqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=R7RvVgBR;
       spf=neutral (google.com: 2607:f8b0:4864:20::741 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id p28si1357039ota.3.2020.05.31.12.55.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 May 2020 12:55:10 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::741 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id c185so7230087qke.7
        for <linux-ntb@googlegroups.com>; Sun, 31 May 2020 12:55:10 -0700 (PDT)
X-Received: by 2002:a37:8302:: with SMTP id f2mr16461180qkd.220.1590954910153;
        Sun, 31 May 2020 12:55:10 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a664:2e00:a5da:931a:7f23:1d4d])
        by smtp.gmail.com with ESMTPSA id f30sm10760958qtb.9.2020.05.31.12.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 May 2020 12:55:09 -0700 (PDT)
Date: Sun, 31 May 2020 15:55:08 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Dave Jiang <dave.jiang@intel.com>
Cc: linux-ntb@googlegroups.com, allenbh@gmail.com
Subject: Re: [PATCH] ntb: intel: add revision lockdown for Icelake NTB driver
Message-ID: <20200531195507.GC4620@kudzu.us>
References: <158993143119.41853.10657616792966099233.stgit@djiang5-desk3.ch.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <158993143119.41853.10657616792966099233.stgit@djiang5-desk3.ch.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=R7RvVgBR;       spf=neutral (google.com: 2607:f8b0:4864:20::741 is
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

On Tue, May 19, 2020 at 04:37:11PM -0700, Dave Jiang wrote:
> Add PCI device revision during probe to ensure that the driver only runs
> on intended CPU steppings for Icelake.
> 
> Signed-off-by: Dave Jiang <dave.jiang@intel.com>

Pulled into the ntb branch

Thanks,
Jon

> ---
>  drivers/ntb/hw/intel/ntb_hw_gen4.c |    6 ++++++
>  drivers/ntb/hw/intel/ntb_hw_gen4.h |   13 +++++++++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.c b/drivers/ntb/hw/intel/ntb_hw_gen4.c
> index ed6574d8fcc6..dcbd6d3cf7ae 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_gen4.c
> +++ b/drivers/ntb/hw/intel/ntb_hw_gen4.c
> @@ -221,6 +221,12 @@ int gen4_init_dev(struct intel_ntb_dev *ndev)
>  	u16 lnkctl;
>  	int rc;
>  
> +	if (!pdev_is_ICX(pdev)) {
> +		dev_warn(&pdev->dev,
> +			 "Incorrect device revision: %d.\n", pdev->revision);
> +		return -ENODEV;
> +	}
> +
>  	ndev->reg = &gen4_reg;
>  
>  	ppd1 = ioread32(ndev->self_mmio + GEN4_PPD1_OFFSET);
> diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.h b/drivers/ntb/hw/intel/ntb_hw_gen4.h
> index 10f3ddf2ad30..c2ff5ed86d7d 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_gen4.h
> +++ b/drivers/ntb/hw/intel/ntb_hw_gen4.h
> @@ -46,6 +46,10 @@
>  
>  #include "ntb_hw_intel.h"
>  
> +/* Supported PCI device revision range for ICX */
> +#define PCI_DEVICE_REVISION_ICX_MIN	0x2
> +#define PCI_DEVICE_REVISION_ICX_MAX	0x7
> +
>  /* Intel Gen4 NTB hardware */
>  /* PCIe config space */
>  #define GEN4_IMBAR23SZ_OFFSET		0x00c4
> @@ -125,4 +129,13 @@ ssize_t ndev_ntb4_debugfs_read(struct file *filp, char __user *ubuf,
>  
>  extern const struct ntb_dev_ops intel_ntb4_ops;
>  
> +static inline int pdev_is_ICX(struct pci_dev *pdev)
> +{
> +	if (pdev_is_gen4(pdev) &&
> +	    pdev->revision >= PCI_DEVICE_REVISION_ICX_MIN &&
> +	    pdev->revision <= PCI_DEVICE_REVISION_ICX_MAX)
> +		return 1;
> +	return 0;
> +}
> +
>  #endif
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200531195507.GC4620%40kudzu.us.
