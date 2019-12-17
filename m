Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBHEL4TXQKGQER7CXRBA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3445B1232C0
	for <lists+linux-ntb@lfdr.de>; Tue, 17 Dec 2019 17:43:10 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id a22sf1482109iol.21
        for <lists+linux-ntb@lfdr.de>; Tue, 17 Dec 2019 08:43:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576600989; cv=pass;
        d=google.com; s=arc-20160816;
        b=gGugH7pXzg2F3Uy1sCbPrj5DsQIPr11r6KFVCal9bZtssHjHqxRl40laG/TO0CaGMe
         PFfCt0+SGSdfO5U9oS+OUFgCU4jHCH0y3tCVHHw8Rzzoa2FJC8Y+dHFcvdLM4hP5dcf/
         4LEvrcF25w77Y42AsWm6OYodA36s9CbhKnDJaDkSWf+LbquHDzmvTWNzTrMEdRPwEzhe
         twLIKTW6hwK80cbd1i1dWwoqIoaRX1M+YAbaiVfOYJqkETyyEAXjbfd4wYbMkxYLUN91
         A2AyywT1IFTYzL7uRlIldQWFlgEgQhBI80tiuPCcarGRfctnFSXnKDBLJtGxkLYgCuj3
         3Wzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=6HJ2FaKkX/D+AT9OrHLfisp9QaPnnkjfCEAq/elSBuM=;
        b=mkI7AEDmsWlLopVzmVo0o2C8GekgZs4TacRryqvfyuduX+jlDS26Bp9rfM3pJpZSMG
         DTWPqYGpIQrB40NQIztKDXhdRBkd0EaiTEoJc9EWOBiig/XMwS/J45Hp2xC/Xxvz7J5P
         KfDFAbnEHXXQ4fBOMwoCm32nHLj/MpeA+qoTro8UqWBqJAF4t4GD014ZBiZfFZC6dUeS
         xBu/OQwJQooR5rQt+TYveAkOj3p6m3h99VPAsG6TBwxK6Ok+ux1moOiPSclajhargVZq
         Os3lwZVLUC7+NijJzmoP4d+tu6JeH+zVPPSPsAVdAMU7GPTNfeXWTUc9RVUoWqGp3oVt
         TAiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6HJ2FaKkX/D+AT9OrHLfisp9QaPnnkjfCEAq/elSBuM=;
        b=G/Xj+LhOSA3SbulAeGsvv4+QPcVj4AWnViP4AaAGVwFHmFsqZlNyHpzparI6AiEJfZ
         w9rDA5izOAUcX0LJ6Ob0xie32dQCck1YYSLlnvk6C2GUuPfY22C1DLut+3DajePTJnoG
         H3iagIfzVj8UxhUWCa7XXjkOVOgsSo0oBLhF/TkSNBDCxh2aOWAt4rdj7fvLc2H0/Lj7
         TVHGVj1RHf3e6lZKtv4FUmhv1KW/eIZ1ezwOxZKhXF1OFDnTXJoUSGIHSp4M/ZXMZ7NA
         FIPkteMP9IefgcYe1SzcGZ+NvC/AsfEegBI7qG4tRXksm4VUhDkMJyWYf+k4lIoFdeBR
         5TrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6HJ2FaKkX/D+AT9OrHLfisp9QaPnnkjfCEAq/elSBuM=;
        b=QvKwnfUuL72O0ZmEWDrlG1Q6i3mfxRId3EsHhmxyLihbWw4qFFRm/v/J145hsfUpP/
         dwtEARv6dZcB8uPMBJzx1gdWwzK3nFsasCOVqMK5i/ranjeBL171+AgTG+IDCdQqitcM
         waWSgVjAyRxie2FEVuMOivk8hVoOje1q//QdWqpA3o2pQi8ENkoFX3tDvHDc3HXbplU5
         jqEUF0+itlGJKsmonIJIDH/eaKr5fxY2QL0jXFu2cFZMPJUwu7NC6L6Id4pi3QVJ/sTG
         ezsC0ZqpJ9wJFRxIT3E1e1QEIhjJe7JFFid6MORpnD70+bvbk4IHNcjD1698rtp0D/qs
         qaog==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUAnmeuXDh8umuXSxctrAKK0ratjDrf/T0qQ+kmlN5/wHymCIi+
	r1rkeulI7KdoG8Ylp3XHsVs=
X-Google-Smtp-Source: APXvYqz9hUfFEvd1n70rwyyoua1Ywl29FA8Momof8A9pHRegbkmdKnSd4QPzsD6AmfT9nz0UTJESXg==
X-Received: by 2002:a92:10cb:: with SMTP id 72mr17443576ilq.17.1576600988800;
        Tue, 17 Dec 2019 08:43:08 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:3d16:: with SMTP id k22ls2095471ila.12.gmail; Tue, 17
 Dec 2019 08:43:08 -0800 (PST)
X-Received: by 2002:a92:3cd4:: with SMTP id j81mr12799049ilf.77.1576600988194;
        Tue, 17 Dec 2019 08:43:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576600988; cv=none;
        d=google.com; s=arc-20160816;
        b=oboTkAxPbhyakhD4LdJ0ski8Z8TyoD9XTDHgoUdAg4alsFDMIOCP3A54rlG7y6TY25
         rM4dWEohPR5QZEa5gn8TG7eiLmvl6A4ImZhvlMdvQoVPD5JF5FeD/8l8Ra65aBCx/R9v
         1X2m0ztR0eHuytVsBO2sJI6C7af8e1XbJn/NfxjZUiybnJzN5DlmwnpnkXmRsy3OfryT
         y/6LD28jZpt7PxKqx5IwKJG4KQNkQBArZGZarix/H66hJWfflrIwf5qlZc4+n98DB2bT
         jd/M34Yf0ComV7BMJwWt4va+aJDSu528WAcps2par5g8XrcZmQ+1uUUjQIzo0zOV0YWu
         uMUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=s3Br0VyPu56Qdmqts8VKGGaHfUT5UJSSk8LwnW7g8X4=;
        b=kTMxC2nAuxeO5+eb4EPAfBT1PUT99dp2UADQvoLdo217oZr0SIgjJwpWA+FcQYlQ3e
         EY70VYMkW8EYGRXW5GPMyNPhzUbaRVTw1z2ucv0ah9xbesd0GUzrWt9qqrryAR9qe6mr
         aQo1G7zv4oov/O/fydHxNy0+8btqVbL/jXsaP01/9WywPG3/fI/WyhL7JJYss5uNqngN
         lNCRwPGYhsZLG8REEdSf+fEHV2qQcoQ0BTe9vKNog+SOEoGhatq7F9Xht0phknE3VRFx
         EkH1FFUIX1wXi00BwqqwP0WsQsKafjoyNHBarMxiN63S3uLvvnw4BStg4LawhI7vmZsY
         8vrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id v82si584017ili.0.2019.12.17.08.43.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 08:43:07 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtp (Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1ihFw1-0003ae-Q9; Tue, 17 Dec 2019 09:42:58 -0700
To: Jiasen Lin <linjiasen@hygon.cn>, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com, jdmason@kudzu.us
Cc: allenbh@gmail.com, dave.jiang@intel.com, sanju.mehta@amd.com
References: <1576550536-84697-1-git-send-email-linjiasen@hygon.cn>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <d4f679cd-739b-fd80-8344-7da475937835@deltatee.com>
Date: Tue, 17 Dec 2019 09:42:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1576550536-84697-1-git-send-email-linjiasen@hygon.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sanju.mehta@amd.com, dave.jiang@intel.com, allenbh@gmail.com, jdmason@kudzu.us, linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org, linjiasen@hygon.cn
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] NTB: ntb_perf: Add more debugfs entries for ntb_perf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
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



On 2019-12-16 7:42 p.m., Jiasen Lin wrote:
> Currently, read input and output buffer is not supported yet in
> debugfs of ntb_perf. We can not confirm whether the output data is
> transmitted to the input buffer at peer memory through NTB.
> 
> This patch add new entries in debugfs which implement interface to read
> a part of input and out buffer. User can dump output and input data at
> local and peer system by hexdump command, and then compare them manually.

Do we even initialize inbuf and outbuf? Probably not a good idea to
expose them to userspace if it's not initialized.

Really, ntb_tool should be used to check if memory windows work,
ntb_perf is just to see the maximum transfer rate.

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/d4f679cd-739b-fd80-8344-7da475937835%40deltatee.com.
