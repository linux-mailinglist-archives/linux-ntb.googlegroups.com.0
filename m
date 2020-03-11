Return-Path: <linux-ntb+bncBCHK3VHCYUIBBPGTUTZQKGQELOS4OUQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id AE265182072
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 19:11:09 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id i25sf1744488qtm.17
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 11:11:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1583950268; cv=pass;
        d=google.com; s=arc-20160816;
        b=zzA/jmG69aTXNgAyI8123wKgWlVVjPuGUJvh13CXF/4e0YTgQfIkwwU8WnwzZZ+AfJ
         h1eFUDezM4h3ghZK+6KAny5IpBO0eiOJm2WtE88BU85eOtKXrNgS3lz7qH/JbqN2Jyu6
         n7988Q5ZWYRx/ts56TMCoPXfmz4ZAh+aGUUzmEcqTwF9+nexhNYE7xTlk2F71axNBdVX
         cEZfcNJ99pE+C16CNpw0PvKXG+iCXmpyUYxUDuQftv71c80Sg15ZJIV0GrhJ/SrKlQmW
         A/aBEiT3VOWVY+IQkugKxzUQc2XLRHRHkWIT94Zsu29Qa71GDw2Dxg5dr3IcDC/kjo2C
         +KGw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_contentbits
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_actionid
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_siteid
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_name
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_method
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_setdate
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_enabled:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=dlkPVbsT436sdRhxOgfEG0D7QgtD3+JfhkNCNZPY3EI=;
        b=AHnwOQ5/wVGj/2EiZyd7sMR/heWSgma8od5Zn5TZQ9z38XA9zkOiEN+aT69W5aL8sh
         JkUVNL7SUuKKmTS/OHNMqwTXaaPryP1s6dL3YJcDfyDffxI/yaU/RcdHj2DqPuLpA2ps
         nBlnrej5KKXvgin5s4moRUpFrmQuAj10ILpzHKaBHasERC5Iwxwzj51S3d8D/V7molBZ
         +Ra7qQ2nXsBeVxkQ6U1nlzRny3x8uiTYly1xv7F8k7hzKj1fNtWap43eCpUkQKGEF/1X
         ZqlYB7vxo/yVEvNB3gFGYTKMETCOKpu05NePD4PDgE15IM0IEwZsAoittgw5buB2RJYt
         Zqrg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=adiNR2Y6;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.237.88 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_enabled
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_setdate
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_method
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_name
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_siteid
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_actionid
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_contentbits
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dlkPVbsT436sdRhxOgfEG0D7QgtD3+JfhkNCNZPY3EI=;
        b=k2wakr1A8T3aSyhqZdKhNDJDQU6/zKFa5GL9jZZuSMIPN6eZL08pOCAzHj3wbHsYpk
         iUna9F1xsKSfEXq6P/FS26H52zzhIakevZiNAW9SdCLNfeChvuaoUVhitnFY4xVtA9L5
         k++UuQVx3QbR5PpWQGL7KzV7A0friahddYtwIQFTG52bcs7XCcBYBqEkHP9wTAK7R2rR
         Acx5LdKM3Mj5zNAe9WpeOkbt6ihy2rKHaROl0ln5cTxgfnhyxj+sA/BcV+xxCmOMiLMf
         aSvRi8zLvglC1Sp8cdktln7YEBAV76Gh7FLhht7oCOwdytVMI3R3sWdDTRvLSv/gS40H
         k4IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_enabled
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_setdate
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_method
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_name
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_siteid
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_actionid
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_contentbits
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dlkPVbsT436sdRhxOgfEG0D7QgtD3+JfhkNCNZPY3EI=;
        b=HubY9VOz+o+eSTEbIe0xAwSHbl6m+V4fUc0+ej1vJGVyVBW6S18TMNIIpZJRVMJ/SF
         hhi5xQ44jYci3Ke5Q79APBHg9/jxNDeIuDP0rpQx/qzb5jwjDoZzgAmSqVUBh9Zretcl
         YlpWJtj2bUPAAZwWF5IiM61GQFp4JRGan91/v3jScgcexKdhUDvIkBRKwrQTOtoCPmG1
         bKuez/v3gxsRa3LLCRNgqyRwSuMjv2l0pYvca+FK1EfCCv1QZs10rr9ob8zpOU7TFLyp
         2mxroWvUaMfEhqvHcwJU5CQeVwPZjtNA5Iw0k1gko3uz+EKiICEa+aCJYEdxOaZiaa4t
         iAYg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ0/XYrOTRW/Ke42PIba62+y7pg6SMHppqR3gMRCdNWczQNyD0PG
	PYj4y6cOGWLPfN510nQLQ6o=
X-Google-Smtp-Source: ADFU+vtLlDsUeHcUmh9hcC2nIHrrhAjF+pcpmRLnq1JhT07kUkr/BgLXTp1ppbUiJKeAXibsDoFZ+A==
X-Received: by 2002:a05:620a:1647:: with SMTP id c7mr4022767qko.20.1583950268648;
        Wed, 11 Mar 2020 11:11:08 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:5b41:: with SMTP id p62ls1517904qkb.9.gmail; Wed, 11 Mar
 2020 11:11:08 -0700 (PDT)
X-Received: by 2002:a37:7d81:: with SMTP id y123mr4094437qkc.102.1583950268111;
        Wed, 11 Mar 2020 11:11:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583950268; cv=pass;
        d=google.com; s=arc-20160816;
        b=w0SoYU+NtJeDskdrUFYhlWoybBSrG7UDwblJRdszkvtuOV/gBqf/xylPh0wokSPq4V
         oIaJF9G5n6vSXOBd7dzgAJVuhWsW5Y3rjtK9Q70Yl1n50qg8X6DkhxTXvtPi23urN6VM
         Zf44Q/F7zgxNVHKxaD6DoT9YXdL6GNfJf/H24Tn4ztizTGNS3j1S5KDRhuL9Yinj/aR4
         bNFz2jCjEnnyWdnd2rWn9SVcxASTwGn+X+bI3Mogn9GMfoIeiMygwBybABIBioc/bjnZ
         znHvAZc23ffulJg6Xxr/WIzFRP+J2rRbcJSahy2P00P3PRBdSlFOdSXL9xTieQiOi/74
         PS5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_contentbits
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_actionid
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_siteid
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_name
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_method
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_setdate
         :msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_enabled:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=gBf/+UcSxg9thL7vvogIaYnuRSiVy3bv4mroSGQI6sc=;
        b=fiaBQ+6/TIXfBfjEQ3LC6WQ7iWkmM/o72vFThVHRLh8VyHpBi9xPnXeJ8JYhBkfEIl
         t7nnRLsIkePAJTzFWjVPb1NT13v11nWTjiCQ2OQ2eBg7sF1ahnq47y8iyY/k0lABoMIh
         G+GfQxkvaO31McKQ+D4rny/Gbmzd2kBiWY5VS0BZZypmzWbcl0LAghmaqVU8uGeFXeEX
         +s+uePOeyNxQf5O3gQoJmPVZV60lF2Q0SWVzQt64AErkjBiKvis9gAgqGzQfcFaooyYM
         /5rtShyOU+qRqgGBCr24Oxfctu7N+aldafu5m8l/K3HQU+hU5y1NvO3eFyG2W66LkW7J
         160A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=adiNR2Y6;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.237.88 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2088.outbound.protection.outlook.com. [40.107.237.88])
        by gmr-mx.google.com with ESMTPS id e26si139904qka.2.2020.03.11.11.11.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:11:08 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.237.88 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) client-ip=40.107.237.88;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vpra7Nh4QiRrOBoTT0+c0sKPyjXAy6SQuglwZokvojD+/I2Nf6oEeKc9AIZv1yot8x1MKJwhGxcIK0X4LXG751faGru8Zxm15gbaNCjso07OMz05L76TszhySaTSGxrHQeEzq2eEu8/WN2qXwGcBK3IMeq7+8d0dR/N0mdIwmW7V0Li2x3gdE+3vIUqq4v7VrkzBB6cYaj2ms4xu/MdzwlzsfdluJiWo7BwMrAmEBoWJu2RYi3GD1Py58VJf686hUTW/+ldKpVRKF/rNWQ0onP8lspqc1gFbLZ3dySQVnigEJGJjtA6VTqgyiMGOw134heSJ2VdnpK7mXPxk0mtlUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gBf/+UcSxg9thL7vvogIaYnuRSiVy3bv4mroSGQI6sc=;
 b=nCY1b9e7NwZRP+mzRhNLbaqRhkA/2HMMOU99yPIhVphA90VWieOwLuvo7UqMdv1CFWVsCU3AZ2meg0OCaQU4PXlXe2U0L3A2e08PKPD6POL8N670ek90hBSEsVuQJTGaF3VxDPj9VASfNfm10HiKXzM/89n4Qzj8+BSST546MyTbe8Mn7ygLNjN+/2/IxTAWZJrJ7XKEjn9AMsKqSH6BRdpPtBQcGEqp5hzWQ2x8OMUqA2+IBV2sYgZJWVMmagIXAR+fgF+oxw1yaTxGEvE0WsJehbPMIIY019c52qP4x8Dnfi7ag0NA9pkdtBv6txng69dXj0jbTKReihLZNG/EHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3232.namprd12.prod.outlook.com (2603:10b6:208:ab::29)
 by MN2PR12MB3919.namprd12.prod.outlook.com (2603:10b6:208:16a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Wed, 11 Mar
 2020 18:11:06 +0000
Received: from MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::d8f:800:975a:b8c]) by MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::d8f:800:975a:b8c%6]) with mapi id 15.20.2814.007; Wed, 11 Mar 2020
 18:11:06 +0000
From: "Nath, Arindam" <Arindam.Nath@amd.com>
To: Logan Gunthorpe <logang@deltatee.com>, "Mehta, Sanju"
	<Sanju.Mehta@amd.com>, "jdmason@kudzu.us" <jdmason@kudzu.us>,
	"dave.jiang@intel.com" <dave.jiang@intel.com>, "allenbh@gmail.com"
	<allenbh@gmail.com>, "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>
CC: "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 2/5] ntb_perf: send command in response to EAGAIN
Thread-Topic: [PATCH v2 2/5] ntb_perf: send command in response to EAGAIN
Thread-Index: AQHV9x46fcHb8CAMpEy5Z6V8Vk8yLqhCWDIAgAFURNA=
Date: Wed, 11 Mar 2020 18:11:06 +0000
Message-ID: <MN2PR12MB3232AD3D784F07645D7115609CFC0@MN2PR12MB3232.namprd12.prod.outlook.com>
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
 <1583873694-19151-3-git-send-email-sanju.mehta@amd.com>
 <3c350277-8fe6-04b2-673e-7d4c8fb6ce24@deltatee.com>
In-Reply-To: <3c350277-8fe6-04b2-673e-7d4c8fb6ce24@deltatee.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Enabled=true;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_SetDate=2020-03-11T17:49:04Z;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Method=Privileged;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Name=Non-Business;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_ActionId=9bdf3feb-dc2b-4d9e-9d6d-00009732a996;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_ContentBits=0
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_enabled: true
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_setdate: 2020-03-11T18:11:04Z
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_method: Privileged
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_name: Non-Business
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_siteid: 3dd8961f-e488-4e60-8e11-a82d994e183d
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_actionid: 078a4caf-6cae-4684-8cca-000024b16415
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_contentbits: 0
x-originating-ip: [165.204.159.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7d9f5cec-2044-4d3d-bec6-08d7c5e791a2
x-ms-traffictypediagnostic: MN2PR12MB3919:|MN2PR12MB3919:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB3919A933634C39FD1F29C1CD9CFC0@MN2PR12MB3919.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(376002)(39860400002)(396003)(346002)(366004)(136003)(199004)(64756008)(4326008)(66476007)(66946007)(6506007)(53546011)(76116006)(8936002)(66556008)(66446008)(7696005)(316002)(55016002)(8676002)(110136005)(52536014)(5660300002)(9686003)(2906002)(6636002)(81166006)(81156014)(54906003)(86362001)(478600001)(186003)(33656002)(26005)(71200400001);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3919;H:MN2PR12MB3232.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4R6h2VbakjIm6WJ1zoT2uJpi7yUB19TFpzKp/uJO9JkKcQAnWdWC7ATqrQLlgKttZQcimf6L1T/+KdckNREWp4LJ/0bGSLhXPl+a5IRbbk3Vyo3fq2LVss0f9ObnQ7FlsDqixcEA5gMIBuw1jbztGVf5h66sShiezzom3yE6BhsZnQlcAHSaOYkYcW0+EXiR4L7QyL36AA+Igd47a3Izxpl4gkg6TWBkrw/9+Drno6XCs53yWgc4ECGgygbivyooZv5F6s9YxVcucOUApfby4LFGiP7CW/Uyj4jS+9EXcx6yuN+9xu21Mz5YXiqTHk6yWY1GjlLl4XKfNtsGjSxMjf2R3dfSsESoTyY8w61m9G5zsqWBIgZnCjhvvVtct9VuvbT1djb/L/eghuYFEzSKSm3mj1J/ZJBngLyG1tVHp1piV5tk5wlX7uZRmxJaDOpe
x-ms-exchange-antispam-messagedata: AStkzKUhD4IyCSw30bj6SEHbQ8PtN6Dp60EslDZ4/jIoe8hNPbm7tWwhM4d1DkUMjKwG4bRJSyIltmwKcDJkIKDj9KkCXRjWjp0wppIujZIIQJeLpKhWvpwYvx0DmgJUD8yBmvNnv6Ouc6WTlwjCmQ==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d9f5cec-2044-4d3d-bec6-08d7c5e791a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 18:11:06.6474
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WcyDmPbnMp3zITWhaYzH+qz/eSD83HqjDUwfjk553CJrsfX0dRtGAMxshJMB+H3m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3919
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=adiNR2Y6;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.237.88 is neither permitted nor denied by best guess
 record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
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

> -----Original Message-----
> From: Logan Gunthorpe <logang@deltatee.com>
> Sent: Wednesday, March 11, 2020 03:01
> To: Mehta, Sanju <Sanju.Mehta@amd.com>; jdmason@kudzu.us;
> dave.jiang@intel.com; allenbh@gmail.com; Nath, Arindam
> <Arindam.Nath@amd.com>; S-k, Shyam-sundar <Shyam-sundar.S-
> k@amd.com>
> Cc: linux-ntb@googlegroups.com; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v2 2/5] ntb_perf: send command in response to EAGAIN
> 
> 
> 
> On 2020-03-10 2:54 p.m., Sanjay R Mehta wrote:
> > From: Arindam Nath <arindam.nath@amd.com>
> >
> > perf_spad_cmd_send() and perf_msg_cmd_send() return
> > -EAGAIN after trying to send commands for a maximum
> > of MSG_TRIES re-tries. But currently there is no
> > handling for this error. These functions are invoked
> > from perf_service_work() through function pointers,
> > so rather than simply call these functions is not
> > enough. We need to make sure to invoke them again in
> > case of -EAGAIN. Since peer status bits were cleared
> > before calling these functions, we set the same status
> > bits before queueing the work again for later invocation.
> > This way we simply won't go ahead and initialize the
> > XLAT registers wrongfully in case sending the very first
> > command itself fails.
> 
> So what happens if there's an actual non-recoverable error that causes
> perf_msg_cmd_send() to fail? Are you proposing it just requeues high
> priority work forever?

The intent of the patch is to handle -EAGAIN, since the error code is
an indication that we need to try again later. Currently there is a very
small time frame during which ntb_perf should be loaded on both sides
(primary and secondary) to have XLAT registers configured correctly.
Failing that the code will still fall through without properly initializing the
XLAT registers and there is no indication of that either until we have
actually tried to perform 'echo 0 > /sys/kernel/debug/.../run'.

With the changes proposed in this patch, we do not have to depend
on whether the drivers at both ends are loaded within a fixed time
duration. So we can simply load the driver at one side, and at a later
time load the driver on the other, and still the XLAT registers would
be set up correctly.

Looking at perf_spad_cmd_send() and perf_msg_cmd_send(), if the
concern is that ntb_peer_spad_read()/ntb_msg_read_sts() fail because
of some non-recoverable error and we still schedule a high priority
work, that is a valid concern. But isn't it still better than simply falling
through and initializing XLAT register with incorrect values?

> 
> I never really reviewed this stuff properly but it looks like it has a
> bunch of problems. Using the high priority work queue for some low
> priority setup work seems wrong, at the very least. The spad and msg
> send loops also look like they have a bunch of inter-host race condition
> problems as well. Yikes.

I am not very sure what the design considerations were when having
a high priority work queue, but perhaps we can all have a discussion
on this.

Arindam

> 
> Logan
> 
> 
> 
> > Signed-off-by: Arindam Nath <arindam.nath@amd.com>
> > Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
> > ---
> >  drivers/ntb/test/ntb_perf.c | 18 ++++++++++++++----
> >  1 file changed, 14 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
> > index 6d16628..9068e42 100644
> > --- a/drivers/ntb/test/ntb_perf.c
> > +++ b/drivers/ntb/test/ntb_perf.c
> > @@ -625,14 +625,24 @@ static void perf_service_work(struct work_struct
> *work)
> >  {
> >  	struct perf_peer *peer = to_peer_service(work);
> >
> > -	if (test_and_clear_bit(PERF_CMD_SSIZE, &peer->sts))
> > -		perf_cmd_send(peer, PERF_CMD_SSIZE, peer-
> >outbuf_size);
> > +	if (test_and_clear_bit(PERF_CMD_SSIZE, &peer->sts)) {
> > +		if (perf_cmd_send(peer, PERF_CMD_SSIZE, peer-
> >outbuf_size)
> > +		    == -EAGAIN) {
> > +			set_bit(PERF_CMD_SSIZE, &peer->sts);
> > +			(void)queue_work(system_highpri_wq, &peer-
> >service);
> > +		}
> > +	}
> >
> >  	if (test_and_clear_bit(PERF_CMD_RSIZE, &peer->sts))
> >  		perf_setup_inbuf(peer);
> >
> > -	if (test_and_clear_bit(PERF_CMD_SXLAT, &peer->sts))
> > -		perf_cmd_send(peer, PERF_CMD_SXLAT, peer->inbuf_xlat);
> > +	if (test_and_clear_bit(PERF_CMD_SXLAT, &peer->sts)) {
> > +		if (perf_cmd_send(peer, PERF_CMD_SXLAT, peer-
> >inbuf_xlat)
> > +		    == -EAGAIN) {
> > +			set_bit(PERF_CMD_SXLAT, &peer->sts);
> > +			(void)queue_work(system_highpri_wq, &peer-
> >service);
> > +		}
> > +	}
> >
> >  	if (test_and_clear_bit(PERF_CMD_RXLAT, &peer->sts))
> >  		perf_setup_outbuf(peer);
> >

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/MN2PR12MB3232AD3D784F07645D7115609CFC0%40MN2PR12MB3232.namprd12.prod.outlook.com.
