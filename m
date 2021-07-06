Return-Path: <linux-ntb+bncBCX3TTWUQMPRB66ISKDQMGQEYDKUVYA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 904BC3BDD79
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 20:44:12 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id y10-20020a05651c154ab02901337d2c58f3sf9159427ljp.9
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 11:44:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625597052; cv=pass;
        d=google.com; s=arc-20160816;
        b=HsRvdWBUTrKUZu5mpSF0KPTlO/+D+nRAKeR3ApEjhRW4jiuR23R9EQbpxXlYvYi7xy
         W1Zo0TA18mQHyZVIjngQBdZ8Irfmg5Ms3LGLzq0kNvyjJSRdFop6qWbFP10MTDBsPUAp
         GohCCOTDiBIz5xb01Ik1Zmil4jO4EXxJ/hPc6iNq+JBjrvOnNexRzncA3dwjhWV8y5LU
         xEWyeZ3oeC7XSWaqfz724yco8RvobkPH0rp+Lp9SEx0MeW6PtvuoKBMM62mYDpVHr6Be
         uCKoLXZRARJtJxbXImMCiGHZX9pplKScFi/a+sJ1H1tsJCVsEhE3esHYF/F0ZpgvT4Hk
         XMCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=grphTooOvuHn6LBNzstL0S4A76zrX8wmu7Fflj02rZE=;
        b=h4TEZ2hCTT4r+Nmd8XW2Wr3PwPySzm9qR8R/+9m2fqt9wiDEgvTEltbyqCR7AU3D6R
         PL5k24Yg0/SK5nyFVPezNWaFf3YHaqGHeEyn1etAsWJi7eEq3IHucNcWtng3NcCFCUR9
         ++a9MmAJJkEPB73aWK+xWl7SqUSNr+l6cmP0ywhEz+YhEkbTtzprhpx603AJcrORKvVI
         DMIuC3OyHxq6SsvZhvD6iGQf8lJnh5fpUYYs10+THv5Ro17nlC+b19vkZnuMqY1wqfJk
         ZGHRhgYBw8wZgU64OX6C0pWpbW8L1cDG+y+eBhRR3r1lSGnvh7pRelUrs1R9v5uERv0z
         Sbtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=grphTooOvuHn6LBNzstL0S4A76zrX8wmu7Fflj02rZE=;
        b=RQ6cPZc8IWPoLZV7CUFg9MDKm9UAw9oZzaumzFS9x00+6Szpk3qj4MDJ9T810r7vCf
         obvmPHdLnWAxzYTUXd8DX1D616u+dl6YwA93D7TpzkqrsdkPUh+LtRnLClvCJTYn3Wzr
         bXfNy8Z6NGI6738UlqkiIjbT3o5x7DWlqAFZLNT0g+jQY1DRhfvx+hk08JnmolwSVmGx
         YS3fpQW3rcnsLeooCKInELBIFNqjyNW6opcXuI8XPog+MWohqiPod1+Z6IxULbemUAsP
         9KdEsHwyKM8wdj2sB/lb5ibUfXKjXphW9DJ2A1K81bpDG38Ovf7Ak1EcWfjdn0+6sI+2
         Spmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=grphTooOvuHn6LBNzstL0S4A76zrX8wmu7Fflj02rZE=;
        b=rXO9dke6sTI6MFy4p8HaCqbldDtCm5vHotWTh5vyHkH5/0s0YjHhs0goISFfzsXfd/
         CtGVEbTGAVT4xDf6lsTd/NIH3GHgQNoT0lF0brdEjsBwpypdJt8YVF5Whw2a8zo0ZSr/
         qNaJLT8JVJ8rhK9KAjEI+EcJeWiXZAyS5vkTZo1ppLPYZDZ084ACvfjGNYurpsBvSvWz
         V8s/QCk/TPLd1J/t6XH1LpGYguGV69WlaPyQSw04MLfnWbYuaOFbyLjb9xtPNIZcwUDR
         UpwC0HR7uL4Pg5uLTXmPWQ9hB2yFgX85NqtYrjsMLL2CATe8s/xm+o6es569PwzNJNVo
         AOiQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533zDQpUeAljKdgqeY4cftCiN1IgPKXGVKaKRm+dQMaoBGtbg5pA
	CqINvoJEmnV5aMwjfaNywVU=
X-Google-Smtp-Source: ABdhPJy/EljGRdIOBl+HjKJ54PvmFGtT08wQTLVBwzT3AHcaI2qJE6czXnQzwfviQ0NC1kxraeXz6A==
X-Received: by 2002:a2e:9218:: with SMTP id k24mr3551603ljg.7.1625597052165;
        Tue, 06 Jul 2021 11:44:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:430b:: with SMTP id l11ls1491059lfh.1.gmail; Tue, 06 Jul
 2021 11:44:11 -0700 (PDT)
X-Received: by 2002:a05:6512:238c:: with SMTP id c12mr16434026lfv.317.1625597051015;
        Tue, 06 Jul 2021 11:44:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625597051; cv=none;
        d=google.com; s=arc-20160816;
        b=d6oUEWnlgDoEdwTjsFqL86IqbnuKndpkiN3cFE/nQDR3gYWGoebogu7eB0bNtoOrMn
         ubIH32T6d9YCpI/wa53s0rQvjpjCbhd1RW/D9BEQ5Rmd3VwNuhMDbhS5VBlIfVhsUMPL
         D7SsK/T0mgH2Yw+h/be20W8a8WK3qR05BLz6bPAEanc4tvCOGORoPgtZWAZ/yj2TwN1V
         LSHV0tdSA2tbDNtggYjUISJAIyZRkdL/ZznIlbYKaQBadCTL6ywCbnRvbffwuiK1DadE
         xbxhfh0sx7qEgWYmtsATCl/1fyXVOnpvPUxLrlhxW+YskOgEg3KulEq+nMzb9x6Q5dnX
         VOUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=OK5lMYl6Edzi1cWTOjCJiYs2KYL0s404M8dW5RgTsqg=;
        b=pHhHIrB6UeMAWhOAg8L7ct4LYMEC8OSHFmkC/WKxVIJP+CeOJLpe5rd7Ioh/hOH55o
         lO93DQupWuoeQhv9l53q3ikpougAyeM0NEQ2FPkE/u+xoUUCeiIwUSBlmiMk4qcCWeWP
         oB0Vgtq9kx7E1iJSKTCQCz7BVPjJzNN5y+EtGX/WuR8CPR/hNe2wHSkHEuXr75EhzMnt
         oNX+Iak2UL62bVzudP1hsBdqzPX/aIG7OrK+xB+JD9tu6pj+cFw7p/c+P9xnLoTrX5tQ
         irFnazKfupft6x7CYdO13qVA38TrGymgW02YHkpuF08MI2IMyCEg2szjp6k864saK86P
         jPSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id 187si214179lfm.5.2021.07.06.11.44.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 11:44:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0q2W-0000ek-Kp; Tue, 06 Jul 2021 20:43:24 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0q2V-00021e-8f; Tue, 06 Jul 2021 20:43:23 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0q2V-0004QV-6e; Tue, 06 Jul 2021 20:43:23 +0200
Date: Tue, 6 Jul 2021 20:43:23 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
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
Message-ID: <20210706184323.fudcbsiu4i34dojs@pengutronix.de>
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
 <YOSb1+yeVeLxiSRc@yoga>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2fjaqpmq47gf4tbn"
Content-Disposition: inline
In-Reply-To: <YOSb1+yeVeLxiSRc@yoga>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-ntb@googlegroups.com
X-Original-Sender: u.kleine-koenig@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
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


--2fjaqpmq47gf4tbn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Bjorn,

On Tue, Jul 06, 2021 at 01:08:18PM -0500, Bjorn Andersson wrote:
> On Tue 06 Jul 10:48 CDT 2021, Uwe Kleine-K?nig wrote:
> > diff --git a/drivers/rpmsg/rpmsg_core.c b/drivers/rpmsg/rpmsg_core.c
> > index c1404d3dae2c..7f6fac618ab2 100644
> > --- a/drivers/rpmsg/rpmsg_core.c
> > +++ b/drivers/rpmsg/rpmsg_core.c
> > @@ -530,7 +530,7 @@ static int rpmsg_dev_probe(struct device *dev)
> >  	return err;
> >  }
> > =20
> > -static int rpmsg_dev_remove(struct device *dev)
> > +static void rpmsg_dev_remove(struct device *dev)
> >  {
> >  	struct rpmsg_device *rpdev =3D to_rpmsg_device(dev);
> >  	struct rpmsg_driver *rpdrv =3D to_rpmsg_driver(rpdev->dev.driver);
> > @@ -546,8 +546,6 @@ static int rpmsg_dev_remove(struct device *dev)
> > =20
> >  	if (rpdev->ept)
> >  		rpmsg_destroy_ept(rpdev->ept);
> > -
> > -	return err;
>=20
> This leaves err assigned but never used, but I don't mind following up
> with a patch cleaning that up after this has landed.

Ah, good catch. If I send out a v3 I will fold the following into this
patch:

diff --git a/drivers/rpmsg/rpmsg_core.c b/drivers/rpmsg/rpmsg_core.c
index 7f6fac618ab2..9151836190ce 100644
--- a/drivers/rpmsg/rpmsg_core.c
+++ b/drivers/rpmsg/rpmsg_core.c
@@ -534,10 +534,9 @@ static void rpmsg_dev_remove(struct device *dev)
 {
 	struct rpmsg_device *rpdev =3D to_rpmsg_device(dev);
 	struct rpmsg_driver *rpdrv =3D to_rpmsg_driver(rpdev->dev.driver);
-	int err =3D 0;
=20
 	if (rpdev->ops->announce_destroy)
-		err =3D rpdev->ops->announce_destroy(rpdev);
+		rpdev->ops->announce_destroy(rpdev);
=20
 	if (rpdrv->remove)
 		rpdrv->remove(rpdev);

Maybe .announce_destroy() should then be changed to return void, too?
Something like:

diff --git a/drivers/rpmsg/rpmsg_internal.h b/drivers/rpmsg/rpmsg_internal.=
h
index a76c344253bf..d5204756714c 100644
--- a/drivers/rpmsg/rpmsg_internal.h
+++ b/drivers/rpmsg/rpmsg_internal.h
@@ -40,7 +40,7 @@ struct rpmsg_device_ops {
 					    struct rpmsg_channel_info chinfo);
=20
 	int (*announce_create)(struct rpmsg_device *ept);
-	int (*announce_destroy)(struct rpmsg_device *ept);
+	void (*announce_destroy)(struct rpmsg_device *ept);
 };
=20
 /**
diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_=
bus.c
index 8e49a3bacfc7..4e05994634f8 100644
--- a/drivers/rpmsg/virtio_rpmsg_bus.c
+++ b/drivers/rpmsg/virtio_rpmsg_bus.c
@@ -340,7 +340,7 @@ static int virtio_rpmsg_announce_create(struct rpmsg_de=
vice *rpdev)
 	return err;
 }
=20
-static int virtio_rpmsg_announce_destroy(struct rpmsg_device *rpdev)
+static void virtio_rpmsg_announce_destroy(struct rpmsg_device *rpdev)
 {
 	struct virtio_rpmsg_channel *vch =3D to_virtio_rpmsg_channel(rpdev);
 	struct virtproc_info *vrp =3D vch->vrp;
@@ -360,8 +360,6 @@ static int virtio_rpmsg_announce_destroy(struct rpmsg_d=
evice *rpdev)
 		if (err)
 			dev_err(dev, "failed to announce service %d\n", err);
 	}
-
-	return err;
 }
=20
 static const struct rpmsg_device_ops virtio_rpmsg_ops =3D {

though it's not obvious for me that the last hunk is sensible. (OTOH the
return code is ignored anyhow as rpmsg_dev_remove() is the only caller.

Best regards and thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig         =
   |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20210706184323.fudcbsiu4i34dojs%40pengutronix.de.

--2fjaqpmq47gf4tbn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmDkpEcACgkQwfwUeK3K
7Ak4/gf+JPjwmTdMOBhuMe8ecxXY1LASOPn6raBvtbwdOTQTpuggYaNCNlkaVJAE
HyLf68h68hyvV9vpIoID8AOmf9uXGwFBXlOzR/nHgHqauU/8HnbE2GH+wOywoCi8
Tkzj2jT35NSYD0Cmtorpd0wmKVjEQuPqiv8px5gEqAMvtwp93P9dQwyKm7IPhUSf
Ly8NwR3EsI/ng6nNulL+Z6d0tGg+RRvUj5mWp8YcIYePISvHdibi/lFHA6vTaWE7
ZqLwQsajLZaY5r33EPGYZOxBPk809iKwh4Q5mfww37TTXySNeps2tFT7S6r4d6To
OAUYwloDQSOqtVvuLc4PfxSTkToueQ==
=o1F8
-----END PGP SIGNATURE-----

--2fjaqpmq47gf4tbn--
