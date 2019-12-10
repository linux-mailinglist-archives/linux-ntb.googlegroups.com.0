Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBF5NX7XQKGQE5PYKVWA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 47507118F0A
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Dec 2019 18:32:09 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id q204sf6681480oic.12
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Dec 2019 09:32:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575999128; cv=pass;
        d=google.com; s=arc-20160816;
        b=JGbSDthDiEgQ5UbtpVxyyCz4GCkgl6lPPAQbxL6qZNkW3cJaxiseECkVcIHm9JWJ7W
         XcmSJZ2LcJM/7B6ZUnWfKY4hVx6EOwjzXgRWqSnqKoV+ZPaBshLtAo29XT3YXXs0GWG9
         9V7zeFUdHwjT3GLgBDsozmJSR8dLFcdK8iCUaFrc6AI7fLSpB0MOCvMwMBMOUV2DrTB4
         1BFO+MJ5pia1m/WiLaNc9fC43yUsB6N6BM2z62zUqfwUB8YoYo8h/Sf04YB1vWduAGPY
         uh7uPUm2xbW9S7xccohTUOUX3AQUuYpd9Fy6hiFpw8kfScqZIw77Or+EAS1HGGzmkmeK
         k5Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=AX95YiQpCclU24c0dD64ZgE27QN3IhPVSZktCidasuw=;
        b=mFHbIEsZhCWHwGx0Vvv9OVBCOMpaNevllRqo+9L8MrVN5BY//qZI7vVwN6Rg0UL8xu
         wvgyphlyvdpg6RD4BIkwWE+g37q894iR8Y0+3J5LZbeXPsot2QebayS4cNaniGCeJZVw
         aZYOJUYvsL3hDaqlSLZwkPUUSR8+skIa6XaDZjZEXC7WcFoWPBGixBSjj79DqZ/Dm/jS
         Jn1ZVKDndeTxw+NTqLaMZ1IkbQG6FRa3MuHFnAXu5T2oHAtlNKOzXRMCzyCV7eOmi91e
         4FONRouM8L8orUVO4YmPVhggvOgvvOKGnJB8OJ+a5tVeXf/ZGMQCC8VzwVuEzwG+W5+A
         G3aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AX95YiQpCclU24c0dD64ZgE27QN3IhPVSZktCidasuw=;
        b=qFdlTHdWPuB960uvX609i1ZvV0+dk5pFCS03SgeLHdK/uFc3CWM4IzrUMz+q0M5oqp
         1cZKg2IBp6idcgpya/bDNO4e0MKi+gs0nq7QFnrEE2Xy3MGgMTc00cmHvc/xz0HG3cfN
         zYxKypWickySlHipst2k8vy22lzUi5Htf/PbjX6tlGp+vRUe8t9RKriYsi9FcpLs/AUt
         PzXPsQTHa4hv5rK6Pz06r/PSTrOSIZMC0SNAspt+XVHvYfoIjiYhO2KHcXU23eXMh7cG
         Ft3dbbgrQk9f8qHcE1bd00MYcNlZ+1E+k1LeclfGEBQ+ux0TjVzcIOhZf9K6rU3ST121
         2QYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AX95YiQpCclU24c0dD64ZgE27QN3IhPVSZktCidasuw=;
        b=QaxhzD36yZ00TfD5n7qZkhPE2cfAKaLqftNOukBBJc9AfjwfqTQxHfimpsMxiXwsmn
         U9NMDk9krl9ziLDMj9Hv1JHF4hEcc2J2saBloIgmioOwWGkq5wkYAYrwU67gIulsaHJ9
         gxLS7d+kcK6rhdzbrwp2N4EE1Nq7ozxMqQr3LRN1VfXIO0W12WaXZINtx2ROEjvD/GY/
         ba4yYqLZ7e6vrXqL6PfwpfVLo0YA8V4FUK6LXp85RP4bSE3I7KeWy4Vc7nYEWqWgVXne
         cZvZ3lAPAcXPcOZe643wnjgTTaEJKBsQ/n/ols8OpzTf54FbP+M22MMhcy0yYnt9YSl4
         eTtw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVlQonmsmNOP7AWgS97bfdXrQHw3u5C38i7HrJGmBAgJjKTBf0r
	kFLlRzvMpjgDzlyXwUdDFMo=
X-Google-Smtp-Source: APXvYqx40mtOEMq/W4a3ICFhofXKNU8zli6pRzLDGa+hqbbXojTkO5gHLDdyLQZsqiuDAVZ6WCQGkA==
X-Received: by 2002:aca:7583:: with SMTP id q125mr5192344oic.100.1575999127730;
        Tue, 10 Dec 2019 09:32:07 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:7059:: with SMTP id x25ls3114776otj.16.gmail; Tue, 10
 Dec 2019 09:32:07 -0800 (PST)
X-Received: by 2002:a9d:6f85:: with SMTP id h5mr26887311otq.19.1575999127341;
        Tue, 10 Dec 2019 09:32:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575999127; cv=none;
        d=google.com; s=arc-20160816;
        b=lFK45JB+l8VKHv9G9t0qqam0hZRiZDGi59NFkpXm1y71Xy/vBzGaeMUDpgDoexh/ca
         XssHUylBnI5PBc/qVECZY+2GskCAPoXwGm06CN8CYS6fRgeMnKonmQDjZsPWnn73wLks
         vMVd8LwMQHbVc9jT4hPjN7vrXltoY/ay7deOYW1S22qCfq7aeNc7gjosB+MtCX1XUGMS
         x9n3Fz2pT5nuuJ4pRtmU97OJJ5sAtNJiOIKxltEiJa7Q/25XtA4VL1dsh6bKdwW639H2
         jLFAHVO+JdiRT1Gv6FJqI+7MwEcBGXYJHm+QHNTtZmUQI11TXI8Vasgvk59bd3O+WNrJ
         VFZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=sLPDALr3cYvcbZyrXPSMU/Fb8f6oifN6ogW8dDe8cTk=;
        b=y/1CezJYsoMky9KGBjnhstemlRyUUErOyNoX3PF5NeRcx6rALmaUzVB89bDKmQs0mj
         jH4N5bRbamTChyY4FHs23jNkEGFGi3v3Q7UgUrHRKVF13es7ue1zKvUrNbibMxcaHKkn
         1+tS3MgE7TsaAalhyXsAv5ehLhwrMai4GhBqY7mglvEQjgZHDncezh0Z7CtOot1jH609
         qdOlV58UQ13Xkhbwh+GSJUXsMmE+fnLjh7PBd4+9rG2vWRUhUj8CND4Bwkp4ilrqnm2r
         UYEBSUU59U9jubwwXGgG7M8/KHqvn9/Wjc47Yc6dTI1hvGc2TtCmoieuuz1aSLiwseyh
         9WGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id l76si190083oih.3.2019.12.10.09.32.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2019 09:32:07 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtp (Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1iejMh-0006P3-6P; Tue, 10 Dec 2019 10:32:04 -0700
To: Sanjay R Mehta <Sanju.Mehta@amd.com>, Shyam-sundar.S-k@amd.com,
 fancer.lancer@gmail.com, jdmason@kudzu.us
Cc: dave.jiang@intel.com, allenbh@gmail.com, will@kernel.org,
 linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
References: <1575983255-70377-1-git-send-email-Sanju.Mehta@amd.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <fd958d1b-5abc-b936-2f21-429326a6e5de@deltatee.com>
Date: Tue, 10 Dec 2019 10:31:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1575983255-70377-1-git-send-email-Sanju.Mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, will@kernel.org, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, fancer.lancer@gmail.com, Shyam-sundar.S-k@amd.com, Sanju.Mehta@amd.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ntb_perf: pass correct struct device to
 dma_alloc_coherent
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


On 2019-12-10 6:07 a.m., Sanjay R Mehta wrote:
> From: Sanjay R Mehta <sanju.mehta@amd.com>
> 
> Currently, ntb->dev is passed to dma_alloc_coherent
> and dma_free_coherent calls. The returned dma_addr_t
> is the CPU physical address. This works fine as long
> as IOMMU is disabled. But when IOMMU is enabled, we
> need to make sure that IOVA is returned for dma_addr_t.
> So the correct way to achieve this is by changing the
> first parameter of dma_alloc_coherent() as ntb->pdev->dev
> instead.
> 
> Fixes: 5648e56 ("NTB: ntb_perf: Add full multi-port NTB API support")
> Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>

Yes, I did the same thing as one of the patches in my fix-up series that
never got merged. See [1].

Hopefully you can make better progress than I did.

While you're at it I think it's worth doing the same thing in ntb_tool
as well as removing the dma_coerce_mask_and_coherent() calls that are in
the NTB drivers which are meaningless once we get back to using the
correct DMA device.

Thanks,

Logan

[1] https://lore.kernel.org/lkml/20190109192233.5752-3-logang@deltatee.com/

> ---
>  drivers/ntb/test/ntb_perf.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
> index f5df33a..8729838 100644
> --- a/drivers/ntb/test/ntb_perf.c
> +++ b/drivers/ntb/test/ntb_perf.c
> @@ -559,7 +559,7 @@ static void perf_free_inbuf(struct perf_peer *peer)
>  		return;
>  
>  	(void)ntb_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
> -	dma_free_coherent(&peer->perf->ntb->dev, peer->inbuf_size,
> +	dma_free_coherent(&peer->perf->ntb->pdev->dev, peer->inbuf_size,
>  			  peer->inbuf, peer->inbuf_xlat);
>  	peer->inbuf = NULL;
>  }
> @@ -588,8 +588,9 @@ static int perf_setup_inbuf(struct perf_peer *peer)
>  
>  	perf_free_inbuf(peer);
>  
> -	peer->inbuf = dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_size,
> -					 &peer->inbuf_xlat, GFP_KERNEL);
> +	peer->inbuf = dma_alloc_coherent(&perf->ntb->pdev->dev,
> +					 peer->inbuf_size, &peer->inbuf_xlat,
> +					 GFP_KERNEL);
>  	if (!peer->inbuf) {
>  		dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
>  			&peer->inbuf_size);
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/fd958d1b-5abc-b936-2f21-429326a6e5de%40deltatee.com.
