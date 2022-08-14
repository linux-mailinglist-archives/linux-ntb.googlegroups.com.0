Return-Path: <linux-ntb+bncBC4LXIPCY4NRBWOD4GLQMGQEX2RE3UI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id B4268591D9F
	for <lists+linux-ntb@lfdr.de>; Sun, 14 Aug 2022 04:45:46 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id x26-20020a2e9dda000000b0025e608acc1dsf1415381ljj.5
        for <lists+linux-ntb@lfdr.de>; Sat, 13 Aug 2022 19:45:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660445146; cv=pass;
        d=google.com; s=arc-20160816;
        b=TH0b3433Jw/S/O+NcIzH31TNuHU4lE9EOW3S477TjyAsw//NWKtO+H+WRwhKgRjZj5
         fqs7mxD6pnpYJd5IetAempICe+jLBDJZ/auZ4PlThGTAY0qwOh7fHyy2PX+CpDOp9idJ
         m98QVEOFtlMDGSn0ZByP+Gzb8GeJ8y+zeI4Q7miajTdNqadwdXO8y+OvpQiE3NIJr8Sw
         eZ5hYoE02u29UguuU+WrWI9FUoOwHZslOuhX2f2rTzMsFP3VfZ7YMSaAlpPczHg2llwm
         sj5OdHqC3dDXU94oGvw4eVlujNLa3lEsYF0E0A32qEXFCfyhQzYtsGj1RB9aBSxR0Vhz
         WZ7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=hJlBxRYWJlyZicbRqZbrAYXbqW5cCondtTrbomYmin8=;
        b=hkMIXZnf2cTBM0rwZL801e8CoAh3kLUIrPJWahIFD0dvRRXakRO7LW1sKPKJo5M3+L
         bKlME3NUBpwwvheq0Cb7j4/oJT/ha453ZR6HKcXWXzIUj1PK4j8iAW9UTUy/4geaAlW9
         MYDGUexCet9aOc8RTKIOTRz0/VAqPTrZ1q/vTyG6Or6BknlXnwCGOGeHeEeZFPICodSz
         f1FejN7tVd4i8FL/9BaIvPXOciQE+PbCW27iYn76dpQ39e8tCU1YCGNDjTfPUzhB3SCs
         4dLz21ZqVgtl51Al7tbQfS49MgcdbaGhdbgS3iup+G5+HBmsCZ9XRBX0wpgMe9rOZ9ri
         N/7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=RhW1Phvx;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:sender:from:to:cc;
        bh=hJlBxRYWJlyZicbRqZbrAYXbqW5cCondtTrbomYmin8=;
        b=tf0R0f1uS5UjJzG6v9bk7MSbqA3qcP5vTcFSg1kuloZ1wLt1JKb/HjW78eaX+JVR52
         uSa3obn+suOyLaLxDvpk0Y6rho2l+CpOOvANlNLT85iq87x23VVCdghmuL5XkRNcrU3c
         mMuzKVlFSpWR3UwRVFg4gdflGKw4A3xvCnI825Og7Ad+ykmFpe4CgXtMrwJ8fvYicWNC
         byedm4yhYencvplCEMrtRMVuFC2CSyUmfc9AMGTvCgY0rwvoXcDFUQJ6SjRY3umseddR
         XXOzorz+a69LHwwy2unz35zE8p7ycjIPtBHIrJfDJYSC4TB6miDRMYZgCV+wvB36MA4P
         sa6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc;
        bh=hJlBxRYWJlyZicbRqZbrAYXbqW5cCondtTrbomYmin8=;
        b=fgKJ/IEMoNw61erfIJyAQEdj/DrAzO947Op/GPlkmVCAoIDBecmdwIHbeiF3d+evBX
         OaIsCXbF4DJNLhESLdzjiMZvCF0PDTSHCJ3XXcfvaO/f50VQVU7c0kzDtF+9C8TUXXTi
         yYN4cd9WxsBEozzEeui+80Ek/5jvtGnIyjgz6Ta3tXh7PX0MNiLGufcWgTT6C6ousQ//
         vSAka3+t2uEWRqcbEQmmHl2M+9kD5fShaGflqA4h1HJURcG67SQ/kXxGQwGcY91aE2+o
         8ewKTPcEFDbnn4rstkTDbi5gFm03Kt4ZFYhIOQ72VyAiBKUW9JOSDiMlSDaJNl4UD/g9
         FMiA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACgBeo3tY5uvX3+DQfOGc1WBATpaO4DJS2fGTdF/chSCy5Tqy9anGNrc
	MUuU6h95Zirgbwg3RyrClhM=
X-Google-Smtp-Source: AA6agR4DcLb2AIsHVrMI1StYNQtXPBEzdBtPltr4w8XyUbfVVBVZIvF5ixsPggYXCC7J1kjxT91Inw==
X-Received: by 2002:a05:6512:239f:b0:491:cd95:f67d with SMTP id c31-20020a056512239f00b00491cd95f67dmr942945lfv.184.1660445145493;
        Sat, 13 Aug 2022 19:45:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:5e28:0:b0:48b:253:97e6 with SMTP id o8-20020ac25e28000000b0048b025397e6ls351249lfg.1.-pod-prod-gmail;
 Sat, 13 Aug 2022 19:45:44 -0700 (PDT)
X-Received: by 2002:a05:6512:2609:b0:491:10ba:31f0 with SMTP id bt9-20020a056512260900b0049110ba31f0mr1569012lfb.334.1660445144364;
        Sat, 13 Aug 2022 19:45:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660445144; cv=none;
        d=google.com; s=arc-20160816;
        b=fm5be2ISftHNrdbxdev1OJDPZkp+E50vNM00rjJdxLRrTD3wg+FYYWs6oDFRBWZspT
         U2R5iEfARyRH2XGcSqPsYb1iUpr15t/ZeisYRLjaFmA5VcHZ/J2C0AAtci0gnj9XNfsN
         dBBSGq3ykhwEYMy5IVzG8Nph44ZvwUSPDp2Vqg2HVr9GGqD00cYQQZwXji+covKOFWE/
         6dCVzwZF/tlnnXHf7mM642CuAx+2FRNXoqaXRBHGTIlrbu048psSmLHPcxsK1azJj7Qm
         Z8hKRuHyO5JYyBQ0ranevmYp6JAT85/kcwAno02bmtwnd5fWPsrXy9y9LxwlYP5eUenD
         raHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=hcv2Td7XgOn8vPXWoxME4PiERJhs/+iKyWq+MDtZBTw=;
        b=mM8YcpAK1NuauipjGM/cTSbjT32+pZdYFnkCFlc7FBPmB0kFEQM3c4M2VC6jZqkYG3
         osXJARTKvUkZshCMLq0pqemQT8oS2ZhetUq4jHOq06tcfGhDdqpR3Q8tP57hKOsoop9d
         l+fI6g2eWFvZnqV7ce9lGZcWvo7zHpeLkfqAoiWoqAEXskCtQ/+P/pZ+kGQeljQiL8if
         rzuhhmSKYnULzElG345GRuPnw50C0wkgMFc84v34QtlT2DfOdKkfftFdQ5XBcAbln6+s
         cMsx0o8J4Gg8ghGdsi+kHtjxLT1sMRHvQmqTlbRjcvIzMAMp/YntC+5nS5sr27zrmjOM
         5NDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=RhW1Phvx;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id c3-20020ac25f63000000b0048b39ae06fbsi552617lfc.11.2022.08.13.19.45.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Aug 2022 19:45:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="278748307"
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="278748307"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2022 19:45:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="674477254"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 13 Aug 2022 19:45:39 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oN3dC-0002Nr-2H;
	Sun, 14 Aug 2022 02:45:38 +0000
Date: Sun, 14 Aug 2022 10:45:17 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
	linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>
Subject: [jonmason-ntb:ntb-next-hacking 16/18]
 drivers/irqchip/irq-imx-mu-msi.c:138:30: error: variable has incomplete type
 'struct msi_domain_ops'
Message-ID: <202208141041.iKTkTxDJ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=RhW1Phvx;       spf=pass
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

tree:   https://github.com/jonmason/ntb ntb-next-hacking
head:   d90921d21692b59734d2452efea346217a526f44
commit: 1db755129d2544df84dc197095c14170cfa419c7 [16/18] irqchip: imx mu worked as msi controller
config: arm-randconfig-r016-20220810 (https://download.01.org/0day-ci/archive/20220814/202208141041.iKTkTxDJ-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 5f1c7e2cc5a3c07cbc2412e851a7283c1841f520)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/jonmason/ntb/commit/1db755129d2544df84dc197095c14170cfa419c7
        git remote add jonmason-ntb https://github.com/jonmason/ntb
        git fetch --no-tags jonmason-ntb ntb-next-hacking
        git checkout 1db755129d2544df84dc197095c14170cfa419c7
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/irqchip/irq-imx-mu-msi.c:138:30: error: variable has incomplete type 'struct msi_domain_ops'
   static struct msi_domain_ops its_pmsi_ops = {
                                ^
   drivers/irqchip/irq-imx-mu-msi.c:138:15: note: forward declaration of 'struct msi_domain_ops'
   static struct msi_domain_ops its_pmsi_ops = {
                 ^
>> drivers/irqchip/irq-imx-mu-msi.c:142:12: error: use of undeclared identifier 'MSI_FLAG_USE_DEF_DOM_OPS'
           .flags  = (MSI_FLAG_USE_DEF_DOM_OPS |
                      ^
>> drivers/irqchip/irq-imx-mu-msi.c:143:6: error: use of undeclared identifier 'MSI_FLAG_USE_DEF_CHIP_OPS'
                      MSI_FLAG_USE_DEF_CHIP_OPS |
                      ^
>> drivers/irqchip/irq-imx-mu-msi.c:144:6: error: use of undeclared identifier 'MSI_FLAG_PCI_MSIX'
                      MSI_FLAG_PCI_MSIX),
                      ^
>> drivers/irqchip/irq-imx-mu-msi.c:141:31: error: variable has incomplete type 'struct msi_domain_info'
   static struct msi_domain_info imx_mu_msi_domain_info = {
                                 ^
   drivers/irqchip/irq-imx-mu-msi.c:141:15: note: forward declaration of 'struct msi_domain_info'
   static struct msi_domain_info imx_mu_msi_domain_info = {
                 ^
>> drivers/irqchip/irq-imx-mu-msi.c:179:2: error: use of undeclared identifier 'msi_alloc_info_t'
           msi_alloc_info_t *info = args;
           ^
>> drivers/irqchip/irq-imx-mu-msi.c:179:20: error: use of undeclared identifier 'info'
           msi_alloc_info_t *info = args;
                             ^
   drivers/irqchip/irq-imx-mu-msi.c:197:30: error: use of undeclared identifier 'info'
           err = iommu_dma_prepare_msi(info->desc, msi_data->msiir_addr + pos * 4);
                                       ^
>> drivers/irqchip/irq-imx-mu-msi.c:262:25: error: call to undeclared function 'platform_msi_create_irq_domain'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
           msi_data->msi_domain = platform_msi_create_irq_domain(
                                  ^
   9 errors generated.


vim +138 drivers/irqchip/irq-imx-mu-msi.c

   137	
 > 138	static struct msi_domain_ops its_pmsi_ops = {
   139	};
   140	
 > 141	static struct msi_domain_info imx_mu_msi_domain_info = {
 > 142		.flags	= (MSI_FLAG_USE_DEF_DOM_OPS |
 > 143			   MSI_FLAG_USE_DEF_CHIP_OPS |
 > 144			   MSI_FLAG_PCI_MSIX),
   145		.ops	= &its_pmsi_ops,
   146		.chip	= &imx_mu_msi_irq_chip,
   147	};
   148	
   149	static void imx_mu_msi_compose_msg(struct irq_data *data, struct msi_msg *msg)
   150	{
   151		struct imx_mu_msi *msi_data = irq_data_get_irq_chip_data(data);
   152	
   153		msg->address_hi = upper_32_bits(msi_data->msiir_addr);
   154		msg->address_lo = lower_32_bits(msi_data->msiir_addr + 4 * data->hwirq);
   155		msg->data = data->hwirq;
   156	
   157		iommu_dma_compose_msi_msg(irq_data_get_msi_desc(data), msg);
   158	}
   159	
   160	static int imx_mu_msi_set_affinity(struct irq_data *irq_data,
   161					   const struct cpumask *mask, bool force)
   162	
   163	{
   164		return IRQ_SET_MASK_OK;
   165	}
   166	
   167	static struct irq_chip imx_mu_msi_parent_chip = {
   168		.name			= "MU",
   169		.irq_compose_msi_msg	= imx_mu_msi_compose_msg,
   170		.irq_set_affinity = imx_mu_msi_set_affinity,
   171	};
   172	
   173	static int imx_mu_msi_domain_irq_alloc(struct irq_domain *domain,
   174						unsigned int virq,
   175						unsigned int nr_irqs,
   176						void *args)
   177	{
   178		struct imx_mu_msi *msi_data = domain->host_data;
 > 179		msi_alloc_info_t *info = args;
   180		int pos, err = 0;
   181	
   182		pm_runtime_get_sync(&msi_data->pdev->dev);
   183	
   184		WARN_ON(nr_irqs != 1);
   185	
   186		spin_lock(&msi_data->lock);
   187		pos = find_first_zero_bit(&msi_data->used, msi_data->irqs_num);
   188		if (pos < msi_data->irqs_num)
   189			__set_bit(pos, &msi_data->used);
   190		else
   191			err = -ENOSPC;
   192		spin_unlock(&msi_data->lock);
   193	
   194		if (err)
   195			return err;
   196	
   197		err = iommu_dma_prepare_msi(info->desc, msi_data->msiir_addr + pos * 4);
   198		if (err)
   199			return err;
   200	
   201		irq_domain_set_info(domain, virq, pos,
   202				    &imx_mu_msi_parent_chip, msi_data,
   203				    handle_simple_irq, NULL, NULL);
   204		return 0;
   205	}
   206	
   207	static void imx_mu_msi_domain_irq_free(struct irq_domain *domain,
   208					       unsigned int virq, unsigned int nr_irqs)
   209	{
   210		struct irq_data *d = irq_domain_get_irq_data(domain, virq);
   211		struct imx_mu_msi *msi_data = irq_data_get_irq_chip_data(d);
   212		int pos;
   213	
   214		pos = d->hwirq;
   215		if (pos < 0 || pos >= msi_data->irqs_num) {
   216			pr_err("failed to teardown msi. Invalid hwirq %d\n", pos);
   217			return;
   218		}
   219	
   220		spin_lock(&msi_data->lock);
   221		__clear_bit(pos, &msi_data->used);
   222		spin_unlock(&msi_data->lock);
   223	
   224		pm_runtime_put(&msi_data->pdev->dev);
   225	}
   226	
   227	static const struct irq_domain_ops imx_mu_msi_domain_ops = {
   228		.alloc	= imx_mu_msi_domain_irq_alloc,
   229		.free	= imx_mu_msi_domain_irq_free,
   230	};
   231	
   232	static void imx_mu_msi_irq_handler(struct irq_desc *desc)
   233	{
   234		struct imx_mu_msi *msi_data = irq_desc_get_handler_data(desc);
   235		u32 status;
   236		int i;
   237	
   238		status = imx_mu_read(msi_data, msi_data->cfg->xSR[IMX_MU_RSR]);
   239	
   240		chained_irq_enter(irq_desc_get_chip(desc), desc);
   241		for (i = 0; i < IMX_MU_CHANS; i++) {
   242			if (status & IMX_MU_xSR_RFn(msi_data->cfg->type, i)) {
   243				imx_mu_read(msi_data, msi_data->cfg->xRR + i * 4);
   244				generic_handle_domain_irq(msi_data->parent, i);
   245			}
   246		}
   247		chained_irq_exit(irq_desc_get_chip(desc), desc);
   248	}
   249	
   250	static int imx_mu_msi_domains_init(struct imx_mu_msi *msi_data)
   251	{
   252		/* Initialize MSI domain parent */
   253		msi_data->parent = irq_domain_add_linear(NULL,
   254							 msi_data->irqs_num,
   255							 &imx_mu_msi_domain_ops,
   256							 msi_data);
   257		if (!msi_data->parent) {
   258			dev_err(&msi_data->pdev->dev, "failed to create IRQ domain\n");
   259			return -ENOMEM;
   260		}
   261	
 > 262		msi_data->msi_domain = platform_msi_create_irq_domain(
   263					of_node_to_fwnode(msi_data->pdev->dev.of_node),
   264					&imx_mu_msi_domain_info,
   265					msi_data->parent);
   266	
   267		if (!msi_data->msi_domain) {
   268			dev_err(&msi_data->pdev->dev, "failed to create MSI domain\n");
   269			irq_domain_remove(msi_data->parent);
   270			return -ENOMEM;
   271		}
   272	
   273		return 0;
   274	}
   275	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202208141041.iKTkTxDJ-lkp%40intel.com.
