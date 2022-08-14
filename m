Return-Path: <linux-ntb+bncBC4LXIPCY4NRBCON4GLQMGQEG7ISB2A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF47591DA8
	for <lists+linux-ntb@lfdr.de>; Sun, 14 Aug 2022 05:05:45 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id v130-20020a1cac88000000b003a4f057ed9fsf2555237wme.7
        for <lists+linux-ntb@lfdr.de>; Sat, 13 Aug 2022 20:05:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660446345; cv=pass;
        d=google.com; s=arc-20160816;
        b=LFjFKAO4sLx4Gomt9Z9DuXkplYTCLYKCLDTj/+QH7vnEkrZLahDkuTzyqRepzoeQQE
         eMNqMuyBWfY3v1js5idMoOSmYFm0aRQyOK6B6T/oiY+QOh3yErfZ+mzWuoX4mNMnbzDj
         tnyObDFiqunb9OI1YAdVUHNNRAtcxHwSE3RQymGyi8E2o9gGy4gJ6QdH+Xu7rrs87/9y
         7e4lLE345vQOMKFcBYQJcM7q3zZKUmZHxDVNKvo5GP6J6WAZrl7H2nE5cMm/Vvlxj4Fb
         aMW9Dg+HPGOBGU8mygpBqUEUZzC4c0zBdvogdT6tJwBUCGCgIZbZgz3L02NQQ+FaZZVa
         H5dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=GG2+L18LK5XEpmBWVo1AIATD2aQP6iTx10zyMcYEos8=;
        b=Spey0E6j+rnKfzRqhYJXIbFa+rcE1iiR8yTJMvubk2aD2n/LMNkT8isYEoc4B/r8jf
         IjiiCT/Xfweg/s7173tjKS/4NhZA/hdqFnMGhAPutvP2y4fRybHYmg7nH0/QI4mxGWTw
         YLPJTuPNUBPAwmku6e4zJHzox46LdVeTo0QYKdbwkDUoLVhqgXP4T9M8btw6Ac88J8Ox
         Kiqdi4lr867RAGLNYnOnbShakbWXjJR48A/sMgruGczGYx8gG+2Z6YQKjbpgp6yuO6n3
         CjuIz4OwO3aSSpg/12phK0CMiwGoJzMXfzs4ITd65G3A+8vgBxo+vKmFp0GrjTDRb9A8
         Jr8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=fATmv9Ta;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:sender:from:to:cc;
        bh=GG2+L18LK5XEpmBWVo1AIATD2aQP6iTx10zyMcYEos8=;
        b=DBOFcaiUtQYFPQkqQ10Uz01BpHUp22ZZyrtFnoGMDwaN2+vQ8H2tV6etOZlTaaGOD3
         5ggOy/Akzj8puBsIhmj0rJXU/x3D/D7uYZR87W1VjdVnZBDpq0100SRszCo+vGox3NU0
         6O7pMG42A2MP41XKrc6joPFmknK9291tVsROOBCWVtAVgZ/dCsbcNiX6t8qIArUAxm5B
         A/42AQXNWRSC3VvDeL0nPsxXk6xt3QFqfcd8u40zNSZmtrTzqkXsMYZlZncs5KFDjl2x
         iGde/jg7eT95n5S614UFoC7QV1dk97JH3DnprtE+zGZ4oKu0B/djq5NJS0j+MfHeqAr4
         xfcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc;
        bh=GG2+L18LK5XEpmBWVo1AIATD2aQP6iTx10zyMcYEos8=;
        b=BD0Hn47nxDIB+ZN1QFrmug+rsRMwhSBcAQO3jua9O9iIWZnV1WANfOcBqdTrfvz1X6
         oM+WRjUwj4UwY7W/4iPDcu/pjX44zTTflgNEf0n99dyCYKB7QiGbOs7d0C2L0AfR3LSK
         ksLaTSw3ZPNE9OOoCMD0/fsdV0MXpFQ8E+JH71u3gAJ0iaLscVH73tgdyTK11TClC9Uf
         XBTmGdNerYnE5St1haFrRxF1Osi/WzfIutNwhffZSWYyvfXbBa3D0sVA+TtP4sDNMa0w
         t9Db9ZAYO6XE7Yh5ct+nG8cCHMUq6bsmFnYcQSM0Fpfbvhc2soWaKW7KGQ6pbHvOZi2e
         F8vA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACgBeo3k3dzbO2m4dACuGHauCO3BcJaRaI4efs4rBDynxOPiuNy+cc3M
	X9l4ljhZ0v6QcD9eYs/AGug=
X-Google-Smtp-Source: AA6agR5vMWInrul6MQpSGWKtw4Uaim+tViZd4qd7XOjqL4ZskNskqy5/hm2uR7aCTPrC1pC1Pw6nNA==
X-Received: by 2002:a05:600c:4047:b0:3a5:452e:9117 with SMTP id j7-20020a05600c404700b003a5452e9117mr6313909wmm.117.1660446345278;
        Sat, 13 Aug 2022 20:05:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:294:b0:3a5:22da:8671 with SMTP id
 20-20020a05600c029400b003a522da8671ls2614498wmk.1.-pod-control-gmail; Sat, 13
 Aug 2022 20:05:44 -0700 (PDT)
X-Received: by 2002:a05:600c:4f4f:b0:3a5:a530:4fd7 with SMTP id m15-20020a05600c4f4f00b003a5a5304fd7mr13030476wmq.36.1660446344300;
        Sat, 13 Aug 2022 20:05:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660446344; cv=none;
        d=google.com; s=arc-20160816;
        b=omU2OakrPSc8eUbRF53ihbDRpf6Tnvj/7VAY8ePmp+Tsd1nl65+Ez413rNrbwKyiQW
         e7htXaeDHLcuAgWtdNlHJDLDiELZQSC3dJl4Jcrd5OrS3dTMGEmtsWbr1dJrlke6jome
         N7xkcmstm9o28Vjl/j4TVDlBaPEbnHKF4kEudRjQCjkImjsGOgImjpNn8U2FR2cIWc9M
         hU2TWHdX8rQMRw01P7iwQcYJUTFschgLvUa9oQ4BwWQhruLg+P53mxVppSW92rAwdx+U
         BNfrTHlPxK7T/N5H7yZF6JG1s3oTocGa4aIIDrAkCr7kjAEUY9xzY/K1IWxdzlhCgRgx
         UkLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=nKY8Tj2S1+5Hy2yNLk4DVqf9XKGjVUIVFO545T90Qmw=;
        b=H4ejyKX7uXZZJ5EK1D4JMLrJk2UNbKAzPJlWOHUICszWXyWssi5pheM6h+Sod0YOkU
         6HPYzqtOAWDlB4ElR8XZjqvEAO75Zku8gPDfWoSgD+h/R6GRHaa+lVL0w6PU/xgOTbwj
         0gUjuXanKWlIjdPmPyAPxnQt99tXM0rcSJ87EAb8UbtrP4DtXCQ3jb2pM/MvBAKxwwh0
         c0U6J/eepOKhD2tNEP9m03nqtEbpmgiosMOjFdhEoCB4vs0NuItr5VMPugJFWXhV26ly
         /np2SqRpBCKr4VYgVUizoVZ4D5A7V+4b98ExcN0tXEww7CjjnZbMVDX5TcHBRIqPnz73
         OXVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=fATmv9Ta;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id e35-20020a5d5963000000b0021d91e1ca87si418301wri.1.2022.08.13.20.05.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Aug 2022 20:05:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="291791740"
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="291791740"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2022 20:05:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="732599022"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 13 Aug 2022 20:05:40 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oN3wZ-0002QB-2o;
	Sun, 14 Aug 2022 03:05:39 +0000
Date: Sun, 14 Aug 2022 11:05:38 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: kbuild-all@lists.01.org, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>
Subject: [jonmason-ntb:ntb-next-hacking 18/18]
 drivers/pci/endpoint/functions/pci-epf-vntb.c:541:40: warning: variable
 'epc_features' set but not used
Message-ID: <202208141103.CnuY3Xvp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=fATmv9Ta;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20220814/202208141103.CnuY3Xvp-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/jonmason/ntb/commit/d90921d21692b59734d2452efea346217a526f44
        git remote add jonmason-ntb https://github.com/jonmason/ntb
        git fetch --no-tags jonmason-ntb ntb-next-hacking
        git checkout d90921d21692b59734d2452efea346217a526f44
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/pci/endpoint/functions/ fs/notify/fanotify/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/pci/endpoint/functions/pci-epf-vntb.c: In function 'epf_ntb_db_bar_init':
>> drivers/pci/endpoint/functions/pci-epf-vntb.c:541:40: warning: variable 'epc_features' set but not used [-Wunused-but-set-variable]
     541 |         const struct pci_epc_features *epc_features;
         |                                        ^~~~~~~~~~~~


vim +/epc_features +541 drivers/pci/endpoint/functions/pci-epf-vntb.c

d90921d21692b59 Frank Li 2022-07-07  534  
53efbaa43643f36 Frank Li 2022-02-22  535  /**
53efbaa43643f36 Frank Li 2022-02-22  536   * epf_ntb_db_bar_init() - Configure Doorbell window BARs
53efbaa43643f36 Frank Li 2022-02-22  537   * @ntb: NTB device that facilitates communication between HOST and vHOST
53efbaa43643f36 Frank Li 2022-02-22  538   */
53efbaa43643f36 Frank Li 2022-02-22  539  static int epf_ntb_db_bar_init(struct epf_ntb *ntb)
53efbaa43643f36 Frank Li 2022-02-22  540  {
53efbaa43643f36 Frank Li 2022-02-22 @541  	const struct pci_epc_features *epc_features;
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
53efbaa43643f36 Frank Li 2022-02-22  560  		mw_addr = pci_epf_alloc_space(ntb->epf, size, barno, align, 0);
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

:::::: The code at line 541 was first introduced by commit
:::::: 53efbaa43643f36d203700e7f436eaac11695274 PCI: endpoint: Support NTB transfer between RC and EP

:::::: TO: Frank Li <Frank.Li@nxp.com>
:::::: CC: Jon Mason <jdmason@kudzu.us>

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202208141103.CnuY3Xvp-lkp%40intel.com.
