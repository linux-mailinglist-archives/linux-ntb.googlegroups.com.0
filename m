Return-Path: <linux-ntb+bncBCX27RGNVQNBB6WJWOMQMGQETGRD3NQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F3C5E6FE1
	for <lists+linux-ntb@lfdr.de>; Fri, 23 Sep 2022 00:43:07 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id p36-20020a05651213a400b004779d806c13sf3546210lfa.10
        for <lists+linux-ntb@lfdr.de>; Thu, 22 Sep 2022 15:43:07 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1663886587; cv=pass;
        d=google.com; s=arc-20160816;
        b=marta7ZPN+O62Y3EvemslduCDQTaqsH3PdV+C2aJ3sQDbmz23qxyZRDS5qkcEcRZFW
         TzsTTy82fARMUQXuVMGBzc1ui1mA2yGLuvluLRythRsnNIwSZGVnsPctcOGjAy5WGVKS
         nET5deZzV2CTk+P0tZ6SCw3T5Kod7rFCJxMYdwaW8wluE/Sq/F1TP/QtWOIo+qtNowb6
         fAC2HVp6X3mGHJbPaXZZ0c3hLttm38I8dZd0ajQzIQ7EvSU0lx15yCu/9hiDFoWi1nu+
         4n/cD3puEo59d+I8dBvDo8nfezmBi1YDYIX4C7Sn8sBcH/aGcSpZlKwRhG0tl/30UQUt
         3aGA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=piDjzzusUG7PD5ByAipL21CEkjvt1carynl9yBw7gbw=;
        b=AxHZGCqiV3s8zwVS7YIE67+KZQCqQFORrm4cGoVGreTSu8CwF16a1Q0JFHk7vF3E+c
         tyhTwjkpg8ur5GpU6Bo47ZMPMwx7ecp3LB8BTfril74mDvIVgskMMSpPoXLu676l19zl
         O+afwZ2LfG65I9qv7BypNK+uQ5OVuofGHKO9PMQK66JdzmnRTTjXsetXPRZS9YTA7JHo
         UbVd8N2kFb6PkshwjXJqAhDGz6cPTObel4Yag6UBkxjVviyhS3SPcLV/ZwApV9oUcXTM
         hEDMKWrb8SOENL5LeIODSeudeD0eT5BgDwC+Eaoj/WAxY5UZzDrwNKKtC7HCsW68IxXG
         2V+Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=WkJC9y2m;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:from:to:cc:subject:date;
        bh=piDjzzusUG7PD5ByAipL21CEkjvt1carynl9yBw7gbw=;
        b=rtWffX3/5zraDe75hOam7LH/+wkkRUn1onK+Wp2j356Hv0j3ed4P5Y+tljBDBpREI+
         +WzK5vsN89xQ/IXFVt40sTIl2IJJkwLw0iR1ksvhxM6JfI0TbkbAjGap2lrB2mMKoVPi
         f/1eZITUVC2qrLdgClJmfCIvCuYNgmJ57e1hDC4mZqyt19HwCAiQKdz2PHF1eqnuGC5S
         /DvhZr0++tmMMq395XWF09JmyYNZuyVWVBN2IHXWPZENICiGGyv2cG5unSb6n40J/iFT
         Eff5DMX3gkp57g/Wux0R2lCYwDyErQk2OhItus0aVO2WchIdWgobIqpq1FJubD1dQKH0
         ikow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=piDjzzusUG7PD5ByAipL21CEkjvt1carynl9yBw7gbw=;
        b=mO2q6xvQiIJgv6DhhMbbbYwTsoh3TnP3shBN5eUOiHF4sKp7K11jUO79FwkFormXGL
         j2Hj3hyxpNUya0qXm+UFGaknckbjPi/Yxp+zHvXnYBGaqDzwoxNvCfYVypxwJuFFSWX+
         oECr0R07gpdK4VCtbttUz81i8MoMBpRBUX3cstsV7aLKMA4Jv5bwnbmZRhMXCOARlyAJ
         O6MhXA9QmXt+UwEeiIKBcA/RzmoknXeuG8dcvNigTvls/GiG9bev/UkjlfyQ8cJAzZRs
         JD23Qvwa1a1NYkuIxplCrFgVfdf2TPajsGD+s9fw4E1zOde7YRUBunC0B3gFM22fCZYK
         T3Kw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACrzQf0IXGsLu8zQ/IhxGcuSW08dV+qKihK/vuvwLLydHyQkN2K1DALc
	Sipj7n8HOOF7mwXXcEIWGok=
X-Google-Smtp-Source: AMsMyM5o7U0mvFXqVaiCfnBXoupE/FdwpXGuTNs215IhL56Cmx5voqMAq7Q7sBDQAhYmYIpaNDQYvw==
X-Received: by 2002:a05:651c:19a6:b0:26c:4a66:aa42 with SMTP id bx38-20020a05651c19a600b0026c4a66aa42mr2030640ljb.231.1663886586860;
        Thu, 22 Sep 2022 15:43:06 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:5f7a:0:b0:49a:b814:856d with SMTP id c26-20020ac25f7a000000b0049ab814856dls3965755lfc.1.-pod-prod-gmail;
 Thu, 22 Sep 2022 15:43:05 -0700 (PDT)
X-Received: by 2002:a05:6512:3984:b0:49e:19a6:a302 with SMTP id j4-20020a056512398400b0049e19a6a302mr2098055lfu.492.1663886585384;
        Thu, 22 Sep 2022 15:43:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663886585; cv=pass;
        d=google.com; s=arc-20160816;
        b=umW0EVT4b64mffRV+zIyO0A15tTUY4O/CF9vZXh+PeKi1g4OJv72eTRG44WVQ84mA0
         Hv1Ng2OHezTEE+X1zoeDxgtD/k6gYjEbmCcq/RH6Bc3GnkGzvTpjdmBzglvOTd3Ql/Xm
         Gi0ARy1gBC6Fhzg3QMpoQfYvtblBOPFZcWUSwC2RiAXxIV6DhulDwTJBK5EUPZSAixqw
         T1HzMvWswIy68uV+8R3J5vJUm5OmnR+aX9lHbjxxJdtKwq5+ENuak+CKfy77AF5tMBIQ
         PZNCHXurB37ytbwNgn3h8hyNG91245BZzl3G0uHP9k9OQU+qHmRRHuH6PIvh1VGdXilm
         1iBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=ujOyjAbwgusik+05RbPipqW/Tv9rDb9xGVmgu0SLgDQ=;
        b=oq0MHcun6r+kdYxkyubK09EhezEUidB2WS962zPc1bJMBL2g4EXMJ43jM6Nk80RvQY
         mWJB4yoJk7wrBDEXXI8kaGkN/CrFegCeGhR9r7+xKuhd7yNCSiFzvAKM3kNS/KYJ5BMH
         Y2DeaDhwE4xK2jKJ/rhL7/l6Xnk9ui0yrvagUyk6t6pSfXX66p4enlPKRG/oK3fpYNYw
         4nwq9wGTha4eVyVZr8jJfehU0DNiMIxoEbF5tc9ZqD/MsyYlHiiXpSJzxaBRbFq4rdTw
         6bqjtJI4PW9Wsug0sa1TNmS0mT/peCknkZJuBCoyp7L2SVJqg+kgR+x2J12xjtpSn7VX
         F5dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=WkJC9y2m;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id f5-20020a056512360500b0049c8ac119casi277619lfs.5.2022.09.22.15.43.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2022 15:43:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="386742250"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; 
   d="scan'208";a="386742250"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Sep 2022 15:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; 
   d="scan'208";a="948798613"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmsmga005.fm.intel.com with ESMTP; 22 Sep 2022 15:42:58 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 15:42:50 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 15:42:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 15:42:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 15:42:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kBtZ+rQajHwSMYdUkZsi0dbp+SP0swpXUIW5PGLC3yU95gxK5yQIagwDIo4FoMQT4TC8meEhv6oBstdnsmmBrSsVpjvtzUIwurefQ2cYAlTbCvzcsuDigPabkULumTeWYj4ZSe4u/eV7+DLUgvDq51kD27ReYi3mpAKzWi3zHzt+mD2NksbdwYcTv0Duepe6rFKdhT5DipvVottf2YY+uRm/SYr//dlTTeZheKKBbPmkKGYdH5Px6JvNXw3JkItOY1y6S5q6ptiqF3JerNmF6XEj9mGRcaOR7kzkEqYja1ZI1YTYFwpQhD3mt6Nr8bS7wlwCpQNV0fPbp5gs9hblpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ujOyjAbwgusik+05RbPipqW/Tv9rDb9xGVmgu0SLgDQ=;
 b=BZYS6OapWDYrdh40SuhaYXlg8XpJn0JDGo3C+BX1mxs3C5fXJCFrmTA8J+qKJb65qddCReUKcDwvFWBkT90aBMV5NpYoHQQgNz3MfRO3DTb4f+MIgQYgFmNqSp/DwP6oYd6GBsvEwjYzpTaqnHKs2tWVIzTo0Of+XdXjLE3SXmfBt4z6d3kjncnVSRkHQz0B3z2RH21x7bC5jPukVl1pmCbJi4CgC1FLz0Y6YGDLDzmmRUUzQVx7EUUjeX6tIckdvEYy9fkTyBKOX6LuNSX3PTdJ35MqxadeRvgiHHo3BQ5JrR1QXvedOQplfSQ5xVC7eWTF1Y7f3GEF7r5TtERrpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by SJ0PR11MB4941.namprd11.prod.outlook.com (2603:10b6:a03:2d2::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.18; Thu, 22 Sep
 2022 22:42:46 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::a435:3eff:aa83:73d7]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::a435:3eff:aa83:73d7%6]) with mapi id 15.20.5654.019; Thu, 22 Sep 2022
 22:42:46 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
CC: Thomas Gleixner <tglx@linutronix.de>, "Chatre, Reinette"
	<reinette.chatre@intel.com>, "Jiang, Dave" <dave.jiang@intel.com>, "Logan
 Gunthorpe" <logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>, "Bjorn
 Helgaas" <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex Williamson
	<alex.williamson@redhat.com>, "Dey, Megha" <megha.dey@intel.com>, "Raj,
 Ashok" <ashok.raj@intel.com>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, Heiko Carstens
	<hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
	"x86@kernel.org" <x86@kernel.org>, "Rodel, Jorg" <jroedel@suse.de>,
	"iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: RE: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Thread-Topic: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgABn9QCAACTxgIAAAdGAgAAbd4CAAA94gIAABpSAgAt9SoCAADlJAIAAgb+AgABGMACAAAc8gIAAE+oAgAAmHACAAFJ4oIAAem8AgABqWwCAANPscIAAWxoAgADV7aCAAT/pAIGycJswgAhPdQCAASQawIAAV3mAgAERgACAAHc2gIAAq/pA
Date: Thu, 22 Sep 2022 22:42:46 +0000
Message-ID: <BN9PR11MB5276D6337528F356B44F18498C4E9@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <875yrvwavf.ffs@tglx>
 <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
 <87fsqxv8zf.ffs@tglx>
 <BN9PR11MB5276961D838169BF237928E18C499@BN9PR11MB5276.namprd11.prod.outlook.com>
 <YynJqID/E5dFCakg@nvidia.com>
 <BN9PR11MB5276CAB439EE27557FC17B1A8C4F9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <YysIEUbxjS328TAX@nvidia.com>
 <BN9PR11MB52768936DF8C7F19D5997A0C8C4E9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <YyxRf0UEEyT79oE5@nvidia.com>
In-Reply-To: <YyxRf0UEEyT79oE5@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|SJ0PR11MB4941:EE_
x-ms-office365-filtering-correlation-id: 8e1a1122-f4b8-44c9-1eb7-08da9cebc4e1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3FNZGZhXe8+tKH/+TS9nfnrRP3KJ95goGi+UKo9K3TYu1lHmMU9stnGZnbQVLpdW91Im56uMkeHSjNzovTgLYmH73KNhFqGWV/nCrxadMHkb00xpEDFn2PnFmpfjRJWgkgtzn6f2M6poChsXuD2smm3nPTc1Xdd2Ll2KUO2A2meBw+tv0xNHMZdCKWN7k5ZfJSbg29rHEWRN8KEKD0J1UAPBBzCennptvWuM4WN/RmGxFop1R76OVStNJ6EgZJ7gu7sPxH5R1ZW2VcuOvKnJNtShgbtbGtOyRF6MQtX/OqZp6qNTfMxdQtoBwJsk0zDcZVTWXG4RY0SRuUq927wVIsx4+ppad1WHPnO/DWQ253l9f+ZcNrayOXrxkNlYl7oeaVBwZqtO/w6PjEF4N3ia46S55eptQ3T6GsJXM9HXW/C6Jj8YmdaOP7SaO1aTCrML1HF5Qz/nJqQ1bzo2Gwa2pfhNE3a8zO2GJ+Oroq8vEZiz3yzF98IFGwY/cs6MZZn/Zx7lZcR74ez3MDpnmhTlkV6L5TBpm8dRnjdcgcCRXmc0sHxu+S5qw+vSyCC9VkcIT0xGFBlouhsreXKixS0aWEcuZ/jBGcUxOYzlwXOV1r1G11B4ZftGvEnch9P+r7GZ1HHiyHx6Owb/3AnR+fzVf1QXODyFCR/u3nM7lQ3+0FmvpbOcfJl5X0G1i6oaVU0f9dHDonUH19OB+34l1cE0ot+nPHWeWimROGThvp8sVt7CCANPS/CXm5/jFQKssw3O
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199015)(33656002)(82960400001)(71200400001)(83380400001)(66899012)(478600001)(7696005)(6506007)(38070700005)(41300700001)(186003)(86362001)(4326008)(66946007)(26005)(55016003)(54906003)(6916009)(5660300002)(76116006)(8936002)(4744005)(38100700002)(7416002)(66556008)(2906002)(316002)(8676002)(66446008)(9686003)(64756008)(66476007)(122000001)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rCOztX62mBk9EbTUucYFwYkIeoFATrOJ0dNh9lDB2e4R/CIYAmDBN+bjJijh?=
 =?us-ascii?Q?TAd3tN6kIv7PuIvqhtgZ58+GZ4dHe/ifMOY3S+qD38aWREbJgUUYoICJpjt4?=
 =?us-ascii?Q?XtwpMelQWQxv7JiygzjzqHIPfHJOof/Qya8b527Fdb0s5X/1GwEWuThwQEOk?=
 =?us-ascii?Q?nWnKh/v3by1GmIz/J3QR+fCvHkwNNbf9C/OSmiGg0Y8lLaqbIoXb6UtlpcHk?=
 =?us-ascii?Q?15YDiCu3Hhkqk2tKKx9uRVZS4YBBYTv3Dhfl5qE0TKfYlLIekqvdD12rpUjy?=
 =?us-ascii?Q?M6pJ3HyAKaGEsFWUPQ2dnTi03TTsVaGNenxcF+wJ2DbRF1/O0DgqxRLYB8Uw?=
 =?us-ascii?Q?0pj4Jfv1m8mnDZzYL9uc+qNIRtO/S/qm3tmBkq4ORW26eq7imosrqBrGIeoF?=
 =?us-ascii?Q?C1mTxN2LHV/oopQaA6KRTvKfjmsxjXvDDrUVM04TpG5FQqdep26x65gUc4Fs?=
 =?us-ascii?Q?wZkr9PIcA7faLa3i1pIVTEyHGE7qGNQCtAWdHBSaL2OdkJsKmLPqSNJjl6Bd?=
 =?us-ascii?Q?2koAbJWUijyU5R75xpdngevVDP6BSJDk2eAWTZ370S4PV6rIy3ba+0HNM8eJ?=
 =?us-ascii?Q?k1KytfODKXGqCpW91zzkcbTZ2eMMO+/Dyu72OJP84TykzPftL9DCmFrYyiw6?=
 =?us-ascii?Q?0g57ewGRiilfxQC+TLEamWgADj0YQ+Lhp0/PYW5CEISkY4gkEeRp6EdLWPO3?=
 =?us-ascii?Q?AXHpiIsbXCpt2upTGN6fc40wy0hFMl+lsm5dZgK1Y9+r7nTnUR/fxj/9Ae1c?=
 =?us-ascii?Q?/zDlUG5fRnaIRwhG4NIWJMsdHd8+hXnXgR9twTwFQF04LGbeNxe1CgTqXUqH?=
 =?us-ascii?Q?FE3+4TT6eYzk+lmDVUbSiCD/CQjqWPnjwsAQwl91w9cSHz5lvp6xbAEQzzEw?=
 =?us-ascii?Q?/6Z6cgA1ntRq1fO1oyWFpcX1tAFATC92/J4j1zgYkEU0ehmGOf9+xa6hrub3?=
 =?us-ascii?Q?Sf16+i4VpTy605EiMRRTXIbJ7pX/wryr2dNYIdkn47bKvHRPguJnsjxwAhvH?=
 =?us-ascii?Q?2cTusgTujjEBuees+lqJ2ccMpVUSjK9xMAJ8HkS4E4BgKKdplNgBiOtQmbVY?=
 =?us-ascii?Q?3qR2IHLRLmuNAY1de/cL7ei4mXD1+U6TXAJDZ64rS97HKbdcAiI75+TGU+Ng?=
 =?us-ascii?Q?wvfLL/Sf/qXkjWjvv2v5udaOoxGSp1AUAYJZDWWx7NXrRQUVbklw6mRMaTRL?=
 =?us-ascii?Q?buqA8tIS5Tj1VoeoR0X1IADyqjBMi/SAfksIQUuHt+M6ysm6L3zRSMwfBSv0?=
 =?us-ascii?Q?lt8l7L+J1Zmb0EaxxwUhiFsnbJest59BIZGG7SxtHCxf9M7s0f/izzr4n+UG?=
 =?us-ascii?Q?LIvJn+b3Xv1f8dsAFQGCJnZveAV8EBbPKvoZXqmbyMgIV/aHm4kAH5ujfojK?=
 =?us-ascii?Q?SpmwT0jSWbx0EpZtxlrcoAZvmLguIjg1nzG48LBMTGeimilpHOY+Uz8srWEa?=
 =?us-ascii?Q?YWyB03AqwPFkLddvPW2r8u1I5MJnTCDgdlIVUEKS0Clc/7Eozf+OfH5/PSti?=
 =?us-ascii?Q?Jd2nMAml7y20DUNJfWKC+4dPqaMbjFAuUeS48OLUK48DshiUGF/WLLDh+IQI?=
 =?us-ascii?Q?OVS3NVxbSGe4wo/F/50lHQwdu7uwq6JE7eUOccNz?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e1a1122-f4b8-44c9-1eb7-08da9cebc4e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2022 22:42:46.0369
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6lH6d9dJwSORAIhUv54Q2slC2PG2e9JFGTG0G81Pi5FWzAwsfuaUV/fFnV/mgT3zvq3JYatHEwVo6UdcptlSpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4941
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=WkJC9y2m;       arc=pass (i=1
 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass
 fromdomain=intel.com);       spf=pass (google.com: domain of
 kevin.tian@intel.com designates 192.55.52.43 as permitted sender)
 smtp.mailfrom=kevin.tian@intel.com;       dmarc=pass (p=NONE sp=NONE
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

> From: Jason Gunthorpe <jgg@nvidia.com>
> Sent: Thursday, September 22, 2022 8:14 PM
> 
> On Thu, Sep 22, 2022 at 05:11:00AM +0000, Tian, Kevin wrote:
> 
> > > Thinking of the interrupt routing as a host resource is the problem -
> > > it is a device resource and just like PASID the ideal design would
> > > have each RID have its own stable numberspace scoped within it. The
> > > entire RID and all its stable numberspace would be copied over.
> > >
> >
> > Unfortunately it is not the case at least on Intel VT-d. The interrupt
> > remapping table is per VT-d instead of per RID.
> 
> Doesn't that just turn it into a SW problem how it manages it?
> 

When IRTEs are shared cross RID's I'm not sure how to make the
allocation stable between the src and the dest. They are allocated
dynamically and hierarchically in request_irq().

I'm not sure what SW mechanism can cleanly ensure a stable
allocation scheme between two machines.

Can you elaborate?

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN9PR11MB5276D6337528F356B44F18498C4E9%40BN9PR11MB5276.namprd11.prod.outlook.com.
