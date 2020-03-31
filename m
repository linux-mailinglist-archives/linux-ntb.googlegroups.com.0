Return-Path: <linux-ntb+bncBCS4BDN7YUCRBW6CRX2AKGQE3RV7OZI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id EC63E19999B
	for <lists+linux-ntb@lfdr.de>; Tue, 31 Mar 2020 17:27:25 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id l9sf2398153pjq.8
        for <lists+linux-ntb@lfdr.de>; Tue, 31 Mar 2020 08:27:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585668444; cv=pass;
        d=google.com; s=arc-20160816;
        b=L05+/qlCbn94qrv3jzFnhevMVDgoySVjCFL2i7USMjJyD/vO3K+/1yTKRdnC3ZDVVA
         rEjZ+kAyFnMWQp6+guKhNEXKHVrmpZEoYeB71u17/LNBdzbUrt/0JxuEREubkR8wgo3W
         nI38r1rseEDUzTBU2DR+UqRMqE16QtStf1ZsP2UUQrjZvHqWfRw4M14e5NU7zZytM5CR
         bWSAUEVw0DAjIgDXKRIjRts0O2OZyqSaBNPsZwklbEADYRkYRwGqdCHAUYHNB8+cMdag
         U/SlmZhHCVxa2IT8dbcZcVRTvIUkKput+Bl247Nil1DEokr1yITGfpNNqeSrirZWVB1V
         viRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=G+WbqOgEv79DvkPuNKVkV5X3Mo3jlgsOOiWDrQ/Z9Uw=;
        b=DGbBZQQ6DTMUqjtpG06PAQYcbRygOi2Pf2hXD5thdxN63ASKiS7wdkFD0/8WBgRtRO
         t8qrfHRRshL4ih2apL0xi1kIA2bkVPnJ60S5PHkbgOQpuC0tsy4DEzVi8himudwNQYnm
         0nmVsIqqCRUcD7ORACqqSfkUQ7I/QNP1AAtugSmPGfOyZb/VcZyca8qMIDcfi53zyw2h
         9+5IuSE4jEsg/fjYPw4zPPc+aLNBzjndJlMeVqwDbaTYzu/26cOilfBhmx0HT3V7/Snm
         +XAKLNkeCMqfgZQRxoEH0KN0GBrJRagBuGfMg9VOk1gmQ4XqBBagqcg4h/cXQGGemPsT
         2DmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=xvsIaGxn;
       spf=neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G+WbqOgEv79DvkPuNKVkV5X3Mo3jlgsOOiWDrQ/Z9Uw=;
        b=HnVPaXMWi98PUUTkibjaxtF1Dvw6W/083HgI7sZ8G6w/O2nKv0Im5w9ObX0AMuzKcf
         snlpwYCZ9hkyaOapvsg/fHwYZ3xuCPJ6orU4WntCJbdx82+1cCc6mwgBecDDabCnSY+N
         Io1fAfSG9OK8dh81Jd2xYM4d4gRwe/3Griwq67Fxtmm7dm0DOUQOf5t62eTlSNHsv2lT
         cV2ArHAxpSGTY25i+1N++8PEv5uOIKvWiyvy7y3tZwdFusHgzTfMj4APvbihZCiK3QMi
         /0C2x7E/UH4GMWPhQPPcWYn0jLpyGPoHzlN3VYgcIFNDdE+y4BCduPj9m+u1y7ALJr0o
         68Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+WbqOgEv79DvkPuNKVkV5X3Mo3jlgsOOiWDrQ/Z9Uw=;
        b=LFmmw7IwB/lGkDwM5shGUcFb41eETzAAxTMaxvam8RMMH1Q6n/xvP3mHBC8MUfDcbE
         48eFd8UwAlR6jL/PI+5HS17QElp1fqC7XOVUjswUazOBNXnK9zBhr+/n484+LHP1kg5x
         rkYZWmoxx8BIAh3zihLiKCzflmtL6YTPtnECUEgLtnQ5UHsXItHMkEEbAGt5Qb/v2+CC
         9rY8Hu4BXvvZ8guWFMd6GQ2zM4Zwy+b09ngYGuRJmJ1OfOiCI1ZlWJwWTvJlgDgHbNww
         8ybuLTsW5S+CD+KevjOxytJs/gRVH3ogjk0nbV6Gurl4FjAgS90qd03BP1Me1Qx2Ib5L
         lIHQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuY3Yl2jO5HJbeVRnLTwMDC6VsSzPahitw4DXp6AssaOQQEs9vnY
	V6CCEENNOuknKaXIn7DB260=
X-Google-Smtp-Source: APiQypLlxhTOiUku6NbmCSo/j93KAWkguKjPzqAKu59NOOP6U17Gq6FbZIIM7jWUNQmOVS+3x5PT1w==
X-Received: by 2002:a63:5453:: with SMTP id e19mr4522664pgm.96.1585668444063;
        Tue, 31 Mar 2020 08:27:24 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:9308:: with SMTP id p8ls3010179pjo.0.gmail; Tue, 31
 Mar 2020 08:27:23 -0700 (PDT)
X-Received: by 2002:a17:90b:1985:: with SMTP id mv5mr4699540pjb.69.1585668443605;
        Tue, 31 Mar 2020 08:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585668443; cv=none;
        d=google.com; s=arc-20160816;
        b=N8GV5jDNdr6FVzi1WwlODHUkDPjYdwR1YO041V6MvBHOozP8OhDIqicxa1jrg+Gg7I
         7E51/f/YtmFOkJR4PqQAdToOJ3VsBP0Eu6VTAWX48iZXnAe1RYlcssGHYEwDg3BFOUEW
         XyJHVTM8JslMnStvlIwo8zzrkHjmTIP/tw3Zio5B/D0x6aTv5tUrHivay9rPSq3F6BrG
         n5ZFzah7ktmYgQI/b/x6cOfdHXOQg6tfSu8OI70S1L1vedlwtp8GNDRRFRuLnawK5idq
         pi5McQWKH2vFYVKmUSHhpeV1fM7oOFLVWaeN12GKgkjHKqMJuT7+UwgQDNNqfn4bI7/8
         8ycw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature;
        bh=VFmTu4uYulpUU5in51vToheYdVlAq1Y7eqMyGwDEhI8=;
        b=zNVtCZPiIppye1pQj8YNp4Muzfuce8Ypl93ue6NIh7Ee6JQPbV9wNpcysVSNCgCOJB
         n22HxMlodrd8gVRWtswtYrnpDES+d28tdl4tiElY1rSJepf48iozfcGSRp51YuR8bt3C
         BC7mIY4F363ZfVWknAmpGYouxikX7SPEAZdgZjhPJf1qmw6BetwOBmw+/4IYE0YHGsyn
         2pPUEyRc8E7xZKVVJ6kXIQL5DDyl/iPCknC0etFvfdhbBqwgL7tu61CWXUIrKaWlJkrN
         Y/jsIvYBJyBdKJN6zhFORGTFk9qPnIyfAU2w9CAhrFw9SJ5t8v4tvnsdM8nS0lnT95aN
         p6Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=xvsIaGxn;
       spf=neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id u14si222734pjn.2.2020.03.31.08.27.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 08:27:23 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id c9so18640119qtw.7
        for <linux-ntb@googlegroups.com>; Tue, 31 Mar 2020 08:27:23 -0700 (PDT)
X-Received: by 2002:ac8:3072:: with SMTP id g47mr5590057qte.278.1585668442641;
        Tue, 31 Mar 2020 08:27:22 -0700 (PDT)
Received: from localhost ([2605:a601:a664:2e00:9c27:5ab0:8441:9150])
        by smtp.gmail.com with ESMTPSA id r29sm14079899qtj.76.2020.03.31.08.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 08:27:22 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 31 Mar 2020 11:27:21 -0400
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB bug fixes for v5.7
Message-ID: <20200331152721.GA1719@athena.kudzu.us>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=xvsIaGxn;       spf=neutral (google.com: 2607:f8b0:4864:20::843 is
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
Here are a few NTB bug fixes and AMD NTB driver changes for v5.7.  Please consider pulling them.

Thanks,
Jon



The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.7

for you to fetch changes up to b350f0a3eb264962caefeb892af56c1b727ee03f:

  NTB: add pci shutdown handler for AMD NTB (2020-03-13 10:04:20 -0400)

----------------------------------------------------------------
Bug fixes for a few printing issues, link status detection bug on AMD
hardware, and a DMA address issue with ntb_perf.  Also, large series of
AMD NTB patches.

----------------------------------------------------------------
Alexander Fomichev (1):
      ntb_hw_switchtec: Fix ntb_mw_clear_trans error if size == 0

Arindam Nath (15):
      NTB: Fix access to link status and control register
      NTB: clear interrupt status register
      NTB: Enable link up and down event notification
      NTB: define a new function to get link status
      NTB: return the side info status from amd_poll_link
      NTB: set peer_sta within event handler itself
      NTB: remove handling of peer_sta from amd_link_is_up
      NTB: handle link down event correctly
      NTB: handle link up, D0 and D3 events correctly
      NTB: move ntb_ctrl handling to init and deinit
      NTB: add helper functions to set and clear sideinfo
      NTB: return link up status correctly for PRI and SEC
      NTB: remove redundant setting of DB valid mask
      NTB: send DB event when driver is loaded or un-loaded
      NTB: add pci shutdown handler for AMD NTB

Helge Deller (1):
      ntb_tool: Fix printk format

Jiasen Lin (2):
      NTB: Fix an error in get link status
      NTB: ntb_perf: Fix address err in perf_copy_chunk

Sanjay R Mehta (1):
      MAINTAINERS: update maintainer list for AMD NTB driver

Takashi Iwai (1):
      NTB: ntb_transport: Use scnprintf() for avoiding potential buffer overflow

 MAINTAINERS                            |   1 +
 drivers/ntb/hw/amd/ntb_hw_amd.c        | 290 +++++++++++++++++++++++++++------
 drivers/ntb/hw/amd/ntb_hw_amd.h        |   8 +-
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c |   2 +-
 drivers/ntb/ntb_transport.c            |  58 +++----
 drivers/ntb/test/ntb_perf.c            |  57 +++++--
 drivers/ntb/test/ntb_tool.c            |  14 +-
 7 files changed, 332 insertions(+), 98 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200331152721.GA1719%40athena.kudzu.us.
