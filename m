Return-Path: <linux-ntb+bncBCOOP4VF5IDRBW55ZL6QKGQE5AGP66Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB692B49C0
	for <lists+linux-ntb@lfdr.de>; Mon, 16 Nov 2020 16:46:37 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id d6sf12457977pfn.15
        for <lists+linux-ntb@lfdr.de>; Mon, 16 Nov 2020 07:46:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605541596; cv=pass;
        d=google.com; s=arc-20160816;
        b=CkPogIqJbhvKF34Ex4j6qaz9yuHuaVh2afJ8r9XVa0jvu7BeSitFJAv4uDXaFx5Sf1
         eN6UJy/z5XW43CdxajD/meLMyl90DqbmUAGemRnojGzzmEUKQiPQJcWVKvizykbR0XpI
         AKqXsl2PmRXozpQ4+9XYN6XaQDB3v2jGdwlHkFgqhMTbu68yuqcrJzZ2wLkcCEYNIDA+
         k4vzQYTWJSVDpMi1vvvtnkcqOUmEGSXhgISN52hASjZV3s/E29sBSw1RjXp0ej1qmKNb
         otBxIcriZr64u4iiVJ+bHMCiiL0Frphuzaah4UgZkir7QlCVcbJKme9LSDMaOXGg5t/O
         Yo8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=4NgY8dw5ErorsABkYlv5s5unM3i2OjRJ9pPXX4Elar8=;
        b=MvrRlF5lNg5rMfNmC+zt9xHiIs2+eKHwnuqJ42Pz2KdH1G5z5kzUpL6VsRCin7Qwra
         8FbrFaTCvXA2o6fSFHUYrxPZyhL/KaLxEdHqXz6IvJwLgWkckjLv0zggRk5SMxvdUJrP
         eF+vgvrLMhGa51St+pnOzDlwI1GhklW9SO96fGX3y5N6/k9ssxmZOlFqcN9lIj7bPvu4
         ZXbXDa+AZWX5nOHMbb4d7KjATDkahkmvG9zXY3YfpeCcDO46WF+hnzFgZEIQvMRuQBs2
         5IcHux37fDw7XYz5CtKfEYJvkR0OTj3Hi+LYXvS/zM+9aQLVtKQA3Cs+WlVaybHg4qvM
         QUmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=DtdiSme0;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4NgY8dw5ErorsABkYlv5s5unM3i2OjRJ9pPXX4Elar8=;
        b=T0hGKNzfCORpMmTXUHdFnfS0tPxLS/g+ozw14umJauLxdud4rYOXJKmrATB/PFEdYa
         4psLLJD86et71fptqMHp7ovNlaAkjzt4BhLIAOXdW0d6XvoFq4jep4Clx2ET2u6PTXgb
         wMxSGKVg9ms2uXPMMWxlp8FZmcHsV1KEcOczXyJxpSe+9EGophCdvewYtbjd2SPxDY7D
         u3f+myfOLdj2XiSb0QXPVIQ7hmPSlyoN50a9iJb/uAGnaQCuEltkgBgLF6Bi/7rgvtT0
         B1qj0NDaJ3763aarozbJVHjzA5yTLk7MFDsF+OLFP0XTHoLacE5x0rpQoSuYPaPtduNg
         kssg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4NgY8dw5ErorsABkYlv5s5unM3i2OjRJ9pPXX4Elar8=;
        b=qGXC8LPer6tDbVuuKxa3DZjG/YO7MamhmIHmEm6ivSt24mSiA7eWQCh+c+5We2mM1T
         pBvPZYnedasev3J8vqHcOBaAYgWEEa0vpVp3+65zD5ox+8cAy+obkzx2/mMeWh69OCtk
         pH2zVxVHBEwAjZRnRCKr1mi6ZPooRP2z1f7BpLO2073N/42uXxtMThiI8CaO9mm/reSX
         cD02PccOnFu5rp1l3Ds/hACaoX5u8/Q1daVqom2bR4sCeFclGHqIJr838/xPH+QJS6dy
         VV+bIVB1DezCH8TZqDPWa/IV17jB9EwOr7+B9ee7u3VYgHYrGs/rtqF/aXBReV/ufyyC
         DKbw==
X-Gm-Message-State: AOAM530r+vSg9IY1pitHvG4s6VRr8aaofaCfSjfSM/KDK8H76UgNJ3jw
	ylrmFALRFFLolmVGMEOGja8=
X-Google-Smtp-Source: ABdhPJxsgq01LNKgyPzlpTf129zOe5GDCzD2zv65BI4cHln3A4QUHJwxaUGvsUgAO5JBXJyqK+J1rA==
X-Received: by 2002:a17:902:788a:b029:d6:b9f:820a with SMTP id q10-20020a170902788ab02900d60b9f820amr13324814pll.76.1605541596030;
        Mon, 16 Nov 2020 07:46:36 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:7d6:: with SMTP id 205ls4827912pgh.8.gmail; Mon, 16 Nov
 2020 07:46:35 -0800 (PST)
X-Received: by 2002:a62:924e:0:b029:18b:c60a:aaed with SMTP id o75-20020a62924e0000b029018bc60aaaedmr14837469pfd.52.1605541595518;
        Mon, 16 Nov 2020 07:46:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605541595; cv=none;
        d=google.com; s=arc-20160816;
        b=ueOXtJ1HmwKcVnpOsqXI9VQDVW5DCXRh5y53pC/dd2FfEEuUKlasx5/FvbJ6BzpWJQ
         93QTg97kr49eCFxDkqHShZrP+vQi+tQAnpwWz84HcamDqnjl6byDdLXXClmI9i+jDXJ5
         YYgUjmlL8SXh0HjiMBp757ucZiqk3bpvMFksz8BFYyuzxqJoLPi/u/iQQwdP4lRaG9q/
         q8fZSn6NyCXi4ya2LiAII6vQwmU71T3iSL3jHoIyUPx4W7jksjj1AvvC/IdsW+I0Ze5k
         XJc/RDsorxk5Y5GJZ1eW6BL5BRSYF0C0/XkpD15nL5y82B8mFu2gL9nAyJUAH37xy3ca
         i/LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=o5t+uCx7ItW5nQ8KW3HQTL7wK+HIkVDh+GCe1ihPz3c=;
        b=ZcKqdyC4i3f8dLX0kngYBJCuc/rvADldxN4/mldEv4897QrSTv+jlT8bhfi7nDpc/w
         wQ2WPq47/wZ9mLgXtYaZ8tqQi9S8AErJPWQzC6z0JjTc5Bn+VlYq4T+H83mryHe5Fg3n
         W0WlPYyUI/clIEk8lfyI5l9X37yZK6bNCokgktxbcFmHhRk7vC5RxWE2/6gh4oD+dwqv
         2EkUbovaoZcfzgdizd0hJp4k4FxYX5AISeSiet9KfHxdRibsNQq+kLXcEX360YdTLs1o
         BuuX5OOrVCb1bADguh+yD6qISHeRBgalKu6NC767ciA09BDImJroYWFtU5Ilfl3UEhAa
         RtvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=DtdiSme0;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id bg19si842763pjb.2.2020.11.16.07.46.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 07:46:35 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AGFkOVu104239;
	Mon, 16 Nov 2020 09:46:24 -0600
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AGFkObf046972
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 16 Nov 2020 09:46:24 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 16
 Nov 2020 09:46:24 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 16 Nov 2020 09:46:24 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AGFkHxS052842;
	Mon, 16 Nov 2020 09:46:18 -0600
Subject: Re: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
To: Arnd Bergmann <arnd@kernel.org>
CC: Sherry Sun <sherry.sun@nxp.com>,
        "bhelgaas@google.com"
	<bhelgaas@google.com>,
        Jonathan Corbet <corbet@lwn.net>,
        "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
        "arnd@arndb.de"
	<arnd@arndb.de>,
        "jdmason@kudzu.us" <jdmason@kudzu.us>,
        "dave.jiang@intel.com" <dave.jiang@intel.com>,
        "allenbh@gmail.com"
	<allenbh@gmail.com>,
        "tjoseph@cadence.com" <tjoseph@cadence.com>,
        Rob Herring
	<robh@kernel.org>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
References: <20200930153519.7282-16-kishon@ti.com>
 <VI1PR04MB496061EAB6F249F1C394F01092EA0@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <d6d27475-3464-6772-2122-cc194b8ae022@ti.com>
 <VI1PR04MB49602D24F65E11FF1F14294F92E90@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <30c8f7a1-baa5-1eb4-d2c2-9a13be896f0f@ti.com>
 <CAK8P3a38vBXbAWE09H+TSoZUTkFdYDcQmXX97foT4qXQc8t5ZQ@mail.gmail.com>
 <5a9115c8-322e-ffd4-6274-ae98c375b21d@ti.com>
 <CAK8P3a33XSvenqBhuQpGmtLbYydyzY2OQh73150TJtpzW24DTw@mail.gmail.com>
 <c720de5b-bf76-162f-24cb-07f6fe670bd2@ti.com>
 <CAK8P3a0nTdtADPa_5jduDm5MpBiwBNgs7cYokK5qBZ=RkL1Ktg@mail.gmail.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <a590bff0-ba9e-8e19-4f09-4838d8afdbb6@ti.com>
Date: Mon, 16 Nov 2020 21:15:53 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0nTdtADPa_5jduDm5MpBiwBNgs7cYokK5qBZ=RkL1Ktg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=DtdiSme0;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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

Hi Arnd,

On 16/11/20 9:07 pm, Arnd Bergmann wrote:
> On Mon, Nov 16, 2020 at 6:19 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>> On 12/11/20 6:54 pm, Arnd Bergmann wrote:
>>>
>>> This looks very  promising indeed, I need to read up on the whole
>>> discussion there. I also see your slides at [1]  that help do explain some
>>> of it. I have one fundamental question that I can't figure out from
>>> the description, maybe you can help me here:
>>>
>>> How is the configuration managed, taking the EP case as an
>>> example? Your UseCase1 example sounds like the system that owns
>>> the EP hardware is the one that turns the EP into a vhost device,
>>> and creates a vhost-rpmsg device on top, while the RC side would
>>> probe the pci-vhost and then detect a virtio-rpmsg device to talk to.
>>
>> That's correct. Slide no 9 in [1] should give the layering details.
>>
>>> Can it also do the opposite, so you end up with e.g. a virtio-net
>>> device on the EP side and vhost-net on the RC?
>>
>> Unfortunately no. Again referring slide 9 in [1], we only have
>> vhost-pci-epf on the EP side which only creates a "vhost_dev" to deal
>> with vhost side of things. For doing the opposite, we'd need to create
>> virtio-pci-epf for EP side that interacts with core virtio (and also the
>> corresponding vhost back end on PCI host).
> 
> Ok, I see. So I think this is the opposite of drivers/misc/mic and
> the bluefield driver were using, so we would probably end up
> needing both.
> 
> Then again, I guess the NTB driver would give us the functionality
> for free, if it shows a symmetric link?

Right, NTB driver would need "pci_dev" on both sides of the link. But
that would also mean we cannot use pci EP framework which actually uses
"pci_epf".

Thanks
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/a590bff0-ba9e-8e19-4f09-4838d8afdbb6%40ti.com.
