Return-Path: <linux-ntb+bncBDW5PLF2TMFBBSXJSCDQMGQESF43H4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id A55693BCAA0
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 12:47:39 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id b125-20020a6367830000b0290227fc6e43a5sf15860419pgc.18
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 03:47:39 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1625568458; cv=pass;
        d=google.com; s=arc-20160816;
        b=lu0p3LM1jOLZHRQRP7HfPKwxe9osFbeTQbBINrMAPwq47V9Fw6sh7pa0aSRg93Goly
         FE3aTp6kk3GxDvs9Bk30BoBmczOHuiXmlHBBea9Xco0uq+bcHR0ilT5u3RzHTLjWbIFf
         +W4aESSss2zUJ8XnD03KDYVEkcJe1WWWZu54C9Ez7Gx026gJRkxSj8cCjwODJLIzbFB5
         aJkIZ0EWLDwZHpWQ5ZLkycn9eo3IEcB87HmpLTFhDRa8JEqGgY64PJ/4ARrdfzPNaHMd
         xnAy9R0f+R04+f+NPHvlkMolf8wwbD7vBhXQDnN+XqqN+NactwaQAJFpwKl0nG2aFI5L
         ro8Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:wdcipoutbound:content-language
         :accept-language:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:ironport-sdr:sender:dkim-signature;
        bh=rGPtJUMrCxjpuhRHV3M4gSskeuMi2VR88IYzl38ZAsU=;
        b=0mRINzuzppID539eWxGeNxw8/TXwpyjp4IV+9akJosBqNgdvswcHCnLIKMHn3koIJ7
         p4qBBjCiGhasUdVAJ65wphURxVcSe8kLsk0WNknXdptqqvkpNyYyOI9k0QOaXAGDdGUT
         ahfc4UbtQPdxGFZAIoYsw9Ab5C+8ckc3FfZkdW0Vx4rv35mX5IcLcWQWRRE6VXapqxtU
         G7+hkznYhSfPyNiFRWnfB/ClD/sxzMpIdmWjjZ029xshuNyjV6QePLmTX+PCuGiB5/Vl
         TFncYRHS72Ntly3hMUStrOCTRZsNSLZa5Jlo08P/d+bIGgXpGbwn2V1/5tkbKYL5/vsM
         H4MA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=XJf0mzQr;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=rLwdpXkK;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=8148ef2bb=johannes.thumshirn@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=8148ef2bb=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :wdcipoutbound:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rGPtJUMrCxjpuhRHV3M4gSskeuMi2VR88IYzl38ZAsU=;
        b=bOKU4XSdQ4iZmmadJ/0aumeF15tW8sPXCc7dUbghdftt+87M1gKdPIk7wM1pqJvrOV
         PnVFFied17EL7+iVVloFfSjMqvJqojt6MG964qsVZhoUYTX26GE1eFJgW5f16LeXMuzO
         dCfjpqmYpq+LDc716j3iRxNAKKu8oV10/Cd3bq9AINSjEfr1lI6uQhFklHXNsLe2rrdo
         PbeWNb82EUeHPHjKWUYSZJAEnn140kMHO0hYuLfKnYtRKOUARnHrTuWgfPQ4eB4Z5v/S
         EXngtxCN4+6wNYZ+q7/iI50o8kVtuA1EzmUoKAAT4XUOe9/HHsOEnhumpg5spYSTIClj
         +3zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references
         :accept-language:content-language:wdcipoutbound
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rGPtJUMrCxjpuhRHV3M4gSskeuMi2VR88IYzl38ZAsU=;
        b=F1xm1Ah7cxSPl9DshjEL1bigtjot9KIw/fvbuuKB5mr/NQQgeaG9sbwt2vrM/HwEpZ
         HSEP9cI0pxZ4Ywv6sQweOssUZy77EVNP1qgYBA6C65RoObjyVncVE9xG8xQvHcrn733L
         u0Bp+OSeoPONs3raiAfTX9wN/wS2nfxFM5Q1tz/k9WTHFvWmaWsV+o2dR+QD0NojAMuC
         cMBMm9mRNBpH8L1tRSFDCLGWcYCMdgp5WIC/zcykg9kzDkGqyE81rAlXv33/Htxsu3ao
         KS9d3qkGvCUcAM5M0OUqHis4M7UlpYR9hEwhnk19FfokDXxAbxfkW49LWXspjpqDDxCM
         JFvg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533aO8QROzLPgmBSeFNIkxc7yxmQ5E9sWIcevK8u11ZmA3AuQvpN
	CruK4WoeSdgMd2vfQCv48/M=
X-Google-Smtp-Source: ABdhPJx1zynTzFcOw1SOdwbtxDnqdbdsNnP9ix3fRW3S7RIlvqDLJfpXBzhNO9KYL3P5hjhntl03Dw==
X-Received: by 2002:a63:5946:: with SMTP id j6mr20752398pgm.0.1625568458387;
        Tue, 06 Jul 2021 03:47:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:b50f:: with SMTP id y15ls10329282pfe.3.gmail; Tue, 06
 Jul 2021 03:47:37 -0700 (PDT)
X-Received: by 2002:a62:7950:0:b029:30f:cffa:a25e with SMTP id u77-20020a6279500000b029030fcffaa25emr19719105pfc.50.1625568457845;
        Tue, 06 Jul 2021 03:47:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625568457; cv=pass;
        d=google.com; s=arc-20160816;
        b=XQbenkctFN0S9EzDouIlbhsr8KdrdCEIALSI7eQQ44dhHK8KyAMGqJ0miCT1wQuvE5
         hq5efRiHZrV8dwBFOWExgs8/HB2bnvNcBqvriWt6mp13JB7OvjNAo8HYtcnZCi7+Kx9f
         MM7pJy8JGQ5aux1vfgp2XFoQ3dFt+25aXF03WbBZiFcd2/LtHYP8ltLu+tBzNY51952C
         9cD+B9PJcn0XIeeuKzhlQPZNDLgpKKULwPJ7k26VC8PdjUtYqVQbq5wYSwQ4j2WoLIrE
         S3FNO1e9Z3ldIP/CM7y7vq1x+tY0M5olCI/1VXcWnn0MAYXTH1DgYHDtQHJO4PtTGa1V
         QbEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:wdcipoutbound
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=6WRmmxKbjWu7b7FYVCfBytnp1iB0TACw0ikNuib3atc=;
        b=RSiNm0EEpKK8cgxF/yBSvAPo7QIfCcE0aELtgwyapM3w1Jbx7gJNWPUjiuDzeespzK
         0dMFDUUweFvG4IjXCkiZLPjdes63GHwDiJGq+M8ieVrLpXEndUWVCsignXWASSxQRP1n
         2tJzoEa+GdPT7mNEfJ9f7TGgLVc80227t0fnhqgpdJkHG14TmGHopEOimVjJGNRTa4dG
         AC3VGNQZPU+i0+Sn5YX7IceYU19yn5OCZXLv/lSBnJa6qoz0Cn0jXFsjwErkMzieOpz7
         67hv91nlxbdKQuAtlSXPLcv7wfHfCTItXtllBDDBFGBr62zF/3T/cQPD+HyYS7Rwai2+
         zgwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=XJf0mzQr;
       dkim=pass header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com header.b=rLwdpXkK;
       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);
       spf=pass (google.com: domain of prvs=8148ef2bb=johannes.thumshirn@wdc.com designates 216.71.153.144 as permitted sender) smtp.mailfrom="prvs=8148ef2bb=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com. [216.71.153.144])
        by gmr-mx.google.com with ESMTPS id f8si740985pfe.0.2021.07.06.03.47.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 03:47:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=8148ef2bb=johannes.thumshirn@wdc.com designates 216.71.153.144 as permitted sender) client-ip=216.71.153.144;
IronPort-SDR: icKNRiWxHG7lNdL2j1zG3AM6Rff9NRVHa2U8qq5PN+w3lnrwv88m0NJ+vDnvjBPTnlvQlLSWiY
 oV40So3615VozUwETZcrWCJ/Cag/SBsZaRNZu0wtfu8G1FzbF4vtPT4aMn2gGoVyzGOc6RbbiX
 19qvZ/iopksKzx8CU3FNDuGYacgHlYkfjA5T2x57XQ0pa0KYLrP1gjhgIeShC+Z6g6gsjr/iGV
 dx6BXlJlasDPN9f96BmY2G47ZRWHnAhVl88LxfDWuGPlVs3ZxcLDBykvVEkgDeRA3Z8Qw8Rdrz
 sMU=
X-IronPort-AV: E=Sophos;i="5.83,328,1616428800"; 
   d="scan'208";a="173811831"
Received: from mail-bn8nam12lp2173.outbound.protection.outlook.com (HELO NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.173])
  by ob1.hgst.iphmx.com with ESMTP; 06 Jul 2021 18:47:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P1PBQSNbLP7XtlGmB5KcSs13NdQIrRYOzUBf1Qey9dUnfluE1uXynE5g934ofcbQzWaUeXuECqSDR8e/yRvrMfmTiLeqqPPVPf045Fbt7ltBfAT8enS3QHixZxWMJOu71GhKqpQg2xTAXNN/a2mVS5f3ov34/X2RQY/IkT7/m4i7VKWjBa2qs90Kv+vU3WnP+k8c8ByqPYQH/SnPVAoBKYpst36KIbUUi+xLGDhkVh9Y6OUugKYZEIzIFCQlvbbMACbWvgGBvWbtsat3IqZ+MLh1sKJFihve8nMAHdhWXqge/x5CndAzpKbC2mcVNlaIMA0/nGu/sPSjvDilqtR1kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6WRmmxKbjWu7b7FYVCfBytnp1iB0TACw0ikNuib3atc=;
 b=RnbmuVZgg01FnMDB4YInH3bMKjHBXR/MdX2S6O6E0SZ65EHgJPOYeOjKzliPtAst+UkSXL2uSu8ySk1UEbXsZbkvnBhMvQD6oS++WR1n7rdeGyBOIVaLaXuW/R9TOYVGThVfsn7mHlzUADYIoiP2Yxzkk8rnFuzQrhHhT8EmMmt0ORzyjjMx27DhxAfg3hLJtN58x5EL65V2/438yY++lWrQeCuVRAU093zrWCmVuMNLdC+5FfjRETIs8oAj8Q+dXD41Gl49RJGX2+IsTkaNjWS3mXlO/u2Wm7TbbnW1qslo+mdf40b8J30t4aD+/9ME1EuhDzfZ0P6BoBL/DOVWMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
Received: from PH0PR04MB7416.namprd04.prod.outlook.com (2603:10b6:510:12::17)
 by PH0PR04MB7702.namprd04.prod.outlook.com (2603:10b6:510:5d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.32; Tue, 6 Jul
 2021 10:47:28 +0000
Received: from PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::d978:d61e:2fc4:b8a3]) by PH0PR04MB7416.namprd04.prod.outlook.com
 ([fe80::d978:d61e:2fc4:b8a3%8]) with mapi id 15.20.4287.033; Tue, 6 Jul 2021
 10:47:28 +0000
From: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
To: Lee Jones <lee.jones@linaro.org>, =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?=
	<u.kleine-koenig@pengutronix.de>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "kernel@pengutronix.de"
	<kernel@pengutronix.de>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>, Thomas
 Bogendoerfer <tsbogend@alpha.franken.de>, "James E.J. Bottomley"
	<James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, Geoff
 Levand <geoff@infradead.org>, Michael Ellerman <mpe@ellerman.id.au>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-mips@vger.kernel.org"
	<linux-mips@vger.kernel.org>, "linux-parisc@vger.kernel.org"
	<linux-parisc@vger.kernel.org>, "linuxppc-dev@lists.ozlabs.org"
	<linuxppc-dev@lists.ozlabs.org>, "linux-acpi@vger.kernel.org"
	<linux-acpi@vger.kernel.org>, "linux-wireless@vger.kernel.org"
	<linux-wireless@vger.kernel.org>, "linux-sunxi@lists.linux.dev"
	<linux-sunxi@lists.linux.dev>, "linux-cxl@vger.kernel.org"
	<linux-cxl@vger.kernel.org>, "nvdimm@lists.linux.dev"
	<nvdimm@lists.linux.dev>, "dmaengine@vger.kernel.org"
	<dmaengine@vger.kernel.org>, "linux1394-devel@lists.sourceforge.net"
	<linux1394-devel@lists.sourceforge.net>, "linux-fpga@vger.kernel.org"
	<linux-fpga@vger.kernel.org>, "linux-input@vger.kernel.org"
	<linux-input@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
	<linux-hyperv@vger.kernel.org>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "linux-i3c@lists.infradead.org"
	<linux-i3c@lists.infradead.org>, "industrypack-devel@lists.sourceforge.net"
	<industrypack-devel@lists.sourceforge.net>, "linux-media@vger.kernel.org"
	<linux-media@vger.kernel.org>, "linux-mmc@vger.kernel.org"
	<linux-mmc@vger.kernel.org>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>, "linux-ntb@googlegroups.com"
	<linux-ntb@googlegroups.com>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "platform-driver-x86@vger.kernel.org"
	<platform-driver-x86@vger.kernel.org>, "linux-remoteproc@vger.kernel.org"
	<linux-remoteproc@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "alsa-devel@alsa-project.org"
	<alsa-devel@alsa-project.org>, "linux-arm-msm@vger.kernel.org"
	<linux-arm-msm@vger.kernel.org>, "linux-spi@vger.kernel.org"
	<linux-spi@vger.kernel.org>, "linux-staging@lists.linux.dev"
	<linux-staging@lists.linux.dev>, "greybus-dev@lists.linaro.org"
	<greybus-dev@lists.linaro.org>, "target-devel@vger.kernel.org"
	<target-devel@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-serial@vger.kernel.org"
	<linux-serial@vger.kernel.org>, "virtualization@lists.linux-foundation.org"
	<virtualization@lists.linux-foundation.org>, "kvm@vger.kernel.org"
	<kvm@vger.kernel.org>, "xen-devel@lists.xenproject.org"
	<xen-devel@lists.xenproject.org>
Subject: Re: [PATCH] bus: Make remove callback return void
Thread-Topic: [PATCH] bus: Make remove callback return void
Thread-Index: AQHXclKxeSX1CgceMkmBp4EcubGaMw==
Date: Tue, 6 Jul 2021 10:47:28 +0000
Message-ID: <PH0PR04MB7416BD31D84E2F63346A6F709B1B9@PH0PR04MB7416.namprd04.prod.outlook.com>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
 <YOQxRS8HLTYthWNn@dell>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8dc4ccbf-e097-4bf2-f839-08d9406b7312
x-ms-traffictypediagnostic: PH0PR04MB7702:
x-microsoft-antispam-prvs: <PH0PR04MB770242BAE89F9DA372A8EAA69B1B9@PH0PR04MB7702.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TDUwnoFGZT63FYynAb9ayiBh3n+sY5VDEM1e+DTT8NErFTFDuJP1XD8Yrs1G94p3yHBvxbPO1fdGSVpQUSd8BZbq62HCj9iPXqXzJBNS1Z4vbwuDSkDoYZElAI1o5CiEQj/Qz9zof9EOvRqaCkYb2RbGE8LVpJ1BrlxCJA2Jttgo/MDIX3LauPfnocQ9XOMNsDFSGyrLZKXB+pNAR9baWItvKqOai1I1tu/pYjvY/bFVgDmehwIbJ2PuN+mLMRC7D12BZNEH5iDNHJXuvdGbNPthrqiFKLBidYUuK4eAIC1gAmGIkvP4OJeEcc1q12LMtZIIgpJvMQ5ZOeA+Qpl8fiInGsoQLOn7IJIwdtQL0oA6x8Z++uBx3ECIzNo87GL9Eice7ElyS2VgC422ae/08Gbb70wcJohOpwEn/HDSo4OhZ5QtADxDkSDpFOQ9pONfEbwKk4l8BqZldLDV7Zz6SDNuzUBWN+l69a7dlxX+xMO4SWtXWRqKoyKVZZN2K3rx69YzKk0kQVgepBVegycQLwfGYoA3pdzBuLe1XoPdLkVArBFhUfCEs71wUJwSeIUGXDOOESjtgyoHIvYK8gym595gz+unxZl4JVV+BilanfDksADGOfe47kea48yKLA/Qv6lje0VEsp1y8wUcvUa9fX+pjZbPI+5CXqFZVswJFDYlsx5nsOcAQUo6/hI6mRNRGFEdJwZxsdQ7IbOjGQVBHlpCiLeXDONaki0sfmfevHWbp9bVyfC1FbV2wUch9/pu0kqRIc53B4tRPF/mjIO533d7FgMnqEiHYFvcJxuX54I=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB7416.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(376002)(39860400002)(396003)(136003)(5660300002)(122000001)(86362001)(52536014)(8676002)(4326008)(76116006)(38100700002)(8936002)(478600001)(316002)(110136005)(966005)(9686003)(6506007)(186003)(54906003)(2906002)(66946007)(7416002)(33656002)(7696005)(66446008)(64756008)(53546011)(26005)(7406005)(55016002)(66556008)(71200400001)(66476007)(83380400001)(66574015)(557034005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?PNShz4sX/Zuuhh+uYepc7ZyM5a0DhCvQW4A4hBKEq08a3mtue7NlLZzIoF?=
 =?iso-8859-1?Q?1v6cGOS0v97K8wa3LN225ORoGZSneLip/2HF/7lHe06l0VW0lsaXB9N6m3?=
 =?iso-8859-1?Q?57ussSpboi6cA0PQstpKctbjttU2s5Ftu8PFDY/kSd8jRaMl8a/lIUi2EM?=
 =?iso-8859-1?Q?M3d9Oxi8gVklIxKdmUtZWMYkuzYLbZQqdr4ahCvTAOzeH77at0HjHor6nS?=
 =?iso-8859-1?Q?KXRzyQFlYgNXAlfo7XcvAz5bDZs0Z7xVkHd2DqkkKBhWwHLJ+67sYrZ+UY?=
 =?iso-8859-1?Q?hzcY+vAEO5cPj2pS1znhj3Q8CRBQfV52WJ8g8y9X1q2/u2f+zKLbJjDJ2I?=
 =?iso-8859-1?Q?eZ1JBCVWIHh2ZXML2MtW2oZE6OfBEawpZ/kaeFVJwXBzJNs21215Q0hTRc?=
 =?iso-8859-1?Q?4+1ag+YJcCGTfiLs2GHqQh+VJVz9Y5e5kbVA93Oav36Rct/Or4ByGAiWoc?=
 =?iso-8859-1?Q?vnalRtk2WyZ6roBA6Une1d3vJTWNrRZnn8rILP72FYkf6HIOiw4rY2FvOF?=
 =?iso-8859-1?Q?Xc7H63Tt5FMLhKiHp3wc7Z5tQxh24yzXqCoMoxEC7CKRXSS2666TYmHW82?=
 =?iso-8859-1?Q?/IoM0ylpJApNXlsyPpMB6OPRsNJ+FhJwYTWdCtyaN9tKGj4i5TtswnbdJO?=
 =?iso-8859-1?Q?wxSOhWfCHCDURC5SWpMo/PZOekfZvJZKdjuosTuFTCV2gETrYKsJoXheD6?=
 =?iso-8859-1?Q?0+HwTs9hL4rFkORAIts6XgXscr5NXhUJ/r1/my4CQt3ZDkmE4wwEyr793G?=
 =?iso-8859-1?Q?MyLzXY7Vna2ykFNyrk0iBlGpujjoiPWoshxVGdhZp8w9dH9d7TR09vg9C7?=
 =?iso-8859-1?Q?1Ba6R3OK+SvgviLx5DR2kFIs7KfANcgNwB+eSPU2jO+ZheRSrdYE72CHfE?=
 =?iso-8859-1?Q?bcHXBr37H4A9GenN7rA909rullCfnbyK2tMPXMYJ0iQbdu3jsfM9ZyNmla?=
 =?iso-8859-1?Q?KqaNR3BFbMMlvZYKUMD8SNDqAncs27eyay/Nk4eFBecgqLnS66Tno13Km5?=
 =?iso-8859-1?Q?fgdDmwEOxKii5gFgeM5wdA7X8bnqi5l5qzc8ewapTyg9r51UdCVszIe/XC?=
 =?iso-8859-1?Q?OeCPHk4uubgaDN8GZuxd2OMBVYX4C4KRQhZ23bwDCaqSyH+1Ft2RiNQPZU?=
 =?iso-8859-1?Q?x2E9kVh9CuvaZ41I3afmW1ttKDZRhZB4ql8z7i7LTafqM7u2ich51HG283?=
 =?iso-8859-1?Q?3cV/V+bP0rOzwTwYAoK8lLEpRezgYZ6bdjGylovdV0Opd4ZFwxHwOzmtlS?=
 =?iso-8859-1?Q?9BvD3UAnAjOwDdTAnrxgiPZuLNcT8n181celFU4NWTEAieOvvhfD0cHNPP?=
 =?iso-8859-1?Q?h8s9+BRT/uaBvYoWS9xw+ofFTXuR1WGhbQ80Kv+l5Arm/y2mNyXSG81C5N?=
 =?iso-8859-1?Q?Y86jrH9qZgxh2Q8j0zBBheMYwPwwaghA=3D=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB7416.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dc4ccbf-e097-4bf2-f839-08d9406b7312
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2021 10:47:28.4164
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mg7dsWqbGzYbTl8uhsphUGed09iNxbd3NjPvryxbiSZXjb4yBk9mRE7zbRlhN3hByaJp5uI2xkek3a+5ngeLOZVjO99t5dCIyDknas4G6is=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR04MB7702
X-Original-Sender: johannes.thumshirn@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=XJf0mzQr;       dkim=pass
 header.i=@sharedspace.onmicrosoft.com header.s=selector2-sharedspace-onmicrosoft-com
 header.b=rLwdpXkK;       arc=pass (i=1 spf=pass spfdomain=wdc.com dkim=pass
 dkdomain=wdc.com dmarc=pass fromdomain=wdc.com);       spf=pass (google.com:
 domain of prvs=8148ef2bb=johannes.thumshirn@wdc.com designates 216.71.153.144
 as permitted sender) smtp.mailfrom="prvs=8148ef2bb=Johannes.Thumshirn@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
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

On 06/07/2021 12:36, Lee Jones wrote:
> On Tue, 06 Jul 2021, Uwe Kleine-K=C3=B6nig wrote:
>=20
>> The driver core ignores the return value of this callback because there
>> is only little it can do when a device disappears.
>>
>> This is the final bit of a long lasting cleanup quest where several
>> buses were converted to also return void from their remove callback.
>> Additionally some resource leaks were fixed that were caused by drivers
>> returning an error code in the expectation that the driver won't go
>> away.
>>
>> With struct bus_type::remove returning void it's prevented that newly
>> implemented buses return an ignored error code and so don't anticipate
>> wrong expectations for driver authors.
>>
>> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
>> ---
>> Hello,
>>
>> this patch depends on "PCI: endpoint: Make struct pci_epf_driver::remove
>> return void" that is not yet applied, see
>> https://lore.kernel.org/r/20210223090757.57604-1-u.kleine-koenig@pengutr=
onix.de.
>>
>> I tested it using allmodconfig on amd64 and arm, but I wouldn't be
>> surprised if I still missed to convert a driver. So it would be great to
>> get this into next early after the merge window closes.
>>
>> I send this mail to all people that get_maintainer.pl emits for this
>> patch. I wonder how many recipents will refuse this mail because of the
>> long Cc: list :-)
>>
>> Best regards
>> Uwe
>>
>>  arch/arm/common/locomo.c                  | 3 +--
>>  arch/arm/common/sa1111.c                  | 4 +---
>>  arch/arm/mach-rpc/ecard.c                 | 4 +---
>>  arch/mips/sgi-ip22/ip22-gio.c             | 3 +--
>>  arch/parisc/kernel/drivers.c              | 5 ++---
>>  arch/powerpc/platforms/ps3/system-bus.c   | 3 +--
>>  arch/powerpc/platforms/pseries/ibmebus.c  | 3 +--
>>  arch/powerpc/platforms/pseries/vio.c      | 3 +--
>>  drivers/acpi/bus.c                        | 3 +--
>>  drivers/amba/bus.c                        | 4 +---
>>  drivers/base/auxiliary.c                  | 4 +---
>>  drivers/base/isa.c                        | 4 +---
>>  drivers/base/platform.c                   | 4 +---
>>  drivers/bcma/main.c                       | 6 ++----
>>  drivers/bus/sunxi-rsb.c                   | 4 +---
>>  drivers/cxl/core.c                        | 3 +--
>>  drivers/dax/bus.c                         | 4 +---
>>  drivers/dma/idxd/sysfs.c                  | 4 +---
>>  drivers/firewire/core-device.c            | 4 +---
>>  drivers/firmware/arm_scmi/bus.c           | 4 +---
>>  drivers/firmware/google/coreboot_table.c  | 4 +---
>>  drivers/fpga/dfl.c                        | 4 +---
>>  drivers/hid/hid-core.c                    | 4 +---
>>  drivers/hid/intel-ish-hid/ishtp/bus.c     | 4 +---
>>  drivers/hv/vmbus_drv.c                    | 5 +----
>>  drivers/hwtracing/intel_th/core.c         | 4 +---
>>  drivers/i2c/i2c-core-base.c               | 5 +----
>>  drivers/i3c/master.c                      | 4 +---
>>  drivers/input/gameport/gameport.c         | 3 +--
>>  drivers/input/serio/serio.c               | 3 +--
>>  drivers/ipack/ipack.c                     | 4 +---
>>  drivers/macintosh/macio_asic.c            | 4 +---
>>  drivers/mcb/mcb-core.c                    | 4 +---

Acked-by: Johannes Thumshirn <jth@kernel.org> # for drivers/mcb

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/PH0PR04MB7416BD31D84E2F63346A6F709B1B9%40PH0PR04MB7416.namprd04.p=
rod.outlook.com.
