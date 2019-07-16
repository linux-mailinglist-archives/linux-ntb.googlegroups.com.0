Return-Path: <linux-ntb+bncBCQ6FHMJVICRBFP5WTUQKGQEOE2VGIA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 609EF6A0B5
	for <lists+linux-ntb@lfdr.de>; Tue, 16 Jul 2019 05:03:51 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id h203sf15208078ywb.9
        for <lists+linux-ntb@lfdr.de>; Mon, 15 Jul 2019 20:03:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563246230; cv=pass;
        d=google.com; s=arc-20160816;
        b=MFfInvkuk3LxkrVPHCFDTSoFrUbNxwCkAVQoIXh6t3Fn+kHfHHkW3Pwz7FFeIhqu5T
         hXI4wg8clo0HcFtHW4UxO8GKu5CTFkIdn3FY0IO/4lHkK6ZZVULj+UVDbDmAUlY3nPxF
         iEtyRrTkRfP/ic4UQ3130TKKQ9zRV7ry/MsHIX2wTq9r9/01o/DiCQYVs2CP5LExNG6h
         Fj3pFQyssX2mFieVZmpDxKa1VdetxIfTHXwRkuFamGb4/liczXb1kOQqweq0m6m40zN+
         r71E3wnCc/9yG5nMnydgpH3Jt7KZjoS9fyhedp152Ce17BwIy5q3K2rDmM7Cyd4HT9Ki
         Dtcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1W8UbLBkxi9Ub+Wi40DjtmJZfWeqUvKg4d7cbkOFK0s=;
        b=TCF1Oj8GHIoTyNeiW2e8oATxN+U4tk3m6Z1j1hylw1uoXXhMtz1taBmPFaN1rMN/Tt
         pe3B09T4P3Q9iWNJrzjSqSOXM8oo/jtjuLWQc1A6m/pvfLOKseuaf01QhQV0vUJHnzc1
         Gxd+uHZjEOVJXGNFedt2eqLVYlsBNkR2HONdo5oY1Xoy78ULrm0etZ5gIIaJMnoxKLs4
         8BKj5GGrm1J4LmGZROP16SiGD07M2/4HDC/ZePSaHrJvXrNReJ4YyLMVwLp2y0mKjrAe
         5o2ui05Y8vgKrK5XSFW8aVVw5EV0vBkHY0Fli91GfJ/NuKKWbus/JQKliFFPTtNOxKnL
         BNlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=KVIzKczo;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1W8UbLBkxi9Ub+Wi40DjtmJZfWeqUvKg4d7cbkOFK0s=;
        b=Bt+9Csd1UhubJ3tKo5ue3uPattRT/Dg4wvZ6KiqOvGT1D0jXugMfaAPY5tGKJMeklW
         ZjAyOiOM6IF1MOxwpM8+GSdoCGiirMbhZn7W4KWdfv809GFUkYzyiePB3HxqB9TOsFF3
         QhWw21WlcEpzYNLRGjckpVoAXvkOCIb6yoXyr3G5Mk6h2vaUMkFwIAO8esbxIobJ6pae
         rhOehE/h24SenmVMyT3ooXBdW2jrmTd6wTDkGPquCuPCEQH5g+EzF99ODRu3mfPWrn2m
         ozrwHYx7qhXAJdpQvUMvZU1hHY3OuZB8JXuhdrzzvsOkIbIbHcDmIFrQotu9yX3plPF1
         NCNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1W8UbLBkxi9Ub+Wi40DjtmJZfWeqUvKg4d7cbkOFK0s=;
        b=D0Jzlw9V6nUM9hj9q4daTWw/QK8/wFR6LBWvBMZrbEhOnQFIMJzkAKVkCXjwgf/M4X
         zE/J2ciiD/jvPNoyQ76xCX/AgjfP7WyqWtFsLpwY0wEziDuAWdW6EI/JNDhje1IRNr/Y
         B1WIKccSweOlccfgGCxenpQX/eob75TY0Kk/uo4oU0W7zDTqeNGVRYoH2Fhc9KxiS3HY
         PeCOBhRrP4cHUDMn3nZuc6d/To2JKtbyErfHea/TPjpU+NHar53KdEq3hYm/9q/si+kb
         8UlXJY34c0OWacjloX8vOIufRiAYT1ZE913mlL+mnhhgeQ1EUbmjmZjVvsYw20edhgwE
         VZSA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWWJtOfqoE84cAhZgbyLNuFYP+YxszfQyRpN5Wxoqx1+vOGj2PX
	DanhzpMFRW4DhBtI69JW0gU=
X-Google-Smtp-Source: APXvYqztxG3lV72O5eAxh9SBDNE/1HX9ZMvwUbHvSIzOm5Lv1bIN6IvKmGRZEv4L3MbWFCaGXKDBMw==
X-Received: by 2002:a25:9343:: with SMTP id g3mr7612313ybo.234.1563246230131;
        Mon, 15 Jul 2019 20:03:50 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:a50a:: with SMTP id u10ls2510596ywg.1.gmail; Mon, 15 Jul
 2019 20:03:49 -0700 (PDT)
X-Received: by 2002:a0d:d9c4:: with SMTP id b187mr17992538ywe.23.1563246229611;
        Mon, 15 Jul 2019 20:03:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563246229; cv=none;
        d=google.com; s=arc-20160816;
        b=STaoIdkWWx0xw4aX1m7XTmnMr8z2eGOhzvK36Zgc24XxH8KmgtaRxKFo3mPrFVYVgO
         i1WufAFpEcn9T+NqMfWNDJH9iBKF1SRo4d3TkEepAkVot3Lpt74lzf8dSn01N+aqDAqB
         Zfc6snZfImSW5zQr9AcRh3J3KMw/vgVkcC/n8CaPNblPPEM8uGXli1OB23uLfFBlcJzo
         M6oyiKZDJ+0QGMlMNWODJ2URAmTNBmevRJaAaCik7dmrVVTpSxpVm9mxQ7JxtjihB28+
         Olo2saFsHkN5OkzY77/ZbdcCdFipFDZzqjFV4nkEYwwGY20fSxwWfMclMU5VrWKQvyXK
         13vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:cc:to:from:date:dkim-signature;
        bh=2d9urTNBNLGZEtOlqxNFHM0NDl6k2/eh0WLT3eLCox8=;
        b=CZ8qW2OvcOTB+OMMx4nIH/w5iPTo7EiCghERxwbHQaWQJfKxWg0KQ4zJjyay3mqe+j
         2t/iMxN3e6lgqD2DfX4/vSIViBgfb8UaE7QuAM90P4k7EPZLB2NVhOlN5bhTxV2VeIFa
         2G8BPQQOWjZH1T3S+TOzUEjXqlgvedJy90i76XEqpQHqACLbOQGAO432XMyJ7cZOxyIg
         UkOdsoWMJGDjQ1hRyjnKkaHX/dgFuosZFKua7sqkLjRuvkP1M/lc3tiw0Q+jfAhEnEf0
         tqL4eLHgOtcTYkyp3v0Dwm2bpi3TU3hEuGcAspSx+gIgozeeJfXOUkM5dduVD0KN+Dxq
         qWUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=KVIzKczo;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id t132si965246ywc.0.2019.07.15.20.03.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 15 Jul 2019 20:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 45nlbM2pCCz9sBt;
	Tue, 16 Jul 2019 13:03:42 +1000 (AEST)
Date: Tue, 16 Jul 2019 13:03:41 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Jon Mason <jdmason@kudzu.us>, NTB Mailing List
 <linux-ntb@googlegroups.com>, Linux Next Mailing List
 <linux-next@vger.kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: linux-next: build warning after merge of the ntb tree
Message-ID: <20190716130341.03b02792@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/cTsYyZ8h2iTZsMdZQarLg/K"; protocol="application/pgp-signature"
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b=KVIzKczo;       spf=pass
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

--Sig_/cTsYyZ8h2iTZsMdZQarLg/K
Content-Type: text/plain; charset="UTF-8"

Hi all,

After merging the ntb tree, today's linux-next build (x86_64 allmodconfig)
produced this warning:

WARNING: could not open /home/sfr/next/next/drivers/ntb/ntb.c: No such file or directory

The only thing I could see that might be relevant is commit

  56dce8121e97 ("kbuild: split out *.mod out of {single,multi}-used-m rules")

and some others in the kbuild tree. Nothing has changed recently in the
ntb tree ...

drievrs/ntb builds a module called ntb but there is no ntb.c file.

Any ideas?

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190716130341.03b02792%40canb.auug.org.au.
For more options, visit https://groups.google.com/d/optout.

--Sig_/cTsYyZ8h2iTZsMdZQarLg/K
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0tPo0ACgkQAVBC80lX
0Gzn6gf9HJlCinilJIQsR3fkTgS8aCGXiAw/tla3nTkmnnkGJXG9et4Y+3ARzj1p
7kqiIc2FcGes8uKYU0jn6wG03HTuh4aoYNeVBnPocPFGLjUeuDR5PZUNPBG5RZzs
F1SgIDwi6BK2j03rlhb2vlKAYl121km/ZREt9mUhu2WJWBMw+crNWVGvHK17sWCe
cgRG3F7JFywlYRb7BY16GPQ0dR+Pv5i/lHjHdcLxVyRf7O/jQFudKMfXJQaVZeDv
M8dBcBrkaLuUf46ouwcfZu8K8j9Y/KnlTjld8YAoi+wpmxfppY5zGmMMDr9Wsqdi
Cnfn+9ZmIMLYBJzE3zc6Y37ICC6HCQ==
=EAmG
-----END PGP SIGNATURE-----

--Sig_/cTsYyZ8h2iTZsMdZQarLg/K--
