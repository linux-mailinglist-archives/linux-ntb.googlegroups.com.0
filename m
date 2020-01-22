Return-Path: <linux-ntb+bncBDE55XUH3UHRBYUVUHYQKGQERZCG5BY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id A890D1454E5
	for <lists+linux-ntb@lfdr.de>; Wed, 22 Jan 2020 14:15:15 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id i24sf2139569lfj.17
        for <lists+linux-ntb@lfdr.de>; Wed, 22 Jan 2020 05:15:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579698915; cv=pass;
        d=google.com; s=arc-20160816;
        b=PlczCDNa/e42xcwY+iJSKk8RWWomnqGGSn5nJ3kBz0Sm0wah4dpn5kwi4OJXzP3AcG
         Xez5R3dIrSpq13Sx+mkt59okEu/mQt9ubDFyPn6omvsRZw6fuuTXmOb/of7hVNVrTX/g
         S5y4RrrHUcKKUktBDLKrDlPf/31BFTf2wT46IE1HoDUXrhJeJQpUVFr2KCo1SXRsBbWS
         Vf3zyG+c0iI4wOZCqnyK8sBwu5DzaFPhY8GUnomSLPck/UX5u1vzn3oDkIKuTNpBZz6K
         L072IxJOOWFPeLyOXPxNuETyU5ZPuA3SHmsBzCiSUoDZ5rUHFHRhjPSCeQE8FWjFHetP
         rlpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=xrMPiwDAzuO42zCecynwnUoL9UjwWxqDpWFyVbgftZQ=;
        b=zYe8Gp/M3awmxHbDjlKIkpYPnK9jUYzu+ZjYGvypAA1gdu4JT+P6FmDKVA3Ces1h6p
         cPmh8mXpKKOdjPn42oJEwzpp7Evp9l3vKpi+i3ITVE6BHnc0bMXp/IRQMObvnN3bjs+Q
         YbknxM4//WWwguR0+gCGwQ/smlinVJfo2K78kBYisgxqYvpny50DtFBBAVXFnCnAPKLn
         6C6PUOX508I9Zrvp7HeQgprIrRvKvASyPyfZjEHGj7tnIMIZevN0h8xm70mMEdVl/Jbm
         uI+MAeJJ+tcCkK2YZl7u1tlx3HNwwzn7lH4hM6GWLpAHhDXFn5knvF0uoT1d6cfRcK4l
         R9aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eW0+pZuA;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xrMPiwDAzuO42zCecynwnUoL9UjwWxqDpWFyVbgftZQ=;
        b=pO79JHfYig0DYv/NIYH/Wtb2HupelHhUTAROh5F4FA0Kws47YLFyg8cb0vHuNwQGy8
         8m1u2tnxiQ6iNQtMwhMYozau4d9tpuhotTSq4qyBVHqqOsNNaOmFlVO6CeHQ+74FDZtK
         Z354u6aTHiaVo4HTA+23PQ/MSn/0VwOa31oPpwno5gUAcD4+HPU06hszOwS+kSgNBHRw
         U9Es/DxYyX2WK4phSxZgtw5PSl571NIQ1W3BDEcAGgpGCbI9B6QJgHOdtkkNF2dl/oOr
         WnnZnM05qRwE0hTcr85HTBTk8w4Q1EQXb+QRcLDk5k3+DMl8reI8pwU+Iiky+M5GXyeR
         LMCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xrMPiwDAzuO42zCecynwnUoL9UjwWxqDpWFyVbgftZQ=;
        b=rI0Ub35SN4ZLcqYpzIlKvlk2wsiR1WcaFIITyynvozdFI4Fq2FQz1NPstYbwTN5HSp
         89Zi7pGwqVFBZgeByNqYphKzeJ13dnhkW+5Fj4q+9LLyKiBOxouEsmt9xiYJhyaSFY31
         MTHLEEwLDsTPIBJTT1jHanGc1KqE53Ag0u6lTakYY0OLHxGJn8lmk9IIEfeJXWqCtRve
         9mVr4wCe0BAbydjSCozP7cxLKisBOVo+N5gj/qVID557n9ieFoAiU+naP+RTTudX+DFS
         q4n40x6cgLJJdp3ILjeOWl5k3x0e5rrPGiE+Teo3icsapSLYm8I3Va3bgnXEM2hyDRF6
         JB8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xrMPiwDAzuO42zCecynwnUoL9UjwWxqDpWFyVbgftZQ=;
        b=FGoK3uUh4yOfUqdnpF1hGZ0EJBbN+18LSF3VCkqRJtisf+1oHyuwfJhpLbwcwjtrYA
         WJipPyn4MRYrYN47mz/NZgNHANd7JlOtHv59vdVOrGNuqD2JZ/e0sfRMvJHMDA+cnxFe
         T/6QHL/2rxIqAIbZ3Gs10/pf87UARHbAA6/jEKQhLp7brENE6UTU8+Xsum/TlyGf+Kwj
         acuGZLFK6U4PBztbKQO80ZLAOwDDK9jCj7N8puRHPDEYaPH3EwsnLi6NXyh0vykklG+i
         x7ve3k+YRnf00ELoeEbWNRgx2Qm3cO0w2w+nmLRJ4TO9hiZeWic7ZilxbITYDUfkLaqC
         0X1A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAW9g99Y0z8aXGqq3fEc5u8IoqrTHEHX1n5iBkllEq2qHeeIH8vw
	iuPtcv6o0QLaQDnFug0tW4w=
X-Google-Smtp-Source: APXvYqySnLyycuTJ6dTJb5h5z6jp//Ou76/ajLtMD0EojsBsLIXlRiT6wve57dphv3gzB/Cqle2/wA==
X-Received: by 2002:ac2:58cf:: with SMTP id u15mr1793300lfo.62.1579698914966;
        Wed, 22 Jan 2020 05:15:14 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:1051:: with SMTP id x17ls5420676ljm.8.gmail; Wed,
 22 Jan 2020 05:15:14 -0800 (PST)
X-Received: by 2002:a05:651c:102c:: with SMTP id w12mr19223796ljm.53.1579698914110;
        Wed, 22 Jan 2020 05:15:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579698914; cv=none;
        d=google.com; s=arc-20160816;
        b=qIUsGZeJUoGkDUcsTlTQ0LfQ2ManCyd1ruWJeu9EGIdq5sUg7NKJk1qVFsuc4EwZRZ
         i8Gnnfvg3N6cIyDk5bo144CSOdeAMGicM3AEmyHNMS/LDnCwHknGuypy4KYeriO3tTsA
         rECmK4ubSfsjKCiQf2OZrm1Q9pI/88uzz1+B80gpX3AIotdQ5DM3ljZ3C6RjaAhtmQ7x
         hC9UzvfP1eA35EJ2LSpGLmI+r+SxQGnC4QrefhzhMAoHxRbamYXTz1nQkqAFPBCR/cXG
         xGzL+CVVdzVUds4Izzl6DSrbk72greMEaWHJah1p5VS9NpxMI0r/FuGRko6P3XLxPDJt
         N2BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Faj6KZwbywL/fDhwIy1bk+O7WVLH18b9dyX96AmRRQ0=;
        b=AA1rKITtdtUJcYLpU1Wx2HWsu/eugrZWrhFFKxwzAQw/3cFJMHrfgEEZL94YKYWLQh
         cEtGre853yd5S51IQE0Am8Lw1m5RJgGLct4O2Wl+hwshaYYphcp33dUldStVDageh8Jn
         DJXy6a3lessq1gu657D6p0WjNVyVj2O2FTbShd9WIQZN0y1mDM/Z1teRopSXJ1ky5X1G
         ZU1BfL8H3f6x6ac1tzNXqb9dP50w9oWN9LCk+GxL0N/r3i9uzOOXWwgce54F2dmjKC5S
         QyQvfHxLymkNK2RpnGO7E5IcRnSYUXYnBG1JcjzvVEH0WLO73+PLHU7SkqnRc3He8VjN
         cnsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eW0+pZuA;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id p20si2010148lji.1.2020.01.22.05.15.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2020 05:15:14 -0800 (PST)
Received-SPF: pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id y4so6733150ljj.9
        for <linux-ntb@googlegroups.com>; Wed, 22 Jan 2020 05:15:14 -0800 (PST)
X-Received: by 2002:a05:651c:1032:: with SMTP id w18mr18256340ljm.61.1579698913553;
        Wed, 22 Jan 2020 05:15:13 -0800 (PST)
Received: from localhost ([89.207.88.249])
        by smtp.gmail.com with ESMTPSA id q13sm19970691ljm.68.2020.01.22.05.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2020 05:15:12 -0800 (PST)
Date: Wed, 22 Jan 2020 16:15:10 +0300
From: Alexander Fomichev <fomichev.ru@gmail.com>
To: linux-ntb@googlegroups.com, linux-pci@vger.kernel.org
Cc: linux@yadro.com, Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH RESEND] ntb_hw_switchtec: Fix ntb_mw_clear_trans
 returning error if size == 0
Message-ID: <20200122131510.d5ckfj22idh56ef5@yadro.com>
References: <20190710084427.7iqrhapxa7jo5v6y@yadro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190710084427.7iqrhapxa7jo5v6y@yadro.com>
X-Original-Sender: fomichev.ru@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eW0+pZuA;       spf=pass
 (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::241
 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;       dmarc=pass
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

Somehow this patch was lost. The problem is still actual.
Please, add to upstream.

On Wed, Jul 10, 2019 at 11:44:27AM +0300, Alexander Fomichev wrote:
> ntb_mw_set_trans should work as ntb_mw_clear_trans when size == 0 and/or
> addr == 0. But error in xlate_pos checking condition prevents this.
> Fix the condition to make ntb_mw_clear_trans working.
> 
> Signed-off-by: Alexander Fomichev <fomichev.ru@gmail.com>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
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
> -- 
> 2.17.1

-- 
Regards,
  Alexander

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200122131510.d5ckfj22idh56ef5%40yadro.com.
