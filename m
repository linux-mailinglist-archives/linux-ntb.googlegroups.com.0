Return-Path: <linux-ntb+bncBC2JZN6WSAHRB3MASODQMGQEAM5SQYA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 183593BDE7E
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 22:43:26 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id m15-20020a923f0f0000b02901ee102ac952sf88508ila.8
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 13:43:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625604205; cv=pass;
        d=google.com; s=arc-20160816;
        b=aqRxDkgT4eXQCvt4NpPKgFpjxpahd5JOYgkk/AJjijgzaAbyl2brp9bZ0fNoPnwjGp
         b7CisfgEn7ElviJy/Op+OjB8jdQsstx5i4xZ03AFrnVFi+rZ/7U7imgM3k5Nqj/oWJAf
         66SBFi1pD+RGtQbYsMttK/fLoY2FR2E1QPSmSjZAxfQ/CCIh18boHUIiNGqvABiA8KTV
         GXts1atHtBgWG/wioXy2vtaxunY1Ip2LYjh/bOIeJhSw0CSUD4CMY18uJ04GkBtG0ypV
         38l3wdlOQbC6GO6X0Y170eNjNDmAiImRe9x7M3zFowF9aCRnrUVuMO0NQLzLRYwAZmC3
         rppg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XWUPJsCuZlArC/iZa1nqt13/dR1mbJEsD1NNiZHyJwA=;
        b=u1L40TT7/+x4bJtJDbrgK91NhicpW2UtXzMzpRs7KCaJUG/AsV3UcwOq11eW5RQMZF
         pUIGwZXMoEnu0SA10xvuCROgK5DJ0PQTRbs9IZRBVBlUUcJcHOAIDrSlHxp8KwAFYR0g
         hU7oZenVxYjqxwAZxF5jIkOztQwcMGm8qC1VIeB0fZQSETJNoCpyw2AkCIjzGXU/R6ls
         dgiMhTFu150K0jUhGWl5nmf1+fb0JtIE3TafMGorLeaQutNb2pqOJnPzNOSCkZcr/19+
         V8WweNzwmSBp7sQW5V70eiaFnh/aN/MltcE8Ie63FT7VwAAj1W515nd/R807bNfbdNnr
         rqag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cMEULcwq;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::c34 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XWUPJsCuZlArC/iZa1nqt13/dR1mbJEsD1NNiZHyJwA=;
        b=Rrrm9H+SNfqcFMe8P5O0fpn5o2G6iekVeTIkuJHKonRpFYyOAXGZCI7m29q9ravTjs
         Bdrs5xQRSO2Hdwwf3J68ws+JNs0hWKvYAyAy7Q1Kbjs1S9Y8EsaE5QamxYL0ThU36QL2
         LIQBYMYAFX6iQHqqyFWe2Sav48UAaHhISGOeX34RFhvGJ+8HN2TY0ft/JLAEVRNhtyaO
         kdnUhUTBtFnf/sTKKkgKplZCZ9kpQd6tEqHTIt/agPiC6RnwlUsbHlDRwkW/2NVkIMRV
         lh8TVXt3nolPrIFn8TnJxDPS33ETdhP4/htJYlqJkrMpe/g8k8yAnKAGRbEmfeZ7BZwz
         dCyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XWUPJsCuZlArC/iZa1nqt13/dR1mbJEsD1NNiZHyJwA=;
        b=IG44uF4mQ9H5viu0tMfab7bmB/DYvzpecsIqswuJFF1aQr0zkAk8gUW7QrahO/l0GZ
         pUmCMqpC5Qz8W/fkhitkzD0nci8TD/FA2CLfE0chloF2w+q+cwqcdgdoUo2RaUhhRtfp
         fIVnRinzECQ53W99zbMPa5YY3S7tl132MNDsqv7tvna8Q1vQ7TfzYNlIz1RZ+k6l3ryx
         tiDllA34AV2ePzkaEX8RJnhayVRpyz5aO/Y2PJu4j5GXKTsKgSg9Na6Iuw3a9jslOZ6q
         6WhEFnXvahww4bmfRSsJ+NHfOr1qxTl50xnmhLdZopgvajB5hGpZHIqsZgqyBxAGkWha
         yZKw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532aUxswOVMJOi2yJuPlxUq1roeAO3pmaT0BjRX4Z+r+ZoI8t4JQ
	cg+hO2RNfIo6j9xk5sF+lDM=
X-Google-Smtp-Source: ABdhPJz0fpgprrGLUblRtmIqlSkEcfuWALWQCkpuG3o/6cY6AC6a/eJzha21o99yY5h9OKbZ+KcuSA==
X-Received: by 2002:a92:8e45:: with SMTP id k5mr16474966ilh.116.1625604205046;
        Tue, 06 Jul 2021 13:43:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:c842:: with SMTP id b2ls4720259ilq.8.gmail; Tue, 06 Jul
 2021 13:43:24 -0700 (PDT)
X-Received: by 2002:a05:6e02:78c:: with SMTP id q12mr2635505ils.243.1625604204762;
        Tue, 06 Jul 2021 13:43:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625604204; cv=none;
        d=google.com; s=arc-20160816;
        b=W6LjZSyK0fs5Glw8QQ4czZVw3mZ2LqdI/VhjDbKo7DtbVNq8+qUxIXGt7hRXokKww+
         XkIh5mZAo6Qh+/fC5+Bbe7FEMA2VgqxH84AHQeo70haLxMJ2Vx4jg+zU40JyWoRaA0U4
         ZfWCnbQGD1Es3XfQhYhlx/3Ckcfj0zRFIu7QpIFagF2agCSs8Zn7uDlDL8w1YyWAqh/s
         ssOoxo96TRQ2mIDkabOk2v+McDYjh57EI1EqMqqk5Ua2vE5JKKS3GsCm0QjGIGf9VA0f
         ZKj5CZNeEpTnEA8wx3rRQXFmkkJ5N/34k6TwqU6e6LLFzUBX2rfu7lLsnjsk4yc1sLNJ
         0elQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pxMY07o9eA6SvMdwqfO/Cy/RP18zRy8WHvKUzTEaaNE=;
        b=z4jxyno6kzXBnSacTL3Zxe0kz8wiXYAVB5LYAT2xW7ODBO0HPovFoXTLsJPN3R5iP5
         IpCi1b5/hd6+z6o1sOjz68EAd8CmuKse3XHOGLnEWN7+eYWa4Rm79i5iLXE26RhFVyy2
         yO9DQHfFxveeIQiKa45KJKnkTUfAafeG+fk7zN5CJtadK3zWvPWTBPNZyqMMmMNd7s4I
         ICyxBhKIp6lspWLerikgyHxe2MpaLTVoR922Mn93TlIt1voWYCh1Moxm2WaTU5qD4Xt+
         Wtcsz08g9yh1XSDLHWeaDZFkwJxmD5VqCqemsrkfC0nq2ALcrvzDpbbxuA3P7wGSQLf/
         fBGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cMEULcwq;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::c34 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com. [2607:f8b0:4864:20::c34])
        by gmr-mx.google.com with ESMTPS id h197si508041iof.4.2021.07.06.13.43.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 13:43:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::c34 as permitted sender) client-ip=2607:f8b0:4864:20::c34;
Received: by mail-oo1-xc34.google.com with SMTP id j4-20020a4ac5440000b029025992521cf0so696660ooq.7
        for <linux-ntb@googlegroups.com>; Tue, 06 Jul 2021 13:43:24 -0700 (PDT)
X-Received: by 2002:a4a:d6cc:: with SMTP id j12mr2894172oot.0.1625604204373;
        Tue, 06 Jul 2021 13:43:24 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id x130sm1332892oix.22.2021.07.06.13.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 13:43:23 -0700 (PDT)
Date: Tue, 6 Jul 2021 15:43:21 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Uwe Kleine-K?nig <u.kleine-koenig@pengutronix.de>
Cc: nvdimm@lists.linux.dev, linux-hyperv@vger.kernel.org,
	kvm@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-fpga@vger.kernel.org, linux-pci@vger.kernel.org,
	alsa-devel@alsa-project.org, linux-cxl@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, target-devel@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-i3c@lists.infradead.org,
	linux1394-devel@lists.sourceforge.net, linux-scsi@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-acpi@vger.kernel.org,
	industrypack-devel@lists.sourceforge.net,
	linux-input@vger.kernel.org, xen-devel@lists.xenproject.org,
	linux-sunxi@lists.linux.dev, linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-serial@vger.kernel.org,
	linux-remoteproc@vger.kernel.org, greybus-dev@lists.linaro.org,
	virtualization@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
	netdev@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-spi@vger.kernel.org, kernel@pengutronix.de,
	dmaengine@vger.kernel.org, linux-ntb@googlegroups.com,
	linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
Message-ID: <YOTAaQ7AnkCvRQaS@yoga>
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
 <YOSb1+yeVeLxiSRc@yoga>
 <20210706184323.fudcbsiu4i34dojs@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210706184323.fudcbsiu4i34dojs@pengutronix.de>
X-Original-Sender: bjorn.andersson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=cMEULcwq;       spf=pass
 (google.com: domain of bjorn.andersson@linaro.org designates
 2607:f8b0:4864:20::c34 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
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

On Tue 06 Jul 13:43 CDT 2021, Uwe Kleine-K?nig wrote:

> Hello Bjorn,
> 
> On Tue, Jul 06, 2021 at 01:08:18PM -0500, Bjorn Andersson wrote:
> > On Tue 06 Jul 10:48 CDT 2021, Uwe Kleine-K?nig wrote:
> > > diff --git a/drivers/rpmsg/rpmsg_core.c b/drivers/rpmsg/rpmsg_core.c
> > > index c1404d3dae2c..7f6fac618ab2 100644
> > > --- a/drivers/rpmsg/rpmsg_core.c
> > > +++ b/drivers/rpmsg/rpmsg_core.c
> > > @@ -530,7 +530,7 @@ static int rpmsg_dev_probe(struct device *dev)
> > >  	return err;
> > >  }
> > >  
> > > -static int rpmsg_dev_remove(struct device *dev)
> > > +static void rpmsg_dev_remove(struct device *dev)
> > >  {
> > >  	struct rpmsg_device *rpdev = to_rpmsg_device(dev);
> > >  	struct rpmsg_driver *rpdrv = to_rpmsg_driver(rpdev->dev.driver);
> > > @@ -546,8 +546,6 @@ static int rpmsg_dev_remove(struct device *dev)
> > >  
> > >  	if (rpdev->ept)
> > >  		rpmsg_destroy_ept(rpdev->ept);
> > > -
> > > -	return err;
> > 
> > This leaves err assigned but never used, but I don't mind following up
> > with a patch cleaning that up after this has landed.
> 
> Ah, good catch. If I send out a v3 I will fold the following into this
> patch:
> 
> diff --git a/drivers/rpmsg/rpmsg_core.c b/drivers/rpmsg/rpmsg_core.c
> index 7f6fac618ab2..9151836190ce 100644
> --- a/drivers/rpmsg/rpmsg_core.c
> +++ b/drivers/rpmsg/rpmsg_core.c
> @@ -534,10 +534,9 @@ static void rpmsg_dev_remove(struct device *dev)
>  {
>  	struct rpmsg_device *rpdev = to_rpmsg_device(dev);
>  	struct rpmsg_driver *rpdrv = to_rpmsg_driver(rpdev->dev.driver);
> -	int err = 0;
>  
>  	if (rpdev->ops->announce_destroy)
> -		err = rpdev->ops->announce_destroy(rpdev);
> +		rpdev->ops->announce_destroy(rpdev);
>  
>  	if (rpdrv->remove)
>  		rpdrv->remove(rpdev);
> 

Sounds good, feel free to keep my ack on this.

> Maybe .announce_destroy() should then be changed to return void, too?
> Something like:
> 

Yes, I saw this opportunity as well. But that will fan out further, so
let's postpone that until your series has landed and we can follow up
with such changes through the remoteproc tree.

> diff --git a/drivers/rpmsg/rpmsg_internal.h b/drivers/rpmsg/rpmsg_internal.h
> index a76c344253bf..d5204756714c 100644
> --- a/drivers/rpmsg/rpmsg_internal.h
> +++ b/drivers/rpmsg/rpmsg_internal.h
> @@ -40,7 +40,7 @@ struct rpmsg_device_ops {
>  					    struct rpmsg_channel_info chinfo);
>  
>  	int (*announce_create)(struct rpmsg_device *ept);
> -	int (*announce_destroy)(struct rpmsg_device *ept);
> +	void (*announce_destroy)(struct rpmsg_device *ept);
>  };
>  
>  /**
> diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
> index 8e49a3bacfc7..4e05994634f8 100644
> --- a/drivers/rpmsg/virtio_rpmsg_bus.c
> +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
> @@ -340,7 +340,7 @@ static int virtio_rpmsg_announce_create(struct rpmsg_device *rpdev)
>  	return err;
>  }
>  
> -static int virtio_rpmsg_announce_destroy(struct rpmsg_device *rpdev)
> +static void virtio_rpmsg_announce_destroy(struct rpmsg_device *rpdev)
>  {
>  	struct virtio_rpmsg_channel *vch = to_virtio_rpmsg_channel(rpdev);
>  	struct virtproc_info *vrp = vch->vrp;
> @@ -360,8 +360,6 @@ static int virtio_rpmsg_announce_destroy(struct rpmsg_device *rpdev)
>  		if (err)
>  			dev_err(dev, "failed to announce service %d\n", err);
>  	}
> -
> -	return err;
>  }
>  
>  static const struct rpmsg_device_ops virtio_rpmsg_ops = {
> 
> though it's not obvious for me that the last hunk is sensible. (OTOH the
> return code is ignored anyhow as rpmsg_dev_remove() is the only caller.
> 

I need to backtrack a little bit more to figure out why we ended up with
this...

Thanks,
Bjorn

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YOTAaQ7AnkCvRQaS%40yoga.
