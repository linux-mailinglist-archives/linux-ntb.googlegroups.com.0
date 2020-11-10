Return-Path: <linux-ntb+bncBAABBUGVVL6QKGQEAJ7QE7Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 128282AD98B
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Nov 2020 15:59:30 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id u11sf15144466ybh.6
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Nov 2020 06:59:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605020369; cv=pass;
        d=google.com; s=arc-20160816;
        b=NhO6+EmIUy95jT26MbxaOhdCCykr23M36SOpqHLXPqHgXHXoojURbdY98GPCo3dG2B
         YGqnz8pyKPT2h+mQE10XDRCL2IbWLp+qhd2Mt2moHgK8j5xqPwcOxTURnI+s+HFLhcTu
         fjFYohrg80K7CavSJxr2DaH4yYhGJzYo3+Yy0+kNZQA8RdyWb3Z4xa+jkYGOBVfavDPW
         4KRvKp2EA5So/FAnb7Igk8Qxk/nZdXXKxKDBgZwu9ypaKigTGNpEGy3HoSgULLjY4EEw
         ah6efIvQ7lecY4I8HUDjvdeuVTmZMkvlbmhmIZEDoGnZkTyzVMlGmYccjY9iZaWW3fwn
         W1rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=NlKQCY1pyzNU5+1pPLMXlExI12ISa6K/FX1ZqeWglpA=;
        b=dQZkOZuOIbLJACSM8r5yv4SDsFDwBRbc2VV+lH/SpIuvhzeOqgYLa5XSJZHy18wlmv
         T175MrSXJ39qdVYq559X8So5iNZRFpLzG83rHK9jD3cPotocQ7caLMmLS5ipnNo8Rqu9
         cwkMmXIdLMYUU4EH6nyaqJnqeYa9FqEwsd3QchwFLlPqxX44R9ugw0CfGNduEx7Iv0N2
         M0sZh1lDH4AypxmCdFmw0uwH4/I4xFTccZxBrNfmRpIUsMqTXER86l9mBKmjq0pfs9y3
         UUS0kDmHpsy9CaerKS0nWE5kDb9j6LoJghn93wU9X+3qDwI9ofzUdFeu9ejrECvn3kjf
         kkMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="O/3QTe6U";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NlKQCY1pyzNU5+1pPLMXlExI12ISa6K/FX1ZqeWglpA=;
        b=HqB38ku3XOHJFvlwxttp20LYogZiDolFBqzkI5AOGZvyV8hjhj5jW+1863Rz18ONjL
         yMwl3lD6eNufoN32et+i76I5iAd9MpTgW+yHV0u6/nHUBrLJWN2Qluc5Lt+RwZioLBIa
         BqMR4PaZdAvkBZqOC3C4U5gegW+h5dV1C7VSsB0TYLb4vTM+LxsqyL/1rU3bYPQOxre4
         /xyDhL3B1Gam2JHnGUVQ1uKuMM3CDuuXnyvQnnhZD96xS1+AnKif/NoVtLbj6qweS9Dc
         8if0xcLIzkBsTrvNMyHU8A2zMuPE2i496+hrs6u8/g8sTe/nXGir4/N7jw5SkbeRhwYm
         3usQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NlKQCY1pyzNU5+1pPLMXlExI12ISa6K/FX1ZqeWglpA=;
        b=Oo8p6hA+j2126RsXzXBOzJHkBzlCQd6Y6rjH3aFcx4pKjOmEejfJZ6CQEtrzGTKiN3
         9PhlcYK02Kmk+XQ24NXObZ4i9SgJ8+q5ZLtCS9CoIORQQy5t2YnpdA2TxbAOTz7zGmWx
         wXVJRlURJk7y3DfFe7bMcXytDrtd8vAoVkgos/F1aA/fxr93WIeP01AQ3PcLV8H/z7cO
         KjMeaJxYqWGbVW0LQs4AliZm+E/RzQyiSmSkv9RSW6suAWB2VdmmWELUyX5VWP7e0blB
         fY7hOfxkyrCX8rDDSEzszTv0XUTN2TW28u8eX876FIvcgP7y6VJV+g/yMBlQ6OmNpnQn
         Et/w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533kjIJNIXr4hc8WXPa2JRMrsPiTW1tp+U7pn6hDHFYN2pHLfcmO
	VNKhJ78QLDrhEg/tin8JUvw=
X-Google-Smtp-Source: ABdhPJxNgphEgCKupUxXiXg3Jtvyn1krlyFgOemhILF7L1eQSqKfPcGUowieLGc3wzwOgHrHhEF+4A==
X-Received: by 2002:a25:ea02:: with SMTP id p2mr27090494ybd.95.1605020369082;
        Tue, 10 Nov 2020 06:59:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5b:7cd:: with SMTP id t13ls2646490ybq.8.gmail; Tue, 10 Nov
 2020 06:59:28 -0800 (PST)
X-Received: by 2002:a5b:4c2:: with SMTP id u2mr18700069ybp.39.1605020368695;
        Tue, 10 Nov 2020 06:59:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605020368; cv=none;
        d=google.com; s=arc-20160816;
        b=Wx0QAwz/b3JYJoOa2Z5DVSvv+PV922ABREuEGbz4rQ+KF5+2kCXY0vHx7x9QDwPqER
         bnqXgJiJXb7HjfeDbW1X70k/aKYLCoYnsK4xOrg6/7xm7kJnNOmXvb07QZ0bOO7vHsBA
         NaozKFSSWDixX1OYQjOfeoXEXABfMv4YaKp1IryQR3+oZu0jDdrQP8TcCDxCdcn0z97n
         6m1CGLtyMXI6VX2IwWvCuNOwR52OTiTrbf7R5YVRr1uTcf6XAU6Ro2HEKTDDUQqIxBJh
         MlAIuWPew1AiJvfKae8BQhWQflawEjEl4okgna0xy9I310izC6QMHyBrfd5kEbiz0JXz
         ARxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=o/NDrSlYwavlG7KXE4e2i2W0MXCl/dthSPAGjeBpA9M=;
        b=CN8JRabqepd4D6sUf7xz+CdDdi4KEOUt/xzaEdt2jC/NCGJ0LGfNie4Pqjbolp2C8r
         1FaFCLCG8hUnCvwRz3kmAOAC0DjLZL7cdulCH2yxMvlfgnZViVpN7iasHXMr2e6QDlor
         ynpWkGnt++KUwoL1qlGVB5gfD9Pi+ZIXMj1/zJezzrHlT7BKdC1G31O4Y6gAntfwcZdN
         L/s2RXcy11rcC9WbQg58tpUCh21JrLKXwN0t9fi5sL7Be2NprHBzHv2XCR1HyQ7AZY2O
         WpxTMJaStifOGKugLojCNEuOvLipc68SzfkQd+Jw0XI/sx/60sFLMUI5/5km1VnMJK19
         C8Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="O/3QTe6U";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y4si1020511ybr.2.2020.11.10.06.59.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 06:59:28 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7521D2151B
	for <linux-ntb@googlegroups.com>; Tue, 10 Nov 2020 14:59:27 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id i18so12785413ots.0
        for <linux-ntb@googlegroups.com>; Tue, 10 Nov 2020 06:59:27 -0800 (PST)
X-Received: by 2002:a9d:23a6:: with SMTP id t35mr13613677otb.210.1605020366593;
 Tue, 10 Nov 2020 06:59:26 -0800 (PST)
MIME-Version: 1.0
References: <20200930153519.7282-16-kishon@ti.com> <VI1PR04MB496061EAB6F249F1C394F01092EA0@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <d6d27475-3464-6772-2122-cc194b8ae022@ti.com> <VI1PR04MB49602D24F65E11FF1F14294F92E90@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <30c8f7a1-baa5-1eb4-d2c2-9a13be896f0f@ti.com>
In-Reply-To: <30c8f7a1-baa5-1eb4-d2c2-9a13be896f0f@ti.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 10 Nov 2020 15:59:08 +0100
X-Gmail-Original-Message-ID: <CAK8P3a38vBXbAWE09H+TSoZUTkFdYDcQmXX97foT4qXQc8t5ZQ@mail.gmail.com>
Message-ID: <CAK8P3a38vBXbAWE09H+TSoZUTkFdYDcQmXX97foT4qXQc8t5ZQ@mail.gmail.com>
Subject: Re: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Sherry Sun <sherry.sun@nxp.com>, "bhelgaas@google.com" <bhelgaas@google.com>, 
	Jonathan Corbet <corbet@lwn.net>, "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, 
	"arnd@arndb.de" <arnd@arndb.de>, "jdmason@kudzu.us" <jdmason@kudzu.us>, 
	"dave.jiang@intel.com" <dave.jiang@intel.com>, "allenbh@gmail.com" <allenbh@gmail.com>, 
	"tjoseph@cadence.com" <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="O/3QTe6U";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Nov 10, 2020 at 3:20 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> On 10/11/20 7:55 am, Sherry Sun wrote:

> > But for VOP, only two boards are needed(one board as host and one board as card) to realize the
> > communication between the two systems, so my question is what are the advantages of using NTB?
>
> NTB is a bridge that facilitates communication between two different
> systems. So it by itself will not be source or sink of any data unlike a
> normal EP to RP system (or the VOP) which will be source or sink of data.
>
> > Because I think the architecture of NTB seems more complicated. Many thanks!
>
> yeah, I think it enables a different use case all together. Consider you
> have two x86 HOST PCs (having RP) and they have to be communicate using
> PCIe. NTB can be used in such cases for the two x86 PCs to communicate
> with each other over PCIe, which wouldn't be possible without NTB.

I think for VOP, we should have an abstraction that can work on either NTB
or directly on the endpoint framework but provide an interface that then
lets you create logical devices the same way.

Doing VOP based on NTB plus the new NTB_EPF driver would also
work and just move the abstraction somewhere else, but I guess it
would complicate setting it up for those users that only care about the
simpler endpoint case.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAK8P3a38vBXbAWE09H%2BTSoZUTkFdYDcQmXX97foT4qXQc8t5ZQ%40mail.gmail.com.
