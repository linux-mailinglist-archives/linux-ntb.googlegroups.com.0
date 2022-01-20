Return-Path: <linux-ntb+bncBCF5XGNWYQBRB3HCU6HQMGQEV3EOFTQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE44495702
	for <lists+linux-ntb@lfdr.de>; Fri, 21 Jan 2022 00:34:05 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id s7-20020a5b0447000000b005fb83901511sf15061369ybp.11
        for <lists+linux-ntb@lfdr.de>; Thu, 20 Jan 2022 15:34:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1642721644; cv=pass;
        d=google.com; s=arc-20160816;
        b=icGhIe8Ch1n9uzWfuJf+r4HTIIwAywDHp7iPTyQ2DQ57Zb+MhNZkSac4+1sKGn82E0
         2JADcJPUZeZGEgI9rN5VlfOqkYp36txVU+ZzYYO6JdSKal8eH638gLCXKWTOwqJesZEC
         2cNuRVNt21Al/0uthyroPJ36YzhDZBTmStFQBs0xnqZfj6eEEZxpnEWnc1S8rFHYB0Qw
         VtWveoAtDhwChS1sfWeLzjaap41dE+9qO7dfd5LjEC1l/RHbWKJ/hzvx2EcCMrgmeEP+
         1vSJnItFGBtbb7vCfMpCP59vTMgk0yDHlwoecCVvXN24ClLESQpUAxngA5YiJ6hU3Gy2
         thsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=V9aXmDdNf3g5AFMi9M3YGIkoboal6EWakJ8P/PMF7To=;
        b=cI6nea+sXDVywEz3ncz0+ru92K7wNSmrFmigx8WBxlQ5HbyiGUydi9V+pEvjslUw/f
         MFxPY4ZimHGr3Kp3VAmzm7Sq49tx1KzEyHl1MYcbW/vsttH+UUrsBfqPpS3HcTyFAzOr
         QAXHstquv8oLrggU8xS2Nuh5sMXsXuH7QDdeP8Ip4U5vi326UUt7HnSVXwAssKP5wGkF
         saRJsLPODCSFKp2y7Lj9zzYosBxXmu/KpG0LOfepJ/mIQj4waeYNRUSfOq83m7D0toWv
         PkR4PFBUSy20eLRUdoxwSFm0rg5rCM5/iN/wKUcTLEOFTeXdc1+0d5nNJlqXigbF8eyp
         3bLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kjnvRURd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V9aXmDdNf3g5AFMi9M3YGIkoboal6EWakJ8P/PMF7To=;
        b=bbyQeu88leZQGa5mci4T25qw4pmzIveiTonnxYj/1r7NrTFwOBn8po7QqqzR+boMz3
         ZwBNPYrriK4CLiENnkPgJ20CuuRng9XuemPMECNEODSh5Vv/kla058i/k6Xh+pqznoFV
         pibRoWDMD3GqdGqfaBKqqNW6YcU7E1yhZBhGu98Tl9rLsjILTSE7y4rx4iK2GHJ255iZ
         LQttKlWjl1L+J5pZwKNl5d5ZVJSQhGBMy5neIfHHK9UTMg6PnXywsToO1ckghdt9Ravo
         bAHf7xlXw6QLq7uRjesfzzY+rolv7rkcHvKzGlHP5ulLBjX/eB/pfqnFB1xAML8JvBj5
         1dIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V9aXmDdNf3g5AFMi9M3YGIkoboal6EWakJ8P/PMF7To=;
        b=mloBQlJjLG6Jia/TeK/1BmV+aE/l+dy5NddHc2raniVZRTQkvEhxi1Fhfhzgvg33B1
         /1SMby66U+zej2CQuL+1b5ZPL6mevwFOZeQ+/S8DOIW7BMdJEvn/pHBUla3kuPX8rQrP
         PPUc08vJ5jRlY+azLWSQ0y0Q9ziekL7D3BHR47yVerdnwS2h9KTcSUn+Seb9WWILlNae
         3pWN7LZF5xuUMKBRjnNfPWDwT9aO6rX0rRvlogutioyFpmCQ81JgAje3RFEMSnAY56uH
         Q5oVRHP7Bw1BEJBILPuXKbXVhYsA2xoA9rcBNLhf2unFs4SEsk3hS+BFCW0gR2M0S5DF
         //bA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530+DOH4qHpIFL9Gh3uPlqJrk+EUFx5QnCGHgXHahxskr/LQPuCT
	OsUpTmIGU3YyIgZr+67Cu78=
X-Google-Smtp-Source: ABdhPJxR7JWVkEykDHyYT7OLCtSsZDg5BuRRYqLl21HpyfmTBiKbTdxYNHwHUQZ/5JMUk+6wNnFPuQ==
X-Received: by 2002:a25:a101:: with SMTP id z1mr2406255ybh.310.1642721644492;
        Thu, 20 Jan 2022 15:34:04 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:1dd4:: with SMTP id d203ls6928663ybd.5.gmail; Thu, 20
 Jan 2022 15:34:04 -0800 (PST)
X-Received: by 2002:a25:d702:: with SMTP id o2mr2337399ybg.732.1642721644071;
        Thu, 20 Jan 2022 15:34:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1642721644; cv=none;
        d=google.com; s=arc-20160816;
        b=Q6cGsDzfFL0vDRvgobPp77L97TN/K3KvtltmbDLUKUdYZiQP5bGXONGV0sCnS/d1US
         1w76Yc5iTi78wC2fxl8um3DokNhxica4Sn5rcpIc+Ns9jMN0wWqIxpiGAg5oA+hK/56t
         oesy0V4UtCyU/ZSjvEe6BA1GR/pbaOdsApzriCP/hNBDwfAXptJwhaW8JhzzTWWlfog/
         xasdWvGKwXHv/Uf+qT8oCNa7pjXTxqELWBvrThSOj0mEVYwF45lOpyv5qW368YfGa6RU
         YcB+E1hH0rDbG6W9UQk9S1Rcvl0e0/RTl4gmTDkLuHDsc1TPMRQevpD0f2kG1bMXmLZt
         ZKuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=W8u4xvb9YGTbkR+XB2tficjJLp06bXV9VHY3GrFF5AU=;
        b=exPDYAjUPhCpq0l1At0iPVuSDnvG3GsdBRgV4QRFIECwToVXEZ0xUyc/plhrxVJNd5
         zO1q1IYzEJuCt+fve4Hckh4EtmjrGNpnEzqJQIJL2gLVRkSq4s5R5q8EeDJosW/tP8WZ
         stiDWtemc2Jfk1ptrSTJZ2lNJ10DCr/EP/qJ1jPeXhyAsbzPwwyKwxXEKSN+M5M52LnP
         RngskLlQefncUDjLSVzd7lL+ZzuAYhx+wQKrKbyeblUWRhkhwR3C6Fj6Jp9XZtkaNXFj
         S0aUyZJw2kv8UTn21N5Dz3wO73QL3uzIMVc3pd0pk0sPkrgi8nMD9GYc+JUF0sL+570w
         9n3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kjnvRURd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id k8si489253ybt.2.2022.01.20.15.34.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jan 2022 15:34:04 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id d12-20020a17090a628c00b001b4f47e2f51so8908309pjj.3
        for <linux-ntb@googlegroups.com>; Thu, 20 Jan 2022 15:34:04 -0800 (PST)
X-Received: by 2002:a17:90a:4305:: with SMTP id q5mr13751808pjg.222.1642721643308;
        Thu, 20 Jan 2022 15:34:03 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q6sm3168035pgb.85.2022.01.20.15.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 15:34:03 -0800 (PST)
Date: Thu, 20 Jan 2022 15:34:02 -0800
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH][next] NTB/msi: Use struct_size() helper in devm_kzalloc()
Message-ID: <202201201533.975AD386E@keescook>
References: <20220120230247.GA40182@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220120230247.GA40182@embeddedor>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kjnvRURd;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jan 20, 2022 at 05:02:47PM -0600, Gustavo A. R. Silva wrote:
> Make use of the struct_size() helper instead of an open-coded version,
> in order to avoid any potential type mistakes or integer overflows that,
> in the worst scenario, could lead to heap overflows.
> 
> Also, address the following sparse warnings:
> drivers/ntb/msi.c:46:23: warning: using sizeof on a flexible structure
> 
> Link: https://github.com/KSPP/linux/issues/174
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Heh, the variable was even named struct_size. ;)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202201201533.975AD386E%40keescook.
