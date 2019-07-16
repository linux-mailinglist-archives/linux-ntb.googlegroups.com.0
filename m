Return-Path: <linux-ntb+bncBCQ6FHMJVICRBEFRWXUQKGQEDVPDX5A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CA16A1A7
	for <lists+linux-ntb@lfdr.de>; Tue, 16 Jul 2019 06:54:41 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id e32sf16891338qtc.7
        for <lists+linux-ntb@lfdr.de>; Mon, 15 Jul 2019 21:54:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563252880; cv=pass;
        d=google.com; s=arc-20160816;
        b=iHJNH/r/Ad+6EwDM8QAJd3t5uKnmcQXgjNMl7okUQrWsFSWF7iJcN4w/fKk31sp/Wq
         92WaS8ULRUqrs4KwA2nvBbNB/RTyJ24KiCy8ljjFLgJDVnvW6Gl9+i2nIyVc+ZZTKCfK
         gDPGcQ7Hv4iL/IYcn4SkE2V2jWJ1xNdObx1wuoXiu1b81pjh3o0PLvk6DFTJl6bCO2JW
         IwlYUKYQKdfYj5Amz9VfeLAnhUW2gO5DCDsPfiYIQJaeD7yEodvYvm1CSIiub8g4KxOS
         sHDpF9WPdoH4VRFWOlV3Sgz67MwABr5vDC+KAQkvff77BBjigHkQ1oUjkWMToekksDdt
         QtoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0W02s779kN9bPKfQFTMwM85PY7ByKac55OMYeBvuGk4=;
        b=BHF6q3iGD1pPrararQTRz+spgbiLITy+AnV9ujfj2AsxjSQCe1IJrHuo5WWdsSv6Vr
         aRtyD5Wg1n7LXPBTs2CisQvj1vXBX1cCKf/z3Qf4cU3ctaZcUA2YZRVy/e20YBRbXXGt
         10Tc6mDdpNUysW+Qe4BwlDZvrNg2jiDplBAB5d4UpFXxAhtf+YrHpl1uI3faUkgFbcUT
         6vw0LDDKd7px8JyiFg5TUmsNFF4yWBYSFobcgl4tNns4fkIhvFXG+8b8V+r+WY93DqMG
         FwljuZjha1RxiteFObpAELisRgiLkBceN4X9wWTLNRU2ARehX1kPqxaT38WIS8YrN9FB
         BuIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=NZZw+mma;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0W02s779kN9bPKfQFTMwM85PY7ByKac55OMYeBvuGk4=;
        b=cwhRPYk68IBjxafS9b7SkLEyNkKj989w6w5dxtezyqKcbqH0jrz40Fr3GCcTrlxvlu
         iIUFe6FL+v6X9RvA8ow17lgxSAlMUxOw5mVS9ws+BGDZmFgpOFUztw8T3gbklVqSwmdd
         c0yTid1xkU7lwiCH57GwylVkAdyMC6InLPnNDfnghjR7aPp2o3/QBb7FekAte4lz+Jcm
         bS1BYIWEmmEhiyRGEahDGXFbCppce72IO02OPcfcyBV0FAvuZl3TD11l9VtI0tEzU9nn
         WWTm32qyOS4BK+0IDW9MTU3p8dPfqUZwbGt9wPBrVqjja0PV2mMMPyb3zbL1oc4Ado1r
         v6Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0W02s779kN9bPKfQFTMwM85PY7ByKac55OMYeBvuGk4=;
        b=f8I7TKXGfNPawTENwPBaiPr48vt43vnjVkYymGjjTahZYbdlcMHd+CNKDPkYoCnEm+
         6Ax7lR5VgQkUR4E6W3jzBg8q6ejRNnEVlTqf/oumNGa4G5XE8D7WaqjNuGeQaOz90x56
         BF6wWsJfAjD7ghUUfrdbdbumC2sWVRUngcoxjltnFCjJNvb8s22gT4mk//KLmpMpaR7Z
         yUKYJQByezF1cdb5gr6jjilhqf2KbYZpMkQE/Wx72xccIoEXcfyd3lF4BWbEaixZRSqP
         ZEasLTcz9mxvEs8UOHYL/F3k61sznmWGw8RTcYX9z+cZ6tGQMQChnj9LTofULx8tOuC1
         rJEw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUwoGZ/MAUVrL8nkP42ZissAQyuoq4EFCP4PHZIubSeRAszpa9K
	MwhToLcEykYl91fp++TKO7E=
X-Google-Smtp-Source: APXvYqxipQFxpwpc5SnZ7ud0CVnZIqWcgbYy5k+2n18ejxh+TtPnbDei5F9W3CQ7g4Al8u/wfB6Q+Q==
X-Received: by 2002:a0c:acea:: with SMTP id n39mr21007411qvc.99.1563252880524;
        Mon, 15 Jul 2019 21:54:40 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:9949:: with SMTP id i9ls3288111qvd.11.gmail; Mon, 15 Jul
 2019 21:54:40 -0700 (PDT)
X-Received: by 2002:ad4:490c:: with SMTP id bh12mr21473819qvb.59.1563252880006;
        Mon, 15 Jul 2019 21:54:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563252880; cv=none;
        d=google.com; s=arc-20160816;
        b=K0XLMseA5MvdqubhFbwSn2Pm0gI/PQ8FQkwR6qgIw7CJGdd0qA+6FcFkpnCq18OI0i
         1JJTFkI61q5h7dwvET4Q5N7ozRFPM6IWRq1aX0d/fmwDNbjekJuE/hDc/l2SDBUzBuXX
         K5A/Zd+7gB3dn29J9edX3YyOo+VnXkdL0Tom3+/pxeQn/iAnC6KRDY2ji8uOc2i4sA5r
         PvywoYqul4RUkphBCchhT1o8no2cb+YtWDbZkAJfURJTDLiNUY7deL4nZe4pzVnzVCaA
         Z4nBAYrSojCLLgR71YjZCQsp9lZpZPBSmuzNM1xMlcmRQx7p6Q0fnJJP7Ffoi1Ec11rr
         eP8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=2XWH8qIY1CIIR3ml+Ox9a821mFuxSlD/1oeUNyofL5c=;
        b=wxo5HjhNX76PchHxK/0M2HLBPZAhY18tM5/zy/JyjVlZosQBXX8orqbtlWpH1IcE8y
         PByKZz+cc/U8rW8++Ko48ATGmdCyQXDPrj7wNmip4+MWHdq8RD1HSzZ9prfT6j7Xa2s7
         9OoL70sI/V2OXaDRc+zpdDREEeTmtnD275hhWAsnBJMFKSJ6VOe8tnzw/gXq0uVfoiCT
         1n6rT0vyXtgC3DzGw8y+QjLPkDpxEG8Zr4UlBVd7KTtIn4gJ85ozCsoS5gint1uNK02q
         mhMnYA/O9WMx7J2FMZjjBpo/8ZiXrIzs8hr17sCm/kvNPYCvXtCWTkNxqFfd66PvCxtn
         VM2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=NZZw+mma;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id w82si683613qka.7.2019.07.15.21.54.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 15 Jul 2019 21:54:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 45np3D1Sv8z9s8m;
	Tue, 16 Jul 2019 14:54:32 +1000 (AEST)
Date: Tue, 16 Jul 2019 14:54:31 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Logan Gunthorpe <logang@deltatee.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, Jon Mason
 <jdmason@kudzu.us>, NTB Mailing List <linux-ntb@googlegroups.com>, Linux
 Next Mailing List <linux-next@vger.kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: Re: linux-next: build warning after merge of the ntb tree
Message-ID: <20190716145431.26da7a75@canb.auug.org.au>
In-Reply-To: <7ec45bb7-4e72-2415-21f7-44dadaa0fada@deltatee.com>
References: <20190716130341.03b02792@canb.auug.org.au>
	<7ec45bb7-4e72-2415-21f7-44dadaa0fada@deltatee.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/6wNty9WHNNpLB=upKszJLxs"; protocol="application/pgp-signature"
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b=NZZw+mma;       spf=pass
 (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as
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

--Sig_/6wNty9WHNNpLB=upKszJLxs
Content-Type: text/plain; charset="UTF-8"

Hi Logan,

On Mon, 15 Jul 2019 21:46:42 -0600 Logan Gunthorpe <logang@deltatee.com> wrote:
>
> I renamed the ntb.c file to core.c so we could add more files to build
> ntb.ko. See [1].

But that was last changed in June, so I assume that some change to the
build system has caused this warning to be produced now.

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190716145431.26da7a75%40canb.auug.org.au.
For more options, visit https://groups.google.com/d/optout.

--Sig_/6wNty9WHNNpLB=upKszJLxs
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0tWIcACgkQAVBC80lX
0GzAEwf+Kilbh4hmWSH4gsjN7AcjrvhLIzGrDTEzWyIHM6XLba1XNBOHCMFgT2w1
v5eMjG03GH4nQikQO8eaYwAlsiDWM15thNUGqF/sld235ZCW/w17XIVbwXzrvsLF
ErvmrWyZEoArrEFy1Js6dMCDvbuUJQkKBLIDd+x13q/Cf8ZAzVsguXQN5hSbLq87
Wz2GWXNB53lyfV+NttjkdZj7W12H6df2IHqny3qe7OxGipbsNWFTIRHJkWI/xpsd
e9Ofh61XkKXgiHdQWlNZyHyk8iWMdLfMkl+x854+6CElPiniFRdfyjYACsC06YEn
Gjt5uvPhnEbjYyrBIOlTEIfADAvSgA==
=hXRI
-----END PGP SIGNATURE-----

--Sig_/6wNty9WHNNpLB=upKszJLxs--
