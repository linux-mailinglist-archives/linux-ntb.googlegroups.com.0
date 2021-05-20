Return-Path: <linux-ntb+bncBD3NBC7Z7QMBB3PKTOCQMGQEYLETFFY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id BB00C38BA8B
	for <lists+linux-ntb@lfdr.de>; Fri, 21 May 2021 01:49:02 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id h12-20020ac8776c0000b02901f1228fdb1bsf10080974qtu.6
        for <lists+linux-ntb@lfdr.de>; Thu, 20 May 2021 16:49:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621554541; cv=pass;
        d=google.com; s=arc-20160816;
        b=lRZnEl7h581wdMhs3FHSyVEaqrFYlXVwF3TJKdFY/pYRSrtnzfa8ESHuDEYzRNsJeT
         LnbDhTdZYGR+QA9xkH6nJZ7doktNiNLPnDfjsnwrcimqDXW4bNPV3QFCDhw7Z2dfmH4M
         4FEq89fPWwIo/DzWc9kqEQSipTsdYe7C/PDSAXR3FR1qAR73a04a5+FFOZ46yMSIcvX7
         nUxGhzxqa0pGE9VdA3uDfCTNcIu70rvUH6rFwEc29KEF3DuPJHu64hD3Ju/p6wulXWLs
         JK3AWwXn/7Bbfzzjzdz1OWTqOB8/eyiKvhKfDz4Y9qQUJFwSaYc428d5yK7F0C/42lgM
         F+sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=rVimRChv/lJPrwmoyvA9icnA7J0ZkdI/f0qfXWQ2gu8=;
        b=CLCXBfiWoG6ZSLv2HQsTwucbaxYfOWUkTzz56qKM3pAXj8aFdojq3bQXuZSnlQ/imW
         kFSWOeL3WARn2rXrYpxWNdRioPL38CyGzUzDDK6uqO9NLxaUGNJyEUbflRNQNWQa1ca2
         ikwvNoNupKK8sTx/JwbdCf6/mTuHRQus5FTG/i6oUPqCAiPvuMoYNcJeL7JTlNLlDOMP
         S7KJgOg35FNrlRrSC2wuWnYIPhaNayy3eUWlhkCmStrbH4ISrIEBKrQOeSJ2qBgWVCpF
         ZhKZDI+yWzMAi6zQCJroN2XoPf644VRTuQp9mU67nlH2KyzYPT35Z6ApRoelK2j8bz1S
         YB8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=a7yQSVv2;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rVimRChv/lJPrwmoyvA9icnA7J0ZkdI/f0qfXWQ2gu8=;
        b=UVDsDS3LwszNVgIN/SXXjUcS9qxy7ZahaqBqN8PTMQBbsIwF8PtMkhSDHQnvHm/OTX
         xB1e5zcefFJcKNOKns3/uTRBBvsn6eTwwSvwTLciv2UIYQ2P+zzjshqcp0Yvm8sLRD5+
         p0Plys26lv34ZCH3BBLJ1TgfSbObA83MCXSSEqcmAMAV+lfttUWzqu/oMeZNno9Dy0rr
         HeRNcFPZMQLoNLNsPnlRxFqUlLqXSqXflPMXc5t3y+0OGfGhsZLEtKIMSa6lZSlXh0VD
         52XSXcFPfBATcjK248OoX6Df+GCpSyK/g6A8HsL793PsKymabrYgOEPRASrUvLQky8Kl
         CHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rVimRChv/lJPrwmoyvA9icnA7J0ZkdI/f0qfXWQ2gu8=;
        b=igCmzHbPFPHYJEv+Xi+CoLpSRnLY7rsAX3w+pbGhPPuNcq0v/r4pxViqlInTtT5wy8
         5QHviCR5Vf04nEluS+s2qYvpCvOyJvAnxSyCRpyBcpfIJrCBpnF595b1g2WvSYR8m9jp
         JvdC4kgfkDu/O1RkvxD0f7GiIwIskyjYz/rue0gK3DQKIYxid92+hWMA70Z9vszveMOk
         J3EX8HzQofsPpdVFuQ4reMTW0Q1gHYMInGG/TwMe7W+yeQZurtUHApW6fmDsgvqCq+PN
         fISozQnUlMz4prI++yixTqvOBpQy2DgWxwBaRQ0FmOLHXVFBhpEhf1VnYoko1rso/8a4
         w5OA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531kg8njVm5GuOewsPTeqQeiqsxwB0VQBkwG0dr2um0bPp2lOC3Z
	rvGZbVPw6I2asWS0bq+IZ5I=
X-Google-Smtp-Source: ABdhPJzcOeXm1mJ5oR2/Wjl47gwXf0QHynXdOaCRiIIimGFLVL3xPjppZvjPWR+surpf3YOoc+yjTQ==
X-Received: by 2002:ac8:4641:: with SMTP id f1mr7921641qto.107.1621554541619;
        Thu, 20 May 2021 16:49:01 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:5881:: with SMTP id t1ls1753818qta.5.gmail; Thu, 20 May
 2021 16:49:01 -0700 (PDT)
X-Received: by 2002:ac8:5199:: with SMTP id c25mr8007549qtn.265.1621554541058;
        Thu, 20 May 2021 16:49:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621554541; cv=none;
        d=google.com; s=arc-20160816;
        b=cYWh43EHyXESXOh2a34P/88hGdIEdJ7VAWfZrpWRGW7XI1mv5AwqaiUVAfg42OtuFl
         V0iagQKxtf8ZqtkcTh6s80hKFuqiCZaKR/3Z5/wx43ph8CIOEZGr2r87hj1z9k6pAhBQ
         4yucaJIgbO8IJSvRBvhIRK2by78+1gHfptp2IJfXN321kjhELGyBrv2fvYj4cO/phXbm
         CH2hVfyzXg12pKhd/sB0NZvUFvZ3DqZ6uA7v41uVpDKenBYhWSJu/xN7/usVVUTsHlWt
         z5dcZQlRTXIfTVP6iwM9ZxYtbh7yPneyWmSk+wXEsZ9CvkTvMumr+tFnbhje/hhsVE9V
         BZTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=W/oHK6uiM/KU54w7jTmNHLt6u4pZjZYIv9Ucw6oi9x0=;
        b=bKPuDYZO1BwMzRBasP1dnGGD61XdriCLfb3Ml4O9O2OXvWFEFDYG1nLSUieFq4h1Eo
         Gq4/9PVfuUFd6sNkLG+5GZiwHT/2WEkG/JIq1zrcSxb/8sVD113DoMN/GnLJKpy/sJ9H
         LbDBKnu6o2PcSrqOyRCc7ZP+LucjpjUr4IV8siKNq+oSWtv8tmT4/lChR6B07gheALJo
         qztRSm62ig3azYmtiXvohwd0HO6d0XmaXKSBIE2I0SeW9fdExYBV+OyKHKnF+/5n40t4
         GzcTm9hXPtcjtCWARGZer6RsMQxoFUwsF6AqdM+uqLCCswK+W8qc3DzwWv62q78mliZx
         orbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=a7yQSVv2;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id y24si542816qtm.0.2021.05.20.16.49.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 16:49:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4] helo=[192.168.0.10])
	by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1ljsPS-0002iu-7u; Thu, 20 May 2021 17:48:59 -0600
To: Jeff Kirsher <jkirsher@ixsystems.com>, jdmason@kudzu.us,
 dave.jiang@intel.com, allenbh@gmail.com
Cc: linux-ntb@googlegroups.com, Alexander Motin <mav@ixsystems.com>
References: <20210520222323.104901-1-jkirsher@ixsystems.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <ebfdfe78-67f2-2096-5e89-bd1b65fa819c@deltatee.com>
Date: Thu, 20 May 2021 17:48:56 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210520222323.104901-1-jkirsher@ixsystems.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: mav@ixsystems.com, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, jkirsher@ixsystems.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC] ntb/plx: Add support for PLX hardware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=a7yQSVv2;       spf=pass
 (google.com: domain of logang@deltatee.com designates 204.191.154.188 as
 permitted sender) smtp.mailfrom=logang@deltatee.com
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


Hi Jeff,

I've just done a quick review and found some style issues. Generally the
driver looks pretty good but I didn't dig into too many details.

On 2021-05-20 4:23 p.m., Jeff Kirsher wrote:
> +static const struct file_operations plx_ntb_debugfs_info;
> +static struct dentry *debugfs_dir;
> +static int plx_ntb_mw_set_trans_internal(struct ntb_dev *ntb, int idx);

Kernel style tries to avoid forward declarations unless they are needed
to avoid a mutual recursion (not here). This means the code will always
be in a specific order where we can read the code before it's used and
it also generally forces initialization functions on the bottom. This is
easier to read.


> +static int plx_ntb_init_pci(struct plx_ntb_dev *ndev, struct pci_dev *pdev)
> +{
> +	int rc;
> +
> +	pci_set_drvdata(pdev, ndev);
> +
> +	rc = pci_enable_device(pdev);
> +	if (rc)
> +		goto err_pci_enable;
> +
> +	rc = pci_request_regions(pdev, NTB_NAME);
> +	if (rc)
> +		goto err_pci_regions;
> +
> +	pci_set_master(pdev);
> +
> +	rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
> +	if (rc) {
> +		rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
> +		if (rc)
> +			goto err_dma_mask;
> +		dev_warn(&pdev->dev, "Cannot DMA highmem\n");
> +	}
> +
> +	rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
> +	if (rc) {
> +		rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
> +		if (rc)
> +			goto err_dma_mask;
> +		dev_warn(&pdev->dev, "Cannot DMA consistent highmem\n");
> +	}
> +
> +	ndev->self_mmio = pci_iomap(pdev, 0, 0);
> +	if (!ndev->self_mmio) {
> +		rc = -EIO;
> +		goto err_mmio;
> +	}

I'd recommend using the device managed variants of all of these.
pcim_enable_device(), pcim_iomap(), devm_request_irq(), etc. It really
simplifies the code as the cleanup paths are much easier.


> +module_exit(plx_ntb_pci_driver_exit);
> diff --git a/drivers/ntb/hw/plx/ntb_hw_plx.h b/drivers/ntb/hw/plx/ntb_hw_plx.h
> new file mode 100644
> index 000000000000..4f118432e718
> --- /dev/null
> +++ b/drivers/ntb/hw/plx/ntb_hw_plx.h

We generally do not add header files unless they are shared by multiple
C files. All this code can and should be placed at the top of the C file.
> +#define ntb_ndev(__ntb) container_of(__ntb, struct plx_ntb_dev, ntb)

Although you see this a lot (and I've added my fair share) many kernel
devs prefer these to be open coded. It's much clearer. Also, though, why
the double underscore on ntb?

> +/* Bases of NTx our/peer interface registers */
> +#define PLX_NTX_OUR_BASE(sc)				\
> +	(PLX_NTX_BASE(sc) + ((sc)->link ? PLX_NTX_LNK_OFFSET : 0))
> +#define PLX_NTX_PEER_BASE(sc)				\
> +	(PLX_NTX_BASE(sc) + ((sc)->link ? 0 : PLX_NTX_LNK_OFFSET))
> +
> +/* Read/write NTx our interface registers */
> +#define NTX_READ(sc, reg)				\
> +	readl((sc)->self_mmio + PLX_NTX_OUR_BASE(sc) + (reg))
> +#define NTX_WRITE(val, sc, reg)				\
> +	writel((val), (sc)->self_mmio + PLX_NTX_OUR_BASE(sc) + (reg))>
> +/* Read/write NTx peer interface registers */
> +#define PNTX_READ(sc, reg)				\
> +	readl((sc)->self_mmio + PLX_NTX_PEER_BASE(sc) + (reg))
> +#define PNTX_WRITE(val, sc, reg)			\
> +	writel((val), (sc)->self_mmio + PLX_NTX_PEER_BASE(sc) + (reg))
> +
> +/* Read/write B2B NTx registers */
> +#define BNTX_READ(sc, reg)				\
> +	readl((sc)->mw_info[(sc)->b2b_mw].mw_res,	\
> +	PLX_NTX_BASE(sc) + (reg))
> +#define BNTX_WRITE(val, sc, reg)			\
> +	writel((val), (sc)->mw_info[(sc)->b2b_mw].mw_res + PLX_NTX_BASE(sc) + (reg))

This is quite nasty. I was expecting to just say to open code the
writel's and not define your own. But they apparently hide a giant mess.
There's got to be a better way than nesting all this hidden logic behind
macros. It'd probably be better to pre-calcualate and store a lot of
these base pointers. Then just open code the writel and readls.
> diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
> index 4a02561cfb96..ee39c5e9f274 100644
> --- a/drivers/ntb/ntb_transport.c
> +++ b/drivers/ntb/ntb_transport.c
> @@ -873,6 +873,11 @@ static int ntb_set_mw(struct ntb_transport_ctx *nt, int num_mw,
>  	xlat_size = round_up(size, xlat_align_size);
>  	buff_size = round_up(size, xlat_align);
>  
> +	/* DEBUG code */
> +	dev_info(&pdev->dev, "xlat_size is %lu\n", xlat_size);
> +	dev_info(&pdev->dev, "buff_size is %lu\n", buff_size);
> +	dev_info(&pdev->dev, "size is %llu\n", size);

Please don't add noisy extra debug prints to every ntb-transport user.
If we want to add some dev_dbg() calls that might be acceptable, but
please do it in another patch.

>  	/* No need to re-setup */
>  	if (mw->xlat_size == xlat_size)
>  		return 0;
> @@ -1204,7 +1209,7 @@ static int ntb_transport_init_queue(struct ntb_transport_ctx *nt,
>  	tx_size -= sizeof(struct ntb_rx_info);
>  	qp->rx_info = qp->tx_mw + tx_size;
>  
> -	/* Due to housekeeping, there must be atleast 2 buffs */
> +	/* Due to housekeeping, there must be at least 2 buffs */

Please send in separate patch if you want to cleanup other random code
bits. It shouldn't be hidden within a large new driver patch.

Thanks,

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/ebfdfe78-67f2-2096-5e89-bd1b65fa819c%40deltatee.com.
