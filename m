Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBSGZRXUQKGQEYRSQPUQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F45B625F7
	for <lists+linux-ntb@lfdr.de>; Mon,  8 Jul 2019 18:18:18 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id 21sf6486747pfu.9
        for <lists+linux-ntb@lfdr.de>; Mon, 08 Jul 2019 09:18:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562602696; cv=pass;
        d=google.com; s=arc-20160816;
        b=HD0pUlO42ddch7w8n2x0wnGO5N7OzBonQtI5LBQLM0ULJhcew1YhyHJ9d3d4+G781N
         6+1u3u6Ol1FCdmRYvAxBFF3iYECDo1aIOt6g4YuG4dETs6aoZncRU7iDN6QJHyFWRk6y
         Q3wOh2Jy0tNW0ElsatvVu5ePvrHNLFt1xs1cBlJAX/vfjF8cqyPdLHJZuyPV7JSff6Eu
         U1u3GFvWSv1AEfYKS3lxUl4m9YNjHuKm9Yvbh2qpJm2YXFbtV0vh1Yg0ji2aqoUBiwLN
         QI0FNS8mAo9wzE1RtXmE7LbeQKXCjqbo4c8C75fulAROG0L/U0n20GECGvzFhvynoTB6
         TSjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=9e3W/XTzWnGgfpo2oHYit3eoJTho65vjqVpH2xt3FLs=;
        b=nQgJyTagPfQ6KUdtLyx0cV2cOP5FnK4XUqhe8G68m481UWQgdnR7fb0H4yC68CeIMo
         vH9TzXx9uFMayWt2iwjrDgRqpn/v1f5rqboJwH6KGRC7n+u4Z/P3jfnKlwoOOaNwMAQ/
         Dnm0XULEELt2OcKz8gKmFNCs1Y0HDnob5/kdRJ/1gdNc3Exy7V7rUn5r3s1UkRXiPc8t
         EwnaOT+QD5lPZJVKieK1iKSIhx/LhvtJouAn6GZFhvGZmwxSgPx3hA8zxME9Pk977+ze
         pWZCXlIf7HkJNQYja9oY/XKBqRCK2jfnrExz/1KOozHJbJ2HsWklWYijjU/p5cYSL9dv
         +Mmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9e3W/XTzWnGgfpo2oHYit3eoJTho65vjqVpH2xt3FLs=;
        b=ms8yobILksFEXhXlx/5PgppHXlmxBAyFJOfeh7M/+V8uWHdaWfB7pssqGzlYdYcJ5e
         FFhryUWz8pAEBP761xWWr496h8YmUM/uDwurMY3vcYnPPCxbQAtapGDJAlOQP4b142h1
         Bvj0CBt6EkY9msAXVJZFrF1Xsl4d3WhzJcUcgsI4jLRw/FuhyisAHIshe0yE1LJzKapv
         ZRV0xuE9w147AdoURbEjzXaQi/O/x2Vcr2AMHcoyFyTGRwktMHSENoTaRpfB9s382He1
         eaKJaTenq35Hqg03HrJtLJaaEU5SA4Orc8Ha9QJpUeyIk5M4AAP8vmx1pIzwGMhSoWb/
         gT+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9e3W/XTzWnGgfpo2oHYit3eoJTho65vjqVpH2xt3FLs=;
        b=VMD2ucFaiAMzuf0yFYLAPuEfzl+kKmyS4gOiidnSWRb6PIrjYpU1dX/KiOxbvxoiHR
         CxKVfPnu6XUZ96VVYO0vt+/NCY3f7R4eP/Uz/EEO8Z8tzRb2NuHunFA582CYRl0WtGPZ
         1kDh8pS/kUiJS5C68guwQfg3KO/7/5uz5JOdM0OGRIx/izZ4ig8bw3FF+3yqlEdp6h+Y
         rrZveDI4OaiMIkYeItWvLQU/uMkCL/Jl4Wje+0s8Ih278JQaOQ7yXhllC0sg/b8WzDaA
         aywtUsbi42yAbDfGeGBpdNwto4UdkHi0vQdbiXVCEH72ayunu+ucK2AI+IpXzTmCwllU
         VWlw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWpYh3C96qOjG2YAKsKeX1qhqM5In6oM70lBHZSlHByoMv/CASZ
	F5PAf3djGcg3YOWsnW4EZ/k=
X-Google-Smtp-Source: APXvYqwtsaJmz+o8z2qnzpUcgbxgXOkf//3dc7VKpN+Yy9ak1Gq9ylmm+etAZXU/tK/bRaS058g8YA==
X-Received: by 2002:a17:90b:f12:: with SMTP id br18mr25855929pjb.127.1562602696833;
        Mon, 08 Jul 2019 09:18:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:b518:: with SMTP id y24ls2867292pfe.14.gmail; Mon, 08
 Jul 2019 09:18:16 -0700 (PDT)
X-Received: by 2002:a63:7a01:: with SMTP id v1mr25382199pgc.310.1562602696408;
        Mon, 08 Jul 2019 09:18:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562602696; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4gEau1iz7EdDkI+Tru1D21wF5vBwWly35x+hVaaTYl9qBVrnk4Fia3yz2xPi4v9HE
         P0KSSMlCcLZp9Sv4pGzcsLMDj29BtC7mHiYLKf+Pqxh/TFtmqAg8PHuV5sfJ6KJjW8eE
         IQJw0gwalISnn1CqY46hXQ2CAZFnSur51jc0zM4DHyE1InoWiQr0vUQ185LfXSUNYjtK
         Q8uXpKDSiFxTmdOCvHF/zM3kY6Ah7K1/H7K+kNQuNZTUSzqOdo/NwrsQNSpnfk7nqp75
         FsRvoENuw0WT8zlxi2nQSxkvBjxsEI7P0TrrFDOEvJDHYlClqwxgun/6nkYSjd92qUlT
         6bNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=DUiN6Quhxpc/anmMCHlLumS4xA1OhjvIi3QoHkbZAps=;
        b=rOX3OC2UlS8enDWfX3lASZ17PcY20gKPz2cd7/dj8jDdGeiGWo/mdf2AZDTb9tMvn3
         NsgoE/c+FFL0STRWaEIMmybPL8UQQxx7HICL9gNpyob7gzFo8Z8zY0mWeGzEHlKTKGP8
         aBzjamRqL7zrWGLq5LKF3TqnEPKVT5h5nbrKCQkgO5Y5j7vpHh8pvK8ZB7UB/Tzoi6HN
         jo7bPEI9GpDP7bJaBBYkNysMY25uQ4ZEMQpc+QE2mSDVyORZMxLE4L3X56m4uDwb9F8F
         PGD7tuued4KgJPcC/1NbLwTuEfu4qSVG3sdeAxBhXUS5uGm4s7+VGf4s0ccfOyx6ACPW
         Qhlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id h14si388046plr.2.2019.07.08.09.18.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 08 Jul 2019 09:18:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtp (Exim 4.89)
	(envelope-from <logang@deltatee.com>)
	id 1hkWLE-0001Ld-OO; Mon, 08 Jul 2019 10:18:13 -0600
To: Alexander Fomichev <fomichev.ru@gmail.com>, linux-ntb@googlegroups.com,
 linux-pci@vger.kernel.org
Cc: linux@yadro.com
References: <20190708155717.wh4vweidewab4dpz@yadro.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <a9344325-4d43-ff3c-37ca-ecd948cce41f@deltatee.com>
Date: Mon, 8 Jul 2019 10:18:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190708155717.wh4vweidewab4dpz@yadro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: linux@yadro.com, linux-pci@vger.kernel.org, linux-ntb@googlegroups.com, fomichev.ru@gmail.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ntb_hw_switchtec: Fix ntb_mw_clear_trans returning error
 if size == 0
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



On 2019-07-08 9:57 a.m., Alexander Fomichev wrote:
> ntb_mw_set_trans should work as ntb_mw_clear_trans when size == 0 and/or
> addr == 0. But error in xlate_pos checking condition prevents this.
> Fix the condition to make ntb_mw_clear_trans working.

Nice catch, but you'll need to resubmit the patch with a Signed-off-by
line. Please see [1].

When you do, you can also add:

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Thanks,

Logan

[1]
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#sign-your-work-the-developer-s-certificate-of-origin


> ---
>  drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> index 1e2f627d3bac..19d46af19650 100644
> --- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> +++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> @@ -299,7 +299,7 @@ static int switchtec_ntb_mw_set_trans(struct ntb_dev *ntb, int pidx, int widx,
>  	if (widx >= switchtec_ntb_mw_count(ntb, pidx))
>  		return -EINVAL;
>  
> -	if (xlate_pos < 12)
> +	if (size != 0 && xlate_pos < 12)
>  		return -EINVAL;
>  
>  	if (!IS_ALIGNED(addr, BIT_ULL(xlate_pos))) {
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/a9344325-4d43-ff3c-37ca-ecd948cce41f%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
