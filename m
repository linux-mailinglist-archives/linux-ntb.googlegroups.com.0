Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBRU3WT3QKGQEQTDNQQQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F39A201AEA
	for <lists+linux-ntb@lfdr.de>; Fri, 19 Jun 2020 21:11:04 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id w8sf6913403plq.10
        for <lists+linux-ntb@lfdr.de>; Fri, 19 Jun 2020 12:11:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592593863; cv=pass;
        d=google.com; s=arc-20160816;
        b=M8Z/65o0kb2RzRvzVOzCcutlR7vax9wPjGYvkaLErEX6qCZJlITZiN6ikqJHoaYlgW
         y+gesfr/biVbIQ8qJxzG2lF90MjIaj1IYDnlV9JZqDQgwBI4OJubhAujpCq8mrqkSwP+
         iTu7rQFcQzgeyIbElt7okn9i7OWfIbjYCP57ZGbEdYKL7KDAiYuSFg3ayU6URJGIPvLJ
         4zNeGt6JgiYY+D+kGPDnQIcX7YguFUgQsDlksU2fH6Tkx46SXxnpN85MHpPeBWlT+TO2
         r0tnr2MGYDG61oQRNEkVAoFMG1bSGGtHbgHgdu4bBXUj8NT/DgBjSio+rEJ7IuuxiPIx
         x8gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=8A6JgKrGmNP2py+LHGMoXK4qBV/89nNHvYBNFGNUiNM=;
        b=fMbSS7xp42GWc5AtSEC6Fv7AM3nEDsG62QkQc0S7buvMRBoMvAeaayjMZhZnro5Y46
         XSs9jci7zFjORFKrlJtJzPwshktId5iYFK+Rrf4lI95z7oUHfKzLPMR48vCNXmprDaHl
         qQzyzzo5oxGkO+pu5P/mjGCa/ehaRbCnjBR0SGyIqZ8AUqP9vAD4GovczC3lgWwdSVaC
         lLlSbSclB/Eb4jnzuvLJ3vJ1CSw5AAGbCLHploRwIPNq88z50c9kSk7xSuDnLftWUOX7
         xJD3GKKilEZzA4cSXHk+4639QMnk1YZQZXySITRO71RCOJhQyV9lkSthuI4XNGFN1+vz
         9LuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=f8JUjkyU;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8A6JgKrGmNP2py+LHGMoXK4qBV/89nNHvYBNFGNUiNM=;
        b=foWZqV7gkpyrMf1tI9zo6aR9T5yZOF0VZj3m+KzQmmxl5fRbTwRSCF7PUqXq7EMK8c
         Cdqhd8T131kcRRfdSFJuA53vE/1E2DQ9VZ2mrxpbpU134kVqyHpzGP6cLqlqvEXuEMiu
         esWMLasTsAzHXnKsFrwn0LPwH6VDpH3txukjg6Hvr4HggzTRMAOCP3HAXx5IA3O96o5p
         D/xRtTtZBWYurujPt8vGH/qSMyyhSescqCZ2H4+D6GUg4kVL4ozkk3o2/Ddd1H3qbFpM
         bhFBxKP+Asg8o9yEWgQ0/5TCsqigqf10k+A/qmlzooN5zN33TC39qi4G91lLFcW46wXX
         HJDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8A6JgKrGmNP2py+LHGMoXK4qBV/89nNHvYBNFGNUiNM=;
        b=hpF3ZB03KE2H09yV3dwg6sV5nTaN7hQ3j9d/FFT7V1rzZ0Hz+b5nHSBlM7ZdMv3nIZ
         SxgMDwmKB9tZlDhGtpbH/ti5dutbw9MiE68nUtmW+HySwp6JFU/adP7gKgqy0/PPlie2
         anuyXWnKkQIAcFNVgnuyiQSR5WEkIjHQq8cadlH+hug/TN9aECWO/dcOx0NjAW6gDvFo
         CIKhcSYAfK/O3Gg7sh/djqi1B0DGsBREskOdf+vXkGMlNTnUI+ThSypv9VST6nVAoYM0
         26oNfa634/ZALu+khifx51hRLKS/PrpZrife4RgXy60iXHuGBPg0lzS/ct5EQGKFPZWW
         NV7w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532A/yrVwHpvHBbtSYzFfS5eMWmYcbeFh88yZ4nRqcGuwKXzFK7E
	S3wnGo4LOc3VY308RlRmdCc=
X-Google-Smtp-Source: ABdhPJz4nZIDt9aQ2XHXDlZ37oRnM3SKWN5K/wIzzMuE+r6bNeCTvBJW+m+TQ9NXw1fw6UBCLSfnVA==
X-Received: by 2002:a63:b915:: with SMTP id z21mr4424809pge.145.1592593862915;
        Fri, 19 Jun 2020 12:11:02 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:7957:: with SMTP id u84ls3198109pfc.0.gmail; Fri, 19 Jun
 2020 12:11:02 -0700 (PDT)
X-Received: by 2002:a65:6119:: with SMTP id z25mr4417517pgu.52.1592593862452;
        Fri, 19 Jun 2020 12:11:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592593862; cv=none;
        d=google.com; s=arc-20160816;
        b=PlChoO6tamnQk0HYOUzUd0+b++mbaI5bkouVkjcPoUskQtn47Jx0khkMbIucNBsa/g
         3TMF3XMDHH49OoOhhictflikEFey2GGC43353i95VizXiOrT5tc8BKj0UeSbQllyO8yB
         SQJ8WLwCPDUpMcgL2A2hN19U6rzxBduLx43BXbgye+iKksMHLfcgR7R5hys1FcQ2Ofwn
         Mo5SncRLVQ36w5Ah2rrZKqhEbXiFDaSqKhnoYfr4y9dgO1NSdoS/MhhM177hpmtSB9DG
         5vd25at6/EgPKJhG+P9yA3RHNrz1mLgOoGKBWBGPudu8K4+9yNMkPKsRu+0xx2dIFZP/
         AnWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=4cCwLXspapwlO5JNmpzGtEIMUrgS31d34ZsxIrdWjzQ=;
        b=OaW4feUwG5RnvjP97P8rvsXontIWFWe/BW8LuQYMlQLN2Nay/J8QRb1to4ZeqHlf13
         es0Nzn4dwpDNGAPUICEsDGc+6Mwot8fx5A5gyrHwUqkCV+tOtAUubLizcBi5TQE+bNMz
         z5WtaqTkhKfLsNma3ndE8sObdPf7j4czufUoayctia6ENsKehdo7Lcc/MebqAVv4K7Qc
         JTaURzmG5ad0ikjTUo5W8oKTwXHxRILbkmYUhldYyIAxLniXd74emR+dSXpGGeZt2I9s
         SZ0kkM8KdaiK5ISELrRgxwukIhAPKH2BLrNY0UVJXqBynyXc6YHfWoX0S/Ymg85rGbbo
         57Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=f8JUjkyU;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id q1si230524pjj.0.2020.06.19.12.11.02
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 12:11:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4] helo=[192.168.0.10])
	by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1jmMPh-00061F-Je; Fri, 19 Jun 2020 13:10:58 -0600
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
References: <20200619172514.GA1074@embeddedor>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <268330b2-e42b-4d62-1ff0-8462d68e498e@deltatee.com>
Date: Fri, 19 Jun 2020 13:10:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200619172514.GA1074@embeddedor>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: gustavo@embeddedor.com, linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, gustavoars@kernel.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH][next] NTB: Use struct_size() helper in devm_kzalloc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=f8JUjkyU;       spf=pass
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



On 2020-06-19 11:25 a.m., Gustavo A. R. Silva wrote:
> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes. Also, remove unnecessary
> variable _struct_size_.
> 
> This code was detected with the help of Coccinelle and, audited and
> fixed manually.
> 
> Addresses-KSPP-ID: https://github.com/KSPP/linux/issues/83
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Cool, I didn't know that existed! Thanks!

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

> ---
>  drivers/ntb/test/ntb_msi_test.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
> index 99d826ed9c34..7095ecd6223a 100644
> --- a/drivers/ntb/test/ntb_msi_test.c
> +++ b/drivers/ntb/test/ntb_msi_test.c
> @@ -319,7 +319,6 @@ static void ntb_msit_remove_dbgfs(struct ntb_msit_ctx *nm)
>  static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
>  {
>  	struct ntb_msit_ctx *nm;
> -	size_t struct_size;
>  	int peers;
>  	int ret;
>  
> @@ -352,9 +351,7 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
>  		return ret;
>  	}
>  
> -	struct_size = sizeof(*nm) + sizeof(*nm->peers) * peers;
> -
> -	nm = devm_kzalloc(&ntb->dev, struct_size, GFP_KERNEL);
> +	nm = devm_kzalloc(&ntb->dev, struct_size(nm, peers, peers), GFP_KERNEL);
>  	if (!nm)
>  		return -ENOMEM;
>  
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/268330b2-e42b-4d62-1ff0-8462d68e498e%40deltatee.com.
