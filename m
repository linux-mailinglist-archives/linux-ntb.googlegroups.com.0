Return-Path: <linux-ntb+bncBAABBQXPWT6QKGQELOOIL6A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC2A2B066A
	for <lists+linux-ntb@lfdr.de>; Thu, 12 Nov 2020 14:25:23 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id s128sf4198087qke.0
        for <lists+linux-ntb@lfdr.de>; Thu, 12 Nov 2020 05:25:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605187522; cv=pass;
        d=google.com; s=arc-20160816;
        b=jw+/AD2rNnDh0hGbLjn8OiNLwTLnHV12Az3glZZ9XvCr62ys7iebssa4H3op0VAHbs
         diJySgHHQpO85LzYXA/ExtX0KBN06AePjUbwqU2/fKNYMbhj2YDH0U7UiIdYbSFBWrKX
         cCfasATmvAMT7jAaPcIS0u4BZLZALK8S+diUkdMzqPQOmYJ0VhyD/b0CkdXwH3w9l6yk
         Kj8Zvi8d4sQGQEpqd/6k42cp79cY0BW2hURzHTKcNBemtKOIozRgZzRoYJ9q34Uhgtx+
         iWKJUQGrhcQ+vk1PeJD7lf1xC2gX7pHhz21p/ajgJHBJBg7hryl+0JAjaChqdJz/N/Zv
         yrIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=+FbAK/ICF433zhMyXcFKJVNaoB3wtzqEXWr0rgIykVE=;
        b=Xy8GcuP7Svz6Unsw5seCqsQAEDBRFjwuHuFYa9YWr65jeOX6lKeSCS1NgMvb8hxbg3
         5foY4CHMi0qpsT337kVjAVqLu18xS/BTmINYtBcyg5Mgblta8baUn1hG6lkrCgiEoywD
         zoJbwrrQMTJYXcTUp3clwzZSlhsGCWWYkAaJshPyUiwGTYvlXUGcz00Xn4CoD5jgou8u
         7p44v/74HDsI9Tf15GAj8//KTT3s1LbZW1tAvGpAZnAjrW69gFDR2DYF9cH5rdy9E270
         +uKTegBYRxrtXvYi9ksXXZp9tpXigMaoVreNf8QGTNVu1vsviF4lxsZA55FYqbj7Dx/D
         +rdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=D6gEoa6u;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+FbAK/ICF433zhMyXcFKJVNaoB3wtzqEXWr0rgIykVE=;
        b=Nk7X13eJPVVN2FLuj7qDnAJXqzKyKAXO0ljsLc3t3W+XNat++sXvOHR9I1JVJ0cSRc
         bd0a3IhQcGIEj/U1+f5TB3xvPKTe9wPjWoshnEnqMqZwOUtoaMuidRovsddGCkimP+WJ
         lwnX11x67Krojkzc2jFIqZ+kXdXb+lLk8kRDDwAsv9aEZRK1jOyopZJzp5gVWbEeJ85E
         3/M8SzqT3u53sH4fDgtfGgr+m9DNnO3EOHp24RtKX04k5IEX5D7HN7ggp/3UfB0brJOW
         l8ojIxREfCJ0wWJG6Q7cFjzbbWhF5YZ6qcvQWpjGoMY91G0PFKcKo8ZBoWPsHnBPs61k
         aTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+FbAK/ICF433zhMyXcFKJVNaoB3wtzqEXWr0rgIykVE=;
        b=PPlFvuIrWqFIdVEy03zYeK6jGMsvG8zqD/ZioyT0vwn0MocE7hkAVhRZIrBfbTExdt
         LTGsWyHz5pqTX9KpltYg+s0cEXw61hDToeDebaW6+1OL7tMj61FePIFqJCMj927OIOAg
         BYl+O/mxd2hEX9rhsp2hbqaXDBGt3ShE8YK7uvP7aWGhJ16+i5gYTFRvD+FRWJpkSpqD
         2dSb9PeDOyqEypMHfE9atTiYAvdJ4bgJYeDJDBdEL9PM8srHweg9SlFnsfjLjtIEZOxV
         kwAgfMxr7euwNRDcwSEngXI7jVz6Cg+LtfrDkVZ/OFP2NosmnL+KOJUtDXO0QYsBP0WB
         jkzQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531WfLklfai+IEwJV8gmg/xTBRipEnnV926a3FfT+VGhUzsMgQaC
	ewFP7aY2NAkO63d4T5cK8J8=
X-Google-Smtp-Source: ABdhPJwcAo4U1QnaO1ROe+4ahsqBwJyrYn/knVdq/LXSDb9RSbUMoRoM2RbjalWzOcPxBD6sO1UCDQ==
X-Received: by 2002:a37:4a8e:: with SMTP id x136mr30659941qka.434.1605187522430;
        Thu, 12 Nov 2020 05:25:22 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:776d:: with SMTP id h13ls977703qtu.7.gmail; Thu, 12 Nov
 2020 05:25:22 -0800 (PST)
X-Received: by 2002:ac8:6d1:: with SMTP id j17mr29571079qth.230.1605187518437;
        Thu, 12 Nov 2020 05:25:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605187518; cv=none;
        d=google.com; s=arc-20160816;
        b=zRt9whcqlUpOMsF4ACeVVb5Dj8eHcxwAqzLAD3AZJaAIMteFn4/bF6ZbebdFYamPmw
         OcbxHks+ol7WXV6+1iA3rp2MawRMxLBgYqJtDYgK7/3x17g0FuLy6wTqJM449XFZsVvJ
         JR3OJBReFQoS+i1js2kiBpOPpRS0i3tRjdwZOvPgnBM5Fx8ySNMwjua17wfFFoxQyR5x
         zDvSNnlCbEOknlPKysXyyQGwlZ2VXQzflqAnf6krsGdE8gor9nrYA1NfuPreIbFxYhM7
         eOcpI11NXJxT/rEgm9CvuPJVnywVMAZNDWpgQuRWqX1NKStrMi/yL/w1aYLeLvYCRKhn
         iQrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ziot05ceGc0sYXSDk0Qw72NjNQN78wSdEAbwnTIklZI=;
        b=GFQzSJHk9EwANg+0yMKjDNBZsj1CBgftwp5RajpCDYZueO02ieB++g0mRIjN3adAjO
         dGMIamHjLM5p7C9enxixWPqkKhFlVWtXskG9wYmhqJ3DV5baCG5u7nULAfBxZZHegG6w
         Qwwadueay0zspLtyfowo5ZnU772KuW/vfcPV6Qb6pJ3srQCrl7Ny1DThXiq+40jIpJzv
         AWF1Fx70p74/zGkL5uHdJOQngX8Rq3p+EWmR86gNtk+DPVKwb4cCbSbP0cXruC7mDJhZ
         69oxHylD5jB/Ac6zlfpCqGB829329TawHlGWmCWggwdUWYbgaYFO9w0w1x8lcGsvfW4T
         Gylw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=D6gEoa6u;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z205si345769qkb.1.2020.11.12.05.25.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 05:25:18 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B521C2224B
	for <linux-ntb@googlegroups.com>; Thu, 12 Nov 2020 13:25:16 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id o25so6346312oie.5
        for <linux-ntb@googlegroups.com>; Thu, 12 Nov 2020 05:25:16 -0800 (PST)
X-Received: by 2002:aca:3c54:: with SMTP id j81mr5673905oia.11.1605187515847;
 Thu, 12 Nov 2020 05:25:15 -0800 (PST)
MIME-Version: 1.0
References: <20200930153519.7282-16-kishon@ti.com> <VI1PR04MB496061EAB6F249F1C394F01092EA0@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <d6d27475-3464-6772-2122-cc194b8ae022@ti.com> <VI1PR04MB49602D24F65E11FF1F14294F92E90@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <30c8f7a1-baa5-1eb4-d2c2-9a13be896f0f@ti.com> <CAK8P3a38vBXbAWE09H+TSoZUTkFdYDcQmXX97foT4qXQc8t5ZQ@mail.gmail.com>
 <5a9115c8-322e-ffd4-6274-ae98c375b21d@ti.com>
In-Reply-To: <5a9115c8-322e-ffd4-6274-ae98c375b21d@ti.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 12 Nov 2020 14:24:59 +0100
X-Gmail-Original-Message-ID: <CAK8P3a33XSvenqBhuQpGmtLbYydyzY2OQh73150TJtpzW24DTw@mail.gmail.com>
Message-ID: <CAK8P3a33XSvenqBhuQpGmtLbYydyzY2OQh73150TJtpzW24DTw@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=D6gEoa6u;       spf=pass
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

On Tue, Nov 10, 2020 at 4:42 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> On 10/11/20 8:29 pm, Arnd Bergmann wrote:
> > On Tue, Nov 10, 2020 at 3:20 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> >> On 10/11/20 7:55 am, Sherry Sun wrote:
> >
> >>> But for VOP, only two boards are needed(one board as host and one board as card) to realize the
> >>> communication between the two systems, so my question is what are the advantages of using NTB?
> >>
> >> NTB is a bridge that facilitates communication between two different
> >> systems. So it by itself will not be source or sink of any data unlike a
> >> normal EP to RP system (or the VOP) which will be source or sink of data.
> >>
> >>> Because I think the architecture of NTB seems more complicated. Many thanks!
> >>
> >> yeah, I think it enables a different use case all together. Consider you
> >> have two x86 HOST PCs (having RP) and they have to be communicate using
> >> PCIe. NTB can be used in such cases for the two x86 PCs to communicate
> >> with each other over PCIe, which wouldn't be possible without NTB.
> >
> > I think for VOP, we should have an abstraction that can work on either NTB
> > or directly on the endpoint framework but provide an interface that then
> > lets you create logical devices the same way.
> >
> > Doing VOP based on NTB plus the new NTB_EPF driver would also
> > work and just move the abstraction somewhere else, but I guess it
> > would complicate setting it up for those users that only care about the
> > simpler endpoint case.
>
> I'm not sure if you've got a chance to look at [1], where I added
> support for RP<->EP system both running Linux, with EP configured using
> Linux EP framework (as well as HOST ports connected to NTB switch,
> patches 20 and 21, that uses the Linux NTB framework) to communicate
> using virtio over PCIe.
>
> The cover-letter [1] shows a picture of the two use cases supported in
> that series.
>
> [1] -> http://lore.kernel.org/r/20200702082143.25259-1-kishon@ti.com

No, I missed, that, thanks for pointing me to it!

This looks very  promising indeed, I need to read up on the whole
discussion there. I also see your slides at [1]  that help do explain some
of it. I have one fundamental question that I can't figure out from
the description, maybe you can help me here:

How is the configuration managed, taking the EP case as an
example? Your UseCase1 example sounds like the system that owns
the EP hardware is the one that turns the EP into a vhost device,
and creates a vhost-rpmsg device on top, while the RC side would
probe the pci-vhost and then detect a virtio-rpmsg device to talk to.
Can it also do the opposite, so you end up with e.g. a virtio-net
device on the EP side and vhost-net on the RC?

     Arnd

[1] https://linuxplumbersconf.org/event/7/contributions/849/attachments/642/1175/Virtio_for_PCIe_RC_EP_NTB.pdf

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAK8P3a33XSvenqBhuQpGmtLbYydyzY2OQh73150TJtpzW24DTw%40mail.gmail.com.
