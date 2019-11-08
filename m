Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBKOAS3XAKGQEPF5R4VQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4ABF51F6
	for <lists+linux-ntb@lfdr.de>; Fri,  8 Nov 2019 18:04:43 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id w22sf5215648pgj.18
        for <lists+linux-ntb@lfdr.de>; Fri, 08 Nov 2019 09:04:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573232681; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vi7J7IBKf25QE5l2SoNE4IuFV1uOBjCH2e5dXDbL/8EnW6qAMGuqGwed2AAPSii3UN
         Abv1bV7fDxjEOcsFsMwkZz5uzw+3PFppoWWPI4QwpzBH76WH5wOHcJnCtIV0D4mwFkEi
         kZ8JC0iom4mJ4IDMqR8m7NRpujxlgGI1MPiFCA3D6lGQ9QAS7S0iPuHGDIWtX0/fiMnf
         EqqHU/xuMPXsoLyRGkKCN+dfPnRy38Q9yV89x/eGsE0jmyt10iOYFk4GSY7aCPB5XUx5
         wPT9XSIkapps6ODvIKIr/xsVDpNasHICgEJlSwhU/0uUGmqqNoNbOWGdI/MHdmwO/1To
         T6eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=afSEvt7yYfP7yIJ/gE202KxQCM+TLCSU5nh45WCk2xQ=;
        b=a7O1+g59pgpFiLTSjKL9+20ApwmxfQwwmhpBqolReryEbN7nt5dwpgh+8RJR18e0IF
         6JM8AfF7lEI2qpToR6ph/SgXUFJ0jhe0y6g3ebrSzP15l/dq3pGU+xeeS1ejWgsit/iN
         0qWCmsoZyd3hhJhcuNPv7wsajpSfRdLyvrsLPtYZxHK/8VYS9Kn/v5cBhmfq/hOOOmeR
         xX8BCBwKIn/mdGEZDEKrXYkfWJ6YlMDfSTKWzbZRck6t194Nx1ePK1pUcr9uionIXJdJ
         Vod5nHw9XoE5jgxyrYAVxF3Ec+WwYdE2anRoFTn0aNZfGandQfj2mZ0Mn4K2hGQYwCrE
         xZkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=afSEvt7yYfP7yIJ/gE202KxQCM+TLCSU5nh45WCk2xQ=;
        b=c/lvf+kiunva8y0UrQ+ZLNvXTPOzSLMnjmNv0bMFH69awtBfdlSQuxt6qQ8VdMRbR9
         oBJSIcHgjyOdCf8EIGlfVwq4LYA5GgSiLm0fPiQbBbLfOVHH5lNjzAtH++o0o7RLxLc/
         PO65Ds8TKTITal5FUR9SW2WIfYFQMoetCHjsauxvV8Wj/QzYoQkfBiFtnwanBKyBVTZ4
         FOEp0gMTAJuJK4v4/hfCqftaJbd5K4o9YAbWbp3W86WqYLeVACj6VngjZxyEFQjqnXBd
         xI+roUjwVhksZZw3a98i8/B8R4cWLHa1aB8dMeU1OniUnNz4ZumP1iyZWbyPHK1a74aT
         2eXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=afSEvt7yYfP7yIJ/gE202KxQCM+TLCSU5nh45WCk2xQ=;
        b=C8ZV8iMV30mZbohX1xu0ALlS5xKdex9YELIHmMp5mFta5XKWoN9zmWaTyoB4vrJZ6S
         xQYwhin+U6HdR6iE54X5+UokDcKSE3jKR4J5+GETw/lD2/DCF9gR251hqVuEaLaQ7SXZ
         58ICfgUWdbco1sJ+c6lhOPLzyAVSUIMOOMulNF2Q2IysIAj77FxFgwFPN9Mo1r8S/V6g
         neIwP0BNkZUByYWURpAcZTeqs6tWCqRysZJ9aIvKtZgtG74XknBQ5Er53Jcwj4VYD9Ph
         joNvrwERnsbfRpwNuiVWHML3dG1lRQb5AIzT9fENGw1pZ6ayr/V3XHFQgEa4ZZJnOeKO
         rfXw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXTZ92QL5wbLUbIv1f08t19eqJObLr304783y9lr+Ll6GXxdfjQ
	fpX0gOMW+mJK00LvwK+rcgY=
X-Google-Smtp-Source: APXvYqxexXpH6jmmtsoKM3eSJ5xxhuN6g+DfS5yoqJ/SrHOL0Ye4rs7CRuiyBKGvCq1mZILK00srSA==
X-Received: by 2002:a17:902:8690:: with SMTP id g16mr12225208plo.194.1573232681580;
        Fri, 08 Nov 2019 09:04:41 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:db48:: with SMTP id u8ls2587508pjx.0.canary-gmail;
 Fri, 08 Nov 2019 09:04:41 -0800 (PST)
X-Received: by 2002:a17:90a:1a56:: with SMTP id 22mr15275905pjl.100.1573232681122;
        Fri, 08 Nov 2019 09:04:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573232681; cv=none;
        d=google.com; s=arc-20160816;
        b=VkJKNsrKM9i9MuwxqjsmDcI49lgZjM1qgePudYPoUE+mfizdXBMX1rwv69UPQfvf8N
         sv3TukVL34HNYoos7I6nqNf2fuUoeFbp6iixVQn/1/ncZ9n4svGb4VS9WERPWzzgJmfL
         tcJLwF3BjbSzc8/XAJ3O3FWXhmah4YTDfPWqvNNkRyKRQxveHaNiPFpCHA6qwHRHEeYP
         VoEMgxV3cJ7MjsUKeMNRHIERSovnO3MLOgwpeLMy693lUL47+w/J40yPZfejJQ3gZqmF
         fxxSDByqFmslxYpJw63KPMG19ifPM7JRL0z2xW3248w5Zp3huytml3nlQoUY9UuazXhP
         iH2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=cgH3aozGm4E9aIHiSFohm2d0YvfWAi5w8+jpCri6jVg=;
        b=U8ChBZVK+jxDEDQQI1fCxlZpQgXyaA0RKDU8ldCyZOIf6shz2YhFQXYtuoSeTgAnEa
         EeR50dptTt4J91nRwDMF2GdbJdlhXx7PFg6TC6mG8u9lfCjTbcjo+I88F71QPPAk55/U
         ib4dI2ldEeAL7i4zfXdbJ1kY4Qd6H9tF56Ews6EZ6obhxq4va4jxnt7Hmbz3vb0OHqMi
         rsFZsp0VXy3Rvz1aGxjvP13Ii6kMbBRGvZ0o5i3SIlStNl+XDFea6IkdiGMFS4lDFfFb
         6X+fq9+WNoZRvZXYIKFRpLhiPOzT38cwcHrSM1kDVaN5a9NostQwtKh/p4xfkmqUT7oo
         Cqmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id t71si352585pjb.2.2019.11.08.09.04.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Nov 2019 09:04:41 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230] helo=[192.168.11.155])
	by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <logang@deltatee.com>)
	id 1iT7ga-0008P8-D6; Fri, 08 Nov 2019 10:04:37 -0700
To: Jiasen Lin <linjiasen@hygon.cn>, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com, jdmason@kudzu.us
Cc: allenbh@gmail.com, dave.jiang@intel.com
References: <1573097913-104555-1-git-send-email-linjiasen@hygon.cn>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <7ea7ef5d-7e46-396a-8d70-2c6c333a4508@deltatee.com>
Date: Fri, 8 Nov 2019 10:04:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1573097913-104555-1-git-send-email-linjiasen@hygon.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: dave.jiang@intel.com, allenbh@gmail.com, jdmason@kudzu.us, linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org, linjiasen@hygon.cn
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] NTB: ntb_perf: Fix address err in perf_copy_chunk
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
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



On 2019-11-06 8:38 p.m., Jiasen Lin wrote:
> peer->outbuf is a virtual address which is get by ioremap, it can not
> be converted to a physical address by virt_to_page and page_to_phys.
> This conversion will result in DMA error, because the destination address
> which is converted by page_to_phys is invalid.

Hmm, yes, ntb_perf is obviously wrong. I never noticed this, how did
this ever work?

> We Save the physical address in perf_setup_peer_mw, it is MMIO address
> of NTB BARx. Then fill the destination address of DMA descriptor with
> this physical address to guarantee that the address of memory write
> requests fall in memory window of NBT BARx.

Using the physical address directly is also wrong and will not work in
the presence of an IOMMU. You should use dma_map_resource() for this.
See what was done in ntb_transport[1].

Thanks,

Logan

[1] c59666bb32b9 ("NTB: ntb_transport: Ensure the destination buffer is
mapped for TX DMA")

> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
> ---
>  drivers/ntb/test/ntb_perf.c | 28 +++++++++++++++++++++++-----
>  1 file changed, 23 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
> index e9b7c2d..1c2fd1a 100644
> --- a/drivers/ntb/test/ntb_perf.c
> +++ b/drivers/ntb/test/ntb_perf.c
> @@ -149,6 +149,7 @@ struct perf_peer {
>  	u64 outbuf_xlat;
>  	resource_size_t outbuf_size;
>  	void __iomem *outbuf;
> +	phys_addr_t out_phys_addr;
>  
>  	/* Inbound MW params */
>  	dma_addr_t inbuf_xlat;
> @@ -776,7 +777,8 @@ static void perf_dma_copy_callback(void *data)
>  }
>  
>  static int perf_copy_chunk(struct perf_thread *pthr,
> -			   void __iomem *dst, void *src, size_t len)
> +			   void __iomem *dst, void *src, size_t len,
> +			   phys_addr_t dst_phys_addr)
>  {
>  	struct dma_async_tx_descriptor *tx;
>  	struct dmaengine_unmap_data *unmap;
> @@ -807,8 +809,7 @@ static int perf_copy_chunk(struct perf_thread *pthr,
>  	}
>  	unmap->to_cnt = 1;
>  
> -	unmap->addr[1] = dma_map_page(dma_dev, virt_to_page(dst),
> -		offset_in_page(dst), len, DMA_FROM_DEVICE);
> +	unmap->addr[1] = dst_phys_addr;
>  	if (dma_mapping_error(dma_dev, unmap->addr[1])) {
>  		ret = -EIO;
>  		goto err_free_resource;
> @@ -901,6 +902,8 @@ static int perf_run_test(struct perf_thread *pthr)
>  	u64 total_size, chunk_size;
>  	void *flt_src;
>  	int ret = 0;
> +	phys_addr_t flt_phys_addr;
> +	phys_addr_t bnd_phys_addr;
>  
>  	total_size = 1ULL << total_order;
>  	chunk_size = 1ULL << chunk_order;
> @@ -909,12 +912,15 @@ static int perf_run_test(struct perf_thread *pthr)
>  	flt_src = pthr->src;
>  	bnd_dst = peer->outbuf + peer->outbuf_size;
>  	flt_dst = peer->outbuf;
> +	bnd_phys_addr = peer->out_phys_addr + peer->outbuf_size;
> +	flt_phys_addr = peer->out_phys_addr;
>  
>  	pthr->duration = ktime_get();
>  
>  	/* Copied field is cleared on test launch stage */
>  	while (pthr->copied < total_size) {
> -		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size);
> +		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size,
> +				flt_phys_addr);
>  		if (ret) {
>  			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
>  				pthr->tidx, ret);
> @@ -925,8 +931,15 @@ static int perf_run_test(struct perf_thread *pthr)
>  
>  		flt_dst += chunk_size;
>  		flt_src += chunk_size;
> -		if (flt_dst >= bnd_dst || flt_dst < peer->outbuf) {
> +		flt_phys_addr += chunk_size;
> +
> +		if (flt_dst >= bnd_dst ||
> +		    flt_dst < peer->outbuf ||
> +		    flt_phys_addr >= bnd_phys_addr ||
> +		    flt_phys_addr < peer->out_phys_addr) {
> +
>  			flt_dst = peer->outbuf;
> +			flt_phys_addr = peer->out_phys_addr;
>  			flt_src = pthr->src;
>  		}
>  
> @@ -1195,6 +1208,9 @@ static ssize_t perf_dbgfs_read_info(struct file *filep, char __user *ubuf,
>  			"\tOut buffer addr 0x%pK\n", peer->outbuf);
>  
>  		pos += scnprintf(buf + pos, buf_size - pos,
> +			"\tOut buff phys addr %pa[p]\n", &peer->out_phys_addr);
> +
> +		pos += scnprintf(buf + pos, buf_size - pos,
>  			"\tOut buffer size %pa\n", &peer->outbuf_size);
>  
>  		pos += scnprintf(buf + pos, buf_size - pos,
> @@ -1388,6 +1404,8 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/7ea7ef5d-7e46-396a-8d70-2c6c333a4508%40deltatee.com.
