Return-Path: <linux-ntb+bncBCS4BDN7YUCRBVHQSCHQMGQEGXAPUMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7711548FD98
	for <lists+linux-ntb@lfdr.de>; Sun, 16 Jan 2022 16:23:02 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id x13-20020a056e021bcd00b002b7f0aa0034sf8568152ilv.17
        for <lists+linux-ntb@lfdr.de>; Sun, 16 Jan 2022 07:23:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1642346581; cv=pass;
        d=google.com; s=arc-20160816;
        b=RaDNudg+Kuzi0PxiGIrzLMQhPOL6Yn0eSZ6ZOqo1EAYLSsfGHzU2GriAK9AJPzrO9S
         EaXnuUvUoiGf7B7Dfp3WVbsIE0sYeDDW6dcPihGz5NbqW9cg1k4AS51OM+C6bJWxLp1I
         g3HRa8zXbRJgdv78Bm7zQz4TVkVovZ7QiM6RSJI6KT5byp0fxLC3lpUUu4cR1TnSoRW9
         TBJWOGarXRzGwCMNh2sIwLS99kWMV9drsYHJ6E2Vpbk0+B9ZT2z/6fY+nO5es3/cBH1D
         4zXM81OG+gI6RfcZOvM5dHNlI7WMNpEoJHil/SGfkpRlKgtR/A/vahTE711SvaaHSLqe
         DJ2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=qmqlw+QVucnzljdDib/PWmiXOO1r7q8bJKNhd8dR1i0=;
        b=dIq5CobhTbwksPC4fHlp9O1XmS82omiISNsJn1+TXB6gtEz0dD/DnAUZ/BnSXZ7vDV
         J9crhS1NKhQNxAhvCLyqOgaGI64NeBijp8kBVf8nZzOq5mk4zORtcZZH9n8gjNOkteWv
         nB7U2iqAWpldbssh/rvHLaRvuC+hRAImwDmXheO1kqBs6ZRI/LpCTyTl6K4acBipTVC9
         TnOTPQMDqJR9Ara1bE/dYVLd52q69ITzf6Y+Gu2tYbtRDSqc2nJPvONpFuXo6ItQE0lV
         yJlrsPtAI5GuulkxSuKGcuGgmqvlnDwd3mco9CsCLLK4Ch1RIqSMqw2JXCxAZRfQgPso
         tj7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=PEPDk2JL;
       spf=neutral (google.com: 2607:f8b0:4864:20::f34 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qmqlw+QVucnzljdDib/PWmiXOO1r7q8bJKNhd8dR1i0=;
        b=Z4ebo0KiSRtAJjIZ3ZLK/CY+eyz/BwUVi7yNB2TRPOM+VDOv2/06sim/iLNC5Qd+T6
         q5KEFqRWxLk27jBAnMCTG8nPEuveaSAo9et6w44hjM32cSLPRXVrVmSvSOBsHpJz2Uyv
         XANN7wl5sIzmVkZ+vB51WK1wk/KQcJGqh7fmSEyYrNSJ/7Xg9UqCBN9VX9UgjgHWn2YP
         WUTq/nMmti3g9r/8Sj2A2IfjlPmyVPy67He4/Eje2yieeQKFPSUbgjvHZc09l7P3UuWM
         FEGD5tRWfRA7j3iCI6myY5M5wx/K2P4ZfUDhm54LrGVDFPFXhPeYrpxA/nsXNqaULGni
         pInw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qmqlw+QVucnzljdDib/PWmiXOO1r7q8bJKNhd8dR1i0=;
        b=nyRWc/OKzznHf3kH96+ckG/3u4FRtuqomreCgcHwX0TW0Mp8rlzArW7kz863wtH9wz
         W73DZlVw18pEs4nXxifKwCYS0SRgG/NljCjV7odxJF/okWhWaYxNs0WRkuOrWiaNAe37
         h6KCzkkNcQZRAa5BmfY9h5s0jwTwcnWpDO59BwxZFXWkHaJeHiAN8KZsDusXEVmgVSh7
         AxTt91jDMIi41LYsu12FLaa2j3FBJz+ZEXA2p7Q3QRz0pmQXajlv84W13D/w+YTrJy8C
         3WhteINEZWUsQkYAMM7YrXJMnZ3lzZlnebA4XC5uCWQIImTaDuhZiVSwtAkmwCl1J/yl
         sZRA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531Prsp00v/EfjsnCbplEj+QlDtzzAyEzmeLkS5fyGAfEB0e+C4K
	Ru/1IaG+jTh++kpVDrZt6Js=
X-Google-Smtp-Source: ABdhPJwgomAjyxpKlcSXA9ddAS3AZLSnCdrwtJ2iNDCF2E18w4zH4TtuEiH2JTsOMfz8l8lNUUkOIw==
X-Received: by 2002:a05:6e02:1a86:: with SMTP id k6mr8966464ilv.166.1642346581045;
        Sun, 16 Jan 2022 07:23:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:3410:: with SMTP id n16ls86122ioz.0.gmail; Sun, 16
 Jan 2022 07:23:00 -0800 (PST)
X-Received: by 2002:a05:6602:29d0:: with SMTP id z16mr8171445ioq.122.1642346580575;
        Sun, 16 Jan 2022 07:23:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1642346580; cv=none;
        d=google.com; s=arc-20160816;
        b=AKj2fdd/9dAUYG5prLReDWN4IHEgBAGMeSBms6sIaL5fqqilxz6adyR8LZHMbx3fBd
         uk4GpyKN8l/5oHYhSWG/KCMA7lnlx9+V62Y8+RzO0yvXHWC4na7+M/EF3IKlVUKcyBZn
         Es27zXqDmmflWNzo/0PMHoWrRZUqZau4n2BNzllItSlhYCeHeUPqCpgd8ee05eX4d2Xn
         Clzy6EnX6GmMNKhMM2U3LK0YfRaadj05R/kNS87zCWMNNNwZFaXwF3elMn/+UMgZfgzI
         ZvPnYdUDcHYhdfVsocqDWpxVFNzSDetVeSDb0uo0NGN2Bd/ES1qBR/BOU8MVIZ9ohOoN
         d/zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:date:from
         :dkim-signature;
        bh=0+19Hzm1LKlWTdEcIqV6bZl7E8816hmTBnOSIqiFrLg=;
        b=v/hH8njDaiMQQ0GV2DImnUb768SEdErLMHokyIK54kc+1g1D2ncMGM4UiwcsJKWld+
         mxL2zH9ngsFy7db15eCD9ousRpR+wfU/G2laQxNIVuwQlptFH8pN8OkXLGjOFCpB9p0Z
         uUATru9AGT6xYxrQrpQuafEfphJiphntW3BijJj0LmRH5kDo0xN+Jh2RoU8nkrqddOxs
         B85A5lK1GHOBkdrbPZpr/IzaRU+XGzP3WkfuuksEfMcrkZBxUra2/T9ffEIfnVz9n2U8
         pvKQMGe3JX7A0Mz3g4y9/QiUBww9Q/7aFObie4CVPeWlNo6h0qcox7u0jCcOtq0sIb/7
         Pr8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=PEPDk2JL;
       spf=neutral (google.com: 2607:f8b0:4864:20::f34 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com. [2607:f8b0:4864:20::f34])
        by gmr-mx.google.com with ESMTPS id 8926c6da1cb9f-301a18e3cadsi663211173.4.2022.01.16.07.23.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Jan 2022 07:23:00 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::f34 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::f34;
Received: by mail-qv1-xf34.google.com with SMTP id kl12so15545831qvb.5
        for <linux-ntb@googlegroups.com>; Sun, 16 Jan 2022 07:23:00 -0800 (PST)
X-Received: by 2002:a05:6214:ca3:: with SMTP id s3mr12750848qvs.9.1642346580035;
        Sun, 16 Jan 2022 07:23:00 -0800 (PST)
Received: from localhost ([2605:a601:a63c:b500:5f7b:d189:347c:3a5a])
        by smtp.gmail.com with ESMTPSA id bs34sm7198733qkb.57.2022.01.16.07.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jan 2022 07:22:59 -0800 (PST)
From: Jon Mason <jdmason@kudzu.us>
Date: Sun, 16 Jan 2022 10:22:59 -0500
To: torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: [GIT PULL] NTB bug fixes for vv5.17
Message-ID: <YeQ4Uz9mNkff+ypm@n00b.kudzu.us>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=PEPDk2JL;       spf=neutral (google.com: 2607:f8b0:4864:20::f34 is
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
Here are a few NTB bug fixes for v5.17.  Please consider pulling them.

Thanks,
Jon



The following changes since commit df0cc57e057f18e44dac8e6c18aba47ab53202f9:

  Linux 5.16 (2022-01-09 14:55:34 -0800)

are available in the Git repository at:

  git://github.com/jonmason/ntb tags/ntb-5.17

for you to fetch changes up to 8cd778650ae223cd306588042b55d0290ef81037:

  ntb_hw_switchtec: Fix a minor issue in config_req_id_table() (2022-01-11 15:38:59 -0500)

----------------------------------------------------------------
New AMD PCI ID for NTB, and a number of bug fixes for ntb_hw_switchtec
for Linux v5.17

----------------------------------------------------------------
Jeremy Pallotta (2):
      ntb_hw_switchtec: Fix pff ioread to read into mmio_part_cfg_all
      ntb_hw_switchtec: AND with the part_map for a valid tpart_vec

Kelvin Cao (3):
      ntb_hw_switchtec: Update the way of getting VEP instance ID
      ntb_hw_switchtec: Remove code for disabling ID protection
      ntb_hw_switchtec: Fix a minor issue in config_req_id_table()

Randy Dunlap (1):
      ntb_hw_switchtec: fix the spelling of "its"

Sanjay R Mehta (1):
      ntb_hw_amd: Add NTB PCI ID for new gen CPU

Wesley Sheng (1):
      ntb_hw_switchtec: Fix bug with more than 32 partitions

Yang Li (1):
      NTB/msi: Fix ntbm_msi_request_threaded_irq() kernel-doc comment

 drivers/ntb/hw/amd/ntb_hw_amd.c        |  2 ++
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 26 ++++++++++++--------------
 drivers/ntb/msi.c                      |  3 ++-
 include/linux/switchtec.h              |  2 --
 4 files changed, 16 insertions(+), 17 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YeQ4Uz9mNkff%2Bypm%40n00b.kudzu.us.
