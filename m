Return-Path: <linux-ntb+bncBCUJ7YGL3QFBB24M6WHAMGQE6QFQI2Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1A648A9F6
	for <lists+linux-ntb@lfdr.de>; Tue, 11 Jan 2022 09:57:17 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id jo14-20020a056214500e00b00411de582251sf15538486qvb.8
        for <lists+linux-ntb@lfdr.de>; Tue, 11 Jan 2022 00:57:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641891436; cv=pass;
        d=google.com; s=arc-20160816;
        b=XEtmryF+vl/o5AxdDkQTnD+ZN/Cr1Lsb1frmBG9FLa8qmNbbmpSNs2O57NZ50vIE7/
         ayiqkH1YiDdwaGnOHBlA+yWPVC2p7RlsA9eZ/aa8TDV/jPNlX888IGdKWftn+XIKqKa1
         1bfPrPD3hVfbQ7uMouMSNmdWtQxeWYiBOaxTiw4JnMxQtAt51+3reDpGCzCQjvknAjcL
         eqqCZQh/DMxATHo1YhLjnZ0Km8bOUr9RlxpFNtLwYODTzPdT618PTD6gDQwwZ947YdQg
         4H40Wjx2ZUvnX4m+imp9nVG0z0OFtuhFwrcbL4ZWl6PpM95g9FH0OrilSJrb+42FD5Cr
         f2Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WyPHVvWKApLjFqKbWPNUOioArWe6JYm02rdBHl7tq6c=;
        b=UR8eO0myiHB17g76hC8seIR1/+IxBroj3QSlMTONnRwBoBLYenybSVDuPw7c82jX7M
         yQyRjgK9G1Ak87o44N9BkRyyrSrSxQGfGPVYUw14KsHIxKY5T3RI5NPp3w2oAHHlNx8F
         3KjtC0VkPC6p1T+a9E3g4zHs5Yr1HKX+ZxI0NlN8zopt/1oxL8nFGUAk9WP9AfhKVm2e
         +/qya0kga3zucB1R1EAPAgQ6QkIc5cyl0E9sjjt1OUApezc7Fd8xW+Ln9nVoEmVNTtST
         U7qJzFnRbbQFDFEty5aiN1GpEtRJvwtkKr6qtGvta9lxlCm+b+h91EQgXgpF9MylTJKi
         kxtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iqf1MXWM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WyPHVvWKApLjFqKbWPNUOioArWe6JYm02rdBHl7tq6c=;
        b=nnp8ZOK8Lq5TNqjDSSbL8bi2R0y/i55p7WeKozMgZr8WqQltGaNOb0+d+VH549QJwq
         ba0/gwp++FHxYtxCnzqbtH8erLrRO8VvkPIi2JfxlTOIZoSdEhhsw3LTJbH47Fm0ja3y
         ot3XJBiSuCakqX8P5cQdVBDTg/TkRAo190sUfgzop3vy+odVvi383lspZSPIuswH0PqJ
         d7Re2VRoG1viVZIyB0ePmCq/alvTVbXUKlHHpgWwX/P+aCpq1vbYPvBwav3/dpWPw838
         GFt0isesKIXNnd7/RhHqKZeiqoxXbvB/rbqadPMsF7ONJN9W7jGXksy/dSYPCPMwp1+H
         nu4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WyPHVvWKApLjFqKbWPNUOioArWe6JYm02rdBHl7tq6c=;
        b=v+qmoBAf5KPBH3X74kdxmJQ4WVH3joV3C43eFQMiJZsRH6scdVMuxIB/iNcJBFlcrj
         +RWU/h04Y/e5viwlbortx3vDZC0craTs1wt/MdFPxY8Pio18ZaAFCUT5Il4LDUgGpGd6
         6XDgnlVqkGIdnQCdo5zaN04+VY3vSEXSXRAW+cOz+vHSF4QOGLF461RE13U8Kuxuw/MD
         6QJbsg40YeMLySoJhMAkMeP43ZpbWUfDxviVNpFtWVxdLc6QvAVryHjmlZJmtR6pkq7M
         HR2wo2a6S/WayNvh4HmeHek5ceRgi1B/vo4ElwWzdEcMhzbem7YefvsgjqabDjw7FkD0
         ROHA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533xt/onuWpBWqJEi2oFRdfNYxChoI83//iFRaceDWyc4wj+sMmn
	05Bz8RLQMhR5pLEovvcjJgQ=
X-Google-Smtp-Source: ABdhPJxZPqBRqhcRn8gXBQiL6SFoqAgeZzkMjy0dOJhBBUo1caw+QavQcXskTwGIKRhoq30VMW8mEA==
X-Received: by 2002:a05:622a:38f:: with SMTP id j15mr2809853qtx.349.1641891435870;
        Tue, 11 Jan 2022 00:57:15 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:fe68:: with SMTP id b8ls389969qvv.8.gmail; Tue, 11 Jan
 2022 00:57:15 -0800 (PST)
X-Received: by 2002:ad4:5b87:: with SMTP id 7mr2898611qvp.71.1641891435442;
        Tue, 11 Jan 2022 00:57:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641891435; cv=none;
        d=google.com; s=arc-20160816;
        b=TO+L+FjFDaDWZlfmQYKzr3ui7BIdbmXUCm2/fL1xKieKUvAGXSyKSX+NxkFDaUs0ea
         JD4Q0Pj3sBRvqChxJ3gOIo/+poHHFBHFREllAmOX4Oie46/qXEJsUe50v6DHXX1/BOKg
         LO3WgiL8f+MeZwrc9dft/T4xtNNg3HhKVUL7CL9xTm+53ut5Ug31RbPGmQzG7pmZtngF
         WCw+cR4uowTEB9Yj8AOX2sSgL+8/AmmcPCgjv+e+dYvd74DXj4sTG1eDLkF9zmcFIS3D
         H97DZQWCIpdywdPbIDQUqpDB26cKjPMw+OqzerUhFfJkwtQYtif9JypB3KWGuAaMFicr
         GvMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DH6Rr6CrfSV8hL9CwYaWyVUnTVqD11f/7Ekn6Qb5GdQ=;
        b=AER9QZMKGIBp7r6Ga0nIRYaTQrggQmmpQCsLqletCs8oioW0LG56IY7L9lOXQAp+8u
         nnC6QbRtrTsdeTP/m9L1fpba0iJxrKez1C3TU3oD2pImzJdDP9gFp4P7Fyck5SGMz5vf
         l0bBcN2on85SFtVHUYqzQ2m3bIwfoRdiu9gtpc+utxJ2B9OlZuIVMK29PwKu6kEz/Xoo
         wXmpEePAOLHAw4sz/r4B/DS3mVkTMbFfA/gF09gTQvQorUwtjf/CizfCb1QHK/vQIjAg
         K3BsxI9rV4T2vhdvimgCMhbZmafQdoSoExd8q5Xeh55nfxA0hMp6uBsAYKV4tsCH+8Nr
         1QmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iqf1MXWM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id s7si731302qkp.0.2022.01.11.00.57.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Jan 2022 00:57:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 0D8D4CE0B9A;
	Tue, 11 Jan 2022 08:57:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01CF8C36AE9;
	Tue, 11 Jan 2022 08:57:10 +0000 (UTC)
Date: Tue, 11 Jan 2022 09:57:08 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
	linux-pci@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
	xen-devel@lists.xenproject.org, Juergen Gross <jgross@suse.com>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Logan Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com
Subject: Re: [patch] genirq/msi: Populate sysfs entry only once
Message-ID: <Yd1GZMvstSNTc80B@kroah.com>
References: <20211206210600.123171746@linutronix.de>
 <20211206210749.224917330@linutronix.de>
 <87leznqx2a.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87leznqx2a.ffs@tglx>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=iqf1MXWM;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Mon, Jan 10, 2022 at 07:12:45PM +0100, Thomas Gleixner wrote:
> The MSI entries for multi-MSI are populated en bloc for the MSI descriptor,
> but the current code invokes the population inside the per interrupt loop
> which triggers a warning in the sysfs code and causes the interrupt
> allocation to fail.
> 
> Move it outside of the loop so it works correctly for single and multi-MSI.
> 
> Fixes: bf5e758f02fc ("genirq/msi: Simplify sysfs handling")
> Reported-by: Borislav Petkov <bp@alien8.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>  kernel/irq/msi.c |   11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/Yd1GZMvstSNTc80B%40kroah.com.
