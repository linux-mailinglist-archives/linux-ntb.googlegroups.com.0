Return-Path: <linux-ntb+bncBCHK3VHCYUIBB2HJUTZQKGQEFEKDKMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFCA18215F
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 19:58:50 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id g63sf1804931otb.22
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 11:58:50 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1583953129; cv=pass;
        d=google.com; s=arc-20160816;
        b=FR8Q5KpKWcuvWySlay8IsB7RgWx+LTpkkN6n88o4pBPx8hexnNFiy+ANmsr4yVY01f
         nk8qZ5jXsHK8VxO/jFrPOm8oOSGcJpKHp1dVOcnpqvp7HGSulK+FSTOj+y9JAiamK3ff
         eAoYhmlKNvhNE6ufIFOQSKc7R1NYBdvT8Z4KWOBg5Hd1ltS0/VZ7rAX4ih7TcdySfvoq
         0szs7TF4lGARgfmExwL4F7RZImvt7MXpbPHf8MCoWkclNZMZTjbPwS/cYbsb/UmOBcn6
         APTNFn3kuJN1IKc0KFoFlL/oaBe5lBIIIeMW5R3XZpoZ+kVN9/ZQxudELTi7QhIUFJfe
         2jKA==
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
        bh=BIgnTR/BQ6pMO3MLjNwHDpB+RieNfAaWE7Z4O+G0Ubk=;
        b=OrvavddhZwY+uCf8R1L7HD22ar8CRaeNXaLiB+P00Gy3TG7pKeea8iUSz0L44pr0Ez
         81xXd+29aDmImqr50lF2LhJNb5fBLcB4nKkK3zZtxEQpJn3/grydJSRuZG04pvaJLOvA
         UFo3RtT8kxItO/5WzFtT3nZKRJk154tsI2fHR3j3mMfqoiwAbThSkSSSD239b3ivQP+1
         ClsfQ7ZqaZj46nfTsQPZL8mOv+Wu8VHrjXsvyd9alNdE4qIMjv206Smms4Ix09ZNSNKl
         JQ824OrfGREOrZYILwsHjoaF9wCmL1bw1fHSdnuqEw65nOw6YTQazfiVVYDY4MiBxIhJ
         ro0Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=TZEg8AJ6;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.243.41 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
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
        bh=BIgnTR/BQ6pMO3MLjNwHDpB+RieNfAaWE7Z4O+G0Ubk=;
        b=FzZ/3IpwEu7fcBXvyj1EdTYOI7wVp3QcMRUzZ07Bo7cirYm7+O04TIYBXV4KlSh+kF
         kScU+/Q14eiMXhrB/AhjNPsUh7PS1dw9IPphxK9DxPhFeE0s7wkmefphY9EG6HcErvTg
         Q8yC/DNTalBc9pXKomuPyhGgChZSaQlRXhS+JY64Vbt3FyicQN0MXAWgh/8xqzjJioFO
         AmXRmKK4IVw2h3SL8qj50oWN6jVM/mTN6A/s2G/5YsNpflI6IwL0prHl0Xwnn02ggXOW
         uo8F/8ILbPdmKGuXch4JKKWifF6L91Gidq/e61sFqGlsxQB+3eYeWTBlMkFerdPr0gHJ
         d0ZA==
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
        bh=BIgnTR/BQ6pMO3MLjNwHDpB+RieNfAaWE7Z4O+G0Ubk=;
        b=JbVxslBMgexens3vaOO5QHPnGkRCfk6pkynY0kE7UWlch7854KsEE8e8DRhbRGcBHD
         Ajo6QPfrSN4qrMBpzgMmjIjaxJtevOS/ghD2xN4HKQD1ZVDW4OJ+E0T74f/KS7hhO+xG
         51mixl1UODSR1vn3PS0Rhe+LfTtdKsC2s5pRLfNDLzlSDUtnqi07gSO1J0L5miDFiF9Q
         iCnbGC6bQN5Uzn8mqnWM9uGGvzIkHZtdRl8QqxocmtlTTOKLURZHIjV2u5AAP7G4GdQ9
         yoLywoNV9E0Q5CCacI+GCIfUPCfgcqM7w5W2IkPkVdAia4J+9g02k1a0I1YF5bKM5pqn
         JzNQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ3TTimFHX1B0/UGKDXt/Nvwp4i7Lf5BVvkVOnQmjh099nXzKc+N
	GNFN32v4CD0o+EdgjXCiIaY=
X-Google-Smtp-Source: ADFU+vsc/IwjIg3/dBd1d6ZA7DLMsDrxtKepzzEJMoO3g7fTj9PqQP+GzzYZ2XQUZwE6shsNLA7FSQ==
X-Received: by 2002:a9d:6197:: with SMTP id g23mr3542327otk.239.1583953129006;
        Wed, 11 Mar 2020 11:58:49 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:4042:: with SMTP id o2ls823471oti.4.gmail; Wed, 11 Mar
 2020 11:58:48 -0700 (PDT)
X-Received: by 2002:a9d:5e8a:: with SMTP id f10mr3570930otl.143.1583953128646;
        Wed, 11 Mar 2020 11:58:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583953128; cv=pass;
        d=google.com; s=arc-20160816;
        b=bDF7K7LSXrku6nB1YUou0i3K3MCZqUd/TYjyJ4Cfv3EzLU9kVnfkM8jVJ8eRXL2EKf
         qC6HLIb8JCBx8ie7hImRqBWfmdpQsg+yuFdiNXhkJleCtGc59RF9K44ByZKJPW6QFIBX
         7WL96a6Z4Z8Rf65hcpeFzE/8g+19GgYKaAkSCDGMTBXV+K9DxZiWZmiczPWdxu2pMfA5
         ftlMyaUUu1uriflADWhIsPvxAnfBy5WTQLp5QnQkW+DqUxaUqNjgmw+p18WcH9VW5vdz
         /ZQnbxr+QgEWdJCm1aCbzjyJiiXdjQfTA20LrYeWOTaGYugPKGiKwnw8jb7iF/MWAnG5
         YSqA==
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
        bh=JkK+K/Ywk92epmU3JHAJ7WyswuhUK4h0VFLrRbHFoiQ=;
        b=n1k/oH+vqKJPOOKo6OKSkx3QePG6E3iXPXQkbV6uKdXwZMloFes2Xcv58amlC7kqo3
         SgOdxCSDn+pXE1O18wxsGjDuB733uU6J5S0gzsH03c5ppd+uhmqhEOwjrhpSrY0o2MoO
         NxEixBnOUh1RCjSGyB/qh2Z4f3Zf/Y4RTsdmVTtO66xVtqM9HHt/ZxP1D2xnz+hUU8z8
         wTYr5IK89nnsTyspgxK3FQ8uBJWWoCDJIYY04o2Tv6C+quYCtGQdrJYYSbLH1a1xDEQR
         D7A0brwog5Jpjb4R4gTqbd28GyzkZa22bB2y3T5KKzmw5UNcQK5QVHvLsrYB5W0cEL/u
         pwqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=TZEg8AJ6;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.243.41 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2041.outbound.protection.outlook.com. [40.107.243.41])
        by gmr-mx.google.com with ESMTPS id o11si204722otk.0.2020.03.11.11.58.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:58:48 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.243.41 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) client-ip=40.107.243.41;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MS8XvPO5QmXItMSuDBT0EL+ChtrhTBtOqX0qBcmcKPGfUs1CSoIJmHT6XPnGM9PX3x87R3NC0HzjLcMjUiIRDnoDiIb/zqzk2pzzIzkdkYy3IuxiRgXSMNOMEpWH71d6Dy5AS/pnKs+cgf5zAmebg+r1bE7wwCbik22k2M0K+xmJ4hyGTfDPkYF4NiguAB5xySnBxqsV7TW6UOqjNub+ga/Je3wJCuwLdPDCqcsrfGWWvd1a6PfXFJC3cckzTZ/1LrbOn0KLYcL6j5acDg3QvEu8BkS75PzjBUBdkQofnwtyhWqhZmxo4cSCqmZlCZOJGI+ylOLsuGWkafp5brDKIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JkK+K/Ywk92epmU3JHAJ7WyswuhUK4h0VFLrRbHFoiQ=;
 b=m2oxH9Bm44psDanu8Y0KtrxWBXIte4cpVNzN9ny16D5soXSwbQ1iJLU0n5Z//IYTeeJJvwuZAMyON/t7sA6758K9gy2sqAS+0G525X1D2AK1pMGAZPZ1AvU3B63YpUWQZ2t803grFiUzay+s+dk31azszrXQC+rEz+HkJ6Bg8QDHFvJxXaypB/I2GM34UndyCQmAnPojMwmO1JhfVVBmeREMSVyotPA3liOaFB6AZQbafYWPAntsGpdzPXMVrn6IWvrnM4hCR8JVkn4Bf7/Fq/v6xmEg052uAmiRdStwMivyZfr/8K81NQyMMYL/EqY1DXnilkSQC2CCEaClS0rAWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3232.namprd12.prod.outlook.com (2603:10b6:208:ab::29)
 by MN2PR12MB3789.namprd12.prod.outlook.com (2603:10b6:208:16a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Wed, 11 Mar
 2020 18:58:47 +0000
Received: from MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::d8f:800:975a:b8c]) by MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::d8f:800:975a:b8c%6]) with mapi id 15.20.2814.007; Wed, 11 Mar 2020
 18:58:46 +0000
From: "Nath, Arindam" <Arindam.Nath@amd.com>
To: Logan Gunthorpe <logang@deltatee.com>, "Mehta, Sanju"
	<Sanju.Mehta@amd.com>, "jdmason@kudzu.us" <jdmason@kudzu.us>,
	"dave.jiang@intel.com" <dave.jiang@intel.com>, "allenbh@gmail.com"
	<allenbh@gmail.com>, "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>
CC: "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 2/5] ntb_perf: send command in response to EAGAIN
Thread-Topic: [PATCH v2 2/5] ntb_perf: send command in response to EAGAIN
Thread-Index: AQHV9x46fcHb8CAMpEy5Z6V8Vk8yLqhCWDIAgAFURNCAABBOgIAAAo4w
Date: Wed, 11 Mar 2020 18:58:46 +0000
Message-ID: <MN2PR12MB323290836319B3E7032D91369CFC0@MN2PR12MB3232.namprd12.prod.outlook.com>
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
 <1583873694-19151-3-git-send-email-sanju.mehta@amd.com>
 <3c350277-8fe6-04b2-673e-7d4c8fb6ce24@deltatee.com>
 <MN2PR12MB3232AD3D784F07645D7115609CFC0@MN2PR12MB3232.namprd12.prod.outlook.com>
 <214f3ef3-853d-6b0d-0fed-5bb6c1f1de1f@deltatee.com>
In-Reply-To: <214f3ef3-853d-6b0d-0fed-5bb6c1f1de1f@deltatee.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Enabled=true;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_SetDate=2020-03-11T18:56:34Z;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Method=Privileged;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Name=Non-Business;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_ActionId=bdd72418-470b-430a-b19a-000077161765;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_ContentBits=0
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_enabled: true
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_setdate: 2020-03-11T18:58:43Z
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_method: Privileged
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_name: Non-Business
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_siteid: 3dd8961f-e488-4e60-8e11-a82d994e183d
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_actionid: 24b98547-7f7c-4e75-a9ed-00006e09ab9a
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_contentbits: 0
x-originating-ip: [165.204.159.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5c996abd-7c36-427e-dc17-08d7c5ee3a76
x-ms-traffictypediagnostic: MN2PR12MB3789:|MN2PR12MB3789:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB37898BF44EE0E30CF74F83629CFC0@MN2PR12MB3789.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(346002)(366004)(396003)(376002)(39860400002)(136003)(199004)(26005)(186003)(76116006)(2906002)(66946007)(7696005)(71200400001)(9686003)(6506007)(53546011)(4326008)(81166006)(55016002)(54906003)(6636002)(110136005)(8676002)(81156014)(86362001)(52536014)(66446008)(66556008)(478600001)(316002)(64756008)(33656002)(66476007)(5660300002)(8936002);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3789;H:MN2PR12MB3232.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: taifC88R4y1Qo4jLLOwq+BWQxtSVnY0AttchPO2K9U3nFGem4FDNyB1daXeZkX07diYp7G1kPkI5kIvQXuW0b648vKrvRnU6u837uINIcAJGEmIUnct11m6wGTJ8bfPzAQRVP+p/mtR4pe8l4QbIp70SqF/YUHp+2JxYA0D77mlcJJBfLRNj/NRrqw/U6MOvPjHYMjnlwxBZ1T2Skjurciij3kKGwM75f+PM4y2QeNqO/jq4Y9CqnZ0vMhvKpIBqvZ2XXugurBx3Ho3hAQ2C0fABJJkpZZ14YfXqgHpmWe1s1NJPvXqZRN10awYlB7c2JYwcXTkEgLeNkoVKqGqiCNsFSUgAmxo3+1ePm2wR4vi3jgZywpK8vbUvRzajsI2+1r3X5jznMA0A2nZR3/PY4YJNrWToYB4LAQbbJYfaaRV1Ff3Ji5x/9ehp/Zepfmuz
x-ms-exchange-antispam-messagedata: 3a4DGhdau1vY11zToDYJFFMwIt/lLc/8Y6sZrMTfd2iqaW3lfPE80/B7lIIbF4g8yb7UqcO4lIfX5cRyod605Y0fYj7QPdshdyVGUAfrEkg+Kb8m4E9AVoCQuUpMKPfVLHKnHhYNQa5tzjs8a0MG1Q==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c996abd-7c36-427e-dc17-08d7c5ee3a76
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 18:58:46.8931
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cWqbPxgmyiPOuLBLrT/X7gexF7EcJYPti8rCth9V1Jo7FnRV5qj0xGI6xZ4xghms
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3789
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=TZEg8AJ6;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.243.41 is neither permitted nor denied by best guess
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
> Sent: Thursday, March 12, 2020 00:17
> To: Nath, Arindam <Arindam.Nath@amd.com>; Mehta, Sanju
> <Sanju.Mehta@amd.com>; jdmason@kudzu.us; dave.jiang@intel.com;
> allenbh@gmail.com; S-k, Shyam-sundar <Shyam-sundar.S-k@amd.com>
> Cc: linux-ntb@googlegroups.com; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v2 2/5] ntb_perf: send command in response to EAGAIN
> 
> 
> 
> On 2020-03-11 12:11 p.m., Nath, Arindam wrote:
> >> -----Original Message-----
> >> From: Logan Gunthorpe <logang@deltatee.com>
> >> Sent: Wednesday, March 11, 2020 03:01
> >> To: Mehta, Sanju <Sanju.Mehta@amd.com>; jdmason@kudzu.us;
> >> dave.jiang@intel.com; allenbh@gmail.com; Nath, Arindam
> >> <Arindam.Nath@amd.com>; S-k, Shyam-sundar <Shyam-sundar.S-
> >> k@amd.com>
> >> Cc: linux-ntb@googlegroups.com; linux-kernel@vger.kernel.org
> >> Subject: Re: [PATCH v2 2/5] ntb_perf: send command in response to
> EAGAIN
> >>
> >>
> >>
> >> On 2020-03-10 2:54 p.m., Sanjay R Mehta wrote:
> >>> From: Arindam Nath <arindam.nath@amd.com>
> >>>
> >>> perf_spad_cmd_send() and perf_msg_cmd_send() return
> >>> -EAGAIN after trying to send commands for a maximum
> >>> of MSG_TRIES re-tries. But currently there is no
> >>> handling for this error. These functions are invoked
> >>> from perf_service_work() through function pointers,
> >>> so rather than simply call these functions is not
> >>> enough. We need to make sure to invoke them again in
> >>> case of -EAGAIN. Since peer status bits were cleared
> >>> before calling these functions, we set the same status
> >>> bits before queueing the work again for later invocation.
> >>> This way we simply won't go ahead and initialize the
> >>> XLAT registers wrongfully in case sending the very first
> >>> command itself fails.
> >>
> >> So what happens if there's an actual non-recoverable error that causes
> >> perf_msg_cmd_send() to fail? Are you proposing it just requeues high
> >> priority work forever?
> >
> > The intent of the patch is to handle -EAGAIN, since the error code is
> > an indication that we need to try again later. Currently there is a very
> > small time frame during which ntb_perf should be loaded on both sides
> > (primary and secondary) to have XLAT registers configured correctly.
> > Failing that the code will still fall through without properly initializing the
> > XLAT registers and there is no indication of that either until we have
> > actually tried to perform 'echo 0 > /sys/kernel/debug/.../run'.
> >
> > With the changes proposed in this patch, we do not have to depend
> > on whether the drivers at both ends are loaded within a fixed time
> > duration. So we can simply load the driver at one side, and at a later
> > time load the driver on the other, and still the XLAT registers would
> > be set up correctly.
> >
> > Looking at perf_spad_cmd_send() and perf_msg_cmd_send(), if the
> > concern is that ntb_peer_spad_read()/ntb_msg_read_sts() fail because
> > of some non-recoverable error and we still schedule a high priority
> > work, that is a valid concern. But isn't it still better than simply falling
> > through and initializing XLAT register with incorrect values?
> 
> I don't think it's ever acceptable to get into an infinite loop.
> Especially when you're running on the system's high priority work queue...
> 
> At the very least schedule a delayed work item to try again in some
> number of seconds or something. Essentially just have more retires,
> perhaps with longer delays in between.

Sounds like a good idea. Thanks for the suggestion.

Arindam

> 
> Falling through and continuing with the wrong values is certainly wrong.
> I didn't notice that. If an error occurs, it shouldn't continue, it
> should print an error to dmesg and stop.
> 
> >
> >>
> >> I never really reviewed this stuff properly but it looks like it has a
> >> bunch of problems. Using the high priority work queue for some low
> >> priority setup work seems wrong, at the very least. The spad and msg
> >> send loops also look like they have a bunch of inter-host race condition
> >> problems as well. Yikes.
> >
> > I am not very sure what the design considerations were when having
> > a high priority work queue, but perhaps we can all have a discussion
> > on this.
> 
> I'd change it. Seems completely wrong to me.
> 
> Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/MN2PR12MB323290836319B3E7032D91369CFC0%40MN2PR12MB3232.namprd12.prod.outlook.com.
