Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBYF4VOHQMGQEXDZMUGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EF54962BD
	for <lists+linux-ntb@lfdr.de>; Fri, 21 Jan 2022 17:25:06 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id i9-20020a056e021b0900b002b799b36190sf6246322ilv.13
        for <lists+linux-ntb@lfdr.de>; Fri, 21 Jan 2022 08:25:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1642782304; cv=pass;
        d=google.com; s=arc-20160816;
        b=V6a6E5QoHM2ZfVvvKdfEuNZxT3cMgdTtJjh5oY5L6np9JbilV1RMqkXOaEwXodaxPg
         TfSKRDoZR6V7k+HnER8CjMpXunv32ajQdXSNYIALeDZpbvnSHrJREmiCtxpAMQn/Jsl3
         z0uyWF94nNrntiOYCv0I1hc3xLcO4Wx2B5IKypZk3j9L5RP8s5n8aEJxXPDlt8iMBDDw
         R265gqcednKlfe3w+oT/Jdqmyej+/rganwzPphrrSxxlyJjUr+e0pI01anOcdssxW5KU
         rIxvr4ZL0HWsxSMj7wSMO7k+M/ZegpLz/VO/nj6Fg6A7WpCtL+Q8aO7W2fU5gZGtyvTx
         FdIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=DVZFbc9cG4kA+thQd0f9Re9b2UJJJIwlBkBwb1mtp/Q=;
        b=P8rWMO+FNWG5bB5LXZfQi0BLq9f/s14xRi4iPbFUQfBrvbFcdUb6W31BluhKf5H6k+
         WYgMWUqJsmvgmgVJK9xSC6qlLlEA0+sFYufMdqQ4H7kXnmWZzGJUFunKV+t1vLhbDg59
         mPJOGUkh1zSSd5E17/myFTEU+FgDmfxEnLEeLAnTyLUMr94fUW626vnpkDgMIl5Sgj9b
         xTE3VepwHfsES6DWwlv/G73o8NAt05mTtd9hqBMxShZfV25m8bwAhgAm4JOEcNvXxIlr
         ZFTmPq+7rYIi4FybrCLY0iP7olS7AwGYi012f6bZcJnlNyWWWymP5gkVifx5lxpiwk0V
         mEFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=e2F4wgWj;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DVZFbc9cG4kA+thQd0f9Re9b2UJJJIwlBkBwb1mtp/Q=;
        b=turNSkqwQjeNjPb0QBiaQFQZGS0VD7MroyydS1Kfv81XskuL1X/4un7j2TfKA7Tp+Y
         E9QUjPv7MgxKKJh+k9zT6+lQ5JpgucoZBzlC9N/JGRfuNFcIfYko8Our6dIXA50w3HbK
         UI1Xt90aRNkvpTGhajhNg6narQWXWCFtweBSetGGZg19dhu3Q/vrbMHmWPykgLxjSYiO
         u+eN4RPTBGX034hwQp+3gF9hqfKbMFOn6L5kAdyFzwW5ffXPHfSQMphR/UXa+D9L4T7j
         S+8OicaMVZRp6FGbptWVvzyBP+9VYlXbpCW7hbPCgQuHOB2OvgbU3ymZ+Lb9zmbkc7Ex
         Ck8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DVZFbc9cG4kA+thQd0f9Re9b2UJJJIwlBkBwb1mtp/Q=;
        b=SKS5Uw9VPcbF1MSBLzvJwzywOl/4qmvI543MimUsZMbRnK2se7nw2N57jwpr6gmHJ5
         3Xf91rJv1TPYx0+WmsfcsSik2ArJubhfmfFn88Ws2WxiBMUPZtPjRV/OuFogRoL8hlec
         w+XDm8CV1F8M20b/GPFIWNnj1BJJXiHoCoGX2Wnk30puyxidQAE68TmkIcoF2H0xpEty
         VeF4dO1eCiBhk7dIfxINjWNfLAJM6+bR7yRucTNjoAnT495IwVMQFh8oo43PDbc2XETX
         4BdHbqiOtst4sdPZOM0DA52+f+nHAZUS6Qc8TVR+eApvWXDPUar25sAQ3vVsxfKgvUKV
         DU/A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533Ezl9XE66ZTl90nToHpefGmiqm0ceteW8e/SxCKwUZdSZyK0av
	MyLpwOv9aC7Tfqa89rEJeOA=
X-Google-Smtp-Source: ABdhPJyj7n4VvjSZHavbcyTu1MxsVva3nxsVp/NtUcJeozxxW7Ta498lP7rqUDsejIoMiSV+cZ5QUQ==
X-Received: by 2002:a92:ca47:: with SMTP id q7mr2513354ilo.236.1642782304349;
        Fri, 21 Jan 2022 08:25:04 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:2e0c:: with SMTP id o12ls1081356iow.5.gmail; Fri,
 21 Jan 2022 08:25:04 -0800 (PST)
X-Received: by 2002:a05:6602:2d8e:: with SMTP id k14mr2425707iow.197.1642782303958;
        Fri, 21 Jan 2022 08:25:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1642782303; cv=none;
        d=google.com; s=arc-20160816;
        b=P4+FHocAXvufC0G3yiyQACXrQETnxHyfzrVfGNMN9F/jJ0ZpwIWPCjnVK8h+aJI5qP
         W2r3V8R+zz/K9tYeMDr/g4VlehWiNhYwJyYPCUBTn1HaxKRV5Lf1AfAVdHLwRqM8bK38
         NepqMYW5b2P1QR6q7DoWpbOaM9kqAAkq5ShCYwP9bOHS/uCYEt1zyjE5IgJi7EWD5wnn
         Quke90TQtetJBHMe5iV1a4uN+WSsdrJskhMU3o/HPtk5rygANFEZ5cHYsA65O15lFcQX
         e0UgyxfVbZeIIU8a1jrnqgaXkrRRkYa0OhWcFmXQlJm/0Byjl7L3uZMljvUKGL8aRskP
         sK6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=kytrEWZ9vHuQBWDT3D9VZ4/u4ZwGzsRQyn7am4nCe9A=;
        b=aHRDuQbdftAJ3RAml2sTZvgpAUwuGmdjnuD57m5ZB80vETfM+7Rstg3N+okZXWjJ10
         6cMq1Ej/60dzPFMPtoMhzzj2vF8TtBbX1yovbKxYoH3MpO/Oa1aZP2B0GfPDGjPsz39D
         GMTMOP/aJfIBP6UpIx+TwcN7m2erVzYxCEQUnw1IU1C3YsfavMSrqrr2+faeM9m0FGne
         1S/vn/gOiB4E78N7apG4fNBihXm1M760AaD+Ibw4t7nBRDLrLLXOMh6ZesTte7vvUZXE
         YcpJEFuhzuc/xkkmIO/RDCeGgfbIQdTccxJ+AO7yKH2ro+pPs+ffMKKv3mUjLFCSMEs7
         4OEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=e2F4wgWj;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id j19si199223jat.1.2022.01.21.08.25.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jan 2022 08:25:03 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from s0106a84e3fe8c3f3.cg.shawcable.net ([24.64.144.200] helo=[192.168.0.10])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <logang@deltatee.com>)
	id 1nAwij-000Rlw-FT; Fri, 21 Jan 2022 09:25:02 -0700
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20220120230247.GA40182@embeddedor>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <b2d9c1ad-9a6d-4e0c-e877-44029f4c1a7e@deltatee.com>
Date: Fri, 21 Jan 2022 09:24:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220120230247.GA40182@embeddedor>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 24.64.144.200
X-SA-Exim-Rcpt-To: linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, gustavoars@kernel.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	LR_URI_NUMERIC_ENDING,NICE_REPLY_A autolearn=no autolearn_force=no
	version=3.4.6
Subject: Re: [PATCH][next] NTB/msi: Use struct_size() helper in devm_kzalloc()
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=e2F4wgWj;       spf=pass
 (google.com: domain of logang@deltatee.com designates 204.191.154.188 as
 permitted sender) smtp.mailfrom=logang@deltatee.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=deltatee.com
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




On 2022-01-20 4:02 p.m., Gustavo A. R. Silva wrote:
> Make use of the struct_size() helper instead of an open-coded version,
> in order to avoid any potential type mistakes or integer overflows that,
> in the worst scenario, could lead to heap overflows.
> 
> Also, address the following sparse warnings:
> drivers/ntb/msi.c:46:23: warning: using sizeof on a flexible structure
> 
> Link: https://github.com/KSPP/linux/issues/174
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks, looks good to me.

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/b2d9c1ad-9a6d-4e0c-e877-44029f4c1a7e%40deltatee.com.
