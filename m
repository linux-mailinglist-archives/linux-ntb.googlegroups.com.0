Return-Path: <linux-ntb+bncBDHJNEGX2EERBFPXZH7AKGQE3ZAIT3Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7C62D6741
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:48:39 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id q5sf2956624otc.11
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:48:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629718; cv=pass;
        d=google.com; s=arc-20160816;
        b=0S3QkVMQAV1smHShh+OJFVsQbbOkj3wnaC7Vx0cafu5HDDGQ1ouK3YkEtpAhUqNIfc
         LzJUhK3amie+Net0+6442sPERr5DggeMqAn9mzdT1HGt+0UjUkvvxHuKrNw3fybU2Z0l
         3IEyc1QJS3wVgIaefXzFXj7hSyOTGKxmKuHuNXbnOFSrnBhnt6SRRYinTgci11XWm+k0
         YpxSVTJRBRU5nHuO6r1lUh6h2V3JLjJHjUSgUj48xtNzl00sj4weTAlN6K4A2tCJHnIK
         x4pF/X4NM9RXHFg2bZZoMtqipSq+QbNKDGFzWVMXSxmmjEIguq4OFGlDWKfRPTuvPjHM
         +5ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=brQ7E6iiIJBmuGftUwxcX6DhT1fm2ud16hBPYeW2Z9Y=;
        b=GyX562yQ4m//0wnbkuLLgsGmbuqXJ794XLVxTsVCU3JFxmflwQMI5iSVtBdXcX1eN9
         kru2fcFA8lecK9/TUbPevu19oXuahJtRMslQR0fGYDSduAgxtZxgRq48iYY+82tlkCGd
         0UGTFeilBpwCmTGxFeHGyCAYQb/LH4O4YJnl8JsldiG8GoX0FHwWlUmI87sNdv4lb5kC
         z9dmewJwCRh/Jql/JXUhb2HUWgK8Lrx9XPSsWJvUJ4sZ0dZAv7kmjcpAFZXFTFxkd8tB
         Eccq+CDICZeJXO4aqQMseWqr54pZ+T241zG+5BcIJTT11qhoSLx0oSZBbYTB3feC6+j4
         0xug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ville.syrjala@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=ville.syrjala@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=brQ7E6iiIJBmuGftUwxcX6DhT1fm2ud16hBPYeW2Z9Y=;
        b=anmwHSkf3PRHkMTDwEK8eIUHE2oZ2yhk9ufPex//c2WBCoO+IKzCFZoIQh8VM+c8r1
         eYEAXQrRL1t10auMUUrPjPuGG/CabydEYfwY3ZDmYtwGNQGr+XslHx5vfx8ED0Tuue9u
         XrXELzGpX0KEnDjPRrU+iJY7Fd5d5W1ujwqzVj4FOMF4cw7zygV5orQkKGjnzMxsmMJ0
         gXEL26qW3s1eWjKpHoXSOz/k33DO17Gj481EZf3c7pwScgAjKhbYayMFzF9a8YPKPuXl
         sWc5mXUd8pMmq2WhedVVV01pCXmx/YcfQ7xduzREcbiq/wRgor+aUCWX5897Foa+jC3/
         M8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=brQ7E6iiIJBmuGftUwxcX6DhT1fm2ud16hBPYeW2Z9Y=;
        b=dwvBdLg1lcTzH9adL6nHvaEVNF0nvGJhMNoqrEDxZRfjf9/3h5pEd8vYoosKFzcEG6
         0uNixbnRJB2lNat+IKH5Cmy94EFuzX3zAi+BAG6cvei2X7fGj9xVK6DjwJ2s1YeNHoif
         B+0ANvXEYB+EeucyfIEwNRW5EG1fRiIuayFpzFzgN1WlyTLlrd/sM/KX66XrrmeYSlUr
         LBZaSWFaXljqp/jUwXRB5QWQu0sL7cvhSe7TWnr8sSaR1ewi9EKxsuksiZlPYV4pv7X9
         8OWEmLehCY9XpPfXjq6jG29JsoqMhvrJ4AlFfn3zpw111hTUmUvdqKTZwpy7PaF9h0f6
         UmwA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532eMLy8CICm73ctIgqYHeCEXWJevRaaeeJildie9ngNfRbl6qHd
	X3zXDtXKeIWCGEw+XResLBM=
X-Google-Smtp-Source: ABdhPJyWeZIJEV/mM3LKnfmU437Lrm6M3XbuGFANBxCFCk9JA/yABoCDcpPx4dIotCmQwRTupwIKxQ==
X-Received: by 2002:aca:72cf:: with SMTP id p198mr6727744oic.60.1607629717970;
        Thu, 10 Dec 2020 11:48:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a54:448b:: with SMTP id v11ls1650484oiv.7.gmail; Thu, 10 Dec
 2020 11:48:37 -0800 (PST)
X-Received: by 2002:aca:eb41:: with SMTP id j62mr6599341oih.88.1607629717121;
        Thu, 10 Dec 2020 11:48:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629717; cv=none;
        d=google.com; s=arc-20160816;
        b=s0BB84sYjLUAFIez0k+n8nCWiv54wt6PxocZmrT9ebDzSPr2TfFIHTnFscoHILofG/
         L7irzG17sKNDNhj/s9JqD0SKw79jE2kYwnZCUHIMsSTnO8xCF200j1QMxrlOsn9zmuIf
         xe22xkzH3iA8Jt4GKprnEBftOlSmaR3MzAcSe4Kmm0oODCnZEINUMy1ySRNssbh6B8b6
         4H5lmT/fq5TomhdZq2Y/DsaUftXmZdpFhry7w3gkaUUY+8rC1GJ6ck80zDfX95lFYfhX
         1mQ7iwSasmYMyYnPYwwIqE6C7XphJ+2ez4G3Gay6Sqqv/YS1O5cZaWdhQrTK46GoSbMg
         +wAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr;
        bh=nCSThCPkOHyIIAaXAxpfwnnR2sjXZ0EE4drzBH+Y1Fg=;
        b=V26agH4wl6fyFXqlx/sc3c3EGsb1vQpAMOkVACgF0f24EJVlGGsuFz+O6xtdDF4zl2
         J4teqGNW2JK5hgi/9/DcUFniz9/lSPdVfonG/UwsnwQXawPArVjldBnz+CawdDjzFyig
         PcMxOIqEXFU/PbNFksDa2ufVgigpuXMIdXqbrhawO1IIk69ea7owP5gjom95DWFwm3SH
         xuq/fvahT8w4koj1yDtM0TWEdLONp6z0vkHiRF/LnzdRxbCGl2Y9EtSK/pCorvhpfFjS
         yuBWQzHaUHJLZKtHcCyLaVdDB7hggQPMJ7NnLUhVK8RTOLZCVRamodofB5MKpIwY3XGK
         j8aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ville.syrjala@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=ville.syrjala@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id e1si528818oti.2.2020.12.10.11.48.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 11:48:36 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of ville.syrjala@linux.intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: 32sUfrue/0vR830fDtwE8fpuEKWPm4w0UMUrRM//qAbGvkSTnJJaHDlDxemtEUc4rHwcoL3MVS
 j8x3FUaDK8HQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="171755649"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; 
   d="scan'208";a="171755649"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Dec 2020 11:48:35 -0800
IronPort-SDR: Qef2UfSDuwyPiJ27NUpAFZLQLjXKYRK609+0x1abl5RvYR7KCkszp/IICW7DO8jsBWdQpq5EWc
 XoQtIWeVTwmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; 
   d="scan'208";a="376070310"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
  by orsmga007.jf.intel.com with SMTP; 10 Dec 2020 11:48:24 -0800
Received: by stinkbox (sSMTP sendmail emulation); Thu, 10 Dec 2020 21:48:23 +0200
Date: Thu, 10 Dec 2020 21:48:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
	Peter Zijlstra <peterz@infradead.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	dri-devel@lists.freedesktop.org,
	Chris Wilson <chris@chris-wilson.co.uk>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	netdev@vger.kernel.org, Will Deacon <will@kernel.org>,
	Michal Simek <michal.simek@xilinx.com>,
	Rob Herring <robh@kernel.org>, linux-s390@vger.kernel.org,
	afzal mohammed <afzal.mohd.ma@gmail.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Dave Jiang <dave.jiang@intel.com>, xen-devel@lists.xenproject.org,
	Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
	Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
	Russell King <linux@armlinux.org.uk>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	linux-pci@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
	Heiko Carstens <hca@linux.ibm.com>,
	Wambui Karuga <wambui.karugax@gmail.com>,
	Allen Hubbe <allenbh@gmail.com>, Juergen Gross <jgross@suse.com>,
	intel-gfx@lists.freedesktop.org, linux-gpio@vger.kernel.org,
	Stefano Stabellini <sstabellini@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lee Jones <lee.jones@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	David Airlie <airlied@linux.ie>, linux-parisc@vger.kernel.org,
	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
	Tariq Toukan <tariqt@nvidia.com>, Jon Mason <jdmason@kudzu.us>,
	linux-ntb@googlegroups.com, Saeed Mahameed <saeedm@nvidia.com>,
	"David S. Miller" <davem@davemloft.net>
Subject: Re: [Intel-gfx] [patch 13/30] drm/i915/lpe_audio: Remove pointless
 irq_to_desc() usage
Message-ID: <X9J7h+myHaraeoKH@intel.com>
References: <20201210192536.118432146@linutronix.de>
 <20201210194043.862572239@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20201210194043.862572239@linutronix.de>
X-Patchwork-Hint: comment
X-Original-Sender: ville.syrjala@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of ville.syrjala@linux.intel.com
 designates 192.55.52.120 as permitted sender) smtp.mailfrom=ville.syrjala@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Thu, Dec 10, 2020 at 08:25:49PM +0100, Thomas Gleixner wrote:
> Nothing uses the result and nothing should ever use it in driver code.
>=20
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org

Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lpe_audio.c |    4 ----
>  1 file changed, 4 deletions(-)
>=20
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -297,13 +297,9 @@ int intel_lpe_audio_init(struct drm_i915
>   */
>  void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
>  {
> -	struct irq_desc *desc;
> -
>  	if (!HAS_LPE_AUDIO(dev_priv))
>  		return;
> =20
> -	desc =3D irq_to_desc(dev_priv->lpe_audio.irq);
> -
>  	lpe_audio_platdev_destroy(dev_priv);
> =20
>  	irq_free_desc(dev_priv->lpe_audio.irq);
>=20
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=20
Ville Syrj=C3=A4l=C3=A4
Intel

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/X9J7h%2BmyHaraeoKH%40intel.com.
