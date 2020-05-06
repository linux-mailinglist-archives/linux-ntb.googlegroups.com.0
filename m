Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBSVSZP2QKGQEBPSF4GA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 360661C7502
	for <lists+linux-ntb@lfdr.de>; Wed,  6 May 2020 17:35:39 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id l188sf717633vke.23
        for <lists+linux-ntb@lfdr.de>; Wed, 06 May 2020 08:35:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588779338; cv=pass;
        d=google.com; s=arc-20160816;
        b=uKqmBZEloWKdv9kFQL+NKyziy9pYFGGM+6ADuqkWUEGpsFaGUrm9dMbLVONpRu15aE
         f41q8X2v6K2Pyj811nKVivNorZg1sPL6jHiBBmogIU2kMWRD7RnhBToZaQB1X3GHuAsy
         Mel3zfhWTKjRM1/ZyJLmcqBMa1GXgfYyzJnsxsQZBcVTf3dIfKLnDugIOgWpWCd7uwan
         81IDCYukdVaZ8NQCyynOhFkFP6E6HMpqu2fhOLRA4q3XoiXCELScviGIUIFysnTFvhAA
         R3jWZQHOiKJcwObK/5UafVad1JTQUUAN72tvCRr2q4HeCf+rHpq2YhJH2USzwk/pnvTI
         pzNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=9ZqVhIMdtyhPrYyIADK4xnt3EGcjMWNETVV/yNIaRtc=;
        b=LNoW52tTG/pEwILZmKzGfcG1pYmlaeCCl5K9UmFieN54ga3/Fd8yZTsNi+QI2FmEUF
         BQ6tmOHMunfX1znHUDZpOe3MO1fa0ro2yxCWXiO7Zc86n3Xs9Ac+MEeD/u6G+kcxf6gz
         jmHTT4RgoMWuNrnAZ5p16Gzzubu1vshSPOl98ED3/uu+unxjDP+lnjhWpsDp9pdXeE3n
         /ORdQm92NxiBs9l7rBVscBcKnZ0/qlXmk5Z7xGHrN7D8KwAaKEAK02jbeCP7wh0+L99v
         v9ijtnDyWP99obVYqPnqGseYvTth6Fpc+RUux8jDEiHhJUZixkNw8nPVdMrvWaWccz3X
         HHTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9ZqVhIMdtyhPrYyIADK4xnt3EGcjMWNETVV/yNIaRtc=;
        b=WqGDaEo08aWtnJNJQYA5bcf56fHKqfwY6QAE7rGTmCKViuUq48ZGCwzFfHm6k+4cRG
         vwdyNaHhmOh1pI/jPqOdECarvv0MGaAjOhoVAS+AT/v17TTbTT/6lCyucVMF36ciLIbw
         dExFs159Yc5m1hFBShxiYqUoHTUuYwLc+FWi4PRKorrrp/4ytdgRIWwwXZ80FIzYE8je
         mr20s0TUo6x7JksBh8rBcdjR8Ya7btX8fCAzQtrVQOBwzTJockmq2m7CDyLoEJAGUrbq
         kFrdDq4eL0c9ta3CrCwjdPlzs3xt70MnDB75cEimskny1sRDjPD7KpEaVhRVgJLWSKwt
         Vn6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9ZqVhIMdtyhPrYyIADK4xnt3EGcjMWNETVV/yNIaRtc=;
        b=aJtWzCN+UGC6hJkLJCzzajBHgD3qelLkh2MQSj1utxjQ7fu6L7QY3zmw3JWAHdsvOM
         MhehN0VsN8LFo+gtJWuJH0xXAnCt55uIlqjbG023B1Jl2gORWEGV8gRXYklyffn4BV0R
         CR8vFCIIIbovfFJ6n5sgr76Hh+jZ/OqxBiJuqG2jwzFn1MzA9XEkcjgL8GrcorWvYJTk
         WxNCxYsyFNw0nv1L2/RyttLsXsjLrcUP8qD3cqgDoqLd5TEjjHEZPd2k0rRmzAWYksxu
         OA/HOfzOHoJqvGlbaWuJWVvgAWhQchHKeNENu1HwJqq+H4gWWb/os41Dm1mO9djEDiCt
         /ZzQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0Puat53i2B/odooOFLK2ZhrwH0HWb+2T2m4yR50A5EhFSaHWQ4qu8
	59wnQ53142p7dJXn9RGJARk=
X-Google-Smtp-Source: APiQypJ/1KkUUhRFIFWNIXhAZXusBq+UXTU/eTqSpBtC/4PJ685YkoKHGUFi1e57qUTY3lgMweU3qg==
X-Received: by 2002:a67:7cc5:: with SMTP id x188mr8100808vsc.26.1588779338172;
        Wed, 06 May 2020 08:35:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:26d6:: with SMTP id b22ls205587uap.7.gmail; Wed, 06 May
 2020 08:35:37 -0700 (PDT)
X-Received: by 2002:ab0:238f:: with SMTP id b15mr7801754uan.32.1588779337647;
        Wed, 06 May 2020 08:35:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588779337; cv=none;
        d=google.com; s=arc-20160816;
        b=wJ4w/VXogrN8fxmJTzNTG/k11uPUlcq2HkypmkirISNk1dFMDQ96336bUO/cej27/f
         iF4aPFq5Up+rq/9pGe+7QNXULc60gZLynI9EnGzEw3C/OH26rqnvDIwhanukZaj/2MkM
         Jep6uY0gpvPs62zZUilJctNCGWvdZUnqsE74GLaV9q0YaBxm5V90InHsRUBs5FLRqmxX
         LrJfyIvXtGYlHcVNjDMWHpKbBI8Bfoo9+IXs/Gp/IMzPTdPepPnUrcPWgOQ0EAq64ib9
         F4xWbZYRyVnB5/CTJAU5w74NG12Btb2mEA3m43Hzao9Z7WfEKR6isu8uoa3Z8g5w45e4
         QGIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=sze7F0iIO0UZCvGL5LsMwDjxzfyQMarYK5/xPcKxqTg=;
        b=FJyQOpqzWsd3Fod5EXhk5T9hte4kewYrsbnMioh6dAjWddMhV1toDWHWXOcgzJxa1F
         swLy7SozZVj87YDYqauJD9QtKrwlSltD4JiENlnw23CpS+Erj/ilP6R8bULNDNm3S4oz
         278riGTywUpu44reIF35MOOICTbbJ1sgNZ0OErisGmLQABQrp7C35ufWNmRxB2XlnE21
         hJGIkWtyiCyp92nbfka+T4mKexax4MnhnN3J0+RPwhFzZQA2V3N3fh4JGijIBZ1+lbsI
         2hHBpb567xpCguJDJoi8Of0yduGJY95hzXkBGUn9dk8uQGsPMr/Fo1sS1lGdxmWXccwm
         o8xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id a205si171026vsd.2.2020.05.06.08.35.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 08:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from s0106602ad0811846.cg.shawcable.net ([68.147.191.165] helo=[192.168.0.12])
	by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1jWM58-0000e4-J6; Wed, 06 May 2020 09:35:36 -0600
To: Sanjay R Mehta <sanju.mehta@amd.com>, jdmason@kudzu.us,
 dave.jiang@intel.com, allenbh@gmail.com, arindam.nath@amd.com,
 Shyam-sundar.S-k@amd.com
Cc: linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
References: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <2197ff4b-be91-7c73-ad2e-f3849a088953@deltatee.com>
Date: Wed, 6 May 2020 09:35:31 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.191.165
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, Shyam-sundar.S-k@amd.com, arindam.nath@amd.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, sanju.mehta@amd.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	LR_URI_NUMERIC_ENDING,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 0/5] ntb perf, ntb tool and ntb-hw improvements
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



On 2020-05-05 10:21 p.m., Sanjay R Mehta wrote:
> v3: 
> - Increased ntb_perf command re-try sleep time
> - avoid false dma unmap of dst address.
> 
> v2: Incorporated improvements suggested by Logan Gunthorpe
> 
> Links of the review comments for v3:
> 1. https://lkml.org/lkml/2020/3/11/981
> 2. https://lkml.org/lkml/2020/3/10/1827
> 
> Logan Gunthorpe (1):
>   ntb: hw: remove the code that sets the DMA mask
> 
> Sanjay R Mehta (4):
>   ntb_perf: pass correct struct device to dma_alloc_coherent
>   ntb_tool: pass correct struct device to dma_alloc_coherent
>   ntb_perf: increase sleep time from one milli sec to one sec
>   ntb_perf: avoid false dma unmap of destination address

Looks good to me. For these 4 patches:

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Thanks!

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/2197ff4b-be91-7c73-ad2e-f3849a088953%40deltatee.com.
