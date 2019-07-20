Return-Path: <linux-ntb+bncBCS4BDN7YUCRBCE5Z3UQKGQEVCIKUKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3952C6F0DC
	for <lists+linux-ntb@lfdr.de>; Sat, 20 Jul 2019 23:58:34 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id h3sf38903449iob.20
        for <lists+linux-ntb@lfdr.de>; Sat, 20 Jul 2019 14:58:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563659912; cv=pass;
        d=google.com; s=arc-20160816;
        b=geRgkxhfHIVP/Zaf9HKC1BBr/tx7MjyTZd7Z1Q0FUcZNXQp/ZLczj5q9drT2oA0QTZ
         7QlIfw7h1UMbi6BwX2WxOd52keF/f3GGVBILGwhrCRldlZLxk/sKLi4Gi2YV2RMwimB+
         ni7FBGsC30RdWlMIqPRbtbVGVYjYZ6Ux1Xjr1YnK8OmSn+vpcZ0WkxmC4mSrWzDqAx2s
         cyJU1QUU03OalP1/uhyyTW6l9W4KqBhopIAoH8wMlHVVm/LVa8tQNNmPjD1UYkN6JJrJ
         ig9ej+EGMQwfVMJmLQID3FM0fgNwq72iPA2QIXVoEbN+QmNGoK80FzhTRpCkYRiwwCxZ
         wDIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=Jcgn8MZsYOHMGQRIn/QU7kDGCixgvf+4WEJmxBrkCS8=;
        b=GfnGdrXly8M0W7zREbBddRuV7/S9O8RQiv9yg3VanZTHendCXIMzYweyVYRO2paWaG
         2pyfA9J23l4iRVsuhm/KGuEwgdbOcORAg8Vrlz42U6tgUkQExekMf6F7uUEMy981unRC
         thSPnkbA+VVzd+LuDDqDQaXWjOApsRwdCHfdStVx59E6rk8NtGwMOeuch8LHWHVvEDD+
         bj0Mmwm1gRwRtg42Vgy5Dq+Ssqa58aP6wyw9FjUETHOuRjF9xzsghAMDNyAdr0o8f4fT
         O6vYvzBhpnPTnfIFx77utgjgDHXLcW5YNZbRVbUZBya/nCVipWHXKOs6nkh9czVBW5kw
         uZCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="yEv/5vlp";
       spf=neutral (google.com: 2607:f8b0:4864:20::c44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jcgn8MZsYOHMGQRIn/QU7kDGCixgvf+4WEJmxBrkCS8=;
        b=PY2o7/RD5DgQzxcqzFu3fN4OaSs+KUXALjvA+6avon4jXxg57uEZg+irvnwlNlTbSi
         +JknQs2xI765HnJtG2blc1LgxlNmeNhWs6NBYtj/311Lza3SX6Tf7pXbdahFGJlIxICW
         4jv5eaquFWq+zgKzEx3X9fshhyR4BssgmvSY6ZZqbEO7CBlJnez4zZ09+0WxbKFecInN
         Ftpy18atbjwSej41F/N1Qg2Cezw/rqWGz7gByX87cQhD380OcGl6/0ySNSrfGJ7akRsO
         N0sDkq0Ct7pNVgQzoZoLJZsuWFA2eFt2TcCwXSmD5Nvhs0VoHMtYF1weCYI63pj7O5hZ
         qXsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jcgn8MZsYOHMGQRIn/QU7kDGCixgvf+4WEJmxBrkCS8=;
        b=b61xI0JC+xJMv+Y3YIiDDtDsgjiJDDTv6rIos5JG/7ASdxkEODa+NbJsQWGgf4JCCh
         xFplFGTLl9ZIiufQG2IErwv5Dl7R+BjuZ6mh/hFtcYnHCwtlaEHnY+JpRkuNzej/dPvm
         stM6fFHxIbYEkeBtY3i3TS0SN9Cc4IORvhQZ79QVo+HN8Di79xErxprkfs1uhaI9cJIO
         Itvdds6G5uIl7kq1xRV0AQREG2Q84gN9NZTqEOYlA+1PLnlDDPJi8RbqNPYhEyHunRpv
         zCQxSWP35/8b0t3t3FFB05g17h96dlPQlvly55Xbe/ktg7hvxXqheZt6bida1iBrPhcn
         apSw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAW0VuYce4BvCZKtcFjJYTOUCrnPvaYC1gZbfZkC5WQnToPJHOdr
	9UPTaJQZ9BlJ66F0zmgg0p0=
X-Google-Smtp-Source: APXvYqy5od3qOlH2tPJ241kXLOC2EcHqUm4CzGMr4H+LEPvWSKwlHd79mbG8MpThcIuyym6Iyi0jBg==
X-Received: by 2002:a02:340d:: with SMTP id x13mr64000333jae.125.1563659912706;
        Sat, 20 Jul 2019 14:58:32 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:18d:: with SMTP id m13ls9250005ioo.7.gmail; Sat, 20
 Jul 2019 14:58:32 -0700 (PDT)
X-Received: by 2002:a6b:6a01:: with SMTP id x1mr17534815iog.77.1563659912355;
        Sat, 20 Jul 2019 14:58:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563659912; cv=none;
        d=google.com; s=arc-20160816;
        b=NXaosgIEIxWv5cFtmcQvIQWF1gyxg7PZZhBMBiti0BMmTINZxiwWgkzyJCRS1irErh
         xMjUsp/QoPvR1LokqqwIQJ5YUcZCZw4GvJHeMsrzwr2ADHOeeH0C4UEwpgkPxzz3mUE9
         uyxJRRn3OROsGowa7MsgA117c93fizZQRSn8hL26AAsdiNOCTdPxgFiu6SDq1+IabglX
         ST5bN0cS1EAX71ZLW8YTxS0U7U2VYE8Ty47TDEgqCF+J89hEZbB6Bd2hmEmTeYykKrHI
         4iX6Pv2vyl3UJZLRHJ3kXbs3ZITyQSQS+YFNKQQ5qYXL2P4z+fjLM0g4GZ0f/Ayzc6Uf
         Rk6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature;
        bh=7ukW3xU7Dcdw07hb7w1OwbyME2bLJbeEEY9buEId9ZI=;
        b=Nu815x9sEAMnOKneMjrfmOTdmHiuWTnOu5HnzwKrka1I5DZq1tASmEAXPZ5U94JpnV
         CzNNRtKrUa9RI9xIyBFSt/W6c8Eq4UBzl0dxwh5Z0xSaLUNpgy9UjA2Sj5cY4oo1pwsU
         MolJck9hJgHYRrzNDyPyQ3cNnh74I7yZGWxvMwHd7XUz8uk5neeRB1zq//uwh75OAdA5
         HouEvvVFKen4v8pTu3XQWk8e3AHgisIuUOppYZe3JqbPgsr8X0+bdAbWGEEvIqBZD5fy
         MUceC31t5WH2Gua3W0FuR94zH9CGwcZs5YHhpOWCvMWzTpopXvpt9LDxp9Im02FJ3vdJ
         jiDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="yEv/5vlp";
       spf=neutral (google.com: 2607:f8b0:4864:20::c44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com. [2607:f8b0:4864:20::c44])
        by gmr-mx.google.com with ESMTPS id t12si1304239iol.0.2019.07.20.14.58.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Jul 2019 14:58:32 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::c44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::c44;
Received: by mail-yw1-xc44.google.com with SMTP id i138so14658066ywg.8
        for <linux-ntb@googlegroups.com>; Sat, 20 Jul 2019 14:58:32 -0700 (PDT)
X-Received: by 2002:a0d:dd01:: with SMTP id g1mr37007514ywe.482.1563659911682;
        Sat, 20 Jul 2019 14:58:31 -0700 (PDT)
Received: from graymalkin (76-230-155-4.lightspeed.rlghnc.sbcglobal.net. [76.230.155.4])
        by smtp.gmail.com with ESMTPSA id q13sm7814780ywj.61.2019.07.20.14.58.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 20 Jul 2019 14:58:31 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
Received: by graymalkin (sSMTP sendmail emulation); Sat, 20 Jul 2019 17:58:29 -0400
Date: Sat, 20 Jul 2019 17:58:29 -0400
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB changes for v5.3
Message-ID: <20190720215829.GA10213@graymalkin>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b="yEv/5vlp";       spf=neutral (google.com: 2607:f8b0:4864:20::c44 is
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
Here are the NTB changes for v5.3.  The big change is adding the virtual
MSI interface for NTB (reviewed and acked by Bjorn).  Also, there are
some bug fixes.  Please consider pulling them.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190720215829.GA10213%40graymalkin.
