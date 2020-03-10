Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBQEJUDZQKGQETRHGYHA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D923180A3A
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 22:21:06 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id m8sf241030ywd.11
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 14:21:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583875265; cv=pass;
        d=google.com; s=arc-20160816;
        b=nRXI4tI+2iXBVtNvgW+UJ5TVXML5qDIdleHVkCOlGT9Gs/8sukPhw7nc++MBsPj4ot
         TpcYgFbFPrxEiw2FyRO8mzZfN2DhlUdLH7KSJyLoORNRBEscF08Z+7galWa5K9E4ju/e
         6TBVh68BpmLmVBz4NpCcR84b7cME7CQHjJI8aD2UNy/8u30etRdNUO6jOhu30eeJ28h9
         36mjGHBurIPCoue4BSY4mUfXZnV9NSAhx2GgbQsmiSnt4BnWy07+d6wl7uwlUlSJM02t
         wkX4uXw20n+5rxkWiQu6sDDCEE0kVHcb8UO3zzOFLWndqSaLqwsePqT1FYlpdXSJ7dFG
         Q3iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=wgoBaQ19iUdsh2/fSDG8CL0ejgPhaF/MjnF5N5y6a9A=;
        b=ZemfU9WZOGXLPbuMDC3sjgZKj32vUPsWd4VkjpM9KniD8SOwk67IMD2X440ymh0mQ6
         KLErSnS1HwUpJAM9KKWqHJC2E39Zhr26wHFJQH0WIEfEPAEqD2NpUNXpIN49kytbY3jr
         BtgNRX7JRiQaXTC5RJQGC+32PVqfok3HBL2sOcb/A7HVJyZKL4indXT0fIik8t9lXGQs
         gioxB6//PkqbJNl5vk8F9MxWMdoHds4Wj4FIAn2soYsUcZKT+BScZ9I8KfcmHuXyqju4
         ehGlhmVnLxvMGp5mM5vdB4t/jUZbecIKaS1W3RjlL1N19h/DEl/dnd7swYOcMevqoME2
         uTLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wgoBaQ19iUdsh2/fSDG8CL0ejgPhaF/MjnF5N5y6a9A=;
        b=I6eMwTabq87vAuPZg8zGE+VQsuHkpi5B+XXNYZwVN8xBZaS/h65JQvGl/T9v2D6MSt
         SQzKQaO9heFdSYvNZi7BCy4m4okHWTLbeBAqBbtZRxMf4zF/GW5gfxQSIvgf96QtorEH
         +k9vGZOOPby8FcbpwXISSOzCnFmzjW2rtHzuUsWGSZ8q3u1ampd5byk1AjAq6TV6As53
         CDnKeKRrLFg7t4qLn9/1nZAX1NGbPhKlEzC/S4l2x/otf+cOBpny7vy8FFz4iXeOo8zD
         8QTesEy3wamL9JZ2q61803CFiBqBq1cp1bzwHLoNHG6KjTsKS9he0uArBqIdLnVLggTT
         gNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wgoBaQ19iUdsh2/fSDG8CL0ejgPhaF/MjnF5N5y6a9A=;
        b=jRPumbwJXUxAfx8CWji7FU7ggIL4Z4n2fCqVfXQ4Hy6RTzhSH42r1kXE29j1fgS4wq
         pIGbi+f7Fo76gOLK76qA0jzWivmPKply1iMAw83jPeZQ0bnLUxJXDWo9/bilgzQG422/
         ipd7aN3dcGiA7i3CAiH7u36euZuH2/e+fLgyNuGaLR0BCgiTD1H9rZTEsK+c7PwFlabB
         2NVJP6u+/0QjUHAV6Y5h9rOdPeWE2nfTBWNlxQmvDWqQ3+qIcY8cKwHhbvcMoyyR4Ikw
         NfbWKybEQX++84KtU57EZRcXIR+IWzgVnjaDpc4Di14epARIeySY0f9q5dMWxWIt0IZ4
         +new==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ3gmC/tA1Ft/+qFLn3CdeCfLSLV+MpR2YvMHlsm2RDovgMrA8KG
	Ln5rT43SnL8RvwUJLGBu6aA=
X-Google-Smtp-Source: ADFU+vvmGqzP0LfnGtK0xTAEZ5q5VDwQuP449spZn6GhsFfznMiRkpXEVj8NsqzWlB5oKjLNyWnojg==
X-Received: by 2002:a81:a456:: with SMTP id b83mr15165975ywh.166.1583875265027;
        Tue, 10 Mar 2020 14:21:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:5789:: with SMTP id l131ls4020376ybb.9.gmail; Tue, 10
 Mar 2020 14:21:04 -0700 (PDT)
X-Received: by 2002:a25:3f43:: with SMTP id m64mr26306857yba.217.1583875264523;
        Tue, 10 Mar 2020 14:21:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583875264; cv=none;
        d=google.com; s=arc-20160816;
        b=mUIpF3loPkx/dTvnumcOtTJvp5pD6LsiitgedH4x4GQXFb8Ximnnb+egmLaWyBL8bw
         J/7I9cpxvfY+yMFgn4W6YGHwN5v9vQLazPLpBCE2sS5kGxYm6v4EuymuLKcJdZhEOmrq
         MkUIm6Y1ePYfRQ8VcoJBor/wsxWrerCnCXfa/uvJTiIoIxyOrtMV9+ws3shoL9gSn0/u
         k6kCqTRy2iFDcaOr3UUUCNqV4FSawFijFa5/q4ufZtfuLuSmCBdW/xohojrdpX4ZUN8x
         /qdDKcg4gd4VPb7cO9XZyEarWUFSpoLO7TOu7g5gMY0LkWFJayq2sGdE7h8+Vp2oWlFA
         ubLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=EamQKgWrw7melBHCFNxNkNYRUYyseHvljE7jMXfZWSw=;
        b=PPE7rA+xOkkxB9j/iPrERkKi3nvIwv1ghiJwVRAUkdAwSgdJiBuT5kfAnwEkdYluBJ
         tKfRFoHySwfP4TugIZTBcH/SeCtD1mLVBkqPSjdbrQJqUdC2+9sZN1l8blysw/lktrVA
         Bu3rcb884KhMgMeZb63wLgNuOBWtK2Gjgg47oeR8G8bIkuuCi9svJj5HcTvkBcg1fnVE
         BTebYHbcP/7fdVZpu7kmJWJ15aCXDD3E6vGd0W3m+xFKQVLrf0Uihky86gOW/8OKKq6N
         DRDiOxbEhKbBzTcpYGOP/YvwrS4Fws6UYJ4DsLMApEp6rFtxSFkuPA4P/HlXs0u58SvW
         OAMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id e124si215537ywb.4.2020.03.10.14.21.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 14:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtp (Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1jBmJB-0001Qz-EH; Tue, 10 Mar 2020 15:21:02 -0600
To: Sanjay R Mehta <sanju.mehta@amd.com>, jdmason@kudzu.us,
 dave.jiang@intel.com, allenbh@gmail.com, arindam.nath@amd.com,
 Shyam-sundar.S-k@amd.com
Cc: linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
 <1583873694-19151-2-git-send-email-sanju.mehta@amd.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <e700a5f6-1929-0d65-b204-c5bfde58f5f7@deltatee.com>
Date: Tue, 10 Mar 2020 15:21:00 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583873694-19151-2-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, Shyam-sundar.S-k@amd.com, arindam.nath@amd.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, sanju.mehta@amd.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/5] ntb_perf: refactor code for CPU and DMA transfers
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



On 2020-03-10 2:54 p.m., Sanjay R Mehta wrote:
> From: Arindam Nath <arindam.nath@amd.com>
> 
> This patch creates separate function to handle CPU
> and DMA transfers. Since CPU transfers use memcopy
> and DMA transfers use dmaengine APIs, these changes
> not only allow logical separation between the two,
> but also allows someone to clearly see the difference
> in the way the two are handled.
> 
> In the case of DMA, we DMA from system memory to the
> memory window(MW) of NTB, which is a MMIO region, we
> should not use dma_map_page() for mapping MW. The
> correct way to map a MMIO region is to use
> dma_map_resource(), so the code is modified
> accordingly.
> 
> dma_map_resource() expects physical address of the
> region to be mapped for DMA, we add a new field,
> outbuf_phys_addr, to struct perf_peer, and also
> another field, outbuf_dma_addr, to store the
> corresponding mapped address returned by the API.
> 
> Since the MW is contiguous, rather than mapping
> chunk-by-chunk, we map the entire MW before the
> actual DMA transfer happens. Then for each chunk,
> we simply pass offset into the mapped region and
> DMA to that region. Then later, we unmap the MW
> during perf_clear_test().
> 
> The above means that now we need to have different
> function parameters to deal with in the case of
> CPU and DMA transfers. In the case of CPU transfers,
> we simply need the CPU virtual addresses for memcopy,
> but in the case of DMA, we need dma_addr_t, which
> will be different from CPU physical address depending
> on whether IOMMU is enabled or not. Thus we now
> have two separate functions, perf_copy_chunk_cpu(),
> and perf_copy_chunk_dma() to take care of above
> consideration.
> 
> Signed-off-by: Arindam Nath <arindam.nath@amd.com>
> Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
> ---
>  drivers/ntb/test/ntb_perf.c | 141 +++++++++++++++++++++++++++++++++-----------
>  1 file changed, 105 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
> index e9b7c2d..6d16628 100644
> --- a/drivers/ntb/test/ntb_perf.c
> +++ b/drivers/ntb/test/ntb_perf.c
> @@ -149,6 +149,8 @@ struct perf_peer {
>  	u64 outbuf_xlat;
>  	resource_size_t outbuf_size;
>  	void __iomem *outbuf;
> +	phys_addr_t outbuf_phys_addr;
> +	dma_addr_t outbuf_dma_addr;
>  
>  	/* Inbound MW params */
>  	dma_addr_t inbuf_xlat;
> @@ -775,26 +777,24 @@ static void perf_dma_copy_callback(void *data)
>  	wake_up(&pthr->dma_wait);
>  }
>  
> -static int perf_copy_chunk(struct perf_thread *pthr,
> -			   void __iomem *dst, void *src, size_t len)
> +static int perf_copy_chunk_cpu(struct perf_thread *pthr,
> +			       void __iomem *dst, void *src, size_t len)
> +{
> +	memcpy_toio(dst, src, len);
> +
> +	return likely(atomic_read(&pthr->perf->tsync) > 0) ? 0 : -EINTR;
> +}
> +
> +static int perf_copy_chunk_dma(struct perf_thread *pthr,
> +			       dma_addr_t dst, void *src, size_t len)
>  {
>  	struct dma_async_tx_descriptor *tx;
>  	struct dmaengine_unmap_data *unmap;
>  	struct device *dma_dev;
>  	int try = 0, ret = 0;
>  
> -	if (!use_dma) {
> -		memcpy_toio(dst, src, len);
> -		goto ret_check_tsync;
> -	}
> -
>  	dma_dev = pthr->dma_chan->device->dev;
> -
> -	if (!is_dma_copy_aligned(pthr->dma_chan->device, offset_in_page(src),
> -				 offset_in_page(dst), len))
> -		return -EIO;

Can you please split this patch into multiple patches? It is hard to
review and part of the reason this code is such a mess is because we
merged large patches with a bunch of different changes rolled into one,
many of which didn't get sufficient reviewer attention.

Patches that refactor things shouldn't be making functional changes
(like adding dma_map_resources()).


> -static int perf_run_test(struct perf_thread *pthr)
> +static int perf_run_test_cpu(struct perf_thread *pthr)
>  {
>  	struct perf_peer *peer = pthr->perf->test_peer;
>  	struct perf_ctx *perf = pthr->perf;
> @@ -914,7 +903,7 @@ static int perf_run_test(struct perf_thread *pthr)
>  
>  	/* Copied field is cleared on test launch stage */
>  	while (pthr->copied < total_size) {
> -		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size);
> +		ret = perf_copy_chunk_cpu(pthr, flt_dst, flt_src, chunk_size);
>  		if (ret) {
>  			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
>  				pthr->tidx, ret);
> @@ -937,6 +926,74 @@ static int perf_run_test(struct perf_thread *pthr)
>  	return 0;
>  }
>  
> +static int perf_run_test_dma(struct perf_thread *pthr)
> +{
> +	struct perf_peer *peer = pthr->perf->test_peer;
> +	struct perf_ctx *perf = pthr->perf;
> +	struct device *dma_dev;
> +	dma_addr_t flt_dst, bnd_dst;
> +	u64 total_size, chunk_size;
> +	void *flt_src;
> +	int ret = 0;
> +
> +	total_size = 1ULL << total_order;
> +	chunk_size = 1ULL << chunk_order;
> +	chunk_size = min_t(u64, peer->outbuf_size, chunk_size);
> +
> +	/* Map MW for DMA */
> +	dma_dev = pthr->dma_chan->device->dev;
> +	peer->outbuf_dma_addr = dma_map_resource(dma_dev,
> +						 peer->outbuf_phys_addr,
> +						 peer->outbuf_size,
> +						 DMA_FROM_DEVICE, 0);
> +	if (dma_mapping_error(dma_dev, peer->outbuf_dma_addr)) {
> +		dma_unmap_resource(dma_dev, peer->outbuf_dma_addr,
> +				   peer->outbuf_size, DMA_FROM_DEVICE, 0);
> +		return -EIO;
> +	}
> +
> +	flt_src = pthr->src;
> +	bnd_dst = peer->outbuf_dma_addr + peer->outbuf_size;
> +	flt_dst = peer->outbuf_dma_addr;
> +
> +	pthr->duration = ktime_get();
> +	/* Copied field is cleared on test launch stage */
> +	while (pthr->copied < total_size) {
> +		ret = perf_copy_chunk_dma(pthr, flt_dst, flt_src, chunk_size);
> +		if (ret) {
> +			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
> +				pthr->tidx, ret);
> +			return ret;
> +		}
> +

Honestly, this doesn't seem like a good approach to me. Duplicating the
majority of the perf_run_test() function is making the code more
complicated and harder to maintain.

You should be able to just selectively call dma_map_resources() in
perf_run_test(), or even in perf_setup_peer_mw() without needing to add
so much extra duplicate code.

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/e700a5f6-1929-0d65-b204-c5bfde58f5f7%40deltatee.com.
