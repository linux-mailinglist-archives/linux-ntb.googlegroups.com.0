Return-Path: <linux-ntb+bncBC4LXIPCY4NRBFFV4GLQMGQE64GX2OQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id F1779591D90
	for <lists+linux-ntb@lfdr.de>; Sun, 14 Aug 2022 04:14:45 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id n17-20020ac242d1000000b0048af11cb0f4sf675426lfl.19
        for <lists+linux-ntb@lfdr.de>; Sat, 13 Aug 2022 19:14:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660443285; cv=pass;
        d=google.com; s=arc-20160816;
        b=BCZ5KG+jlpsFcrjAwy5GN7tC4opPhHW7Lu98EdHg1C3j/BXFa4ULuAbKbfEHsSgiSM
         xnJXdDxujxVcMivz3YF+hwodXcSKK2wTOn5Gfysol7j7cUyiOqG8eprRObhNFtitZ0gl
         PkrSwjY1L6RB2RMnR0PGm8GASx3XLeP6nbQsPrh6Hpx+maE4Zn0Ys7IGQKVx2OpOfakO
         Ws0ni1LEHuJVJf4GDhQXA4nBHLviGYDgo6+J2lI3iA/1FTOj6VCxSI9SCjOZ7JFVMmzu
         GfM199cEvJqdWV/UzSTGnc45aZRhVGTRsU9oaqyqdZtIHV8isb/Lhr3zdNpBr+Lw3yp4
         ScHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=PxRFs2Jo/nBUgKhtAo5G+7mL3Sn95mc3hl/6gCQ2M9E=;
        b=fYO4QikoDmpspsuBhYP4iv3hjxQdo2d7fFrDWxri1sfw8fVu1U4POk3wAHykS1OuqR
         Lx58z+IH7Fpcd9ctcMNNnc5L9u1pQ3nzDpDvIumHnrqeNFu23GS6qMvq8aFjkHGGQiS3
         /f4opWWAurYy6DQiPQsBkffm4ksHZfty5dadnZP3ZjPuNmYy51JwUQgZRlxnPYE11zJO
         h/JoBBGZAcPB4T4ajnRYDS0SGWnHrWqK/MzpKgsm5+ZYxJX0BZlSVO3V7MW6IzzZy/Lf
         tmBYqq4gE+B9u5Mv6ry5U+AsTgAYjNB8ACqhYP9w+LO8syAi408d5ZaeOJiAOKivC+cv
         4k5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=bh0U58LN;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:sender:from:to:cc;
        bh=PxRFs2Jo/nBUgKhtAo5G+7mL3Sn95mc3hl/6gCQ2M9E=;
        b=dqvLkPVIEioQA5x0iIQv8Hv2UTUJH0tn86YNDMopBTOoaVBS8lDQdcSNDywNzAP7xJ
         hgPIc4V4Y0HKNRpkRTH3qhwGk/eJWjQQVBwVdhvbBCgCgCPPPh+KGsyRDQB5meNXn+bm
         PUqq7uJ3s1W681C4tCP1KGo18pVJwdJe3guWZLWKK1ytvcWkl/AHruJ6U2ovDmzTgros
         FJaewls4TyacxVpw5XC9CRJOO147IfnCH02uu83n3kccXIhl7VrHC0lYBgNBjYTBxU+4
         QrLwZclzXTHBEX22C3dxdaSeWXPhJkVRWeAXK+P2oriUAOl0Kp07QexwMQKnyQkOq41u
         N8xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc;
        bh=PxRFs2Jo/nBUgKhtAo5G+7mL3Sn95mc3hl/6gCQ2M9E=;
        b=PlRAA3y/Fzv7lEVkr8OtPU6yXvNla5ff2P2H+meAvK5exDPLPfdFfKJm1GJzKEiGSn
         UacykWgNtR/EHfKuvZhlu7NorbjMo/yh9n32BYihoDyPmEodiy8U8vTlkq5woI/K3vlB
         poMCRihpSaPSXKvJZLdPXZNa+vgZgn+V8nuc3I+SGSIEAV64fH/SdE2abp5ExXgIk9hW
         mDXrRSH2McktB/HrhZswO1OwXcHO4wl3P3u2pnoGgTMWkeZmKzmxhAtJGP4fL3pF9Gw7
         p/0kz6gUNakfMR9i/BKTgVz+L+UKXL2YfYZ8mJlqG/zc3PxQpkR3EYTtXAq4jngNYKTs
         HZ0Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACgBeo0dUyOJmHqdwMBZZMCluP0qJQkUyy8aqU059S09xW1m10I7j7Ar
	NQvs4AHl9T3VjbZt4VWSV4o=
X-Google-Smtp-Source: AA6agR76hyu2cZysASK51JHWbRFIXYsG5sGKDSwo1FEqTaLOv9NL7vwjrp06WygVJpHm3xCcBJhrZg==
X-Received: by 2002:a19:500b:0:b0:48b:208d:f723 with SMTP id e11-20020a19500b000000b0048b208df723mr3382315lfb.150.1660443285019;
        Sat, 13 Aug 2022 19:14:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:5e28:0:b0:48b:253:97e6 with SMTP id o8-20020ac25e28000000b0048b025397e6ls340098lfg.1.-pod-prod-gmail;
 Sat, 13 Aug 2022 19:14:43 -0700 (PDT)
X-Received: by 2002:a05:6512:a8c:b0:48b:3e1c:c3ad with SMTP id m12-20020a0565120a8c00b0048b3e1cc3admr3628499lfu.678.1660443283595;
        Sat, 13 Aug 2022 19:14:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660443283; cv=none;
        d=google.com; s=arc-20160816;
        b=MgLbe92L5Xm4+6ivnObKsBRGPAz/OcigmxUeqiCFnWr4O7mldfuA/W1mCRue7mPKxD
         quxpqk5xZrlTv4Nf1N+mvJQ3QlNPKb0zO+6QiovNmKrAznycz90HFrwrKdfLF2/Dnw3V
         /nE0NqtdtTxweXS87B6olur/XzoV1kSUMOVP3SmNsbfUnz8AD5ImgW8Z2IS0/FR8OjhK
         l/V3yCMLU6yLUWyEGpxpTRffB4kyddRCx6cI6jLUt4y4swHOCl8yjzrgnafBbB7colCX
         /yfKxadUo8jX1wAiJgGHZRL3+XNuxdH/RseNKKQP6LQC0/A6m1f3TIOcsc7vN5fSB2nE
         F4Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=v5lR2AWw93SjT616TlFPCnxKbzttLoAwBebR/34Xv4Q=;
        b=ITj9brL0zwzR9nLl1M69Fcj+v8amM3NQaSicEoDMp3nULT3f1+RQ+FrJKnGwuGvpiV
         6951KJTqUda4GQE0p8/0GaiMXATL79cWULRt/5PIVrD/xI05gx0ms1lzRaxTGQ7wKjy0
         cGLgZjmlOmXKcK15L9jqh74DO1bdcq6WZZA/34BKSdfZft/8ejVktSQAZ2ZXUM8sPf0X
         PwRTAi49CohkXutv45lu1oPj3s6KrXbPFTDtqxbV8b1wjWT1WoQzSks2JL+4OaFc+r1Y
         yHyApYBZv7uzkdn2FAyZE+AGuzMfPSJMREH0MBO6Mq9E+jGVslyEPqXp5G5EudpUWXx6
         y3eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=bh0U58LN;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id b24-20020a056512071800b0048b2a291222si446169lfs.6.2022.08.13.19.14.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Aug 2022 19:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="274845133"
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="274845133"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2022 19:14:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="674473096"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 13 Aug 2022 19:14:38 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oN39B-0002Ln-2o;
	Sun, 14 Aug 2022 02:14:37 +0000
Date: Sun, 14 Aug 2022 10:14:34 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
	linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>
Subject: [jonmason-ntb:ntb-next-hacking 18/18]
 drivers/pci/endpoint/functions/pci-epf-vntb.c:560:56: warning: variable
 'align' is uninitialized when used here
Message-ID: <202208141017.cwJ0JXde-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=bh0U58LN;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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
commit: d90921d21692b59734d2452efea346217a526f44 [18/18] pcie: endpoint: pci-epf-vntb: add endpoint msi support
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20220814/202208141017.cwJ0JXde-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 5f1c7e2cc5a3c07cbc2412e851a7283c1841f520)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/jonmason/ntb/commit/d90921d21692b59734d2452efea346217a526f44
        git remote add jonmason-ntb https://github.com/jonmason/ntb
        git fetch --no-tags jonmason-ntb ntb-next-hacking
        git checkout d90921d21692b59734d2452efea346217a526f44
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/pci/endpoint/functions/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/pci/endpoint/functions/pci-epf-vntb.c:541:33: warning: variable 'epc_features' set but not used [-Wunused-but-set-variable]
           const struct pci_epc_features *epc_features;
                                          ^
>> drivers/pci/endpoint/functions/pci-epf-vntb.c:560:56: warning: variable 'align' is uninitialized when used here [-Wuninitialized]
                   mw_addr = pci_epf_alloc_space(ntb->epf, size, barno, align, 0);
                                                                        ^~~~~
   drivers/pci/endpoint/functions/pci-epf-vntb.c:542:11: note: initialize the variable 'align' to silence this warning
           u32 align;
                    ^
                     = 0
   2 warnings generated.


vim +/align +560 drivers/pci/endpoint/functions/pci-epf-vntb.c

d90921d21692b59 Frank Li 2022-07-07  534  
53efbaa43643f36 Frank Li 2022-02-22  535  /**
53efbaa43643f36 Frank Li 2022-02-22  536   * epf_ntb_db_bar_init() - Configure Doorbell window BARs
53efbaa43643f36 Frank Li 2022-02-22  537   * @ntb: NTB device that facilitates communication between HOST and vHOST
53efbaa43643f36 Frank Li 2022-02-22  538   */
53efbaa43643f36 Frank Li 2022-02-22  539  static int epf_ntb_db_bar_init(struct epf_ntb *ntb)
53efbaa43643f36 Frank Li 2022-02-22  540  {
53efbaa43643f36 Frank Li 2022-02-22  541  	const struct pci_epc_features *epc_features;
53efbaa43643f36 Frank Li 2022-02-22  542  	u32 align;
53efbaa43643f36 Frank Li 2022-02-22  543  	struct device *dev = &ntb->epf->dev;
53efbaa43643f36 Frank Li 2022-02-22  544  	int ret;
53efbaa43643f36 Frank Li 2022-02-22  545  	struct pci_epf_bar *epf_bar;
d90921d21692b59 Frank Li 2022-07-07  546  	void __iomem *mw_addr = NULL;
53efbaa43643f36 Frank Li 2022-02-22  547  	enum pci_barno barno;
d90921d21692b59 Frank Li 2022-07-07  548  	size_t size;
53efbaa43643f36 Frank Li 2022-02-22  549  
53efbaa43643f36 Frank Li 2022-02-22  550  	epc_features = pci_epc_get_features(ntb->epf->epc,
53efbaa43643f36 Frank Li 2022-02-22  551  					    ntb->epf->func_no,
53efbaa43643f36 Frank Li 2022-02-22  552  					    ntb->epf->vfunc_no);
53efbaa43643f36 Frank Li 2022-02-22  553  
d90921d21692b59 Frank Li 2022-07-07  554  	size = epf_ntb_db_size(ntb);
53efbaa43643f36 Frank Li 2022-02-22  555  
53efbaa43643f36 Frank Li 2022-02-22  556  	barno = ntb->epf_ntb_bar[BAR_DB];
d90921d21692b59 Frank Li 2022-07-07  557  	epf_bar = &ntb->epf->bar[barno];
53efbaa43643f36 Frank Li 2022-02-22  558  
d90921d21692b59 Frank Li 2022-07-07  559  	if (!ntb->epf_db_phy) {
53efbaa43643f36 Frank Li 2022-02-22 @560  		mw_addr = pci_epf_alloc_space(ntb->epf, size, barno, align, 0);
53efbaa43643f36 Frank Li 2022-02-22  561  		if (!mw_addr) {
53efbaa43643f36 Frank Li 2022-02-22  562  			dev_err(dev, "Failed to allocate OB address\n");
53efbaa43643f36 Frank Li 2022-02-22  563  			return -ENOMEM;
53efbaa43643f36 Frank Li 2022-02-22  564  		}
d90921d21692b59 Frank Li 2022-07-07  565  	} else {
d90921d21692b59 Frank Li 2022-07-07  566  		epf_bar->phys_addr = ntb->epf_db_phy;
d90921d21692b59 Frank Li 2022-07-07  567  		epf_bar->barno = barno;
d90921d21692b59 Frank Li 2022-07-07  568  		epf_bar->size = size;
d90921d21692b59 Frank Li 2022-07-07  569  	}
53efbaa43643f36 Frank Li 2022-02-22  570  
53efbaa43643f36 Frank Li 2022-02-22  571  	ntb->epf_db = mw_addr;
53efbaa43643f36 Frank Li 2022-02-22  572  
53efbaa43643f36 Frank Li 2022-02-22  573  	ret = pci_epc_set_bar(ntb->epf->epc, ntb->epf->func_no, ntb->epf->vfunc_no, epf_bar);
53efbaa43643f36 Frank Li 2022-02-22  574  	if (ret) {
53efbaa43643f36 Frank Li 2022-02-22  575  		dev_err(dev, "Doorbell BAR set failed\n");
53efbaa43643f36 Frank Li 2022-02-22  576  			goto err_alloc_peer_mem;
53efbaa43643f36 Frank Li 2022-02-22  577  	}
53efbaa43643f36 Frank Li 2022-02-22  578  	return ret;
53efbaa43643f36 Frank Li 2022-02-22  579  
53efbaa43643f36 Frank Li 2022-02-22  580  err_alloc_peer_mem:
53efbaa43643f36 Frank Li 2022-02-22  581  	pci_epc_mem_free_addr(ntb->epf->epc, epf_bar->phys_addr, mw_addr, epf_bar->size);
53efbaa43643f36 Frank Li 2022-02-22  582  	return -1;
53efbaa43643f36 Frank Li 2022-02-22  583  }
53efbaa43643f36 Frank Li 2022-02-22  584  

:::::: The code at line 560 was first introduced by commit
:::::: 53efbaa43643f36d203700e7f436eaac11695274 PCI: endpoint: Support NTB transfer between RC and EP

:::::: TO: Frank Li <Frank.Li@nxp.com>
:::::: CC: Jon Mason <jdmason@kudzu.us>

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202208141017.cwJ0JXde-lkp%40intel.com.
