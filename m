Return-Path: <linux-ntb+bncBD3NBC7Z7QMBB77X2GHAMGQEWF3GA7Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 99015484647
	for <lists+linux-ntb@lfdr.de>; Tue,  4 Jan 2022 17:55:28 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id n24-20020a056122069800b003130017823asf4183088vkq.23
        for <lists+linux-ntb@lfdr.de>; Tue, 04 Jan 2022 08:55:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641315327; cv=pass;
        d=google.com; s=arc-20160816;
        b=bb+LLUuSlVQxqJu7RGpDnLu43oHFvbBtApfaaHeanNRiQUA0nC387j18yUAT0dESVh
         3epO3Kgrej89+pd9AAfYmaqU9vPEIvIewrNsOt0BZR2wxuDubjLYCQSNWYpH7SYl6kAg
         1qdwfSlwzuBnIk+7Qv6j7/m3Xp9iGYn+eoKmWM/HrJ2tK0BXM1jhZJxj1xQ67F1kftti
         0/EOZoA+obMtJBTSDpjDyt0Q0VFsr7q0JdGJak/pSw10KbuwlpKnmn7bGzEo7CDj5lkJ
         lV23bwwekcPZec7v3go0HgliFdt3Gyod6iVSYa2R9Nuk7Jsa8m1AAVVYnOKOPX9zj/EG
         RZAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=S0MvkseKN3e3WgyvsbrcNn3ZSZY7VzAn4kFFwMZl2Yk=;
        b=kFBsKDm6A6y7V8AHvtHZqB8kbWt3j02R3TDK917bfhySe9kTl4/o2HChxTpIEONVa0
         HPx2WnvNU9SJkPzby20k4BTfINFUP/VjKRGvm1TW536H+79mPW4YCeRGp/Cj6R4XCjXn
         Z/NkpO74lvigzSIwrAaMys/e6xqPrsHe8UqARG1uk81Ka1YDw0kjVjCn4aY23dYVlnK6
         t8Dwg+15WSzj52+jMFZ+IqIBiVbrsPWqoo0AqS76pWhwWPOQrTojt1w3Ip18bMeEcD1I
         Q8uTF5utkZqUuq2FGsbZSDgc3Oxgkj9WWVV9PByTL2t6IiCjnwgYaSxjF0xdfVPPUePo
         j/Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=E6bAFvkF;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S0MvkseKN3e3WgyvsbrcNn3ZSZY7VzAn4kFFwMZl2Yk=;
        b=UqIppxPSWbWzil459UvrI0YS8VYWdZEU/olFarupTK34ht8t/P60z034JSWV3xvIFc
         mRVbO+QnHz5ad2rPpVtVhFyeCRjQWzSFpUxcFyzubE1j8PqHxeJWpan1IXntj+kH5RNM
         0djk99setvM454Nt3f/qlO9YBsBPAZh6x/FdewYDLf+kjCA2HYXC8KOjzdrHyRVGMqiX
         2puc3c9bBf4E1vvdvWMSkFAlqe/UMi01KoLW2t3UIjuNIFlsW3mSA3722LF39UqWZx/F
         Y5ddTnMYiu4Vhh4jpJij7doiJu3EBtPRGHotFCblHHfRoAK1xchTnVP6UZ1U1E8qi21j
         h2/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S0MvkseKN3e3WgyvsbrcNn3ZSZY7VzAn4kFFwMZl2Yk=;
        b=2LJw8u8FAEDNw2IJ1+DSJb6+BpJg1hcWUGN8D2qb2YcUQJjUKVYCKYK2mqAGyn2A4E
         wX76Fc0oqVg0VNwA6fj9j+Ws5IQ2MSRUi0hHvmfNut9VAZKcECQMuClWEwTKNnioscdK
         s6ARmoOmGI3jnliUgZ5jPl2eC9jiwHr63GWIX9eM8zsuiqC9rl6POey7eku4DIwfQN5J
         AGhAGbQpss5n1o+i4JGjCBlePB6/6PkSARhVqIB17OiP47r931M9tyzWQpX8mmo/42Dw
         CwafrcSFYDDi2Wn1nkbP8Z4RNyniEjoLmm3xRnQOKLfZYArdvHyk1mcXYJnoyxGb3l+4
         VM1Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531GJSjtU8fLHa8d4wcQ1zqLfjGl7w5YNB1cZOA4X0zndbxxUJqX
	aKXKtntHPOmiMizG4fnkHb0=
X-Google-Smtp-Source: ABdhPJyrlMWBDTLHeM2i/0wVu7BOcUGiEaR9UKvcUhU4W8dFdYpOHmyEBJXyMCXGYFprpYyMOS4lxg==
X-Received: by 2002:a67:df04:: with SMTP id s4mr15200690vsk.46.1641315327546;
        Tue, 04 Jan 2022 08:55:27 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6130:38c:: with SMTP id az12ls1537574uab.4.gmail; Tue,
 04 Jan 2022 08:55:27 -0800 (PST)
X-Received: by 2002:ab0:660f:: with SMTP id r15mr11670641uam.120.1641315327053;
        Tue, 04 Jan 2022 08:55:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641315327; cv=none;
        d=google.com; s=arc-20160816;
        b=Wh03qk7R4fDatHZyoYCQwbzHtzKdsrble7tFYDxpKJt/F633H1dZ76SEtGKliBOwZP
         f1QPyMksJFkXh32cENo0ljjoTxF6Rf0oETEEJl9TeJqusHGW9vvvRDTUwLCbwkanu/g4
         dKsfLPUUTX5ELGh0gPA6sqhiCWM45u6IRF+9iYzPyg1UYKxCrD2XIsn1vIAd1X36eIhM
         byQDteTt+23k+M7cl0RPDqG3N+NIXXp7XPbMJSFNVFHvSW5NIDUKu+2z3MhWbuE2JPQA
         PVKIVLvykz1KP9MCVN1U2M7Bhw35MSZem3oqGPMR/V3yzM2XoDFrc14iXC1vZYoULcZg
         sgIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=pajr8S+kOElBatJVBGkSwTPVIEL5NUUrsdBQOsrI4Lk=;
        b=UY+qi9oK/Bdj7gmlRLS9XiJ/c2rX+nhTzHtYAy+4ivbUFFDzJ9QjWD2n5YTsrhvHUK
         RwphdwgkxtKqc7IL4SfiIcv6hF4KHXFsLbBln2XjKw3T57IyHV9UmxIhwnMYWo0oM2Q/
         fjE4F2qtKgmpjpx1+adtIWWddbDX/FrC0IwhxrTgEJtVuPKk16NsAPV0FZ58FZsFWPUL
         PuW+tWjOHPzDCOjoED+tojXeXaPUL6vChU4rwP8sEDXUWDH2YT5OWtBxIZwWcBKiS8OB
         Z6Em5cgyShY2ZWJQzVRwsGYEdLuO5j4J0pRmJqHQssHVY8+UOSnleFym0ecXXChpICV6
         p+MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=E6bAFvkF;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id n15si1250758uaw.1.2022.01.04.08.55.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jan 2022 08:55:24 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <logang@deltatee.com>)
	id 1n4n5m-0044lM-MC; Tue, 04 Jan 2022 09:55:23 -0700
To: Kelvin Cao <kelvin.cao@microchip.com>,
 Kurt Schwemmer <kurt.schwemmer@microsemi.com>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-pci@vger.kernel.org, linux-ntb@googlegroups.com,
 linux-kernel@vger.kernel.org
Cc: kelvincao@outlook.com, Jeremy Pallotta <jmpallotta@gmail.com>
References: <20211224012334.89173-1-kelvin.cao@microchip.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <91ece4bb-5ab3-4ec9-acb0-0b054d4ec435@deltatee.com>
Date: Tue, 4 Jan 2022 09:55:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211224012334.89173-1-kelvin.cao@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: jmpallotta@gmail.com, kelvincao@outlook.com, linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, linux-pci@vger.kernel.org, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, kurt.schwemmer@microsemi.com, kelvin.cao@microchip.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [PATCH 0/6] Switchtec NTB Fixes and Improvements
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=E6bAFvkF;       spf=pass
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



On 2021-12-23 6:23 p.m., Kelvin Cao wrote:
> Hi,
> 
> Please find a bunch of patches for the Switchtec NTB driver.
> 
> Patche 1, 2 and 6 fix three minor bugs. Patch 3 works around a minor
> firmware issue. Patch 4 updates the method of getting management VEP
> instance ID based on a new firmware change. Patch 5 removes code that
> disables ID protection to avoid conflict with static Switchtec config
> settings.
> 
> This patchset is based on 5.16.0-rc5.
> 
> Thanks,
> Kelvin
> 
> Jeremy Pallotta (2):
>   ntb_hw_switchtec: Fix pff ioread to read into mmio_part_cfg_all
>   ntb_hw_switchtec: AND with the part_map for a valid tpart_vec
> 
> Kelvin Cao (3):
>   ntb_hw_switchtec: Update the way of getting VEP instance ID
>   ntb_hw_switchtec: Remove code for disabling ID protection
>   ntb_hw_switchtec: Fix a minor issue in config_req_id_table()
> 
> Wesley Sheng (1):
>   ntb_hw_switchtec: Fix bug with more than 32 partitions

I've reviewed all these patches and they look good to me.

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Thanks,

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/91ece4bb-5ab3-4ec9-acb0-0b054d4ec435%40deltatee.com.
