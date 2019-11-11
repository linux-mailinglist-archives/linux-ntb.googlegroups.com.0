Return-Path: <linux-ntb+bncBAABBNNIUTXAKGQEKR62XWA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A71DF6F43
	for <lists+linux-ntb@lfdr.de>; Mon, 11 Nov 2019 08:56:39 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id d8sf4855409uan.4
        for <lists+linux-ntb@lfdr.de>; Sun, 10 Nov 2019 23:56:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573458998; cv=pass;
        d=google.com; s=arc-20160816;
        b=kPuzraYweG3Maw8KW/JcRa65kVK5OWKBrtocXRutUqJ9MErNuohJ8giXGCLADAfvaa
         HRGVx8/ccP/u+GqRy9KEnPx6ezXxsewdIvhMulR7owG4mzCuC/egac70jx5LAXkvV41h
         PQ30H/Z/NrZfwhJe/wrVOF4Al7+nDvCJJQJ45wQ1gun3/3nUwviN3ZcUEdA5OZbV33hl
         UlNmM5OVzesHd2hV/d8WXFk85iU+d/OB9UXFd3LHlLZ+Dz0LAmsEJR2zQOUOJ8FuLNYC
         1jlS/ntY/HUVjjpdEQFr1IHOMgh/xCMK5N1A2hzFp6akxhtRltkdbCAphszRIuOs8GAR
         7RUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=HTfInTzZrjdqnIG2+PGAMePneasObeJKXwmYsVI+2mo=;
        b=EqHO/KgEvVuIZTi5iWNkz8E6lUisYGYOGbTC1qhzI6f2NcMM0GLopmLsqC9zTxoYyC
         7+kHv7MRdeqt2p2RALRZH/e6aEDV7iKZO/xUQOT96IWVitJbEVa0YhXgJmMItElaCZ/0
         VaxS6NhVxjG4/+fh0A5q53u4upDFXFJu8STX8ovwe4hUYvpC++xeZaLcdxc1vEmev+YR
         oPexEr/dfGyqlzLVX66mcEwxfwRoNH0SqAErBK5tiVadF/gqtlnmoqOdaGpar0j8wtms
         FC6jQANcXlfa2aPwyHMbsoUOdZAdYtUaOL0iKMakZRVMf1FWx5jAk55/NV8fE0oFJ/ZZ
         ePFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HTfInTzZrjdqnIG2+PGAMePneasObeJKXwmYsVI+2mo=;
        b=bAx6eiFliTidZJ/TKERajJ8ULWmEPscoAZnk622JYDuVrM7PUqbvjJreeDQGSoX9CG
         69EsXI+yi9Yfeqi17HhLigEAj8hfAENIASOdmCJdPMZ7dTKQoJHNZ6rqYCfBctaTfx12
         nUa5B4pQuDpMR2j84gb3UrJ+aZaGS8z7X3wSqvcQGs/sBoLvakdPGbUFmXiNmiZm8z4N
         Bztbw1Kf1nj/4fRKr3GTTvMAGNH5zIjzeaLNfaoqJ0uyVYevuR0tPS11cb1f2URekTZo
         QXRtME31QzvfDNTWVmGr3PfCVG8jUPiGR+rCSDqNEALmRyrVWWziheWez9KrCHormXju
         RRBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HTfInTzZrjdqnIG2+PGAMePneasObeJKXwmYsVI+2mo=;
        b=IX/7PqHyownvEDrQg/btzWXVHxfFjs9X+TYpSBbP59RPI04zOHE+xWrsNh2UJUQtP3
         sGr1KHGld6RNKauX4QZKpZwBmPT7S9sX0onKuUVeqDnDNSy98Y3LsoVpDU5Do5qbwGfQ
         6Fjc6FPlmHo3RawC7IxXaU4337xk8DuOPiZxQMbBWDpBaPyGWHlUR55Bq3Wny5Y9azmm
         yJq/9+W0IZ5sSXfDLZkbboTSJAyIzMGMqUALTzQBpB8xdNn16qj3I+WrnmLoNmAzqGJ8
         Ou7E9n9mT8/OjlpRSFpYHjaIiS3Wl2FN7EFsRiHbxLBXF4YikDv56yx2ExzXv+UC57ec
         eF3w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVS5MI6TZK3WcfLLTVVgHw0yxevIjPZiUQn2YK2A7QrV1xty85L
	AeA0N60HWTbmPJxEsZXIPFU=
X-Google-Smtp-Source: APXvYqwy3xS63zLqR71/PtHBJSYL0hq+45i9zxH7UD3+c2+V1KBKoVL3MyUY8IpZ9DD04kwWVZOOHw==
X-Received: by 2002:a9f:384b:: with SMTP id q11mr16751278uad.13.1573458997758;
        Sun, 10 Nov 2019 23:56:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:264:: with SMTP id 91ls750615uas.4.gmail; Sun, 10 Nov
 2019 23:56:37 -0800 (PST)
X-Received: by 2002:a9f:3c2c:: with SMTP id u44mr16748331uah.2.1573458997316;
        Sun, 10 Nov 2019 23:56:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573458997; cv=none;
        d=google.com; s=arc-20160816;
        b=kQ+0p9PWQKgwigSzMpMmMOkcuER/Buy61xxKGia6kfqNw47fDWkXq+ZB82XXlk2Qa0
         iTSJiooDBNd0VD8l/SLndeDQa+VvrgqHcYPoCIWSYlc1/PbjyJGJw0CWSiXPKCcQhXip
         jKWKS/cVweUoOEk88s5U+D75PWQseeoh/P0NELNWP1Rv2abFgSzvxQprFrA424/49ECq
         ZjFWW5o/kLZ271qjvDPClgwEyDFEP1wSSwLxG4ypLp49LWSxNrq6jxraLZm/vgbCCvbX
         egP7MqyObJOSCoIHcReSoKZeJuqJX9c+GL6LdzEh4wOpTwrSvfh834rDuGxOt305Xorp
         Depw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=wGacn4d+NFU3ptVTgtfsKW+VsTwx9UFPVL8n2MxY9bc=;
        b=k7NmVptQDCQ8+lFV5RzPLIo/Pu7IWcDYlMqWyJ5aZB/gwR6HcH1bjfmKGa5barSQos
         0zY59IGKMOFKbXIRL6gtc9y5NbUFOqWyNTbC0qba4ipIiR1eIdbMevL31wcmBnn5T4dW
         8eKsyzEX4aPtkjiGAlg38dB+d35CmarHG5OzRNc0O4ZdU6JgkoAFTTVZskg9j06Z+oCG
         X/VkvcRs4WSQZ5Le06C2iN2ULJ8oIyWLVzlw7pk27L9exLXYLhhlNlkGZzzqDF3LzK/i
         122t29gsfQiDk/NMgfQNtSmfWB1MZ9rBtDyJ1ero+MeNpI4QGI9soBKe/4PPIOjqW63g
         8Fiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam1.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id n138si1187763vkf.2.2019.11.10.23.56.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Nov 2019 23:56:36 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-FE.hygon.cn ([172.23.18.61])
	by spam1.hygon.cn with ESMTP id xAB7rSnO056256;
	Mon, 11 Nov 2019 15:53:28 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-FE.hygon.cn with ESMTP id xAB7rM6t085027;
	Mon, 11 Nov 2019 15:53:22 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from [172.20.21.12] (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Mon, 11 Nov
 2019 15:53:23 +0800
Subject: Re: [PATCH] NTB: ntb_perf: Fix address err in perf_copy_chunk
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, <jdmason@kudzu.us>
CC: <allenbh@gmail.com>, <dave.jiang@intel.com>
References: <1573097913-104555-1-git-send-email-linjiasen@hygon.cn>
 <7ea7ef5d-7e46-396a-8d70-2c6c333a4508@deltatee.com>
From: Jiasen Lin <linjiasen@hygon.cn>
Message-ID: <8973e56c-ccce-2884-f4dc-4d0f8072a948@hygon.cn>
Date: Mon, 11 Nov 2019 15:51:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <7ea7ef5d-7e46-396a-8d70-2c6c333a4508@deltatee.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex02.Hygon.cn (172.23.18.12) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam1.hygon.cn xAB7rSnO056256
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



On 2019/11/9 1:04, Logan Gunthorpe wrote:
> 
> 
> On 2019-11-06 8:38 p.m., Jiasen Lin wrote:
>> peer->outbuf is a virtual address which is get by ioremap, it can not
>> be converted to a physical address by virt_to_page and page_to_phys.
>> This conversion will result in DMA error, because the destination address
>> which is converted by page_to_phys is invalid.
> 
> Hmm, yes, ntb_perf is obviously wrong. I never noticed this, how did
> this ever work?
> 

The default value of use_dma which is used to enable DMA engine to 
measure NTB performance is zero, in other words, DMA engine is not used 
by default. Thus, olny memcpy_toio is called in perf_copy_chunk and not 
trigger this bug.

If we install driver with specified dma-enabled flag like this:
insmod ntb_perf.ko use_dma=1, this issue will be triggered.

>> We Save the physical address in perf_setup_peer_mw, it is MMIO address
>> of NTB BARx. Then fill the destination address of DMA descriptor with
>> this physical address to guarantee that the address of memory write
>> requests fall in memory window of NBT BARx.
> 
> Using the physical address directly is also wrong and will not work in
> the presence of an IOMMU. You should use dma_map_resource() for this.
> See what was done in ntb_transport[1].
> 

Yes, my mistake. I will modify the code according to your suggestion and 
test it on AMD and HYGON platforms with the IOMMU enabled. Maybe the 
following patches are relied on, when IOMMU is enabled on AMD and HYGON 
plartforms.

https://lore.kernel.org/patchwork/cover/1143155/
https://lore.kernel.org/patchwork/patch/1143156/
https://lore.kernel.org/patchwork/patch/1143157/

Thanks,

Jiasen Lin

> Thanks,
> 
> Logan
> 
> [1] c59666bb32b9 ("NTB: ntb_transport: Ensure the destination buffer is
> mapped for TX DMA")
> 
>> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
>> ---
>>   drivers/ntb/test/ntb_perf.c | 28 +++++++++++++++++++++++-----
>>   1 file changed, 23 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
>> index e9b7c2d..1c2fd1a 100644
>> --- a/drivers/ntb/test/ntb_perf.c
>> +++ b/drivers/ntb/test/ntb_perf.c
>> @@ -149,6 +149,7 @@ struct perf_peer {
>>   	u64 outbuf_xlat;
>>   	resource_size_t outbuf_size;
>>   	void __iomem *outbuf;
>> +	phys_addr_t out_phys_addr;
>>   
>>   	/* Inbound MW params */
>>   	dma_addr_t inbuf_xlat;
>> @@ -776,7 +777,8 @@ static void perf_dma_copy_callback(void *data)
>>   }
>>   
>>   static int perf_copy_chunk(struct perf_thread *pthr,
>> -			   void __iomem *dst, void *src, size_t len)
>> +			   void __iomem *dst, void *src, size_t len,
>> +			   phys_addr_t dst_phys_addr)
>>   {
>>   	struct dma_async_tx_descriptor *tx;
>>   	struct dmaengine_unmap_data *unmap;
>> @@ -807,8 +809,7 @@ static int perf_copy_chunk(struct perf_thread *pthr,
>>   	}
>>   	unmap->to_cnt = 1;
>>   
>> -	unmap->addr[1] = dma_map_page(dma_dev, virt_to_page(dst),
>> -		offset_in_page(dst), len, DMA_FROM_DEVICE);
>> +	unmap->addr[1] = dst_phys_addr;
>>   	if (dma_mapping_error(dma_dev, unmap->addr[1])) {
>>   		ret = -EIO;
>>   		goto err_free_resource;
>> @@ -901,6 +902,8 @@ static int perf_run_test(struct perf_thread *pthr)
>>   	u64 total_size, chunk_size;
>>   	void *flt_src;
>>   	int ret = 0;
>> +	phys_addr_t flt_phys_addr;
>> +	phys_addr_t bnd_phys_addr;
>>   
>>   	total_size = 1ULL << total_order;
>>   	chunk_size = 1ULL << chunk_order;
>> @@ -909,12 +912,15 @@ static int perf_run_test(struct perf_thread *pthr)
>>   	flt_src = pthr->src;
>>   	bnd_dst = peer->outbuf + peer->outbuf_size;
>>   	flt_dst = peer->outbuf;
>> +	bnd_phys_addr = peer->out_phys_addr + peer->outbuf_size;
>> +	flt_phys_addr = peer->out_phys_addr;
>>   
>>   	pthr->duration = ktime_get();
>>   
>>   	/* Copied field is cleared on test launch stage */
>>   	while (pthr->copied < total_size) {
>> -		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size);
>> +		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size,
>> +				flt_phys_addr);
>>   		if (ret) {
>>   			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
>>   				pthr->tidx, ret);
>> @@ -925,8 +931,15 @@ static int perf_run_test(struct perf_thread *pthr)
>>   
>>   		flt_dst += chunk_size;
>>   		flt_src += chunk_size;
>> -		if (flt_dst >= bnd_dst || flt_dst < peer->outbuf) {
>> +		flt_phys_addr += chunk_size;
>> +
>> +		if (flt_dst >= bnd_dst ||
>> +		    flt_dst < peer->outbuf ||
>> +		    flt_phys_addr >= bnd_phys_addr ||
>> +		    flt_phys_addr < peer->out_phys_addr) {
>> +
>>   			flt_dst = peer->outbuf;
>> +			flt_phys_addr = peer->out_phys_addr;
>>   			flt_src = pthr->src;
>>   		}
>>   
>> @@ -1195,6 +1208,9 @@ static ssize_t perf_dbgfs_read_info(struct file *filep, char __user *ubuf,
>>   			"\tOut buffer addr 0x%pK\n", peer->outbuf);
>>   
>>   		pos += scnprintf(buf + pos, buf_size - pos,
>> +			"\tOut buff phys addr %pa[p]\n", &peer->out_phys_addr);
>> +
>> +		pos += scnprintf(buf + pos, buf_size - pos,
>>   			"\tOut buffer size %pa\n", &peer->outbuf_size);
>>   
>>   		pos += scnprintf(buf + pos, buf_size - pos,
>> @@ -1388,6 +1404,8 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/8973e56c-ccce-2884-f4dc-4d0f8072a948%40hygon.cn.
