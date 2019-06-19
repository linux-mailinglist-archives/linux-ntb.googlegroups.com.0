Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBJMVU7UAKGQEEXTXW3I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0394B17C
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Jun 2019 07:39:51 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id h27sf4408919pfq.17
        for <lists+linux-ntb@lfdr.de>; Tue, 18 Jun 2019 22:39:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560922790; cv=pass;
        d=google.com; s=arc-20160816;
        b=omKL01VZa7E4H6ut1tRYh61KKMCRyzcOFGvCJcFx185pl0gU5iyMWdv4UrfReU8gT/
         /Isqfzu5S7KgbNjuFPy3Fsp/PSXg0ia1Cwm5S9CPeT2S5C5lsjm2EcdiE6vHzD1SHVhv
         332oeZx9v1Yx99MUWJJzNyi5uAwr5+3vmwySTIfHh8SddnHe8cey8aNdX3XIg4V2quaP
         vDFUGVSJ+TMmgdn/drz4k9ukXq+g9t0JmnNHvai6ZHae9oQOWGHMQ8m+fN0WujaJN8dk
         rGEBBIN6gXUu5nxwFHSLPBuuOUYXfHtLfaIJMe2CJib4ai20uR1R8s8nA+1RXkR+VPFY
         LpGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=uM6nOrfnE3ZwgmDpcgYPHBtyThRKJUKRt8H74AiDqkc=;
        b=FRKMjuZ6RZCg6eL1umwOKoU52wthQM15oXfhknf4ui9Ib9u1zVdkaj9Frz8kkAPW6p
         /tnCXdxLs/7PPg5idPI3r5p5uZcBgF+EJacoXsZ7eGHmy13oKUj8+VLQcL4bHTfE2dBo
         Z0btj3+bEJrJto05rHdo6tenr/MYjStxeHX6OM9qOeBdVAuThFnotDXTPb2ZHFik7Wzb
         kcXGmiDl5zCalSmAalELnNZt1jS3zvHzgkNuUEoBnuHAUImcuis7YOfrMjD2VAV+/LmQ
         m5Kjp5+E/ZPQ4JZQiCIXKBJkyEkmoF65EfuiUFMDD7wJK7QYy244o9wLAnZV7Tffa+kX
         E6NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uM6nOrfnE3ZwgmDpcgYPHBtyThRKJUKRt8H74AiDqkc=;
        b=YolU4L43VzMj/pF767FoaVaR3FReaBgL3gxKci4xUrbEtVgkSjEkrVyJkhly8Am90L
         XHSJDaWoLdP95i87kJSxNtDYLDfAGiqGC6sk8OtUxHXLdP+7wwihJ0CESHKjcH6q7/X7
         L0SOAw1Qfj5QQz4k7mXWsvHJobnU7f/VLlx/XTyfX0XkFFy1DvoEr54wlDeVEAtdUp/f
         X0c045EfEvnYypCru5Tq+wo3wjvs6xnD26h4W06CGWqQCDX31O7cEUEVCRCpfYoJ4AsC
         5AbxUrHKBV7Yd5OnDt0Ee15mls8ZbFaYmYOn+5zYXvsEeUwjzY6X6o1f2tH5mSlL6pxr
         Y3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uM6nOrfnE3ZwgmDpcgYPHBtyThRKJUKRt8H74AiDqkc=;
        b=DviwKXYL86wTHFJqLmaLkZjg0EpJUIyNgWJb4e62Zgxay4o4sIQ8zps3/N5WZou2o4
         EQA8hPyqim0N6LShnT0Kq9C83ZPTRwzHDdkCVJxnFqQOLYbBT/gx2aux7T7+9pyY9ZSF
         yQJb4LCM4V4nrOwjc9A9xOYAV3dOQ3ijf3ISwTqEZRXJjo3hCPFGr15vLjRW30X3MOGq
         MAAvPUKTxdWn2ytlmI2idnFDXUMGkY2yMsU4YIhtlhhIbUCgiG+SBzDXuWJKT7QI69MQ
         wuUE0BcBu3y1lKVe5/b84NGwiK9/nxR0f3a21zrcWQjW7COdAUMWb3M/UBLg82w9HFvO
         hjIg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVOEtne85ewhdgYLVXhBqCRDFIOMJlNWQDJtsncQisilQMnn6s1
	RP9dbwzBZUvREN5xOphWpAI=
X-Google-Smtp-Source: APXvYqzvRss+ur47NTNrVTl1/X2kYB4MIGw6/bbw4DrI+6IyYAknb2Wd8e7D16IlrovqUcfWxB+a2w==
X-Received: by 2002:a17:902:e582:: with SMTP id cl2mr102827602plb.60.1560922790037;
        Tue, 18 Jun 2019 22:39:50 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:9301:: with SMTP id p1ls147937pjo.3.canary-gmail;
 Tue, 18 Jun 2019 22:39:49 -0700 (PDT)
X-Received: by 2002:a17:90a:342c:: with SMTP id o41mr9228984pjb.1.1560922789649;
        Tue, 18 Jun 2019 22:39:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560922789; cv=none;
        d=google.com; s=arc-20160816;
        b=Juom1TE7DA6QHDUtLesWYY0H0kEB9Q3BtcDlX/bCkbbE/JvhyUebG9Cj46iC2ZS5fO
         U0cNHa81gmYJ7sK/NUsOF7/B2DkaSlgrfLQnFKhI9RFGyne3PUqWNSrrpBf7jmYJcMwP
         ut7uwO2A6fqW6QUt+QTtSjVrM6GREh3S6NmeJivJwdh6TwxCCkRQQHih5PMpkknd7zyL
         fJ/b44GQ1iGzYDl3DRkx81jy9L53o0IF0SPZ8Ff8xQTTGAy5yPNUgl3InnYPVRtqLcP/
         3F2V/y/S7yQf11lSz5lPzZry4tYLqy9hmEKmURjZvSMF0GEQ8o3ku7KivisvWuAu6tTw
         dn0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=6X0/ZvClmPRPYtZoa6H/IsHodsDppMji79tNhX/4bs0=;
        b=Pk4Y5ZTA6DuDOTsP3gcBlxrpKvBzEB0vw2h2JlVrJfLmkbKfvh5lHx6HgU6zoUb7Au
         cGUmRi0LTGiCpXtVDg5QIp6wNAtbdqngD9/ph746ZINVjy35t9fzaruIVYAc26v3Kndc
         Uhj+5x93TFV3RsHrnbDp5IViCOaOvqZ/L3wm8z/nK65T+0jnKNxbOpiMASZ61entrYIV
         fhjU11ADnxatoBXr1xeCXvPD1ZsWszh1RhrfeR6dxDllLNYi6bIq+tXmYs2ZGUIVi3Kf
         TiTcGT+wmPjG8MiZcmt5yHFaK7ZcDZ0W28gFq8sPQw+3Emj3W90Ijie5ntj0MR7k/J4A
         2WlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id s125si981815pgs.1.2019.06.18.22.39.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 18 Jun 2019 22:39:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from s0106602ad0811846.cg.shawcable.net ([68.147.191.165] helo=[192.168.0.12])
	by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <logang@deltatee.com>)
	id 1hdTJz-00072o-5Y; Tue, 18 Jun 2019 23:39:47 -0600
To: Dan Carpenter <dan.carpenter@oracle.com>, Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org
References: <20190619053205.GA10452@mwanda>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <2f4dea74-d78e-8b53-8dec-df8dc032759c@deltatee.com>
Date: Tue, 18 Jun 2019 23:39:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190619053205.GA10452@mwanda>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.191.165
X-SA-Exim-Rcpt-To: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, dan.carpenter@oracle.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] NTB: test: remove a duplicate check
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

,,

On 2019-06-18 11:32 p.m., Dan Carpenter wrote:
> We already verified that the "nm->isr_ctx" allocation succeeded so there
> is no need to check again here.
> 
> Fixes: a6bed7a54165 ("NTB: Introduce NTB MSI Test Client")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Hmm, yup, not sure how that slipped through, must have been a bad rebase
or something. Thanks Dan!

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

> ---
> Hey Logan, can pick a patch prefix when you're introducing a new module?
> "[PATCH] NTB/test: Introduce NTB MSI Test Client" or whatever.

I don't quite follow you there. NTB doesn't really have a good standard
for prefixes. NTB/test might have made sense.

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/2f4dea74-d78e-8b53-8dec-df8dc032759c%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
