Return-Path: <linux-ntb+bncBCOOP4VF5IDRBKHSTGAQMGQEZ3QNENY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 983E2319F10
	for <lists+linux-ntb@lfdr.de>; Fri, 12 Feb 2021 13:48:41 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id g3sf9100307ild.4
        for <lists+linux-ntb@lfdr.de>; Fri, 12 Feb 2021 04:48:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613134120; cv=pass;
        d=google.com; s=arc-20160816;
        b=UNSPGcwZOK44yb87IkTTzDumlHJ/oClvS22jrBdyiUjmUG3Is3BsewCUpzMkxR88XJ
         73EgESvIsC6kZAgMTkqmk5hiGRH7eNFfZOrpWH4eTUTXH5PBsx0yzBxArlMBEDuJ+h5U
         VbJpKDRjwjLFeP2S0ddeQTasELvM/EWz0IpDR5psOQkpEG5ytsB2MGLcBXWV4F3E7QVZ
         8E4GXF5S+GiIRru4lJLjBr9JttALy8WKYYH3LjVhTUxfVVRvPZx1NCIXzXdOLq9UBOdt
         ItyHPn0ZHZ5KOS7Gy4kgZ15/1X2SpfUvUonwz72jt0BI3KkYYZSa49kDCCTGL/R3Iqr2
         WgEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=5v6QTCztUCLbZGj9vXs5wbb5zXYqVtDQNLreUf6dmiI=;
        b=0WgjbYvdlDlJ2tSxcUFpMmmhW/8fS+4UjlZL+glHdIFNEDXqcF5xdUMIWHnZSZlv0S
         Rj5hBpGxQYDkQVeN/E4HtHHXHLNuqCxkiz8SNOkZAp3u+l6zvSL17UCevHSfmuZkLuYV
         SOe7tK9AmZI1+7osFWAVROiilFjnR60msn71XdlQpK0mQvnLO2v6StECmVcKeZRhjfRJ
         0vsXTX1z623YK1e0T2NBaQev8ccFrW+KR02n2ZqeYfNmIShrZyTqbVRhA1WpixOaVYHH
         KSiNlMscPe9Q/7ZUhLT0AVLeXB0fOSd8qZbSZHGkIIiNNhUuAWQnU8maywZVGHwWeB4P
         S0Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=cCtjL3XP;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5v6QTCztUCLbZGj9vXs5wbb5zXYqVtDQNLreUf6dmiI=;
        b=iBmbRMqeMP1CAit6A5i9Xy6t1NNhD5S5nnPMmhixvckcUfNsAQVSKZLf7SLMxdcoKE
         k6m5rIF7b1y1c5B7fxhO1/cI+o8TSv06SEWp+hfjMmCiJZoB5mPKScuFJXPsD9kYHDBz
         lYaI774RjUnckkuwdqVGoblCFT/75XfjuGYptpJyFI9wOiCdjelvEU8OR9tmk1zNjJ96
         db/8uPDoBx4Jy+Kx/yelwYdGk6bT7Czh20t9PZqhjTcYswVf9v7XNNV5Zjadp7WYJvIa
         Bom34+LVGtLuAx6b8vk0L+JBcBKAU/0od1f8lEsoARrsLVlboYBsWJnhl1Ev6eZbS8c7
         y8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5v6QTCztUCLbZGj9vXs5wbb5zXYqVtDQNLreUf6dmiI=;
        b=hujQVESBjdZiOGT+78Cv6ya+9wtZorVfhmcAvBfgFazvVqxJDuAnb+sH9PODYpjAln
         N0YnVverOY/hSUEy+SsRRYXBoKnuAKc+hX4/GCcmmTm4HB5pASAHvPkoCQDYLIwmipU7
         6nHoWX6PUYrDIpy5ykz1TMANS1ksOV0Ng2bQbzKoUSccdm7Mxoqo0Vw4Q5LYlj38w/Os
         J7QTXVxDZODHanc1DqWvo3AR6llhYS9SDba4S07Qcy0CtLonSZ7qb247Cra3OPQ5Q0Hd
         lBfl47wAphtmxCE6nRMqYa9Pj0LrCbwftUMyM+YDyUTI6UkGU+ZmCv9jm6ouNCn2tSfb
         H4TA==
X-Gm-Message-State: AOAM530zNK00/bgONo4v7rU3QJtMiFUdPzPWekKHZf6DGclHHQ0zAUC0
	LM/1+Xb4wv2Mytw+vJzP7tM=
X-Google-Smtp-Source: ABdhPJy1tlkVJQb9L75tQvuHWexR4gZrdDbC3LA43nK9pIpFgdqowAxuXFcn1RthcdpXB1LRloECBA==
X-Received: by 2002:a05:6e02:b25:: with SMTP id e5mr2209597ilu.37.1613134120380;
        Fri, 12 Feb 2021 04:48:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:7f4d:: with SMTP id r74ls1223064jac.7.gmail; Fri, 12 Feb
 2021 04:48:40 -0800 (PST)
X-Received: by 2002:a02:3b01:: with SMTP id c1mr2541499jaa.109.1613134120048;
        Fri, 12 Feb 2021 04:48:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613134120; cv=none;
        d=google.com; s=arc-20160816;
        b=rwrituy8prxzR0bjLksZdsvV5Ad2H6XlOoSY4CT2Zs6sPWIF+U/CByYYahoRhxdaPb
         ZUmZ6QjdVZ/NSbBBVWCSZHkHXcDV0znwSGsDu8bPjM3YBFA8jz4DUavDeNPupL6H30Z8
         A8o1FLXVVvsWIUg5xUvwO+MTL2mE75Byf0bXi8hXOwn+Fa1d4wPYaSlmPhzQo6bQnKnC
         bUovTUcAH0qDKTVt+cl/ZJHVKGB/6M8wc4X/WYlxtw24zLN776fLsE3RAVTxM92lua4s
         fY7Y9msL3DySWlcua6piEbR4v7KVHlFebaJbs0UmtT2/LPqwnKsdOPyMlrZSVRE6h142
         VM6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=SFCHRJEZKuC8tAGhsa/pKFsCkhYCR9NZsOPbGEoRRKU=;
        b=aXQ96z3IDjXHwepyPgHbBPENleZrlR0xAL9mn3tAZlgznCNQL1+KHBPPjAT3/e2f9o
         pP9lSUtgzWfpnx44okJmJEN/U2Af5NOpNWT0FTkkurltyTI052/kmKOk1i4DDdI1i3Qm
         dtuIlLDl5g3nfPvxjvf/4USnyW+nhGwTONAV6hovP9mc3p5BfMuaTm7mXM5G7/cmM6w0
         eBCz+ppvaxtgS6JFoh406ikred8F/acZINm0PqBmgQ1TwCp3RgGcX/VuaYI5bePEj2ww
         /xKzmaE8Qx5hahUftdJ7P2SDGA/lgIt0DLQyKc6zS5jacEROsd4aMebjuZ04vm4rdF9D
         eCqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=cCtjL3XP;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id m132si386393ioa.3.2021.02.12.04.48.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2021 04:48:39 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11CCmZwY071475;
	Fri, 12 Feb 2021 06:48:35 -0600
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11CCmZuq071363
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 12 Feb 2021 06:48:35 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 12
 Feb 2021 06:48:35 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 12 Feb 2021 06:48:35 -0600
Received: from [10.250.234.16] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11CCmVXk037765;
	Fri, 12 Feb 2021 06:48:32 -0600
Subject: Re: [PATCH -next] NTB: Drop kfree for memory allocated with
 devm_kzalloc
To: Wei Yongjun <weiyongjun1@huawei.com>, Hulk Robot <hulkci@huawei.com>,
        Jon
 Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe
	<allenbh@gmail.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
CC: <linux-ntb@googlegroups.com>, <linux-kernel@vger.kernel.org>,
        Kishon Vijay
 Abraham I <kishon@ti.com>
References: <20210210075345.1096001-1-weiyongjun1@huawei.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <ede29bb2-d501-4add-979a-baed99fe730c@ti.com>
Date: Fri, 12 Feb 2021 18:18:31 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210210075345.1096001-1-weiyongjun1@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=cCtjL3XP;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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



On 10/02/21 1:23 pm, Wei Yongjun wrote:
> It's not necessary to free memory allocated with devm_kzalloc
> and using kfree leads to a double free.
> 
> Fixes: 363baf7d6051 ("NTB: Add support for EPF PCI-Express Non-Transparent Bridge")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/ntb/hw/epf/ntb_hw_epf.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c b/drivers/ntb/hw/epf/ntb_hw_epf.c
> index 2cccb7dff5dd..b019755e4e21 100644
> --- a/drivers/ntb/hw/epf/ntb_hw_epf.c
> +++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
> @@ -723,7 +723,6 @@ static void ntb_epf_pci_remove(struct pci_dev *pdev)
>  	ntb_unregister_device(&ndev->ntb);
>  	ntb_epf_cleanup_isr(ndev);
>  	ntb_epf_deinit_pci(ndev);
> -	kfree(ndev);
>  }

Reviewed-by: Kishon Vijay Abraham I <kishon@ti.com>
>  
>  static const struct ntb_epf_data j721e_data = {
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/ede29bb2-d501-4add-979a-baed99fe730c%40ti.com.
