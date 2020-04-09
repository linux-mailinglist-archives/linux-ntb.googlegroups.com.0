Return-Path: <linux-ntb+bncBCS4BDN7YUCRBJGJXX2AKGQEMBQHBDQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F151A3990
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Apr 2020 20:08:37 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id u187sf3975740pgu.14
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Apr 2020 11:08:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586455716; cv=pass;
        d=google.com; s=arc-20160816;
        b=E6o7GqwX1v6f2GoSwYuJHUFhfbxcU6LAxYHrw36KShHK+bpr/JBXc/86P7cNVWWPS/
         KNKwfAx/FYsXG8jFaXsue04WZBLCjijeEoblSN14t7SSZgMLLaHlsBblY1lrq9wVDzuF
         z+k4ZC1vwx0V4AunQHC6uTxWFa2y0Jb/xFh8qZ7iIh7nV1xn+UbygdkOhcn9orRHynR9
         8WLkBlxaXodi5EMNXFE/HSVOyM7+9rMkbeUC1+dv5p1mpn0FgxzFUKUDpBEDX7ZWuEi7
         8PZfQTeYvTb9buz/65mXaCbyqFiwm799KQB2Iib4Zw2RKJJVoqhDDen1YoWcE9Bg2VjX
         ajKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=B5oVVVKP+noFklwen9BMIWbXl6qutGbZh51axXLccP4=;
        b=kyc/cFqxeiLPWrExqxeQI32hQt87kMT1rfCGm/HULN7r4At1gsG1GyxHZTXlTTtIZ3
         nX4r2QjAmXw+qtS77WcWGkR91PSrfH0tvYY39SPOyAuN2F1UNS19xcvQYaTyDZdkHQRN
         LcHJBgdo9B5MX+d5YXNMHY9U4nVTQUEGYPI/rQYWlYCpGzYyAC3/5Ck7Ddy9KmFRvLCk
         jOiEzRCR5l+rb1w5xc/YGxY0ypC6vm+yK74KPfvKths7bvxCWnNaflCiUA/nd0srUSdr
         tFnNUylZ3TI6dPzOwLlh6oz8xZt6qlbDUGLHTus+ieAA3q1YU9ZPSS//NkcPLoP0YaP3
         XD4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=yAHPtbcq;
       spf=neutral (google.com: 2607:f8b0:4864:20::f41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B5oVVVKP+noFklwen9BMIWbXl6qutGbZh51axXLccP4=;
        b=tiNtJQpPY2b2jZFwMctAJ4fU84JNEIil4R7aGyWAnAtJ2xO9xEZ9LpY2OfQFcDvqWX
         Ol0+jYq34gW7KQ02Sb75IjdjqySBdH1PRG4hgRtShf9F7S6zwxBoxcduPUQybbLuIdKi
         PFjlkwmGR2cgtDpojugCeUYx2HhyO60hJTNva0NGRi+su7PNBN7m3BYdJ0AXORjcJAuZ
         knjZJXxvgsBOBiEaZUVCHufHPEw6HRN330F+pRbDxxrTvb0JcKg2ytyxMWIV8utQr79X
         XJP2PthCJjCGz496NTCEHws9PN0Da2ysSNXdyhTzhZPks2EjWUhCaU/f4Xu/42TsdeRP
         4LlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B5oVVVKP+noFklwen9BMIWbXl6qutGbZh51axXLccP4=;
        b=ALDqpjAKr7tGzaraiiQdImalM9g4BRYw4seGpTMawmZcpp+pJbOBfwJYOzdsE+pgy5
         govULAQSZpfgHGHSdRarK0A3LP9CtBx/LIEl40DBzgK32BYniddxY0jBnvezyAp0UMYH
         oOx55ZTHicK/KWKATgLmsaJmBa1h3CjXB58kmKAnotNLoRELDpPHCA7gD89ns9qKov1x
         YJnKX50Jj8+x+IbITl4ydAGOLsT1dHV6XssDRvYY/GhLnMLvxuBxGxZU+L0Yjdo5Sa79
         2u6lQzQX0VVk28ZM2DkdNNOUPp19oRzt1wXLBYn5GAFF1fAaYvPeDWm3D55BUIe81J4k
         LMDw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuYK1xuJLjV/dUGC5HZqo0mHZj1Dii0DR4ikwvjgzMaG/kKlqXxu
	7NA+8ltdWrzjKAn7XJQCdsI=
X-Google-Smtp-Source: APiQypIvM7XJwX7vItrnA3ezjqSx+usJINbI4ZAc1HoznlD03Z3cjlfg83UOCGK7k7q4MOURt18zBQ==
X-Received: by 2002:a17:902:d217:: with SMTP id t23mr795784ply.290.1586455716275;
        Thu, 09 Apr 2020 11:08:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:1dcd:: with SMTP id d196ls3977291pfd.6.gmail; Thu, 09
 Apr 2020 11:08:35 -0700 (PDT)
X-Received: by 2002:a63:48a:: with SMTP id 132mr694658pge.380.1586455715678;
        Thu, 09 Apr 2020 11:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586455715; cv=none;
        d=google.com; s=arc-20160816;
        b=PwBcSukUCokHwSgJx4aDKTdUUBMHPXTQuzyCzpq/KaOr4vj1TQz3kOu5YkZLfbc+7a
         omHQQJOSPMUdd7m3gHRusHjrt8tcJ9BsV+tf22jd+m3o1FkkB8N+x9wZBzKTzB9y+vET
         eM6AQT9yqFmcCWA3BU4JFraCR63bSYGKWdrzuy3I4SJFZ5rK+TCd7eCnjfhuBGgtqkrI
         /eVmoqmT2WZSTXQRKSUyBa+VF1xPBM496ATYKvgSKvBxVPXRaprwZYmjNnMr4K39ayjC
         Hsw1H2GLgzDCCjqwUY4wDkA7uQrP0p6/9HYRimYP1aNyg7JKOnkbeyN0iPPQIa1TCNqi
         VrwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hVNFV4c+yUnUg1gad2ULWcx32+P02jEWW63/ly1Ye2Q=;
        b=V33aFRXYJkxIaf8jwf0un0X8Z7EHmVZDMJrGL9eN2TqDU2Onh79n6L2/ioOEgPT8bU
         97JxNCu41mB5bFqieX6JaaxHtT2f8NKvYodm4Ynhh7uwqi+GxeI1SXAh3iVv4ESjbIhK
         Wx8Fn3M7uwVh6s4U3siyILsPRN9Qd5QeKRLw2H3XSbQJNRO7ReM1rFu4uHomo+V3k4VC
         K1pyc0p41cmm7aXXGLDsydLnyQxcFU32c4DJnHdURTVDe0OLQPasNZXvW0Ok2XmArTTF
         ZH+1RoCbx2g3DYOED7k0ofzHsu2x8/8ORantQFbMqn5tROFcsd4pih/IXPyMwFW20ROc
         152A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=yAHPtbcq;
       spf=neutral (google.com: 2607:f8b0:4864:20::f41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id a141si894734pfd.5.2020.04.09.11.08.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 11:08:35 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::f41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id bu9so5944768qvb.13
        for <linux-ntb@googlegroups.com>; Thu, 09 Apr 2020 11:08:35 -0700 (PDT)
X-Received: by 2002:ad4:46d4:: with SMTP id g20mr1320558qvw.179.1586455714774;
        Thu, 09 Apr 2020 11:08:34 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a664:2e00:d75:1977:59a2:75ff])
        by smtp.gmail.com with ESMTPSA id u29sm20178455qkm.102.2020.04.09.11.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2020 11:08:34 -0700 (PDT)
Date: Thu, 9 Apr 2020 14:08:32 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Jiasen Lin <linjiasen@hygon.cn>
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com,
	dan.carpenter@oracle.com, allenbh@gmail.com, dave.jiang@intel.com,
	zhangpanyong@hygon.cn
Subject: Re: [PATCH] NTB: Fix static check warning in perf_clear_test
Message-ID: <20200409180831.GB21666@kudzu.us>
References: <1586416284-3246-1-git-send-email-linjiasen@hygon.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1586416284-3246-1-git-send-email-linjiasen@hygon.cn>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=yAHPtbcq;       spf=neutral (google.com: 2607:f8b0:4864:20::f41 is
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

On Thu, Apr 09, 2020 at 12:11:24AM -0700, Jiasen Lin wrote:
> As pthr->dma_chan can't be NULL in this context, so there is
> no need to check pthr->dma_chan.
> 
> Fixes: 99a06056124d ("NTB: ntb_perf: Fix address err in perf_copy_chunk")
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>

Pulled into my ntb branch.

Thanks,
Jon

> ---
>  drivers/ntb/test/ntb_perf.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
> index 972f6d9..f73b126 100644
> --- a/drivers/ntb/test/ntb_perf.c
> +++ b/drivers/ntb/test/ntb_perf.c
> @@ -1010,8 +1010,8 @@ static void perf_clear_test(struct perf_thread *pthr)
>  				   pthr->perf->test_peer->dma_dst_addr,
>  				   pthr->perf->test_peer->outbuf_size,
>  				   DMA_FROM_DEVICE, 0);
> -	if (pthr->dma_chan)
> -		dma_release_channel(pthr->dma_chan);
> +
> +	dma_release_channel(pthr->dma_chan);
>  
>  no_dma_notify:
>  	atomic_dec(&perf->tsync);
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1586416284-3246-1-git-send-email-linjiasen%40hygon.cn.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200409180831.GB21666%40kudzu.us.
