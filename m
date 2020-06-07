Return-Path: <linux-ntb+bncBCS4BDN7YUCRBZ5X6T3AKGQEA55T5QA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8104F1F0D38
	for <lists+linux-ntb@lfdr.de>; Sun,  7 Jun 2020 18:55:04 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id l19sf6283827iol.5
        for <lists+linux-ntb@lfdr.de>; Sun, 07 Jun 2020 09:55:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591548903; cv=pass;
        d=google.com; s=arc-20160816;
        b=gvM5Zu3vuKk0WcIjNk0xB0aUm43MrUnftnPwY2G1su+kaUmg/AOMcXSfelENXQz8ke
         31IgmSuq7BAtrKhwsYEGqKmRgwo+cx1mBrk8NMeV38Ux2liY8JIfF4yfI45fSdZ541Vj
         irEg7SHBEmqKo2rOss2Bor3G5MrONwLLPvn8aNQEokUpMoDhxAQfEOMlnQgHPtFh3he6
         Kre4enLdG94sXUw+UkamSzfobJ7KFs1VEKDpA38e0y/N6EaHFACc1pfyVYy8FsZ61rTY
         uQ7z/wWRp7NLyZ0L3q2dRzMEKtQZ5/ATUJrQ02enYXivusj5g546NeXopUlIkZR8giKk
         +Bkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=W7r5NYUcI+gYFX5speYVhzAjYq9lvqKbNxWE+EgQMi8=;
        b=yrLOJl7R+duQLXaQFwQR1KlRHwJJ2S2xcDdrQVpPguRHYa+kZjWKZAUN7uxH7/EtN4
         6hLEK9g/vW3ASN6ySmercjdsAWSY268omPoBAGKO/XltuFXefoOoAnuS40eJyAqGUBIu
         qF6YQS5s/bL2qK0W4DljYISuWFG0u2l5PPQOR+j6g5OO4pb09Ny3ljgmH/RuDZYnQqMR
         E9pJTW75ALcVmZBVib8FsDfq/CuOiI/LrzU/lSd5dBpwQcZyxzrsPP0COjDvKEPFZbsx
         2vm/xYe7NXGyph6Ac+BpMWQCYycdSmS9FIxY4QJQwNWQ3JArbO/ooNqDKZjAsg2MartN
         Sgow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="go8R/K04";
       spf=neutral (google.com: 2607:f8b0:4864:20::744 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W7r5NYUcI+gYFX5speYVhzAjYq9lvqKbNxWE+EgQMi8=;
        b=SVyTqpzQW3aWEpDUgiQlud17zsJDrEUlZedQ0cU9/Dm2jL6YC9KR7gkiAs7l4Qb89D
         6lMcTUZ5RPxs3op1WV+1FQJERxauoIHCbiBiaN87Zm7siZQNLhe1ZcEojIZLB5h7AV1+
         m9riA+z2MvN0Ix8iIrglSh52rpT471FDayAtaIjsBUPebGVA26wZ/USRbl+5JOcQg0vV
         oZNmM3v8XGoeHlJR4WEU+j6YiDtKvaNLQ98KoRw4L3TuO0v1imDrg9QQlj8/5qXLDMHJ
         Tr/RZol7PyUyONwZKdj4UJ1U+Xp6S9+2KMv7uNHO3iaMI8CSSzU3oIteVyCdtvsWvKyS
         Zupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W7r5NYUcI+gYFX5speYVhzAjYq9lvqKbNxWE+EgQMi8=;
        b=ptWsHab88fN7bKiF4SR/KviR0YXUCzO+5zG33So4xFc0m1SyqgkdaJ1fRXHQkK54HZ
         0RBRqXNL+BvRXLR+rsveY81pVtOaZnLaEihsxCHSpSjvA7zSJebxchBEATy9FaNo17F8
         U22Jb5KtM11HV0uE0n37eoroi1R+qnMbJiPyMZtW8BixmTDOKb7tcUdOqQaR6qxcrcKH
         6Qrq5m+Hc8rfPEBBCsGxyOMu1k3u+zJ03yOYW1jHTTbb6olE8b7d2vEXC5RlJMAIuqai
         rIax5cUvMiqnejqdDsjxp18oPCkTReHtfUgtJ30/CqzoRoZF6R6I0PA+8xdx4V0FZ1zJ
         spmQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532QA2XcolYFv3iRVHshRV0sbd91DBDitOC6T5OIL1ICI7MuXdFt
	6Q5AIyJm6YxtYOonw1b3DtY=
X-Google-Smtp-Source: ABdhPJy0Rn6e8Fp95780QHAQEsPK3HCKxzbEvuEKL8vBtBjdqNnzVbkoZ106fj5qttTHsu0liD9YmQ==
X-Received: by 2002:a92:cc0c:: with SMTP id s12mr18588878ilp.192.1591548903220;
        Sun, 07 Jun 2020 09:55:03 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:1bc3:: with SMTP id f64ls2736504ill.1.gmail; Sun, 07 Jun
 2020 09:55:02 -0700 (PDT)
X-Received: by 2002:a92:9f4b:: with SMTP id u72mr18342873ili.273.1591548902855;
        Sun, 07 Jun 2020 09:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591548902; cv=none;
        d=google.com; s=arc-20160816;
        b=MopjIGqYCLBE4pz5VV3JXp+A0PTgoK30eiamulgmsFcyFb9EaBLLvQFY0Du8DJn3Kg
         h+0kpdrjw1i/UkwSchYoMAFdmTqNrZtAirzSsPlfHfBMyGQuqWzV0nTHYcmcio4ge/xU
         a4zMnDoVhTwy7JSfHdASXAadTjyxxqzwdYSv7C5jTTaAW3ZCzgI2HU6i+fpJObme/dwN
         1Mk7lS6QcnnaDLwCcjU8JUUnVdQYPyWOE4P5gAOVSyuDjpIBzMSIQc+kLlxp0pdrpTWW
         viqRSTJw4NIIxtJqpBkv4Utw5BolsQI8vT6Ui9lwx+cOeb3Zkm4+YKooOmuApO3oLgxp
         +9rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature;
        bh=m6WtQLhR0r/W4r5T3VW54q3AlLZTnBXeKgOtgipjTig=;
        b=MCZamwSSvVCXOCGazJLaOzVs/38WvfvRgAlhy8Tmx4MxY/bQjgmxajcM6M6e6RNvZI
         lBlt8AtLApHbIc9UD2k1fbI19VLE+vt5cwO2W+yk00XxQNyhU8QpXuwT1BK29KVFjGVc
         mOC701yBn6BbXjh00CnA/jGGnqp73wvqxo/fGlwQEOWTUpDVVinmyh3TqcqBkORmaAy5
         xh+1mJvptzRfxUAwzOaoXuxFD2DKYJAIkHKxqyus9C9VyuNQENFcYQg1XM2dVCB/ymhG
         whUSyfhnUh+5ZX84ngj42d4PnpaN1wRc9bfnDOKPZi1G/Shea/P3K1EoZTZHX27cS85U
         Nd0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="go8R/K04";
       spf=neutral (google.com: 2607:f8b0:4864:20::744 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id x10si603953ila.3.2020.06.07.09.55.02
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2020 09:55:02 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::744 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id b27so15019556qka.4
        for <linux-ntb@googlegroups.com>; Sun, 07 Jun 2020 09:55:02 -0700 (PDT)
X-Received: by 2002:a37:b444:: with SMTP id d65mr18800554qkf.411.1591548902254;
        Sun, 07 Jun 2020 09:55:02 -0700 (PDT)
Received: from localhost ([2605:a601:a61a:4700:f53d:f961:b0d3:6284])
        by smtp.gmail.com with ESMTPSA id w10sm5652552qtc.15.2020.06.07.09.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2020 09:55:01 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
Date: Sun, 7 Jun 2020 12:55:01 -0400
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB patches for v5.8
Message-ID: <20200607165501.GA7336@athena.kudzu.us>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b="go8R/K04";       spf=neutral (google.com: 2607:f8b0:4864:20::744 is
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
Here are a lot of NTB bug fixes and Intel Icelake for v5.8.  Please
consider pulling them.

Thanks,
Jon



The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.8

for you to fetch changes up to 2130c0ba69d69bb21f5c52787f2587db00d13d8a:

  NTB: ntb_test: Fix bug when counting remote files (2020-06-05 20:02:09 -0400)

----------------------------------------------------------------
Intel Icelake NTB support, Intel driver bug fixes, and lots of bug fixes
for ntb tests

----------------------------------------------------------------
Dave Jiang (3):
      ntb: intel: Add Icelake (gen4) support for Intel NTB
      ntb: intel: add hw workaround for NTB BAR alignment
      ntb: intel: fix static declaration

Jiasen Lin (1):
      NTB: Fix static check warning in perf_clear_test

Logan Gunthorpe (9):
      ntb: hw: remove the code that sets the DMA mask
      NTB: ntb_tool: reading the link file should not end in a NULL byte
      NTB: Revert the change to use the NTB device dev for DMA allocations
      NTB: Fix the default port and peer numbers for legacy drivers
      NTB: ntb_pingpong: Choose doorbells based on port number
      NTB: perf: Don't require one more memory window than number of peers
      NTB: perf: Fix support for hardware that doesn't have port numbers
      NTB: perf: Fix race condition when run with ntb_test
      NTB: ntb_test: Fix bug when counting remote files

Maciej Grochowski (1):
      include/ntb: Fix typo in ntb_unregister_device description

Sanjay R Mehta (4):
      ntb_perf: pass correct struct device to dma_alloc_coherent
      ntb_tool: pass correct struct device to dma_alloc_coherent
      ntb_perf: increase sleep time from one milli sec to one sec
      ntb_perf: avoid false dma unmap of destination address

Wesley Sheng (1):
      NTB: correct ntb_peer_spad_addr and ntb_peer_spad_read comment typos

 drivers/ntb/core.c                      |   9 +-
 drivers/ntb/hw/amd/ntb_hw_amd.c         |   4 -
 drivers/ntb/hw/idt/ntb_hw_idt.c         |   6 -
 drivers/ntb/hw/intel/Makefile           |   2 +-
 drivers/ntb/hw/intel/ntb_hw_gen1.c      |  49 +--
 drivers/ntb/hw/intel/ntb_hw_gen1.h      |   1 +
 drivers/ntb/hw/intel/ntb_hw_gen3.c      |  13 +-
 drivers/ntb/hw/intel/ntb_hw_gen3.h      |   8 +
 drivers/ntb/hw/intel/ntb_hw_gen4.c      | 552 ++++++++++++++++++++++++++++++++
 drivers/ntb/hw/intel/ntb_hw_gen4.h      | 100 ++++++
 drivers/ntb/hw/intel/ntb_hw_intel.h     |  12 +
 drivers/ntb/test/ntb_perf.c             |  49 +--
 drivers/ntb/test/ntb_pingpong.c         |  14 +-
 drivers/ntb/test/ntb_tool.c             |   9 +-
 include/linux/ntb.h                     |   6 +-
 tools/testing/selftests/ntb/ntb_test.sh |   2 +-
 16 files changed, 751 insertions(+), 85 deletions(-)
 create mode 100644 drivers/ntb/hw/intel/ntb_hw_gen4.c
 create mode 100644 drivers/ntb/hw/intel/ntb_hw_gen4.h

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200607165501.GA7336%40athena.kudzu.us.
