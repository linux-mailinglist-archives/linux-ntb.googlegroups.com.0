Return-Path: <linux-ntb+bncBCHOL743RIIRBXGH2OEQMGQEGGCN7EI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D96940109A
	for <lists+linux-ntb@lfdr.de>; Sun,  5 Sep 2021 17:35:57 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id y10-20020a056402270a00b003c8adc4d40csf2285955edd.15
        for <lists+linux-ntb@lfdr.de>; Sun, 05 Sep 2021 08:35:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630856157; cv=pass;
        d=google.com; s=arc-20160816;
        b=zoz4+5qsz5rwfNLsagxiRHe484GUhIkgIHHhodd3Ial7X1e20N9zwwbpkFxiK3H951
         Zg9XWbsMrpMeUgp4XcjMada+aaMzyqgfW/TkE3dn8/9s9L+TVJhWsucG1yLniJFZWVKn
         RjtMYiKN/Dnx1rnRie84WcUufRwILDnFXIWDxS8zNZv9kIf1OuQJ0Z3kxrH4bkmdCn9k
         aUANLG103+HltYD0xqI5RDGPVRKhgsYxNvxNoaiZm4ZUdzC0xyDi/5eCTP1LY1fdceGg
         DMQHI3ZjI2QkvHn4EEsG+B7fwlD5YwBzDY7belQbfhkfY6/LngSxgr2uX77oiyWvvLNI
         l1sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=xC1xbbrqf2fKNYTMeccD67Mp/ZKjKiVW4kE773yB6iI=;
        b=tkWBqxSwr+k9wHh8rrOsY9dhUIdKulLvdvTgPOYKAttR41MZA0JwxkEunEV3DEmcjW
         LUnwMeZYBS40CiI4myxVsAjQPBXRvMpMaHRiI1h8CgWZqBPtD/PerUglh0dgMbxMDQgU
         W6paf23RZUCRZswp5xVkH/QWGOObrVP2EhQMreO6QXmNtwiB3tJt9PcvqoQZWoA9vI+g
         zpxQ2sQnPPignOg385vDsEFVrBim/i22dPlKyGLzONCAGCOk7wxrq4oNW0JoVETPpf6n
         i1gC0i2b18MCmsD90pX6vIKaNHERGF2hj4RzwfiKkvu/hG+fp3MYT3OtI/7k2vlOGPUZ
         /xOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=YvT6EUl+;
       spf=pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xC1xbbrqf2fKNYTMeccD67Mp/ZKjKiVW4kE773yB6iI=;
        b=DD5Q0fCCn2TKSArmti4hzK1vMdE8/753nQkmwGEPmv2gu1TyACfviKv17rd/CyIvAw
         HPF4cLr/Gn5fFWzYR4iv0UgOMpO9/8rLUQebhkF9ryj7WXNSaJk05LKoIDcSnqOU7K8b
         vI4iaMZN5HXwF3W0lFMJ5rrVu65fMRBbbQHI3G9/mG0kSiFHdRr4XaCef4GFXxaHreQR
         jO/htMcfPMvkVP9DrQuvs4pNeCsXyGWgtkUVkmBNy0zAN3COPxmqCi5oCuHn1s1us3Gf
         w8Nf/zqo+/B6D7MsTBpS87R3JSCeQv34LtevFpLFVAdJIy97OaR63SL134NbX3K0UO6x
         suQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xC1xbbrqf2fKNYTMeccD67Mp/ZKjKiVW4kE773yB6iI=;
        b=Mr87DDUGSIIz1aTWE72byYrNq5YoCXm5uPv+YxkVvWWrDypAcREXE8n5qnG0NtZ1x5
         uFHo1izJbK44Sl5a+gvO5U3OuKhJuIqS/xCK1QXCPwnAV2sfFgxWgiY4WOfTSXse3HrM
         Cd05Dtvwlvu9HmYylC26dCR3GucZlwGtDLLYqvd4KGlZz88NhqszRYD/y9Q0vT4sK1ie
         FA00tnQ3jWYB0/A4Rv5yrAmgbX6LmEhliCDh5ao+RPlISnjpvh6jBTKH5SSINipw4Osk
         1AUOxSlajcEDMWIgfqUze1yaXvRug30SCDjTRdIfHCDPPCDKagbVbB1J/oZc0Ezaup2k
         klAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xC1xbbrqf2fKNYTMeccD67Mp/ZKjKiVW4kE773yB6iI=;
        b=HSVdXUCAfx/43p8VfH+/3BkMRO2yMeebUWOcDgYcngqykNMEsJGuhqWE7yz2EM7tZq
         QgQ8HlL9TfRFh4zHUg3/43HI5n20f9lwvNpblSmLN6mbMT8tchI7mcKQGjJ4Isy9K00Y
         c0Djm4SMLhlooavvzUqe40gVhr1Bc8kDEWddLy5n5yoa71kQvAmQWB+OkjOfNE2dzXs4
         8WJgJHAuE3P3ogHnttvcjoB0/LRUWRbg/3rx1rJGEIk9n/zbLnEt4UvHnPQLqt+fsiIk
         l2JIn12p1hhioAr7P1unU5oU/zDZI5eNFDrxrSSDmFI1+rbe4qGwTEYDKOq/dR0LY/GH
         yOUA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533mKrNRW8eZ6ZjBhhWJXHUFCUX3Cq+VoBNS8Vi/0dmTJ5auGXLz
	3rOZe2kpoDQQZjd9bwLwccI=
X-Google-Smtp-Source: ABdhPJxyaWx6Iud3+wP5T6xUpt+9Wrp08b1noF8ay+A+FKQIMbHEqd1iQSfx+UK3CY+ZETURkZ5wXg==
X-Received: by 2002:a50:ab42:: with SMTP id t2mr9270651edc.113.1630856156855;
        Sun, 05 Sep 2021 08:35:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:1644:: with SMTP id n4ls1889334ejd.7.gmail; Sun, 05
 Sep 2021 08:35:55 -0700 (PDT)
X-Received: by 2002:a17:906:b1d5:: with SMTP id bv21mr9370522ejb.346.1630856155864;
        Sun, 05 Sep 2021 08:35:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630856155; cv=none;
        d=google.com; s=arc-20160816;
        b=zQtVN9gV3CWogL5RZxK3QZ8EXftiebaYdUDrgWl5IuM5WFbgfRSHMOofPxtHEGuLjY
         EXg90X6uei1+yqQwwBuwzRiuX7sdjMNWXH9c9di+omp9RRdzPf6i7msG2LTl3YUzlfxR
         dP4S2/uTZCxOfr+iPOKP7FPA8+9YZLYhOnqVoRmKM9GRSHgGnMn51KTkaWno+tnR4TbY
         +qgfydW516/LHxr85iq0PkYM+3wVkK43WHMHTycz/Sw7kbTvzPQQEy+3NOpV+Dp9j9d2
         UrQVNxf2bUa8UOy+WJFgEPOOKJNw/xcg8D6Vaj/S9FFwVuT7tJe7sxNSdTiPrKBPraRy
         jESA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cITEr3eddlLeZ9kM0AgouAgtRcaj2tOTljG3ru0dFVk=;
        b=F2Jcp2sU3cAs6I7mU5m/ux5ov8suKSwY/EP96x/chQm9IvgEgLZ8yv2yCszL7IONIv
         y6K0EC5Ogs64ZOU5pOR6OufNXSMeS8GUtAH5VpbppXy9dJwjZX8FNFSAW/ObZLZtYAiE
         0S54cdAQqUZPReo2U5bJ2M0G88AGf4vra2oEuCdIOfJiZrfeTl1wpj4ek6tj7Qb2CPER
         8bHQN+H9NjO9dIgPPSVdgoUcDv1jSi/OGL97MMc9gZ0iC+H1vxkfIInuSCcrNbX6C/2J
         J/9z21he4aHQrFaz3dCkCxposWxVYKffXGg4HwDo+P6uOjN2TFQW1/x7ggmrqmKdb1v0
         fjxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=YvT6EUl+;
       spf=pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id w12si312061edj.5.2021.09.05.08.35.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Sep 2021 08:35:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id g14so6855986ljk.5
        for <linux-ntb@googlegroups.com>; Sun, 05 Sep 2021 08:35:55 -0700 (PDT)
X-Received: by 2002:a2e:a908:: with SMTP id j8mr6880398ljq.77.1630856155629;
        Sun, 05 Sep 2021 08:35:55 -0700 (PDT)
Received: from mobilestation ([95.79.127.110])
        by smtp.gmail.com with ESMTPSA id d24sm669456ljj.8.2021.09.05.08.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 08:35:55 -0700 (PDT)
Date: Sun, 5 Sep 2021 18:35:53 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Colin King <colin.king@canonical.com>
Cc: Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	linux-ntb@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ntb: ntb_pingpong: remove redundant initialization of
 variables msg_data and spad_data
Message-ID: <20210905153553.nmmgv7w3t3oeqtca@mobilestation>
References: <20210609112128.184667-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210609112128.184667-1-colin.king@canonical.com>
X-Original-Sender: fancer.lancer@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=YvT6EUl+;       spf=pass
 (google.com: domain of fancer.lancer@gmail.com designates 2a00:1450:4864:20::230
 as permitted sender) smtp.mailfrom=fancer.lancer@gmail.com;       dmarc=pass
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

On Wed, Jun 09, 2021 at 12:21:28PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The variables msg_data and spad_data are being initialized with values
> that are never read, they are being updated later on. The initializations
> are redundant and can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/ntb/test/ntb_pingpong.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Wow, missed this in my emails log. Thanks for the cleanup.
Acked-by: Serge Semin <fancer.lancer@gmail.com>

> 
> diff --git a/drivers/ntb/test/ntb_pingpong.c b/drivers/ntb/test/ntb_pingpong.c
> index 2164e8492772..8aeca7914050 100644
> --- a/drivers/ntb/test/ntb_pingpong.c
> +++ b/drivers/ntb/test/ntb_pingpong.c
> @@ -187,7 +187,7 @@ static void pp_ping(struct pp_ctx *pp)
>  
>  static void pp_pong(struct pp_ctx *pp)
>  {
> -	u32 msg_data = -1, spad_data = -1;
> +	u32 msg_data, spad_data;
>  	int pidx = 0;
>  
>  	/* Read pong data */
> -- 
> 2.31.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210609112128.184667-1-colin.king%40canonical.com.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210905153553.nmmgv7w3t3oeqtca%40mobilestation.
