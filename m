Return-Path: <linux-ntb+bncBAABBLNKWX2AKGQE6VUMAAY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F551A1B14
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Apr 2020 06:38:06 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id h26sf5629648ilf.15
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Apr 2020 21:38:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586320685; cv=pass;
        d=google.com; s=arc-20160816;
        b=rrT2TAFKNP08Bi/oNgl9q0PQsusLXs1HTTO5QhanIhfT5CPv1dLL0zV08gamgWqHts
         j2X6l1FmDgwv58kfMWw7f9RMh8aT61Fy8SSmLSVwOz2aTJxazorQPf5Rsnkjhl88ikJG
         11mvNCFC99KwEpiMaJgWiE7zssjeepoe5vRmgfNyjR+wJGt10vEtDPltGyTbcdkEEPso
         0FmwFDIMgORBqM4lBD879FwAszQk9irDjvtS49u86leEebuqrpsfhc1+FaSPSczpnfOp
         QOonjcISRpWenfl5MZyO0ysBRzs5Ud5pVs30TGX1X1d5eAYOIccH7SZwwcAZUxA/dJWg
         X8cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=C6zS7RSuf5tCNxMjTg5h+6xKIm6QcAsiKqdGD/V9M4U=;
        b=r2h5dI2tFNQezs7frjM/VAyg9uAZtAXB2pzF0M4LP+4cwU6KiQwwz26rwtX0ZXvobd
         f35Rs5jvJ2t+KFSotTGQl8F8xtw+aVKUkrK3/yYfrFgi5+Pf1vukykn3H1PXklsTkmvH
         kU+ADKSJSt0akdH09xQC01K0Xc3m7KDMWTFo+UX/S/DMSnXfyPR+vbteTTeQ7XS++CWT
         KxzsGFNH8qZjmz9bs4sjUqa/5m93b0HwFyXEzBnaN7YU2se+XmWSOiYz8U3q9QvVdnOE
         o9HbKdLdmB1IJ9mPuNrUQptd6461MLsoQAyCKWJj0GdASAtbaLI7OZ296jy0QOGuYvUs
         T/GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C6zS7RSuf5tCNxMjTg5h+6xKIm6QcAsiKqdGD/V9M4U=;
        b=l3vlsbybdCaa7kRDddDIgmbvFV6/9CG0lE13KdEEmaJevTn5yMRc1leTTnlmAJ1bVn
         cJYxNmviLyBU873FzSIKvsiM8F6Vylj16kAYuvIlNe6a/QvVF3Hf0B84ah5oEzKVUo4P
         2G7m6JEzVkAeVz++FnLnQe38m6NP3PqqpwzNXc3wa3PDf/tqRSNbwzG0LPSJHQ2Vz0pi
         CXWee0HK7iCcNnSRfedVGMIhFPdH/Engh1ErMg+vAVdYguxG48mGGKEgEEWDako28mrM
         tKOovnnSpkJZqFy+DY2f1d7rzNvcKUSYPbPB3ku4nncV3ck4GybgYW/lqVccBVNdRwdW
         Hvxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C6zS7RSuf5tCNxMjTg5h+6xKIm6QcAsiKqdGD/V9M4U=;
        b=XDNWlN2pgpzHkKo2eem8/Vx6oAEkmIF4Mspseqpz5XoNnS0rlnAnplun2z4WidBpZG
         ChGbqEu+kMDedcujw+aEGcnJVyyuhkVlRpQN1m/+tExDNAW8IBUO9VtD6vypvfrkq3th
         tsghKXPRt33PIvJu2FRwp4q+GJTcsUl0JTn3m6+eJ+k9ODcv48AWrAKptm0qARVwBCEm
         kTM3fuRdSBGI1gG9FIdMgWRdzJArp7EwIuUlgmliakA6l1u/62ZoXoM7vOXQqCRGiC/f
         tgYW2OItVE3y87PeZC5U/bga62dhMX5MW47+rgNwjNIWErXmMsv5PQddduw29nRAkjnU
         vUTw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuZSwCZmhsrjOBLn7Up/nWYnQ8+YLJUgXKcZlKxCL1LLem1bSTi/
	zgnx06rPLgAYO7mSR7TvT2A=
X-Google-Smtp-Source: APiQypJgK8TQZYOj0MOZBg4RbE9xDkwTOJaNe2ap0mdUintY1xD3lSwXY2QNI9DeAIBqANH+jX1lcQ==
X-Received: by 2002:a92:7a0d:: with SMTP id v13mr6369450ilc.175.1586320685216;
        Tue, 07 Apr 2020 21:38:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:9a0c:: with SMTP id b12ls1313606jal.11.gmail; Tue, 07
 Apr 2020 21:38:04 -0700 (PDT)
X-Received: by 2002:a05:6638:186:: with SMTP id a6mr5083963jaq.36.1586320684948;
        Tue, 07 Apr 2020 21:38:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586320684; cv=none;
        d=google.com; s=arc-20160816;
        b=FEG1LFm80YRbpNUSMdzz2FtcciAtQmJVfTCcUO3+aPTFJbJ1kK32fV0NUkugqYGhCL
         suzOtYLCr8wjY2/rcmO0wod4O74kkcMKzYaOakwnSzYmqq0ZCE+lCrB0wxhGGgiUuSKv
         ef8IeKB5ja53DVg0DXtZaL0jr0wwwmFXvAJjrtGhaYEoeFZMixKrrnj/J9WGNV3+Rvlz
         +qWtJHAS6yWiov+YUlOVE5EszMJkrfWNeBHVv7lDY5XsU1npIkhpujkPVby83td3Ulgq
         WblC2ZTR4xNXaYeO1sUjnfmuT6Ti9l9DFd35IeZko7XE5EQMYiCFQizZeG7mPmGlh7aR
         Vddg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=JeXlagqItF1qLfdtztt5Nn4Ugvzn6ApJUWjiUAeH5EE=;
        b=MN3oEmkSViMg1wrNZy3cuiJ6aavz/d61A4gYlcRGfjzy7ZxvT0ojq9m9sHQ40QSS7M
         nu97jH7VVo0dxrJyYf6NSoi9520e8iEiBB3oxc6MrL/4xm3m6xWglAhMjaJFTKJRHHZR
         enmaa25wpzbwL5ZQKMFFR9gys0KEq1btPFGtQHH9rvUikgSaTRB5z8v7d+YEtQXqG2oo
         4iT1kWRrZVW07RxHeKqomFkYxreGfjhJdHzrNjKd9mxD8E65YrgxcnO8VA6fqjWvKqSS
         mvgWrTASchvs6llgJ7UYpEm2wud2P6aw9D8G+CQFHhpKISp6ULCRpwo+XEZomyJsrfnA
         ohHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam1.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id t125si517141iof.4.2020.04.07.21.38.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 21:38:04 -0700 (PDT)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-DB.hygon.cn ([172.23.18.60])
	by spam1.hygon.cn with ESMTP id 0384bnqF096570;
	Wed, 8 Apr 2020 12:37:49 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-DB.hygon.cn with ESMTP id 0384bkNr000670;
	Wed, 8 Apr 2020 12:37:46 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from [172.20.21.12] (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Wed, 8 Apr 2020
 12:37:26 +0800
Subject: Re: [bug report] NTB: ntb_perf: Fix address err in perf_copy_chunk
To: Dan Carpenter <dan.carpenter@oracle.com>
CC: <linux-ntb@googlegroups.com>, <zhangpanyong@hygon.cn>
References: <20200406104105.GA34519@mwanda>
From: Jiasen Lin <linjiasen@hygon.cn>
Message-ID: <a00ff0fe-8451-67fc-7abf-53501cdc0fcd@hygon.cn>
Date: Wed, 8 Apr 2020 12:33:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200406104105.GA34519@mwanda>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex02.Hygon.cn (172.23.18.12) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam1.hygon.cn 0384bnqF096570
X-DNSRBL: 
X-Original-Sender: linjiasen@hygon.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
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



On 2020/4/6 18:41, Dan Carpenter wrote:
> Hello Jiasen Lin,
> 
> This is a semi-automatic email about new static checker warnings.
> 
> The patch 99a06056124d: "NTB: ntb_perf: Fix address err in
> perf_copy_chunk" from Nov 20, 2019, leads to the following Smatch
> complaint:
> 
>      drivers/ntb/test/ntb_perf.c:1017 perf_clear_test()
>      warn: variable dereferenced before check 'pthr->dma_chan' (see line 1011)
> 
> drivers/ntb/test/ntb_perf.c
>    1010		 */
>    1011		(void)dmaengine_terminate_sync(pthr->dma_chan);
>                                                 ^^^^^^^^^^^^^^
> "pthr->dma_chan" is dereferenced inside the function.
> 
>    1012		if (pthr->perf->test_peer->dma_dst_addr)
>    1013			dma_unmap_resource(pthr->dma_chan->device->dev,
>    1014					   pthr->perf->test_peer->dma_dst_addr,
>    1015					   pthr->perf->test_peer->outbuf_size,
>    1016					   DMA_FROM_DEVICE, 0);
>    1017		if (pthr->dma_chan)
>                      ^^^^^^^^^^^^^^
> This new NULL check is too late.
Hi Dan
Nice catch!

As pthr->dma_chan can't be NULL in this context, so there is no need to 
check pthr->dma_chan.
Will fix it in next patch.

Thanks,
Jiasen Lin
> 
>    1018			dma_release_channel(pthr->dma_chan);
>    1019	
> 
> regards,
> dan carpenter
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/a00ff0fe-8451-67fc-7abf-53501cdc0fcd%40hygon.cn.
