Return-Path: <linux-ntb+bncBAABBPMFWX6AKGQEK2LIFHY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 82120292307
	for <lists+linux-ntb@lfdr.de>; Mon, 19 Oct 2020 09:39:42 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id y77sf6679966qkb.8
        for <lists+linux-ntb@lfdr.de>; Mon, 19 Oct 2020 00:39:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603093181; cv=pass;
        d=google.com; s=arc-20160816;
        b=eK2R25oiZ3MEGW4yg7UwBx853h/KNjUfvzaQtEqFDOmoma/LB/dtefBWF9yyVSrp30
         D7cHS1OiJTUUaQhRWXUUYTNw/cSz52iYIndpzNep98aD87lgJRmzOsWsICeK7yQGDXns
         1Cz8mug1D+jKom8pJI5qJUEuOQl8gTRECSdw0INTVH2XBUyDec7TqO4wjbDKjSjhPv38
         MGClAj64Uv2yGC4KQj4pZhqbh3AzcHXu8S6/0/0lsvrRZGVYfzK5+l8jIib4d9vXQt9h
         zQc+I47cHwWwVOgmVok7QjnAXXUoQMgUke3l51xt/5E/ZNWK2CVsvhsb/ghSTNUJRTWq
         Dv8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=yc04I9uO82O7xs+rlyzfiscuC/nPYZxLF7iubpe9HKg=;
        b=w+g/Bp1E7EoFjsvrYO5WqrJe0P379exxOgg77fWCGagdnvuo0dl3wY4Sddjt/6JrdM
         UjQnf+pQP6oGIVmdp7i9v9vFU6yvJY15Q2eJxterHrgXFjsluBhlTMz2Y6oVwibx0aAo
         R8lt2FbkB68c2RlqzHAt9XvKrXMS7VDa48RxRw4thpH+BX3pGTfua8MWrInBLDNKTpod
         gvxB5hkr7yN4hq4pKbbwsyCgAT7fEhLOUHStoqz1dic9b3mDh8GyQ5Gr3uOOF7pqwHJO
         44etnoBc4/cldf/72N9wVQVbX+xP+10AHf6DwLGw5z4D1U8t92j9O258cvvLc/xI+8cg
         Sx6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 37.128.132.42 is neither permitted nor denied by best guess record for domain of anton.ivanov@cambridgegreys.com) smtp.mailfrom=anton.ivanov@cambridgegreys.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yc04I9uO82O7xs+rlyzfiscuC/nPYZxLF7iubpe9HKg=;
        b=SOgybQfJF2R8hhGhtPLo9iec5L1fKu3us6eNZVGVh/MLtveB/TxsaZ7rdHi1OnJ8Bt
         Cr6WYlbBElWtQ5wxlpO183Jjbk29/g+0QKXl2RlbYZAKR1wEHwLPTjHytIEi4BaFogMV
         HU/Y6IML370tF9IMjkVl9fa/cVm9MIohyaD9lWdIjNPVS029yHOXH1jntxKb5DxB9xdj
         00sUhLOUtTBKltLBL6lvuSO92JrCwQc2u6Ix/epXtW9IECD/3Hk6uS/gCpV8Xz/Fuy+N
         Yo1BiCV/Upw5n5CCdJWlDKEEweSlmQyuAg2YKmCGuh1TmrbvHz9IA77iL2SaRNF9uirZ
         ut+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yc04I9uO82O7xs+rlyzfiscuC/nPYZxLF7iubpe9HKg=;
        b=JQEZyMYKCleY0M8kPIist/pymv5lhWX+MaG51zpD1ye0Vo0GsuauGt21C2+Ntt/9A8
         4WwBvDItuTfQyaeQ1poFw54j8bfb2tynIfn59xTP20PPpOsWMh6jcN+druXSgExg8vi6
         vbJ3ix5RnP4P1zOJ33wGy1GB0JBL0/95IinlpWBz5xhtjCuB4rLuVYg9hpMa3KvZ7Unj
         X3mmMtcvxAZwGsdqIrBumt3RBZRPgIg8po7DUhyuNRnJ7oz0l+xJnaksVBrH5801fEmm
         zOCQDapgm90V8iNChr51gQUdHk8212usCsAGPeiCPVv0daLiqgJrCzFzQy/F21RSsDrT
         4XjQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531rNCQA/HOvTaAqJJcnM+CSAtlpCIpdf9atkG5l0vnodRDXLdzj
	IT0tfYsbkE0g1M8SHQpLMwg=
X-Google-Smtp-Source: ABdhPJydYxoU54xMp8Lcj6P0aAnDjS788x+2oKPAuPjoGQMSAO9Ug43DmO/WvpNY+x32g4Nyk+3bmQ==
X-Received: by 2002:a0c:8d05:: with SMTP id r5mr536271qvb.31.1603093181419;
        Mon, 19 Oct 2020 00:39:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:c983:: with SMTP id b3ls2348470qvk.10.gmail; Mon, 19 Oct
 2020 00:39:40 -0700 (PDT)
X-Received: by 2002:ad4:4391:: with SMTP id s17mr15953962qvr.60.1603093180614;
        Mon, 19 Oct 2020 00:39:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603093180; cv=none;
        d=google.com; s=arc-20160816;
        b=D/8S8ScniSutWch0Gi7yYILFyP9Kb1OGZ4Dgm2BR5KI7eUtwfkfBLvnr2acP6Sucxo
         XN6SmLlZzeTjFXqHDUhFBtw9+uXs0HraxeEwo1xeEUjzNg6KafiBfjJXYls+NFsAJ3tC
         d3UturL3ONXgcmEV5r0Py5VEiaVD47t0pKz+Sfsm37xYDNcUBOGf20cXJ76sr/OHS/qW
         QGwiUFEDCQffUcGRRMWKXh3r0lPSLGfVThVLiAGVYfZ7hjfVVbxItD54gF9ofe4+VJyz
         4tqN6P5rio2SeVKsyzZjuR1lokUjkzA1ANZgbKrqzRhaNSC95rhpFPSp22ab3j9+IJAS
         16sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=MLH7Dbj4cQvC0DidW70abQge9Sd1ltNA1lZKaIWLHoE=;
        b=SyG/nFk7sc2ebT8+KyaWFCv7Xa9FwVs6VeNHuZaTkYPgy4RXM5HJsLThKvVQZUxvdm
         P0u0xqPE/iPyMV/SnmOHTTMrsTA+LGwbnIVOzkshiT1gRgoyJOe5JzTsDg7z/wRMMeX1
         GowFo0PMjPpeu/CRP4482TPqXBxbi8nCya6/UrM2ztlMAVFtbV/u/G81hiJQSGiX72Wa
         5ERFB7+nCiE0L+u9kTpYkBXPR2UKsVOw/K+Zah4ssBk0o2K+Ov85GB0dRW5FlJvxA1Xc
         NnQR1zmKXWQor8bupVoMMaceUh4ZzMrk3bgmqu4Bsv/cS+pp5lQjuiwPK9cnRs9QQfaP
         Aovg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 37.128.132.42 is neither permitted nor denied by best guess record for domain of anton.ivanov@cambridgegreys.com) smtp.mailfrom=anton.ivanov@cambridgegreys.com
Received: from www.kot-begemot.co.uk (ivanoab7.miniserver.com. [37.128.132.42])
        by gmr-mx.google.com with ESMTPS id v35si645912qtv.1.2020.10.19.00.39.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 00:39:40 -0700 (PDT)
Received-SPF: neutral (google.com: 37.128.132.42 is neither permitted nor denied by best guess record for domain of anton.ivanov@cambridgegreys.com) client-ip=37.128.132.42;
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6] helo=jain.kot-begemot.co.uk)
	by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <anton.ivanov@cambridgegreys.com>)
	id 1kUPl5-0003bi-LB; Mon, 19 Oct 2020 07:39:07 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
	by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
	(envelope-from <anton.ivanov@cambridgegreys.com>)
	id 1kUPl3-00080t-CR; Mon, 19 Oct 2020 08:39:07 +0100
Subject: Re: [PATCH] arch: um: convert tasklets to use new tasklet_setup() API
To: Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at,
 3chas3@gmail.com, axboe@kernel.dk, stefanr@s5r6.in-berlin.de,
 airlied@linux.ie, daniel@ffwll.ch, sre@kernel.org,
 James.Bottomley@HansenPartnership.com, kys@microsoft.com, deller@gmx.de,
 dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, maximlevitsky@gmail.com, oakad@yahoo.com,
 ulf.hansson@linaro.org, mporter@kernel.crashing.org, alex.bou9@gmail.com,
 broonie@kernel.org, martyn@welchs.me.uk, manohar.vanga@gmail.com,
 mitch@sfgoth.com, davem@davemloft.net, kuba@kernel.org
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-hyperv@vger.kernel.org, Romain Perier <romain.perier@gmail.com>,
 keescook@chromium.org, linux-parisc@vger.kernel.org,
 linux-ntb@googlegroups.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-atm-general@lists.sourceforge.net,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Allen Pais <allen.lkml@gmail.com>,
 linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <3359192b-8f02-feb4-a9a7-a13b5d876998@cambridgegreys.com>
Date: Mon, 19 Oct 2020 08:39:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-Original-Sender: anton.ivanov@cambridgegreys.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 37.128.132.42 is neither permitted nor denied by best guess
 record for domain of anton.ivanov@cambridgegreys.com) smtp.mailfrom=anton.ivanov@cambridgegreys.com
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



On 17/08/2020 10:15, Allen Pais wrote:
> From: Allen Pais <allen.lkml@gmail.com>
> 
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
> 
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>   arch/um/drivers/vector_kern.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> index 8735c468230a..06980870ae23 100644
> --- a/arch/um/drivers/vector_kern.c
> +++ b/arch/um/drivers/vector_kern.c
> @@ -1196,9 +1196,9 @@ static int vector_net_close(struct net_device *dev)
>   
>   /* TX tasklet */
>   
> -static void vector_tx_poll(unsigned long data)
> +static void vector_tx_poll(struct tasklet_struct *t)
>   {
> -	struct vector_private *vp = (struct vector_private *)data;
> +	struct vector_private *vp = from_tasklet(vp, t, tx_poll);
>   
>   	vp->estats.tx_kicks++;
>   	vector_send(vp->tx_queue);
> @@ -1629,7 +1629,7 @@ static void vector_eth_configure(
>   	});
>   
>   	dev->features = dev->hw_features = (NETIF_F_SG | NETIF_F_FRAGLIST);
> -	tasklet_init(&vp->tx_poll, vector_tx_poll, (unsigned long)vp);
> +	tasklet_setup(&vp->tx_poll, vector_tx_poll);
>   	INIT_WORK(&vp->reset_tx, vector_reset_tx);
>   
>   	timer_setup(&vp->tl, vector_timer_expire, 0);
> 

Acked-By: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/3359192b-8f02-feb4-a9a7-a13b5d876998%40cambridgegreys.com.
