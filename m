Return-Path: <linux-ntb+bncBCHK3VHCYUIBBBWHUTZQKGQEEGLT2JY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 89012181FD0
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 18:44:40 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id w197sf4277211ywd.17
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 10:44:40 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1583948679; cv=pass;
        d=google.com; s=arc-20160816;
        b=tN/V7+THIxmSU+APaBnt9e62oMCN1bYG2gigl3dbV+uKxMr5aNNKagnj99xERFEB82
         KllXGKlyCfjJDF6SeNU5DBUofKHMqETRQ5+trVCggYYUeis2kTdB5pzaMrB8eqtVA8Oh
         NeyLv9MsZc4X5Lxs1tHGbtBfmQ7ZFGm7rT0JZ62ERtlT77SOu/fX1ibhEvsTAoMl4J/c
         A0yrZ/fN+S+OAbasvUlxP7XqZ5iNj6tC8hhx/k5sH1I97jE3hr1BgSniE3Tn+NM9I51N
         lGPLih977gMrGkcSdGYPuskwwGNlcUym3DQklq9gAmvwxyy3+E0npE2ItQ9ZXuHwgS4J
         /Pxg==
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
        bh=dmT2ltTfaloL07O+EHYIk1SgPaNrUsQ5UOrSc+kgwDA=;
        b=TRCHvY81ds34bQ0N1RmXOJ4A3qyVugearaa/RK2w2PWtNw3+NLWz1JvQ8YQtfJLydH
         dRDB9kUHJfhU054qgML04VMZzBgFcK0+GUN+cSZVEFf1PVVi4C0yQy6X79EVMK83EHMN
         U1WiYc6DnRkDR+xOh6xfqeO2qAyH+jZBtDeq4G53Ywe03OJlbnWQ9zwD7V0pvpyqIAW0
         WpQ7GzpdPrDAgmAdrmaGRZnTuVyFU0EUq2yz4fbvucKG0xTe6X1ZoauK0eKkhD6oDlFX
         2ew0Jf3M4/VfXmJnTEQxIJkw/NUC1kQKQeaUslT7ZfxZXL0CBECy5xXpKBGaJupBJj7/
         hE0g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=RU81kgzG;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.92.80 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
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
        bh=dmT2ltTfaloL07O+EHYIk1SgPaNrUsQ5UOrSc+kgwDA=;
        b=fUoPda4jZKlEcry6KHL6wN18iHU62+k1B0kRANMklTuwfoowJ5Y+t2C5Q2YdJtdwck
         OLTlxchCS0RDfy4p0Ho2q4/1ZB23WFDGQvyBduqQUjzw35s8/fx81Kz7L71qGE7YbfLp
         0Rf9EwCBDHQ/PvGGXjuwYREvxx2YLaExI0QU3Gs44RWfIl+E4MdJYKpo21cAmZhF0G1+
         MMGhUJ+BKp8An1wDGNddZ+Yg3JsHW9zhX0GqFoivKouldEjKoehhVfSKzUmbnfgwF4Jg
         9jqq2qRvi/67JVMKX+LpD6qC2WeEE0GnOOpiPBMPsNndQkTF7d5GtGOVbihUvKqFml4E
         KCAg==
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
        bh=dmT2ltTfaloL07O+EHYIk1SgPaNrUsQ5UOrSc+kgwDA=;
        b=CIrqbkvPpkyfW3jWinHzolP8BTT4zQMmJN8bnAdh0PYaSi64Q1tkC9fAwc7c5sAYjo
         1lsa7DXC5NzEqRTkc7R5mq8HFxZqyKplJwQN4IxMojX7hanf9A7aBImmogBXpDWr3keG
         UpNLyrbNvM2yZXPrloBCiSZnMC2mMAjetocTySUmQINsAZu6BdomA7VfbQqamOTAQxU5
         iV4kheBEa/LJDndah6/HhQ9LOBHdalwAzzOPNvGxwdMkflTDTvjFpilS2ZtIGcLyG6u2
         f/hSDsrZONAz9jJqxXBJ0EkLrkyjmuDFv/D8b1alYLSQ+g4Aov9/LCQQx1UOii5KUqzY
         sRmA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ0a2yAoUUbpWgkQO4qzOP4lw5FW6KaJlc9TR2qS78rbqmUexQXv
	vXyS+scWQNeQK3aoY7sZRR0=
X-Google-Smtp-Source: ADFU+vvpHAz+xHS8pksl7VW3boHM3pQN2+0lLtr3xSo74dl32ENSGKTa0DMAynL03SKFBYda+ohi7Q==
X-Received: by 2002:a0d:e148:: with SMTP id k69mr4542411ywe.383.1583948678931;
        Wed, 11 Mar 2020 10:44:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls709199ybf.5.gmail; Wed, 11 Mar
 2020 10:44:38 -0700 (PDT)
X-Received: by 2002:a25:8381:: with SMTP id t1mr4095933ybk.266.1583948678555;
        Wed, 11 Mar 2020 10:44:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583948678; cv=pass;
        d=google.com; s=arc-20160816;
        b=wJgYikVrj+16neNpH7moNE8Ocz/pfo2dBb1u/e++mWyPBxx5pBCohXGa3zZUqvnikJ
         x0Yw6djp6SFacifIobsdNhv7ydwxUyUB+GFI0ecYusmsc5oSy07V4k+ARxx3Q7TfGlFB
         tXJ4U23fTtF1YuUyVoUAio9Krt3SUpUEmPgEYg9omgF248iUz1u7A2V5BWIub/nUXCkQ
         CimzJya0ngRw3SD16p7vOQxPmpLm7J54VeBUwTTumwSUh9I9l2pxPa0+YTpnaG7nhqnv
         P3mBRQGgBi+AVsDCmZGR0k2ZziiamiR3ItbK94uLRunrLhdWTZCbzOuwlkl/MmxWROMY
         SkqA==
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
        bh=Wyty7aWBfNB1AWmkX2ItYVGOvhqjbEiPTm+3NLLkhEc=;
        b=f7QOirjf5NyIp5xHVQrZMVeClAMSTTrEIg6v7sn/xpkCsdNHz83nOrTLPS/eLaYl+G
         QEDR88YyLgm8BSaVHCRbl6MHJZZKIgNkDNo0Hr/tBQtLGLG4SQYSwbNeePwBXm1vDNRJ
         Cf/eFkCSmJQzNXsjViM0vD44qyrSMR2whjEZirky+ogdV/2ZYWSIwzf+/u9jZuL2SvDa
         XNcUDk7mJYDtMUhu8ljc9cNORKubSkRDZBNqhDc9JiiVUzM2yTijb0BMJouhlHBb7SPw
         xVTMQjmtR6EeAi5N3U5GIJNbYzGGPr1HscxMy9Y7GgLbs9thAcLbU1qxjh+qggRfeI1H
         5z/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=RU81kgzG;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.92.80 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2080.outbound.protection.outlook.com. [40.107.92.80])
        by gmr-mx.google.com with ESMTPS id x13si279284ybs.4.2020.03.11.10.44.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 10:44:38 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.92.80 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) client-ip=40.107.92.80;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NxYbxeC+rLN1eWpvLLmOP72iItrPrZ80PFQI/ixY5uMSMIJDcaV2Tj5UqNBXaQru3rxVA8VhsgtsYlqOxTvfmnTAwJryxcY70PIyqPOF3GonNR5J2wZhO/3Y0uV+m/Fcpw+HqiBpq1tdYNwqz8SjhYQhA1UwbhApJiyObXzIHh6voxh0DWjnADhbYH8ltQb+HUZcpMw6wmBKEcCLebM5yeIY3+xsG0y/Qm+FzP6UBT/TBjBs6t7FFvPzLFTBaseGLjt/tPj1bek4D6SZxy4FNSUdRG3uwu3mqlDpJtyiFnMfo/Sob04kh3KBuNrvHpWEPRGYNQZ+d6N2LQpUgazhAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wyty7aWBfNB1AWmkX2ItYVGOvhqjbEiPTm+3NLLkhEc=;
 b=E9folbFuRnayaf6F43S0Emx0mT1FFaSXUfHdbEZ10X92+Es/kcV4Bu8M8YAueCYl0BEfPVdoCKlA+g0IAMFtecw5yMvR1e2wkBHvTUpcZxjoZlOoeIaUWGkMzWQNAGcM/Mz8hnWkxtwga7BQJZQG8kFzk7qCxNS4WpOr2/OaDaYIklPQhCV4IaSic4I/KSNzA2rkPzJqfE50pCyO4uHNm+svKUw06Pv8AWuUIdSu+8ec2M/hJ7VMaut/oyUY2SuTaVrUCPBGXd1t56PVxklseiS+2pB8G5Oh8ddFnm33gRW/SRDd8Yaf7eA+skuC7c5keyvE7ZIBSVlIPMng1QKjOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3232.namprd12.prod.outlook.com (2603:10b6:208:ab::29)
 by MN2PR12MB4488.namprd12.prod.outlook.com (2603:10b6:208:24e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Wed, 11 Mar
 2020 17:44:37 +0000
Received: from MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::d8f:800:975a:b8c]) by MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::d8f:800:975a:b8c%6]) with mapi id 15.20.2814.007; Wed, 11 Mar 2020
 17:44:37 +0000
From: "Nath, Arindam" <Arindam.Nath@amd.com>
To: Logan Gunthorpe <logang@deltatee.com>, "Mehta, Sanju"
	<Sanju.Mehta@amd.com>, "jdmason@kudzu.us" <jdmason@kudzu.us>,
	"dave.jiang@intel.com" <dave.jiang@intel.com>, "allenbh@gmail.com"
	<allenbh@gmail.com>, "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>
CC: "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 1/5] ntb_perf: refactor code for CPU and DMA transfers
Thread-Topic: [PATCH v2 1/5] ntb_perf: refactor code for CPU and DMA transfers
Thread-Index: AQHV9x43Qtkkpxs9vEahMHrOzt9YcqhCVVoAgAFU7AA=
Date: Wed, 11 Mar 2020 17:44:37 +0000
Message-ID: <MN2PR12MB3232C36B88F3667D89FFEA929CFC0@MN2PR12MB3232.namprd12.prod.outlook.com>
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
 <1583873694-19151-2-git-send-email-sanju.mehta@amd.com>
 <e700a5f6-1929-0d65-b204-c5bfde58f5f7@deltatee.com>
In-Reply-To: <e700a5f6-1929-0d65-b204-c5bfde58f5f7@deltatee.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Enabled=true;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_SetDate=2020-03-11T17:41:14Z;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Method=Privileged;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Name=Non-Business;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_ActionId=13d833a9-e92c-490f-81ef-000074609416;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_ContentBits=0
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_enabled: true
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_setdate: 2020-03-11T17:44:34Z
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_method: Privileged
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_name: Non-Business
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_siteid: 3dd8961f-e488-4e60-8e11-a82d994e183d
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_actionid: e169ab50-1f31-476d-99c9-00007a16232b
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_contentbits: 0
x-originating-ip: [165.204.159.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a4963eba-a305-43d8-f16c-08d7c5e3de61
x-ms-traffictypediagnostic: MN2PR12MB4488:|MN2PR12MB4488:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB4488BD880829BBC5187602B09CFC0@MN2PR12MB4488.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(199004)(33656002)(2906002)(26005)(186003)(54906003)(316002)(81166006)(478600001)(81156014)(5660300002)(8936002)(52536014)(8676002)(110136005)(6636002)(4326008)(76116006)(55016002)(53546011)(86362001)(6506007)(9686003)(71200400001)(66476007)(66556008)(66446008)(64756008)(66946007)(7696005);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB4488;H:MN2PR12MB3232.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0wqBnIoIim2JRxgQSMS8addk3KMUOmUt4OFey2AK8w3XDrSRYynBCkODe2qCxNrGURNv1ju7TZ/dqjTrCke+F1nnmcTaE+3ci8QKCr24lW3PLVwttftMcTPlDMwxsEsgtjr/JUTEMrXf2t3cWFLgeteGUTKv3b6eJgCr8s10tCk0uxlEGYBFkUo/3g0W8jbftvpNulrEVNSS1MNk3UfY6DVYKogQ8lSJE0LNQ9QAjDHldKK+nPcfMcTGO1Lto/QLWjCKLDiqjR5Q+OsrqS2rqneycAtGLQdv2KoZ6+BcL6aq4u7HEIBdGMM6FUpMlPsjbYSgvuJ6baQlyEuApxK/ABZFpDcVnzpkoB55lcASEHZtX4uvhBuPEZwL8g7ZsOdwJdvJ0GZX3FmH83wgAizDH8BRHj69j1lZw8bI2REeVmxoDPT7TTaBmDioAe/O+kuX
x-ms-exchange-antispam-messagedata: DTr/EMqR6T+2u7MT+6GcTv80YTN0kqoq/0VHaTv11ZgFV42oYpfDlL0s6bHOgPtRCNCRYK6SFJuH1z7impgsU2N4g8ThOC/h2vtI35e9L/Fzx6IQe88jmFP/Os5FZiNpw9rXTRd5lcSBAk46eI7srg==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4963eba-a305-43d8-f16c-08d7c5e3de61
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 17:44:37.4104
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9hIs+o5avNHmjwjxbtNLRdfHsJUDcrlLenr5zAlc6z5m3D4M3QdrSsklaL69asdi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4488
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=RU81kgzG;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.92.80 is neither permitted nor denied by best guess
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
> Sent: Wednesday, March 11, 2020 02:51
> To: Mehta, Sanju <Sanju.Mehta@amd.com>; jdmason@kudzu.us;
> dave.jiang@intel.com; allenbh@gmail.com; Nath, Arindam
> <Arindam.Nath@amd.com>; S-k, Shyam-sundar <Shyam-sundar.S-
> k@amd.com>
> Cc: linux-ntb@googlegroups.com; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v2 1/5] ntb_perf: refactor code for CPU and DMA
> transfers
> 
> 
> 
> On 2020-03-10 2:54 p.m., Sanjay R Mehta wrote:
> > From: Arindam Nath <arindam.nath@amd.com>
> >
> > This patch creates separate function to handle CPU
> > and DMA transfers. Since CPU transfers use memcopy
> > and DMA transfers use dmaengine APIs, these changes
> > not only allow logical separation between the two,
> > but also allows someone to clearly see the difference
> > in the way the two are handled.
> >
> > In the case of DMA, we DMA from system memory to the
> > memory window(MW) of NTB, which is a MMIO region, we
> > should not use dma_map_page() for mapping MW. The
> > correct way to map a MMIO region is to use
> > dma_map_resource(), so the code is modified
> > accordingly.
> >
> > dma_map_resource() expects physical address of the
> > region to be mapped for DMA, we add a new field,
> > outbuf_phys_addr, to struct perf_peer, and also
> > another field, outbuf_dma_addr, to store the
> > corresponding mapped address returned by the API.
> >
> > Since the MW is contiguous, rather than mapping
> > chunk-by-chunk, we map the entire MW before the
> > actual DMA transfer happens. Then for each chunk,
> > we simply pass offset into the mapped region and
> > DMA to that region. Then later, we unmap the MW
> > during perf_clear_test().
> >
> > The above means that now we need to have different
> > function parameters to deal with in the case of
> > CPU and DMA transfers. In the case of CPU transfers,
> > we simply need the CPU virtual addresses for memcopy,
> > but in the case of DMA, we need dma_addr_t, which
> > will be different from CPU physical address depending
> > on whether IOMMU is enabled or not. Thus we now
> > have two separate functions, perf_copy_chunk_cpu(),
> > and perf_copy_chunk_dma() to take care of above
> > consideration.
> >
> > Signed-off-by: Arindam Nath <arindam.nath@amd.com>
> > Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
> > ---
> >  drivers/ntb/test/ntb_perf.c | 141
> +++++++++++++++++++++++++++++++++-----------
> >  1 file changed, 105 insertions(+), 36 deletions(-)
> >
> > diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
> > index e9b7c2d..6d16628 100644
> > --- a/drivers/ntb/test/ntb_perf.c
> > +++ b/drivers/ntb/test/ntb_perf.c
> > @@ -149,6 +149,8 @@ struct perf_peer {
> >  	u64 outbuf_xlat;
> >  	resource_size_t outbuf_size;
> >  	void __iomem *outbuf;
> > +	phys_addr_t outbuf_phys_addr;
> > +	dma_addr_t outbuf_dma_addr;
> >
> >  	/* Inbound MW params */
> >  	dma_addr_t inbuf_xlat;
> > @@ -775,26 +777,24 @@ static void perf_dma_copy_callback(void *data)
> >  	wake_up(&pthr->dma_wait);
> >  }
> >
> > -static int perf_copy_chunk(struct perf_thread *pthr,
> > -			   void __iomem *dst, void *src, size_t len)
> > +static int perf_copy_chunk_cpu(struct perf_thread *pthr,
> > +			       void __iomem *dst, void *src, size_t len)
> > +{
> > +	memcpy_toio(dst, src, len);
> > +
> > +	return likely(atomic_read(&pthr->perf->tsync) > 0) ? 0 : -EINTR;
> > +}
> > +
> > +static int perf_copy_chunk_dma(struct perf_thread *pthr,
> > +			       dma_addr_t dst, void *src, size_t len)
> >  {
> >  	struct dma_async_tx_descriptor *tx;
> >  	struct dmaengine_unmap_data *unmap;
> >  	struct device *dma_dev;
> >  	int try = 0, ret = 0;
> >
> > -	if (!use_dma) {
> > -		memcpy_toio(dst, src, len);
> > -		goto ret_check_tsync;
> > -	}
> > -
> >  	dma_dev = pthr->dma_chan->device->dev;
> > -
> > -	if (!is_dma_copy_aligned(pthr->dma_chan->device,
> offset_in_page(src),
> > -				 offset_in_page(dst), len))
> > -		return -EIO;
> 
> Can you please split this patch into multiple patches? It is hard to
> review and part of the reason this code is such a mess is because we
> merged large patches with a bunch of different changes rolled into one,
> many of which didn't get sufficient reviewer attention.
> 
> Patches that refactor things shouldn't be making functional changes
> (like adding dma_map_resources()).

We will split the patch into multiple patches in v2.

> 
> 
> > -static int perf_run_test(struct perf_thread *pthr)
> > +static int perf_run_test_cpu(struct perf_thread *pthr)
> >  {
> >  	struct perf_peer *peer = pthr->perf->test_peer;
> >  	struct perf_ctx *perf = pthr->perf;
> > @@ -914,7 +903,7 @@ static int perf_run_test(struct perf_thread *pthr)
> >
> >  	/* Copied field is cleared on test launch stage */
> >  	while (pthr->copied < total_size) {
> > -		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size);
> > +		ret = perf_copy_chunk_cpu(pthr, flt_dst, flt_src,
> chunk_size);
> >  		if (ret) {
> >  			dev_err(&perf->ntb->dev, "%d: Got error %d on
> test\n",
> >  				pthr->tidx, ret);
> > @@ -937,6 +926,74 @@ static int perf_run_test(struct perf_thread *pthr)
> >  	return 0;
> >  }
> >
> > +static int perf_run_test_dma(struct perf_thread *pthr)
> > +{
> > +	struct perf_peer *peer = pthr->perf->test_peer;
> > +	struct perf_ctx *perf = pthr->perf;
> > +	struct device *dma_dev;
> > +	dma_addr_t flt_dst, bnd_dst;
> > +	u64 total_size, chunk_size;
> > +	void *flt_src;
> > +	int ret = 0;
> > +
> > +	total_size = 1ULL << total_order;
> > +	chunk_size = 1ULL << chunk_order;
> > +	chunk_size = min_t(u64, peer->outbuf_size, chunk_size);
> > +
> > +	/* Map MW for DMA */
> > +	dma_dev = pthr->dma_chan->device->dev;
> > +	peer->outbuf_dma_addr = dma_map_resource(dma_dev,
> > +						 peer->outbuf_phys_addr,
> > +						 peer->outbuf_size,
> > +						 DMA_FROM_DEVICE, 0);
> > +	if (dma_mapping_error(dma_dev, peer->outbuf_dma_addr)) {
> > +		dma_unmap_resource(dma_dev, peer->outbuf_dma_addr,
> > +				   peer->outbuf_size, DMA_FROM_DEVICE,
> 0);
> > +		return -EIO;
> > +	}
> > +
> > +	flt_src = pthr->src;
> > +	bnd_dst = peer->outbuf_dma_addr + peer->outbuf_size;
> > +	flt_dst = peer->outbuf_dma_addr;
> > +
> > +	pthr->duration = ktime_get();
> > +	/* Copied field is cleared on test launch stage */
> > +	while (pthr->copied < total_size) {
> > +		ret = perf_copy_chunk_dma(pthr, flt_dst, flt_src,
> chunk_size);
> > +		if (ret) {
> > +			dev_err(&perf->ntb->dev, "%d: Got error %d on
> test\n",
> > +				pthr->tidx, ret);
> > +			return ret;
> > +		}
> > +
> 
> Honestly, this doesn't seem like a good approach to me. Duplicating the
> majority of the perf_run_test() function is making the code more
> complicated and harder to maintain.
> 
> You should be able to just selectively call dma_map_resources() in
> perf_run_test(), or even in perf_setup_peer_mw() without needing to add
> so much extra duplicate code.

Will be taken care of in v2. Thanks for the suggestions.

Arindam

> 
> Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/MN2PR12MB3232C36B88F3667D89FFEA929CFC0%40MN2PR12MB3232.namprd12.prod.outlook.com.
