Return-Path: <linux-ntb+bncBC4LXIPCY4NRBWEH4KLQMGQEFJHCPAQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF44B591E5E
	for <lists+linux-ntb@lfdr.de>; Sun, 14 Aug 2022 07:10:49 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id by17-20020a05651c1a1100b0025e54bda6c7sf1444782ljb.22
        for <lists+linux-ntb@lfdr.de>; Sat, 13 Aug 2022 22:10:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660453849; cv=pass;
        d=google.com; s=arc-20160816;
        b=PkcLOyJn1kyPOSldZb11PypCFlYizvEc4tF3tBtCDUuPFwC4ITrRVbeDG3lNFNOyoa
         s7cJQA9gR8xoq9XNl3bVH/NSgm4799P2ICLDLwhQE2tiw00eihwOUXpkHMS4U/+QF401
         uTBa78aGO1uzcIjkoojYcT13ahjoFQtgHp3v8NMFUlNiITfx8UfMuNS8+TLhmHqksi00
         8Vh8XUStyvL8HY/ECNoNutNQnH35eTn2NjqVADSc+VE1oM/KwOUtcQlwm9Y2uryagj4x
         ADoUSy4zztopZUFQ7GqepcAUqB47dHaKaddEXJg0PIl0UrXLZg5PVKf4GZbeRUoH+wjQ
         Hw5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=mS77iRR52okfI9Ow3IpTn9doi92KdQMH2nKPe3WGKwU=;
        b=Zy+v9rbvb8m+y6oSJY6/haCBxaJZ56Iv0Y6rh3jMi9ddAxTwSvX8PTKuuU6OuqYLGd
         gKYWduqjscBfzV5Qw61y0y5D7CbBW4FIfUf7wC/I1H6U92+fK4mSBAuSreM/O6G6eBNT
         oCVD7h61yIsn/HWWUWg7HHJqkN/d+UVpCL09yUz9GAauX+dmMNpYd2kaciHAWPJD1c7X
         c+ez3nqNPf14cBJPXWUccZ6Gbpn4v3c/kGZP/TWywms1mupOIbgy/QCG9Jbuz9PDMyjc
         57ZhebWjMIty+VrhJltoD0fJw/XFIYzgLHN30TVSPLZ1tV/h/ZYte54TWOtl6zTwZ7Gj
         57WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=XBsXexBp;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:sender:from:to:cc;
        bh=mS77iRR52okfI9Ow3IpTn9doi92KdQMH2nKPe3WGKwU=;
        b=O79v3HadtJth3xTmhkJnRAK5EQGdunUNOvIn4QhuBm5o+R3jZNNhno+0RYHgEWVtKt
         2RiVjcH66BdBlYrgRai3I1odowhl3Q1S65ufxg+ReRxpGRLRJrmcvVwnLj1NIr/E6CX3
         dSiIaHllX/YRYzvdc6VUc/iAC6grbSDbysbJ3uoUcbtQE0CZ8R7wgsmteLP7Ud0j8B+I
         y+3LEkpVJqF4ieEMTOATP2rB2jGgOeCg+keaD2hXsHVKSzqEW0/JhQaBnCA0IS/w4KLh
         3gyzW4C6NmOEhasatZ/KnsJ//fvyskxcg0u/Uia2u5GtBfTiFzMcObjwbnTtFPEHN8sE
         eQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc;
        bh=mS77iRR52okfI9Ow3IpTn9doi92KdQMH2nKPe3WGKwU=;
        b=0ZPobBe/aPQdpk10ttVYf72rsKKraYHzDVlsHzRTAfS9x7V+n7XDWn0QuseUqRsWPz
         QkL3R3/EC0Uxt4cvS7LD1GqDDxLvP/9rkeZVmrKq3w6pASoCpexAmOcyOeMQIIxgSHPC
         8l/bu+4eq9UiqwfIQqTA9tvp6w6OCue9B2bivb8GCGwMGHoO5KsHhVfGOjV05uQx1yab
         gPLfedMPEBk+McDnSX+Qmp2HOUAG/QKXEkWSguJEe+X5SZl+ZllN/N2xsy4WQQwK5TEI
         1gN3Pv1UUd9+kInE6NDPekeld6k6ddc1nf1plOVaEYB4pM9UpvCZqcAvpqiZ88cWcDS9
         yiog==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACgBeo3KyZIs3B/dusH4PePsLl2nUYEKWH2lQzBnoB683yOTcEarhzJr
	lpxSIGdF/bcF3vqJ2/XG/G0=
X-Google-Smtp-Source: AA6agR75BL7vduBPsroEJKqUjojv5bLi3jyCINsA3qyIAVh+aQYS40zY2TKvdavvXbZ7so0vopXiDA==
X-Received: by 2002:a05:6512:3288:b0:48a:e823:3390 with SMTP id p8-20020a056512328800b0048ae8233390mr3945622lfe.451.1660453849260;
        Sat, 13 Aug 2022 22:10:49 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9858:0:b0:25e:5272:6478 with SMTP id e24-20020a2e9858000000b0025e52726478ls1357524ljj.8.-pod-prod-gmail;
 Sat, 13 Aug 2022 22:10:47 -0700 (PDT)
X-Received: by 2002:a05:651c:19a7:b0:25f:e198:a9be with SMTP id bx39-20020a05651c19a700b0025fe198a9bemr2992620ljb.309.1660453847890;
        Sat, 13 Aug 2022 22:10:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660453847; cv=none;
        d=google.com; s=arc-20160816;
        b=Olnt/zlM38v1ssVQDYUbLQoAnSfK/K/OaVarjovmru0V5mBC4xl0G6pTzsjUqSkkIe
         Fhh2GQ2bPKQq3ABHW/nW44q+VaOhxAdJU7y04w4y/czGfVIMiLz/WrmtMuQsN6dUHdDA
         599Hl6t0/FschfZWzYZtzxPaBYob82JE0OIOvI+3PoU3waQk8McK3WR80bsvBJyvyBud
         yeFjMG5iE1gEuwgXdp4zs+V/z0R8VdvEoHRCy3G2GPgy29PacUr1wCM/ZqLY5jNynblr
         sq/oEi7BsoxZf5tWWOZgQt+n7ItYPyb5d7kS+RbDd2+M88qTEh4NHuT7CjYiT2mT4M66
         cPvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=JMZ3ZOaqs+GMebuUabLtCSdicrtzUnjpZ2c1KuQJ1SM=;
        b=Txw5ktkTdP2y6XI8ZeOf+rJPobAwmZerSXore+ggptu/9XcNKK1to7+iQhV9boO87A
         ZLw3UKAYYTWNmJaOW3+Ky5wrMrq9IEn8Rrs3YNHJ32E9cpYurdOjLaLqlRLeFDnVETRh
         fYLr6d8iI0+28syxhuBH2E/ZEeoyJXqBobBX50yh68yoqmbdmQ/awKX+SvckkWgwRnhO
         CqJ6r0SeW97t+OelOSzb9AHGbzRBigAx57A71bSGnjl6Gtvb0A46fVFoaMbrfV9Ne5wS
         9cLCkAe7esGAeq4ekfnsGnlamVvgfq1RgUP9LO+c6IS2Yly2tq92wCsbTJ8xCwUDYGp5
         x10w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=XBsXexBp;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id t1-20020a2e8e61000000b0026187cf0f12si4803ljk.8.2022.08.13.22.10.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Aug 2022 22:10:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="291796393"
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="291796393"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2022 22:10:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="666291699"
Received: from lkp-server02.sh.intel.com (HELO 8745164cafc7) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 13 Aug 2022 22:10:43 -0700
Received: from kbuild by 8745164cafc7 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oN5ta-0002WN-1p;
	Sun, 14 Aug 2022 05:10:42 +0000
Date: Sun, 14 Aug 2022 13:10:39 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: kbuild-all@lists.01.org, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>
Subject: [jonmason-ntb:ntb-next-hacking 16/18]
 drivers/irqchip/irq-imx-mu-msi.c:142:19: warning: excess elements in struct
 initializer
Message-ID: <202208141350.BoRK1ikN-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=XBsXexBp;       spf=pass
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
commit: 1db755129d2544df84dc197095c14170cfa419c7 [16/18] irqchip: imx mu worked as msi controller
config: loongarch-allyesconfig (https://download.01.org/0day-ci/archive/20220814/202208141350.BoRK1ikN-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/jonmason/ntb/commit/1db755129d2544df84dc197095c14170cfa419c7
        git remote add jonmason-ntb https://github.com/jonmason/ntb
        git fetch --no-tags jonmason-ntb ntb-next-hacking
        git checkout 1db755129d2544df84dc197095c14170cfa419c7
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=loongarch SHELL=/bin/bash drivers/irqchip/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/irqchip/irq-imx-mu-msi.c:138:15: error: variable 'its_pmsi_ops' has initializer but incomplete type
     138 | static struct msi_domain_ops its_pmsi_ops = {
         |               ^~~~~~~~~~~~~~
   drivers/irqchip/irq-imx-mu-msi.c:141:15: error: variable 'imx_mu_msi_domain_info' has initializer but incomplete type
     141 | static struct msi_domain_info imx_mu_msi_domain_info = {
         |               ^~~~~~~~~~~~~~~
   drivers/irqchip/irq-imx-mu-msi.c:142:10: error: 'struct msi_domain_info' has no member named 'flags'
     142 |         .flags  = (MSI_FLAG_USE_DEF_DOM_OPS |
         |          ^~~~~
   drivers/irqchip/irq-imx-mu-msi.c:142:20: error: 'MSI_FLAG_USE_DEF_DOM_OPS' undeclared here (not in a function)
     142 |         .flags  = (MSI_FLAG_USE_DEF_DOM_OPS |
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/irqchip/irq-imx-mu-msi.c:143:20: error: 'MSI_FLAG_USE_DEF_CHIP_OPS' undeclared here (not in a function)
     143 |                    MSI_FLAG_USE_DEF_CHIP_OPS |
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/irqchip/irq-imx-mu-msi.c:144:20: error: 'MSI_FLAG_PCI_MSIX' undeclared here (not in a function)
     144 |                    MSI_FLAG_PCI_MSIX),
         |                    ^~~~~~~~~~~~~~~~~
>> drivers/irqchip/irq-imx-mu-msi.c:142:19: warning: excess elements in struct initializer
     142 |         .flags  = (MSI_FLAG_USE_DEF_DOM_OPS |
         |                   ^
   drivers/irqchip/irq-imx-mu-msi.c:142:19: note: (near initialization for 'imx_mu_msi_domain_info')
   drivers/irqchip/irq-imx-mu-msi.c:145:10: error: 'struct msi_domain_info' has no member named 'ops'
     145 |         .ops    = &its_pmsi_ops,
         |          ^~~
   drivers/irqchip/irq-imx-mu-msi.c:145:19: warning: excess elements in struct initializer
     145 |         .ops    = &its_pmsi_ops,
         |                   ^
   drivers/irqchip/irq-imx-mu-msi.c:145:19: note: (near initialization for 'imx_mu_msi_domain_info')
   drivers/irqchip/irq-imx-mu-msi.c:146:10: error: 'struct msi_domain_info' has no member named 'chip'
     146 |         .chip   = &imx_mu_msi_irq_chip,
         |          ^~~~
   drivers/irqchip/irq-imx-mu-msi.c:146:19: warning: excess elements in struct initializer
     146 |         .chip   = &imx_mu_msi_irq_chip,
         |                   ^
   drivers/irqchip/irq-imx-mu-msi.c:146:19: note: (near initialization for 'imx_mu_msi_domain_info')
   drivers/irqchip/irq-imx-mu-msi.c: In function 'imx_mu_msi_domain_irq_alloc':
   drivers/irqchip/irq-imx-mu-msi.c:179:9: error: unknown type name 'msi_alloc_info_t'
     179 |         msi_alloc_info_t *info = args;
         |         ^~~~~~~~~~~~~~~~
   drivers/irqchip/irq-imx-mu-msi.c:197:41: error: request for member 'desc' in something not a structure or union
     197 |         err = iommu_dma_prepare_msi(info->desc, msi_data->msiir_addr + pos * 4);
         |                                         ^~
   drivers/irqchip/irq-imx-mu-msi.c: In function 'imx_mu_msi_domains_init':
   drivers/irqchip/irq-imx-mu-msi.c:262:32: error: implicit declaration of function 'platform_msi_create_irq_domain' [-Werror=implicit-function-declaration]
     262 |         msi_data->msi_domain = platform_msi_create_irq_domain(
         |                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/irqchip/irq-imx-mu-msi.c:262:30: warning: assignment to 'struct irq_domain *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
     262 |         msi_data->msi_domain = platform_msi_create_irq_domain(
         |                              ^
   drivers/irqchip/irq-imx-mu-msi.c: At top level:
   drivers/irqchip/irq-imx-mu-msi.c:138:30: error: storage size of 'its_pmsi_ops' isn't known
     138 | static struct msi_domain_ops its_pmsi_ops = {
         |                              ^~~~~~~~~~~~
   drivers/irqchip/irq-imx-mu-msi.c:141:31: error: storage size of 'imx_mu_msi_domain_info' isn't known
     141 | static struct msi_domain_info imx_mu_msi_domain_info = {
         |                               ^~~~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +142 drivers/irqchip/irq-imx-mu-msi.c

   140	
   141	static struct msi_domain_info imx_mu_msi_domain_info = {
 > 142		.flags	= (MSI_FLAG_USE_DEF_DOM_OPS |
   143			   MSI_FLAG_USE_DEF_CHIP_OPS |
   144			   MSI_FLAG_PCI_MSIX),
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
   179		msi_alloc_info_t *info = args;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202208141350.BoRK1ikN-lkp%40intel.com.
