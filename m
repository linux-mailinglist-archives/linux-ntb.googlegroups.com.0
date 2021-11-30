Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBOEMTKGQMGQEDAUPVLY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 16ADB463F13
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 21:14:49 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id v32-20020a05622a18a000b002b04d0d410dsf28662062qtc.11
        for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 12:14:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638303288; cv=pass;
        d=google.com; s=arc-20160816;
        b=ueiWsdYliHEW6RfRHPsm+gud0duEPeOAtvYByj7w36OtBmELL1Adre/CFTLFeS+8Bo
         ObcrJkDczyhRzUUkJRykg8Wu4eT3gtb9TCWSLnzoUt3XeY8FfXQ0XRs2AyaKrTcjuCMl
         O7PAv0JnaXIaCm4zZ9pfnZJ05rce0t9VIfjEz/Pmk+MwYj+yebllzH676TTvyIBP1tZX
         pGfaJcCRlNX4SNfdBeLCnM7vuCxdQiQIq9u6NAY9mbutXKew+lCPp0FPFG8ZPh795c7i
         IVr5xxEEiBvWVojdDQ3Ttm39UrPzNWHbQnXjtYRXo6d+TfNDGsmkClwWkccZvjS7kqmq
         V+9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=j2QB+PBEy8eAZoNTw5U12o2G9Kz13prEZ00H7JiWhPo=;
        b=e7nXpAxudyhFTJptHcJjp2ZMjkZ3f09oFX8xG/DuTC80Vr6DPZbqvEQ8Yig4Y32hNz
         l4RLf0NEuLUlUZRPu18+9ACoWTtjlf4qWglb8+Va7WkLH9ASqg4a6oLtc7OIZeJv4Z6K
         Kqqa7TdJI0qwBZ7PPdIEQNfandWgcnDJ6xGfJoE0AHlkH8Srr3d4KiIjQmVcC53TvPWO
         /wp+BXHfmRbuU9nZiQRI9jnawlYBPZIqfNttLX7uzfm8LFZ19I01zSmEbyReBGoJL4+h
         Z8JlmERsi8SAVlXW3aZQQm/u7GZ8KBW6pb/6qcIi7BPcBacVhzC7cC3biXqmmqKx0CaH
         3aUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=U+nEWKC8;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j2QB+PBEy8eAZoNTw5U12o2G9Kz13prEZ00H7JiWhPo=;
        b=hLsOeEcapG50q4HkBFG4z2Dz80m8MbIUw1mvqDC+gKfoaRyz6b79sNhmuSrIWbX+Za
         LcQ2A0L/W80miovDl1mVLB7cBXsj769d/gh/oEpgsrZKaQNaGtD3F3QH49yymcZhA37J
         +1Sl4+pO2t5Q5maB6IzejDxkC2/WP7ZgMIuQ+KnRqAomr1j3XRkk8FmUY8Ik6YEfyRie
         xAyjuUKiQRq2tM4dAJnMubyxcEVIAUEyA/pm2WNy1M/97yI0plI3b102LdjoSL3LqQat
         chWOBi0p9Sw81qO5AcFYAp+b9pywNvKQMm88M5WY9Oc2ME3Z0guBOuMGgXIYu6zSq9m+
         Pr7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j2QB+PBEy8eAZoNTw5U12o2G9Kz13prEZ00H7JiWhPo=;
        b=0KzGsJap8jZ30l3Actgn8Fdy6pN8v42GoQqZ+n1DgfB2jxMubv3dlEYK5ujOR0NWxz
         U9+vLiytAG96I4NjE1j7iK9FvMYykxzuyK0dL6tCJAG1wmZVQOdY8RMyprPbnUgeQYQZ
         KRWBJ5mu00GodkNHWgBexpoN61zTZht2HAjutXgojeciR8FmaQoBigsiUi+wn9caepXp
         wsqr/2fxRmyVgL0xifiWdr916qanBA+zKB6MXZz8W8OdKtzIBv2b+Vdg27mlEvBsfVP6
         46Imp4fyfHBLCbBJPs3O/y9ZrFEwL1vhhM6daAQB84UuRVfAZdls60mIQaGI6nK0VceK
         UA6A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532fvdwes8Btiz22jkV2Hkvi4+pEvVxQ+Gz7mFZZNtmNTY/6YPLC
	Swxjwv8HaCDEkuANHOTn8Vo=
X-Google-Smtp-Source: ABdhPJy+k/tDjWADtWb55tTIKCPSF+0rhWZjKbXDt6z5GRUyEpICQEo9uvMFKs3CeE4yFrYbGdm8tA==
X-Received: by 2002:a05:6214:23ca:: with SMTP id hr10mr1513166qvb.82.1638303288260;
        Tue, 30 Nov 2021 12:14:48 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:5fd4:: with SMTP id k20ls11445420qta.8.gmail; Tue, 30
 Nov 2021 12:14:47 -0800 (PST)
X-Received: by 2002:a05:622a:1310:: with SMTP id v16mr1893995qtk.431.1638303287866;
        Tue, 30 Nov 2021 12:14:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638303287; cv=none;
        d=google.com; s=arc-20160816;
        b=WpxYCPwxIRTBesiuNX2yWsRcx3qA9Sc2MNaPpUvgBGty4OrlEJtlNhNtDZO4IaqTt6
         yNxjV9Q4w2mXBAq6HigHTnMKlAM22pTPRnlsguQ4+S/ZnGadwJHmEgaHxzvuKRu2eTkA
         rXgosaflAMOQvjqydpCxzqcscbbBf+MAbs4UfyO9hmaBRVssH1RJmzuOU0w/CQt8WIlV
         CwLivrYknV1IxUEQg25lGoH+KNgn0kBGsKgs61IGnaJ4kP8gGh1Oi7kkKHwHAN5fHhWw
         9OWxD+7EhDgxOX8+DjxbiPorJoZRQ3zpLxBbbVU6c/P0xD++7xuG1Ke/SKmoUZlWbrYs
         4JZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=0e6qph97LvKq8JPi/3FNd4qxcjAsoSfKpY9JBqr3S7c=;
        b=yjXtHEWcSGKVp3sZDNUv6Is51zHCqFOqXanC914GMPfv7nCuTeO5qjgUMSRcylm+5o
         t+M7rN8MZUl6YhDyIiuYSqwDecIk6RUnu1auFCwlRldiZlmx/nBV+usBfk8gzmFssVdG
         OpPNQA3UwW3OBZrR7IMQgxJ9tNfTe2KC0GNxL2tXKnwDZiuuMpth6Hg0waQCBb5p0xi4
         eVJbjo2eZQCSPiE+LdKOCwVlSY0LWGtnCCUuymgpA27PF+M/9YCSv4cL+UWcvxJxwgQu
         mSYtvR8rvQSI9/KpGGUdTJBR3hOmVYk50m0MKYaMsBcrPwgb8cYVmtKn8lLiPFT3b6su
         rCnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=U+nEWKC8;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id w22si2017221qkp.2.2021.11.30.12.14.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 12:14:47 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <logang@deltatee.com>)
	id 1ms9WX-00BD79-DR; Tue, 30 Nov 2021 13:14:46 -0700
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org,
 Doug Meyer <dmeyer@gigaio.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <8a1fae8b-3811-6368-50da-9de9e286c8e5@deltatee.com>
Date: Tue, 30 Nov 2021 13:14:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <87v909bf2k.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: dmeyer@gigaio.com, x86@kernel.org, borntraeger@de.ibm.com, hca@linux.ibm.com, linux-s390@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, gregkh@linuxfoundation.org, linux-pci@vger.kernel.org, ashok.raj@intel.com, megha.dey@intel.com, jgg@nvidia.com, kevin.tian@intel.com, alex.williamson@redhat.com, maz@kernel.org, helgaas@kernel.org, linux-kernel@vger.kernel.org, tglx@linutronix.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=U+nEWKC8;       spf=pass
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



On 2021-11-30 12:48 p.m., Thomas Gleixner wrote:
> On Tue, Nov 30 2021 at 12:21, Logan Gunthorpe wrote:
>> On 2021-11-29 5:29 p.m., Thomas Gleixner wrote:
>>> I'm way too tired to come up with a proper solution for that, but that
>>> PCI_IRQ_VIRTUAL has to die ASAP.
>>
>> I'm willing to volunteer a bit of my time to clean this up, but I'd need
>> a bit more direction on what a proper solution would look like. The MSI
>> domain code is far from well documented nor is it easy to understand.
> 
> Fair enough. I'm struggling with finding time to document that properly.
> 
> I've not yet made my mind up what the best way forward for this is, but
> I have a few ideas which I want to explore deeper.
> 
> But the most important question is right now on which architectures
> these switchtec virtual interrupt things are used.
> 
> If it's used on any architecture which does not use hierarchical
> irqdomains for MSI (x86, arm, arm64, power64), then using irqdomains is
> obviously a non-starter unless falling back to a single interrupt would
> not be considered a regression :)

Well that's a hard question to answer. The switchtec hardware is a very
generic PCI switch that can technically be used on any architecture that
supports PCI. However, NTB is a very specialized use case and only a
handful of companies have attempted to use it for anything, as is. I
can't say I know for sure, but my gut says the vast majority (if not
all) are using x86. Maybe some are trying with arm64 or power64, but the
only architecture not in that list that I'd conceivably think someone
might care about down the road might be riscv.

Most other NTB hardware (specifically AMD and Intel) are built into x86
CPUs so should be fine with this restriction.

I personally expect it would be fine to add a dependency on
CONFIG_IRQ_DOMAIN_HIERARCHY to CONFIG_NTB_MSI. However, I've copied Doug
from GigaIO who's the only user I know that might have a better informed
opinion on this.

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/8a1fae8b-3811-6368-50da-9de9e286c8e5%40deltatee.com.
