Return-Path: <linux-ntb+bncBC2JZN6WSAHRBF5YSKDQMGQED2U2LCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDCD3BDCAE
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 20:08:24 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id o11-20020a62f90b0000b02902db3045f898sf14656758pfh.23
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 11:08:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625594903; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7MRWdpqqTG8rwcUFjaG7OZbV2NnXvd/NKfnJ6o04qy0iFDAUOTCw6oDIwENFNb28s
         TburD8Rdhfz6mBQTzbjPquDguJ62zHFV6j7ZjzaUyJAOVXxvfF+5tNkXHaQQtIzCpXWn
         6BUW2n7OybfmXiVetwtVdQDCTb/88dMdop01QJ4oQjGAA1OzffYJ/zVaIlLWqji/j27a
         7NOCXclN4uKMSXrguIYBMJ2Nrk8DsIlYA0GBhqju3AFAuZ5nBSMDULii5P4mYyyTM756
         8jkbPwW5lCi05va14L7ZBsCRzV0Jwh5U02ldqD6pTEfCOVlCcrd1tQs8ONjPv/YoOTZS
         3f0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zR9Cy3qLA9VjIw2PMZwW+7wLO6yxJ3TaKPT3Zw9ZKuo=;
        b=pTM2wjNTnh5FeUmqx8mMXJDbNuBTA91wKkzdN51K0unCPJ+8ZFh0JwGwyMEYKFaJTk
         9zUn2Fc1Rc2HinZ9Y/jEdgtsM7/bsAVfPD1pnDGKRn5ICcWAfmEScwGINDpXYe/dfi7h
         0DErsuNVRYP+/HsyTy59bOM+Blwc0UVPj1hCzN9fWDeK8ZyrjSggHAFirZeKjgQSM1pM
         i2SjKwfWNZRitHca4P3iY+36uSpivCLwwecUOmn3e4Srii9ijThdCJIlZ8uXKSxSKn3z
         y6nhjSelTqHmMCCqXSh63Id6ws3Vnpl82DxxlUsQVCKqXEYAcgZ07AQRHGJb9pHZmhxP
         4EeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Sz6rE6fI;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::336 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zR9Cy3qLA9VjIw2PMZwW+7wLO6yxJ3TaKPT3Zw9ZKuo=;
        b=lb/ZB4rFujTvIGOm2UmCB6dHmFo9qg/CJHv7Cr0H0RhT8jd/p8YuOmsCJLapiXSd13
         pn2J84tKe9bwTIgqSQtxAd9ypKNkKmggJIeYMdhYxfn87UmnXgkD4oHvhuM3MCSKBtNF
         mIKyFG9/P/gq3ldOK8ozjp+4tl/TvI9JdMlefnP/rT+/EBhfpd56ywSy+YOZNcYwglx9
         CSSKS68c4Vms60Df+Rl5mUruUitifhE26RE/aQLD/pICXc6L03UByQbEnh85NOza2jMG
         jU4YN0pyPo1WpgdOZ1HbLugTgTF/paKAJhuohH8OD+Ikb47ypZDJl2XRX8XvR5nqaVvE
         NPhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zR9Cy3qLA9VjIw2PMZwW+7wLO6yxJ3TaKPT3Zw9ZKuo=;
        b=Wsw325uaIJOc32v68Eq1mDj4xVoY/Zcb3cbkGY6sLEN5Rn7k2YJidhzY/9jn5x9D0c
         LwQuSnSyYwUz22RjAKLwFpajEWPQIBdADyBTjO7nFwNAvglx7eGsQKitpexFzt59egwh
         h0bny2/TE4htzDdHVfa+3n08izK69G6qINOwl/oKdcasnc26IRlvaXrTUiuNWhrKzH9E
         Fwn0LBzo/jXEkvkaGIAZecy0zXzmye1TmECkfJi+FNMq43LITMsSc4l4gDNAKrlgyqD8
         Wp0cPI3cPHlcLbPH3xu6Hll+2b6uivTjE1BKVWHNLgIqihrpecr5mp9pDiDon4K1/omS
         4F3w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531qxFP0GRgacGdVeThM7SZ6+7oOAbXEq2GEIe2wIoAmsnTOQF75
	WCb0hdPjw1+KMaSNDqTx1TQ=
X-Google-Smtp-Source: ABdhPJzkNsKucdxdHHG60jJP3xB1fk6L1TA/pvipCYz3YYjFyvFKFWNjTN55im6l2NH116OnJ9FinA==
X-Received: by 2002:a05:6a00:2293:b029:309:e87c:1f4a with SMTP id f19-20020a056a002293b0290309e87c1f4amr20861963pfe.36.1625594903456;
        Tue, 06 Jul 2021 11:08:23 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:51cc:: with SMTP id i12ls11325812pgq.4.gmail; Tue, 06
 Jul 2021 11:08:23 -0700 (PDT)
X-Received: by 2002:a63:d511:: with SMTP id c17mr22110285pgg.219.1625594902919;
        Tue, 06 Jul 2021 11:08:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625594902; cv=none;
        d=google.com; s=arc-20160816;
        b=d7pF3sUojye3mH1r4sgAWwe5pqHxPkflKJ3meqjQ6w7xRyz6Y/1nDDuyiJIpwoXsO5
         UPpZzqUMIk9/AyAM/ibX6bcKtaZ+DX7kXtVBuaOG7/7p5q85K/IrzDlOcznw94D69uWp
         VVzyx1JswLYjzGj1K7rNZyy8C77vhCVfJA6UjNi9xMRwHvv6vpMJuowo6VnKjy4Es8E/
         4db0rdUUwdVls/ROEqUHh44TwpSH0286SblpQ2TUTzYXvPHUmByPGMbLPZ4PQuKSwqeZ
         wNZv2k+6BGhGVg3460VZBPMKtAUG8ovnCOUG2XZgcMnDbal4n5DFpwp0mvflrL3o1+XD
         Ou+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rFh4HQBpaw9ewOD7eKuJ7KI9YAzHhN8tlxJ6LopMKHs=;
        b=BePYuqk1hSO1tT0yJo+gpnkhC0xtZGxZIFO86M0FThOmb9SXgtwgLi+DMvc0zztusC
         Bxu1H90bEbfkXtYBBdKowRnVjvoAU/5cu96uMR9DEbwqXfHW9+F7fcE+xnSWjJEFgLgt
         pFKTlgBUPT+eczmZ/9WDYTi/N14SZMffvq+a3vMVmBkWOsynXe6ZsQF6oETSQeGhYOYd
         mZG9lJhzgABB39yu7Tq34zOx2NW3wsmOGP6ab/t73n0Vwu6e0kZnAIpTYE6oXait8JMQ
         lgmtk+L+dr/8NetICcr8T7F12p+GXJIbK8OaKq0H9Y4AERNGqeW/AcbvOvmM2Sb+EX1t
         opug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Sz6rE6fI;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::336 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com. [2607:f8b0:4864:20::336])
        by gmr-mx.google.com with ESMTPS id r80si1384570pfc.5.2021.07.06.11.08.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 11:08:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::336 as permitted sender) client-ip=2607:f8b0:4864:20::336;
Received: by mail-ot1-x336.google.com with SMTP id d21-20020a9d72d50000b02904604cda7e66so22458175otk.7
        for <linux-ntb@googlegroups.com>; Tue, 06 Jul 2021 11:08:22 -0700 (PDT)
X-Received: by 2002:a9d:3d3:: with SMTP id f77mr16276146otf.43.1625594902170;
        Tue, 06 Jul 2021 11:08:22 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 68sm497113otd.74.2021.07.06.11.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 11:08:21 -0700 (PDT)
Date: Tue, 6 Jul 2021 13:08:18 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Uwe Kleine-K?nig <u.kleine-koenig@pengutronix.de>
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
	linux-mips@vger.kernel.org, linux-parisc@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-acpi@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-cxl@vger.kernel.org, nvdimm@lists.linux.dev,
	dmaengine@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	linux-fpga@vger.kernel.org, linux-input@vger.kernel.org,
	linux-hyperv@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-i3c@lists.infradead.org,
	industrypack-devel@lists.sourceforge.net,
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org, linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org, platform-driver-x86@vger.kernel.org,
	linux-remoteproc@vger.kernel.org, linux-scsi@vger.kernel.org,
	alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-staging@lists.linux.dev,
	greybus-dev@lists.linaro.org, target-devel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-serial@vger.kernel.org,
	virtualization@lists.linux-foundation.org, kvm@vger.kernel.org,
	xen-devel@lists.xenproject.org
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
Message-ID: <YOSb1+yeVeLxiSRc@yoga>
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
X-Original-Sender: bjorn.andersson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Sz6rE6fI;       spf=pass
 (google.com: domain of bjorn.andersson@linaro.org designates
 2607:f8b0:4864:20::336 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue 06 Jul 10:48 CDT 2021, Uwe Kleine-K?nig wrote:

> The driver core ignores the return value of this callback because there
> is only little it can do when a device disappears.
> 
> This is the final bit of a long lasting cleanup quest where several
> buses were converted to also return void from their remove callback.
> Additionally some resource leaks were fixed that were caused by drivers
> returning an error code in the expectation that the driver won't go
> away.
> 
> With struct bus_type::remove returning void it's prevented that newly
> implemented buses return an ignored error code and so don't anticipate
> wrong expectations for driver authors.
> 

Thanks for doing this!

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org> (rpmsg and apr)

[..]
> diff --git a/drivers/rpmsg/rpmsg_core.c b/drivers/rpmsg/rpmsg_core.c
> index c1404d3dae2c..7f6fac618ab2 100644
> --- a/drivers/rpmsg/rpmsg_core.c
> +++ b/drivers/rpmsg/rpmsg_core.c
> @@ -530,7 +530,7 @@ static int rpmsg_dev_probe(struct device *dev)
>  	return err;
>  }
>  
> -static int rpmsg_dev_remove(struct device *dev)
> +static void rpmsg_dev_remove(struct device *dev)
>  {
>  	struct rpmsg_device *rpdev = to_rpmsg_device(dev);
>  	struct rpmsg_driver *rpdrv = to_rpmsg_driver(rpdev->dev.driver);
> @@ -546,8 +546,6 @@ static int rpmsg_dev_remove(struct device *dev)
>  
>  	if (rpdev->ept)
>  		rpmsg_destroy_ept(rpdev->ept);
> -
> -	return err;

This leaves err assigned but never used, but I don't mind following up
with a patch cleaning that up after this has landed.

>  }
>  
>  static struct bus_type rpmsg_bus = {

Regards,
Bjorn

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YOSb1%2ByeVeLxiSRc%40yoga.
