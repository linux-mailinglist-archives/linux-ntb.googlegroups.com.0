Return-Path: <linux-ntb+bncBCX27RGNVQNBBQG6ROMQMGQEQN5AMUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E8E5B9758
	for <lists+linux-ntb@lfdr.de>; Thu, 15 Sep 2022 11:24:17 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id r19-20020a2eb893000000b0026c224ef967sf2215566ljp.17
        for <lists+linux-ntb@lfdr.de>; Thu, 15 Sep 2022 02:24:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1663233856; cv=pass;
        d=google.com; s=arc-20160816;
        b=oL1u64DCKKUy+c6mPh2a0devLh6v7ltQU/urIsOxPm4u/HbpB2tCjvp3kT4l1egyIy
         tv3f/zujZuoE3wwfspwrfuTIuBz/JkY6Anovc5ldrrCJPVat0IdQyDKAoUBrpAJdVj+O
         1jWirvNXUhnjop8LPTUb4E8qOEsdRAXCmsZB0uxwLO0CBB1OfwiaSar/1p/cdSgV4V9B
         zcL/ouquDaZ2GctTh0KjGnzZZEK7CJEAiSwpq8SLx+kwMnhfJCmfFd3WOly9zdAtBA1I
         oxlEx0AsnaUopBS88HmkDc6HnQaRNd8/i3wqbVYOgYZHTEpEou2TXouiM7sCbaQYhABR
         aMeA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=Y43rApOjJL15pHD8U2PWJO7VvxE7rIyTe8OELE6Dwcc=;
        b=DJW6eMJXCssXFSwme3IGM66kJbBamtF0UwevnKmk1/tvSNsdHqqll9LkW3Q7eHpNv7
         jjElBSwPhll8EDTRs0suqwuTXKm1Gt9VQP4gM8hEKmQBQAm18ImvLFkjYL5JDDHYr0KL
         kmnb9QFS8fhAwYTDIZ3s8JW1HaXEZSH/U6fPgx2OF02dSprjDSIenSOb/q5OyvgewzUf
         c4K3t450IUkUlQi44lSP7irnvPPyBjUyc9bY7T1jgZKpGuPG1WnLpFOA4hqnUdNBTyGw
         j4/SjeHiSLaOUnSCc0SAD/sghHnaH2yeYJCjW1Uv1PvAi5bTqMVAKKMqO6Y9e2WCjSMR
         zg1Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=I7n23Il8;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:dlp-reaction:dlp-product:dlp-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender:from:to:cc
         :subject:date;
        bh=Y43rApOjJL15pHD8U2PWJO7VvxE7rIyTe8OELE6Dwcc=;
        b=Yc4OGeXHPrDy8X987oRV0C0qH65c/Fi7O8GTXkeP6k1LCgHlzEVLczhyov6s1dVn1C
         aquDNH35gaLPET04B7oWE2LkdPkRcreJUZhVjbkdMEd53bZ1jyYhUNvfwyO7G096Cy+M
         OCV7iVNOcEFbPXNh2HXSdcmlnhuL/BRQUitxUf2ZO1IUD3kEixQvxi3Ft05aU3HCjIk5
         Ju6LpZJo5NSGjiMPBJFndkZMlfCoE+kkaUXqNd3usLEkJDCsRGSPfOqqPQX8/gLA0lCz
         4hYyFqdB/uuuRWzImzLg9w/225FdraGwchFl2BKGnG1+cPrZqZllX7pg7AHm4W3nL3D3
         Yewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :dlp-reaction:dlp-product:dlp-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-gm-message-state:sender:from:to
         :cc:subject:date;
        bh=Y43rApOjJL15pHD8U2PWJO7VvxE7rIyTe8OELE6Dwcc=;
        b=o9bZ9+sq4No+/Z2BN1u18+WfcnaPqzzvfgMYFLJBhY7D1GCpjchKlTmKpbNMPqHfN1
         aRqUFnPXrU7RLJr5cion9syUEXMqlG4A45KO9T8riYKrv4BTKWY22T2NVb303BCUhfMM
         WYZgP52kfgrD/xx3w+biJhSRo9LRAGLGaYIvakQWBkvG0yWApY2XqiHcsyA3Gqi8Apyk
         4QKTx9M3cKuDxVskeNQfjTHykCn2xzSe+wJI+KQF8OaCgbyp4AucfsFZVceHdotjtQzz
         a6tt49RNNioobUjU0k8vyyieg2CgV66Bfd3iZart83t7oLipw+kme2oejeIHQBl5xwZM
         DlhQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACrzQf1y+BbCtNFpKx+/gHO/tR0+dcfbRyFOFZlFYnJsAHsys6SY42A0
	UFoaM4MFNF+HuTvq/SrcvsM=
X-Google-Smtp-Source: AMsMyM4NWMwr8pFL0O3vP73dnxDk4Bx1jtD2BGMgzFAnDxlHHewGbBn+iYqryuR3eqTZCakwR4hyJw==
X-Received: by 2002:a2e:be29:0:b0:26c:337e:c7ac with SMTP id z41-20020a2ebe29000000b0026c337ec7acmr317999ljq.126.1663233856467;
        Thu, 15 Sep 2022 02:24:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:210e:b0:48b:2227:7787 with SMTP id
 q14-20020a056512210e00b0048b22277787ls611955lfr.3.-pod-prod-gmail; Thu, 15
 Sep 2022 02:24:15 -0700 (PDT)
X-Received: by 2002:a05:6512:4002:b0:499:280:9c5b with SMTP id br2-20020a056512400200b0049902809c5bmr9738634lfb.593.1663233854978;
        Thu, 15 Sep 2022 02:24:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663233854; cv=pass;
        d=google.com; s=arc-20160816;
        b=oPhzsQODo01jOwYUr7asoeIW3y3OS7qofwJN2FgCasFjXgCrgJxTZoD9WLGfH3Lh3u
         RqQaAuv4HvF5HO0UBRy3XMu3MEog/pHulEwdmd5PJf+u3smyCC2oRLQny+QEt/V4Zaws
         aq0DO2VijqPSZw0ZdU4bEwOc7b/9DX66uEV6xTlcGubAM0/bGh3baUete9+oAotvnGZp
         t3TtqpNBi5bcfKVRiR0ZtG/LnM7p3zhzegGC4q4Lsj/vGI/C2QrQk0OQt9ba0Z1/v32J
         39HVKIQhdkZqfptFH8boMaBbDp7h/SOcKBvJ0PjID0yp9oK6tluO1n6eit9MdggowVhY
         2m6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature;
        bh=UWstX29tZM07GBdaU4h4jPl4WjPvkI+M8odYjT8T9zo=;
        b=oyh7fS1jHS6/0Kds6MBFYphmF/ImcSnEVVnUTxCn5qVnm9XzdrSfNWKIFgbLabVXhy
         RF78aI8cBnqYnvGXBcU61zOdMgoKWg/+xdBqNb/CYXXCHCRG2NdnkU/8pStgmXYEafQS
         4nJ9kaqy8icjvsYluJHIXrOxMrJis7XWm/kp8fJ7/BSc/WZkuMPnk81ef2H21xGVk8xo
         Gf9cPW5KjpmVCu40cyBGvVua5/SLOprMjwJelObWBRc2z0cyboj/0Vz1s/KApEORS+4Z
         jyhfovC+sZFLRcmXf1A/qkUZcB67cNL5nB9cGjAjwsen+SiB68No7ujANrWKECxRHjof
         DPwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=I7n23Il8;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id d15-20020a056512368f00b0048b38f379d7si485608lfs.0.2022.09.15.02.24.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2022 02:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="278392427"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; 
   d="scan'208";a="278392427"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2022 02:24:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; 
   d="scan'208";a="945877933"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga005.fm.intel.com with ESMTP; 15 Sep 2022 02:24:12 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 02:24:11 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 02:24:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 02:24:11 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 02:24:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bxhgt0FpxLza7gnO1EDn6JXfLQj6ahiN0V4/PEBq39cukiG/5T1CRlX25ddf7H2HNunXs0TbrPZRRjvLE9VeQKqMh3Yfw5qY7oMpcEKsgBWUc0w8hLI/KpHruFJXGSD190Ry/6qJv51Bcy8KTy0FnR5wSXMqdoWUlbl0GwUWf5WfUAi4rKHQbtaTbE/fWmBokCpGH6qdkgw42uxi1cNR7eLQ0RomaoxgFB2GqbfjZIhxyFBNquuyaBrjTapWQy43JOS6oVEAWta0G87vXwQ0e+XCTSdbm/RzMGUdIp7NSJRWCzDoGzEAmQAVdD5yo658Uo2dIcY4e1QngF3MoyWhWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UWstX29tZM07GBdaU4h4jPl4WjPvkI+M8odYjT8T9zo=;
 b=jfawxkSu0lg29IiCLyA+cZlCqfq80UfkSYGjRvbXJZ+6f2vPj+qJYEWqbkUEk9TPvKo+cLUIlA6HAi53R7+a/kzdbfmqlqRL/Z61axNLXe4pw/19z17DtfP0drgB2L7GbhfXNNsMH8Yjr2suso02EuIHxj6TlgMvQgDEqY9Kct8Qk7Hg5mEv3i08p12VePCoXKZx41IszsroXUc1kBxksJ4WFiern9GfhMCiJfNSIpB4E61q/HBij0/d++ud/47+RndRhx63SA7sHEgBrXZxLbpD3x51sNiQa/Tc3dP+XtjGypti2Odd1ALrhiVh1u+6AMEnk4KWPnIRqgVb5g023Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by IA1PR11MB6291.namprd11.prod.outlook.com (2603:10b6:208:3e5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 15 Sep
 2022 09:24:07 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::a435:3eff:aa83:73d7]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::a435:3eff:aa83:73d7%6]) with mapi id 15.20.5632.015; Thu, 15 Sep 2022
 09:24:07 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Gunthorpe <jgg@nvidia.com>,
	"Chatre, Reinette" <reinette.chatre@intel.com>
CC: "Jiang, Dave" <dave.jiang@intel.com>, Logan Gunthorpe
	<logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas
	<helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex Williamson
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
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgABn9QCAACTxgIAAAdGAgAAbd4CAAA94gIAABpSAgAt9SoCAADlJAIAAgb+AgABGMACAAAc8gIAAE+oAgAAmHACAAFJ4oIAAem8AgABqWwCAANPscIAAWxoAgADV7aCAAT/pAIGycJsw
Date: Thu, 15 Sep 2022 09:24:07 +0000
Message-ID: <BN9PR11MB5276961D838169BF237928E18C499@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com> <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <875yrvwavf.ffs@tglx>
 <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
 <87fsqxv8zf.ffs@tglx>
In-Reply-To: <87fsqxv8zf.ffs@tglx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|IA1PR11MB6291:EE_
x-ms-office365-filtering-correlation-id: 3e616ee9-92a5-4e2d-8361-08da96fc0a28
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SkO2fqIwPvhdwKOuRRM+9uU9CicKIQZ8V/zsjy3YBXEnCmWn5Tyq+89AXWA/wt7+4/M0VOCT4IDmrwBr7CnQAd2r4wO1eV90PDBYElwbEZeVM93BtpYujiB1+XgcnkbDCldqo8VJkxGGpBZw38ukUSuRExogJ8xqKEiRMUUsawhxuR24BxgQMgvAcG5OGAxGQ+E6cnVMrFrpLPF3yXgrY9LkXcNAxWCsnoEir7pm7Er8PAtbx9e0HD9qDxNvlnnZU5+3rroZQsudv/wIkI5/zP9Hknl9NoTdixfvPuQVV2Zi2MlV5scKx+SZRgobqNE5v1u8Rq3FYsoULm8To0ckfOT36HIrCtmRaMF7bqFFLYiintr0bG3fruEC0iPWg51fPJ3yjNqg0C8l1K11Py3WgQZt5CTmPkeNOwdyKkLuExCxhQQ2kERUT4Vhp9NwKtTcWCy4tBLc6quV5CSMixXy2BWNd33vYaC0QBI7Wwc0eGQxr6ejNCkE/AR/pAr8xOiHmpHQcZCAkqbzF8T2JxKCDgFFX6WR6UB5FoGtjpYboyLtK8G7jE3RzmHwBy2W/Aaj8NG5u4J2AAShT0dyltVj4HoebqLRm8TQ9uTXGUbdbKZJdKbZHAQLPnLoGZBxIFa+CvPAukVPwmlkE2gfuWkuq10Vg5Zx9EKU17+Czja++nQRZgfFpb3F1PQwCBnObKCyX6Ch/+8rHHAxgPyNVaFzUqlL1HVYr9GZa/BAu1nMpC/l3bocsmkEl830XApB+eIzh9+V0HtYNBdomFvNsWU/MQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(396003)(346002)(136003)(39860400002)(366004)(451199015)(82960400001)(26005)(52536014)(9686003)(86362001)(2906002)(5660300002)(54906003)(316002)(110136005)(33656002)(6636002)(478600001)(38100700002)(7416002)(122000001)(71200400001)(38070700005)(66556008)(66446008)(64756008)(66946007)(66476007)(4326008)(7696005)(186003)(6506007)(76116006)(83380400001)(41300700001)(8936002)(8676002)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3etnuFfyokouhsDVbsAOTIvihoxnZMAheDyfGhkuZEASX8hgeHP50a4qJ8RY?=
 =?us-ascii?Q?7ECN9A5Zowr9EuyGrmq9KJWNGqpXa+910hl7DWIcq0/kKkKA96yqUR8rDiaU?=
 =?us-ascii?Q?EppPgftPazbxbnq9JhWbwJV/zPUY+oV4TSFfz020y6w587KKimH6sZLV5hty?=
 =?us-ascii?Q?bB2WxT3dGXbfgXnF+eyIz00fWMsADcLGt+RKEF5bk5DI/skmTiMDtWdZ5LvX?=
 =?us-ascii?Q?QVCOzZ3dEwlcKqZqYEXtsYusdKx7u/Qf59+jPEjnWyrgDm0Y/X/P8B5pBnW5?=
 =?us-ascii?Q?DEuoQguJpR70hLyplr+drlp4RIOzc648cFUmXDajMFLDjcATQfv8CQ6jHItV?=
 =?us-ascii?Q?5tETXkUCihCjvvc6xf8i+e8EhdPvOOQOHKFKqlK7BG3TjIi3rA4+6s9uQDFX?=
 =?us-ascii?Q?YtbNY5wAwiQE3RLrGJMJJYPmVzV5saIVdjuIxBznyBZnkz3oU9GA9lWnC7cx?=
 =?us-ascii?Q?QU/giQigDK0L3QGlO28Q9MmDogdsj2NZ4O9isTsLU4Oa8MzLJb37b7UADw7h?=
 =?us-ascii?Q?NKA/eGSaH0Qi3iaTD5pwe1mkyWE0bZp+mxqveaWXZP7K2cu3bNO2fT9nJM8w?=
 =?us-ascii?Q?HXw+dvxy/1w5Vh8fVrXL+dEJc/FDMej1VVxQH3CzezvRh3kcl/vwCRS/BfcH?=
 =?us-ascii?Q?co+D7vUDRAHB15fM+oClUZ5NiclRAgXUz+wRkYuP/HXWBZ08Hfi7oVboDP5d?=
 =?us-ascii?Q?MjCDLw+wG98efploLdN42Dgo+1Wn68wonbw5tfu6LxTQHoL+hLeJk6wYSiPI?=
 =?us-ascii?Q?fNY04J0C4eZqm2rjuBCTFUAwMKoMqLgOjj9OSISVmO8uaYAzy4cjvg7i18lZ?=
 =?us-ascii?Q?DwfuOoEv4+p5dagpYKMRijaV+POCIAfM7/11mdqzn2SMCQyGhLvRaCPgWs/3?=
 =?us-ascii?Q?n6i/dB2Y9XmhmqJqQaQmnUW3XhMAxmNyurreM/a8HsWmycRIBuSEPN4gnJ7h?=
 =?us-ascii?Q?qf7rArp2iruVcHGNgDtihy2e+n4XvNBREb5qNF/VETVFb5Caj77XV/wcISt/?=
 =?us-ascii?Q?QB+VPOcaEq4k8VzSniovTeKEoEK4o36F7SBvjHjkoukCdk+aIZdNXR41/T6b?=
 =?us-ascii?Q?M1DYp2Ow8nqlfiMwWhx+uTUx1uuwjWhGVU4KsED23rkC987uxZx+4TktBTDI?=
 =?us-ascii?Q?6SrqNuEhurn5Kx6NGXGlLL5wlAzmEyi/XR1uW6auBTebGJl2pAlCaGf9zFcI?=
 =?us-ascii?Q?I+wJGQ8KqaNM4tid2QKvC+74l8PucDA5B3QlzqfwpjZc+rC1JqG9AokhJWkl?=
 =?us-ascii?Q?Oz11vC9/gH96RU6MpMa8403MwQb/1ST2Iv27Z64TwkEA8Y0r+yJ8/T/rMUhL?=
 =?us-ascii?Q?qdZ+9g2ZAYXt9iBVqk7kzTaTSfjJYPYF7OHRnW4dxTx1q81e9EJT9emz9Ecg?=
 =?us-ascii?Q?AMkggCj/qaLNIkMBKSXZjNP0mCQobNUzasqS40p9ur83i/QVsgnD1TgqAKo4?=
 =?us-ascii?Q?g/wEZJqvPvO4IXGJrru+OQzQ/Z8a2r5Kis1hToU6G5BsYZyr8uAq3xKALTeX?=
 =?us-ascii?Q?6ZpSC9KEqXaBVsu6L6AC0psHzKFZ01aNw85ey71HdIqeNzwFUNUvUnIKS1uu?=
 =?us-ascii?Q?wPoDbk3KIM77ixyl21pX++WZiABvF4RSQkimDKrd?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e616ee9-92a5-4e2d-8361-08da96fc0a28
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2022 09:24:07.2230
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7xLu0oXSF14IOf7eZ+BeddbRpBD1NzRgpKly+qRlgNtSz8RrE9nFPnIqJJunTW58OZoJzJCsjiCJUv+A08tNyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6291
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=I7n23Il8;       arc=pass (i=1
 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass
 fromdomain=intel.com);       spf=pass (google.com: domain of
 kevin.tian@intel.com designates 192.55.52.136 as permitted sender)
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

Hi, Thomas,

> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Monday, December 13, 2021 4:56 AM
> 
> Kevin,
> 
> On Sun, Dec 12 2021 at 01:56, Kevin Tian wrote:
> >> From: Thomas Gleixner <tglx@linutronix.de>
> >> All I can find is drivers/iommu/virtio-iommu.c but I can't find anything
> >> vIR related there.
> >
> > Well, virtio-iommu is a para-virtualized vIOMMU implementations.
> >
> > In reality there are also fully emulated vIOMMU implementations (e.g.
> > Qemu fully emulates Intel/AMD/ARM IOMMUs). In those configurations
> > the IR logic in existing iommu drivers just apply:
> >
> > 	drivers/iommu/intel/irq_remapping.c
> > 	drivers/iommu/amd/iommu.c
> 
> thanks for the explanation. So that's a full IOMMU emulation. I was more
> expecting a paravirtualized lightweight one.
> 

Resume this old thread as I realized this open was not closed after discussing
with Reinette who will pick up this work.

In practice emulated IOMMUs are still widely used and many new features
(pasid, sva, etc.) will come to them first instead of on virtio-iommu. So it'd
be good to make the new scheme working on emulated IOMMUs too.

Following this direction probably one feasible option is to introduce certain
PV facility in the spec of emulated IOMMUs as a contract to differentiate
from their existing vIR logic, if we don't want to go back to do heuristics.

Intel-IOMMU already defines a VCMD interface in the spec, in particular for
exchanging information between host/guest. It can be easily extended to
indicate and allow exchanging interrupt addr/data pair between host/guest.

Does it sound a right direction for other IOMMU vendors to follow if they
want to benefit from the new scheme instead of using virtio-iommu? 

And with that we don't need define CPU/VMM specific hypercalls. Just
rely on vIOMMUs to claim the capability and enable the new vIR scheme.

--

btw another open is about VM live migration.

After migration the IRTE index could change hence the addr/data pair
acquired before migration becomes stale and must be fixed.

and stale content is both programmed to the interrupt storage and cached
in msi_desc.

The host migration driver may be able to help fix the addr/data in MMIO-based
IMS when restoring the device state, but not memory-based IMS and guest
cached content.

This kindly requires guest cooperation to get it right then, e.g. notify the guest
mark previously acquired addr/data as stale before stopping the VM on src
and then notify it to reacquire add/data after resuming the VM on dest.

But I'm not sure how to handle interrupt lost in the window between resuming
the VM and notifying it to reacquire...

Thanks
Kevin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN9PR11MB5276961D838169BF237928E18C499%40BN9PR11MB5276.namprd11.prod.outlook.com.
