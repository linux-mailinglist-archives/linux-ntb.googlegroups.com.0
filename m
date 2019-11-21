Return-Path: <linux-ntb+bncBAABBEMA3DXAKGQEJLSTGJI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB461048D4
	for <lists+linux-ntb@lfdr.de>; Thu, 21 Nov 2019 04:10:11 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id y18sf463700uaq.2
        for <lists+linux-ntb@lfdr.de>; Wed, 20 Nov 2019 19:10:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574305810; cv=pass;
        d=google.com; s=arc-20160816;
        b=dW9+A++2oUBpeQwSilzocd6is8scrhgCI/aiyqiDQMap+xg/MFnUU2+oFxnybnTnrZ
         AGwdHPoi6xY8nbApWhKUH3F3JXyaIaINKNTfa/DAIpF3RCI4CjCLYyTs71fUL4bZfwJJ
         6GSmWgNNk1Ddbe86HA0WLv8NSd7srbdN68oz84/GIKQKkbGBClLzhGgV120UjaWvLcls
         rRYj1/mvk1Bzdrh071VX0C3IZ/oEBla9Tex2HIZOVitHAvAMtCrxh1klDHtVlygRgRNm
         PxxwhqELWzuqCpJ+dZj7c7px3cpNgvQLgt46QUDMpYRpv4pNhtOjnji7BM7E9Jj+nC9X
         MPWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=zb6lf3LVwWGNe4q1Ac4ctig0IWotlyjfxiXWNPjElh4=;
        b=q3K8/DZJZ4h/p7Wke9OUTuNmGsjBgaUo20TmyhQeL1UMdiCLZ5tVPnN7IY+pqzgXQW
         ZgElnwM618nQxTAsxo1BC5JxRJvWJ4kDB9eovMAbsh4q87v6ETsOUGEAVR++fDsF1Ghx
         3EUJozbyUTI1vwlBm5+Sj7DA7m6/v1A9Bg+aFc4tcjI0KFuLEp74QNADcdSbZPIh7Qz1
         wzn1ilNV6j7pcGzmYHyNm4jeXjHmscW+yGmK2nzUmnP80j0g1O9uz3qPAhnXy2P1O2pG
         E0Nj432chKjn1CD7HZcuQGanH2iJFHVlmEtq4mfMv2r/HJkOZnqWCf5LpUSfe+r3A0SV
         JkAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zb6lf3LVwWGNe4q1Ac4ctig0IWotlyjfxiXWNPjElh4=;
        b=OLPRBVULxxTf1oc/oP/3arKCKtrOf/reFMAnf3APCqOUfJKJP/YqqmfHU0U42U9ILZ
         zx+qS91D+8EM78s14pf8qcirL6rmLQQibeaxIIngwNNwBe9nBfvDe/H7ycWd120BJSQB
         3GmowtTdt7Wm4tZj5cFF/OJTILla6SD1QMtvAXIA/YLyyCkrbuboe0QAgXSO6PC4Yd5g
         Cp7aTMhtusKrobX+1QNWFBE3IG6bJXrrTKYzObvuJM+cjGheOISHYhjDDuX47Pp09xSf
         jACR24VqMUcByRBf5vSjRrrmRRmUCWwd0RnyOMsw1kXlE1jr8G0lbTOMjzRKJA5R1r2Q
         0grA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zb6lf3LVwWGNe4q1Ac4ctig0IWotlyjfxiXWNPjElh4=;
        b=Hm2Mb3StoxZU+5n6ZsPrugPYwG0TsXyMMLN5fVLEcU0i2+FGTmdaMECakf1Ytq81Gf
         Nm0cdypY0dMy1DdqnE4BDlFG0WumYPphCFbVAcAIVwqvralDZj6iJj80JF69Oh4/iHld
         rLA17sUM+uloOTYJmtAubTxEch0QMuXFqDdcFu9Uxopvz55ya5swOfoIwO/Qbp4qjtrs
         ospgDUckKMQOahhrlgTD8r/KdmxvsCAYcqKZc6eTHVbaRNcUeM/gau6rpWrILN7f9eGf
         sLyTOc07FD+bTeymxgwaNxWIRUQJBrYJjxiwJCHs/bxs8FL/253/B/CniqqSHecrAodd
         vWhw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUQGN384YCO7xZBOugT95Am0ttrItKRK+WPCn+iikhptWBLL5pk
	US1mJXQJ8Ibu5CS+FFUsXBU=
X-Google-Smtp-Source: APXvYqxRx3Wz8ep0ADGl/426g6YY6S8R92C6LwqyEAVvwdQGCY8KwjAj6KfNmciLl5jXQx+AqrTdDg==
X-Received: by 2002:a9f:262d:: with SMTP id 42mr3947961uag.109.1574305809861;
        Wed, 20 Nov 2019 19:10:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9f:2493:: with SMTP id 19ls324716uar.13.gmail; Wed, 20 Nov
 2019 19:10:09 -0800 (PST)
X-Received: by 2002:ab0:2655:: with SMTP id q21mr3223045uao.52.1574305809396;
        Wed, 20 Nov 2019 19:10:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574305809; cv=none;
        d=google.com; s=arc-20160816;
        b=y03gsFbpTgKfAOhUmFnJrsgZXlI8389l1/cD+y3tEAHEUNQJdRCzVCAl0H+Pri4tCX
         tDln6VW3oPUjV+O/oceUMWQpcy6zjlTt17cHOjWbvRMfb9Nw5bXexcSlZ++HXHK+SrtV
         LWj5rQ6p0RHE8OlfxJOez5vEI89tq9X4pm2Tc20UfTyVvsJsFSNSgPaAENAEdFUwPssr
         qaOaBbMuMNeQ0JAFxrxnyOExPceIcosJIHsLKc8tT1wvCpOXMO6nBx5GuEsZhKmmSLuv
         kICyXfiMyd0DNEyIWPcqHyrgKkWygjbTWh03CaCBsi6eoEInW7vZld6bcYDhX07OIyVc
         /cug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=p012kRuly9zVRjmVJ5J1GYWfRvXDnJqi6DegXtDu3W4=;
        b=cuwjcSCPfefV8wUWUaNArvulYvutGJ4QW+UGzwccSduBRQPgi9tmRa5Svg2Acj4IUq
         D61EVcfdQdKAWayl1KR5F7DtlYvTHDudGyi5xaRrqlyZOF84fRKZsZPOLO9+camd0R6B
         CMzeanGRHXicl0RY9onPCD89b72Qui/qSCx92UA13Qw3qeZxamqZZW8iCVm3fGpJnNPT
         gZP++A8SlWo9WQyz25B/K6e7yEU3pcIP2lR7WmWcjND/dx08OOO6LWxp6OU1s/tlgRo8
         D2+J7/XxlWwL0C3O5jT1cBCMQM4h7sN5eaofR+KZXgQ+mScFeNdpsS/EbVIW3NjdAy1z
         THMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam2.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id e11si78206uaf.0.2019.11.20.19.10.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Nov 2019 19:10:08 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-FE.hygon.cn ([172.23.18.61])
	by spam2.hygon.cn with ESMTP id xAL37FXW036107;
	Thu, 21 Nov 2019 11:07:15 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-FE.hygon.cn with ESMTP id xAL372eZ030228;
	Thu, 21 Nov 2019 11:07:02 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from [172.20.21.12] (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Thu, 21 Nov
 2019 11:07:10 +0800
Subject: Re: [PATCH v2] NTB: ntb_perf: Fix address err in perf_copy_chunk
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, <jdmason@kudzu.us>
CC: <allenbh@gmail.com>, <dave.jiang@intel.com>
References: <1574136121-7941-1-git-send-email-linjiasen@hygon.cn>
 <c487042e-471b-dd99-37a6-2119b4115283@deltatee.com>
From: Jiasen Lin <linjiasen@hygon.cn>
Message-ID: <c09e061e-43ba-773f-a964-1ff629e06cb5@hygon.cn>
Date: Thu, 21 Nov 2019 11:04:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <c487042e-471b-dd99-37a6-2119b4115283@deltatee.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex02.Hygon.cn (172.23.18.12) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam2.hygon.cn xAL37FXW036107
X-DNSRBL: 
X-Original-Sender: linjiasen@hygon.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
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



On 2019/11/20 0:50, Logan Gunthorpe wrote:
> 
> 
> On 2019-11-18 9:02 p.m., Jiasen Lin wrote:
>> peer->outbuf is a virtual address which is get by ioremap, it can not
>> be converted to a physical address by virt_to_page and page_to_phys.
>> This conversion will result in DMA error, because the destination address
>> which is converted by page_to_phys is invalid.
>>
>> This patch save the MMIO address of NTB BARx in perf_setup_peer_mw,
>> and map the BAR space to DMA address after we assign the DMA channel.
>> Then fill the destination address of DMA descriptor with this DMA address
>> to guarantee that the address of memory write requests fall into
>> memory window of NBT BARx with IOMMU enabled and disabled.
>>
>> Changes since v1:
>>    * Map NTB BARx MMIO address to DMA address after assign the DMA channel,
>>      to ensure the destination address in valid. (per suggestion from Logan)
>>
>> Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
>> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
> 
> Thanks, looks good to me except for the one nit below.
> 
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> 
>> ---
>>   drivers/ntb/test/ntb_perf.c | 69 ++++++++++++++++++++++++++++++++++++---------
>>   1 file changed, 56 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
>> index e9b7c2d..dfca7e1 100644
>> --- a/drivers/ntb/test/ntb_perf.c
>> +++ b/drivers/ntb/test/ntb_perf.c
>> @@ -149,7 +149,8 @@ struct perf_peer {
>>   	u64 outbuf_xlat;
>>   	resource_size_t outbuf_size;
>>   	void __iomem *outbuf;
>> -
>> +	phys_addr_t out_phys_addr;
>> +	dma_addr_t dma_dst_addr;
>>   	/* Inbound MW params */
>>   	dma_addr_t inbuf_xlat;
>>   	resource_size_t inbuf_size;
>> @@ -776,7 +777,8 @@ static void perf_dma_copy_callback(void *data)
>>   }
>>   
>>   static int perf_copy_chunk(struct perf_thread *pthr,
>> -			   void __iomem *dst, void *src, size_t len)
>> +			   void __iomem *dst, void *src, size_t len,
>> +			   dma_addr_t dst_dma_addr)
>>   {
>>   	struct dma_async_tx_descriptor *tx;
>>   	struct dmaengine_unmap_data *unmap;
>> @@ -807,8 +809,7 @@ static int perf_copy_chunk(struct perf_thread *pthr,
>>   	}
>>   	unmap->to_cnt = 1;
>>   
>> -	unmap->addr[1] = dma_map_page(dma_dev, virt_to_page(dst),
>> -		offset_in_page(dst), len, DMA_FROM_DEVICE);
>> +	unmap->addr[1] = dst_dma_addr;
>>   	if (dma_mapping_error(dma_dev, unmap->addr[1])) {
>>   		ret = -EIO;
>>   		goto err_free_resource;
>> @@ -865,6 +866,7 @@ static int perf_init_test(struct perf_thread *pthr)
>>   {
>>   	struct perf_ctx *perf = pthr->perf;
>>   	dma_cap_mask_t dma_mask;
>> +	struct perf_peer *peer = pthr->perf->test_peer;
>>   
>>   	pthr->src = kmalloc_node(perf->test_peer->outbuf_size, GFP_KERNEL,
>>   				 dev_to_node(&perf->ntb->dev));
>> @@ -882,15 +884,33 @@ static int perf_init_test(struct perf_thread *pthr)
>>   	if (!pthr->dma_chan) {
>>   		dev_err(&perf->ntb->dev, "%d: Failed to get DMA channel\n",
>>   			pthr->tidx);
>> -		atomic_dec(&perf->tsync);
>> -		wake_up(&perf->twait);
>> -		kfree(pthr->src);
>> -		return -ENODEV;
>> +		goto err_free;
>> +	}
>> +	peer->dma_dst_addr =
>> +		dma_map_resource(pthr->dma_chan->device->dev,
>> +				 peer->out_phys_addr, peer->outbuf_size,
>> +				 DMA_FROM_DEVICE, 0);
>> +	if (dma_mapping_error(pthr->dma_chan->device->dev,
>> +			      peer->dma_dst_addr)) {
>> +		dev_err(pthr->dma_chan->device->dev, "%d: Failed to map DMA addr\n",
>> +			pthr->tidx);
>> +		peer->dma_dst_addr = 0;
>> +		dma_release_channel(pthr->dma_chan);
>> +		goto err_free;
>>   	}
>> +	dev_dbg(pthr->dma_chan->device->dev, "%d: Map MMIO %pa to DMA addr %pad\n",
>> +			pthr->tidx,
>> +			&peer->out_phys_addr,
>> +			&peer->dma_dst_addr);
>>   
>>   	atomic_set(&pthr->dma_sync, 0);
>> -
>>   	return 0;
>> +
>> +err_free:
>> +	atomic_dec(&perf->tsync);
>> +	wake_up(&perf->twait);
>> +	kfree(pthr->src);
>> +	return -ENODEV;
>>   }
>>   
>>   static int perf_run_test(struct perf_thread *pthr)
>> @@ -901,6 +921,8 @@ static int perf_run_test(struct perf_thread *pthr)
>>   	u64 total_size, chunk_size;
>>   	void *flt_src;
>>   	int ret = 0;
>> +	dma_addr_t flt_dma_addr;
>> +	dma_addr_t bnd_dma_addr;
>>   
>>   	total_size = 1ULL << total_order;
>>   	chunk_size = 1ULL << chunk_order;
>> @@ -910,11 +932,15 @@ static int perf_run_test(struct perf_thread *pthr)
>>   	bnd_dst = peer->outbuf + peer->outbuf_size;
>>   	flt_dst = peer->outbuf;
>>   
>> +	flt_dma_addr = peer->dma_dst_addr;
>> +	bnd_dma_addr = peer->dma_dst_addr + peer->outbuf_size;
>> +
>>   	pthr->duration = ktime_get();
>>   
>>   	/* Copied field is cleared on test launch stage */
>>   	while (pthr->copied < total_size) {
>> -		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size);
>> +		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size,
>> +				flt_dma_addr);
>>   		if (ret) {
>>   			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
>>   				pthr->tidx, ret);
>> @@ -925,8 +951,15 @@ static int perf_run_test(struct perf_thread *pthr)
>>   
>>   		flt_dst += chunk_size;
>>   		flt_src += chunk_size;
>> -		if (flt_dst >= bnd_dst || flt_dst < peer->outbuf) {
>> +		flt_dma_addr += chunk_size;
>> +
>> +		if (flt_dst >= bnd_dst ||
>> +		    flt_dst < peer->outbuf ||
>> +		    flt_dma_addr >= bnd_dma_addr ||
> 
> Nit: I'm pretty sure the check against bnd_dma_addr is redundant with
> the check on bnd_dst.
> 

Maybe, it would be better to calculate destination address in version 3 
patch. It will be reduce one input argument for perf_copy_chunk, so 
flt_dma_addr and bnd_dma_addr are no longer needed.
Take a look at this link:
https://lore.kernel.org/patchwork/patch/1156715/

Thanks,
Jiasen Lin

>> +		    flt_dma_addr < peer->dma_dst_addr) {
>> +
>>   			flt_dst = peer->outbuf;
>> +			flt_dma_addr = peer->dma_dst_addr;
>>   			flt_src = pthr->src;
>>   		}
>>   
>> @@ -978,8 +1011,13 @@ static void perf_clear_test(struct perf_thread *pthr)
>>   	 * We call it anyway just to be sure of the transfers completion.
>>   	 */
>>   	(void)dmaengine_terminate_sync(pthr->dma_chan);
>> -
>> -	dma_release_channel(pthr->dma_chan);
>> +	if (pthr->perf->test_peer->dma_dst_addr)
>> +		dma_unmap_resource(pthr->dma_chan->device->dev,
>> +				   pthr->perf->test_peer->dma_dst_addr,
>> +				   pthr->perf->test_peer->outbuf_size,
>> +				   DMA_FROM_DEVICE, 0);
>> +	if (pthr->dma_chan)
>> +		dma_release_channel(pthr->dma_chan);
>>   
>>   no_dma_notify:
>>   	atomic_dec(&perf->tsync);
>> @@ -1195,6 +1233,9 @@ static ssize_t perf_dbgfs_read_info(struct file *filep, char __user *ubuf,
>>   			"\tOut buffer addr 0x%pK\n", peer->outbuf);
>>   
>>   		pos += scnprintf(buf + pos, buf_size - pos,
>> +			"\tOut buff phys addr %pa[p]\n", &peer->out_phys_addr);
>> +
>> +		pos += scnprintf(buf + pos, buf_size - pos,
>>   			"\tOut buffer size %pa\n", &peer->outbuf_size);
>>   
>>   		pos += scnprintf(buf + pos, buf_size - pos,
>> @@ -1388,6 +1429,8 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
>>   	if (!peer->outbuf)
>>   		return -ENOMEM;
>>   
>> +	peer->out_phys_addr = phys_addr;
>> +
>>   	if (max_mw_size && peer->outbuf_size > max_mw_size) {
>>   		peer->outbuf_size = max_mw_size;
>>   		dev_warn(&peer->perf->ntb->dev,
>>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/c09e061e-43ba-773f-a964-1ff629e06cb5%40hygon.cn.
