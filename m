Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBBMB7GCQMGQES3USMJA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 6056639E13F
	for <lists+linux-ntb@lfdr.de>; Mon,  7 Jun 2021 17:51:34 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id w1-20020a0568304101b02902fc17224cf5sf11809154ott.3
        for <lists+linux-ntb@lfdr.de>; Mon, 07 Jun 2021 08:51:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623081093; cv=pass;
        d=google.com; s=arc-20160816;
        b=iOc6tTEMHVMM/m/v8/ThGYcRbIKo2eUvhHbHQVgP7fmxqR2vOeCE8jG4jptfLcnozo
         LBYhIU3AamZ01ciLd8q5ZqHLL2e1pYZX1yTKJYcWdYVNQ6bPd+I8mqp1mPd9DCtMgzV7
         a5GxBWBcKvQytj8aqNwtpaaFUB4Hm5eZUskxOi9JrpLdz7HL9FkLgwf1AYUWz1U52Jlx
         cX0bMX0F80BglWyb/nCwziCTFf0j5bs3BTvqo4OXFkcLJwQkViPnwVuLwpfTzER3E+US
         dqL8a1QU9vO6tFqWfiSTV2NxISZiEbfgrPR06+UXdvdiJE3cTnkbw/A+RcC2dZEzeRZH
         cEPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=ZXVx7w1qDhWqczWwTIJQtLy6Nfsv/uErE+1fdIJ9HOs=;
        b=KYYYvktMpkcysV0qWk8tKiJ4A4w1PGjUUqth2TzGQKgeGsRPodlSquWWcOwVU9vxQP
         bmePP2Sto+kc08t9MryMhDwNqZK7SZ1nG+zMO1BmRJ+zVbderI5GcKIiXi1/VSvJNnv+
         dc/+xjSvwJQNkNgko+W6KivBM3TCExZ5ffUUHqFae/dYt0aNUeo3s9agZ+w4eSi+fqFQ
         cP7wjJOavnw3xpMebrEIp3q8wb8awbhlQAYBtCBUCnu9ge8w9hc+B7BJym6ttYeh6Ro0
         UXFf75dARQnLnm1k7Nua4/XLKgVSyUnJMXlJdBmNO0Ume9C95H6OIP3novKy0nWfuM1g
         unYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=KZWC9QwJ;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZXVx7w1qDhWqczWwTIJQtLy6Nfsv/uErE+1fdIJ9HOs=;
        b=ojP1sLgqdAW0r1HGC1UrDSBIbNUBImGq9SwC0/f/5nMloB4bnslVft6Ysr8TZK3oPX
         nZzxk3YINU6wbaNYP4/r//8iWB/V+bNyr5VJ/4UCRKB7CZtvYm69MYnlr0CzxQa2tRpz
         3HKXrA2qHi70oalVPch6j1R4BmFfk9QxHBaShUAmtgZc3zJeF0LP/jjrJz5TdhSipuKX
         AtYh0da0CYoQ/3tzJMMxg5QlDwandrIkm9290VZ7koZr6zJJaGUH69ouJEg/Jh6p/tkN
         tgSUs9IxcCGRgkIP2HU7lN4Muee7sLhJQeL4Ohgefm+dyBkEbXDZgqQ+HSEzsLKuZjIk
         viYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZXVx7w1qDhWqczWwTIJQtLy6Nfsv/uErE+1fdIJ9HOs=;
        b=TjSMNfyNubxEZEdrFU31i4JeDkWseszsaCo1LGmLLhfPQMBFrqDeF3+tZ5lc9zyFOL
         /YMVEynoxmhRks/iMWs1eMwB3O4bf7wfMC6ldQOOcweFzX8WFgka9yLSo6YNIj1FaCYN
         TflJ7uwgXiP0gkZRrN6Pl9tZPmTsyzncL0DizPN6Z7UJoSo0iHz32RuReCyeDCiUfxMv
         Y/flO0CtFF0xsOFLALtOLdpTAZBRuZTWuK2vLoPu2COlmll20sBrQ6aR8tORH/ra1MR4
         HBPa5FWxEMY9F/r3t1AnRY7Q7ueB+50Vc2yBRmVFIJzpiQ49QREGxWOdKr4JEulMrgDS
         2AWw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530H5ZmSFoVLU+0lxS3Zy9yh160ydVKIJhOreJCrupzCFQ3rkZcY
	XmZop7wAeaSS9Bm2wlNck9U=
X-Google-Smtp-Source: ABdhPJzgf4DJ+bzyNMvAQME7idL9bR2UsZwhPj8yF2aWlUcAlQRRkMEPqhlZ3oiV5zgi9qEMHfNJmw==
X-Received: by 2002:a05:6830:161a:: with SMTP id g26mr7264768otr.62.1623081093225;
        Mon, 07 Jun 2021 08:51:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:5d05:: with SMTP id r5ls4012442oib.7.gmail; Mon, 07 Jun
 2021 08:51:32 -0700 (PDT)
X-Received: by 2002:aca:5755:: with SMTP id l82mr14088200oib.44.1623081092813;
        Mon, 07 Jun 2021 08:51:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623081092; cv=none;
        d=google.com; s=arc-20160816;
        b=vC0oQ8KM6n7xzWL0UQYWT2R1Xt7d2z49XwzrOYCax77oBIfyab2RtxgPEBqOnXJlDj
         HHiu/x/un0zzPtrXG6xwOgxYwGJgQLdfFxsKBDWja1IqKIeIySse5TmUk2hMa0Fy/2hl
         yE5DgyU8xFRQ9VT6eYcZcm4PRYzSll5jG5juEVbVHysKiyIoA8iE0ZMr/DcBOVg2HIeu
         MeUdJnDd97ni8y+Y9bSI+UuMKsKzQtMFSKNBvFf5Bhun75sGFdtf7Min2gqyX6vHZ5Re
         9Pt4kn+i4dKZni5Bxecbd4XN9DU23yWCXPe8yD7awag09KwIAZlVGX/9mmLIX2pvEvhn
         SFRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=4claKpMmrc3WERETeGcJn3zlM3eZGEqhAb7GXJGJFUo=;
        b=sq4xeJHSYIYlGHUvm5i5efCx7CXM6kaZ6ifpHwUhEVHHllH+3E4b3hfV9WvglKk/u0
         rs+e4IkRLbXaUv7gWAd2+jdJEtbawPH3dlGveJADsqSSoqZPetSbp7q976NUbjrf1iEI
         m9FDzxJmsswFmpN9v6BNH9SNkgCcwtYUNRVzORANkcMaq24kwaguYE60326NAqAruKCx
         pRlWU0KWz14mdF/hjTNWg0CMk4FGQxWeWKhlRqs20Z6kYvCcYY8Wh8fYqFt1YIcSx2OP
         rM5evgpMqv5/P/++IjLv/jLTXMGV7aROFEaVUdTj8ty+XPvucW24ah7KSkQz8Ipa4GTv
         KEPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=KZWC9QwJ;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id f20si1249246oig.3.2021.06.07.08.51.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 08:51:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtp (Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1lqHXG-0007rq-Up; Mon, 07 Jun 2021 09:51:31 -0600
To: Yang Li <yang.lee@linux.alibaba.com>, jdmason@kudzu.us
Cc: dave.jiang@intel.com, allenbh@gmail.com, linux-ntb@googlegroups.com,
 linux-kernel@vger.kernel.org
References: <1623045380-125394-1-git-send-email-yang.lee@linux.alibaba.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <9182a6e0-541b-e350-d760-06623cb06855@deltatee.com>
Date: Mon, 7 Jun 2021 09:51:29 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <1623045380-125394-1-git-send-email-yang.lee@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, yang.lee@linux.alibaba.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] NTB: Fix an error code in ntb_msit_probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=KZWC9QwJ;       spf=pass
 (google.com: domain of logang@deltatee.com designates 204.191.154.188 as
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



On 2021-06-06 11:56 p.m., Yang Li wrote:
> When the value of nm->isr_ctx is false, the value of ret is 0.
> So, we set ret to -ENOMEM to indicate this error.
> 
> Clean up smatch warning:
> drivers/ntb/test/ntb_msi_test.c:373 ntb_msit_probe() warn: missing
> error code 'ret'.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

Thanks!

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

> ---
> 
> Change in v2:
> --revise typo
> 
>  drivers/ntb/test/ntb_msi_test.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
> index 7095ecd..4e18e08 100644
> --- a/drivers/ntb/test/ntb_msi_test.c
> +++ b/drivers/ntb/test/ntb_msi_test.c
> @@ -369,8 +369,10 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
>  	if (ret)
>  		goto remove_dbgfs;
>  
> -	if (!nm->isr_ctx)
> +	if (!nm->isr_ctx) {
> +		ret = -ENOMEM;
>  		goto remove_dbgfs;
> +	}
>  
>  	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
>  
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/9182a6e0-541b-e350-d760-06623cb06855%40deltatee.com.
