Return-Path: <linux-ntb+bncBC4LXIPCY4NRBL7G6OJAMGQEYBIVIGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id D368E504C2B
	for <lists+linux-ntb@lfdr.de>; Mon, 18 Apr 2022 07:12:16 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id c125-20020a1c3583000000b0038e3f6e871asf7180547wma.8
        for <lists+linux-ntb@lfdr.de>; Sun, 17 Apr 2022 22:12:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650258736; cv=pass;
        d=google.com; s=arc-20160816;
        b=srhqt5pFQVZw7PDfZiei8ohwbGRE67+XkAiZdsH/viSeI+XAI3NxdIXtdYetD9E7QJ
         9ilJv09oGLK3tHYI4W9xynDPIcxugxkex/2zA5AAfa6nJj0HZKnj+Z01YX5m8d8u9wp8
         3yMGI5fUY6zG3pd6hjamTNp7Qwl5xUHlEgGUIzLslYkBZjC+wx2mKgCn7WxCTtH59Ikr
         2Yo4d/y7WASfIUMMdVY/WtUUPSBL/MX4Tr8npHLoZkGt2AGwQHqrqttwrebo67Ftv80v
         VaFNO3xgAtO3AwYeqcg/6QhogrRAFQ7/McdQmN4thMSDE09+M9vJ6krkIMi+sBf/TIEd
         2xRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=d/1rtPTUibWrjuA/MDziSW1yxtyj7iF//vkJOSPPlO8=;
        b=oHjhFvnumzrjgbJk15oo/GO8llTQoTNqAp6d3+FC9RTisBuDxp3ysoU68KVpARk7uP
         UubsDMwXcBpmNM3akancIAARX+yY0UA1FvVdUentIvJOCmjeM6aSmY4DcB80cmlrsMPz
         b1dXffird5/HTHygrRzFoaA1lTkPZCbEsYSMgPFG9T+vLD8vbvQYfe+4xLC5j5Uvu7rl
         g5sVTl6G4r8u0KHxTwoqSP4x2hH3Th0Wri+Y0zWwZCI89BB7PcLl3U4gva/DRy+LtKs+
         U56tu09Er7XxSdnREJqRBrEQrSHLce2dq7IZTEC3XosAbrQZBRl2sUo5tHYVQU6VQlCN
         mo3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=WS2NyA5+;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d/1rtPTUibWrjuA/MDziSW1yxtyj7iF//vkJOSPPlO8=;
        b=kBIFbAIlGvIegIX4/wJh/TxBEN5NtZ4QdPnfkdhmahSqRltoHuJ3+aHb4PZ91MlcEm
         dD8NFBiUqFY2tXqFUGlnkcPN/xsqJ7hDatfvla7LbcD1a+Xdaqm4aVyjs/BlpDM+Kacp
         LV1SIMLeZQpToiwyrhyvtRDf/lim/cVUFLiASOWgdosPNWguyLMh29fshieDmMC/rXtc
         JOsBPVQ2JPCVxtGHN37vh5RTu5QptKA3ZownPw9MTjPJceNwioFda6hoP3WCjNuCE8rO
         eu8tQurnPLLYLF2zm2ZcvhEZ/8L6d24gVkOp3cgG8xHLjJyMDI8NEbKaBUyPnA0DlKlx
         0JDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d/1rtPTUibWrjuA/MDziSW1yxtyj7iF//vkJOSPPlO8=;
        b=QH+cxmuoXZclvLM0kiGKoVenMMP25uunjPzLDJ4HjaIxKIk8D0j3Dszw7YgSiBlgrw
         X39sAFE8FQTyKkcXZHls0C4696s7pCbY5SX6tWt8G8OD53vYpfZ6ZTs2gR8Je6uBTPvQ
         b4Jfhq2S5c0svy43ujcg7HElowTIUL1tfCdpAHJLq1HEBUEOk2aotMRo8nOIIiEbGg4s
         gGKTVxKY7Ju2TQOGVoA94SCwkLuC+0g+VklHRLY+wZowHWvoguYzqDh6vSBk0ntcc/J9
         fkLH/ottp6AIFe388aHsHkE3D3heoXaQ5HDb1ID2BMncp4qBMAOuhiiJBIkkuj/aju4j
         27gg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533EVUT5bjdJ2ZZy4IeeDvDloXfycAMheXxmg/UtcHz5iCpg02OY
	ow/LSYOU9S/JqGSi6BqlPTo=
X-Google-Smtp-Source: ABdhPJzRvZ0OQKqdFSMdKdrVBC+Bh/VvZNasf6LVsTOer9N9s6+Nfh4JLlk3Ojt5aoaHv57ig+gAog==
X-Received: by 2002:adf:f0cc:0:b0:207:a8fe:b411 with SMTP id x12-20020adff0cc000000b00207a8feb411mr7057423wro.524.1650258736106;
        Sun, 17 Apr 2022 22:12:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:3585:b0:392:8fd1:58b5 with SMTP id
 p5-20020a05600c358500b003928fd158b5ls1566610wmq.3.gmail; Sun, 17 Apr 2022
 22:12:15 -0700 (PDT)
X-Received: by 2002:a05:600c:1e15:b0:38f:f556:9349 with SMTP id ay21-20020a05600c1e1500b0038ff5569349mr9230338wmb.3.1650258735118;
        Sun, 17 Apr 2022 22:12:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650258735; cv=none;
        d=google.com; s=arc-20160816;
        b=Zqv6DD1xP6qS+L4r5BQ22oMPm8Ht6gs/U83MJbhTa4cVFuX0adDk0M/A4/urX3N3hP
         p8SI3en45JlXhRmYVigpyX35ekSswsgNeyX8/XkLsj5+oXYFazmhL7chLlpGhbGx+qBg
         4eyISNRwpgjAjFgtaEGz9hdh0+y8aB/4hzBg6ediDT6NHB9/FnMkCnHS0Ycw6UNCq67e
         7RFUP50ZF91DBmOkf+Qvhrr5eidT5P8+ZZ55SbfvmSj81BslZr5UHcGSu/tMIa3zZcsX
         bIscZP0SF4vsssF/OO9rvxt6+8TPaJ/J4KMSyhQ4B5lbGG6fmU98wTq/j7/VNwPURuxI
         RYSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=uoRyj1iEY3NVastBeiriM70Y8RY01TaEkznpaDaC+Lw=;
        b=UK/ll+NPiHWVNw8L/p1PH9W7UaI/hvKero+sW9Jy9kk96iR3PTk2vVNIkZrSPfHAaY
         s81fq55QgazGNcUaRYX3pBd//qDXz+sIDJsoDq4AN52La31+iicTicO5lDLJWdu+ybr7
         wbrIShFrZUplLZPfOWmnUhpWDRxliUcLMGK6CTktbQzBY1EHBWANQ7Gq3Md0xu14iZsW
         IvGVO38fax/0gP+saA+6/Lgr0U0RUtHaQhuUWeB+vzEP9gJETAzHqHjt+x2Iqq6eFYPn
         yki1vQ2g/cc26T5/yO+sth2VatDj7VZqR2DrBojBRrGvzvYkexYpMT2pz1uAXmr73v+c
         yjuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=WS2NyA5+;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id l5-20020a1c2505000000b0038e70fa4e56si606112wml.3.2022.04.17.22.12.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Apr 2022 22:12:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6400,9594,10320"; a="250753558"
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; 
   d="scan'208";a="250753558"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2022 22:12:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; 
   d="scan'208";a="529322571"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 17 Apr 2022 22:12:11 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1ngJgI-0004MD-Q6;
	Mon, 18 Apr 2022 05:12:10 +0000
Date: Mon, 18 Apr 2022 13:11:52 +0800
From: kernel test robot <lkp@intel.com>
To: Alexander Fomichev <fomichev.ru@gmail.com>
Cc: kbuild-all@lists.01.org, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>
Subject: [jonmason-ntb:ntb-next 2/2] ERROR: modpost: "__umoddi3"
 [drivers/ntb/test/ntb_perf.ko] undefined!
Message-ID: <202204181304.sU13hlUf-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=WS2NyA5+;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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

Hi Alexander,

First bad commit (maybe != root cause):

tree:   https://github.com/jonmason/ntb ntb-next
head:   10003e852471b1214f4383d79592497b3f4c7b39
commit: 10003e852471b1214f4383d79592497b3f4c7b39 [2/2] ntb_perf: extend with burst/poll/doorbell latency measurement
config: arc-randconfig-r043-20220418 (https://download.01.org/0day-ci/archive/20220418/202204181304.sU13hlUf-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/jonmason/ntb/commit/10003e852471b1214f4383d79592497b3f4c7b39
        git remote add jonmason-ntb https://github.com/jonmason/ntb
        git fetch --no-tags jonmason-ntb ntb-next
        git checkout 10003e852471b1214f4383d79592497b3f4c7b39
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arc SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "__umoddi3" [drivers/ntb/test/ntb_perf.ko] undefined!
ERROR: modpost: "__st_r13_to_r20" [lib/zstd/zstd_decompress.ko] undefined!
ERROR: modpost: "__st_r13_to_r18" [lib/zstd/zstd_decompress.ko] undefined!
ERROR: modpost: "__ld_r13_to_r20_ret" [lib/zstd/zstd_decompress.ko] undefined!
ERROR: modpost: "__ld_r13_to_r25_ret" [lib/zstd/zstd_decompress.ko] undefined!
ERROR: modpost: "__ld_r13_to_r18_ret" [lib/zstd/zstd_decompress.ko] undefined!
ERROR: modpost: "__ld_r13_to_r24_ret" [lib/zstd/zstd_decompress.ko] undefined!
ERROR: modpost: "__st_r13_to_r23" [lib/zstd/zstd_decompress.ko] undefined!
ERROR: modpost: "__ld_r13_to_r17_ret" [lib/zstd/zstd_decompress.ko] undefined!
ERROR: modpost: "__st_r13_to_r24" [lib/zstd/zstd_decompress.ko] undefined!
WARNING: modpost: suppressed 5 unresolved symbol warnings because there were too many)

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202204181304.sU13hlUf-lkp%40intel.com.
