Return-Path: <linux-ntb+bncBDV2D5O34IDRB6XFUD5QKGQEOHNAPZQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FAA271A42
	for <lists+linux-ntb@lfdr.de>; Mon, 21 Sep 2020 06:58:36 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id r3sf5545520pgm.22
        for <lists+linux-ntb@lfdr.de>; Sun, 20 Sep 2020 21:58:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600664314; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nd8tSt1OmnmmBRBdhxOhzXVIH2eAZoOmUzNbWnfHN9bxUoxsDqQF8gKv5eige/NxTJ
         6t511L+6KMs1GdXFxVhHv3lX/6z6OakNQpEifiChfsXGH8bPmyIn+SmK2CokOfZC+GGi
         MC6uwin2kRrKlsb62UXkXAVIG6kXOUDllXJL14ruKizhrGZY+/z2De69PXgELK01OOs9
         uQAf2f6QBuvYL9lvoF85Uy+wc4U09XVbF5SJAYMO7i4jNe1ty18pxOar80HUVdFfmvXj
         AST+hTH23w3Z3zVI1ho/zhgtiBH8JGfzYYk7kOlXPESMl1MdRxoobkdPr+urI5qS2YH5
         kD4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=6mq1rNqEPc0IOYASIYsw0AXVqqHhgQRqcBLS/Q0dCys=;
        b=MjGz9+coqF9WbFBCOfJKXyvPvrJ6Vv+mfGbvVXL1kULRyT6hIfq+5tguaGAG//gv66
         N03h+wIlv/EvJrDmEH2DO+l2DxCdaocN33Psi6IT5LQUPtIO6NSxaZZufV0OpBop86Pq
         zQE+bHNOwREviOQgFdsUl4omLiAkLg6Mrc9PwHZlEDV0rXaZ004sSYnrH6B1tiXiiDrX
         WyMcfZghfXI6oYoKTaRuj2DzbnJhsiK17DZlyFhSGowUEzruUH4/+CMaefRGKETZipbf
         1PGT76e3yHV+LoP/m78r/rNhd+SsTXcvkUo/IHGb1vWreo8qpHmDi2KZF9xDrs8/NCjV
         +Stg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=RvfoFYsq;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6mq1rNqEPc0IOYASIYsw0AXVqqHhgQRqcBLS/Q0dCys=;
        b=Oi+Do6FL43Pz24O8APGaeghLYsurm6E1150uDyusAxSKQbQ4IapZM+GN5JyImgTxvr
         igqNsPUr9SogyzUj3lg/vnwnFNTPfDO3jis4y9cmufjxGYOqeZoGO9vuSTA/SZlCjHYA
         eZt0r387oB0+Y26NIt3/ld4jCj2zFEdbBYwzQ8V1qhP/wnQgutXeFYcAfUI3CUKjI4XT
         wL8MqkemAbVznOr/560ESQGvw2TuJ8gx6TP09Z2vec5Q1a7+G+SZP4k4kMpYboxFJcbc
         1tV0a1AEXkbSIzRarglaC7vpsIK4ojH1tbepvg5MHg3ugeAzRW/fu+nitmdYaCOZogxU
         LfMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6mq1rNqEPc0IOYASIYsw0AXVqqHhgQRqcBLS/Q0dCys=;
        b=RUPk+ebew+S11VgmXCdTS699BC+QXVZQaUiWYIS4AOy4pbjE3IkSAmTHTKk103vbTN
         bJPXaSCIl8UZv2OIt69YuNBUe6pMLXjqfw8LhnRmieHRR7799S4vnEfbruXBP/DpZ1cw
         ZCDb3vGbTVA+gGJFGUzmt1+qgm9RdovhKhqhPooZH6hUD4CISOU+bWyRaGjgkgYxFXQo
         nIGcKMV81LGRL35/zEBDMm0dhcSE9AojhTSt99apMFiPYdQFPpX7yZT/FL7Zs07HYdyT
         xRLHJgKkJEGC869Ts/ugC/ZmzpdEME/GYduOCcblKKoHQeEsCv/DS/cI4xYQEwO4E4lK
         ZDIg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531OuBB73C1DualOpdT893RXkmZ0w52fezTFeMVSChgX1PKANb/7
	wDNJSaR24FLULkXaCu4aHNI=
X-Google-Smtp-Source: ABdhPJw+1UDIxjhDZX1yU8mGeRk3fQ9EwAEPPARfXn/mzcaWzZz8cXB6HTLTPHdog3FLJ8xbBWzw5Q==
X-Received: by 2002:a63:806:: with SMTP id 6mr28110380pgi.71.1600664314476;
        Sun, 20 Sep 2020 21:58:34 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:d745:: with SMTP id w5ls3989711pgi.8.gmail; Sun, 20 Sep
 2020 21:58:34 -0700 (PDT)
X-Received: by 2002:a62:3044:0:b029:142:2501:398b with SMTP id w65-20020a6230440000b02901422501398bmr25876220pfw.80.1600664313960;
        Sun, 20 Sep 2020 21:58:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600664313; cv=none;
        d=google.com; s=arc-20160816;
        b=UpZ4IUWqXhV7qZsFWn1HH6sUlGzU/OqPswwsMbpkmneuDrvEpg2PnlATFfebDaY0Qa
         9GZjw4dNqGr5O1kXL4bfjq8U2E8NJLxczqvyim1gbor7quhVLkDHF3RFhbRedWySDEGf
         LoC2X7dEBy+WWyANek7ZzPTWd0W3LgN87BCrU/fWcFskbcKjFPV4ZkQfIc99hWwia5dI
         bgmgx1e23R0yg/OxOJ46YvgXry1w9JbyN8aapRMLZrjqWYCbDvQk0m2Vsuq6HPdv1+sT
         Pb/TazU8sDK01LP5I4hl0OJt1mrskemynPpJRiQrsNXwQJpxrceSyjeF1y069tMhC13P
         W1ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=HQ/UY9FTcQifDZrg/8Ivhz0s2Q2BGUsiN0dGMhFdZV4=;
        b=aMnzpPDrkPY3OG5tS2g2i5upJBX68eqVO/HRLsyaVpzSTSSxAnABfYL0z0+Sa9pvGj
         R9rkPvAtULe1Cdmevg77KMK0LyA8eHwEWhXbNS2ZwebnDiufV1RyzwKALBvwqHw+QhOb
         VfzKFPaHsZlKsf32sPRhOLd4pAd/qVLskc2p+2ZEG0xMN7H6227d17ir8etfki/KCEwj
         LbIKP5xZ39MPQOJkuo5fBIDPYCunG7E/PkGhoI6bvOpm3ksEbQCV0DWuRhyo7WlSePnf
         fXH+GMK9aAZnwJEe5jha0FiRbmPVhfBck6fPRndhbHN+bys7UV15NDr9PXmf+Jlk9i2E
         fl4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=RvfoFYsq;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id h5si203724pfc.0.2020.09.20.21.58.33
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2020 21:58:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKDuC-0000QV-EL; Mon, 21 Sep 2020 04:58:24 +0000
Subject: Re: [PATCH v5 14/17] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann
 <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
References: <20200918064227.1463-1-kishon@ti.com>
 <20200918064227.1463-15-kishon@ti.com>
 <93b651aa-23e5-9249-6b22-fef65806b007@infradead.org>
 <c8b7fa2b-5586-3929-1e00-8473106935f9@ti.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <afa7a7c9-a954-d82c-3b67-7c98bac164de@infradead.org>
Date: Sun, 20 Sep 2020 21:58:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <c8b7fa2b-5586-3929-1e00-8473106935f9@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=RvfoFYsq;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 9/20/20 9:52 PM, Kishon Vijay Abraham I wrote:
> Hi Randy,
> 
> On 18/09/20 9:45 pm, Randy Dunlap wrote:
>> On 9/17/20 11:42 PM, Kishon Vijay Abraham I wrote:
>>> diff --git a/drivers/ntb/hw/epf/Kconfig b/drivers/ntb/hw/epf/Kconfig
>>> new file mode 100644
>>> index 000000000000..6197d1aab344
>>> --- /dev/null
>>> +++ b/drivers/ntb/hw/epf/Kconfig
>>> @@ -0,0 +1,6 @@
>>> +config NTB_EPF
>>> +	tristate "Generic EPF Non-Transparent Bridge support"
>>> +	depends on m
>>> +	help
>>> +	  This driver supports EPF NTB on configurable endpoint.
>>> +	  If unsure, say N.
>>
>> Hi,
>> Why is this driver restricted to 'm' (loadable module)?
>> I.e., it cannot be builtin.
> 
> I'm trying to keep all the host side PCI drivers corresponding to the
> devices configured using endpoint function drivers as modules and also
> not populate MODULE_DEVICE_TABLE() to prevent auto-loading.
> 
> The different endpoint function drivers (right now only pci-epf-test.c
> and pci-epf-ntb.c) can use the same device ID and vendorID for
> configuring the endpoint devices. So on the host side, it's possible an
> un-intended PCI driver can be bound to the device. So in-order to give
> users the flexibility of deciding the driver to be bound, I'm trying to
> keep it as modules. (Some driver like NTB also uses class code
> PCI_CLASS_MEMORY_RAM for binding a driver in addition to deviceID and
> vendorID but it need not be the case for all the drivers.)

Thanks for the explanation.

-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/afa7a7c9-a954-d82c-3b67-7c98bac164de%40infradead.org.
