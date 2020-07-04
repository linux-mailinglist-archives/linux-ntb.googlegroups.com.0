Return-Path: <linux-ntb+bncBDNOHVNAXAGRBAPNQH4AKGQEVHDO6QY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CDC2145D6
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 14:31:01 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id a3sf6252188otf.8
        for <lists+linux-ntb@lfdr.de>; Sat, 04 Jul 2020 05:31:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593865858; cv=pass;
        d=google.com; s=arc-20160816;
        b=fsOX+mm97rCvB7N7BSzaWnH+NRyfcnO2WP/7FhRjCCqMSWS0nMrkwUqwowHVmJ99zg
         Z3DU+dt/DRThHZaYeY8rDxitFaSIY38hbuSFyg5HpB7a9Y3Os09+7nx3KxOac3zjkkXc
         iNyeIDNbMuY68MW3MO4k5Ga+taUQhlrec6fW8raxYEw+KVYEAFQ4WqVeQRtv1BcEeyg8
         lMCaGconi8Jbc00SKuqj5PcceTC5Jj5wE/BQtz1J4CM/KHfemSHqV/rwzXGuIcUm2N9U
         g8khURj3tqPEzpNJtWqacQGYFJa8DPqaaA4Yi5biRDMHfiVRmo5d3vDYteKC83VZguCW
         MWOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ZEsf8Bg5+gVBm90r0llhVrdmIhyZFurgRWG/tHOEveA=;
        b=EpCGTdsd8TPgM+j3/lmds5Q0ez/kiFSccmJ6SjZQxCMmpPb+/PpuBZJ1hMS5VJ5kSb
         jap2NM/eIBfdPaUNe8qjxb6+umdKeF5yET+EI7+Mfg3mLs5SXng4fW4qxex/+nmSbNgc
         4AF10NGXU4+u9/rvHf1HsQYxFFuIAbiWo2bkIv8jROOBIox7bOmnmxkemqPcznRO+xs4
         sGQ/tYfeQACEh8rMSoBEIcENqlFtWJaElVdbzi9mWsK09GvupGKIfsYvIwJdiAYnZriC
         K2uqWUR5XS6eOA8Pg+HGrBUupI9ntUhCTjWAhzWJBAugtBlHZDrj/z2zfu0NqUE6hoiM
         Fc7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OpZFtOaW;
       spf=pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZEsf8Bg5+gVBm90r0llhVrdmIhyZFurgRWG/tHOEveA=;
        b=JTvoLjUSR3xbmLGAq3PFLT37bgKy1+ptbre7a/ywLOqLL2UxyU+sUHWdyYEEenGEEL
         8gGWX1g1ifly6cnT8te4Kk0aJLcCviE2sEbJnv65wYDWZkju42GFeuwQ76SU1ylsi95U
         +qoLykNUhf6e6DYULTQgPxTgq6VcoeFw8o9JCvlTR6wU+xhtEBhoQ4gJ+RYbpuHQF2jy
         72gpQ5258yotfnxalVbfEHJXCfl1awpd0+U8Tpi9d9uOz6JZhwr1krnqoqNip1QFPkPj
         OaaEJi5i4C4bM+zEe1gdA6ZCSWYXl6Ofm3erB2qgXCNq6ON4UdYuxwy3SAC2ZmZE5VPD
         v0lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZEsf8Bg5+gVBm90r0llhVrdmIhyZFurgRWG/tHOEveA=;
        b=pWzED+V4qdtuLjLpOM/tpxwTQYi2bK9REsoyV1ULyHJuTtqzxXhXEH/H2W0DLoQiLD
         A054BC+GjxHzib6D9ScGHLap8I8s2qmcJ+ZpnM/DUQDWXIMx5/XMg0n7Daw1w6Stzbu5
         6F1LqXLBYd2s9i9xwg5tetW/w136fz06xCUQg8Ly+rNET9xonFCq7+XdLdvfZmHQh44P
         HjJX4bNAeJW7R1sxJtM5gSWP4b3f3x7w60mBY51kD6rsN00M347GHc5ftfP7HC6loNmy
         TweqZqc1FDXPUGx37hoEp7CPGI2EE09C2kXKwuEZJoWwxwKEufQ8KQkcl1GG9wIDESTP
         UGng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZEsf8Bg5+gVBm90r0llhVrdmIhyZFurgRWG/tHOEveA=;
        b=t3DVmRayZHbD6IJvjRcU+ZMsip5bydvEQ+uh9eelT8AWLFW8eH+uA0SZNHqB3TiYwo
         tr7lnClLYz7k2iK0wO92xk1561y+2Q+MKVLnyrbLHEit5yUjkePiKQPKC64AvtloyYhl
         TuOGgFwhTELAr7jYUtKI/9qnIY9dkfuP9T8rj9m6LfcXm51fPVbqIIHQ9lwqFVFfE8ZF
         F9hYSrIPG8Kwc3CIDLTy90vQ7IMAa4QcNZV+EF2+N1/WBauivgru9VxK39vi5ERLMci3
         eEhWyh/FZnKj+LKlAcQzWm7eXjJaEo6jQapUmdwg+TgEn4P7Ro05jEQ4RGBhh04SBxpn
         0XBw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531hH6imTPFwyCUAr9xn95jM9Or4jEjRI7y6SWrmDkkaKOhVv5qF
	hF8i+8yyYucArqtgYWW/bic=
X-Google-Smtp-Source: ABdhPJxSzD49oGVPW+f/BbshuSu1CqCRcYl5HqLOtTZ88IteDjPTm26kcIZrIy8HWoqa4m36JW8j2g==
X-Received: by 2002:aca:5683:: with SMTP id k125mr11651322oib.159.1593865857154;
        Sat, 04 Jul 2020 05:30:57 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls2536929ots.6.gmail; Sat,
 04 Jul 2020 05:30:56 -0700 (PDT)
X-Received: by 2002:a9d:3d63:: with SMTP id a90mr30602974otc.176.1593865856846;
        Sat, 04 Jul 2020 05:30:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593865856; cv=none;
        d=google.com; s=arc-20160816;
        b=wO/Q0YS0VC5SeHMBFRDOMjq8WXTZtj7q3L0GnNhGwvlC3z09eC6CLIwlriowMmfrgI
         T0NqvJBl1oxh8vm3iEJGaakukYYymmpVWuhtyrv4trGlCZma0tjLTeB6cb7dtBrkqfvA
         4+pHN3bqYlhkH5RTcpQbcVE+b0IE6XRTJwi68rqPZ2IUfcm9bqIp+FMTe/M0rWgG72CP
         dZqyKtfq1QsZ0WN11qrP5D6PqM2/DYQYScZITHI0C2zVZrDwr68ns1Dd/F+dmIyH1l3Q
         d1RDd/+Rc4xqWoiZ03fUnaLxV3CB/SB/cZMGaKg1KamkdSa938h7tVG5gQy7HDZ0732G
         24uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sOwZHk+VUidgfHH4SuXy00BIvhn2pt9U8Ew+xLvAsZg=;
        b=aSlDmrOhj9v3rJ7vT9+dGhOX5HhpqhbHEbyNTQC9MOy3bJ7F7Vg9g537P5ARBhDhdS
         FeB9jcqHfN6O6Qoj4U00q8Bil2C156009bsu5fh+B8EgURjSlJpG56SHrq9i4qiXyurV
         n72+eJYVmOLDN+0G+WZcH4iNf92AsRk0b58Q2thbbw7zS629uOmt+1fzMDAl4shvg4QK
         ekUvqbeT4CCaP5CsQsL4Q8P67S+JsN8AF4z+A6d7CclPdq6TGsvMoLbbyH4jyk8G4n8I
         aj2Sm0TTQ+WZzXaOL+ZphfxY150WwMMbPqyI8DeAcPoHXJ30RH/qs1/X6KJ5u2hfp/wI
         jEGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OpZFtOaW;
       spf=pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id m23si1198927ooe.0.2020.07.04.05.30.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Jul 2020 05:30:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id b185so20399175qkg.1
        for <linux-ntb@googlegroups.com>; Sat, 04 Jul 2020 05:30:56 -0700 (PDT)
X-Received: by 2002:a37:a14c:: with SMTP id k73mr39030752qke.145.1593865856267;
        Sat, 04 Jul 2020 05:30:56 -0700 (PDT)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
        by smtp.gmail.com with ESMTPSA id 21sm13502872qkj.56.2020.07.04.05.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2020 05:30:55 -0700 (PDT)
Date: Sat, 4 Jul 2020 08:30:41 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
	dmaengine@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com, Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>, linux-nvdimm@lists.01.org,
	linux-usb@vger.kernel.org, Eli Billauer <eli.billauer@gmail.com>
Subject: Re: [PATCH 06/17] Documentation/driver-api: generic-counter: drop
 doubled word
Message-ID: <20200704123041.GA5194@shinobu>
References: <20200704034502.17199-1-rdunlap@infradead.org>
 <20200704034502.17199-7-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline
In-Reply-To: <20200704034502.17199-7-rdunlap@infradead.org>
X-Original-Sender: vilhelm.gray@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OpZFtOaW;       spf=pass
 (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Jul 03, 2020 at 08:44:51PM -0700, Randy Dunlap wrote:
> Drop the doubled word "the".
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org
> Cc: William Breathitt Gray <vilhelm.gray@gmail.com>
> Cc: linux-iio@vger.kernel.org
> ---
>  Documentation/driver-api/generic-counter.rst |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- linux-next-20200701.orig/Documentation/driver-api/generic-counter.rst
> +++ linux-next-20200701/Documentation/driver-api/generic-counter.rst
> @@ -262,7 +262,7 @@ the system.
>  Counter Counts may be allocated via counter_count structures, and
>  respective Counter Signal associations (Synapses) made via
>  counter_synapse structures. Associated counter_synapse structures are
> -stored as an array and set to the the synapses array member of the
> +stored as an array and set to the synapses array member of the
>  respective counter_count structure. These counter_count structures are
>  set to the counts array member of an allocated counter_device structure
>  before the Counter is registered to the system.

Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704123041.GA5194%40shinobu.

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl8AdmgACgkQhvpINdm7
VJKL2g/9H6mqC4m/nbUz0xx6u/KB2FTl+BheIuZdhAKQ7vaavuFT9QQK7KdB4VlZ
9/mxbfR37ZCap3U06SMiqcB3cBirDGz38z0kpQEnjoRLfO86+gb7WfpBn19BkBt3
SgI+iKUWbpFBZQnOXpP/mpmGDIIBJdb/oPeqamTmeCP5zmkGPStlR66mReRTCF5A
C1ISpNFBpFTCSLXvMannoxxEWHfug95Oq+z2MxNY87LfNKQm+jtRD+yjfvNJJDEO
EA/p8gavvQuNNS7HnwjzT7F5xc+1eoZINk5w4/KkoSJzcyMQEBnPCKQV/T6YJT9A
odyOiKcmBQOQ4SjjWZwsaf86ELIGt85SR6MtjXAv/+Hakuim0lvEN53LjeLw42XS
UiQ6k3UvFMLccw56hfUrntSUWiMCNSHJHi7CNiHKoR8Bu2lUpGZUbsj2dJ5f2f6B
QTZxZrFKdYpWQ6Bj56Gw+qz7n6YKWoAdhW6BhSqmnNn+gvgpWqPTgz5OG6hXARgI
2MyKfuKyyc73wPPenSuCF+0ugENfjmYAfkKkFIHweBP82YemBQH1gzRNtusQgjp3
NYyhPpdbiSDucr9uicWqOTwEjOppSfUpNIehHwKmZQOePA+Ewj1U0mbKsA17IbDm
7tXxxkVxTlKSuEIfgiDufrHw5oOner+LPe/QKsMK4nNBHKTRGpQ=
=Q9+X
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--
