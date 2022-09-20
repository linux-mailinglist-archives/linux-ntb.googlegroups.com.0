Return-Path: <linux-ntb+bncBCN77QHK3UIBBLMTU6MQMGQEKUD5RUA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 6945A5BE824
	for <lists+linux-ntb@lfdr.de>; Tue, 20 Sep 2022 16:09:50 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id bk21-20020a05620a1a1500b006be9f844c59sf2011956qkb.9
        for <lists+linux-ntb@lfdr.de>; Tue, 20 Sep 2022 07:09:50 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1663682989; cv=pass;
        d=google.com; s=arc-20160816;
        b=g8NYeXsqEEteLGGP7YqfNnj5Z4Jp3x5vzfxlDvSITuSBMqOJYbiR5GfdA11edXvQjq
         PwbniRZzRtAR5q8Y9xS6Kc4t3ZoilWfDIuB1yOWhXn1UjKeDfFuJNoG5Tw2CiZSCtv8p
         LF/zGHC2D5ck2I9FNRWyF+WTbQCPspv5AJySx1LX5nxKPVAeAMvHEFlhf46pWfkYfnXL
         md5MW6fqtoejmjBI6jE3kmQAN9mUK9bpv+ug9kqoJSVELf2rBBQXj9V8eLefVzmYuRHP
         DnA46HL96uiO8H8wXYfM1llHKV4Ix5mqNkty2JsaUqUYdXSdd7++4I6QcMGhao9FX0ne
         X91Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=SDt11LPFx/8n9mQAsJsaH0P1o8c71/+zyo0G0tilZ7c=;
        b=E54pTN92K7PEVzkRFd691ArSt4NcdpuVEdExNmqTEya8s0/HSEEMU1nMuXbmbvbiqA
         njPMUgWyI7GTm3YQ+vRrkEnhuchAnPvDOopoN6heADSJ68xME1KNgkxzmJ15hubC6Df2
         FNdgzJz2AlShNgm4LWXyyWC0vlMKrAQ1US4xkI//87YKMIXPArYCNtwfDehQ48I1cmAm
         me7NmxwrzVBcoz75uBroChW/b1HBbQLlilinG6vsE7gw2167WH8I2DckscuSRZA5KUl4
         UZAFzu62g2E2U8e6ivG8HvJH0hSztvIDq926koqQccx//O41Efad7eqe0r4joQe+hZ5w
         2Csg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="n/ZfB/Kd";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.236.41 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:content-disposition:references:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date;
        bh=SDt11LPFx/8n9mQAsJsaH0P1o8c71/+zyo0G0tilZ7c=;
        b=ENaeiOairh7e/BjwwKMBDDRLTg7Bd6+ulPK6IrU8Sjgfk5kf3iDI7X5EX21G5ADD9k
         PBizZObWe6zvU8W7A1RttAKR3u9jVPozL2SlHQQH99OLb+vo7amcA/DF6drS7iUtQgQr
         RK6gR5DjCOLGzEUlmNswt1RwwXlXbXplhriTHLjzqiE52r96f9xRG9co3cwIdwpx+qNH
         AMjFckh4O/P3bym5yFoO0SaX/ee2WsMNQVRheINtSgERKzIHrs3QoUZKSi9gR6gRN9kR
         teocuT6j2AmnH2XiYzCGBjzK6zYEpm9xgCmXPkfi7PgZY8ghpXYW+rxxj5jrnkXNr2py
         36tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:content-disposition:references:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=SDt11LPFx/8n9mQAsJsaH0P1o8c71/+zyo0G0tilZ7c=;
        b=RtpDViGo7sNTheHQ09OXh8+tTIklOk5MDoRsYAwACpVgtjw1rS21Fi6PnIKyXtR1EM
         iwCj3A8pJsaOFxvhxgJTrG2ZNgDF5hzPl42C9bY8eHLAROCblgnU+GRU2MT/rXa0AeJl
         sdRzKWLf+RDJOEMz6YRv2DoRxiy8x4hG6wrD6p10waPw0skX7NSY0HKXCrU2wRSgJ9Wm
         Q7fthkD1Xlo3z/qTtedJKP9oW4ZLQjEEFqHsiTxH39DnozFTyBpCzLcut3qI6GtGe9dj
         ZqLLc2PhbzuC+ITHDE6OvZPm0XekcxJnNuRt+fd5uQ+23qvPrT+rA86U/X9hoKDWh950
         DMHw==
X-Gm-Message-State: ACrzQf2xerZ0MMsOVDMd49VUn1y2ILk2q6s6k2dvompy+wB7+plRyyfe
	C1t4YMPFZeG3pdjPlEgrqJE=
X-Google-Smtp-Source: AMsMyM4O98ShQqSuKDp7L3vrQlCD2Xl0az5Wc6jbMPs/70AFr2hqvaeT5aUx9McfrcQuwtvAzwLg2A==
X-Received: by 2002:a05:620a:f03:b0:6b6:6513:af63 with SMTP id v3-20020a05620a0f0300b006b66513af63mr16403761qkl.312.1663682989367;
        Tue, 20 Sep 2022 07:09:49 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:622a:1b28:b0:31f:22fc:d794 with SMTP id
 bb40-20020a05622a1b2800b0031f22fcd794ls1573953qtb.7.-pod-prod-gmail; Tue, 20
 Sep 2022 07:09:48 -0700 (PDT)
X-Received: by 2002:ac8:7d15:0:b0:35b:b8fc:769e with SMTP id g21-20020ac87d15000000b0035bb8fc769emr19109367qtb.297.1663682988870;
        Tue, 20 Sep 2022 07:09:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663682988; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3pFPStJtwE4EqdBvG1/9GkNxPnNmIjNWpLBLkIc+mVaS0G2GW5xUorJiBAfoBkkRJ
         uPFBOqRmkyQHbN5pohSWx3qwvMTCCxq7XJcEcR3bHcm6oz8lMaRwe+2KiZ1ZDzI/q01c
         YPSW8NNMZEBxBDt78AOxrT0r/XwyYuUvRMMnQP/JUGehLchR+N/iRI9nnH/PozB4k0D+
         75hRnydMNvCIxpAMEDQb4VVHsJ9oYyhc0egi0/a969Jja4J3VaHo444V/klqGe2ZTAq9
         8RCnzFTovbHRwqMEdfu58Juay2gIiSZBJZ73voF9BNt0+LeF6JKEPkpOCl2ZkNhHSatf
         gLEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xr0DaXmsSxqaTvPy/pKltDeoycmlK91zo6knguWQqCI=;
        b=c8/pNynX2/Gz4oC80W42SPmHgD+7eKP/2noTRyBXkmAdVY1HLrsoM2V8j7uufl3ZMT
         zo3AmNkSLvKBZAaMI6nc9GjUvcO5DRkHUI9GyiqEgikZmkulhL77ATtre+SOYDuwYpn8
         6QWTwVKP/hCKN74uEdZWS157Tf5sPwy5184zcLjY7vP1Oz3mbMDFb/2D6BjDq9LIuAkp
         Hbp3Fvy5sE5IDx8DiGOWaZ2q/tAP3daqt3Cxw3n7CYBx12GNjoxRdatVhuLFxFx6goL4
         9f5JKXSUQ59iZY+ZUeLUX+ZlKez9EmoTi3XRSH2JzmY7cGucnX8zyyJO16BJdJS4gyPY
         Q2AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="n/ZfB/Kd";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.236.41 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com. [40.107.236.41])
        by gmr-mx.google.com with ESMTPS id a17-20020ac844b1000000b0035baed984fesi1879qto.5.2022.09.20.07.09.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2022 07:09:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.236.41 as permitted sender) client-ip=40.107.236.41;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nP9hE9mI85Qy8fLkfwdj9HF904Wf12uBBbnU8TlP5SCF+nFBpdl7Bl8Thbfm79O/qLRFXM4AJqA0U34tHWGoe/k7WTrJzDq9/PxG8yTZm8cqgbSYCPVgU3i3SEZb6GaWDCwOV9/TNvqQKWyiyhdo8+vID9Ds4fxu47qPDaBwqyZZBJHYtDqqao1QwfIoC7PjVIAwMh6BzI5VvsVzRQXVCTltS+TuSZWJNxkEO6AVWitjccIpbOhukns71Sw4ecnhzEEZb18joc6RdV4FwqeW7wAI9PG3O+Z2oU2ydIsWDhcLoNBq+3QcZMpq+yRbByzaEJQ50iy0xltPn9YXaFkABw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xr0DaXmsSxqaTvPy/pKltDeoycmlK91zo6knguWQqCI=;
 b=Z2yFthyCTJkyBMQqCBYFfFM4a40mtni/FZRZXzZQaQ3nN402oq2R8VZw6DvU9qO+bDN2Sg15FPHC/P0eQ81h3pDKWl+FyutpF+NI0reiWszqG68dRUKOJBx7/3jWPFnKhMEoHapu694j/epc7XN4b3oLtqPJIkRGRaYJqJWaCK8mGwWO/MbwCJftve71I5XthTrL6AiQStpXjCs+M2dLs6WjuQdHu/tRgyXRNyv+H6twKNd3I4elGqaItEu4YHrL1JItPiCKfc0zrEHxBa2AU55XYh9t5IWprgGAJrlCFoU2i0lLkOXha1m+wWx7hwAVspOL2QAURw8mJoJ3/7iV5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MN2PR12MB4192.namprd12.prod.outlook.com (2603:10b6:208:1d5::15)
 by CY5PR12MB6108.namprd12.prod.outlook.com (2603:10b6:930:27::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.16; Tue, 20 Sep
 2022 14:09:46 +0000
Received: from MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5]) by MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5%7]) with mapi id 15.20.5632.021; Tue, 20 Sep 2022
 14:09:46 +0000
Date: Tue, 20 Sep 2022 11:09:44 -0300
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	"Chatre, Reinette" <reinette.chatre@intel.com>,
	"Jiang, Dave" <dave.jiang@intel.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	"Dey, Megha" <megha.dey@intel.com>,
	"Raj, Ashok" <ashok.raj@intel.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
	Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	"x86@kernel.org" <x86@kernel.org>, "Rodel, Jorg" <jroedel@suse.de>,
	"iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <YynJqID/E5dFCakg@nvidia.com>
References: <8735n1zaz3.ffs@tglx>
 <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com>
 <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <875yrvwavf.ffs@tglx>
 <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
 <87fsqxv8zf.ffs@tglx>
 <BN9PR11MB5276961D838169BF237928E18C499@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <BN9PR11MB5276961D838169BF237928E18C499@BN9PR11MB5276.namprd11.prod.outlook.com>
X-ClientProxiedBy: BL1PR13CA0430.namprd13.prod.outlook.com
 (2603:10b6:208:2c3::15) To MN2PR12MB4192.namprd12.prod.outlook.com
 (2603:10b6:208:1d5::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB4192:EE_|CY5PR12MB6108:EE_
X-MS-Office365-Filtering-Correlation-Id: 49608e05-b377-4f49-9358-08da9b11c57f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n9L5IGx5hLaK4+uR4oc1tdlN7gpnVXMUiUtBgCO4mLpCDWfvYrHuxbgkHHwZMF9TuhKZctfsh+Ec+Mh+d2gOuEF/osWTZ959e9I+MsiGNX+TIxnFD8ftu3o82j0/o5gqPNaRBSgEmEdq9oNeoaZiN9tVWxckue6/LDe8LifjYgkFG8BEYlJdbQgs42fEcPDCmo/CBiZuECoph9etMKDs3qn3HTqKu/5wwpTbRBvFAbVl3Vaz3eIzZGM1lv3KF/ki1uI1y6+DW49EuufqeYZkqFFZXwzX3iZf2Vkxm7sE5pNu5YS+7usiaLQn8d+7gl4huH6n8gukI47C8q7P0QdIGJTtIaRqTBsO56pxwt44LLTQXD/SoL8WX3i+8//cro/VFL0+PrF8DZhaqn/FeFSy0bBQqyWnEGfW7ShRW1eIC6qgfeKyc0x+zzzXjH1Q8iNj+tyiwjFPJaqJJtr6t0Mj4d9/CT40Tf+ZcQtXXgWMkppUHNL7GVYVPGtP3rfwAHVzxMDShhNSZG5tl6WD+OVFCtdgErtUvgCYI8FD+hTd0P0tcVKUagbWdTsh0EAPKyl2IyL9C2T/7+KRgVMdnCZeBoaaMJ5VaIsQI0m6ecixIfWdYq+kPDn0B5x4Lu3BnEkVp6sJ4coZOXdwYP3vl4IrwroDUCbv4UQrJzxicmmnWTAFDFOSgOuZhLxF5P+I8UZ0rBITctvMQS/7NUKXKSal2Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB4192.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(451199015)(6506007)(6512007)(478600001)(41300700001)(26005)(6486002)(4326008)(36756003)(316002)(6916009)(186003)(66946007)(7416002)(66476007)(66556008)(54906003)(5660300002)(86362001)(8676002)(8936002)(2616005)(558084003)(2906002)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oRExy323pHmeV6Nhl0Ch6gi0iOxlUYZC56oRSY9XtQXi1wAkzwgrA1UY8Q6O?=
 =?us-ascii?Q?t8RoDr+Y1citYYXEVjHdzN8L4s4/VPcBlPLCfsB8sEAs7HL/CqCX0QGqkTru?=
 =?us-ascii?Q?ExA4g4Q9tDc3mAgosEIp1qdEiYkQp6Vf0BDUDb1Xnwne4hi86zGzuzDREQ1x?=
 =?us-ascii?Q?ynKL6bqiPvvevoIygHpPIL9YzHL3u2Yx4GKjPPI/SwhoVaeSFwxj3hFnrycn?=
 =?us-ascii?Q?n3NhOaiUB1tOwg+VydDeqVncQhKXinW0QH0kfYBEo8VqT33L8vC8DpCA0u/e?=
 =?us-ascii?Q?qm5yVJEak20yR1sKxm7y9pmHmn0OqECXky33usSoijubV91qGnRDYIJU+O3z?=
 =?us-ascii?Q?FZYs/G6Juw4yAYAkHwKXyIF1KvW1aCJlCKckwj8QCXgTZOtwMJ9n1lRKxc4l?=
 =?us-ascii?Q?/IbN3VQYNydb1ZLjlGm4pXTqGgWrYdjbR20Y50hsROZG+LbWBgJpxIlJEaWB?=
 =?us-ascii?Q?1SXef5PSn2n2uXnh/jcmgRa3Un9282DNVJLIHGI3a4p1x4PAsHb46cQJkhky?=
 =?us-ascii?Q?fDVr7FNoaGikWxljoZrXbghHgVfHczRB/Q+aChrwWllicVyzr4Z78Gbx988x?=
 =?us-ascii?Q?1VSb3eMObqUKKDwPrbQRH/BJXTsjeiEqfFnBtdsVVDWSS5Jndxv9eK16jJk3?=
 =?us-ascii?Q?7CX5Wsb6udck/A9EUC2wnuUpyKLy2mzOE+Lu4nncrMEDA8dNV+NXO7xNbAdF?=
 =?us-ascii?Q?SJv3fzl64k2qO/2OYh0+Pe7EmibCmt1gsnHhDYCBrgOPxlxbDmpUwuGOV3R/?=
 =?us-ascii?Q?hwJ4wKf66vjV8919qt1mLNDmskSTNx1DsIKMmRRdu8qadDcAazT97avb6uWb?=
 =?us-ascii?Q?gXNgi4mUec4hn2i5Y4m4XgUYTKQ8TSrDaMgrUaJNOYaViefs9XMjVRY8AOc2?=
 =?us-ascii?Q?sbZA5r1GpBdaNtil1lrP82kd4aPP6X2PGt7PB45+YuTEV0UE23/whPC7pvrU?=
 =?us-ascii?Q?9PU6MSdpcwdRI6SiVMhGDYiGO3AY06x7KOhFqkhTv6gGzJujtH2zxHt0EYBn?=
 =?us-ascii?Q?AYBTLZ16eDLDg7UXF1FDgrsgoWaLFntNsVnL+Y4MMnM5BbAGNXe1vmGmmn25?=
 =?us-ascii?Q?mODQKjf5SjGFaut9GyNKWZROkVAP8ac8I29DOor1PcHYLnkkqbLt+uMM046P?=
 =?us-ascii?Q?fWr+r8SPN51U/KAE8wuLqJFkj87w9SS7804Hzjy84Bb5SRvht5TaiMgej/mN?=
 =?us-ascii?Q?TGe9CoZ/u2WKlvbSbE45o89tBoEDdcXGXPHyrzkI9n1uSRKv4OLJu6WJs601?=
 =?us-ascii?Q?C6+vEu5uh7xgIHayoYGm4def3FGzdTdSlWfB6mK1pW2sARjuDwjULrPqMcUH?=
 =?us-ascii?Q?dqdjylr6H6eBqoH71q1DuEjP1VuaqPuz/pQl0AXcyftWQHC+JtGQdLI0zNh5?=
 =?us-ascii?Q?ulvqUJjH+T58R0IuyNZ867MO9kHCwOnt0pt98Sm2tGD2Iker3VQZjS0FvfiJ?=
 =?us-ascii?Q?YqMaS63Bf57m3TzutcLAfRkMdfH0qYjUqzck8qyX5/fHE6gPUf4DavsDQ0pR?=
 =?us-ascii?Q?kHQksjqJy3Qu5Ztb+d47B3HwO+diva+jcf3yc4syW+g7awkfEFwOrGlpSC5O?=
 =?us-ascii?Q?QjWpzZq7vB096/AfeCs8FnRdp5W7uzPuBfpALdWN?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49608e05-b377-4f49-9358-08da9b11c57f
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 14:09:45.9536
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A9NxtvBz6CEgTTXtd8LhXkF1+4doAQ/hZVi2+AAwrgXAgtTWC82VM0GXWRHthLkx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6108
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b="n/ZfB/Kd";       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.236.41 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
X-Original-From: Jason Gunthorpe <jgg@nvidia.com>
Reply-To: Jason Gunthorpe <jgg@nvidia.com>
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

On Thu, Sep 15, 2022 at 09:24:07AM +0000, Tian, Kevin wrote:

> After migration the IRTE index could change hence the addr/data pair
> acquired before migration becomes stale and must be fixed.

The migration has to keep this stuff stable somehow, it seems
infeasible to fix it after the fact.

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YynJqID/E5dFCakg%40nvidia.com.
