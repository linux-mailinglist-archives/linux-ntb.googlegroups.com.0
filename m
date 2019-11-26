Return-Path: <linux-ntb+bncBCHK3VHCYUIBBLXQ6TXAKGQEWYJCHUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A59D710A063
	for <lists+linux-ntb@lfdr.de>; Tue, 26 Nov 2019 15:35:27 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id x206sf12674355ywa.22
        for <lists+linux-ntb@lfdr.de>; Tue, 26 Nov 2019 06:35:27 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1574778926; cv=pass;
        d=google.com; s=arc-20160816;
        b=eg/oAU5JtLxdt2tl7RglQ124MmKlio9rQhmzCPxa5FXLceottHT2ZGGH//83qF6UIh
         mROOLvdn6FBbVsSfXi29PVTGF6yzjI3pa4OiNLJ6XTf55cG5b+5bXZaYoViVq6QD2vUW
         ysSd5iTecYYNQz+r/ak7kcV79XTIvnknZ/FjNdcmLU6pwyDHrE2KGUFVEe2uYqc5WAoS
         6QsnEK5KH4BuITeSiIIdH9v/HtpTKZQXXSbEYdHyWm6SKHh1fT/+mJYX726ASCHA/I9E
         mdzLwkGFOMJiqDuSaVPXCkBFSTN93QLKfbbjkMdtuRbKe+DvxTVS5BCShudl6cJu9JZd
         ho/A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding
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
        bh=V+OfowolKbOxXIeySlmTVxhjvlwyBaOD+mS8bpIQYFg=;
        b=TKDYurXmcnkIxUnCDDLG0zlvCxM/PowLUeFSHeRF16anj/N+TFRLe8ntwxU7YZ9xk4
         YoloDdHiWOM5/UgiF4LNgW0V1CXcwES6LE5YYaLfc+BgUbCwW2X8/LKXuaVXuBAVZZHO
         zvPfI3wPqq/D9iD3r9zOvLHGWvD5deJ5coEI31pCWbhqsbmeJZesPXWqIQ7ayHKp4xmD
         W5E2/IstxobdkEJLrRoC+NfGuN2rIXPm4NHtdco0S27awsjgpHPpajg3VBiqmhmXHmlb
         SlTLoBVnZIq3el6JaBaqXaQxANc2AdX0NjAY6sM0jxcSznRtzcAXr8qWoY3j+DwUmPC7
         L2nA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="kJ7KuVa/";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.72.79 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
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
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V+OfowolKbOxXIeySlmTVxhjvlwyBaOD+mS8bpIQYFg=;
        b=UOcBHghkfokNdmHSCjgbViegopqSESGziuuOiT0y83rCW5+E1Bp5Dl7tDojRFXO8Vq
         RgWWlFgAl8/p5q0UkAN7T42byVhMar4+L/ALupw3Yu1Rg3JMxefn8B68XuoDg2+8aAbr
         xE6Vo/3d+SEWAU0l2KQvut89fRBuoyPlqEwQSsDdkPpZasSIXUZeQRh85Lt/v1yxrICX
         70VAbtc8DIITkoVSuy5Nu6oGX8Kx0A1Zu6EdAfQCe9JZ7JIJTlEUCJmkstH4sIu3JETC
         Gvpo4jcVGSsECMRbyQxEEhnZU+O289JYQcu3Jclc5UGYK8aHBZWort7D7IxZIcx+lHLY
         kprQ==
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
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V+OfowolKbOxXIeySlmTVxhjvlwyBaOD+mS8bpIQYFg=;
        b=eWIfEQ95CIWXmKtaWpDX+TFQSb2HbIE+EEhXitRT+cLKNSuNb8nzHRKiqPz65oHnvW
         rV9G4jp0bg2QnmLPXqb8aiFocQsq+Um+rbNTU+APXvjBn/bHmgPeXVR/9wvGPTlXrqu5
         0phTrva0iVXeJ8NvYaIPLj9UmiABOslubWjr/2Ey+ujafimJJLc/1Q/WnlX+r5u352ok
         jps1I/7zRli0y1y4moGIxXk64zjfETSEefomZK4xdSuRJNZwo8T1AwlIEFaGOROZT3HQ
         alzeyN8ofxU5DQ2GEbNYILFG7oshyRixzxeXZ7JdV8PosruNxEEbwfZF/J+pfJn12080
         rcUw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAW5MF7P4a1I+pX9mQ9m6+xsZB2/3g/2KjYl91tvFcwjHuVAk90t
	4M1oHONN1TdQCoW7TFWfjVM=
X-Google-Smtp-Source: APXvYqyBuVM7RfF15zYJttXdkQWIHzLK7TCl93iff1L9GuZ+akT9F/jjZPU0hPZ/LzSJqjgdDbZ3Ww==
X-Received: by 2002:a5b:610:: with SMTP id d16mr1633505ybq.236.1574778926554;
        Tue, 26 Nov 2019 06:35:26 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:481:: with SMTP id 123ls3490029ybe.1.gmail; Tue, 26 Nov
 2019 06:35:26 -0800 (PST)
X-Received: by 2002:a25:353:: with SMTP id 80mr28859281ybd.457.1574778926124;
        Tue, 26 Nov 2019 06:35:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574778926; cv=pass;
        d=google.com; s=arc-20160816;
        b=rhIbyHBlwLCDRQKLo181QXo6cE4wGanMOHwQ/OoffeRnEu6j8lUkN0/J3g4JxZE7vL
         Gh8NNnCLrXF9eZqHkrWg36luC1UGtjCD3Rabep3QB7vV1MymKboZh3b3IVfpz2bkylpc
         ZsHvdkR9Z336yDaW8a0JcUqfB3/iTiqdKzv7rOxg0v0L5lDH3X6oPRWYMMq5YRrYLs4P
         jdqQBG8GRupzweAYR10xsqT7p6j5y7y20dET5rKeiJE0hy1D//Y4RJCe3Un/Ooe4iBuf
         JXaSEMRGwPkElatc2v75eVfgnzah5cifjxjghKANyw1FlYMzU1m9D/KcJsj7dHrxR59m
         Zhpg==
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
        bh=PFG6sGJuh5GCBigNoHf/CDVIJ96GvDAPFcec6DdFedU=;
        b=T1v1jhvaB7zz8BIkch5xNJtEOUFB+KtM8H777NLNXcvGRkoOIwtB8caT3UIbfktWXb
         VxUVzyVVQPE3WARr9u9ky2eGPU6A7t7p5WEO2v4YaxizawNsNGsuN5UpPZXUn9KxDa7y
         BGlITUq+L52cmq+K7RhItI9XXsiZDIYNFPsLbAfnHZpeATqi0BVt2oo9LvIqyj/3IL67
         iyzSg7o5dBVTIwGNL2wOWvLgWOyazVR7aMCT6mdH8ni1QuuGZ/464jyFj/Akwcptvl8d
         ZoH+BOde+6dS0kyM+B1Fr/sSxhfwZg5g4uK3IOj3PVVJdH77bwJRvxLNAab+eqVT0Uon
         aqdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="kJ7KuVa/";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.72.79 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) smtp.mailfrom=Arindam.Nath@amd.com
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (mail-eopbgr720079.outbound.protection.outlook.com. [40.107.72.79])
        by gmr-mx.google.com with ESMTPS id f184si518542ybg.3.2019.11.26.06.35.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Nov 2019 06:35:26 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.72.79 is neither permitted nor denied by best guess record for domain of arindam.nath@amd.com) client-ip=40.107.72.79;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gsAOPy1veDbbHuIAwfvMHhDVm8tasi5kIWdCGgYlWSg4gxKK32eKvqg0jcbH2BAU9T/2ufm/pggNU4xf2iv4bPZx6+MLgWiHityLk3YWUKD9kO6ZF0CQg0hTrm9JLXbJdAMA6jksSC0SIwu3K7oki9hnOxLOfFOLqEzX1QrXIR7NN51b8ou9HaUW8tYB/b+T0/uJ6xH9yPCR3cYUub2gEOjoTNCnEgKzmFBwXzQpMBgI8epRyRdOOMxWBeQAG1LEzuCj/IbKdG+ojyEs6eMf5fiQkX+yDlBI2NEeVuYRfTlZIqcfSkLS1XZZ0HpoWY6qjDLWsCHbJElxiRBHPf7e0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PFG6sGJuh5GCBigNoHf/CDVIJ96GvDAPFcec6DdFedU=;
 b=U55hZkWv9W8gsoZI81F3me+nQ1J8Ynqch2iMOGCaJad+OSCQRBkons8IWSHGBq/uwaXYS5FQWkGEqCvtFu/fHOosZ6UCOcoCfQZOcrP8yw3c5jbVCPSvWq2ddxcHwPtXkJ/Ia6rcW30MhXgEyifHXb/Du25tlb41BIlD/3Cox5oB6+OUPqa61Ugvn+qtynuwr2qcfIU0cQ6G/ZphvxH+VJaT9NA/UBoeqoP4pqesVBRyeHhXLqobdRj3h8XGAks0jolwHEqElhPop/KcQx6iBGjH3E0+nlMpFpjUA9qNuB7R7TzbdxnhHvGmE3Xhee4cNoXL2CPwzw5+lcAwpU6P7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3232.namprd12.prod.outlook.com (20.179.80.221) by
 MN2PR12MB4141.namprd12.prod.outlook.com (52.135.49.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Tue, 26 Nov 2019 14:35:24 +0000
Received: from MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::c4de:9a49:210c:1880]) by MN2PR12MB3232.namprd12.prod.outlook.com
 ([fe80::c4de:9a49:210c:1880%3]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 14:35:23 +0000
From: "Nath, Arindam" <Arindam.Nath@amd.com>
To: "Mehta, Sanju" <Sanju.Mehta@amd.com>, Jiasen Lin <linjiasen@hygon.cn>
CC: "S-k, Shyam-sundar <Shyam-sundar.S-k@amd.com> Dave Jiang"
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, linux-kernel
	<linux-kernel@vger.kernel.org>, linux-ntb <linux-ntb@googlegroups.com>,
	"linjiasen007@gmail.com" <linjiasen007@gmail.com>
Subject: RE: Fwd: [PATCH] NTB: Fix an error in get link status
Thread-Topic: Fwd: [PATCH] NTB: Fix an error in get link status
Thread-Index: AQHVpFrbGmxYKGFKUEmz5vA3i7O6b6edg7Ag
Date: Tue, 26 Nov 2019 14:35:23 +0000
Message-ID: <MN2PR12MB323225CC169836056288CAA39C450@MN2PR12MB3232.namprd12.prod.outlook.com>
References: <1573119336-107732-1-git-send-email-linjiasen@hygon.cn>
 <CAPoiz9wAJz=Hqb6Os=9AHHv_NGpZ8uCaAuOC=aUTkASKdfs9WQ@mail.gmail.com>
 <933f74c7-7249-618c-13dc-9e4e47ad75d7@hygon.cn>
 <11b355a8-0fe0-f256-c510-ddf106017703@hygon.cn>
 <CAADLhr7bpb-F0eF1UFXy7AcN=z061mno_QsqGE8z-mvWKvUyCQ@mail.gmail.com>
 <04b4d1ed-ea47-819e-a7e4-b729fa463506@amd.com>
 <5c3155b5-6eed-d955-b18b-59b0cb1c513b@hygon.cn>
 <740bb924-b258-8dda-6469-bc1bee90291f@hygon.cn>
 <c5adca66-024f-8d37-3187-ffba73102ac4@amd.com>
In-Reply-To: <c5adca66-024f-8d37-3187-ffba73102ac4@amd.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Enabled=true;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_SetDate=2019-11-26T14:31:36Z;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Method=Privileged;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_Name=Non-Business;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_ActionId=c425bd55-2888-491f-8e72-0000f0a39a26;
 MSIP_Label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_ContentBits=0
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_enabled: true
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_setdate: 2019-11-26T14:35:21Z
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_method: Privileged
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_name: Non-Business
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_siteid: 3dd8961f-e488-4e60-8e11-a82d994e183d
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_actionid: 458fdfe8-fcea-4f6f-a1ef-00007c94a679
msip_label_f2ed062d-8486-4f50-a4f1-3cce0dd00d64_contentbits: 0
x-originating-ip: [165.204.157.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ac7fc78a-0bdc-4e4c-ba0f-08d7727ddf31
x-ms-traffictypediagnostic: MN2PR12MB4141:|MN2PR12MB4141:|MN2PR12MB4141:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB41416DC9B1FC5DD35FE1B8F89C450@MN2PR12MB4141.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0233768B38
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(396003)(366004)(376002)(39860400002)(346002)(199004)(189003)(13464003)(53546011)(186003)(26005)(33656002)(8936002)(2906002)(305945005)(6506007)(102836004)(6436002)(7696005)(76176011)(446003)(11346002)(229853002)(4326008)(9686003)(86362001)(6246003)(55016002)(25786009)(71200400001)(66476007)(7736002)(5660300002)(66946007)(66446008)(76116006)(64756008)(66556008)(14454004)(110136005)(8676002)(6116002)(3846002)(99286004)(74316002)(81166006)(81156014)(316002)(66066001)(256004)(52536014)(478600001)(71190400001);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB4141;H:MN2PR12MB3232.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xjQEOXxcGO2FTJ8LnhalcIUrquDM0BUnJRVhPoxiusAsyFjZkie500MYBgMfE1rR5brE2BH9pRVazfWzCsyi4YuCoylvyAjcDa5KbeKT5gI1YNF8HhUQf+rC8iOU7TY3cljxnDmhQexzEuqDUsc6SOYo5/tTs4vseV2SqvY3tCwkCWOEXSqcwLVQm7aof7b1l8BmJdgoKqUFF8ZbCTdsoTjIj7zGMZR4MJXhk3xnpBHsjHi1p+1DXJflABHwtyl3Bkp28BDEHPg1k1srXmYTOe0j18FgjNcc+jM5WP27YQrfpunYCjYl62GdsSdPJDnINkylqhWqiROsEOxBWBwPikWmIOCIs0yQSCSHQeUPn14DA48ZiIvhADzdU+2K+s4qkFPAdSVGRIh8s6/oumjIU0CSTB8GmMMSQ50K0uaAeUQ4MdS1tC/iVyERo2D22wyj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac7fc78a-0bdc-4e4c-ba0f-08d7727ddf31
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2019 14:35:23.6101
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LUe+lcYoOSEYYF2OYDkvZDuUwkKxJ4rhiqGxI5w1GXRPZ37Fdg/HaRzncsiBK8vs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4141
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b="kJ7KuVa/";       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.72.79 is neither permitted nor denied by best guess
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
> From: Mehta, Sanju <Sanju.Mehta@amd.com>
> Sent: Tuesday, November 26, 2019 18:40
> To: Jiasen Lin <linjiasen@hygon.cn>
> Cc: S-k, Shyam-sundar <Shyam-sundar.S-k@amd.com> Dave Jiang
> <dave.jiang@intel.com>; Nath, Arindam <Arindam.Nath@amd.com>; Allen
> Hubbe <allenbh@gmail.com>; linux-kernel <linux-kernel@vger.kernel.org>;
> linux-ntb <linux-ntb@googlegroups.com>; linjiasen007@gmail.com
> Subject: Re: Fwd: [PATCH] NTB: Fix an error in get link status
>=20
>=20
> > Hi Sanjay R Mehta
> >
> > In more complex topology, read the Link Status and Control register of
> > RP is also wrong. Suppose that a PCIe switch bridge to the Secondary RP=
,
> > and Secondary internal SW.ds is a child device for switch's downstream
> > port as illustrated in the following topology.
> >
> > In secondary PCI domain:
> > Secondary RP--Switch UP--Switch DP--Secondary internal SW.us--
> Secondary
> > internal SW.ds--Secondary NTB
> >
> > pci_rp =3D pci_find_pcie_root_port(ndev->ntb.pdev) will return the
> > Secondary RP, and pcie_capability_read_dword(pci_rp,
> > PCI_EXP_LNKCTL,&stat) will get the link status between Secondary RP and
> > Switch UP. Maybe, read the Link Status and control register of Secondar=
y
> > internal SW.us is appropriate.
> >
> Hi Jiansen Lin,
>=20
> I modified the code as per your suggestion and is working fine.
> Adding Arindam for comments who was the co-author of the patch I was
> about to send for upstream review.

Hi Jiansen Lin,

I am okay with the changes proposed by you. But one thing we need to keep
in mind is that, the configuration SWUS+SWDS+EP as visible from the NTB
secondary, might change in future AMD implementations where these internal
switches are not present anymore. So we might have to re-visit the patch
again later.

Thanks,
Arindam

>=20
> Thanks,
> Sanjay Mehta
> > struct pci_dev *pci_up =3D NULL;
> > struct pci_dev *pci_dp =3D NULL;
> >
> > if (ndev->ntb.topo =3D=3D NTB_TOPO_SEC) {
> > =C2=A0=C2=A0=C2=A0 /* Locate the pointer to Secondary up for this devic=
e */
> > =C2=A0=C2=A0=C2=A0 pci_dp =3D pci_upstream_bridge(ndev->ntb.pdev);
> > =C2=A0=C2=A0=C2=A0 /* Read the PCIe Link Control and Status register */
> > =C2=A0=C2=A0=C2=A0 if (pci_dp) {
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pci_up =3D pci_upstream_bridge(pci=
_dp);
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (pci_up) {
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 rc =3D pcie_capability_read_dword(pci_up, PCI_EXP_LNKCTL,
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &stat=
);
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 if (rc)
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 }
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
> > }
> >
> > Thanks,
> > Jiansen Lin
> >
> >> I have modified the code according to your suggestion and tested it
> >> on Dhyana platform, it works well, expect to receice your patch.
> >>
> >> Before modify the code, read the Link Status and control register of t=
he
> >> secondary NTB device to get link status.
> >>
> >> cat /sys/kernel/debug/ntb_hw_amd/0000\:43\:00.1/info
> >> NTB Device Information:
> >> Connection Topology -=C2=A0=C2=A0 NTB_TOPO_SEC
> >> LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0x11030042
> >> Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Up
> >> Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 PCI-E Gen 3
> >> Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 x16
> >>
> >> After modify the code, read the Link Status and control register of th=
e
> >> secondary RP to get link status.
> >>
> >> cat /sys/kernel/debug/ntb_hw_amd/0000\:43\:00.1/info
> >> NTB Device Information:
> >> Connection Topology -=C2=A0=C2=A0 NTB_TOPO_SEC
> >> LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0x70830042
> >> Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Up
> >> Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 PCI-E Gen 3
> >> Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 x8
> >>
> >> Thanks,
> >> Jiasen Lin
> >>
> >>> ---
> >>> =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.c | 27
> +++++++++++++++++++++++----
> >>> =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.h |=C2=A0 1 -
> >>> =C2=A0 2 files changed, 23 insertions(+), 5 deletions(-)
> >>>
> >>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c
> >>> b/drivers/ntb/hw/amd/ntb_hw_amd.c
> >>> index 14ad69c..91e1966 100644
> >>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
> >>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
> >>> @@ -842,6 +842,8 @@ static inline void ndev_init_struct(struct
> >>> amd_ntb_dev *ndev,
> >>> =C2=A0 static int amd_poll_link(struct amd_ntb_dev *ndev)
> >>> =C2=A0 {
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 void __iomem *mmio =3D ndev->peer_mmio=
;
> >>> +=C2=A0=C2=A0=C2=A0 struct pci_dev *pci_rp =3D NULL;
> >>> +=C2=A0=C2=A0=C2=A0 struct pci_dev *pdev =3D NULL;
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 reg, stat;
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int rc;
> >>> @@ -855,10 +857,27 @@ static int amd_poll_link(struct amd_ntb_dev
> *ndev)
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->cntl_sta =3D reg;
> >>> -=C2=A0=C2=A0=C2=A0 rc =3D pci_read_config_dword(ndev->ntb.pdev,
> >>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 AMD_LINK_STATUS_OFFSET, &stat);
> >>> -=C2=A0=C2=A0=C2=A0 if (rc)
> >>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
> >>> +=C2=A0=C2=A0=C2=A0 if (ndev->ntb.topo =3D=3D NTB_TOPO_SEC) {
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Locate the pointer to =
PCIe Root Port for this device */
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pci_rp =3D pci_find_pcie_=
root_port(ndev->ntb.pdev);
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Read the PCIe Link Con=
trol and Status register */
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (pci_rp) {
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 r=
c =3D pcie_capability_read_dword(pci_rp, PCI_EXP_LNKCTL,
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &stat);
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i=
f (rc)
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
> >>> +=C2=A0=C2=A0=C2=A0 } else if (ndev->ntb.topo =3D=3D NTB_TOPO_PRI) {
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * For NTB primary, =
we simply read the Link Status and control
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * register of the N=
TB device itself.
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pdev =3D ndev->ntb.pdev;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pcie_capability_re=
ad_dword(pdev, PCI_EXP_LNKCTL, &stat);
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (rc)
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 r=
eturn 0;
> >>> +=C2=A0=C2=A0=C2=A0 }
> >>> +
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->lnk_sta =3D stat;
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 1;
> >>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h
> >>> b/drivers/ntb/hw/amd/ntb_hw_amd.h
> >>> index 139a307..39e5d18 100644
> >>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.h
> >>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
> >>> @@ -53,7 +53,6 @@
> >>> =C2=A0 #include <linux/pci.h>
> >>> =C2=A0 #define AMD_LINK_HB_TIMEOUT=C2=A0=C2=A0=C2=A0 msecs_to_jiffies=
(1000)
> >>> -#define AMD_LINK_STATUS_OFFSET=C2=A0=C2=A0=C2=A0 0x68
> >>> =C2=A0 #define NTB_LIN_STA_ACTIVE_BIT=C2=A0=C2=A0=C2=A0 0x00000002
> >>> =C2=A0 #define NTB_LNK_STA_SPEED_MASK=C2=A0=C2=A0=C2=A0 0x000F0000
> >>> =C2=A0 #define NTB_LNK_STA_WIDTH_MASK=C2=A0=C2=A0=C2=A0 0x03F00000
> >>>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/MN2PR12MB323225CC169836056288CAA39C450%40MN2PR12MB3232.namprd12.p=
rod.outlook.com.
