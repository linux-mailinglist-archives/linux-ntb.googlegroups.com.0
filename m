Return-Path: <linux-ntb+bncBCS4BDN7YUCRBUNHYPUQKGQECWP6RSA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 139AC6D5A7
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jul 2019 22:17:23 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id i70sf23017148ybg.5
        for <lists+linux-ntb@lfdr.de>; Thu, 18 Jul 2019 13:17:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563481042; cv=pass;
        d=google.com; s=arc-20160816;
        b=Up04UxSpHAlYpIOyqATTcb00nzOaL29PgH+wAJ559Ka+y1PLuMnSs3csaEsLy0KFnc
         FV5o1uqOHozj4PMTBI93/xePg3K4QDb5WMbQWIFxZ8y28Ooe3xmG4N91TpkIaLh4GqHh
         NGLL085+0k7RzVOZNfGHijPZ3ho8LCbhmlv2VFqxlQ/uY4tCOhtBWZREtZiA5rFR2HIB
         amVPqzsqaP9I+qhegogrfsobHU6RL6WKq8UbraOBDRqOMRqTuUuD5k+l4VduK50S5GRU
         BKdZdPAk8jCXafgGeaLaojvu3spHFwaboGCP6CccALie0U2S/4sPvw+l6FDZlkwcxQwd
         x37w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:date:from:sender:dkim-signature;
        bh=V1rkJE+0jeiBBWFkOhF21U8HesyQ77AyMi+vvBnpauc=;
        b=oA6b3vVXtd9R92ln/qu10d+C69qigfmbZbO3GrD/KiQNu87+2yBiyLHwkd98iPkfaa
         aneC37jZxDVkraGBtyk5zXhOn6eNdufBOqePI1wva6t63bRw6PzZHOYL4dNi8xTe3lWm
         QFLRnw6I/2ALbhMzuOPF5ST43gRJwQ95E99UTYHa01hjB7dnf4jc4E3YgK/G+8YWMWqt
         vmZ2rtmnFy4mmos47H9YSFWDJZPGHF8AajAIYqw2oO3YBbeFCacDPlPjTOLh3SCEDwrf
         l1fPqOJFw069Eazd9pjIpNa9h0tS36WyhEevgDMQBV/df5BkrPglUMyMuu94YoLe+kDE
         I5yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=C7QQl0+Y;
       spf=neutral (google.com: 2607:f8b0:4864:20::c34 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V1rkJE+0jeiBBWFkOhF21U8HesyQ77AyMi+vvBnpauc=;
        b=nbqYyfv2ERsKd2+n3FVWeFQ5xuQMmcVoHOMneJZtmkQk1kPaDHpvDyy/hqfVlCGNFa
         MzWFVvFX7KeEXii6aP9rguhBAkEigm12ZjP637u/+xkZrZjGGdB5/opaayxCSZKXbTk8
         URRZ3EWiJeaRjg0g0PTV0I9EjIZOkF7iWd3EBj6MZ5WzqgVCnZ35P3xtlIBDALeztCel
         lVNDPpybW/A0WzUWnL3XVYgtgtQw+ZQ7eWcUagn2JiM2Y01VxHtd6Jmr4oVIThBHd0CO
         y8UdHuiAreYIWKapaiWYAm7+3mVfsFF84/UL7ERfk4/6miJBDDYxib64seUApW1Z7Ob9
         4ACw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V1rkJE+0jeiBBWFkOhF21U8HesyQ77AyMi+vvBnpauc=;
        b=Q9jZF+Xms5WWP/Fl5YhsrqRu9QxsftIjtvV4B0W+H3ZPNyC6jFsngR1f9+HxWC9q1N
         Ie/9j+HRFqwND8D5tN1yGHx4Do3+ukxe07DdPX34k/70fkEYbw12yGe+Z1mS0L5ItXvi
         owY8irXJ1n4gRVoSrQlHO7N40V4ssSj/46dXV5YjieM7RyL9xsHz81hkTjH54PwA+FDI
         wSji/FQpJiBali+wJPjdK/BOxJU6QZ0PjPh+6Sx+QzfZnhu+IvBK76+gsddLwM5VT+dv
         XwVx2SeoWhR/upuy5FuAkM3W48WbH38Evy9+M2z+ryLb+tjEmzA30Hkl0krvOb4SgYue
         UEig==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXlVlUfXRIAbPG8DRZEXuwT5MlZt1JRJCD3MZc460lbfFNySxFU
	Sj7HueKH9tYiSkASvy1lyDo=
X-Google-Smtp-Source: APXvYqyFXy9p9em86lHgbOHvUZ/CMd+Bc2UGULcS9Jsnbw6ph913hNn9IBa9NxGOaocPMq/oZveOoA==
X-Received: by 2002:a25:5b06:: with SMTP id p6mr27860962ybb.432.1563481041797;
        Thu, 18 Jul 2019 13:17:21 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:410c:: with SMTP id o12ls284571yba.8.gmail; Thu, 18 Jul
 2019 13:17:21 -0700 (PDT)
X-Received: by 2002:a25:8602:: with SMTP id y2mr30193315ybk.483.1563481041510;
        Thu, 18 Jul 2019 13:17:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563481041; cv=none;
        d=google.com; s=arc-20160816;
        b=gj0cpTvU4wAEqsVKcjAyH3PNfKjLptlWbK3SjNkeNtM8ee2kUCm/Hem+NXqW6DYLfU
         cY7/rd+zRbV+i0cTOIxR6KDOef0rYHUxneF6mUwc1UzwdVNtJZZZotwGKlx8+XRMelVq
         XXVIYnjz1lp7BKOU9mM9RmtzCnwSa5dPn9o8ZEEJIHSCzJvI1u/AB9UhLdlyMjkWB1KM
         1wElUmKZHrXYDux0VKu990gW5E9yBJ9DqZGW98jju3nm2mOH2cIak5W9z0J8JFEUyCcY
         ERgokFRdGMOwrSlvrtn5dXImeZfeio/4pVKeQMZhUG30WF/zbDZ6qoxkTsYc5W2NB1u1
         8Kcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :date:from:dkim-signature;
        bh=mRJp8zgGuuwZOr7P4pSoq4i342Di4VRymnvJG4OIDFs=;
        b=Zcya9QtRad8DzBoY+0xT4L0hRBm/3MWEWb/xnBZxfmd5X/Mi/WGDO272PcP4Y0KCvD
         PEJ2v5xGSJwhqypkjwht7xzahQq4EJxNucwJwbPo2y05fz/v4JsVxDJYCImMlMj2Nw9Q
         QeRt9ps7yCdNJObLvJJhvDFZf9GuCQXnXWcecJV/VEUMYvgApbLUCAe+78ZfaPhl8Ek1
         Y6riNtZsw465FcyRN3ngtbvh+Q3RT5Bgmw+WRYTDCmUH9qN1nw7DrKsyYYCD1AlLAqfU
         uCx9GF5egJe1ZsK9kOmfEnkuoG/iqdQk0BgxVN5b0yZN3aTMlVKSr5ruRsx2p4LE4d3P
         lMkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=C7QQl0+Y;
       spf=neutral (google.com: 2607:f8b0:4864:20::c34 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-yw1-xc34.google.com (mail-yw1-xc34.google.com. [2607:f8b0:4864:20::c34])
        by gmr-mx.google.com with ESMTPS id v127si1339117ywv.2.2019.07.18.13.17.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 13:17:21 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::c34 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::c34;
Received: by mail-yw1-xc34.google.com with SMTP id b143so12728175ywb.7
        for <linux-ntb@googlegroups.com>; Thu, 18 Jul 2019 13:17:21 -0700 (PDT)
X-Received: by 2002:a81:980d:: with SMTP id p13mr28952907ywg.51.1563481040901;
        Thu, 18 Jul 2019 13:17:20 -0700 (PDT)
Received: from graymalkin (76-230-155-4.lightspeed.rlghnc.sbcglobal.net. [76.230.155.4])
        by smtp.gmail.com with ESMTPSA id 197sm6556447ywb.56.2019.07.18.13.17.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 18 Jul 2019 13:17:20 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
Received: by graymalkin (sSMTP sendmail emulation); Thu, 18 Jul 2019 16:17:18 -0400
Date: Thu, 18 Jul 2019 16:17:18 -0400
To: linux-ntb@googlegroups.com
Subject: NTB changes for v5.3
Message-ID: <20190718201718.GA20276@graymalkin>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=C7QQl0+Y;       spf=neutral (google.com: 2607:f8b0:4864:20::c34 is
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

Here is the proposed pull request that I will be sending tomorrow for
v5.3.  Please test and scream if any issues are encountered.

Thanks,
Jon



The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.3

for you to fetch changes up to d9c53aa440b332059f7f0ce3f7868ff1dc58c62c:

  NTB: Describe the ntb_msi_test client in the documentation. (2019-06-13 09:03:12 -0400)

----------------------------------------------------------------
New feature to add support for NTB virtual MSI interrupts, the ability
to test and use this feature in the NTB transport layer.  Also, bug
fixes for the AMD and Switchtec drivers, as well as some general
patches.

----------------------------------------------------------------
Dan Carpenter (2):
      ntb_hw_switchtec: potential shift wrapping bug in switchtec_ntb_init_sndev()
      NTB: amd: Silence shift wrapping warning in amd_ntb_db_vector_mask()

Joey Zhang (2):
      ntb_hw_switchtec: Remove redundant steps of switchtec_ntb_reinit_peer() function
      ntb_hw_switchtec: Fix setup MW with failure bug

Logan Gunthorpe (11):
      NTB: ntb_transport: Ensure qp->tx_mw_dma_addr is initaliazed
      PCI/MSI: Support allocating virtual MSI interrupts
      PCI/switchtec: Add module parameter to request more interrupts
      NTB: Introduce helper functions to calculate logical port number
      NTB: Introduce functions to calculate multi-port resource index
      NTB: Rename ntb.c to support multiple source files in the module
      NTB: Introduce MSI library
      NTB: Introduce NTB MSI Test Client
      NTB: Add ntb_msi_test support to ntb_test
      NTB: Add MSI interrupt support to ntb_transport
      NTB: Describe the ntb_msi_test client in the documentation.

Sanjay R Mehta (4):
      NTB: ntb_perf: Increased the number of message retries to 1000
      NTB: ntb_perf: Disable NTB link after clearing peer XLAT registers
      NTB: ntb_perf: Clear stale values in doorbell and command SPAD register
      NTB: ntb_hw_amd: set peer limit register

Wesley Sheng (2):
      NTB: correct ntb_dev_ops and ntb_dev comment typos
      ntb_hw_switchtec: Skip unnecessary re-setup of shared memory window for crosslink case

YueHaibing (1):
      ntb: intel: Make intel_ntb3_peer_db_addr static

 Documentation/ntb.txt                   |  27 ++
 drivers/ntb/Kconfig                     |  11 +
 drivers/ntb/Makefile                    |   3 +
 drivers/ntb/{ntb.c => core.c}           |   0
 drivers/ntb/hw/amd/ntb_hw_amd.c         |  10 +-
 drivers/ntb/hw/intel/ntb_hw_gen3.c      |   6 +-
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c  |  82 +++---
 drivers/ntb/msi.c                       | 415 ++++++++++++++++++++++++++++++
 drivers/ntb/ntb_transport.c             | 170 ++++++++++++-
 drivers/ntb/test/Kconfig                |   9 +
 drivers/ntb/test/Makefile               |   1 +
 drivers/ntb/test/ntb_msi_test.c         | 433 ++++++++++++++++++++++++++++++++
 drivers/ntb/test/ntb_perf.c             |  14 +-
 drivers/pci/msi.c                       |  54 +++-
 drivers/pci/switch/switchtec.c          |  12 +-
 include/linux/msi.h                     |   8 +
 include/linux/ntb.h                     | 200 ++++++++++++++-
 include/linux/pci.h                     |   9 +
 tools/testing/selftests/ntb/ntb_test.sh |  54 +++-
 19 files changed, 1458 insertions(+), 60 deletions(-)
 rename drivers/ntb/{ntb.c => core.c} (100%)
 create mode 100644 drivers/ntb/msi.c
 create mode 100644 drivers/ntb/test/ntb_msi_test.c

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190718201718.GA20276%40graymalkin.
For more options, visit https://groups.google.com/d/optout.
