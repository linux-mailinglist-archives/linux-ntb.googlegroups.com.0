Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBGGLRCGQMGQEZMC4QDY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 517BC45FE90
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 13:33:29 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id c8-20020a7bc848000000b0033bf856f0easf8624264wml.1
        for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 04:33:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638016409; cv=pass;
        d=google.com; s=arc-20160816;
        b=ALZMcVS6JdR2krXY0WaCDWDX0qI8luz6THr/HN65jzjj6pks1HAa8+sdYnk3JckDmo
         qFBd+BhSBoeRE2FsBs9uP/fUWlMvXAKybA1OsoU2aP4jKII3wKPMADTa9KjEXUQm8VvC
         1c7NoInTlLh0aUlU4LA5GnEBYxRw1Tw1VEnE2LKMOCQsL3Lvx49g8tLW4pYB1P/qUd0D
         80BK1IXuPZ3xhhdK3Xk/2fLtGTVxKKWHU39/9pbD6V7rE4nGqn3yV0LGlRJsQspiVZjK
         btO5H2suSlhVbpiDz3sjnIbAQGZUHX0mMvsOa+2PCYMClBgY+yS8LY5EE875VzDj9qgR
         +tfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=53hhEahomZXkbOFj2QBFqeY+TQNBN7yqDOTt6/Qs0+I=;
        b=kmPk4n2RgWUV7WfnN3lIEhLQvCjy9mhV4zR/902KKtpRKKg4ee2ey01q2fWRw1Kc7K
         Xi9Tr//JAm3ALzUPbmSdUOUgFjP7EqbXCFHIQcj3OaqHd0vRuj6utGlf2Bujbke+vUFd
         FG1vL4rSoM+EgwR9fneVD8tIeFIa2k/QeX3px1QKxyYyj7aDlY+EnHd4bUwk568XLt1O
         Rq1ClD03Hk70m6hI5t0aCizOzEVCt0IO/4k3r5IbnVUXbWV2f5DHbdnpXj/bIH5xhuLS
         mDfspao0H0SqLP1FjflkCddvvYykqAyKyHSqp2/sPXXpRu4S7wz0cj6yhMUbch93rN75
         7jcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="RvixBZ/I";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=53hhEahomZXkbOFj2QBFqeY+TQNBN7yqDOTt6/Qs0+I=;
        b=VAYQ/sdt/SDi20n21Jypz+NSsZStPw8kHzCncPTcSDhL3Lfq6ueb+YM4F/mxQuFTNy
         9oF1ixc1xidVq/kNpqgKjuyx6Oy5MWAmBoVGFxcEzT1rT4/Rh1Cd6moWNi/HsiYEFBx2
         /yKXf9xKmu0bIDY3kkKyq6A0WB/my8Z8rhqi8+dnsLYds03/ssTieLF8iY5N0Sd85PQh
         9q05H7ky9Pqw3jHaRZBAZoe21QF5B3cRi8XdbrkcebfplHOYsKcmF0tbn0JmrlJcpYXa
         eAm49ldqi43S+svvd8gR1ww5JLvjCMIs1VK6rE/1P95yAYc5c8fOYRHHh35Q47cHwoPH
         cgJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=53hhEahomZXkbOFj2QBFqeY+TQNBN7yqDOTt6/Qs0+I=;
        b=hcT0lP3FTiWYvtJ8ePX64gXMeSDvP16dcEffdcLVMVxPx8vMfgaCP5J/bekqTV7qUu
         m6TguO2WxlRe4oXc3UQNvSPmJp9CQR2hbPdGNfs0CVr+WQYcy7Ou9u6QQ1a7uUBbWMKq
         jnaJtCWLc00wKG2JnSUj/u9Xx+49iJs+8lv02bLamcLuFMOHrRBJvIFLVbpCyvXh+zLm
         dXrJe2w8M0nMgxse+sHKwW1rUoBaYf9xHGLzaIw8+92tA89eRvmEYwU7BjnKM7GkrUkC
         kNpyM2UxgeR0Rg7jkWpDGuBrgu+FyrF5cOvC3l8zGtP9YnvZmpTkiyuyPT6LAUnYj4WT
         nn0A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530oyBNz9LBsGCYOBNQhINQq0kEGXFHdrosF7OfZe3T/5haowTNW
	G2Xc9yArnUF5o3xD4+KIT+w=
X-Google-Smtp-Source: ABdhPJwAC8esWcLftVLedKeFkluq6ZD9JpangQUOQyllOymGQsr8+wvCw3+1y+5YmMk+nUc/i9T9vw==
X-Received: by 2002:a05:6000:1a88:: with SMTP id f8mr20746375wry.54.1638016409111;
        Sat, 27 Nov 2021 04:33:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f885:: with SMTP id u5ls1261634wrp.3.gmail; Sat, 27 Nov
 2021 04:33:28 -0800 (PST)
X-Received: by 2002:a5d:5646:: with SMTP id j6mr19892219wrw.401.1638016408260;
        Sat, 27 Nov 2021 04:33:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638016408; cv=none;
        d=google.com; s=arc-20160816;
        b=mp7AqaBiGKboUQbCC9qkI9qJLGT6b07pnIuHnqnFKbU/AzSb1exw3fhjtz0AyjPMOO
         eiU4q6HtqF3c5jWJUub9e+EFaAYf/lCwB65XESis+MxmQIXFuo658VW429557gK+fKHa
         rQtmA9GCHigArmmk7YDA5jZIoqFwfujpNq1G9bepiovPNN3TP6A9HF3WtfRWPk89xgsX
         GlvaYizqjoVQHnXlZDDZFnama2M0Ub4an0BH6+knzlh6pQv5gfWVvWimvXByZj6RSR0u
         GZrKBnS39qwsC6my92hubiov76klzTaSYIBdPp+2ck+91WwjFa0CPgiE4rhr0H9ly+57
         rW1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yGKj3xd1PgPXQHC61CfZU4/mSjwWm2pY6ci+FRLikIg=;
        b=IVjqLMvy3WCw+8ou6fG664yA5Ggv51F52nmQorysQRAys9rsht+zTekmWd8bOolPGF
         f5SBwIwU3gexJ+9sUhaKdZrZCgwGjvJFQWWES+tAQg8NVywS90pj/dFo3HITee/tkoYG
         Li59Ibo0T9hHdQyKLeHppdvk8nGnbiGgyshI6jiCWpL4HZBVl6Zl75QQKOd51lZ/0egZ
         QUoAakw4fdVRpRLCRXaJzd4C0TjJVGS/L6yZV9KL3TfE5Ea4VHH08rlZZ2MaUI/kih4P
         2jZVFV+SBG3KmjBYQY1PcZd5kyhvEIEhPXPddrwRt+ZosZeRFGZTjNgzNb5AtxGAE471
         EMLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="RvixBZ/I";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id u10si796386wrb.5.2021.11.27.04.33.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Nov 2021 04:33:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B5318B812A7;
	Sat, 27 Nov 2021 12:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFB5FC53FAD;
	Sat, 27 Nov 2021 12:33:25 +0000 (UTC)
Date: Sat, 27 Nov 2021 13:33:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
	linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
	Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com
Subject: Re: [patch 32/32] genirq/msi: Convert storage to xarray
Message-ID: <YaIllD3pSVCI/gbj@kroah.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232736.190744801@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211126232736.190744801@linutronix.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="RvixBZ/I";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Nov 27, 2021 at 02:23:17AM +0100, Thomas Gleixner wrote:
> The current linked list storage for MSI descriptors is suboptimal in
> several ways:
> 
>   1) Looking up a MSI desciptor requires a O(n) list walk in the worst case
> 
>   2) The upcoming support of runtime expansion of MSI-X vectors would need
>      to do a full list walk to figure out whether a particular index is
>      already associated.
> 
>   3) Runtime expansion of sparse allocations is even more complex as the
>      current implementation assumes an ordered list (increasing MSI index).
> 
> Use an xarray which solves all of the above problems nicely.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>  include/linux/msi.h |   19 ++---
>  kernel/irq/msi.c    |  188 ++++++++++++++++++++++------------------------------
>  2 files changed, 90 insertions(+), 117 deletions(-)

Much simpler code too, nice!

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YaIllD3pSVCI/gbj%40kroah.com.
