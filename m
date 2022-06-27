Return-Path: <linux-ntb+bncBC4LXIPCY4NRB7HR46KQMGQER4YUW3Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F1E55BBA4
	for <lists+linux-ntb@lfdr.de>; Mon, 27 Jun 2022 20:37:49 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id d42-20020a0565123d2a00b0047f83b85c2dsf5018465lfv.1
        for <lists+linux-ntb@lfdr.de>; Mon, 27 Jun 2022 11:37:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656355069; cv=pass;
        d=google.com; s=arc-20160816;
        b=mVzyzVcpZrIAKEeL9N7u/fuveT2v9mjJYGDXR7klI4ejPccEFc8lC+/gcrj5ItQjtu
         yWvLqdPTNXXTnA3oarY/K/bUTB20eNAnx7xiDB5gXdKz8+aQeZ+Kp12kDOmeOcx1G7U5
         iiSwXMUhaQ6oLmq5mEvSxuvE66UYlX2eNeA/IvoAr8cStj7LZinbax62ezZ4ToOvKqCZ
         x5E9s4e6KUYA5nfvuy29bLkbhwxvf4RKTvInye5zkC6591++/eElGFOs/VMcdEo+57Zh
         YIisiXV3ZHMSaD8mVPyMIXh1alkJAA9J4ZgWhjOXqhYRlx6evOWD1Z2FML0mDl9WGMtQ
         4gLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=02p9z1vMsv4w5fO9c2J5uZaQfzS2MGxWPvpTseCEzBk=;
        b=e1qRU5rxfoNYWDRvttTlXkQZALIHJRVcRQi1mjah8eYvajqSQyQlpxqKvi2aN65LuV
         tu5xAyXNjCZZabGWl45E0RuV6NY2Oh3rqr8XY/nHXdkzL5dzXXU6NjKrAdjtGqQg5BB/
         skJ0d443JpEl6GgT/DfX4cTWLQX5uVV94DBKKdHbnGrGGIiCQaeNpticsQh00YOVClwk
         b0WW0Ga+DzGVVRbZqxJMb1EHbzR7k7bcVZhfEPb2TigFUl82DIAMNK39ZcPhI04JzFBs
         9GDRTwryV1/w9c3/2vMOXe0sFinCU28q5N4zTX1WjTFA6RXmWUjx4fIZz5ZVtWeTKhVl
         3Hdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=ZFbEVzaY;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=02p9z1vMsv4w5fO9c2J5uZaQfzS2MGxWPvpTseCEzBk=;
        b=QzqG/LTkCOF09Uv6GhvVol6P2lWZrNSQFLilyafITllfn+tQFVHd5Gh8SKYkKstcfL
         Kz2thuN45ue2HtJFvMkYkbKOCqiife2/7989pQGM+Dla8Xp3SnlqZkWhxXXmuNYkmO2P
         7x1Y2uNwQ7eVMpXq9c1t/oq9fm40E4wc9j4du0YZtrldeLEzTEcqldTSxtIwDqGpjqd3
         qP6WiNZizeuq63ShsQm/be6PSLaHoqjeFbdnpXtWjhITdCrTKf05To8N3DXZTSeUvXIj
         YvwUbHjKdi2feMHCGynyi5tUQw/E5ctwwynGe1xOpH3W0qqH93BTUOiRPs1o93jCIV/p
         nCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=02p9z1vMsv4w5fO9c2J5uZaQfzS2MGxWPvpTseCEzBk=;
        b=Wdp8evGdw2z7MiD4zhgGB14IIqLukXJV48ubxjJJ9p2zVK5BVhemu/kudqaQy4iJIk
         XrMdV3dlzWoxMPmtcqWXA5A/i1hsdwP9a3pZTKPnX34nezkJFX3SunN7zrvM8MyTTykB
         g2KF5FFCpVX0Nb94kB0DmtB95fd8VHj0uEQcvsaNmOtGFLi4H0UcE22XveGJydQLvZ0w
         aqpRys0XvMJ0Xso0v9HaC7y8kLzFCY7rBj3KzUqfbpabnE5Dimh5V48wr2B8+KelfFr9
         1TXCze+Ds9E3jh2R8sAXL28Raxs6HhgegTdA3oAJ6ULHjDrcudt0O6rFiiP8WIlIgY5l
         sMOg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AJIora+UwWIdGBWUDtHyHM/84H5pXH4GhPSEfQ/pBk+CEpywXJlklwgg
	1LZiVlIFAk+7yZMun8xuH3k=
X-Google-Smtp-Source: AGRyM1uB/emBUUaYfDBlmB67o0voomo2NyMg5XdXSlfD9u67ZJXaAhu7NEiFgZnAdk1cnaxChvCpdQ==
X-Received: by 2002:a2e:9581:0:b0:24f:2dc9:6275 with SMTP id w1-20020a2e9581000000b0024f2dc96275mr7816374ljh.486.1656355068830;
        Mon, 27 Jun 2022 11:37:48 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:1693:b0:448:3742:2320 with SMTP id
 bu19-20020a056512169300b0044837422320ls630356lfb.1.gmail; Mon, 27 Jun 2022
 11:37:47 -0700 (PDT)
X-Received: by 2002:a05:6512:a94:b0:47f:6621:cf2a with SMTP id m20-20020a0565120a9400b0047f6621cf2amr10046502lfu.193.1656355067546;
        Mon, 27 Jun 2022 11:37:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656355067; cv=none;
        d=google.com; s=arc-20160816;
        b=X+vgK+FzaxyidX/ZmXNWlNemPoxUC5ECE9naspt2GUXNrjbuzx7SMG1A8K/QHdI8SN
         Jtv835n2Gp0hQ+pYXXyMecXQw5gGS/a2J3b30qWs8N19OGULREehqz2Zqt4qhyDnnN2p
         JlmmbO56h7eSfB+mFoncWO1OaYQtvhjpUQL/HpTEUOg/6ukKoyxtW9hINpeGlPgaUQKX
         i4brsWGOkug73Gjik0/bYVkbZ0pgPlqo2ugKquqAoMM1qtntgsOJDuGTIsE9zMKtVRpV
         gABJJFQVvtW8MYbxiaS6LjL9NP+aHYPHEGYfRy4RtvUatgIhVucVDyggqft0HLwbLXqv
         0YHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=2RjT4s1ypZjjcfNV7I4aM7idUR3TYkDqs2fIMvYnlAI=;
        b=qO5rJUveGqRcc1ToaNulMqvItZt1YrIe9r9pwlvllLlF/dzHJD45PtryV28jG3atOR
         GiSNWrBuZ+BniQY3vd4bROjsfqbaA6l97Tt9twZZ3X4PnPPwjt30G8igsK0bPDxPzTiB
         c3e6t6ASna6Tu1vFl8Kd8pcsJhYHPDVbxsh0FPJR6PuSinBJBMGLMRY/c8o8+XcKjWkZ
         JM7hPsCz6+5y4ogQiVVaOJsnLkMeaQtzJg3VlbklYY50/CjWzS8Ns3ISc95XaUjbmjid
         szShTv5nB9uqDyWPBdt7uF8DbR1pZSeQFcjhCSLPUqh8ONOTIFSG8t3bq14PfGpV5RZ/
         SmUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=ZFbEVzaY;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id k10-20020ac24f0a000000b0047ad98bddbasi577201lfr.0.2022.06.27.11.37.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jun 2022 11:37:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="279077601"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; 
   d="scan'208";a="279077601"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2022 11:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; 
   d="scan'208";a="692738465"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2022 11:37:44 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o5tcF-0008s0-Fz;
	Mon, 27 Jun 2022 18:37:43 +0000
Date: Tue, 28 Jun 2022 02:36:55 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: kbuild-all@lists.01.org, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>
Subject: [jonmason-ntb:ntb-next 6/8] pci-epf-vntb.c:undefined reference to
 `ntb_db_event'
Message-ID: <202206280254.MJOpIIDp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=ZFbEVzaY;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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

tree:   https://github.com/jonmason/ntb ntb-next
head:   0c4b285d9636cc850f55151fa6a250dd131e5192
commit: ff32fac00d97661c715ee47bbfd867cae1f3aaf8 [6/8] NTB: EPF: support NTB transfer between PCI RC and EP connection
config: arm64-randconfig-s031-20220627 (https://download.01.org/0day-ci/archive/20220628/202206280254.MJOpIIDp-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.3.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # apt-get install sparse
        # sparse version: v0.6.4-31-g4880bd19-dirty
        # https://github.com/jonmason/ntb/commit/ff32fac00d97661c715ee47bbfd867cae1f3aaf8
        git remote add jonmason-ntb https://github.com/jonmason/ntb
        git fetch --no-tags jonmason-ntb ntb-next
        git checkout ff32fac00d97661c715ee47bbfd867cae1f3aaf8
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   aarch64-linux-ld: Unexpected GOT/PLT entries detected!
   aarch64-linux-ld: Unexpected run-time procedure linkages detected!
   aarch64-linux-ld: ID map text too big or misaligned
   aarch64-linux-ld: drivers/pci/endpoint/functions/pci-epf-vntb.o: in function `epf_ntb_cmd_handler':
>> pci-epf-vntb.c:(.text+0x3b8): undefined reference to `ntb_db_event'
>> aarch64-linux-ld: pci-epf-vntb.c:(.text+0x464): undefined reference to `ntb_link_event'
   aarch64-linux-ld: pci-epf-vntb.c:(.text+0x4cc): undefined reference to `ntb_link_event'
   aarch64-linux-ld: drivers/pci/endpoint/functions/pci-epf-vntb.o: in function `pci_vntb_probe':
>> pci-epf-vntb.c:(.text+0xf80): undefined reference to `ntb_register_device'

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202206280254.MJOpIIDp-lkp%40intel.com.
