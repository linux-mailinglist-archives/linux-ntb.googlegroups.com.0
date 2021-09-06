Return-Path: <linux-ntb+bncBCS4BDN7YUCRBIVP3GEQMGQEWVCAJHY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9F9401F64
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Sep 2021 20:02:11 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id i11-20020a9d53cb000000b00538e5ca17d6sf4774475oth.18
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Sep 2021 11:02:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630951330; cv=pass;
        d=google.com; s=arc-20160816;
        b=O5lD9Yrlr3SJ0nlGntdCnsDP339ofasI+yoGmIQCVE2Feyjqp0nn5GEm3AeaAgPCkv
         vixpTN09DOyTYJFo2cbmNqcGN3waRlRD+trQ49ORcDzkteqQm3UvIIv0RckggXDKngej
         HBjs8E/LTfz3Y+ZyKmFgPdh90Vzhk5IpZKVUnfwyvSb7RH0aBrJ82UEi8aTJYyVIJYdc
         fGZGAC3GAsBgN74gaEgbqO+QnrmZMkAJh8DmqBTrYEBeyUxodFiaeMgqgZn91vZmjPs1
         7tRrs0GpssO4IpCW3YdsOLfcgwBcZYQQXcp7g7If/7moOrrR2/hV9DyHCdSDpcml4CH8
         c3KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=tIqOENPq6xphbWV5yAPm7SGIgw04dkqBRjg1fDkvllg=;
        b=M1FzeNttIn2t3Mht16nTaV1JFdu7YEETd7B3WUplBAbca+JlZoR61vuIwRyh5M67rE
         YO/lCLHZula/QKFR0zWsJbGuwgCcu7Fsh+Trd3HVzp26RAdMDOPu3aggzGStVMGW40ds
         YQkLJy5ep3z31UVmKx7f0NybcLruA1y5qFydkJ89C+l2unWSxHMLCXyMYUhK80CEWcnW
         fkiv1isNS+tzOq2jAPmaZi+uApqT/aqpUUvATuFrCcvwHssyfZObXVbMyiWj/LkwHSgR
         MFencZu4h731obSWE27IcK3OjMUOTieB/68B4osYyyckO+P5k8bH0CPYZYLEckin9SzR
         7yTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=Dolg4Jol;
       spf=neutral (google.com: 2607:f8b0:4864:20::f2b is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tIqOENPq6xphbWV5yAPm7SGIgw04dkqBRjg1fDkvllg=;
        b=pxggyTecKjCW+XqhQrq6k1fj7gqljFJsyhUfUe4TDZBmjbCKm5sO7oB+yNx2p3kNnk
         sY5asNE/0sCinMCyxx3Nwh1SYndwPPgZzwkruKdF6o2rL6LYWTIa7lML9ET8SkYFLtfQ
         l8bUyf3geoRTVD8WbM3Uzzy2dZCwG69qHOiTdwc6882ilxTO0GNwOOMdz7mvzz6eKk6u
         nT5IGAjPPixonroYZak2GD6ySiJ3d3/3oxfxSoPoxJ0EdfC3d0g/IChBUAZr4Vqq+56K
         6/OuJO9MT4zgRP/zeGfxOvHTlKUQ+H1DSV1posvUlo7qfTHnOx9+pciC9l6z4cpCdqY4
         1Z7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tIqOENPq6xphbWV5yAPm7SGIgw04dkqBRjg1fDkvllg=;
        b=so6D4YG3RbegPgZuw+O9xz36/JFIj4XNHsyqpEYABmxhUHlze3/b0q4o2sCQfJjnpc
         OZCO4XTqCYDmE/L50fi/HCB/ANzpa6xtWb3aMeb+CCQJk6YK0qVEB5UKtGmm+0rrGGP+
         +qm6IVL5/elF7TQ3ISULUq5r+pXQnvYQJ0Glwc4CpAEQ0f3xl1rH8c4oHpyJgNOxQBrw
         +Tm/4JEuFngz0KXIP1KCYy7ArqhH1GW7a9o4dwQyXk21lW2BqIPGIi0kDqscN70D+WQr
         enb8TxSg1Fj1p13oWH739QVRNcf6kTfGqBdxKc/q1k1QzkInnOANKpblMCsM4x8iBCDf
         7iKg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533X6WeZRNBf3UfbS+aQiqNoEjG2031GJsP+bG/+EpZ5MSJJzdmT
	1GqboN6l/9on1ahORV0rBzU=
X-Google-Smtp-Source: ABdhPJzhYFSidGUn+3aM3h6jeoFVfHOsYtmeOVeWeMeXPEXjJW5A9/+jFZuGwSIRPz64HD9doYdR5A==
X-Received: by 2002:a9d:4c15:: with SMTP id l21mr12146438otf.311.1630951330504;
        Mon, 06 Sep 2021 11:02:10 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:20d:: with SMTP id l13ls1558513oie.5.gmail; Mon, 06
 Sep 2021 11:02:10 -0700 (PDT)
X-Received: by 2002:aca:ab54:: with SMTP id u81mr284033oie.40.1630951330138;
        Mon, 06 Sep 2021 11:02:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630951330; cv=none;
        d=google.com; s=arc-20160816;
        b=KljiOxD7aRs/bwBy7bHtjfxXLF7ltwQUqA2bhQlysbyEexdgTtYR/MN0MLXi0Dhzi0
         eyhy/lovr3cOsYvqo86+w4YvQhwlcaXxZyfKrBpa9q2WHRZJbd46cT/jnCGMRtBTvxFG
         NnShfYx0oGtYi4/7rDqtuFy9AZu2VERbqhmYicIO4qeB2ixsT+H5wd+VOLSnHtS8vLYU
         NsNum9QbwADxqRHSq6zr2rUS//oPhhKwnEnl+UQXa/+68+mtByE2MV00js/YDlyYl1Gj
         +fmH+B8LUJkRl0vtyUjeQgvs35z/5VCL/shpuUey/ch6N2Uq4o7ukZZS5NHlvdoCOSAT
         /tRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature;
        bh=7QsvEICZ6OB0fLFnC4FGlJhtsxVgGBKEFw5SvTXHfEI=;
        b=Eflii5XthIDx8NOI2evVbbGwQr1vjGD11eFhopWkmY8H8/luwgbt319oGpUm4ZCCpK
         dLGTqEnl8/RwngfjpL5jrVQiKkh7EC/2xguTNb69rCzmrAlhmwQ5VOlawovlDCz4x/lj
         UziK4zSIqiuA2e7p7Uh8MAJtwc91UD5Xip/J+VtbLIY7Lu3rAFJJdLu6BEWxSt/4w0qj
         UfBaukNx/FnejXURz7o2Uqu4xQAkatsG2mEYRYOxmRWd0Vd3G/7hFZmM6an1K2pFif/y
         wWfHitYvX38l4D+rzpVKv4n2/AJyYCaNLc21OWy6eN08PUupaDnT1piBomly4e1ewQT/
         ATSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=Dolg4Jol;
       spf=neutral (google.com: 2607:f8b0:4864:20::f2b is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com. [2607:f8b0:4864:20::f2b])
        by gmr-mx.google.com with ESMTPS id s30si108142oiw.1.2021.09.06.11.02.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 11:02:10 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::f2b is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::f2b;
Received: by mail-qv1-xf2b.google.com with SMTP id 93so4362382qva.7
        for <linux-ntb@googlegroups.com>; Mon, 06 Sep 2021 11:02:10 -0700 (PDT)
X-Received: by 2002:a0c:9010:: with SMTP id o16mr7241792qvo.49.1630951329852;
        Mon, 06 Sep 2021 11:02:09 -0700 (PDT)
Received: from localhost ([2605:a601:a650:b700:5999:364b:aaba:7f89])
        by smtp.gmail.com with ESMTPSA id d129sm7067264qkf.136.2021.09.06.11.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Sep 2021 11:02:09 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
Date: Mon, 6 Sep 2021 14:02:09 -0400
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB bug fixes for v5.15
Message-ID: <20210906180209.GA14486@athena.kudzu.us>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=Dolg4Jol;       spf=neutral (google.com: 2607:f8b0:4864:20::f2b is
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
Here are a few NTB bug fixes for v5.15.  Please consider pulling them.

Thanks,
Jon



The following changes since commit 7d2a07b769330c34b4deabeed939325c77a7ec2f:

  Linux 5.14 (2021-08-29 15:04:50 -0700)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.15

for you to fetch changes up to 38de3afffb7257176978dfa9b3ab67d0c29af95c:

  NTB: switch from 'pci_' to 'dma_' API (2021-09-05 18:08:14 -0400)

----------------------------------------------------------------
Bug fixes and clean-ups for Linux v5.15

----------------------------------------------------------------
Christophe JAILLET (1):
      NTB: switch from 'pci_' to 'dma_' API

Colin Ian King (1):
      ntb: ntb_pingpong: remove redundant initialization of variables msg_data and spad_data

Dave Jiang (1):
      ntb: intel: remove invalid email address in header comment

Yang Li (2):
      NTB: Fix an error code in ntb_msit_probe()
      NTB: perf: Fix an error code in perf_setup_inbuf()

 drivers/ntb/hw/amd/ntb_hw_amd.c     | 12 ++----------
 drivers/ntb/hw/idt/ntb_hw_idt.c     | 15 ++-------------
 drivers/ntb/hw/intel/ntb_hw_gen1.c  | 12 ++----------
 drivers/ntb/hw/intel/ntb_hw_intel.h |  3 ---
 drivers/ntb/test/ntb_msi_test.c     |  4 +++-
 drivers/ntb/test/ntb_perf.c         |  1 +
 drivers/ntb/test/ntb_pingpong.c     |  2 +-
 7 files changed, 11 insertions(+), 38 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210906180209.GA14486%40athena.kudzu.us.
