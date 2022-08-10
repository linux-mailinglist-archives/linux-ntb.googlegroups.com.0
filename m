Return-Path: <linux-ntb+bncBC4LXIPCY4NRBLVGZ6LQMGQE55OYHFI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 350C158EF97
	for <lists+linux-ntb@lfdr.de>; Wed, 10 Aug 2022 17:48:00 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id z7-20020a2ebe07000000b0025e5c7d6a2esf4542973ljq.20
        for <lists+linux-ntb@lfdr.de>; Wed, 10 Aug 2022 08:48:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660146479; cv=pass;
        d=google.com; s=arc-20160816;
        b=B1M0dLPNr6Rq1jNFP4rd9Geb0Hbs5hbRqzTIAOGvyvZjVb9YedGsFNMKfveH4vzBQX
         Ef1iAMV/I+LkjIyi4gzyq8MHNM9UuRrLXc6six4tbXddbrVFwb8Zf/LBM6EZvNjVXRm9
         Af14PsRMxXy6PDDp3xSUI/+ugrrQaCTkACkxq3Ef49dIVNmqECPhMdy2cwqTboZYDZrz
         pzhnho3UPcaI96MhyMWiLJSTli3MPi1Rgp80OO8zObF7vV6jAosHmYziWMpPjQFr9akg
         mtfqAPtjxTecluPxLCrakVgTeyVAKpphPrk2APAo2P2RcyBp7RNA7/lxbM6/TP8hGc8h
         n9AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=n8Y6PMFXF7mJgOcKx6ykrip6mFwfdolxxFupWEbDYyE=;
        b=qeC0FQbIMUQV2PuAGIUEfpwVxdsa6ruPED2jsc6QOVxaOWMTlNdrrqvTvKjdSYKdJF
         lgelGQbndUW2cJPJU4an+jlNPBtNcjBxIv7pioiRZ9TggZIhQ1P5uR4/PlDwRGavWJM8
         36MYS46tS/FXY6Q5NmBLhlvg0Wsi3qnOas1lcn2tmstxp/7p9cmeBseJGwFWF23hNgNc
         6mkGn0290DhIIIILxjsa2j2gUJJfYY74WKRH35AFCIhj2i65x7iRUhFoNmlAN/bef46S
         kh//5xTFKpg+WSh6DEObAqdHb3uWvPLV3JPiIJTSkrtROm3fIiuGJWEgK5GgXPyu4x5/
         bMKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=UqOD67jf;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:sender:from:to:cc;
        bh=n8Y6PMFXF7mJgOcKx6ykrip6mFwfdolxxFupWEbDYyE=;
        b=BEPdDo7SLlcDYwy082Ykm3Uy5ra7r8S0smpSTi6SGtcczBCc+nYWVWDb+93iLfQ+8U
         4Dv9FCBSz8iqEbxNl4v1YmasuWMz0TdIkSLaxIgHnOrq5IMJy0JIsykUVKUdzVJVf8Jl
         0/89Kah22V7psE6zwMCjpA0rnEf/H946JQ9TZi7F4bo+oZfhRlxwurLf1+RAw7tKt4EK
         CByXqkqmIrbK7rBqktkMqzBZsF31c8oyEMdH9SYHFBTfNcUX8sF+zacfwHx7X32N4BKa
         tGynzrLcwG+y61CWEbwhexo3ibOICNhGj4LxWQIXOVHZHy1nRD2M+A6+UudWefErmUj1
         kw6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc;
        bh=n8Y6PMFXF7mJgOcKx6ykrip6mFwfdolxxFupWEbDYyE=;
        b=JKdsXQj4UPSCe52Y6EAaI3HPwKdALhWBDSCwBr3fcigUiHuiZzYOT8am70WB5Puykt
         FsOWsIjtO9KRYD6x6xtzYYoCwXqoBHEmpo3GG5+tihH40PgGj7dd8HkrxOu/uw71DIqr
         gJriB7F35fL6vGotKxUcwLHePxDkierKO0qOg15AeGB1s9iiUdh9Gw8dapcoiCkQhMuQ
         s96S55STmKKR8Yqw2CGg5jIXoXidNJQTX8uKJ5KgZFPLT7wy62HnntHK/p+Es/EhOFhi
         aQqZHmzzukQXJIu5XtcCjwWRA7LiEhpUIj/J+Plv18ji4B2oJONvjByAUCjeJmgHAqv/
         bl2w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACgBeo0zqNJnZDsfoGRmPoyniqQVYOsmSXeLwun5jfOb27DW89+1KagG
	RauhCgAzE6vaO1NVJ8KF2rU=
X-Google-Smtp-Source: AA6agR4kOpzqYX5KxWQNXNHSCbWABe0ZL1qwQ1miiuTqWZ6Pr5GuseIv67HhdtU9bkld9NtMO05rZA==
X-Received: by 2002:a2e:9941:0:b0:25b:c885:3143 with SMTP id r1-20020a2e9941000000b0025bc8853143mr9788499ljj.477.1660146479330;
        Wed, 10 Aug 2022 08:47:59 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:5f77:0:b0:48b:3a68:3b0 with SMTP id c23-20020ac25f77000000b0048b3a6803b0ls2386484lfc.0.-pod-prod-gmail;
 Wed, 10 Aug 2022 08:47:58 -0700 (PDT)
X-Received: by 2002:a05:6512:a84:b0:48d:2549:f253 with SMTP id m4-20020a0565120a8400b0048d2549f253mr1099199lfu.346.1660146477984;
        Wed, 10 Aug 2022 08:47:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660146477; cv=none;
        d=google.com; s=arc-20160816;
        b=ph5iEJ7MZqJxXkG7yp+qgOv003lWudQ8TG6GckRlF0IVmg4j2fafp/DdavxylBIDiA
         mSFsHEa+/I5lO74FW3ZZVs1WhWxmC0kJhs1U+qPPTbLKvl7WYyXLxoYRhBI20dxf+EdL
         tgq0pbHaKNtVVTTDesdL115dfGI6xFjdYrVvGd1i/4zbCabrYOArdPl218fY2hmE6fsc
         nEBsKpQMjdfql9pDgU5K9hh7836bKYOV9i8ZgUgPwEA6ULoh9FLrPK5Fov4bXW9bnx+1
         d2t9EgnjNr2Z4yenChOS1pk/lBwCBI4uxEPqR7na6gDOg0WRAL6P7K2Q5ZDubNjMhU+9
         wLCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=bW8kdeo515aO/ZM2Ci1xpg1hIfWARxZStuTCENQ3394=;
        b=Qv0VfiNYNWzDohzLE054u9PMxmFbQs7QIPKd9vnkL5OjuMZQWz0XOS/XxigS/Bmq2l
         CRaq7axW3wvjleVOtDbWTk9gSNwRm8ycxM+Zld4JyWtlMV87apo6Zl5HQkLDPcBvEXtL
         SskGNYAzk7O2KIC4tsQ99UK618QyOIUjy6hPlWziHYZwtji5eKMG7vAUqwfyIdjV01Lr
         R6ElvWO18FCiwQNFzC7A+1eYaGXIJEKavgHFL/Mg+FWwtq3B+s9THrhikb9e50S59VaV
         yvyDYyuTagipZvTkYP6zVidU1jafmoM15uZR5GRM018Rn1K4b10M1E+YLTamfGAP8kqS
         SdAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=UqOD67jf;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id h20-20020a2ea494000000b0025ebaef956dsi96571lji.3.2022.08.10.08.47.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Aug 2022 08:47:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="355120655"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; 
   d="scan'208";a="355120655"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2022 08:47:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; 
   d="scan'208";a="638154771"
Received: from lkp-server02.sh.intel.com (HELO 5d6b42aa80b8) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 10 Aug 2022 08:47:52 -0700
Received: from kbuild by 5d6b42aa80b8 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oLnw0-0000Po-08;
	Wed, 10 Aug 2022 15:47:52 +0000
Date: Wed, 10 Aug 2022 23:46:51 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: kbuild-all@lists.01.org, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>
Subject: [jonmason-ntb:ntb-next-hacking 16/18]
 drivers/irqchip/irq-imx-mu-msi.c:128: undefined reference to
 `pci_msi_unmask_irq'
Message-ID: <202208102343.yHsh1iyB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=UqOD67jf;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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

tree:   https://github.com/jonmason/ntb ntb-next-hacking
head:   d90921d21692b59734d2452efea346217a526f44
commit: 1db755129d2544df84dc197095c14170cfa419c7 [16/18] irqchip: imx mu worked as msi controller
config: arm64-randconfig-r022-20220810 (https://download.01.org/0day-ci/archive/20220810/202208102343.yHsh1iyB-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/jonmason/ntb/commit/1db755129d2544df84dc197095c14170cfa419c7
        git remote add jonmason-ntb https://github.com/jonmason/ntb
        git fetch --no-tags jonmason-ntb ntb-next-hacking
        git checkout 1db755129d2544df84dc197095c14170cfa419c7
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   aarch64-linux-ld: Unexpected GOT/PLT entries detected!
   aarch64-linux-ld: Unexpected run-time procedure linkages detected!
   aarch64-linux-ld: ID map text too big or misaligned
   aarch64-linux-ld: drivers/irqchip/irq-imx-mu-msi.o: in function `imx_mu_msi_unmask_irq':
>> drivers/irqchip/irq-imx-mu-msi.c:128: undefined reference to `pci_msi_unmask_irq'
   aarch64-linux-ld: drivers/irqchip/irq-imx-mu-msi.o: in function `imx_mu_msi_mask_irq':
>> drivers/irqchip/irq-imx-mu-msi.c:120: undefined reference to `pci_msi_mask_irq'


vim +128 drivers/irqchip/irq-imx-mu-msi.c

   115	
   116	static void imx_mu_msi_mask_irq(struct irq_data *data)
   117	{
   118		struct imx_mu_msi *msi_data = irq_data_get_irq_chip_data(data->parent_data);
   119	
 > 120		pci_msi_mask_irq(data);
   121		imx_mu_xcr_rmw(msi_data, IMX_MU_RCR, 0, IMX_MU_xCR_RIEn(msi_data->cfg->type, data->hwirq));
   122	}
   123	
   124	static void imx_mu_msi_unmask_irq(struct irq_data *data)
   125	{
   126		struct imx_mu_msi *msi_data = irq_data_get_irq_chip_data(data->parent_data);
   127	
 > 128		pci_msi_unmask_irq(data);
   129		imx_mu_xcr_rmw(msi_data, IMX_MU_RCR, IMX_MU_xCR_RIEn(msi_data->cfg->type, data->hwirq), 0);
   130	}
   131	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202208102343.yHsh1iyB-lkp%40intel.com.
