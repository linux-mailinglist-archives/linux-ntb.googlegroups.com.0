Return-Path: <linux-ntb+bncBCS4BDN7YUCRBXPNWPWAKGQEG4C5HAQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id E231BBF7A0
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 19:35:26 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id a7sf1342644vkg.2
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 10:35:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569519325; cv=pass;
        d=google.com; s=arc-20160816;
        b=xinOq3c1UcCRyzQ7rI77IRUi78HvZ6DJScZWWDTPi2xxqwZMAQjpcPpykybFqDOzlO
         Qh21Qwgmzy3gj0aMv0qqDFutY0iYG3Gl88616tLsR1GKscTLVihiOwRTI1LVt2VCfkY1
         4vldbFQ+xqAa0nXQklGSs4Q4DVMOhfwxI7I7Ytr629j9cuGoNCtPo/onVo4sQbABaLY2
         gUTVqoCIa5hAPTKL2+UTQl9vswCYRROauLwl7eupeRPzUZUS4uIGk7nVmlx63BsU3rIJ
         CQPLQ/HsPeLPWsKZZPmTY1Zp5wCpq4gg0L3dFv6b8RkMjDM+Q4Ma3wI5s8GUimleMZ+J
         jRNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=H3OeqjJYYNtgnvumDpRJIqmASpt/ADO0AVPF0W/btwc=;
        b=RsxymnckDCSKR0E+nUVLnnRrestrp7s3ch0v7P8YTmgEQOCKIovgta8miaIikxrJyK
         SDmCK2ipK8MqznMIVbKsw2g5knf9OzzeDtwpMKo/0HpsTlb0311NVg9t1BnHRhEKtf7g
         LMcZV9QKqziOo2nxWCrDp0lUShUKIGqpos5YpPaVUb9h9dbPQCDLEuu+NBsiN550tRty
         gDUJvKYJRlkG9k5fn90p7aV4KT9xSkHpqokkNwztGb2xP2F55jzPbJGE8qkEJOsn5Qi7
         2wZlzWI6AtgIhliTN7Nct/S7ftkYCLPcIBAjelC/KuN68oU1+DnJGYLoBCU5LvgYtzum
         sJ8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=OIOLw79F;
       spf=neutral (google.com: 2607:f8b0:4864:20::743 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H3OeqjJYYNtgnvumDpRJIqmASpt/ADO0AVPF0W/btwc=;
        b=se8kYpqUBCzM3qvAobTn+FHvsh6U6h+fwcXmvWZp6+bXnTI27H79ggjiBaYWir/VU3
         K8ShLaFBK4RqKfkuHR5BzMqBxEzwAMRCPTMnQV7RBBiaGG9DLP5JIZdPJTBzYVj1avIJ
         N4LlWy2U73U+BiSCb6WwgbMnWQKz4gaFoyfKlmlZaxgcc0lW6ckN2LoonyjrU7jQ6PTp
         st6pqog4vJp4mVU0+SJ67LPNj++u01+LseyiD0F8lkA24YxlQ7MXFxKPnd1/gpuUnbMR
         z6qFjcnm+/tmqAQrFM609TN8to/rAAri7PdweIioSsM3u3yMylUt3GzI+XZwYgU0FI2R
         9KmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H3OeqjJYYNtgnvumDpRJIqmASpt/ADO0AVPF0W/btwc=;
        b=Y8D2QynLfFH+clGi3D94fP8vltq4QYWz0yGuxLeTnfYde4GifUj/oEvlgMghnVBpCt
         RGlWh6FTDjeEnOvd07ctChr95gMzPKrE0QjOIjkujMVdPuNVRBY/3KkSAZ/HFk6/SlvN
         X4M3yei7tiPjka8UjL9fBlAZ4O3q/Xgy+2zDv9OUp7wIWJt6e6ik+cbNMC66mn2tbeLw
         WTt5QczGDWMzhgaZa3vfIPz8LYAoQcVFZJmUcSREw1rqyyLZkcu1H+4ViRIJzSEtlMFj
         Vw2KNKYyEqoBDYDLg3MPwYD5U27IQELsPTeaYYZxBco8RtH2HzO1RE1PTXY+DMB4r6VK
         RKVQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXX9PYILgPfS2XnJ2SvFDMMu41xuNpPMIrlvn4I8F7ADy3T4QXA
	W0Jjbnql02bWONF9Fs6AgMA=
X-Google-Smtp-Source: APXvYqxMdzVNHqnYIGEWJUp0BWyARFVEMdMv8dNOA6KbLtSlhawhThaq+28vrrWCQJ0uGnz+sSzavQ==
X-Received: by 2002:a1f:c1c9:: with SMTP id r192mr2316428vkf.89.1569519325676;
        Thu, 26 Sep 2019 10:35:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:64c3:: with SMTP id j3ls188492uaq.6.gmail; Thu, 26 Sep
 2019 10:35:25 -0700 (PDT)
X-Received: by 2002:ab0:474e:: with SMTP id i14mr2408642uac.49.1569519325336;
        Thu, 26 Sep 2019 10:35:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569519325; cv=none;
        d=google.com; s=arc-20160816;
        b=zPOMJ/NpGz7zFmJ7mK4XmnpykINxH4RwP6FAaAqBJwQ/OEOIf54cbo8b06spKWKwlo
         Fac8rRl4YDWqAWacGTUo+hHKdUS76DXyLSs3SYEcVIuS553BQXarszW6Dy4V9qX1hvum
         MsTK41D3+fhn8LIBXXif2/HhF1gml4/YrB4pZEsHrP4ey/c7ze9cy6KgfZbNCem/zbxy
         Xrk6HF4zUGYFUreihO5hK0Y16ViN6pQgvlCFo/xd0mslwU+2mWr77lL2/rBWjKRQSuRZ
         01m1TgQKWF2Q0O3mZKNXopTN/sHX6sYZweU7jaDdk2lRVKgKUJZLcbYBEU9Ub6yriisj
         7Mbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:date:from:dkim-signature;
        bh=gOTzEof5klKVQo3+CdQSO2adftwo/URuU7QVTqox3lo=;
        b=RF36YWiwcN2p09hRO9F+hBISM5iE73q+9ThghaugjJJ6gnWyr13BmTFQjCLsvHr3wO
         i91J01NGdzBFSUExjB3DqF6U8rYDTN+ZBe8HdJZCO119KELQDJRNnLfWgNMThbmFQRBb
         iJ2poP4wYLPDucVxt100Laz1o+qZaXGEAWfdq41wWNiMrZgdVrPJWyTNzmbEfPQQHqsM
         8ANifrVHGyqLspg/KYRGfScd3ylw7YFxMcARUTchXKYawlSLQ4vgG7OZffm47OYLx+8l
         LBLXEisSJA96N/0yyi59VrVtGERm2FhR2kKYbnzU8YkhDZdY6QoD5hQOxxzCXbp1HrzU
         BgDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=OIOLw79F;
       spf=neutral (google.com: 2607:f8b0:4864:20::743 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id h184si197395vka.3.2019.09.26.10.35.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Sep 2019 10:35:25 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::743 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id f16so2470183qkl.9
        for <linux-ntb@googlegroups.com>; Thu, 26 Sep 2019 10:35:25 -0700 (PDT)
X-Received: by 2002:a37:a683:: with SMTP id p125mr4624315qke.173.1569519324626;
        Thu, 26 Sep 2019 10:35:24 -0700 (PDT)
Received: from graymalkin ([2605:a601:a604:fe00:3545:534f:2d69:c606])
        by smtp.gmail.com with ESMTPSA id f21sm1210415qkl.51.2019.09.26.10.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2019 10:35:24 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
Received: by graymalkin (sSMTP sendmail emulation); Thu, 26 Sep 2019 13:35:22 -0400
Date: Thu, 26 Sep 2019 13:35:22 -0400
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB changes for v5.4
Message-ID: <20190926173522.GA15861@graymalkin>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=OIOLw79F;       spf=neutral (google.com: 2607:f8b0:4864:20::743 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

Hello Linus,
Here are a few NTB bug fixes and a new AMD device support for v5.4.  Please=
 consider pulling them.

Thanks,
Jon



The following changes since commit 4d856f72c10ecb060868ed10ff1b1453943fc6c8=
:

  Linux 5.3 (2019-09-15 14:19:32 -0700)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.4

for you to fetch changes up to 4720101fab62d0453babb0287b58a9c5bf78fb80:

  NTB: fix IDT Kconfig typos/spellos (2019-09-23 17:20:40 -0400)

----------------------------------------------------------------
A few bug=C2=A0fixes and support for new AMD NTB Hardware

----------------------------------------------------------------
Alexander Fomichev (1):
      ntb_hw_switchtec: make ntb_mw_set_trans() work when addr =3D=3D 0

Colin Ian King (1):
      NTB: ntb_transport: remove redundant assignment to rc

Randy Dunlap (1):
      NTB: fix IDT Kconfig typos/spellos

Sanjay R Mehta (3):
      ntb: point to right memory window index
      ntb_hw_amd: Add a new NTB PCI device ID
      ntb_hw_amd: Add memory window support for new AMD hardware

 drivers/ntb/hw/amd/ntb_hw_amd.c        | 22 ++++++++++++++++++----
 drivers/ntb/hw/amd/ntb_hw_amd.h        |  8 ++++++--
 drivers/ntb/hw/idt/Kconfig             |  6 +++---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c |  2 +-
 drivers/ntb/ntb_transport.c            |  2 +-
 drivers/ntb/test/ntb_perf.c            |  2 +-
 6 files changed, 30 insertions(+), 12 deletions(-)

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20190926173522.GA15861%40graymalkin.
