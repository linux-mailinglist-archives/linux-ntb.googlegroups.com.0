Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBXNGU3XAKGQE33GSW5Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFAEF7952
	for <lists+linux-ntb@lfdr.de>; Mon, 11 Nov 2019 17:59:10 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id v188sf8151271vkv.18
        for <lists+linux-ntb@lfdr.de>; Mon, 11 Nov 2019 08:59:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573491549; cv=pass;
        d=google.com; s=arc-20160816;
        b=X+rZaBbxb10TrdaoVBkxeCW9qpyUvGxyz6csmMZ8v0gGP1hnYHWiaoFJmGUxn5FETT
         jevNhSxRdCYEteraudY4SetQeaAVFFZ5cUzwSTr/p2VIc/S6gjb1J5RuntgqmIpOKLP2
         RCeRlsff5N/x2f6eW16G4CEYCLSxI4DkXYnNkhD1+N4N0M0we7wU86WtTTYkNp4t3acL
         OhwoZOConq+t1glVHricG5ZZZuZwXGGW70pObO75RLdRBDws0arqQA3Ve+iVtIa0Oh6w
         zVFtvtmItoV9IBFAvVfhUCVftXi5bYS//yFwB2Gu+j8YltGQjPa/DFPNLFSm4QqvehVt
         qEgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=cQyPShtEnrUQEzX1GDLJZqiWebf804qLrhhyNnnbJWM=;
        b=Kv6xuTt7SE2+ip7WgOzZJrgEinVD5U4PYWiQXDFe/rINTYx0QLVnqcVEt0ui53fDVd
         ixjKm/cZkWSCR0QpXQmwy8KJ0vv6sIrlWdiuzPuxYrm/1XSxTQ47TdPSODJ+gKXp9e+U
         cgu9j0ic1HbH3ft7dSxpUD79xnp6edn4Hms2RVCa/c1oCweLe+oRG825VZw8VJ9/Ppr+
         pcHJ76zn/iZWiAVMO4E4DlcLoYcBtWnAsnfd6PBRnRZCKdGm0bNitLNH88XbChNWIexR
         d0WzNPiq/tv7dRMQx5k2AV9GobxExS2R34Zcj+kQVaYEmBpYVDgzhCl9sOja4ThNLYsR
         j7Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cQyPShtEnrUQEzX1GDLJZqiWebf804qLrhhyNnnbJWM=;
        b=Yp1xYIQ301rZ2vfD8CCnHngqN8fxuqx7gQpX+O6l7aEjEXZ54I5IMJLydq+xUwzBFq
         kEoNI868Tt+9kUefJ0BrlTZUE7xuEKQmIfjUB7qdrV0M+u8Wj9Zfyr3mezfQRSo+GHIc
         yeIc7OTvFPSRE5RUrBQnU9gpnzr1EFSK1pL4oHqqhkRiEvg74/Wc0YUkGzDIDblluW8W
         PUnllycvGxrAm65ZEY4+cT15U1Fy1mT/138OBGgJ6vmsipYr4sIpurnWvLH6wzaVLMgO
         +fjJpUlbJUwsymDfi/fk+G0ZEpEbdOlyUpdMNRepH/OusG8NXy1QYE/cTxQSSppxm22y
         nmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cQyPShtEnrUQEzX1GDLJZqiWebf804qLrhhyNnnbJWM=;
        b=U8ykWdMIxq3ISGAJuG/BlVEMiUj7wKnsRPHyj3lPy7hNa8S0Sd05UrasnvHlXT+jAC
         qF33MPtE2ijbqSCOqGe5pPly+cvvAz7LpSF/05My/DtS/ZneEh0oeJFcYLfApHfEU/AZ
         O9hsFjQZlzpQi6ayXVJLFaG4C7EScPJ17PnG38g+8SNL6pdzMYt/x0qgsLRS764xmbvc
         BXrj/BqAeCmyj637xbcRJ5ws4dhSyRDuGmzAdsBcMWxAlBkk+uli0sQt2SS1ra3nu8EI
         QgNCfVoGnnI03uGYF4zkY1DztJsQjI2gqU/ZbNI2mvy3HY56JWXqojbuo2TrA+Dl2Lg7
         QyCQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX5/C4ncBJLg3LGX79YbmHdXwvNuZlCErRQHYwNo0roIGnTeHWy
	VKIuCA2R0V9/BzjGRcIbgeA=
X-Google-Smtp-Source: APXvYqzT5ZhC5UTl9FPXlCAH+NNHAAHnf1IDIvFaFO+N4Ly4fAx2IUTqlV5CzG7sC11C+xOP8XrJrA==
X-Received: by 2002:a05:6102:126a:: with SMTP id q10mr18369345vsg.43.1573491549717;
        Mon, 11 Nov 2019 08:59:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:1607:: with SMTP id 7ls621187vkw.9.gmail; Mon, 11 Nov
 2019 08:59:09 -0800 (PST)
X-Received: by 2002:a1f:1d52:: with SMTP id d79mr18822551vkd.98.1573491549216;
        Mon, 11 Nov 2019 08:59:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573491549; cv=none;
        d=google.com; s=arc-20160816;
        b=Vq6E/rjJ2H1BZPbNY8KaxIrmXsOU971OfqaZi6qvkm3WJ3OXlHmPprp+SdtXmL8jD9
         oZFFI5VHEtANO6FHTpSJmvePlJzsUbVgs+TqB/Fp086GniRDLCLxjMGt34k4SQMF1B84
         3RUFxx+WcBZGz3d33SHmRyyUIJesukPlKipYrOf8oZ1bP24MaHVuTAAA1X/8jS6+SIWf
         F9NlxNlCI12Efh7uU8UFdi3DyNNA2+c+cF3wu7xtEZ7E3O1FqGFVhe1mYscDDFHBKXW9
         QQXlRvc0aJjzIScRjy+QJfi4d8YKqbwP5S5p1GefSxWLaM2C2LzWDJrAO3qU3SDd6FNH
         nUPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=J75fXgf9Z1PHvRL2II1tfxI6L4R5aVW9pNgIcKmjI9U=;
        b=gzdynGg7n5//JnaNoWA948Dm/HVgBRLwyE2/pldnKk1ODk9/n9lWHV1j8BBryaQXN4
         jjDCc5XCjz8z7BawwNze6/92Xn4vcLxbSqU7gT64Qvo+qfRF0ekUQ5+X0SDCh0VXZfLK
         uFopgEssM+mxafEKCWQjrOdUFrJVgvoxUIq+Ubk7F/Rbr5mTpVuTCty9S7hDgp1N3xmz
         i3TbR8SIhNcGQpkql4dz/Z9e1JOwJR4KzIO2rdG+KAuT4u660jIfyz25MK4E2mZbAquo
         XZm7dOy6MG4QZWLp7pD/axFlsPlhFHljJM+6o+DUfBrX/CM4rj8cozId+lOMCGp4az3M
         jemQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id p78si1263107vkf.0.2019.11.11.08.59.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Nov 2019 08:59:09 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtp (Exim 4.89)
	(envelope-from <logang@deltatee.com>)
	id 1iUD1s-00083M-Nn; Mon, 11 Nov 2019 09:59:05 -0700
To: Jiasen Lin <linjiasen@hygon.cn>, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com, jdmason@kudzu.us
Cc: allenbh@gmail.com, dave.jiang@intel.com
References: <1573097913-104555-1-git-send-email-linjiasen@hygon.cn>
 <7ea7ef5d-7e46-396a-8d70-2c6c333a4508@deltatee.com>
 <8973e56c-ccce-2884-f4dc-4d0f8072a948@hygon.cn>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <c340cb9e-9dcc-39f7-1e12-198ad2a47861@deltatee.com>
Date: Mon, 11 Nov 2019 09:59:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <8973e56c-ccce-2884-f4dc-4d0f8072a948@hygon.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: dave.jiang@intel.com, allenbh@gmail.com, jdmason@kudzu.us, linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org, linjiasen@hygon.cn
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] NTB: ntb_perf: Fix address err in perf_copy_chunk
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



On 2019-11-11 12:51 a.m., Jiasen Lin wrote:
> 
> 
> On 2019/11/9 1:04, Logan Gunthorpe wrote:
>>
>>
>> On 2019-11-06 8:38 p.m., Jiasen Lin wrote:
>>> peer->outbuf is a virtual address which is get by ioremap, it can not
>>> be converted to a physical address by virt_to_page and page_to_phys.
>>> This conversion will result in DMA error, because the destination address
>>> which is converted by page_to_phys is invalid.
>>
>> Hmm, yes, ntb_perf is obviously wrong. I never noticed this, how did
>> this ever work?
>>
> 
> The default value of use_dma which is used to enable DMA engine to 
> measure NTB performance is zero, in other words, DMA engine is not used 
> by default. Thus, olny memcpy_toio is called in perf_copy_chunk and not 
> trigger this bug.
> 
> If we install driver with specified dma-enabled flag like this:
> insmod ntb_perf.ko use_dma=1, this issue will be triggered.

I've definitely tested with use_dma=1 in the past. But it looks like it
was broken by this problematic commit and I must have never personally
run the DMA tests after it:

5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")

So it's probably worth adding a fixes tag to your patch.

>>> We Save the physical address in perf_setup_peer_mw, it is MMIO address
>>> of NTB BARx. Then fill the destination address of DMA descriptor with
>>> this physical address to guarantee that the address of memory write
>>> requests fall in memory window of NBT BARx.
>>
>> Using the physical address directly is also wrong and will not work in
>> the presence of an IOMMU. You should use dma_map_resource() for this.
>> See what was done in ntb_transport[1].
>>
> 
> Yes, my mistake. I will modify the code according to your suggestion and 
> test it on AMD and HYGON platforms with the IOMMU enabled. Maybe the 
> following patches are relied on, when IOMMU is enabled on AMD and HYGON 
> plartforms.
> 
> https://lore.kernel.org/patchwork/cover/1143155/
> https://lore.kernel.org/patchwork/patch/1143156/
> https://lore.kernel.org/patchwork/patch/1143157/

Thanks!

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/c340cb9e-9dcc-39f7-1e12-198ad2a47861%40deltatee.com.
