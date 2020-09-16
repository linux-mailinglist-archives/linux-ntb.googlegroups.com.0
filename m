Return-Path: <linux-ntb+bncBDV2D5O34IDRB7MLRH5QKGQESJ6T4FI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E87226C58D
	for <lists+linux-ntb@lfdr.de>; Wed, 16 Sep 2020 19:06:05 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id u5sf1277901wme.3
        for <lists+linux-ntb@lfdr.de>; Wed, 16 Sep 2020 10:06:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600275965; cv=pass;
        d=google.com; s=arc-20160816;
        b=tmJedp09hUYC6klfBptiPkQre8HVhCN0NVGL3/ye/fVTjuo5d10lro7EbbDuUFR+At
         0QTv05XxqzZe0toA5aP/DRw9UMhxzHCtSeszYcSqvJw2Mb3oFf38T5L0tFIdhW0yyb7D
         PIyuAdaLDTQnB2nCDOeEfItlAa38j5ZKLxMKek6XdUt2HiX4ESgr22uDuVEgTfY8SSkM
         Onvelzgf3pKn3NN8SDGprfZn4nJyHRBwGZ2K5wb6L9Ud03c1pV/2A8c5b5T7Su3xAe36
         KgiVzmo2a7asKM9oRUDWDD322SOYrs+a1nUlKdD9UK7k0jskDey+oFfux+1CaOjiGfL1
         FoZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=aucv1Akl8DJGGvLM9FiCXpJtpKkmHcZzvkH3Cehtbec=;
        b=j5jue+Le73PWQxzMbQ5HP7SsOifRmVW6Vb30qbmJEiIWd6sw6h0QGO0aqqbdKjHwCq
         Zxpc27/4vTg9dTdxf0bAdIpE2Hyl+jnNfSlYNiOOBiCwFszBxwV7ydVX9MI05g6/xavT
         w5B5YJ8ckYl6hdWlfuGzQE2dkup+K2poxyM7AVfOAfT3Z8/t4y01SklMMYAWO9A3hUlZ
         DmVNQu8AOx2wCInQbbEb7yuI2kO2KjkqZdxn9x3+ztcaudEoSsQdl/FyIdszXvABw20e
         4PiMuqif1Y1P6HcHSEvISxk1Bix/KbQki3Kqz+0DKpl92aipzabXM/1Wa3YJugqYHPCj
         58xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=FjA3jDsd;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aucv1Akl8DJGGvLM9FiCXpJtpKkmHcZzvkH3Cehtbec=;
        b=Hzhw0A2pfmi96Kvlt0s4OyQHj2vrnxCoFTN8dbdL3CoScZaDBWWIuV844ye4Ppsco9
         UYh3wnIXRR5I5KngwcAlbxXyZZ46EnJ3HjbWBHQ6ioRJw30mp3EgptLDCND+azjUmvmW
         hPtABmWOxUdFoq3fZ0W5uZdLSmcRXej/LqibIFsD/faunReZuFQ1SjNQN2i+gNRSVX9G
         WVr4qjV6rikoi6gOTrGIBMg8eq6vQxZeo9ejx5j/WIT0eTCp4AWQvnVfS/JuuRnGd4HI
         Wj8mDFuucREl0C13QUw7xVQhPYF+giHY/7dtdpO11ug9XgeilohwSSEZc9AjKWTAnLpo
         gMSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aucv1Akl8DJGGvLM9FiCXpJtpKkmHcZzvkH3Cehtbec=;
        b=pjTRvJHcdELWNwRqK27RoeaaW0/pnwXM23q4kqAPzb10CwEKBsjddTBBXdH7fRW8lI
         fdmQtYNfU9ms/TP0HoRlR8BVLv/zAC8mdnw6+c5ENpQkkZCkhCtErI9q6IWwLHwhEpGR
         XAisj1ntKYduSwPAJNTcjXXsBhvQYzxZhgxSveJT+oD74Y7p8AzS3VMbFjzBZoRDGh27
         2SXR82dJcQLFQm12x7NH6p3Nb4S5no/+BazHEiCJMD95Kt5/kBcpLSvn4YvHT+wiWWCg
         L/6cAT7kYdZsXNV3jZXa04vWLGHYZRa23NLB/99BEdyMl2uADxCfG12lpS5/pXQR4kys
         /ejg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532lMW7FXPiIknvCKUUcE95Q8mX0ytNxFxcitw+Z7zYPQtXuM561
	zsAk4bD7Rfm5Cd7qKzDlpFw=
X-Google-Smtp-Source: ABdhPJy1CW2jiOs/cp/WEcdDYrtwZ3ZC9YUOSsVJ329JczYjTdLM7dsShECHQMhzCqLKbYKIIkvnQg==
X-Received: by 2002:a05:6000:12c3:: with SMTP id l3mr29412695wrx.164.1600275965243;
        Wed, 16 Sep 2020 10:06:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:a58a:: with SMTP id o132ls1474452wme.3.gmail; Wed, 16
 Sep 2020 10:06:04 -0700 (PDT)
X-Received: by 2002:a1c:f20b:: with SMTP id s11mr5989918wmc.144.1600275964381;
        Wed, 16 Sep 2020 10:06:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600275964; cv=none;
        d=google.com; s=arc-20160816;
        b=YnqljDSUNXq0nEYnjnaj353jZOnvI5gk23nkfqRrrjd/vw4sqFW3y40Ce8F8Yetn7L
         auYoKNXTXXIZD1xpGneIXOpdXNSruSl1ZZBzmfaIYGb4N3CxjXN9GCq5RN2uvVKnXGSz
         QJ1UOWtokBgk3iwHhBvn9zpvxaCOYwTc2G0MJ7NQMkA3KzUUYhKshFv0WFtJiT7YV9bp
         rWIAIiItoUkGnmmzmB2p7wn38rTsR6WceOalYWr0ae2MsqFxkKM/konsTPBpe7yeeso9
         a5MiOknamRpFc4cIRrCGn2zmHaTEzBJA0UjqAGjIcDaBq3xmQWYXLKZ3oKi8nLm2ZDLd
         +L9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=PKWr6P6N/QvHgzN9Xr6p5YvfrLnhJZhCYTZt2ESdvQg=;
        b=gCW/AMKF7W6rECF295YSaRJvUlACaGPl2DG7HWPg4rAhA+CelE+DXBIfmql9TZLfB4
         4cQVpAOcrGUZlTlJaXDD0CdK0leYOsNVQbcHMO4CUdUSBpx3LGTglVq5eGzf+dU9zTwk
         pkK84Qs5WrFwogCqENr87ERSCnVYXI7eXLc/IDTrIHdPilzUwS2meHtdCML8e+ZjrkYw
         /HEiKzg/dyKtq/N/DwAgQmEiefghjVGFjwcy+lO7g30KfhyIAGQUF8fuJo3Zs6C/2Jci
         L5sVwasm6ttI4YA/kJCG0ouGLusiOZn0nsCHe1P4KUN7NkWXBGGrbYHee+jUNxVSmrjR
         3Jyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=FjA3jDsd;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id g5si174009wmi.3.2020.09.16.10.06.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 10:06:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIasZ-0005LY-SK; Wed, 16 Sep 2020 17:06:00 +0000
Subject: Re: [PATCH v4 17/17] Documentation: PCI: Add userguide for PCI
 endpoint NTB function
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Rob Herring <robh@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tom Joseph <tjoseph@cadence.com>, linux-pci@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com
References: <20200915042110.3015-1-kishon@ti.com>
 <20200915042110.3015-18-kishon@ti.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <17b7c073-d358-e274-c783-1a17590a83a3@infradead.org>
Date: Wed, 16 Sep 2020 10:05:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200915042110.3015-18-kishon@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=FjA3jDsd;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 9/14/20 9:21 PM, Kishon Vijay Abraham I wrote:
> Add documentation to help users use pci-epf-ntb function driver and
> existing host side NTB infrastructure for NTB functionality.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  Documentation/PCI/endpoint/index.rst         |   1 +
>  Documentation/PCI/endpoint/pci-ntb-howto.rst | 160 +++++++++++++++++++
>  2 files changed, 161 insertions(+)
>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst
> 

LGTM. Thanks for the update.

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/17b7c073-d358-e274-c783-1a17590a83a3%40infradead.org.
