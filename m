Return-Path: <linux-ntb+bncBCHK3VHCYUIBBBOF6TYQKGQEXU5I6QA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A331553CE
	for <lists+linux-ntb@lfdr.de>; Fri,  7 Feb 2020 09:40:39 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id i8sf1182184pgs.3
        for <lists+linux-ntb@lfdr.de>; Fri, 07 Feb 2020 00:40:39 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1581064838; cv=pass;
        d=google.com; s=arc-20160816;
        b=c5RMHHxlxGG7hukyVTrvJpfMAbmlnJIVGGSlxtLsSRCCAcm5NRRsT6CJkInkflyplN
         0GL4wvIcdBmviRfLp/I7UthfHaMYTwLSSS4TRldEA+LoKSdb2+aMI/nK5iAVSssP9a0n
         IbVnwUE8ahVMqdQ6y02gfMV4aQ5IgXEB1EWu1Wzq7YoysEiS+vZ5ivq/qZAFJEQXj0dh
         Qnwy6+LK4IFvfWlJxC4sZhxX90OfpiT5D6MC09kI1HV4JafOqyRsPuoCZe0M6YCUouan
         vUE0RieUlH5HuyJNPi8gB97hNbXhqqG6Srhe0/AwIQUxxI5IUYWabfeoBhibTG8LZIHB
         QF6A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_contentbits
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_actionid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_siteid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_name
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_method
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_setdate
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_enabled:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=QJ7RSV6ezzHCLnMx5ZyIf9+sT9vPq4z1KvV0eLYFt6A=;
        b=fE7vmIVyMP6HC2550GxUsV6u+8UyWYnzW6N+7NFXHgfIDdItmrVTRogbwU4PPVTTqC
         +MiQerArrsuFBqwKpSqzdVVrext6rbf1mGJQ0h/k7Cz9vHbcDvq0pf0P8RKhJ46CHnhM
         0d3Yq0FIdM4advhHQwGQ1RQ0uphLwbBgLF5RvxcBV76eGZUuOA+bosX/wfhMYKsGs+oP
         UBVIw5HqsPZ/pVvdS2yrEaNzL6nuca+wKb4l2tHMhtu0idoORooLJfjuvx4xlib6N50B
         GSAQ1dZv5PHhZJHLKKBrTgYJvRrAT6d/BJ0wPLvAy5Azy0bDSv1ckJXfXhr0mZzsvago
         i0ig==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=2sFce6uw;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 2a01:111:f400:fe5b::620 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_enabled
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_setdate
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_method
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_name
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_siteid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_actionid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_contentbits
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QJ7RSV6ezzHCLnMx5ZyIf9+sT9vPq4z1KvV0eLYFt6A=;
        b=tLMnU8m0cjmqhnJxCdJHu+mcfRZN+zphaE9qOAF94Zceexsf2lUW06nf+wXSsBqkdX
         HrequnNxLwsZynPq/mtT9U7hPKkhItds3kU3VusItpAu5zDz3+2YBBA1ZNWhdXc8N6mg
         04UBo9Zag0KU/wo6qT89VFlEj3xpnOIQ7OmHs3bAoUGb+0x96fAbMO154/XUr953r7WA
         qrBCImix1fJ2ICHdIC+urzvP2ewcpi/wP4ZPBL9FLt08XoYbQ9Rsb8jnh/JAcdBdRzPx
         /5OOP+yqhgiJLR6ZX5ts5jDnRn3KouA2f9EvG9CapS1aUGBfawziyHbZyHhsV4Up5mCL
         xo0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_enabled
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_setdate
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_method
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_name
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_siteid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_actionid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_contentbits
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QJ7RSV6ezzHCLnMx5ZyIf9+sT9vPq4z1KvV0eLYFt6A=;
        b=jPbbXgkYzMJqhXVEdU4h4tAODqlq0MFLhl2LthgKIFeSge7UdzEwCD9SA5pvfE4cXk
         yAJFEB5gsVyk++gPJZesNGKHs4X146UEfn2Q3+VFMQxgMUwNOY/SP7CqVKeUIDbDQQhK
         tAIcOCI3CugevSDC/KNFo5TNg1DBCqLgXXMfh5ujQwuPNKWKTGvcP9iDigVz9LFwJF9L
         L1Lq9IaJzTIVgjpDIQVVWuRXBgVrF9TNq4+4j1Ge1GmCTjuIDA9/ydDy4MBjkz0JEelo
         PzXpn1xtRrV2tnyC9qb3sa1GG1TNkK/7uJ9KDTIm3NVWhh3nMKfqXPSl8d4IGUwTJgSW
         CrLw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAW5ZjCFDl4oHGRhH7SAFE7Rf9uYjFI48Lj9TJ1h7Ai7z/g+SpPS
	FErO70Bmkh4w1vV/GQVFjfI=
X-Google-Smtp-Source: APXvYqzdy9AnKzbO6c/cZ5FR4o+ejNIkEsnMTg2qtSCBrcduKQN4L9rmpzXjZmGDdhug/g0KsDv22A==
X-Received: by 2002:a63:213:: with SMTP id 19mr8508888pgc.160.1581064837944;
        Fri, 07 Feb 2020 00:40:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:ab86:: with SMTP id f6ls4928291plr.10.gmail; Fri, 07
 Feb 2020 00:40:37 -0800 (PST)
X-Received: by 2002:a17:902:7442:: with SMTP id e2mr8907625plt.158.1581064837418;
        Fri, 07 Feb 2020 00:40:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581064837; cv=pass;
        d=google.com; s=arc-20160816;
        b=kdFpjCwSYyYPxoPwfUUfdv5uRvosqMD5zwGTjfa+IuWkTY0818Fslra5R0Uu7b0b4g
         5GTijgvYarVx+0SVU4z+Yfi9x71996+9kv+b6FybnaKLpyFP2d8S4doTBDBmqE2INQvB
         2CG0cnxzP863cR4dMeLUdSkauVN5McjCmdv6HkHuRwqFq6c6wUIbcSHTwmBmuHKP6DYj
         tuMq7Br7S38eD00w/yoygP2ZL9AASR+EEzQ2fpMjV05NxyzEyUVZis6511+IrZVPVcSH
         2dvKbvSCq1mZtFtu6GXeG/W4PUU9wbhxvpa1Xyg6rmmV4c+bLLO1h1uEtBG/iYHfr0rZ
         crNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_contentbits
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_actionid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_siteid
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_name
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_method
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_setdate
         :msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_enabled:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=oeX/cWXYGdyYQL6EmQprmMPsfiIjuqEs8zKuZrK2nH8=;
        b=vt2MBtx4KRFM8+wmWsNzLvEiTPKGHLnop8hX52x35zubAX39XeqChWmAWde3ZI6s66
         cc+M0LbLcAJ4WhIPTfgx73jXdxdI93hW0k2g2mrpzsX4jeV4l5cHOyMFStDmaOPDVURw
         Jll6Z07rrw1CbKF42LYQU+FtA/mYVkLre43t7PIaM4CTEN12hLdTGt0qVoR8/QtlV/Xz
         q8RvN0cM5Zkxzj6ahKCTYu6HGJqNe6ZSZDS9t/MxD4QH9tvHfuAgtKTO37Af78sWh7kO
         +VH4ttzJk8g8QWmixc/RjnG08BkKre7iF9c/siK+dYkyotruNII84lh6xZzEKSXA8FDD
         H4DQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=2sFce6uw;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 2a01:111:f400:fe5b::620 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on20620.outbound.protection.outlook.com. [2a01:111:f400:fe5b::620])
        by gmr-mx.google.com with ESMTPS id f3si350407pjw.0.2020.02.07.00.40.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Feb 2020 00:40:36 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:111:f400:fe5b::620 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) client-ip=2a01:111:f400:fe5b::620;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nai1NKUeg+lGQ77alJx/QsvLnNVZKwDLqlltzhi+NCFh1dOVYNomelYAcV3WurpJO87KbkogJJHr0k0ciV58JvM13jK6lH1snOmguAdOnjwPoArHYOPhghDRccN0cNFbAixWjtJx4/V2p6a+gzw0JA8NhhJZ4Yd0kD3WpkP4ZqCRBHnt9aGh7I4ad0nqfN6OGsIgx6DPrX4E9o07lb9NRpXS/YG6d+NLJfboH7qAPtra7Q6icGE1hwviyrMx1Sz+4blbMDhUKFI7H0Q+ZRbp2/IywyVA9zxKx7ZkZ1Bf6lMNaXDlE5cz2HHMorypr/x1dFed87ngLu1AmHU4238irQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oeX/cWXYGdyYQL6EmQprmMPsfiIjuqEs8zKuZrK2nH8=;
 b=X9ptcVCvMm9jxd7r/HrClQ+qILTNA3vySscfdnX5ROhHFxANZJW7kuA294fbT5mV5eLrSFQQD8l3oZs9tgjD/ZMyUYFKrKAhDxPSWJ1Lkr1zO3x6nNxWA1xtsXNe8942VqvsWSlR2nE+42Z9aVtVviVSkE7V4ERZDaMEjeD4ygIYtCSF5pyzSJ6RHpHVjm+UbFBmBTT5xBZ9C17lyxwAquYExwpgdx4iPKtiKr1p24ILsOyKQ4+LRng+zFM3AQ987cn4DDqcXehgsWrU0tFi7Cblhw+01VcQM2qf6ncqzdE945QbzxM+ICwNtR8SWbyrnoo2ErmgH7u6ebG47whfwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3232.namprd12.prod.outlook.com (20.179.80.221) by
 MN2PR12MB4125.namprd12.prod.outlook.com (52.135.50.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Fri, 7 Feb 2020 08:40:34 +0000
Received: from MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::d8f:800:975a:b8c]) by MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::d8f:800:975a:b8c%6]) with mapi id 15.20.2707.024; Fri, 7 Feb 2020
 08:40:34 +0000
From: "Nath, Arindam" <Arindam.Nath@amd.com>
To: Logan Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave
 Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, "Mehta, Sanju"
	<Sanju.Mehta@amd.com>
CC: "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 3/4] ntb_perf: pass correct struct device to
 dma_alloc_coherent
Thread-Topic: [PATCH 3/4] ntb_perf: pass correct struct device to
 dma_alloc_coherent
Thread-Index: AQHV3EgxqGrkcNoh8EaPHAUSJUkGoKgM7+uAgAJ7LEA=
Date: Fri, 7 Feb 2020 08:40:34 +0000
Message-ID: <MN2PR12MB323292771789FEBE5EEFCD439C1C0@MN2PR12MB3232.namprd12.prod.outlook.com>
References: <cover.1580921119.git.arindam.nath@amd.com>
 <aa4e69feffab2fd3cd846569e0546c5cf8f8f6b4.1580921119.git.arindam.nath@amd.com>
 <761e76e0-2e5e-6c71-3384-1ec10dcf8e88@deltatee.com>
In-Reply-To: <761e76e0-2e5e-6c71-3384-1ec10dcf8e88@deltatee.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Enabled=true;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_SetDate=2020-02-07T08:40:29Z;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Method=Standard;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_Name=Internal Use Only -
 Unrestricted;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_ActionId=8c756baa-bfa7-4db6-bc0c-0000d7812d4a;
 MSIP_Label_76546daa-41b6-470c-bb85-f6f40f044d7f_ContentBits=1
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_enabled: true
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_setdate: 2020-02-07T08:40:29Z
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_method: Standard
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_name: Internal Use Only -
 Unrestricted
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_siteid: 3dd8961f-e488-4e60-8e11-a82d994e183d
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_actionid: e91af601-e38c-44fb-8ae2-0000148709d9
msip_label_76546daa-41b6-470c-bb85-f6f40f044d7f_contentbits: 0
x-originating-ip: [122.182.243.148]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fd302c4c-6740-4129-41ef-08d7aba965ee
x-ms-traffictypediagnostic: MN2PR12MB4125:|MN2PR12MB4125:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB41251174A36F50F0C8F8FC549C1C0@MN2PR12MB4125.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0306EE2ED4
x-forefront-antispam-report: SFV:NSPM;SFS:(10001)(10009020)(4636009)(136003)(346002)(376002)(366004)(396003)(39860400002)(199004)(189003)(86362001)(2906002)(6636002)(66946007)(64756008)(66446008)(5660300002)(55016002)(66556008)(4326008)(9686003)(45080400002)(54906003)(66476007)(966005)(7696005)(478600001)(52536014)(76116006)(81166006)(81156014)(110136005)(33656002)(71200400001)(316002)(6506007)(53546011)(8676002)(8936002)(26005)(186003);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB4125;H:MN2PR12MB3232.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yKLd5P1WXtgHBcVJsmgis6u1xGEHPnB0mpyzr7tRBDuUpf54vwtz6EIeqLdl+Lh3JqCSJr5sec+Vv2mSmOnfZfjdqCiEhCLUJ+oC61665l5e4j0Rma5SV9bzZmTeseJWOH3+tjnFy0MfXHzWNijj7/y5KrI34tEZR8luWwSio3hQ+j4F06cENvXHCKiizphlCm2i5ot6XK+2MvldF0wZBtfY9jeZUSzJxx9FxQooagL0mnluPk8HZbKrIgch0ssO5d26R0/Zj3B2HCaavrWZdGNDODWg6EO50SiRDHl1gYo49lwj/JzrSkaNwqJ5v3Qg/X+jfuYDZPrMUGKlQhw+1ve5pXeM/CZcDs19A2Fmjjt4kCzfsPmwZU/OxzB1o341keC3wxzPaCe4s9XdYE5C6vNI6tjvUcJMFjSoBs90vOEY6+3WTYy2G0FBCDeK7tL1qeRRMF+lmO0sW1mT9ywZkP12OtQhDngV4mqL2ibEh5/vX4elil8m3HqpmelNUbK1/nnxa7NJrDapKuN9YXgonzj2z6dcpeMAwvLdfA4UYIaLOM/g2K7M5a7ou55tAWKamIj9wCaAhrQNerec4mnRrBD/5XEci2EfDIx3dedf/Bp2qpfHAh2Pzm5Kwm/QtY9T
x-ms-exchange-antispam-messagedata: 8ezXFcgspD+rNXPQwc4OIOvu9C6dPUFZaZgcaG1NuiyRTbhpWor6iQQDlxs3o62FWQzeeENWyfETiCGYDkPPiSsrMIvb3Nattdbl+rW9BNqBLzG5LwMJFJf+7U5rZVW6NlObSH/1MIEnLPlAL0H21g==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd302c4c-6740-4129-41ef-08d7aba965ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2020 08:40:34.2021
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kc7xMh1TWOSJaaeq2UYIVrvENvmqlWqUHLPR8zi7h1ck88sBjb5wlm3Eubo3Obse
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4125
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=2sFce6uw;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 2a01:111:f400:fe5b::620 is neither permitted nor denied by best
 guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
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

[AMD Official Use Only - Internal Distribution Only]

> -----Original Message-----
> From: Logan Gunthorpe <logang@deltatee.com>
> Sent: Thursday, February 6, 2020 00:14
> To: Nath, Arindam <Arindam.Nath@amd.com>; Jon Mason
> <jdmason@kudzu.us>; Dave Jiang <dave.jiang@intel.com>; Allen Hubbe
> <allenbh@gmail.com>; Mehta, Sanju <Sanju.Mehta@amd.com>
> Cc: linux-ntb@googlegroups.com; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH 3/4] ntb_perf: pass correct struct device to
> dma_alloc_coherent
> 
> 
> 
> On 2020-02-05 10:16 a.m., Arindam Nath wrote:
> > From: Sanjay R Mehta <sanju.mehta@amd.com>
> >
> > Currently, ntb->dev is passed to dma_alloc_coherent
> > and dma_free_coherent calls. The returned dma_addr_t
> > is the CPU physical address. This works fine as long
> > as IOMMU is disabled. But when IOMMU is enabled, we
> > need to make sure that IOVA is returned for dma_addr_t.
> > So the correct way to achieve this is by changing the
> > first parameter of dma_alloc_coherent() as ntb->pdev->dev
> > instead.
> >
> > Fixes: 5648e56 ("NTB: ntb_perf: Add full multi-port NTB API support")
> > Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
> > Signed-off-by: Arindam Nath <arindam.nath@amd.com>
> 
> Ugh, this has been fixed repeatedly and independently by a number of
> people. I sent a fix[1] in more than a year ago and Sanjay repeated the
> effort a couple months ago[2].
> 
> I have the same feed back for you that I had for him: once we fix the
> bug we should also go in and remove the now unnecessary
> dma_coerce_mask_and_coherent() calls in the drivers at the same time
> seeing it no longer makes any sense. My patch did this already.

Thanks Logan. I will include your patches in my next version of the set,
and mention you in the "From" tag.

Arindam

> 
> Thanks,
> 
> Logan
> 
> [1]
> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.
> kernel.org%2Flkml%2F20190109192233.5752-3-
> logang%40deltatee.com%2F&amp;data=02%7C01%7Carindam.nath%40amd.
> com%7Cabc7298c86c54b82db1a08d7aa6b66aa%7C3dd8961fe4884e608e11a82
> d994e183d%7C0%7C0%7C637165251004193969&amp;sdata=52DOTHpKjseZjv
> E6jmWWVVLQLeRiaykbVTQipGQbLT0%3D&amp;reserved=0
> [2]
> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.
> kernel.org%2Flkml%2F1575983255-70377-1-git-send-email-
> Sanju.Mehta%40amd.com%2F&amp;data=02%7C01%7Carindam.nath%40am
> d.com%7Cabc7298c86c54b82db1a08d7aa6b66aa%7C3dd8961fe4884e608e11a
> 82d994e183d%7C0%7C0%7C637165251004193969&amp;sdata=RFR%2BLFp5a
> ON1MA4Erx4soqL9pLHc%2BLWVNuLY0%2B0zcbo%3D&amp;reserved=0

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/MN2PR12MB323292771789FEBE5EEFCD439C1C0%40MN2PR12MB3232.namprd12.prod.outlook.com.
