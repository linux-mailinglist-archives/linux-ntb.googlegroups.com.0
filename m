Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBSV22DXAKGQECMUKIKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A5A1029C0
	for <lists+linux-ntb@lfdr.de>; Tue, 19 Nov 2019 17:50:20 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id a13sf17121867pfi.23
        for <lists+linux-ntb@lfdr.de>; Tue, 19 Nov 2019 08:50:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574182219; cv=pass;
        d=google.com; s=arc-20160816;
        b=I5peqBOFBCWd82J7jsKZhN6CgiSAuEMiigYj9ZjWaM2mGoM+WxfbN9PhMEKTu+9++0
         C9Vx1jaTRJd9xSK5I4w+qxToiZV/bSWv5QtenLx9Br5Dy3eimfSTswhELzA+wLc/Pvvx
         zs1vI+oRKgzQGTzwSWur8nPFmwsvB6aNNVD2IHHVIKbWaSSCDysYmgof6Ec/7eg5Opze
         urh7ad2+M/bH9eKuz4WrJxksUdC6b7wWiZrS53qQ//LccMGyaB0ICprsKatSA39464Em
         0iMzxF311c8U4R4NRPNILbk2OBlfVG722W0h9c6Z8pan1L4NRhEBF4lvawqvxvOMU+zH
         g64Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=lt83qKPZDPdmcl6iukhGEqjzwHqn08kGNEEZWeSQEoU=;
        b=k+T/fIFVO8sYBRZgHkvTRfIDCfYi2wKU9GwXaWf8sKU7192Jkavuyqfo3Ohh9AELH6
         dAjVcMTOXOVF+pFhG3Gd0yLAhI9apZ2Sf0cGmMC8HyzhoVZi37hzScVMRsNKAxRwSZvZ
         rTTPcS6/2Ieha/2qnVVSBzmhxRb94JVNB6O8mZYJw/i23NJF3DddG1kcQydrtmU4Ib1i
         rLMlwmDSwCxqHLlj0fb6PzCLTHJg8x1fo9W8Yx0/7mw4OOlzevdEVPXgwsZuitmLrFB5
         1BXJW5Lz1rmmDWRTbMOso/g0juHlEDVgiPBFehThepOJED+1xF/QsRPi4JHc6BhzfE/R
         va0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lt83qKPZDPdmcl6iukhGEqjzwHqn08kGNEEZWeSQEoU=;
        b=VIG63MEwyYgYe16ftbXKehuFW4d+Y7sJLAvDN59ZfktmPJBEQRghSwcEa26UBRfSTg
         RmrVIJA2sCvBeGqa/TKxvkKeJYiHacQdxStxdva0d/8w8lPfNFdzzGaVTTVeIRNh8pVK
         9OG3PLdLdjRsBx6RQrUe04RQMdj//8tqu874vqdAb1vtZes14r2F8iMc7+al+uhFuwSz
         D0OlTCjnguHI88SPHQa05uwYn9bMYXVa3z1Pg5YfjAEp+0mNhKfTg+RD5tiTJdQ3/NhS
         LcsrXm5lfdfpgK0LBmbk4gz5n6odWF24di0c4LqRfDhy880wfw3NzE3unjm6AvMomEKW
         6VhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lt83qKPZDPdmcl6iukhGEqjzwHqn08kGNEEZWeSQEoU=;
        b=qO9zmOj8dMf7ZBOm6sTxzJUNhudDkWZUH524rdF2nFZYga97jevoNRolnKMssHaBKV
         tuXQXFr31L61V63tMq3xBfAcWheBDdVS/K6teoMv4kw/rciK2RPfGSi0LfeavJJrZ6fp
         yJPOKFTY2y/xcVDjpbcnxkR9QVldXZKFBwUTLBwSwy7fRhFM17zLV2phWawM3QlbzBxZ
         ZfuMOl/BAFPN3VkgjQAorOHoTIlgvxD/9LH7m0HEz7vVbQR+Rbby71fC/QECVjbds7pT
         +G3fHhRJrzQZCN+2vWlEPpRZldMAn82ONo+YZ9Qnxul2YMSbzMFPIyXI+QZqx1wL0wMh
         ysUg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVLDqLUzI54PnA2Qew39tbmyR4fO9aQlzpyrHqqOSli6aN2+APT
	QAyyT5kIypDd20EbndiIrPQ=
X-Google-Smtp-Source: APXvYqx0b3GwCrOr1fh/79qfg+GOQoytxaDh9rs4W5NNQMQT3xIXcTkRFM5+M0iTINHM58LAYD4Khg==
X-Received: by 2002:a17:90a:c01:: with SMTP id 1mr7830249pjs.37.1574182218997;
        Tue, 19 Nov 2019 08:50:18 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:7888:: with SMTP id q8ls5107525pll.6.gmail; Tue, 19
 Nov 2019 08:50:18 -0800 (PST)
X-Received: by 2002:a17:902:740c:: with SMTP id g12mr34838028pll.140.1574182218451;
        Tue, 19 Nov 2019 08:50:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574182218; cv=none;
        d=google.com; s=arc-20160816;
        b=qKQGqQs+hoRmjOd3mEuRFBquLtYDi4hogrQvdfAX+8py3pSx1gtpP0PoxPgFMaluEl
         F1wrR7DPZ0cfGatMmZHQK3SbI7/OD10WF6jVXmXPHFgAMk4hfElFi/q9/28xqYBjwbs6
         7WvlWrISoDPsigz0mcPOMNbCwHJUlbikXMaD2KTZeWlB0viHt7RdsIYUR292/HLYRQFv
         fhO32odNvouWw/Xb4hDvAKjLnEeOo4oUqJ4JebqWNST44+LY032+jzy9F4EwkhiO8pl1
         xq/thsENHz7nTu7k5IKsL8oAKvaq5plgv8VdRzcTn+QaLx7cLCJWakC1T01aKkGqyios
         R2fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=rdcLck4IDmaRKjq9jprn2LdZ9Jxn74NarXzZAbfvxG0=;
        b=buOBfnKkZ0DZXauSvfs+kXInac3C+vaBOrZbZ2DTVW28EW986KWVewhxZK0dHC10i2
         DndHhU2kgFvsmfG7AxvTH+o4McNrL+LBVdLnbRo3+WCIKptwaNi3ORWKOhJGWYIIElr1
         diy0k+0rf73HayXAwkRP4N8orWcH6sQOk+YMV7in+PwmL82JEkmXgMw7rokq9hZKhonj
         ExojtIqmuw9lgg/XuPaoDDdRWeW4OidSreQ1EdHmk8qkT79Dbuafh8pvGfjvOlDBZCjE
         sle3vQB2sFFq7z1duoSarbuZmywgWGXvVdSrHnLm/HpXDjukAiOWpqQdBl36U7XX6RF5
         QzPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id w63si904057pgd.2.2019.11.19.08.50.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2019 08:50:18 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtp (Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1iX6hg-0003AU-Ba; Tue, 19 Nov 2019 09:50:14 -0700
To: Jiasen Lin <linjiasen@hygon.cn>, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com, jdmason@kudzu.us
Cc: allenbh@gmail.com, dave.jiang@intel.com
References: <1574136121-7941-1-git-send-email-linjiasen@hygon.cn>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <c487042e-471b-dd99-37a6-2119b4115283@deltatee.com>
Date: Tue, 19 Nov 2019 09:50:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574136121-7941-1-git-send-email-linjiasen@hygon.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: dave.jiang@intel.com, allenbh@gmail.com, jdmason@kudzu.us, linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org, linjiasen@hygon.cn
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] NTB: ntb_perf: Fix address err in perf_copy_chunk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of logang@deltatee.com designates 207.54.116.67 as
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



On 2019-11-18 9:02 p.m., Jiasen Lin wrote:
> peer->outbuf is a virtual address which is get by ioremap, it can not
> be converted to a physical address by virt_to_page and page_to_phys.
> This conversion will result in DMA error, because the destination address
> which is converted by page_to_phys is invalid.
> 
> This patch save the MMIO address of NTB BARx in perf_setup_peer_mw,
> and map the BAR space to DMA address after we assign the DMA channel.
> Then fill the destination address of DMA descriptor with this DMA address
> to guarantee that the address of memory write requests fall into
> memory window of NBT BARx with IOMMU enabled and disabled.
> 
> Changes since v1:
>   * Map NTB BARx MMIO address to DMA address after assign the DMA channel,
>     to ensure the destination address in valid. (per suggestion from Logan)
> 
> Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>

Thanks, looks good to me except for the one nit below.

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

> ---
>  drivers/ntb/test/ntb_perf.c | 69 ++++++++++++++++++++++++++++++++++++---------
>  1 file changed, 56 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
> index e9b7c2d..dfca7e1 100644
> --- a/drivers/ntb/test/ntb_perf.c
> +++ b/drivers/ntb/test/ntb_perf.c
> @@ -149,7 +149,8 @@ struct perf_peer {
>  	u64 outbuf_xlat;
>  	resource_size_t outbuf_size;
>  	void __iomem *outbuf;
> -
> +	phys_addr_t out_phys_addr;
> +	dma_addr_t dma_dst_addr;
>  	/* Inbound MW params */
>  	dma_addr_t inbuf_xlat;
>  	resource_size_t inbuf_size;
> @@ -776,7 +777,8 @@ static void perf_dma_copy_callback(void *data)
>  }
>  
>  static int perf_copy_chunk(struct perf_thread *pthr,
> -			   void __iomem *dst, void *src, size_t len)
> +			   void __iomem *dst, void *src, size_t len,
> +			   dma_addr_t dst_dma_addr)
>  {
>  	struct dma_async_tx_descriptor *tx;
>  	struct dmaengine_unmap_data *unmap;
> @@ -807,8 +809,7 @@ static int perf_copy_chunk(struct perf_thread *pthr,
>  	}
>  	unmap->to_cnt = 1;
>  
> -	unmap->addr[1] = dma_map_page(dma_dev, virt_to_page(dst),
> -		offset_in_page(dst), len, DMA_FROM_DEVICE);
> +	unmap->addr[1] = dst_dma_addr;
>  	if (dma_mapping_error(dma_dev, unmap->addr[1])) {
>  		ret = -EIO;
>  		goto err_free_resource;
> @@ -865,6 +866,7 @@ static int perf_init_test(struct perf_thread *pthr)
>  {
>  	struct perf_ctx *perf = pthr->perf;
>  	dma_cap_mask_t dma_mask;
> +	struct perf_peer *peer = pthr->perf->test_peer;
>  
>  	pthr->src = kmalloc_node(perf->test_peer->outbuf_size, GFP_KERNEL,
>  				 dev_to_node(&perf->ntb->dev));
> @@ -882,15 +884,33 @@ static int perf_init_test(struct perf_thread *pthr)
>  	if (!pthr->dma_chan) {
>  		dev_err(&perf->ntb->dev, "%d: Failed to get DMA channel\n",
>  			pthr->tidx);
> -		atomic_dec(&perf->tsync);
> -		wake_up(&perf->twait);
> -		kfree(pthr->src);
> -		return -ENODEV;
> +		goto err_free;
> +	}
> +	peer->dma_dst_addr =
> +		dma_map_resource(pthr->dma_chan->device->dev,
> +				 peer->out_phys_addr, peer->outbuf_size,
> +				 DMA_FROM_DEVICE, 0);
> +	if (dma_mapping_error(pthr->dma_chan->device->dev,
> +			      peer->dma_dst_addr)) {
> +		dev_err(pthr->dma_chan->device->dev, "%d: Failed to map DMA addr\n",
> +			pthr->tidx);
> +		peer->dma_dst_addr = 0;
> +		dma_release_channel(pthr->dma_chan);
> +		goto err_free;
>  	}
> +	dev_dbg(pthr->dma_chan->device->dev, "%d: Map MMIO %pa to DMA addr %pad\n",
> +			pthr->tidx,
> +			&peer->out_phys_addr,
> +			&peer->dma_dst_addr);
>  
>  	atomic_set(&pthr->dma_sync, 0);
> -
>  	return 0;
> +
> +err_free:
> +	atomic_dec(&perf->tsync);
> +	wake_up(&perf->twait);
> +	kfree(pthr->src);
> +	return -ENODEV;
>  }
>  
>  static int perf_run_test(struct perf_thread *pthr)
> @@ -901,6 +921,8 @@ static int perf_run_test(struct perf_thread *pthr)
>  	u64 total_size, chunk_size;
>  	void *flt_src;
>  	int ret = 0;
> +	dma_addr_t flt_dma_addr;
> +	dma_addr_t bnd_dma_addr;
>  
>  	total_size = 1ULL << total_order;
>  	chunk_size = 1ULL << chunk_order;
> @@ -910,11 +932,15 @@ static int perf_run_test(struct perf_thread *pthr)
>  	bnd_dst = peer->outbuf + peer->outbuf_size;
>  	flt_dst = peer->outbuf;
>  
> +	flt_dma_addr = peer->dma_dst_addr;
> +	bnd_dma_addr = peer->dma_dst_addr + peer->outbuf_size;
> +
>  	pthr->duration = ktime_get();
>  
>  	/* Copied field is cleared on test launch stage */
>  	while (pthr->copied < total_size) {
> -		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size);
> +		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size,
> +				flt_dma_addr);
>  		if (ret) {
>  			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
>  				pthr->tidx, ret);
> @@ -925,8 +951,15 @@ static int perf_run_test(struct perf_thread *pthr)
>  
>  		flt_dst += chunk_size;
>  		flt_src += chunk_size;
> -		if (flt_dst >= bnd_dst || flt_dst < peer->outbuf) {
> +		flt_dma_addr += chunk_size;
> +
> +		if (flt_dst >= bnd_dst ||
> +		    flt_dst < peer->outbuf ||
> +		    flt_dma_addr >= bnd_dma_addr ||

Nit: I'm pretty sure the check against bnd_dma_addr is redundant with
the check on bnd_dst.

> +		    flt_dma_addr < peer->dma_dst_addr) {
> +
>  			flt_dst = peer->outbuf;
> +			flt_dma_addr = peer->dma_dst_addr;
>  			flt_src = pthr->src;
>  		}
>  
> @@ -978,8 +1011,13 @@ static void perf_clear_test(struct perf_thread *pthr)
>  	 * We call it anyway just to be sure of the transfers completion.
>  	 */
>  	(void)dmaengine_terminate_sync(pthr->dma_chan);
> -
> -	dma_release_channel(pthr->dma_chan);
> +	if (pthr->perf->test_peer->dma_dst_addr)
> +		dma_unmap_resource(pthr->dma_chan->device->dev,
> +				   pthr->perf->test_peer->dma_dst_addr,
> +				   pthr->perf->test_peer->outbuf_size,
> +				   DMA_FROM_DEVICE, 0);
> +	if (pthr->dma_chan)
> +		dma_release_channel(pthr->dma_chan);
>  
>  no_dma_notify:
>  	atomic_dec(&perf->tsync);
> @@ -1195,6 +1233,9 @@ static ssize_t perf_dbgfs_read_info(struct file *filep, char __user *ubuf,
>  			"\tOut buffer addr 0x%pK\n", peer->outbuf);
>  
>  		pos += scnprintf(buf + pos, buf_size - pos,
> +			"\tOut buff phys addr %pa[p]\n", &peer->out_phys_addr);
> +
> +		pos += scnprintf(buf + pos, buf_size - pos,
>  			"\tOut buffer size %pa\n", &peer->outbuf_size);
>  
>  		pos += scnprintf(buf + pos, buf_size - pos,
> @@ -1388,6 +1429,8 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
>  	if (!peer->outbuf)
>  		return -ENOMEM;
>  
> +	peer->out_phys_addr = phys_addr;
> +
>  	if (max_mw_size && peer->outbuf_size > max_mw_size) {
>  		peer->outbuf_size = max_mw_size;
>  		dev_warn(&peer->perf->ntb->dev,
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/c487042e-471b-dd99-37a6-2119b4115283%40deltatee.com.
