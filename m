Return-Path: <linux-ntb+bncBDA7X7F2WUEBBDHESCDQMGQE5SQE7HI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 788483BCA11
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 12:35:56 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id n17-20020a05600c4f91b0290209ebf81aabsf737790wmq.2
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 03:35:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625567756; cv=pass;
        d=google.com; s=arc-20160816;
        b=AZ5kjnVS2HHTwsaHrwsbzF4Xk79Q4DdphZ6MW9krDWwqBKXTT4HlUr7/g6oMnfinhN
         u9MFnUlllCwKn/CrwWf1gy4I2iupC205u/LY+k1VSHx9QqcJXC+A14+IpOCUJFiO7jDR
         QefTHb3+JlQp+lajXIjkC/wnwwHU2wkGd7cUn48WpnRwvN9B21RCXfvIHdUlK5St1ccU
         D04YVvuRp3cpE97aGjquzh2A2PPxmngMNlU5HQ508vG9G+Lm23tDk2DzkVZp2TSHWVIY
         6ZJitYzud6wU44J7VDa7Gq2MeMbmqpaUrs8zov2cztv1ItMK2Ml8519zORprWvccueMR
         qY5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=TiewMuwgbOzAiI04Pq49nq5JYtoIBWWoqgtrJQ+AJ9c=;
        b=c/jNr5c5mi4ZAkct4Zv1t4tYyiDSKjCYEnONocZjFtKbp4IWNr2xZfGEC7ELUq5r5v
         FTfXBwopyokPUfdVaQbZqLGaPhSEIfLYl5mon171PUte3WTAH9JP+sssrg2IVLb213D7
         JbqaNwQUaFzlBV/LN2q4XmaBZF7CpilISWL6ymkaA6ViVZJXDndXUt1RwU5VQMr9HfBD
         s/ayv9rM4HETQXP0YWKJVR9IBDNKMNETPkcClIINWANyzLgxbOybjJQnbbZT7eJVS6qc
         otVCbfg5slGi7JOjbPznyDGiY1j2G1MMEbBAB1CFv7pn4v1mpXDlIu2YsTRPskvKLfiS
         rlNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Yt+wwRbD;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TiewMuwgbOzAiI04Pq49nq5JYtoIBWWoqgtrJQ+AJ9c=;
        b=e4kLECjo1diK8QMxpMkn5xjVPQTM4EpgB6GOw/cgstVd2dkogQIGoGWEEq3J/C5pdc
         iATkItG1lkyg6kbP5AKGT941+OZ6s99yv/RZv84GHmAgIrr28LhjrKGx4mXp919oduWF
         Cjxx3llRPO881Pe/KUaeBsbA9mLz9ZqCQ9TJd13zpWgh8IvN84OFjf08GiVzKYsYR9AA
         IQGyebXyDINdzijmbyP4w03SCtAgXyGSqtAZtO8eI5IOUqStt9xdwo3/sM050kQK11qt
         J6AVIXtUnAiOOFIRwcUOKA28+DNH7ZGTJjHugVC2LyK1iUYl00EVnVNtLUeA1l6lRaRL
         gYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TiewMuwgbOzAiI04Pq49nq5JYtoIBWWoqgtrJQ+AJ9c=;
        b=IxsE0ETHfnJuol498Ns/QMm61rPnmp1tfqV8ZN86P8HAfn5e2XfAtl5/zeHYWO7c5e
         ROxHj56e+XDe0PWNHg1wH2ENYaOsv1QPFEjzd7mNGcaQcUbXzaHssw6eRsEODLBqmjcg
         NsLLqQFxW03PWNI7753kIGzFDNCV+HyXyA+Hwg+JtTJDk5K6vuMWK1jUm8UoD6bP8tKP
         S8hkFvkoR9CcSLemkN4soX1Y34tTNM15Jur+6hPgEGBy107dSH/ANS4PgZzoJnrC28cv
         Zkhe9VA4kX3aveb8fGTCQ6ooMkgFcAyHozRFlTyxHl1Y2qKGdEvrU3Oq2MD9vX9RKfM3
         OIAg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531XmlKIcZCT3udy1OEdT+pWHJNd5hXXnlgPIhWWKEQwpOwt+7NW
	sgNoKVSL2C/t9dDqaCx4UK8=
X-Google-Smtp-Source: ABdhPJyeG4rCQcB5d1B0yb+naA0UVw6a5DTRNrWkU3/Pb2XkWG1cikQ2V8QeUafojvCdw9g4Uq7Jpg==
X-Received: by 2002:adf:e603:: with SMTP id p3mr20084466wrm.232.1625567756205;
        Tue, 06 Jul 2021 03:35:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:4c50:: with SMTP id n16ls882626wrt.2.gmail; Tue, 06 Jul
 2021 03:35:55 -0700 (PDT)
X-Received: by 2002:a05:6000:81:: with SMTP id m1mr20824966wrx.322.1625567755399;
        Tue, 06 Jul 2021 03:35:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625567755; cv=none;
        d=google.com; s=arc-20160816;
        b=DHLioSlxxd215LLs2ub+1swgupZj+lOKV0Dud38wzdTNy+COVQuKG2TwCflnhZzIp/
         GQH5Wt1rh2bPeOrX5qpbsD4RAMI6orMVLV2jRTyJbaZ1JdMVH7yUcmpwY9Gj8880OwM0
         18DqH187n4VShPHKKyEjAFk+4MmvQ7OJzmsRsROFlnFAnIfNxsVyS0beo72CB/VK0NqJ
         fif+9YTrDu1czeLfA+KexIU20xWkJ/M++H97bULy1WNEBqOLob17ARBYuWSRQSO1D91G
         3qVVQ6cXknA8BIckOLPXtkOOShSOnVqJeOBsH/FNzshBHdM81XssR0hfWw6Sa3gzgzg9
         +sOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=6xuYHcNFKOKQBrKUFUDH+4OX/ZzxgolWWFVCDDtB2Y0=;
        b=RQNrJQ8ZN2dvUCaQMz/7wc1PoRR8hwl8tBMcvWQTTYJpZEEo/KZAXuz+jQqSbU1XZ9
         xFm9ytCFXhBcoW2aI71IqM/H5YiNCwp5dP6Cxwqt2lJlK28TLVvMHc9EP6TU4O0P1uqv
         05Q1v1G7WaRbwvh/VcGeGLAKcSqkEbfJN1cOew6w3HoPhjWji9QfsIWAXIR6375HS5cG
         MYf5+xWGhujEA2SJMOAwXEi3Dq0Z/AKjt3CWPUZVcrf4IGJzqU6YROPsRh6AAvsiJ4yy
         5trdSSPwdRqO0QwTD/EdfsX4c/dLvR2iCesbu2DoQlgKFxRZX5MSPA2efjO+zxJEQHDa
         GkXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Yt+wwRbD;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id c26si870660wmr.1.2021.07.06.03.35.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 03:35:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Received: by mail-wr1-x435.google.com with SMTP id f17so894582wrt.6
        for <linux-ntb@googlegroups.com>; Tue, 06 Jul 2021 03:35:55 -0700 (PDT)
X-Received: by 2002:a05:6000:12d0:: with SMTP id l16mr21397024wrx.189.1625567755049;
        Tue, 06 Jul 2021 03:35:55 -0700 (PDT)
Received: from dell ([109.180.115.218])
        by smtp.gmail.com with ESMTPSA id l9sm16428319wrp.14.2021.07.06.03.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 03:35:54 -0700 (PDT)
Date: Tue, 6 Jul 2021 11:35:52 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	Helge Deller <deller@gmx.de>, Geoff Levand <geoff@infradead.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
	linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-acpi@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-cxl@vger.kernel.org,
	nvdimm@lists.linux.dev, dmaengine@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net, linux-fpga@vger.kernel.org,
	linux-input@vger.kernel.org, linux-hyperv@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-i3c@lists.infradead.org,
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
Subject: Re: [PATCH] bus: Make remove callback return void
Message-ID: <YOQxRS8HLTYthWNn@dell>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Yt+wwRbD;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::435
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 06 Jul 2021, Uwe Kleine-K=C3=B6nig wrote:

> The driver core ignores the return value of this callback because there
> is only little it can do when a device disappears.
>=20
> This is the final bit of a long lasting cleanup quest where several
> buses were converted to also return void from their remove callback.
> Additionally some resource leaks were fixed that were caused by drivers
> returning an error code in the expectation that the driver won't go
> away.
>=20
> With struct bus_type::remove returning void it's prevented that newly
> implemented buses return an ignored error code and so don't anticipate
> wrong expectations for driver authors.
>=20
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
>=20
> this patch depends on "PCI: endpoint: Make struct pci_epf_driver::remove
> return void" that is not yet applied, see
> https://lore.kernel.org/r/20210223090757.57604-1-u.kleine-koenig@pengutro=
nix.de.
>=20
> I tested it using allmodconfig on amd64 and arm, but I wouldn't be
> surprised if I still missed to convert a driver. So it would be great to
> get this into next early after the merge window closes.
>=20
> I send this mail to all people that get_maintainer.pl emits for this
> patch. I wonder how many recipents will refuse this mail because of the
> long Cc: list :-)
>=20
> Best regards
> Uwe
>=20
>  arch/arm/common/locomo.c                  | 3 +--
>  arch/arm/common/sa1111.c                  | 4 +---
>  arch/arm/mach-rpc/ecard.c                 | 4 +---
>  arch/mips/sgi-ip22/ip22-gio.c             | 3 +--
>  arch/parisc/kernel/drivers.c              | 5 ++---
>  arch/powerpc/platforms/ps3/system-bus.c   | 3 +--
>  arch/powerpc/platforms/pseries/ibmebus.c  | 3 +--
>  arch/powerpc/platforms/pseries/vio.c      | 3 +--
>  drivers/acpi/bus.c                        | 3 +--
>  drivers/amba/bus.c                        | 4 +---
>  drivers/base/auxiliary.c                  | 4 +---
>  drivers/base/isa.c                        | 4 +---
>  drivers/base/platform.c                   | 4 +---
>  drivers/bcma/main.c                       | 6 ++----
>  drivers/bus/sunxi-rsb.c                   | 4 +---
>  drivers/cxl/core.c                        | 3 +--
>  drivers/dax/bus.c                         | 4 +---
>  drivers/dma/idxd/sysfs.c                  | 4 +---
>  drivers/firewire/core-device.c            | 4 +---
>  drivers/firmware/arm_scmi/bus.c           | 4 +---
>  drivers/firmware/google/coreboot_table.c  | 4 +---
>  drivers/fpga/dfl.c                        | 4 +---
>  drivers/hid/hid-core.c                    | 4 +---
>  drivers/hid/intel-ish-hid/ishtp/bus.c     | 4 +---
>  drivers/hv/vmbus_drv.c                    | 5 +----
>  drivers/hwtracing/intel_th/core.c         | 4 +---
>  drivers/i2c/i2c-core-base.c               | 5 +----
>  drivers/i3c/master.c                      | 4 +---
>  drivers/input/gameport/gameport.c         | 3 +--
>  drivers/input/serio/serio.c               | 3 +--
>  drivers/ipack/ipack.c                     | 4 +---
>  drivers/macintosh/macio_asic.c            | 4 +---
>  drivers/mcb/mcb-core.c                    | 4 +---
>  drivers/media/pci/bt8xx/bttv-gpio.c       | 3 +--
>  drivers/memstick/core/memstick.c          | 3 +--

>  drivers/mfd/mcp-core.c                    | 3 +--

Acked-by: Lee Jones <lee.jones@linaro.org>

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Senior Technical Lead - Developer Services
Linaro.org =E2=94=82 Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/YOQxRS8HLTYthWNn%40dell.
