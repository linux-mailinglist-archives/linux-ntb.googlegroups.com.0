Return-Path: <linux-ntb+bncBCQMFSVRS4ORBHW2RL4AKGQE6LJILBQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 703B32151DA
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Jul 2020 06:48:32 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id h2sf20260608pgc.19
        for <lists+linux-ntb@lfdr.de>; Sun, 05 Jul 2020 21:48:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594010911; cv=pass;
        d=google.com; s=arc-20160816;
        b=ir+JT/wGG2HIh3u9C7KEsdCk76hLKZz3WCpzW16ziZd+gNwlAYGxZJGEbyFD3J4pkA
         3/X5bB6vJhBVTOea0dvu9UWbgHwZ6mddBisJ1YjPfnyTwqbwaB1H2x7Rg8c80htZpjJh
         yCCdvUkhMyRzvnOcVj77447fuP5ANit8FbI+kuFpqxrJRrxlD+Z8SQmdSHmg2WBH+Udg
         4Z1djJ636JFlqv6xLsh752jMjfFL3YqwA/hI4A0iPREEbUKE0nDUTRtl53PTSGU/kV+R
         Usb2Ve5WxhZ8cfwV3SdQKFcjOBKsqHegTNRSS+fvDXu/17Ar6APiZN9M/wQkV4335V8S
         6NOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OUJv4M7oK0DYB04qRazS0Np/yLelG7Rp8WTS2xNL2MU=;
        b=amP6Yjm9RofkabvCwIvRh78E2up81/v80ugZkSZjkrl3FNP35TeWF6SWxOAG7lQqXN
         OcBj3NrFlXxbLxCoPCZ6F1j0jdk4BvvjiGaAKd7aBHjJFJwJSGstXh3FP0CC2GK4To5S
         nE9zz/kEWPboGrZ7E1ry2w79kI2DPJDowi2HwlnpXea8V7ZZDcW1nna7hl3Rtwk6Awn3
         7vkOSgIGrzSUf5jxeQua7xJyhOLNlWxcpl44TVzgLApMXgdqS2HGJBYC4RlTnWFpNlA5
         iQDKyT3mnHbFDCGVIrl6qsLmOF2fD98R6jYKUGVyT2SWcZYlfDIGew6FXPZxWOAusrAh
         vZKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="A8QMvTN/";
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OUJv4M7oK0DYB04qRazS0Np/yLelG7Rp8WTS2xNL2MU=;
        b=WbcXkaropW+e06vMWynUfIe7CU4upS4wDbi0OHaV4PAb9zLH5HwVdmkEpE/i3Yn+ye
         kWuy2zhaesi1JgpsXTSj5MK7RfpfuQ+UFHS9X94uhaIFKNh9eIQRXg48PHBDnIEkLMoa
         ljFJayBq+ABV2WKHHNEAqpJI2mpNGfbVn38nzyOlMvsXnkEVqLi8rmOntFkgMi51EbGE
         7l6kal6IZokyPh6h3DjFRX6wRhiiljhNRlACvvcSuB9ZF5MYjbneU0mvRgNxbBVXsdHA
         N73FIMBXC2KVJOSVhHzLm3i6HYNvxm2SKfGCZBiUUiLRjpt2GLxSo8tFNcuS9MkjA0gW
         WEWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OUJv4M7oK0DYB04qRazS0Np/yLelG7Rp8WTS2xNL2MU=;
        b=SXXhMgtrl2qk7vYt9dPhUMnojsK9RVwF9jeUBBe/rQqYPeUCytmmNpCT5wJEDVKx5W
         u5e5ADtIVrq+vpSvPkwZe0XhCDC2MVCCxjeYBuTZJWZCLRczIt4Pfr+kdLkqk7v0JLx9
         gBL8wqH98DdRXNIIyNfIMQpgvNIIPQlzp/2jwCXOwtAMUQh2f7OLhKQ5DsEZPqL7+vdJ
         zfROHnjs1k6fKST1KBJoSVqx/wJ6a3bS4Zxh3DoVYZCE6XnZaLO9QS2L9JRrg44s1NyH
         n03o7JmWN3WehzyAi22JCd5Ijx1+B37kL0Y30F71ky4pCZhvSzUB6ZOvAwNK4QTmdS6E
         /X3A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531r1FRhSpeKIRu1L8N2RdWTkNh5EuYAAuClYP9mAopm81Hcfg10
	y3j+ZI2iCCLqOa1mSgDJWuc=
X-Google-Smtp-Source: ABdhPJzB+1uAIs5DpFxzkTpaJAWfdCnGYfry6Bn3ReETAN3JuwGEssFjCusaBqTPXdpjhgkJBqeHxw==
X-Received: by 2002:a63:6cd:: with SMTP id 196mr38674461pgg.169.1594010910969;
        Sun, 05 Jul 2020 21:48:30 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:864e:: with SMTP id a14ls4557858pfo.7.gmail; Sun, 05 Jul
 2020 21:48:30 -0700 (PDT)
X-Received: by 2002:a63:395:: with SMTP id 143mr38909667pgd.57.1594010910565;
        Sun, 05 Jul 2020 21:48:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594010910; cv=none;
        d=google.com; s=arc-20160816;
        b=z9t2QPHPLLlm6u5suN4MRh5YE7wuGjaj+T7S4e8uY1rzfvv2l/ziiwjFy9y0feiojZ
         jJYlH9ofOqV/je8W+GqdK3urTVP9Nh0TafE791tOh9fKbfmOn3EJI/6nBF0nzYCfd0v4
         J5i9JWHeGu0Jb/JfVhNL0Dqmmpsq97kppf4XYYQ1Z5cZdb5d5D5YAycX/Cn3rLAvtMhW
         yLNmzVdX9cBEY2J0ZR86zK+e3YBw8lQ/IYt+Np9FlaWT/l8xgaztURMvSuUflbrUoHWm
         cAG71PE+eQDElFRQRAiHUkDtwEQ2Xi46g0z+YqvK5RPbtVqyTpAo6PkJ3jMCyr8M7MuC
         8IHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KL0d8U26Ngl0rVlqmV8JuGN6P0Xn24Pd2EiCKObPAE4=;
        b=nNF/BizzeEIJ6n/0gGedvsYUSa47VmXHAqZWyDyTM0DSFBHMmI1P0qAjF1RdHZ/zFg
         iC4+d/icdSuwAc77DdtNsbexKjp/0Apib5YuWX/BBVrKS9/o5fm5osw1RRfijR8N5+fc
         gUjxE3RTimibQP8gTQrdZdbCD+R3zYotxVAKRfzS8xtZ6aDAx9RefTMRsdWAznGZgtjL
         uWYASxwuUx1mC+xC1PDLJxW/Yr9GisP/YLCsoWH57WqRopF3VwqI8rD0YzTIMtK64ykq
         az6nq98Z463DQALav/8jQfvCHuIcC5nWJ8u/9YLJ/S/z0wn/B1zYgyxL8cSKVP0Ot+1T
         Ss8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="A8QMvTN/";
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y197si774114pfc.4.2020.07.05.21.48.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Jul 2020 21:48:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [122.182.251.219])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F0A420720;
	Mon,  6 Jul 2020 04:48:29 +0000 (UTC)
Date: Mon, 6 Jul 2020 10:18:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org, dmaengine@vger.kernel.org,
	Luis Chamberlain <mcgrof@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	linux-iio@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com, Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>, linux-nvdimm@lists.01.org,
	linux-usb@vger.kernel.org, Eli Billauer <eli.billauer@gmail.com>
Subject: Re: [PATCH 01/17] Documentation/driver-api: dmaengine/provider: drop
 doubled word
Message-ID: <20200706044824.GB633187@vkoul-mobl>
References: <20200704034502.17199-1-rdunlap@infradead.org>
 <20200704034502.17199-2-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200704034502.17199-2-rdunlap@infradead.org>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="A8QMvTN/";       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 03-07-20, 20:44, Randy Dunlap wrote:
> Drop the doubled word "has".

Applied, thanks

> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: dmaengine@vger.kernel.org
> ---
>  Documentation/driver-api/dmaengine/provider.rst |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- linux-next-20200701.orig/Documentation/driver-api/dmaengine/provider.rst
> +++ linux-next-20200701/Documentation/driver-api/dmaengine/provider.rst
> @@ -507,7 +507,7 @@ dma_cookie_t
>  DMA_CTRL_ACK
>  
>  - If clear, the descriptor cannot be reused by provider until the
> -  client acknowledges receipt, i.e. has has a chance to establish any
> +  client acknowledges receipt, i.e. has a chance to establish any
>    dependency chains
>  
>  - This can be acked by invoking async_tx_ack()

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200706044824.GB633187%40vkoul-mobl.
