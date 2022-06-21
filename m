Return-Path: <linux-ntb+bncBCQ6FHMJVICRBQVOY2KQMGQEULDHMYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEBF552F58
	for <lists+linux-ntb@lfdr.de>; Tue, 21 Jun 2022 12:02:44 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id 199-20020a6b01d0000000b00669bf42cd4csf7399708iob.4
        for <lists+linux-ntb@lfdr.de>; Tue, 21 Jun 2022 03:02:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655805763; cv=pass;
        d=google.com; s=arc-20160816;
        b=1GU+SqLyOOUAcz3nR8bpKo7lCaqeAutoryYGbUaVbSEXVx9qnkSJNWqqrvHCtcY3B5
         fIuW3AzmoBvj8RByAtalH2yFOj/MWMpmj9cHTB3nk+E8rMYmiJtUNmEUGekM1XESHAFq
         QG2IAj83wfKXJSWCGx7Yr+Ju1SJE5JPAtS/Mkqvl/bS2iDIERblF+Dq0NcxnrfZI+rE0
         m/EiU0hdWb6fEfI/whbzXbEJwD1yQO3EaReBj1j28Hd8LElgKbs5PTooOCrkqKd2oGwp
         YOOpL/zLKJGjJjgdf7KM+FuiZqlDwILVbxVDRaY1oDdh6Q5afv+3Yzc1mDdzh66pKf3U
         OnsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yT2X4JafJUaRatSmuQVv4ZsXmTHoDUsjMavaVJH4zO0=;
        b=Jufl2v74gGln0TnSHk3NZuvmyfLqqLk2YJp4xKJcF98mX38+9utDRxbBJY+fwegK/0
         qqu2anzRKyZq4o5j14OZ/dclNiyCYT5j7iHCmVmqAbUkpLM+hN362uubOEwv32JzB1ia
         5Z84QD6fM2fwNfXZ/NsQhzrOyb2Uur06yvi8/f4PFMT8ZMSA90W4qSRz0X8926AmCQd3
         iu+ADhMgjfWSJ/Mn22XlyocweE8ji9HNaajfhDp/KLIN+FV4jeM4Am8QX8UMJ6wVskYk
         iVyy0f4SXFHgW3zHQ6PTrrFsVNeoNEt4ifX8xOqj1aQSTs1hAYb7/En5zsauaMnMIQvA
         LHwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=h5E3WbYF;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 2404:9400:2221:ea00::3 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yT2X4JafJUaRatSmuQVv4ZsXmTHoDUsjMavaVJH4zO0=;
        b=BI4Yzn3GUlg4JAcGT1iCnlDZG1SRv7/Lq3pHe2HyxOr2qxBLDpIppb8AUSuW4Xp8A1
         ge69HSMY0ndvktCjS9wxzBdDxirrFf1yr4EGwN50aB7+9uzsXVwacUuG/X4x0rB7JhNt
         WKIenQrfEVoOMVH8P+qXvXcZzPaYpm6XqGfTpI8QArW/ZlNXpGOX3R41CswKvsHHshRi
         B8Okyfh5T4AnGRAnFKEi6BjnsFzVS5Q5aB9rTc08VQ968IMLJYteSQW272O5W6kn+oWJ
         70SLof7XstdnQPJx2eo368grcsp7tHsxIGbpnF5aBYejGVtaAbuTdGVcVXN4Py/MwXaA
         DzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yT2X4JafJUaRatSmuQVv4ZsXmTHoDUsjMavaVJH4zO0=;
        b=qW5NQs7awGbcTUHFrxrAvSmpdaEJYkp2Q/R073DsbaNFMzvesms68PTlDRkimRCIB6
         tzx6ianA/bGQY1wT3kseG4Oi2nIPiW4Ls3YEDJP9PgTNLnp6JsZ3fvfEm94VSLF8/3P8
         LQI7I6lR4ZhwnVkAJ0HLDR2EvaR6VURiXezYnfukVkadaYhxYJqZzI2DOHaa2xDmdiQb
         ZB4omOar2L9/dFB2wLYbpHOR2VlCvyqSAyCxnVYm9rKta+j8gRJRkimg684U0QU27Yyh
         wkciCPFNy62OgrKdFugD2ZQjOKBuRKAOA61MZhdFTEZ80eHwIANSRI6RR1QSdzCQKiVk
         +y9A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AJIora/CcS+u3D4MyJ7Rh22zR3nlAt4pSdz9Zs5Dt7sWQcghC32M6uyQ
	bUvmUZltJY0XpXry/JUyHoQ=
X-Google-Smtp-Source: AGRyM1uIbZXwyPcipchpYex+tZK9QN0lquBLIm0FM33GeRcpM+iBIwbI6k4iltNT1sGNSvkfR6QCmg==
X-Received: by 2002:a05:6638:218b:b0:331:aec6:9bf9 with SMTP id s11-20020a056638218b00b00331aec69bf9mr16174952jaj.100.1655805762810;
        Tue, 21 Jun 2022 03:02:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:2168:b0:2d8:76cb:a1e7 with SMTP id
 s8-20020a056e02216800b002d876cba1e7ls2103714ilv.11.gmail; Tue, 21 Jun 2022
 03:02:41 -0700 (PDT)
X-Received: by 2002:a92:db03:0:b0:2d8:e440:f527 with SMTP id b3-20020a92db03000000b002d8e440f527mr11358000iln.320.1655805761760;
        Tue, 21 Jun 2022 03:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655805761; cv=none;
        d=google.com; s=arc-20160816;
        b=RNG76Jri6k0IWHaxlfLSwwiZ3PJrdF/WV+9kniaR1e4AwVf54IehxCscww5hHx2YT/
         gU3WsGkMvwmRd+PDrb7N6QZlg1hMbCXOtZzvUHueZ2U/012xXnpop5UWoZefYQ+KP9BO
         3V23PyDqG4+C+6lBT9fgkr88Jex8wBRSFjvrQj8/xC/xAJsVUciezAMqo+/V89narPWY
         P7t1vmkInUBd7rMQI6RI9WMsHqUpKc/HfFeSghtbcDtUhVk0qqeFJa+FzGpPKf8CR0DG
         3PkM4OtsbXT2tosmU0qmATDpUjp+fyPX3oAYVwPD78hWxiSMRfjV+hDnRm74wCRdPOPe
         UhZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:cc:to:from:date:dkim-signature;
        bh=yI1nhbgiGULXHG6ktjTd6dVCnSmD0glHSc/BjsjUH2Y=;
        b=AW5wyDZnTF/QLP/OALBkrPynTaTXaFiHNq53iwMjZ/fADOzyqmTlpcqOPR3QPQQejD
         uWaY+r7Qw/5g6y4fzohFh/KXfetpS4QkEzuF6fjtoKbhNFuWWHcFaWZlvbbV0JWZ6RsT
         PhyECLGFJgyX0eRgyu55EmN+yXDuCQACasilcYDjqtfv6rzO73o+5WpF7wqAm3z7KcVJ
         xBLwUjlU03maXyz4xVKP2FYaJU3HcUMqTXLw+7IhJ/TvXsNv8CBzKuFELvPgbSfwZLl7
         tXAsxRHgRudQ9y9MnNRa7g0KF4vZAPc4EMmoHQmfXroOOIvjuhLpQoi8IjIwkgHCV3WM
         tl+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=h5E3WbYF;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 2404:9400:2221:ea00::3 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from gandalf.ozlabs.org (mail.ozlabs.org. [2404:9400:2221:ea00::3])
        by gmr-mx.google.com with ESMTPS id o15-20020a056e02188f00b002d53221ff67si709118ilu.1.2022.06.21.03.02.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 03:02:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 2404:9400:2221:ea00::3 as permitted sender) client-ip=2404:9400:2221:ea00::3;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4LS2BN2MZwz4xLT;
	Tue, 21 Jun 2022 20:02:36 +1000 (AEST)
Date: Tue, 21 Jun 2022 20:02:35 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Jon Mason <jdmason@kudzu.us>, NTB Mailing List
 <linux-ntb@googlegroups.com>
Cc: Frank Li <Frank.Li@nxp.com>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Linux Next Mailing List
 <linux-next@vger.kernel.org>
Subject: linux-next: build warning after merge of the ntb tree
Message-ID: <20220621200235.211b2e32@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/.5078yDMVPMkgCCqMwrC=L8";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b=h5E3WbYF;       spf=pass
 (google.com: domain of sfr@canb.auug.org.au designates 2404:9400:2221:ea00::3
 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
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

--Sig_/.5078yDMVPMkgCCqMwrC=L8
Content-Type: text/plain; charset="UTF-8"

Hi all,

After merging the ntb tree, today's linux-next build (htmldocs) produced
this warning:

Documentation/PCI/endpoint/pci-vntb-function.rst:82: WARNING: Unexpected indentation.
Documentation/PCI/endpoint/pci-vntb-howto.rst:131: WARNING: Title underline too short.

lspci Output at Host side
------------------------

Introduced by commit

  0c4b285d9636 ("Documentation: PCI: Add specification for the PCI vNTB function device")

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20220621200235.211b2e32%40canb.auug.org.au.

--Sig_/.5078yDMVPMkgCCqMwrC=L8
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmKxlzsACgkQAVBC80lX
0Gy1ZwgAm/G2qqSAbJxvxWnUavKdaFiwzQnOiIg4b6CZZRnOY+xSHP4Fl2k/hef6
PCIOgsNSmTNzSu05FNgHlE4cCfOPHw0QIW1nMyS7FYYB60G19br3Y+IKwcKZZ937
A4C0FgOCsyfqdyTzpJfyyh/KQVpNi3C8fasMs0GCtVqNoxCVsqziPYyhYwKZ3ccP
3/ibSmOtzzD9UQr2lqwepnDfIA3dPm4Hdr9T7ysibsB7WPqHIm2Bn1w/G62NamGz
uKSYocMbOwd+RwGUGFXFUVMVyav+Dm+DBdke6R8d9WGodXE97Q00GkKw0Pxsh8ac
LZYm4qjKSUmUHdDjf4ZuwxnYkGysag==
=2Ikt
-----END PGP SIGNATURE-----

--Sig_/.5078yDMVPMkgCCqMwrC=L8--
