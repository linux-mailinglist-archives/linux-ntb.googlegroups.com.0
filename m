Return-Path: <linux-ntb+bncBC4LXIPCY4NRBDMC4OLQMGQEQPVZJWA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 524CF591F48
	for <lists+linux-ntb@lfdr.de>; Sun, 14 Aug 2022 11:31:59 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id q5-20020a2e84c5000000b0025ec9ff93c8sf1545248ljh.15
        for <lists+linux-ntb@lfdr.de>; Sun, 14 Aug 2022 02:31:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660469518; cv=pass;
        d=google.com; s=arc-20160816;
        b=nhGtCgRLxyOHdv6d25qj+HL03GJtEsAY5meAT1vos9TT5GiTDJTib1zi3l4N5XTCiw
         Jw0NqOBjUYXNmeRmQqZMWaZ6FoNxC+gTCWOKZYZFFiYP3x6bkrkiQkEf0nJe3AHi/QGZ
         to6ZG9bTHqM3roUDVuOC4Q5/Kegts2l+GcdVNkwTdX9SqT9xpBe7PtT253z/ACWBHveL
         0lEyOAZTWDuuodliIxnsaWtk4tCf/UxIblrSWoWOAVM8kunQbhM59ZFzkjNajR+5SFwn
         oPGAjkXJSjrrO98FispxO4cwghXQtfS7DW7MiTuTtpm+4M6wvzv3hdmlKPdZGu29h7bN
         TPow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=G21nyFgnpRADgsWlVi+QH79oM5tWcCZbKJ796sScfcs=;
        b=Dg8ZFKcEICcZYNam2H4jbaPgfld+7rEr5+1UIoQ6sdxje3qJeLg/RPzn8nnHBTTUlQ
         t38EhbK65kevT/XdK6+YL8OUNf5vhpGBSKyhi0GUiw3eIRxAXczM9rv3SzizcAi4QREa
         17eyxn6U3vnjH9BhkN7u78mXuY6efS4xF3Bh1+WJhCjJ2yCwfLgpPMQvyuDyla/9ztcP
         YUBhEtln49SnSBflwPBBG+GPfSfrXyhkmTKoL3c1Rz+Gfqdsdsr9xf/o7KFXfA8GDZIJ
         7qK7sqNux8n7mMtKCXdkngvsqnsrVF6HGisNsQZXknghJaA1Y1FB5k3wgqbzgB/a8U0+
         bT2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=dbb1eG5s;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:sender:from:to:cc;
        bh=G21nyFgnpRADgsWlVi+QH79oM5tWcCZbKJ796sScfcs=;
        b=XRppdEWmumHGeElCysuG/tEr16GU9AT4zorXgJNDKO1pjx1O3FwjoQOknfk9kt0ylo
         UWMUCP8EY05ReKWAkZ7hxa+1sqCgXn4kpDEC644m/rdu+/tnoHifbW4wYDoh85QCE1JR
         9FQdOyVoIDrGn3iBTCZH8DQvMYAq832E70GaxVX9lwFHtZ+CDcphBdNj+qfOvL8chjj2
         f3CCfF2ewNbZuebF4GDCM3xjWwCAm2Zq2by5fF52Htd3KkngQE7Dl3BqXjvCQT5Y7+Ca
         kamxC2oMaxp+Dmo+aipSmx4qoRTyQH6eYdcT6n8A1wYvgqQcxJnDNoNXtdQ80DWqAyNf
         S2Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc;
        bh=G21nyFgnpRADgsWlVi+QH79oM5tWcCZbKJ796sScfcs=;
        b=HR4rIuULUiW6Weje8cOUeyt3uqoAnQqvdjaBFXVO7P893TRkiADlx/NtIMwRV6vvjB
         kk5NumGL2K/fYYm1RQtqDJeyfaDRTmS+aufopY7v0zRDFU6fNK3QocfKQ7Or69+XNxNQ
         Kh6BJ3Q8EVYoTTrNBOA9wiD/VSAKPngXZJiFXg68IfJWHwZSM6VG/o0D19tuetvXmXR3
         Li/oWUWpQZuPkzV9YZFpZqAs3DL9BBrtzL4Ejw82oA9p9bIc/i6PWCkycQFNu3JKhCsT
         3Oo+DKg4dzuB8Co0jRYGgVEwP7HWkzuUewqtZnuh4wSzVw3A+3i9nTo4x5t7A/NLzG/H
         2iOA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACgBeo1zM2SyFukVL6eed6/lvmPBNdvMG4/DOgN93vYps6U0Vbf/HIcy
	McuvA6NFActbuZ0m8j/HDSI=
X-Google-Smtp-Source: AA6agR5TAcwoXSGlzf16VgeAMb47MejtMtQ8+kv5abPwbrTxlrLbR2djdNgvBkr2SD6uYrC4g/m7Fg==
X-Received: by 2002:a05:651c:1a1e:b0:25f:e7bd:6a4e with SMTP id by30-20020a05651c1a1e00b0025fe7bd6a4emr3688228ljb.362.1660469517780;
        Sun, 14 Aug 2022 02:31:57 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:8958:0:b0:25f:dcd4:53b4 with SMTP id b24-20020a2e8958000000b0025fdcd453b4ls1399656ljk.3.-pod-prod-gmail;
 Sun, 14 Aug 2022 02:31:56 -0700 (PDT)
X-Received: by 2002:a2e:7007:0:b0:261:6dd1:e0f5 with SMTP id l7-20020a2e7007000000b002616dd1e0f5mr3603281ljc.394.1660469516353;
        Sun, 14 Aug 2022 02:31:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660469516; cv=none;
        d=google.com; s=arc-20160816;
        b=VRI8l/A/nWp006cBS9b2K9WbjeGaJs7FyNvjkPCHb1lYMkguSu4Ku+/La3gHyz5ydb
         2uuYEqQVSG2mrVt5sHVc2mz8ubtdWiBHkkIBqvo5XKVXWtqm4YTQuCLb2Cjo4APBIDam
         dWnJADLdC0XgB42lXmMZO9OTp/NMO+kup93VkihPv1rVXu5pC6GZD7Vy3zBOMS0kGJa6
         Vc6jjUH/RthiL1HCGPI3iaBw5NI7kucIVvvd1whTXso/OmycfIIuschAVWp+/7BHqtpN
         bRREcHkfNIQbH5KHziX+ZbVV6z2BFpnmJAJ7EE+QJepqNcctCa+B8JWOF0Jfdiw8Y3fR
         nukA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ZHVyzozDap1t2bAkmXGsbor82nbQ0H5jMrnxWD74xFg=;
        b=OD12Rf5frp0mS+f0/GxenBvwyF8udzzBMsYJnLiiDaHdrlbnKR8E2BABGS/1OdQ45f
         CER0fLgRERkaOpG41EKCsSMu2Lrnl4hEm2367e9p6qfBT25IibLYqOqMozmwL6x0e3ai
         ALaWZ+EjaQLahjDNwxmygUO1PLhUXzxA+s6YySlbJxzHHI0T/Y3Bqulv/KcSt4x3x9FF
         FgR4G1tJOZCmUhutvTU2QIGV9Jrje9VyQTtxcs/dK40lqh9H0/C84fnhTcD7V6mj0X7S
         KyN/gIHN+EYhMw5Pzvv82Vk1KRhUYbSXSfVQ174z7AlX2uAwZm21EGEpGRCtG3a3KiWO
         LOGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=dbb1eG5s;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id v5-20020a05651203a500b0048b12871da5si532432lfp.4.2022.08.14.02.31.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Aug 2022 02:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="292607368"
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="292607368"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2022 02:31:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="582556787"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 14 Aug 2022 02:31:48 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oN9yF-0002hV-2j;
	Sun, 14 Aug 2022 09:31:47 +0000
Date: Sun, 14 Aug 2022 17:31:30 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: kbuild-all@lists.01.org, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>
Subject: [jonmason-ntb:ntb-next-hacking 16/18]
 drivers/irqchip/irq-imx-mu-msi.c:138:15: error: variable 'its_pmsi_ops' has
 initializer but incomplete type
Message-ID: <202208141740.eJRBGaw2-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=dbb1eG5s;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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
config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20220814/202208141740.eJRBGaw2-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/jonmason/ntb/commit/1db755129d2544df84dc197095c14170cfa419c7
        git remote add jonmason-ntb https://github.com/jonmason/ntb
        git fetch --no-tags jonmason-ntb ntb-next-hacking
        git checkout 1db755129d2544df84dc197095c14170cfa419c7
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sh SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/irqchip/irq-imx-mu-msi.c:138:15: error: variable 'its_pmsi_ops' has initializer but incomplete type
     138 | static struct msi_domain_ops its_pmsi_ops = {
         |               ^~~~~~~~~~~~~~
>> drivers/irqchip/irq-imx-mu-msi.c:141:15: error: variable 'imx_mu_msi_domain_info' has initializer but incomplete type
     141 | static struct msi_domain_info imx_mu_msi_domain_info = {
         |               ^~~~~~~~~~~~~~~
>> drivers/irqchip/irq-imx-mu-msi.c:142:10: error: 'struct msi_domain_info' has no member named 'flags'
     142 |         .flags  = (MSI_FLAG_USE_DEF_DOM_OPS |
         |          ^~~~~
>> drivers/irqchip/irq-imx-mu-msi.c:142:20: error: 'MSI_FLAG_USE_DEF_DOM_OPS' undeclared here (not in a function)
     142 |         .flags  = (MSI_FLAG_USE_DEF_DOM_OPS |
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/irqchip/irq-imx-mu-msi.c:143:20: error: 'MSI_FLAG_USE_DEF_CHIP_OPS' undeclared here (not in a function)
     143 |                    MSI_FLAG_USE_DEF_CHIP_OPS |
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/irqchip/irq-imx-mu-msi.c:144:20: error: 'MSI_FLAG_PCI_MSIX' undeclared here (not in a function)
     144 |                    MSI_FLAG_PCI_MSIX),
         |                    ^~~~~~~~~~~~~~~~~
   drivers/irqchip/irq-imx-mu-msi.c:142:19: warning: excess elements in struct initializer
     142 |         .flags  = (MSI_FLAG_USE_DEF_DOM_OPS |
         |                   ^
   drivers/irqchip/irq-imx-mu-msi.c:142:19: note: (near initialization for 'imx_mu_msi_domain_info')
>> drivers/irqchip/irq-imx-mu-msi.c:145:10: error: 'struct msi_domain_info' has no member named 'ops'
     145 |         .ops    = &its_pmsi_ops,
         |          ^~~
   drivers/irqchip/irq-imx-mu-msi.c:145:19: warning: excess elements in struct initializer
     145 |         .ops    = &its_pmsi_ops,
         |                   ^
   drivers/irqchip/irq-imx-mu-msi.c:145:19: note: (near initialization for 'imx_mu_msi_domain_info')
>> drivers/irqchip/irq-imx-mu-msi.c:146:10: error: 'struct msi_domain_info' has no member named 'chip'
     146 |         .chip   = &imx_mu_msi_irq_chip,
         |          ^~~~
   drivers/irqchip/irq-imx-mu-msi.c:146:19: warning: excess elements in struct initializer
     146 |         .chip   = &imx_mu_msi_irq_chip,
         |                   ^
   drivers/irqchip/irq-imx-mu-msi.c:146:19: note: (near initialization for 'imx_mu_msi_domain_info')
   drivers/irqchip/irq-imx-mu-msi.c: In function 'imx_mu_msi_domain_irq_alloc':
>> drivers/irqchip/irq-imx-mu-msi.c:179:9: error: unknown type name 'msi_alloc_info_t'
     179 |         msi_alloc_info_t *info = args;
         |         ^~~~~~~~~~~~~~~~
>> drivers/irqchip/irq-imx-mu-msi.c:197:41: error: request for member 'desc' in something not a structure or union
     197 |         err = iommu_dma_prepare_msi(info->desc, msi_data->msiir_addr + pos * 4);
         |                                         ^~
   drivers/irqchip/irq-imx-mu-msi.c: In function 'imx_mu_msi_domains_init':
>> drivers/irqchip/irq-imx-mu-msi.c:262:32: error: implicit declaration of function 'platform_msi_create_irq_domain' [-Werror=implicit-function-declaration]
     262 |         msi_data->msi_domain = platform_msi_create_irq_domain(
         |                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/irqchip/irq-imx-mu-msi.c:262:30: warning: assignment to 'struct irq_domain *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
     262 |         msi_data->msi_domain = platform_msi_create_irq_domain(
         |                              ^
   drivers/irqchip/irq-imx-mu-msi.c: At top level:
>> drivers/irqchip/irq-imx-mu-msi.c:138:30: error: storage size of 'its_pmsi_ops' isn't known
     138 | static struct msi_domain_ops its_pmsi_ops = {
         |                              ^~~~~~~~~~~~
>> drivers/irqchip/irq-imx-mu-msi.c:141:31: error: storage size of 'imx_mu_msi_domain_info' isn't known
     141 | static struct msi_domain_info imx_mu_msi_domain_info = {
         |                               ^~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +/its_pmsi_ops +138 drivers/irqchip/irq-imx-mu-msi.c

   137	
 > 138	static struct msi_domain_ops its_pmsi_ops = {
   139	};
   140	
 > 141	static struct msi_domain_info imx_mu_msi_domain_info = {
 > 142		.flags	= (MSI_FLAG_USE_DEF_DOM_OPS |
 > 143			   MSI_FLAG_USE_DEF_CHIP_OPS |
 > 144			   MSI_FLAG_PCI_MSIX),
 > 145		.ops	= &its_pmsi_ops,
 > 146		.chip	= &imx_mu_msi_irq_chip,
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
 > 197		err = iommu_dma_prepare_msi(info->desc, msi_data->msiir_addr + pos * 4);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202208141740.eJRBGaw2-lkp%40intel.com.
