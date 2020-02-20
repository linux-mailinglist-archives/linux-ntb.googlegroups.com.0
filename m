Return-Path: <linux-ntb+bncBDU475XUS4GBB5VLXHZAKGQETIRKUNI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 72480165A6B
	for <lists+linux-ntb@lfdr.de>; Thu, 20 Feb 2020 10:48:38 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id p8sf1501613wrw.5
        for <lists+linux-ntb@lfdr.de>; Thu, 20 Feb 2020 01:48:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582192118; cv=pass;
        d=google.com; s=arc-20160816;
        b=N4LZVgEKI1ugkRjmX1HSMDMo0AaEauHlPLOHBZCEqngGFMgyEufgfufnwMw3ZW0A0b
         DKRDanW+26IzFc3wKNskyTZrX6Fw1pBJcLhEF5k6Hpo0hJK0t0utvYzezzsBvZhcGVng
         IPSDiPlp0JcKAM53SYma813s3E/oG47KLSTkkql3sowSDSk5ZYOG4Q6zjoVeM6ncpdnr
         ILUj5ueFek0Fb/eF4qW5D0cCo/AggwWS2r9FbLWeGbhz8EV2GAZkGspFVf6O8kg2pBTw
         mYiD8wwCVyx7Qe9mzxGqCkt8c9KGSMnX4NLFQQunlbfXqfOE/dfZ7YjBMHyLKdEXraZl
         1Xkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :to:subject:sender:dkim-signature:dkim-signature;
        bh=KFN0gNSWvfxyERiMycTRUTl25rcTwEknpOUW1Kiz2M4=;
        b=R7NdhDyravtoly4dCeLmEcCys0EZo2PadgQLrEHuNqlSaeaxtDJJR3VpSDtg3p6RV9
         traztHflqRy5wGz191FItk/wqZuRy7PFf5B7IlrS6UPN1b06yoaUuBImSQSej4+b/ekD
         fH8P5AJhijF+pyf0Y05Z5gYt820bndlf4BIUHZlnlDYcRU0U+dvCepRV+PmMfBNaceqj
         ZQcWc5Cq38L1KEBkGIi8yqhnJi/590AYUEKFtmmqrFH+1/0VUuKjzr2iKfN2F+N4Yjqo
         UO3+m4wk39yk/R5wpFs+B0cTNVaMu8RlWh67k0xfKs5yfSR4XYzP/SIjBOnRcS5rHZb6
         Nw1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WkpaZeHV;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KFN0gNSWvfxyERiMycTRUTl25rcTwEknpOUW1Kiz2M4=;
        b=gKCDMRPuG9j4levDbEUPDlFoFBqjJFMOIbXdjGcVwbYQJw8q4hHJ2TQ9l8/z69LRiP
         kCr9Xa/k7uOTiy0yeNyEJVlUXAHk6NjCkNbgSZi0M+ci9EyJ8bFRqcFbd/Qi6oLvaWBQ
         WSOz1KietluN+WiqcCeJsuTGu1z/iJAP2KIFwjo6g9nFlxXQngXAwxjITjXyCm1m+Vi+
         WM3oDAKGrz5p/YN33zCERVk6VQ2gBHGiK/qzI2qXuWHFct/jg0J4oh1AUTfb3jOy6XXY
         PRRcq8XR6TkjU8EoSzYqsR3BgdOvZCSchPYjZtB/jb9DsNV5bXM499owacosdlBcu+I1
         U3Zw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KFN0gNSWvfxyERiMycTRUTl25rcTwEknpOUW1Kiz2M4=;
        b=phQJEtAro4+QuM1FAnlJPkUHIUWkZaueZ0RYfPtVM7ZO2gjtHkpqCrrOP7SlQ+H1Vb
         XvK5IGPoEGiW8u+JNcVDEHo531RjBNwaviB3oPKjtMu/3DlZR5iYfVPMb9w/Z9hNNJhk
         X7fQHze396Ko9UCB+Zexapj0hGFPkXA8zsaGOKsYOSmBEvJ2PM/VpommboKe7AIPDVpc
         0J8+ccHsGU7A6tZaNvgmvsoz3LLQpHrIastODXTX48jl8lzNfy93jRnMT1te5nnMLLOB
         fL/CvxFjnIypcid6jWSljcaM54VF4oWPyYtXv22k9M7IWS4UxqjJ8EId2WVHUzBAnEGd
         +zhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KFN0gNSWvfxyERiMycTRUTl25rcTwEknpOUW1Kiz2M4=;
        b=HUwSINvxJQsSR+jX6XaL/t3qKmU9RbfJUoNP3ZRDBsdnfEtLydn4swL+u2P0z2IRf6
         6/pVz+PTLfwPKi/c2BTsw2GZI52xhxiN5gStvgflMiNZgQ7nWfmumDC/4HE8NJE0zxHJ
         co4LTbAmdiYfjgGM4NNm/6EjID/pBuDDMZdLoTr/EqkFEf1Oof+MLBTc3Deok3VwGH40
         8PGSFJGeAY9y57yXLwql0yABA9scs9LIqTtxAjMJHq/5ZjCxzwqw4PE/GbzeHDtlIn1l
         QMcz66vEbgkW50+DbjtbjYgal4wUTZT4IJK1NAkBzQ1pqNcZB5PHKTMBcewiMZzqUp18
         DVNg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVLhyP4osk2IvSj8F6H+50ovgMLoSh5BIpkzOl2vafFjsoi9CE+
	RZPdzc00bF/8sTlK0E6LpTo=
X-Google-Smtp-Source: APXvYqz4wFtHgIbkJs459/BAn1qg2VgTzxrQ+vBmD1tbIPmj3YRvBdnECr+u0zELZshniRBkG0M6bA==
X-Received: by 2002:a1c:7f87:: with SMTP id a129mr3548704wmd.156.1582192118109;
        Thu, 20 Feb 2020 01:48:38 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a7b:c4c6:: with SMTP id g6ls650607wmk.0.canary-gmail; Thu,
 20 Feb 2020 01:48:37 -0800 (PST)
X-Received: by 2002:a1c:1d09:: with SMTP id d9mr3552550wmd.91.1582192117648;
        Thu, 20 Feb 2020 01:48:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582192117; cv=none;
        d=google.com; s=arc-20160816;
        b=PzBwr+bjXW6qrxVpxFDkNUKe0X0Xh37RnzOilWsx0SpRDGFY7aW9m+toWoexEFx3qL
         CLy7R1k8WGgZecX8xN1/Pw7u5s1fQRxpmy9MzrQvFF8sFIBcmIztrC3lPYBHtT3tz2VK
         N1RqmRMXODVZyLz9MjH0gkMITSEurdmnLZo0D63CeAHs/ax6b2TWvW1lFeg/KiD+yMr5
         2wnwbohQ/Ap7KfwAmcWLK1jRZUxLOm/UU8zOBUSyyonQB4wXeZgYrTtuC6f/UK0MUgtS
         Xa8Ej8g5P9fmH1ubPnXR+dsq6NRCE+Hf8D1+HKofTPp7UtAVQyyQx+l6ATRwcj4QgVLz
         GHmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:to:subject
         :dkim-signature;
        bh=E4lJsyRn5c8MRRBS5Cfwnz0ljZFD9tB/hN4lq7BDblw=;
        b=Dt4AO4S32ZDf+BlwiBIOHWtaT/myycO1gLT5r8YhN+ahFtOLj3LZPc4TGb5iwBc+7i
         L/CtDbkEDCDbhVeY1PdZCwIEa6ANZnkFVybrWkoLdAR8IbXjXWXUAfkOuMIPKwTYxD3P
         i9gGL9kjhdjqi2pKGBTtgo20JzALOB7pqCejAx7Ix0Chg2oH6TqP3cUhBTyy5/DHSEQc
         k6QP/Y2Bt7RMQd+GHv0rqmauRDnldhNizFp/rOYKfH4XYMQEgzCFZHvbuvxXmxxAirzr
         LVtQL46+4xInIQjAQkTMDo8/efW/msxC/i18+2LsG174wYmzs9IDqwAm7qtjzA5rp68/
         EXuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WkpaZeHV;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id i15si176826wro.2.2020.02.20.01.48.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 01:48:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jirislaby@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id n3so1263010wmk.4
        for <linux-ntb@googlegroups.com>; Thu, 20 Feb 2020 01:48:37 -0800 (PST)
X-Received: by 2002:a1c:451:: with SMTP id 78mr3269673wme.125.1582192117251;
        Thu, 20 Feb 2020 01:48:37 -0800 (PST)
Received: from ?IPv6:2a0b:e7c0:0:107::49? ([2a0b:e7c0:0:107::49])
        by smtp.gmail.com with ESMTPSA id k10sm3752046wrd.68.2020.02.20.01.48.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 01:48:36 -0800 (PST)
Subject: Re: [RESEND PATCH v2 9/9] ath5k: Constify ioreadX() iomem argument
 (as in generic implementation)
To: Krzysztof Kozlowski <krzk@kernel.org>, Richard Henderson
 <rth@twiddle.net>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Matt Turner <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nick Kossifidis <mickflemm@gmail.com>, Luis Chamberlain <mcgrof@kernel.org>,
 Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Dave Jiang <dave.jiang@intel.com>, Jon Mason <jdmason@kudzu.us>,
 Allen Hubbe <allenbh@gmail.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org,
 linux-arch@vger.kernel.org
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-10-krzk@kernel.org>
From: Jiri Slaby <jirislaby@gmail.com>
Autocrypt: addr=jirislaby@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <518a9023-f802-17b3-fca5-582400bc34ae@gmail.com>
Date: Thu, 20 Feb 2020 10:48:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200219175007.13627-10-krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: jirislaby@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WkpaZeHV;       spf=pass
 (google.com: domain of jirislaby@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 19. 02. 20, 18:50, Krzysztof Kozlowski wrote:
> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
> 
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Kalle Valo <kvalo@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath5k/ahb.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath5k/ahb.c b/drivers/net/wireless/ath/ath5k/ahb.c
> index 2c9cec8b53d9..8bd01df369fb 100644
> --- a/drivers/net/wireless/ath/ath5k/ahb.c
> +++ b/drivers/net/wireless/ath/ath5k/ahb.c
> @@ -138,18 +138,18 @@ static int ath_ahb_probe(struct platform_device *pdev)
>  
>  	if (bcfg->devid >= AR5K_SREV_AR2315_R6) {
>  		/* Enable WMAC AHB arbitration */
> -		reg = ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
> +		reg = ioread32((const void __iomem *) AR5K_AR2315_AHB_ARB_CTL);

While I understand why the parameter of ioread32 should be const, I
don't see a reason for these casts on the users' side. What does it
bring except longer code to read?

thanks,
-- 
js

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/518a9023-f802-17b3-fca5-582400bc34ae%40gmail.com.
