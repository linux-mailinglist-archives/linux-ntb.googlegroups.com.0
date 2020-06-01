Return-Path: <linux-ntb+bncBCQ6FHMJVICRB6XD2L3AKGQEIXDFUUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4961E9F71
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Jun 2020 09:45:00 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id w65sf8275649ilk.14
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Jun 2020 00:45:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590997499; cv=pass;
        d=google.com; s=arc-20160816;
        b=mNQEwJa2e9QSGxAeCcgiqPbs3FJnAMUPupJG2m6ZY4a+gRENi3XucDL2nnSPj19hTm
         09+HV7mz5F6jn4sNZk0wSCWmRlXAEZfDkK88FIJft7X3+EA5wH/rRDua7SU4ip/h5a5k
         C53OFRVyN6UXsZU1QMaJQytL+KdXwgPZUaEwd1f6ovj3soPk1/hrdrLFOt5eWa3uLrNa
         ptZzvHlbCKinDLcqgoyt1rXqm3M3VY89qudDhuxJEvfXcFj43wA29urvsoBF768rKrf3
         H3c6yZCs9nGHBiZNO4cvcjjZAL6BGFQ+U0LST3XKkcC1qQjitItQrea/aAPhFoGAQT/L
         xlrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zzewIpaB8xA7vZNv0WhYARBiBbaJtB6Ffbzle3MpegU=;
        b=dxxMqMD2W0d8sTrNYSkPQuC9Wv3rtxQ7QHyIHGlnSo4UnpdayS9Bpvj7OENRIQVb6P
         rTwi1qmaLUvEw5x+CISint+NLKkQ3y6Xb1L1AdfFVNwbCAOY8sQygxoX4RYdj5t0YWb9
         7L6uic+y3wA9YjrWC+eVDnQop5Owq02ExGEp0+XT5ZokaKDOoTTPNp3dqzNQ0pRtqgAq
         Fm2kFKpMlvqTu4Jqc9hD0+je27GSOFyLnGz7fHKQHH48QgMr96rnLpk2H3ikt+UmrJj0
         LsdewRySdynmrzLbv8ZIzcdaF240F8EhGBnoOanlvIngWCUmqzs9m607UVWMtGEpL9hG
         gHjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=twTD2F4G;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zzewIpaB8xA7vZNv0WhYARBiBbaJtB6Ffbzle3MpegU=;
        b=qeBUFslNWIl07tF9uuFdYpEG29Bs30Pi7DR8mgJaBFF59C82N5jRYIozz7rl+/KHgr
         y0IW4Vij/qNYzFOdsyOag9v0yxFpfkTCYHjegwh+j41rXFsk96xa9g+6EqKyW5yTbMyf
         OAn5s+hksBoYprVD6bGyeckmoJcUQzaUQ2NaWTbrJ+t3xqQUYp2VG63HAHH3uacpLXop
         s57WcVowa7qsBw7hYoRwLil7NfeIGyElAH9Rw25b3iq2OMz5uASW1NnqG7EwrwZwA03k
         5Y/zv0FjOr4qj89UD9AniN6mFlyvl8HXBq0CNJ1bnwhMfhPgGx2kUx0LMWYmRA+mEek3
         hwiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zzewIpaB8xA7vZNv0WhYARBiBbaJtB6Ffbzle3MpegU=;
        b=bG8GnJL28UEZWVetX3n+8BGf+T1fR6tinzAUJzgq69SpS0xKew/Cr5xIYqjBVu8udv
         i0JbxY/mYSLIS9ccnzSv1HQ9NzcS+kSYAQdG82qdfCZDcsmBtHoS7228taJyFCdRKeCl
         T0+MsUJnvFVu5v79YqhU8UUq2E8VXIxtGIWACLtCrnsOQSqN5ruJwQRwUqgxY7gHtOpM
         Ri/1Bs/LtEL9/i2qmlO/3nVNONiFAie9Om5MgP/YLLRp8G0xAtjnosTGl0TW0psym7ko
         xefgHKIScwEMZ3ERdnvfPTGIpnHv+Ir/fPzzO1pqu7RmpKSdxUdDgvFSVELRoHVG+eTy
         7LBg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532b2F/cqM6aGJSrafGRV+dwMIT7v+FVYV0U+vOeV8ZYNT8bXkkO
	LmEPLkuyVF3Ex2NQYNoBBrg=
X-Google-Smtp-Source: ABdhPJwnGT+BwSB3BWbW1BG1Sztz5m1Y/q06TeYPk7/Fe5l3bA1ritdZPexHXpAyV+UOtu5sBAdfOQ==
X-Received: by 2002:a05:6e02:f44:: with SMTP id y4mr14082673ilj.237.1590997499078;
        Mon, 01 Jun 2020 00:44:59 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:1584:: with SMTP id e4ls2036608iow.0.gmail; Mon, 01
 Jun 2020 00:44:58 -0700 (PDT)
X-Received: by 2002:a6b:91d4:: with SMTP id t203mr16256241iod.149.1590997498574;
        Mon, 01 Jun 2020 00:44:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590997498; cv=none;
        d=google.com; s=arc-20160816;
        b=WvZ9cLzsNkUvUe/2h1jvZz+kOsyaqDtigRWspi4X7JSO7UmACg2+A78vupz/ZRjbV9
         XJDIbm/NqA3K9c1ilqT0Ct6l/hoXWyiBugIV8h5wwNWZmYdNcdtOkppTKSGaXgmCxPL7
         9mR5+iF6R8rKq0JbpEheuOI3NgFimMvHKPjpXvDKkc4k0jMVM+jFY4XHw1UQ4HS6B0vB
         MkNMdh1LbkCkBWp5QbFTqFFA9TIE95Jyjb2jz6I6z/pPN8+ZeSmwUY6yM4OSWe3jpvdL
         K7lmCwyaAIlJRevXEBomEQ4XJ24/wtCxb8GwWDnpScjFJoHDFVm+4QSL0G7zGYH6y2pQ
         pTRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:cc:to:from:date:dkim-signature;
        bh=D2xSfrLj7HSiAR6RoFB/ukXvUGQ/E8U4R/DLm2h27GQ=;
        b=uy/3l0s2SoyOwTGGtGOh6UWlt/eQG4f1lRJg2LrahdSpBoCIYxlK4hI07XVPz2AcNy
         m8TR4zmTPIuz4539xqELUBtalHtuQ2vg+PElJtXD82h6qOhf7aK4/+KCBiQlUwtEF43x
         XjRXkPNbW/dpmmdytFZeFj7cNUcecLPla/9tXXorPZT69LL0sr0RN/llRes9hRfr1ORi
         C8/Lj1U3yATEg/OOCNoFvBvuOTYAQtovvy7V+ljGF4mHJnmxbZHv6XZZPgOvZevs2LI8
         IDTZEOkR/YiRqRTB8G1dhdR4gV6kj1/gudu+KD+0KlE0lWqxIYp1TVA52ttqIKucl0jy
         YynQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=twTD2F4G;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id k1si777534ilr.0.2020.06.01.00.44.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2020 00:44:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49b6dc0W4Kz9sRN;
	Mon,  1 Jun 2020 17:44:52 +1000 (AEST)
Date: Mon, 1 Jun 2020 17:44:50 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Jon Mason <jdmason@kudzu.us>, NTB Mailing List
 <linux-ntb@googlegroups.com>
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>, Sanjay R Mehta
 <sanju.mehta@amd.com>, Arindam Nath <arindam.nath@amd.com>, Logan Gunthorpe
 <logang@deltatee.com>
Subject: linux-next: Fixes tag needs some work in the ntb tree
Message-ID: <20200601174450.7a0d79a3@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/EeKjYcGmKX4jJPzaAOqAoiG";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b=twTD2F4G;       spf=pass
 (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as
 permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
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

--Sig_/EeKjYcGmKX4jJPzaAOqAoiG
Content-Type: text/plain; charset="UTF-8"

Hi all,

In commit

  eb3eabb28cf2 ("ntb_tool: pass correct struct device to dma_alloc_coherent")

Fixes tag

  Fixes: 5648e56 ("NTB: ntb_perf: Add full multi-port NTB API support")

has these problem(s):

  - SHA1 should be at least 12 digits long
    Can be fixed by setting core.abbrev to 12 (or more) or (for git v2.11
    or later) just making sure it is not set (or set to "auto").

In commit

  55480afb82bd ("ntb_perf: pass correct struct device to dma_alloc_coherent")

Fixes tag

  Fixes: 5648e56 ("NTB: ntb_perf: Add full multi-port NTB API support")

has these problem(s):

  - SHA1 should be at least 12 digits long
    Can be fixed by setting core.abbrev to 12 (or more) or (for git v2.11
    or later) just making sure it is not set (or set to "auto").

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200601174450.7a0d79a3%40canb.auug.org.au.

--Sig_/EeKjYcGmKX4jJPzaAOqAoiG
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl7UsfIACgkQAVBC80lX
0GwnUAgAld9zNIu4OOr4xLt8SJSe3C8ofwKBmAZesfM8K1oLwVyng98JFfPKLbfu
fjpwyOrUAODbPL30urB8GTq92N2S8/mbC3LAYCg70raHKM6Vts055hh9Mj2s69EB
+fRJ8Kr9ttfDEw52xGy9CZTw1akgg+8+a7Xe4p8Xhvm5vwppMV9BlTKNFC+PLipD
PPNSBUf1upfdOpt2SKmcsjAGJ1LFmnFXXRVeDcVUanzOTR5i14SmzYkZxJKaRO5C
i1fpSQlQx8N2KGGem7wxcaBDvX3Ra54+QHLS1POoCyhzlsKklE2ZhwqYwKhscxgv
Y6ehfvtLoytjtf+HIztYmxTPppLlZQ==
=CPSM
-----END PGP SIGNATURE-----

--Sig_/EeKjYcGmKX4jJPzaAOqAoiG--
