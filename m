Return-Path: <linux-ntb+bncBDNOHVNAXAGRBGHNQH4AKGQEGS54OGQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DE92145D8
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 14:31:21 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id j187sf463578ybj.7
        for <lists+linux-ntb@lfdr.de>; Sat, 04 Jul 2020 05:31:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593865880; cv=pass;
        d=google.com; s=arc-20160816;
        b=ndEwRCqqXorpLISiHEIByIS5m+zoRpY133bK013C4on1tS8bOoAfZbVDZoaO8fCWY1
         H0thz4mtK3FUJF+eL8P7hzMFQEQUZ2Ze8oVoHBOwsxN5lNOsG3Abbm7uWrMFq0t7Hk8h
         YUVoIuz0SOPqtcv29GIEqpFaQbAFH3Z3xYo1aLjT21lIDloQZNbzXObmfIa+4QHj8VNS
         pJZ7EH9kgKJ80jFAe5l63Mw6T32aiB3qQczvSkgpbsZn6a0+ZC5/Q0qyPBLAHnJnM+IO
         uM9ju3FxVFyG8N7uvMh4ds6RVPeMCYyZDhzaxGEmPYNOjU/E+KyJDftZa+D0m08mEDUR
         F42w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=fkizAtOEGE5FdXb+R2BhSf7cf8wuPAxX0ABc5t/jtug=;
        b=JIRXCHWmzz2UERJSCKbJFfFAecuQtF/0oYjaCPSVLn//rnZtZRf0ZhRuqBW5MQxl1D
         jimh60o6LAFQOgj7un9yyFUwu7ItWWEJy7sU/TcDql08nWlYKKNuK/J2saeFOQyr30NC
         YJAa7nhokuS001Z8/4Qv/DKQliD0a8b5Wk+lDwaNwSsYOEcVcRSOuKR4wnSKbGVtDaiq
         3LCKHuvDH1ETHeClq2csPj4h+Qo9b2lmARhRZktOUghvuRFU4bNpf7ey++N3hsRJPBWk
         Zb8tHIIKXNT4ikkDSQTh+GnMpPMGS+TwFmQflGXhvmQYKWTg6Q0r+nf+8OyWdgKiBcB1
         GI2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E1+xoB3r;
       spf=pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fkizAtOEGE5FdXb+R2BhSf7cf8wuPAxX0ABc5t/jtug=;
        b=G5hMLqic/cdGftNJOGmjOFfpBClngWc+9RDX+JXNWNe9TSybypgMBBckGz/5Qz0vkd
         7a+RZW0qx0EPj41ifDFn7lqG/MXYW2GNaHZgXOmSNGVdUckOSmS1q1eEjfEDWecphZex
         sL4yl5BpAwvPiyK8OILDUYPc9n8Q14gjpH5YIVLmhfa+D2Vy27L59L2RlMqAY4U/zXGc
         whNp4FztYUT3TT/4ObusqiXhCqk9XA/uoVymgWzZjoeZp/0sm2MAVkyZzMUXFJ+wuq6+
         8tcIeU7SnVd4UP5Ejm/5ji/ZcCyLVolwaA6zz3wWr/8m5FwTR1+MKWv56ZBhQRsGP7+C
         /W7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fkizAtOEGE5FdXb+R2BhSf7cf8wuPAxX0ABc5t/jtug=;
        b=GAPg1PVhnnafgYINSaWyR3iDvEXGl7ONETg5H/TeiJjjuXKF2lXwmY8E1B/QzuAWGb
         5g6bwm58k1hnwdq7hDo0t6rkKf3BRcqlFaBaA2haj7iLs37peJCzLFg5iKf8/nwwbPws
         XlE5AKkr7DF34qiRKwwSDOUHyOup1YMeYadMaOHXMr5LRFPoI4xux03ropa0iOcCrzyw
         omCHFSbygOhOPqGZceRnoMiYTvxA1UGcSohSLM/dmmooZRsy5T3Fa8txrtUqQ2VLKgNw
         qLIJ1ukWf5H1HKU2lI6tw4eyk2zT3ppBL48PILdsSyVWzhs36dxfhDT9ErCsb/CAB6eq
         z26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fkizAtOEGE5FdXb+R2BhSf7cf8wuPAxX0ABc5t/jtug=;
        b=BwnwJ/B+jWZmuDlMbKXFJcKeZbJ1uv0gWdkimIRO/ZuCRXxHroltX0odVv9ap+BVz4
         9EjtnEY1yMEn9r/Qbea8L8kFfOZdotnuZrbs3XbfgfWaia8gWe6oSqroe49O6LE00tDO
         CrosIT7tJYjYcICBUdmEz+QFnEZiDRILOBDG9s0cRCkA6TFk409K+ksopcNDLMr4FgZ3
         1rOJPpCJwWWlG3hOQ+sXBavAI9mYSq+XZi66+f0htKIIe7QhayOpyUt2oKI8NKSIw+wj
         FAMtL5mJZi2LTi5BfqrRTlhUxCycZELnFTNoCA5oNpsXfs9x2FJoYYcShpdLf67Cxosi
         JIOA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533w53WBHa3A7tHGrekucwXybLLXiAnCkGW9zdl5w0OiTzeY7ZSP
	fZ9EU0eNKt0tvBfRUsTTQ8M=
X-Google-Smtp-Source: ABdhPJzLhgolFiqwoUfZk3STsQ/RstmzFgHmd21Avsy0zNrcdKPw3DMWKVEzEa5Zt1h1tFX1MakgeQ==
X-Received: by 2002:a25:bfcf:: with SMTP id q15mr58039473ybm.39.1593865880165;
        Sat, 04 Jul 2020 05:31:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:7003:: with SMTP id l3ls4421450ybc.2.gmail; Sat, 04 Jul
 2020 05:31:19 -0700 (PDT)
X-Received: by 2002:a25:148a:: with SMTP id 132mr67763839ybu.129.1593865879853;
        Sat, 04 Jul 2020 05:31:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593865879; cv=none;
        d=google.com; s=arc-20160816;
        b=wFZ2QvNy7HNzh3I/Y7hoffEJsmBStu58vx0w/mRMbfGUqiAf2N/53dOxm+g8jd3p1f
         sChjpSsW40wsHc3Jn32D1uc1KTCAeAzBgHSLKt1JR1ZSYHLqZq5BQsjLxh5L5HnBpdm/
         0pGlfKO3TmiHvAJ/FNXRj1LvtC0xfH39WZ3vSjXvYQhb1B6k3GMpcGxGLjFbpjpK3oAB
         CKn35Ng+XuGX2GLf8Spw3VVbi/U6ljmv6k8Q6VH+P+hovttXcn3134u19J+KBkmx/TAX
         grBCKaYm5qH+DXLLTp4p2wYX1MfHQ2L18V16DhPhI+5kgNLrqxVJeAO0qWw+90n0qmx3
         3VXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wXVeQpxCI+iwkYlezHWcf0l5BZQJCmNvUa2xktmhOME=;
        b=ZdmuAXjVsVDVQBSQjX043qMkLwDUw2lSYgekez/+0RjTdu6D/NrHMocv4nLu4bRKFK
         xrkNuKtn9lzS/IICSs1quPbnyleGnSgV2bWAY17iswSM4tXYzAAx62nrI3h5igT5XZxf
         ZLADWw4dZaBTXqmJtRjJ8oA2g/UU0qhYxL9mGUvct4vmnP3ztXfd0m35qdZHMrWIfZDv
         x6+fBxkQwXGF852Sc9m5YbWXyobK0eAUr5fFl/xrnAzczg5ygb67LbA/se+1a8Xp5FHN
         6C3QscPtkBe2LXCtG6secG1wufRE2Tvbs3tN10kvyEHkeziOYm2SjJ4kx0B61/u2Riza
         ZjTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E1+xoB3r;
       spf=pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id a7si780938ybj.5.2020.07.04.05.31.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Jul 2020 05:31:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id b4so30964265qkn.11
        for <linux-ntb@googlegroups.com>; Sat, 04 Jul 2020 05:31:19 -0700 (PDT)
X-Received: by 2002:a37:6589:: with SMTP id z131mr39309316qkb.235.1593865879534;
        Sat, 04 Jul 2020 05:31:19 -0700 (PDT)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
        by smtp.gmail.com with ESMTPSA id a25sm14159031qtk.40.2020.07.04.05.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2020 05:31:18 -0700 (PDT)
Date: Sat, 4 Jul 2020 08:31:16 -0400
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
Subject: Re: [PATCH 00/17] Documentation/driver-api: eliminate duplicated
 words
Message-ID: <20200704123116.GB5194@shinobu>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cvVnyQ+4j833TQvp"
Content-Disposition: inline
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
X-Original-Sender: vilhelm.gray@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=E1+xoB3r;       spf=pass
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


--cvVnyQ+4j833TQvp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Jul 03, 2020 at 08:44:45PM -0700, Randy Dunlap wrote:
> Remove occurrences of duplicated words in Documentation/driver-api/.
> 
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: dmaengine@vger.kernel.org
> Cc: Luis Chamberlain <mcgrof@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: William Breathitt Gray <vilhelm.gray@gmail.com>
> Cc: linux-iio@vger.kernel.org
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: linux-media@vger.kernel.org
> Cc: Jon Mason <jdmason@kudzu.us>
> Cc: Dave Jiang <dave.jiang@intel.com>
> Cc: Allen Hubbe <allenbh@gmail.com>
> Cc: linux-ntb@googlegroups.com
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Vishal Verma <vishal.l.verma@intel.com>
> Cc: Dave Jiang <dave.jiang@intel.com>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: linux-nvdimm@lists.01.org
> Cc: linux-usb@vger.kernel.org
> Cc: Eli Billauer <eli.billauer@gmail.com>
> 
> 
>  Documentation/driver-api/dmaengine/provider.rst        |    2 +-
>  Documentation/driver-api/driver-model/platform.rst     |    2 +-
>  Documentation/driver-api/firmware/built-in-fw.rst      |    2 +-
>  Documentation/driver-api/firmware/direct-fs-lookup.rst |    2 +-
>  Documentation/driver-api/firmware/firmware_cache.rst   |    2 +-
>  Documentation/driver-api/firmware/request_firmware.rst |    2 +-
>  Documentation/driver-api/generic-counter.rst           |    2 +-
>  Documentation/driver-api/iio/buffers.rst               |    2 +-
>  Documentation/driver-api/media/cec-core.rst            |    2 +-
>  Documentation/driver-api/media/dtv-frontend.rst        |    6 +++---
>  Documentation/driver-api/media/v4l2-controls.rst       |    4 ++--
>  Documentation/driver-api/media/v4l2-dev.rst            |    2 +-
>  Documentation/driver-api/ntb.rst                       |    2 +-
>  Documentation/driver-api/nvdimm/nvdimm.rst             |    2 +-
>  Documentation/driver-api/uio-howto.rst                 |    2 +-
>  Documentation/driver-api/usb/URB.rst                   |    2 +-
>  Documentation/driver-api/xillybus.rst                  |    2 +-
>  17 files changed, 20 insertions(+), 20 deletions(-)

Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704123116.GB5194%40shinobu.

--cvVnyQ+4j833TQvp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl8AdpQACgkQhvpINdm7
VJIBvxAAqwgnnmzKHJ8nY2Ip3r9kE7Fygjzlzj9bHCF7iXLQVTYqC4W7cN0q0Bfu
QotqGgl0sAWKftn9qkvUzFI6TFRROjPuzPdDPucm+pQ5pW2m6HIEOgK42qjcuHLn
wvVJmYNuV3L+Y6NQtUS1PBulobtAYL8fMMhtQiG6rialiiB6yaJeHkpU7BP5cdUn
+n6i9IJIdl9//biQjBd5FQy7wqPLr+aXBZLAMSWT+hKl0huWGUXmFBTmcGLkGhAT
OEKrj9H7j8U7CmavcpNe0bHRLlucKl3a1wQTtf6CV+SwfaaFEtKhaEKEIsB4M9QI
sRvbV0gY9yJX2y3DabCS61B/EcCA2htBnk++AlNY+HvfXckvW9+g4xaMcCAU0cow
1EFaMIVEGWrEuaBIRDQJX5f9n97Wvc0Zp2B/hlxYvSo1xmaCObehZ9+UecKCW1C0
71A8NFc0cYiELXFZmQ+Vf7I9K3UeaRBaeoB8r4YEBNOO3JhmHq9E8re8ULoMvEse
HKZyuoGyoOhW27cZXoBw1ymZZ07Nnmpupyukmh9wQllQcMj5smqQAcbCtBNCcqXb
L+dlXBeIpE+KZHRFJ/2RtmDX903PaDcZ0Y5+NZUJsvt/KJCzg1rASkGcHC6lVTLj
4jBBZt4JmxUWKLxsdnkHXb12eTXPB7DkjhCiSThpm1A2Re9P4Jg=
=6Gqy
-----END PGP SIGNATURE-----

--cvVnyQ+4j833TQvp--
