Return-Path: <linux-ntb+bncBCHK3VHCYUIBBZH3RD2AKGQEY63WRTY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B607198395
	for <lists+linux-ntb@lfdr.de>; Mon, 30 Mar 2020 20:43:49 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id cg7sf15159684qvb.5
        for <lists+linux-ntb@lfdr.de>; Mon, 30 Mar 2020 11:43:49 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1585593828; cv=pass;
        d=google.com; s=arc-20160816;
        b=ynjDyhKC86iTuwdAP6uk3qClS9hH0bizopTLcwnViIF3gEPT92FdqRrQcjQeEJGxeG
         o/CAtviTgOWRm+4soymorznt1kgGGrcZvQSqsVCwcBQ1By8f1uN+39jb4T2ZUuo6YpEt
         R3Gbh+3zdyeW4dTejKipHltXJ5Smm0OkK4HbZvZMfueDnfmzbM4dgqwa7IZAdImgtppj
         d4qZ3pL7RwQUBhIuOlb7YVJ2BfyaFjq8sxBNKrK3k1l3ko5tP0SJDN/b0TvXCr2CdBA+
         l6+fev8v1+Z3OKuAINGBEjvl/KUdADNhSqj6mzLoUVf+ftX+FE1lVenB2A19B+ZYg7q7
         lYFA==
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
        bh=VlvHBj0ZPjJiOnppL/1SV78oiOpKM7+zSK589EkjifY=;
        b=ulosuWMtyDXJSQvL/gOFOB8WrxUaLv4XhA7Mbg3AYxHkPjAdfki3GQ2+AZFR3sOaO4
         hNA4yWaqeenWHEU1SvwG198EN+glr8fOI5fHZ/bhMp7XaS/P7cgu2g4oMRpxQcDt0Kop
         I/zLQ6GWmK0KkMqTCpX4YCYHU+L6sxWpQuddW9RC+k7/W6jXOFb+t7UYpGtJXEYQPSeF
         gfI4QoId+CdZrg7CXHN2P8lrQx0953Nqx0h6b1OurTABhM+/Z7AcaedDpC+nqx9e+/tv
         kDMreo7BSMjsVyw0LV22YL0p7HHpNgtzusUhmYa3462MeLpu37nGgJQva6AAppOFaL3p
         SW5A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=rpqAfGQO;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.237.89 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
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
        bh=VlvHBj0ZPjJiOnppL/1SV78oiOpKM7+zSK589EkjifY=;
        b=b50YVcuUYm/i70mt07wyP+8kEEu2m5sCTDEccTOnPNZJYaqEryMsmj0C/orY1FRXH1
         MOfxQkMEWGdRqs1QEoH+qAXucTyM1XkRX2gWPZha1l5dKsy7EZ/5K1idMKDFPhi67Fhl
         3tWRUt/c8rdCR5WEIEUjPRUcK8uTFab/GhfH1HIyys3ze2ST9V9PY4uIYgVvU1bivjIS
         PZGAiatxaCEL1RYL7TIjFqu/Md+xsgNRQEaqf/lg070j2Pyv8QwcBux00a0X+9h8DKV/
         23SGWSZFz0VuyPMgjIlMMQKQ0DdP1T0U++44oTNAvb+JWeFvGeVZb/TPI2WAPLSUoPVd
         SGow==
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
        bh=VlvHBj0ZPjJiOnppL/1SV78oiOpKM7+zSK589EkjifY=;
        b=CFXJkpTR3JfAR1eau2ZjtwERPGKCYBrhwfn9Q+Z+0Yqm+tZLQldr0TgyHXipL2X0l8
         EZovOAYpFat3t2yxTD1HDz14GI9QwK/lIayDYc0ORkexBG2crUL35hBKCOjzEwd+Qsg6
         xgJ1Lw7qI+3DRW8HVVPTIBvtpyPiUqmbR9lWwSQD/pFeob/FsKVquxGkJNZX1vXk3TKn
         DOOFCtCQMyc5FTB5LT9gmvjPGzbcY61XnZjmOUQEO0sjpPWHoOpIReBVgn71c8vZNFCf
         MolURz4xoLBOTDfqnc2k2FFPqTBd/zuRngJx0ucy9VZPElXguK76Abw+CAtdYw0+iTEe
         6hgg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ3oq0pWEEeczS5RON7ixO+03SSWItom259Rv1sMf2Bc/oYAPd5K
	ginRtYrOzeo7EAbcBo6RtIc=
X-Google-Smtp-Source: ADFU+vvM1BpQ5ou2nFkhvcykfJVas1fxUXJnqYiSFTFAAYUSXMyZuUUhXKnZtg0205pdr78Xs6at+w==
X-Received: by 2002:a05:620a:15d1:: with SMTP id o17mr1411524qkm.457.1585593828209;
        Mon, 30 Mar 2020 11:43:48 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:f1d:: with SMTP id e29ls7317012qtk.2.gmail; Mon, 30 Mar
 2020 11:43:47 -0700 (PDT)
X-Received: by 2002:ac8:5388:: with SMTP id x8mr1461126qtp.21.1585593827752;
        Mon, 30 Mar 2020 11:43:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585593827; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jjf45DB+Um/iZ8TvdT7AihUv2qUnWz10ja76G5C3+Xc19KTvCqwcsfhFk2I42SdfXJ
         9Dvgr2LJ4otRk42W4BBfYNLBDbjcRQjiggdeJ8uihwnMyw19bW2x8APZ2oJqlxVH5Eor
         aBKf0vufjVIp/UisG9Gdl7x+l3oNech+Hk5bghnqqOdkBFVyjWsvJmJ2hCYXeh/1tWkT
         qsoRhbWQ/6Biar16JldVlG5iU5ascV6G9k2lw4KU7PIDcP/384jJU3DMo/nrDfEsUNtR
         Z/f3xXFvil+n6vRpWk/lMNt1NKCA4Q0FSAmHH0StCIu1OxR2wdO19XCIK6QEYiZRNBju
         KGJw==
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
        bh=1BgE4IcbRa1PRyaOEVLj4RRZFvWSZtDKqEoOmq8n2vI=;
        b=ckAuMlc9yNl7LFkYIf9GjF75+xH+/SqRfM6hm5nolpiY6sWKMj1H5oMIC21LgSts3K
         4jSc4N9tP1KH7kt1eFNyt1jR6l3vm+guykdbpBEI5Ibq1A03kMaQtUW6fAN/GkNii+9O
         ddZvH5lRqKcidKEEepjMecXA0hYtto/GSiHpHwYfhxRlCRfmjg5Phg3zLMM9zLi2bitb
         lSs3LlS1kjaQRKVY5RTjOWHdDGaJmKRCeQGVQSkAT+9CV3GdTWFqzB1PKZGPpIQR1+in
         OMUHP0SZyYBtYhENFVn7oLCCXMYjIgYAI0GTHRLoocez5HPH6uGbOnsDoKd/Ej1Kv3F4
         8Ncg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=rpqAfGQO;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.237.89 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2089.outbound.protection.outlook.com. [40.107.237.89])
        by gmr-mx.google.com with ESMTPS id 198si856798qkh.7.2020.03.30.11.43.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:43:47 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.237.89 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) client-ip=40.107.237.89;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nT25rIAyQja8aLDMo+NCxwp7Mq4F0HaVZcMIeGOceByHZ/XFLt/xhD6cqqhAc8fAjETWcI44smnxgULtFupxRFVu6EFQ7q0U6hAEfX8Bsu+tkbZstMc79pO4w1J/ScxkCrBsXK4T2koDr9NST3DufaJg21wsqxCYDbNRyBhx/SwtgOpoof6EU9GRJxale/wMRN0Kiyx5GwW2HBLqDC6bns2ZM9MBGe5s+r/9vrruBXts/4ZjbKeIAfz9dGKfk4XdanbmAxhuci9/Swno8d4JktvUN8FBRxIBoUhX+pVOy+aoq7vvx9P0sjiDW0KkZoUip3se2tPDWHDhnf2MLTLSVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1BgE4IcbRa1PRyaOEVLj4RRZFvWSZtDKqEoOmq8n2vI=;
 b=lsPIZrKUgWtgNGsOwV+wxXzfkL+8mQBT89bgxbL4UT4F3Vuo435bqiJIIY+ZR02iTwnOibrGumpt5MtQdzSD4xRpo/IUj75m+sv/2TMr1mww21fCzJOC+RB1wyf8eFBtQIF8035/OzcFcT6pzvRkdvfIR3DZowwswd5aKFwlsDEeaDhy8CIzgOedE3yVQT5aRTTGxM+kXbexVg5eQ6uqwQ9YCNMj3EszDyyQj9m6qNpGCcUrbt0saDso+wD4SyCraGpsJBSPF5Rn2knfVlC/cwKoQ0gsB2x4lFFJu+FIpGEEj0V0Yf6lZbfkShvfcjle/otCguhV7tLC6AeNfFmZcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3232.namprd12.prod.outlook.com (2603:10b6:208:ab::29)
 by MN2PR12MB3407.namprd12.prod.outlook.com (2603:10b6:208:c5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Mon, 30 Mar
 2020 18:43:46 +0000
Received: from MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::e194:eea:a96e:a732]) by MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::e194:eea:a96e:a732%6]) with mapi id 15.20.2856.019; Mon, 30 Mar 2020
 18:43:46 +0000
From: "Nath, Arindam" <Arindam.Nath@amd.com>
To: Jon Mason <jdmason@kudzu.us>, "Mehta, Sanju" <Sanju.Mehta@amd.com>
CC: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, Jiasen Lin
	<linjiasen@hygon.cn>, "Mehta, Sanju" <Sanju.Mehta@amd.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 00/15] AMD ntb driver fixes and improvements
Thread-Topic: [PATCH 00/15] AMD ntb driver fixes and improvements
Thread-Index: AQHV3DqlnIDS1qJCGEGljI9iZT5gmqgPkraAgDZQnICAG+nw8A==
Date: Mon, 30 Mar 2020 18:43:46 +0000
Message-ID: <MN2PR12MB3232D38E30341A7D7408BED79CCB0@MN2PR12MB3232.namprd12.prod.outlook.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
 <a8e98fe8-25da-3ea7-a204-2fee07c6061a@amd.com>
 <20200313002524.GB13046@kudzu.us>
In-Reply-To: <20200313002524.GB13046@kudzu.us>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Enabled=true;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_SetDate=2020-03-30T18:41:47Z;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Method=Privileged;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Name=Non-Business;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_ActionId=e7384e19-9425-4246-8732-0000e9c41582;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_ContentBits=0
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_enabled: true
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_setdate: 2020-03-30T18:43:42Z
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_method: Privileged
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_name: Non-Business
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_siteid: 3dd8961f-e488-4e60-8e11-a82d994e183d
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_actionid: c199e236-1bc7-4c31-830a-0000cba8f745
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_contentbits: 0
x-originating-ip: [122.179.41.123]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cdd8422f-17f0-414e-ac4d-08d7d4da4762
x-ms-traffictypediagnostic: MN2PR12MB3407:|MN2PR12MB3407:|MN2PR12MB3407:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB34070719369F2BC26B9112DC9CCB0@MN2PR12MB3407.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0358535363
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3232.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10009020)(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(53546011)(478600001)(86362001)(6636002)(55016002)(5660300002)(33656002)(6506007)(110136005)(9686003)(2906002)(52536014)(186003)(8936002)(8676002)(71200400001)(81166006)(316002)(81156014)(7696005)(26005)(64756008)(66556008)(66446008)(66946007)(66476007)(4326008)(54906003)(76116006);DIR:OUT;SFP:1101;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IXpowUyCguu6j7TfsTXjogkbcUtSXaLMk/ZSl5DIravW8zd2RkwPcqWWysET3qt+NpJvoZZrTQrcbPV2ho+1OuFKCiBX/xpGs50bMHhfpqrC3RTSv/JwffwpCKgH/e65DG9beFeU0YIkEhJHOL7syftQXscx18DPHX6yKp9r4kKCvuKnlw0zfk3nwAEiLq0FotMUmjmNEHAwT3VzxnCKLkp1eoDvYNAOqj79PEbwHKePEeBHWYTEAz1AvFQp84KaPtlcmqdA2+TrTUuWAFFzR/lvgzvJ8X9et6iC/xUMvvRA4j0QuRWklEWi/8/V8w6XZB89yQkETJ3hMt2VB/7Hd1GT0gU5wmmnlIzjSFiWwPdT6s9qhPARQGSWJu7ZtYoTo6CRD02wk9LjGpcn3p1g2BsG6KNu/RyT5+Riiv4SWFIk2dB3GYpzOdI0dj8Ike/B
x-ms-exchange-antispam-messagedata: ksujEKmIxTLBXi25NEsugDngZOu/+3FhDYWyAQng4ObtXaiukPKogDQaX/s9M2W+acgxjfBkO6lXcn6mtwObXNgXiv3EjaEIamOZPZKi7TwHlchd3NevnYTxNJsb7OYVp80B5bnJDwZPSDwent7mAg==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdd8422f-17f0-414e-ac4d-08d7d4da4762
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2020 18:43:46.0883
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wTzeRIEqc0sJ/KmD35Jw24HcHjdnKaO15dd32gt3jMs781mxmaPP140GPBQl6OXa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3407
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=rpqAfGQO;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.237.89 is neither permitted nor denied by best guess
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
> From: Jon Mason <jdmason@kudzu.us>
> Sent: Friday, March 13, 2020 05:55
> To: Mehta, Sanju <Sanju.Mehta@amd.com>
> Cc: Nath, Arindam <Arindam.Nath@amd.com>; S-k, Shyam-sundar <Shyam-
> sundar.S-k@amd.com>; Dave Jiang <dave.jiang@intel.com>; Allen Hubbe
> <allenbh@gmail.com>; Jiasen Lin <linjiasen@hygon.cn>; Mehta, Sanju
> <Sanju.Mehta@amd.com>; linux-ntb@googlegroups.com; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH 00/15] AMD ntb driver fixes and improvements
> 
> On Fri, Feb 07, 2020 at 04:28:53PM +0530, Sanjay R Mehta wrote:
> >
> >
> > On 2/5/2020 9:24 PM, Arindam Nath wrote:
> > > [CAUTION: External Email]
> > >
> > > This patch series fixes some bugs in the existing
> > > AMD NTB driver, cleans-up code, and modifies the
> > > code to handle NTB link-up/down events. The series
> > > is based on Linus' tree,
> > >
> > > git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > >
> > > Arindam Nath (15):
> > >   NTB: Fix access to link status and control register
> > >   NTB: clear interrupt status register
> > >   NTB: Enable link up and down event notification
> > >   NTB: define a new function to get link status
> > >   NTB: return the side info status from amd_poll_link
> > >   NTB: set peer_sta within event handler itself
> > >   NTB: remove handling of peer_sta from amd_link_is_up
> > >   NTB: handle link down event correctly
> > >   NTB: handle link up, D0 and D3 events correctly
> > >   NTB: move ntb_ctrl handling to init and deinit
> > >   NTB: add helper functions to set and clear sideinfo
> > >   NTB: return link up status correctly for PRI and SEC
> > >   NTB: remove redundant setting of DB valid mask
> > >   NTB: send DB event when driver is loaded or un-loaded
> > >   NTB: add pci shutdown handler for AMD NTB
> >
> > The patch series looks good to me. Thanks for the changes.
> >
> > For all the ntb_hw_amd changes:
> >
> > Reviewed-by: Sanjay R Mehta <sanju.mehta@amd.com>
> 
> I had to rework the first patch, since Jiasen's patch was already in
> my tree for a couple months.  The rest applied fine and will be in my
> git trees on github in a couple of hours (sanity build pending).
> 

Hi Jon,

Just wanted to know whether the changes are in your tree now?

Thanks,
Arindam

> Thanks,
> Jon
> 
> >
> >
> > >
> > >  drivers/ntb/hw/amd/ntb_hw_amd.c | 290
> ++++++++++++++++++++++++++------
> > >  drivers/ntb/hw/amd/ntb_hw_amd.h |   8 +-
> > >  2 files changed, 247 insertions(+), 51 deletions(-)
> > >
> > > --
> > > 2.17.1
> > >

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/MN2PR12MB3232D38E30341A7D7408BED79CCB0%40MN2PR12MB3232.namprd12.prod.outlook.com.
