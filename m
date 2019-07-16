Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBOUYXDUQKGQEDPJWZPY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6766ADC9
	for <lists+linux-ntb@lfdr.de>; Tue, 16 Jul 2019 19:41:15 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id 75sf16691073ywb.3
        for <lists+linux-ntb@lfdr.de>; Tue, 16 Jul 2019 10:41:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563298874; cv=pass;
        d=google.com; s=arc-20160816;
        b=BJbOgPX5891NKY7ZCJoPN57BkXgGmWI2zVSuHJymN8IX4pMHAc/U6P8ZKa+TzXl5Qi
         DD+pAmTQySZXwul2ZehQTmyhhYMOypUDA9WuozxINEtzlEPcEQgTZtiCnz1kHr8wm1r6
         QryXPsbmdh30MZiXMWpUkQhZSlIl5xNB1uwqRiaGnOxMBjrznN+iriWZ6fnubvT6LIUx
         R/wxPoscZ21UB9TQao5voExxl3aqlVUyTZ9sPnI/eFvwUBCKN9o7ryFhY9kChraGpj+7
         m1gJpMFTCym1qfl9/EaPCILcCISK5a72bj6vjazfi4nu6lAwl++IIHGZo1Gwydbpt5yz
         6E6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=ErLY8exq4BhrZwNIGtLuTejfA3OFEA3P+Pw7/DCpeK4=;
        b=v/TajqZFd1qPzWewKtEZt7AIaWaG6+vW/AaaVIT0ywKJ7LrpPP2sT32DqRA8zJhxhZ
         AX5a8DtwPon+yALzSUp2UGx219baOrgd77PHi0Iq1w9rQmXXjufG6G6zZZJf1YKJH+Iz
         MEpU6/L8X/aif29r5cGwrqMMegP+46gn+jiHAoH1zav+6mutbM00qWqUro6fitLax8cR
         dB6xcpz0xcYRaiKPRS4WwvCTafABXDXziqMaqTHPM3wCoJEFCgKA/l90x48jVFvnj4gI
         fyMBIo/JOKU7lcVrX4JN4EzXcEa1XOgPgiffUa3/EfG608ip4rUs/cc6mS9uIDbQEFaO
         sbUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ErLY8exq4BhrZwNIGtLuTejfA3OFEA3P+Pw7/DCpeK4=;
        b=DTqfkTGLSnaxYhaeKKxU3P+SR9dmjO1KRsJ4EbxvVFBqugk1tBHZGobR+VATAAfwUV
         Mo/KHLK5RPi7PUeau5TFkdy57fDf6ZM3vdMSDZRQaBbgyPKXcZ28CfP4Lks61hP1FWEb
         vdgsMMlKd4B2Y06EHvxJXbgnEMufxTZ811r40oiTMaMEdVjYyjIGcGmxk9Ff0FZEZL5o
         sFvwHgfd8aRJT9yzpQPlsukkaVYlHJGHOz0F4FrpIqaD6gmPZCD6zc+rdWFOAtpvjnH2
         CAEyZJwnXdjMXyFN2pmPR4NfyJzKh22+5ZkoXqtIYzN2LVoYD3YeP01ru7eA/lhDxlQt
         UmuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ErLY8exq4BhrZwNIGtLuTejfA3OFEA3P+Pw7/DCpeK4=;
        b=GPipHGk//nueQW3l7ymAVhHJMWt1oB+KUZRaFiJCQKfAcMPEmPmPnH9pWPazto3ULZ
         MVEDs93xpscHxMixnIh9NP6q88H+RqHzEEsyyoe2lP/8JWYXOnCcWYy4t4ad1OXSwyRl
         TXwo2RE64jvIoL1lbFKkW6MyVJd3E9+kClX21xkMUIwdRzZGOQtqGxntvxtB3vnyDHlC
         hAPshgU/YfV8/APbNmHtHmKwroYrl6R/391qOMl8LfKnOJwHIbi8WSB/v/lKO0BeAtC9
         2noPSaT71QT0az9H4fPFiEs9Uv/Rg1UFPPZtXXt6DJeWtsc0i0n2Bd5mLAONq5ljO8/R
         6bOA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUIqmFWGBwT+lo8zVMST8lWzhIe1elQW+lHzJCfjeRjoicM9ePt
	S7K14SzzD6yLtupThMdkDs0=
X-Google-Smtp-Source: APXvYqyViTC7AWvf7mzSTxy6bC5W2DzMpiZEG/1WDzVyVlPaJPjRMC5JPgzUIuYvRqXOgdyP/2V2PQ==
X-Received: by 2002:a0d:d44b:: with SMTP id w72mr16030938ywd.438.1563298874352;
        Tue, 16 Jul 2019 10:41:14 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:14b:: with SMTP id 72ls2817504ywb.15.gmail; Tue, 16 Jul
 2019 10:41:14 -0700 (PDT)
X-Received: by 2002:a0d:c941:: with SMTP id l62mr21293750ywd.265.1563298873987;
        Tue, 16 Jul 2019 10:41:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563298873; cv=none;
        d=google.com; s=arc-20160816;
        b=HSFvtm1Av35GoEb0knvRtJ3TWQiJ9V4mGqV8ynBFgPN6jveY9rDw+38S13WsUKFAox
         ivgvulix0owzPTfATJTKOfZNzLWJL73Aty5hZ5ajExxbcf+rnzoJTILkHYBX1TloF8cZ
         YxL1voI3BkBGS8qNVqKi7254YtNuBgA99bhxIheFx6T4JSIdCUCb3B3e59HxObARIkve
         Qfe/T40+8lSZB3Js+Gp1d1npSb42zhiEFucg/P8noth48dIFSjgrdi2tsbVDXuSRbe+B
         TysZn5DQ6gpfchyECS33AFyPiYO5UeTMZC2RZSWGx0gtHVRYefF0eeN74oMqXXLEFKYZ
         nXWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=ytr+sKqLt6Br3k4mZPELbk3k6TX6Zb1xzmHNqCyYXac=;
        b=XzTdddnUX/GURzO4L/oSSCx9k9LLm+zhdPsAI5cTHO8lcq25CF2RzaKP8P7e0qBra4
         JoRwN2QmOnl2wpUo+r5z+V/62h1hUnX1tWKLqbdSi0H6J59JVv4sm/HrPb4d5ELw90HN
         nQjGXyKS6OWZV7Y5Lk7tLGHX2jpcwN4eG9uGDofq72h6z0Sywe3Vrrnf5QK6Z704oFNF
         1Ah+OcoXon/Lq5ONXRCXv366eEGbpLlrs/kZapPCJvEeWkws2bIsiaaalKaX/m1LzWH7
         tsIZR5/O1AMemUmkh8uUttrTMs7Jo8nLVMcu1oBLBwDCoEILHQnB0X6dTWVzLJFzw6Yz
         kRhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id b74si765998yba.4.2019.07.16.10.41.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 16 Jul 2019 10:41:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtp (Exim 4.89)
	(envelope-from <logang@deltatee.com>)
	id 1hnRRt-0001EU-Ux; Tue, 16 Jul 2019 11:41:10 -0600
To: Alexander Fomichev <fomichev.ru@gmail.com>, linux-ntb@googlegroups.com,
 linux-pci@vger.kernel.org
Cc: Allen Hubbe <allenbh@gmail.com>, linux@yadro.com
References: <20190716173448.eswemneatvjwnxny@yadro.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <9428e069-19dd-d020-1a47-f33d99bd01ac@deltatee.com>
Date: Tue, 16 Jul 2019 11:41:09 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716173448.eswemneatvjwnxny@yadro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: linux@yadro.com, allenbh@gmail.com, linux-pci@vger.kernel.org, linux-ntb@googlegroups.com, fomichev.ru@gmail.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ntb_hw_switchtec: make ntb_mw_set_trans() work when addr
 == 0
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



On 2019-07-16 11:34 a.m., Alexander Fomichev wrote:
> On switchtec_ntb_mw_set_trans() call, when (only) address == 0, it acts as
> ntb_mw_clear_trans(). Fix this, since address == 0 and size != 0 is valid
> combination for setting translation.
> 
> Signed-off-by: Alexander Fomichev <fomichev.ru@gmail.com>

Looks good, thanks.

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

> ---
>  drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> index db49677..45b9513 100644
> --- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> +++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> @@ -305,7 +305,7 @@ static int switchtec_ntb_mw_set_trans(struct ntb_dev *ntb, int pidx, int widx,
>  	if (rc)
>  		return rc;
>  
> -	if (addr == 0 || size == 0) {
> +	if (size == 0) {
>  		if (widx < nr_direct_mw)
>  			switchtec_ntb_mw_clr_direct(sndev, widx);
>  		else
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/9428e069-19dd-d020-1a47-f33d99bd01ac%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
