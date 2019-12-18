Return-Path: <linux-ntb+bncBAABBKVN47XQKGQEMFRJ6QY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C06124067
	for <lists+linux-ntb@lfdr.de>; Wed, 18 Dec 2019 08:35:07 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id 63sf742979ybz.11
        for <lists+linux-ntb@lfdr.de>; Tue, 17 Dec 2019 23:35:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576654506; cv=pass;
        d=google.com; s=arc-20160816;
        b=0wuS62jJAkzgmTfditFGKeTuTKrP5U0dDj+nLGCiHVe2CwjX8vPs2ovEoXSnOeCqvO
         H9Umwr42yeiVpdgPP6yAj71dUXgoK+XeBOoF+VDLUaLcD/MBGIBz8NDvO+cUDpYeiuNn
         EkgbFC/X9r2EBZ66nvP64vy4sS4cNVqF4g0QfWL8R7FyZriHSg1OK5EMbaDbzF8PcSI+
         tmfMWTBWclhkDHqXtrGBYl3K3KeKvMq03wycnm9QXSeOilNIezAalhdxVw1sbo+0Awaw
         0KMs3YKsAEvCf2hx6lt79jePqyPC91neZ7abfY29/5F4AdE0rWbQjO39Qv6BvtXSHqUr
         +jeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=IXm1PXVXTqUnvbwoI1RYuhulCcmiSpCuS/1AiHhcUqE=;
        b=KOOaBRfBa3uCzSjxrpjFYGm9tRShwoKDN0ZzQHvQfOcVntRePaQgCyHQDl50IzE/Qr
         7Yz/ol79ccfYR1pdDC71tAOHOguSOmylCHwiaUg8P0HQfxR4RTFR1WWdhmqOo8PsIuea
         iro5mdut6QBkJTIb9zF3syGVVlvc8F3eUxpe9bjxra/QQ+uC38AH93GLZNNKMCAt/b7u
         BvV9E8IZDqF8E2N0bFPFFK7ekxOLZYLM0lN0FRwQ80ErXFWLnSrm6Pz/FXZYH0D0IZiY
         z1uZIsLI3WcHs7uBWSDVNWUqdwRY1eoSvLtOL9LpOXy1ykYzwX1lAwrDhVCDyz4UoNPw
         TCWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IXm1PXVXTqUnvbwoI1RYuhulCcmiSpCuS/1AiHhcUqE=;
        b=dM5yGM8l4UKnynX5aRGy9NUCzPo0EiRyqsmAYj5Vrp6PNiyt9h2BH5SqQ6HABWIB3O
         F19Ly44ZKC0v/jRLZaCtgNFcvdDbHHWIDwq6Z34T/EyuTztYCyF2PSMVq9iHELGnQllp
         lhqspIUFQBqaXy8hF+NNQ0DddU8fyiQvOqN4LgfYqzIIvK6KUKN04KjdHnv4wdx/aDqM
         PflzwZI1rEU3LjL58uEsvBN0UJcwYyq+LK0AYvFNyARBcjc7HCM+uqwidY0/NadoQ0eO
         +e5+SGI/r0pUJSn6/w+Gn0E2aWxPjm8T8CSN1MkgAowT7BqeVLOblIL350I9HI5IKr9K
         hFig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IXm1PXVXTqUnvbwoI1RYuhulCcmiSpCuS/1AiHhcUqE=;
        b=g9zNuXMdJO3j1A4B0Sevjay3qxtJ8Cw9yfsAqqeGN9lB+gL+tTjNw1mqkmFbaz/Vne
         GlG7SmnDSYdBEI0036EiV0gE+dE4xHNqgJhpeFBdCJRgS1bi3MC9oH/qqRvB6CY8OgKb
         VLvPY1aqGdlBUdWzG5yqTf7QgI+HP5X6tubr7gta2Vkw7Itp2y3zwQfvvZoueLRwgcrh
         KEAPD5UwI8AZpUh9XiMJt9sZfVUgPCVPLoViW5T0S/uqoSpxJ3lm4dkmdBWDwSE5QdMl
         a4GbQCeLuAZqtsbNbNuoy45HkGMRropMyJyU9oKkG43pJB4DvmUosi4Mf7ZV9bwKO9jr
         iK5w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV3835TGqSMCHwZLV8Rh9KHGh6vs5VX7x3GdUx4zxsGkSYyQZq1
	zEnIQ75B49J5gpvVpGbUZxk=
X-Google-Smtp-Source: APXvYqxpCkq0Dcgmeu8RulUfUVaP7taJGEOJDkOqvrGHEjlLeZwUzqH24Chho5xflZOlI6OdiIJakQ==
X-Received: by 2002:a81:2f16:: with SMTP id v22mr961251ywv.399.1576654506464;
        Tue, 17 Dec 2019 23:35:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:7a87:: with SMTP id v129ls206061ybc.1.gmail; Tue, 17 Dec
 2019 23:35:06 -0800 (PST)
X-Received: by 2002:a25:c42:: with SMTP id 63mr773058ybm.425.1576654506126;
        Tue, 17 Dec 2019 23:35:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576654506; cv=none;
        d=google.com; s=arc-20160816;
        b=K0W7L1Qqp6roG2lTHzskV9MhqyT8E56KeEFx7frnzAa5yFIaVmoyHKvYs3I9+AiLDc
         ULVvDWJnMxMpbCn9haxg/vGaX2VCMbPBv/jM5wrYvQP/dt2WSqJxyXj7n6blc2uUqsmM
         K1ISTxvrPTfamk2lohOjsTuv/d5A1v73mR9LOrSnBgHl7Lm8eMUZVzwGLf5xfP4+6ufy
         XboaGgU1yBLTifFM6aQGwrxplZ0g9pI4XpQPEC1Mk8ZmscqHxOUIUPUgVoJr0Q3F/haA
         UJUbLt38Gg5nd7kvJOcxxpnFHiSldMGKL8shSGP+g4noHoqO3xlHyETjYw9xixBy36pq
         nw6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=K8ERmAaCoWP0DapvLmH/TGOHmrfV1dbS39VGNQRziDU=;
        b=VIHK4cCVAW54dCpcXvHln7RLIYYwblOuWrXffbMSmWMO+VHYJsCBT2Hn4PC/gxhZDm
         ZBy55KfGsZ0H+DM0Hc4wYuGAiy0ddayLapqCak9KHHjkwQw5ksmt93GgqRWlth0SyT9k
         9Old7Q7FTtpo1SY39xmXRbGpNNBDee8a0tTB5B4b0w9EhHxeoQAc9qQxRJGVQPu6jBDW
         pjDVD6Q5grtoxWYL4hHuBrUNduTo9tsWAyXa6dV+tk8G5Yj6n6F0VLTo1V2lsyunkXOR
         n378xMka4XMIjMiGpwxim5dbOYs6kmaqTE+hWcRNOXlMiuEQ06/GIshzNllOcqF1TTA2
         dKQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam2.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id z5si68151ywg.5.2019.12.17.23.35.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Dec 2019 23:35:05 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-DB.hygon.cn ([172.23.18.60])
	by spam2.hygon.cn with ESMTP id xBI7YsLc029176;
	Wed, 18 Dec 2019 15:34:54 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-DB.hygon.cn with ESMTP id xBI7YjaX044964;
	Wed, 18 Dec 2019 15:34:45 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from [172.20.21.12] (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Wed, 18 Dec
 2019 15:34:54 +0800
Subject: Re: [PATCH] NTB: ntb_perf: Add more debugfs entries for ntb_perf
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, <jdmason@kudzu.us>
CC: <allenbh@gmail.com>, <dave.jiang@intel.com>, <sanju.mehta@amd.com>
References: <1576550536-84697-1-git-send-email-linjiasen@hygon.cn>
 <d4f679cd-739b-fd80-8344-7da475937835@deltatee.com>
From: Jiasen Lin <linjiasen@hygon.cn>
Message-ID: <fd3efeba-40f0-3933-af48-d74486ddea86@hygon.cn>
Date: Wed, 18 Dec 2019 15:32:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <d4f679cd-739b-fd80-8344-7da475937835@deltatee.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex02.Hygon.cn (172.23.18.12) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam2.hygon.cn xBI7YsLc029176
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



On 2019/12/18 0:42, Logan Gunthorpe wrote:
> 
> 
> On 2019-12-16 7:42 p.m., Jiasen Lin wrote:
>> Currently, read input and output buffer is not supported yet in
>> debugfs of ntb_perf. We can not confirm whether the output data is
>> transmitted to the input buffer at peer memory through NTB.
>>
>> This patch add new entries in debugfs which implement interface to read
>> a part of input and out buffer. User can dump output and input data at
>> local and peer system by hexdump command, and then compare them manually.
> 
> Do we even initialize inbuf and outbuf? Probably not a good idea to
> expose them to userspace if it's not initialized.
> 

Good catch! Input buffer(peer->inbuf) should be initialized after call
dma_alloc_coherent in perf_setup_inbuf, but output buffer(peer->outbuf)
that point to NTB BARx MMIO address can not be initialized. The address 
of memory request that fall in NTB memory windown will be translated 
into an address that point to input buffer at peer memory system through 
NTB XLAT register in ntb_perf. In other words, only input buffer should 
be initialized.
Will fix it for v2 as a separate patch.

> Really, ntb_tool should be used to check if memory windows work,
> ntb_perf is just to see the maximum transfer rate.
> 

Yes, you are right! ntb_tool could be used to check memory window
by hexdmup mw and peer_mw after write mw_trans and peer_mw_trans,
but this is only one ntb client be probed although we can insmod both
ntb_tool.ko and ntb_perf.ko, That's to say, only one modulue can create
files in debugFS. So, I suggest that add debugfs entries that can read
input and output buffer in ntb_perf.

Thanks,
Jiasen Lin

> Logan
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/fd3efeba-40f0-3933-af48-d74486ddea86%40hygon.cn.
