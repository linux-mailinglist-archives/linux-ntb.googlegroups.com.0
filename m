Return-Path: <linux-ntb+bncBAABB5WO337AKGQEIQNFNBY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF852D9E4B
	for <lists+linux-ntb@lfdr.de>; Mon, 14 Dec 2020 18:57:12 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id 61sf748702plc.8
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Dec 2020 09:57:12 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607968631; cv=pass;
        d=google.com; s=arc-20160816;
        b=0DM+HVARlDoWPz0WSR0DTjwcexjODNJFSr3kgrhIsGxFuJT+sHsy3sk4c0YJhs/mRs
         6b1onjMnpZpnZQVc/lBiw3wtSqHEvqnF4QYmuUiKl1eK46BqzFC1sv8z+B3eLysEA7UE
         6nAWVFCvCwHCWxEE16NYdfYx+yuS7yUk6JgMgg0mhRKuzUWNjJIBRKDvzB50sV9XIHl1
         2apZdpLxvUnTX01wGB9yqHTOT686G1blW4TMGZGiAVwcKkEWlDhX9oOCRzt+yy6iRLjj
         oYuGWEtEA2hChh+zvQJVxvr9sjlrP2TcuSwoueq6faE9VljYO6f4Xk9ymYIPNiIK+jPU
         KWeA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=b5vBfPjr/m3Nyc79dEwiVZaChuBfoX83uslaQ7AOjqc=;
        b=wxa85Xb7m95z5kqPZW63jUgjkKcWRY0rEDGKX9iAcwjbicAPwQMdIlQIow61xl1EZu
         UL8QvuNjvVFvi4AF3u4Y1NYIQ+5W0jPM5XjK/EkKR6ZhzF7tIpu+pr60jb7e/HC+phmf
         oxim5PTBzxCFv+PB/xRR8E/HCEPo4QXJJ+0E7LHbiWRugF/BcH5ENSz1p70bx6iLuQns
         VmPPAku5Aol+xBMOC6/Scn4Tkj347K5ytZnXhibQgP6Bu4lnnEWDTJNzpFylz2459HIY
         1x+ECnuWykg+sKp2Ti3Zfv1uvHdhRx5rtVJbKYWShVkV7+FmIl92tq+/LmtWfbcP677V
         m3GQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@cadence.com header.s=proofpoint header.b=PGq5elo4;
       dkim=pass header.i=@cadence.com header.s=selector2 header.b=mcflzDYy;
       arc=pass (i=1 spf=pass spfdomain=cadence.com dkim=pass dkdomain=cadence.com dmarc=pass fromdomain=cadence.com);
       spf=pass (google.com: domain of tjoseph@cadence.com designates 208.86.201.193 as permitted sender) smtp.mailfrom=tjoseph@cadence.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cadence.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b5vBfPjr/m3Nyc79dEwiVZaChuBfoX83uslaQ7AOjqc=;
        b=Xa0HqOaYgc2u1sInsSooNg6Pf9RGs0+po/jn45tIBHuie3XnxTBJjZLXSbxye7MD2K
         ZsGopF5vVHzyOXZ5s511z9DnQOUdM21Xc5XhNm5ZjYfl4w4/JaOGm7Nu6xzeVhDKu0L2
         616OIgdm+PCG+vFCkx+v11zA8FC3GRXLTP62SdV8RHP2HEYkIicOUUiDmLy20UfgzuSS
         b2dwPfhDVkYFVaqEFEKIs5fYtmWIdK9NrnC1Q5h/6xqI9EW4Irj5nPnzA4FIE0j1xs3x
         aYKFBS8jLjVyrPn517i1VlAj7t9BtGQgR7KuTtoc6iO0F94MOvY27aafAk0T0QvGlqD5
         G6Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b5vBfPjr/m3Nyc79dEwiVZaChuBfoX83uslaQ7AOjqc=;
        b=pHaqhxuduzyet5XiW0Z98olTLa3+VnSPSERU60UDCOYnperOjNsCDa06fc3tMxsV8y
         xdrtzOepw3gH09nhizA1mxAIbbaR2iTpsCtrl39MfBsgshsyJDvIFyZ0s72qLohxUVjw
         2ddWAgnPa0cvJHb8UVTOiZYr96LR//5Nmo4dcNvAHGS0Vr1t2khdZgN5MkBPvBlZp/n1
         NySj9pzVroYciyzxqbEcEJB8f3u1WdDHPgAzrtowpoONiSdogqFCO9lHTuJsXJmK/W+/
         1KGVKqZys9Ad0GaJalazZ3gLzfYwl+G8A816t6xpoowJl0kt2ILUzMWFozfaFnw5PwAg
         /U/A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531yTl7h9+FPSgLNELJ8dAoIiv/jZW8BfwLEYnM7PVTXmjpcNUFh
	987+tpK0vTw988szvi+kii0=
X-Google-Smtp-Source: ABdhPJy1bBUC3kQy+b8sBS43Ht51BZezTqsKOJ+DxCgvr4ogpqPQb4OSQk4BGgE5O4PDzOkHZ1JOYw==
X-Received: by 2002:a65:5cc6:: with SMTP id b6mr25041998pgt.417.1607968631009;
        Mon, 14 Dec 2020 09:57:11 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:bc47:: with SMTP id t7ls9017057pjv.2.gmail; Mon, 14
 Dec 2020 09:57:10 -0800 (PST)
X-Received: by 2002:a17:90a:c910:: with SMTP id v16mr26477974pjt.198.1607968630537;
        Mon, 14 Dec 2020 09:57:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607968630; cv=pass;
        d=google.com; s=arc-20160816;
        b=OE4n8apqmiNk+B+UQ8hWrIYulVZuMoMppGhCEY1Bd9q0egsqms73PZzu0PyJThKIv2
         TMRQwm9JcYmfA6Z69LpT6/UWwEnNstFBNZsXxnKfSmxsCW14/8i3jEzVrip+R8WDxpd4
         AE7Jb/qHAVgu4SxGpSOhMbT3P2ujrJ4Voymb/oJImtRUiLCQO+eWcA/WziBHbluTskox
         Z/hCPNIAqp3RkDKntmPC397z/qWeYFUIU1RXY57+a10PHmWX/ETIDy2ERqenw0u4sPyP
         EBqEZgrJYZYimiE+4MVETTxWu6oi901ySKcv1IExVD8JWG2vhHId6x3FghCHmVS8e0Ub
         HEyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=uudqvXGh5VNURuj2qrVrApJzOEhC38nmMFyzLD92I6g=;
        b=Mw3IpiWGW3k8RGrKjTFB8hCeg6j03JEcjRaRdVhHPKJQ9MTVN9njqYY2WF+SUO4svr
         +6kJgP9kpnBmxebAgdMH60PXg+Swsq1M2p9nD6A9FVyDU5A2sFgoe3J9NBjLj9WdzUD1
         YXCDZ7+iTOMEwwWvCDRNckrLdcdr29mQfnqscuJnZPWh/qyI+5XoUUPthajx5WAIIifh
         4CutByLfNinpBrXAS8RlrSZyf7BKhA/WW3l4aw+8Ls2mdViVaPnHbsJYQQRvh1NF3Mwv
         PDc4UTseYfqp3ZTg5OTyb6w1e60RgA+MwRDcD2qbllRvwwm5Eh5xoMsHpmsdxDlFe3i4
         VhLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cadence.com header.s=proofpoint header.b=PGq5elo4;
       dkim=pass header.i=@cadence.com header.s=selector2 header.b=mcflzDYy;
       arc=pass (i=1 spf=pass spfdomain=cadence.com dkim=pass dkdomain=cadence.com dmarc=pass fromdomain=cadence.com);
       spf=pass (google.com: domain of tjoseph@cadence.com designates 208.86.201.193 as permitted sender) smtp.mailfrom=tjoseph@cadence.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cadence.com
Received: from mx0a-0014ca01.pphosted.com (mx0b-0014ca01.pphosted.com. [208.86.201.193])
        by gmr-mx.google.com with ESMTPS id e19si1465078pgv.4.2020.12.14.09.57.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 09:57:10 -0800 (PST)
Received-SPF: pass (google.com: domain of tjoseph@cadence.com designates 208.86.201.193 as permitted sender) client-ip=208.86.201.193;
Received: from pps.filterd (m0042333.ppops.net [127.0.0.1])
	by mx0b-0014ca01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 0BEHo8YA003758;
	Mon, 14 Dec 2020 09:57:02 -0800
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2176.outbound.protection.outlook.com [104.47.57.176])
	by mx0b-0014ca01.pphosted.com with ESMTP id 35ctb2pant-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Dec 2020 09:57:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ev3SIVcoJMQvrgogGIOSpDZG+YbV8AmkxLY1nHqsY+vXhYAPBBXoes7LqCKXGggzJHPiiF2lnFErnIy/813ENX+o8FksRzfJlPM/Y2pDw0Eh+esOPeMaWCGn/SxvjYGjd9b9l4bJbwPON6Cbu0ELGMXK+9Vf/WZKKM44jH0T5irv5GCMlPeVauY9b2x+ETueepWCrjsRi5HoSlHKVDvQ3bWpQ1GKWcecvizKMJzT7dfTw9PYJ3kTXmIzzwnfQFO1NTDjB+GPFMVoehIvNJEENATZzpbYTlpjKYVqs8STatKC+u3KDgCdO5lhOZSPLSTtgle/j/ywt7NHD9VQIXJbmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uudqvXGh5VNURuj2qrVrApJzOEhC38nmMFyzLD92I6g=;
 b=DtX6OqZ1gMmkghmTcF+BdDxp5jU21MULaQe7kmwX8MB17P56u+jr2fiS/eGKDgsUMLcsqiU+uKkbQQljNXbMP7YXqhgx2V/niKGdytKZ8/S3WXEoW6ZVoDaG5UYMUtusNhEwWdZOQ829qFM8QBpG49WiqCTM+cqA32nMc8jrnIXny/Maa9g3zsIHGj/PWbBGRnQ6PxMbAJKaOtppf5JbyioTmkn76EnNCJH4uXihyQzYOqaXyZ+ImMTALE+OAlHJ92TUvS/AnzuhWx5VnGcYwRhlGXYYJNj50QqAM2ctaEkJAPTw3n/MGg9QekfXin/RJPB7gNQTRLblnD72hKA0rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
Received: from MN2PR07MB6208.namprd07.prod.outlook.com (2603:10b6:208:111::32)
 by MN2PR07MB6128.namprd07.prod.outlook.com (2603:10b6:208:10e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.15; Mon, 14 Dec
 2020 17:56:59 +0000
Received: from MN2PR07MB6208.namprd07.prod.outlook.com
 ([fe80::e80a:361:a186:f317]) by MN2PR07MB6208.namprd07.prod.outlook.com
 ([fe80::e80a:361:a186:f317%5]) with mapi id 15.20.3654.017; Mon, 14 Dec 2020
 17:56:59 +0000
From: Tom Joseph <tjoseph@cadence.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
        Bjorn Helgaas
	<bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Jon Mason
	<jdmason@kudzu.us>,
        Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
	<allenbh@gmail.com>,
        Rob Herring <robh@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
Subject: RE: [PATCH v8 11/18] PCI: cadence: Implement ->msi_map_irq() ops
Thread-Topic: [PATCH v8 11/18] PCI: cadence: Implement ->msi_map_irq() ops
Thread-Index: AQHWuECdntfltqp6Jk2ERAKvH6zQcanwZJCQ
Date: Mon, 14 Dec 2020 17:56:59 +0000
Message-ID: <MN2PR07MB620832AC733463A0702A6155A1C70@MN2PR07MB6208.namprd07.prod.outlook.com>
References: <20201111153559.19050-1-kishon@ti.com>
 <20201111153559.19050-12-kishon@ti.com>
In-Reply-To: <20201111153559.19050-12-kishon@ti.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcdGpvc2VwaFxhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLWMxOWFlMjU0LTNlMzUtMTFlYi04OTNlLTUwN2I5ZDg0NGVhMlxhbWUtdGVzdFxjMTlhZTI1NS0zZTM1LTExZWItODkzZS01MDdiOWQ4NDRlYTJib2R5LnR4dCIgc3o9IjUxNiIgdD0iMTMyNTI0NDIyMTc4MDIyNjcyIiBoPSI2eGNpaFFFbk1ZWDF2NVA4QlduSEhQU1RsZEk9IiBpZD0iIiBibD0iMCIgYm89IjEiLz48L21ldGE+
x-dg-rorf: true
x-originating-ip: [185.217.253.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b730db76-6d09-4fb4-c9e5-08d8a059a777
x-ms-traffictypediagnostic: MN2PR07MB6128:
x-microsoft-antispam-prvs: <MN2PR07MB61284C1D50C1A7A6AE0CCE7DA1C70@MN2PR07MB6128.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MvVdQHrwpNHeMpVGqq+uAJC92XVghFP4JF+kdsmQxbrA9MKe8y4F9ImSf2ADkISj/fSbMv/FlGoHmqJ8ZICfsYQCCAkWvPHLFnXZ810+QZn2xHAsA5Q3aWV9RZwdGtmOVBZlTUhV+ENjj8AQTW58JYRvcKx6AF6Aybz9F/L2cUWTBVtYV19ebAvYpaya8tG2OETdXw9Id3GBPQkWJxrUVE0RFGsAykxq2R4y3JLw5CyaJZzZ/4a4YoLfKBQ1W9OF1fN1GdF7t1wez0EfBUBb0zyR1pjrAiNJGe5CTVZaOpz1T78xFKG0huXk8u1iNouaL/19M/KF3EEU1DzP2B7wO/1C+Sd4c/EzeeURwcxylPPMhB7KMJ+oHANgCMq53tGo
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR07MB6208.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(136003)(346002)(36092001)(4326008)(6506007)(64756008)(9686003)(186003)(83380400001)(33656002)(7696005)(508600001)(54906003)(2906002)(7416002)(55016002)(110136005)(66556008)(66476007)(66446008)(71200400001)(8676002)(76116006)(5660300002)(52536014)(66946007)(26005)(8936002)(4744005)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?M7k/O93dn0qG0g5+9bK33t0HKcfVqAchrg3gD4R/tByFDKPlHpIKa6zI4Dhz?=
 =?us-ascii?Q?I4i2X41WgwI5+au/9EBjAeON8stMMbAAo3clHL1hjOpg56alNnIC9GOCwRwk?=
 =?us-ascii?Q?aBD8PSn5fyCL1locMYDt/IHE5Cu8SdmQViHW/HU3nUYMmDX2ngNc6UHmi4yj?=
 =?us-ascii?Q?ibExLpZLK3gxZoHRNu/uHybiZbRt/ZjMXjWDMx7LiAT8+xEDVa/BPbfLNyCM?=
 =?us-ascii?Q?nP7i+ADzwCCuoE4wMvHVvUg8+sIbMqhBurXSZXYuQV54IaRR5K0CK99jKjXM?=
 =?us-ascii?Q?5RjB2egJsWZAnT8WJ1AxQfPQLgCrF8ErllYungktw7ea6uk/lV+YNznzhkDN?=
 =?us-ascii?Q?QdZyrAMzhcnZ3iYkMsc34yBbr4fQZ3AESbUW/v/BEzMV731qvHFWPfcLIb70?=
 =?us-ascii?Q?cod1oaUUZkcQnr6p9rxwm3PRrHAqpDdSKmR+Ob51JeHgdHrj13jammQFx8JM?=
 =?us-ascii?Q?qkAoc603sxvGd9BAMDff2mnKqqQ+mTw0fbaYG9XptfN6UDcWwHnMi8dFW+Jw?=
 =?us-ascii?Q?XFhrcdfGabRO/mcWFNYERAWXVJf+4ITiA2Ew8D3TqgAsSfWJojJBrdvMgCAM?=
 =?us-ascii?Q?U3nHkBChDI6Tl2eXJSYaOEyo0jhALSrzTx88gW/+WCWDFV4C8sEoq2xThlwH?=
 =?us-ascii?Q?rnXXGhMmYNzNommkbwRaZ3hNQMiX7SeRJr9pFhBH7v+4y+syNqGoNzAlLG3A?=
 =?us-ascii?Q?Iivsro9Zk2yz4VBl8/uAqdWPAKclv01tl7kjFtWgTWPyl9OC4yK1RpFHk/Vc?=
 =?us-ascii?Q?SAjovS2II7VPsNuTC0sgeDZzG68vStDF8p98cUThE91cDBF7+Fc6VwB4fYB2?=
 =?us-ascii?Q?rs+GeVyQdwvSl/++M2y4SmT6H7fGPgx4EdkUCPSUwjBk/n+k4i6hH/6wT7bm?=
 =?us-ascii?Q?ASNkN9/0u+BE963/9v+hiTNbuywIxbumLTfMJvH1ASh2hyXe4W8hbRPKHCjc?=
 =?us-ascii?Q?AQwkqba7gskbNbzCEQXpf7joHbSa39i8nsaBthl+8go=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR07MB6208.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b730db76-6d09-4fb4-c9e5-08d8a059a777
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2020 17:56:59.3874
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VG+dzwYwRnz4QymAwWifL/KUjz/+Q08y4SBRAN4WBoVcRMe8PfgQS2AW6nKt9b4rzuoMs7EKkOnjw/HAqmyLE5J7uh+HO/rzTvAXuK1HqX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR07MB6128
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2020-12-14_09:2020-12-11,2020-12-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check score=0 malwarescore=0
 clxscore=1011 lowpriorityscore=0 priorityscore=1501 spamscore=0
 phishscore=0 impostorscore=0 adultscore=0 bulkscore=0 mlxscore=0
 mlxlogscore=856 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2012140120
X-Original-Sender: tjoseph@cadence.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cadence.com header.s=proofpoint header.b=PGq5elo4;       dkim=pass
 header.i=@cadence.com header.s=selector2 header.b=mcflzDYy;       arc=pass
 (i=1 spf=pass spfdomain=cadence.com dkim=pass dkdomain=cadence.com dmarc=pass
 fromdomain=cadence.com);       spf=pass (google.com: domain of
 tjoseph@cadence.com designates 208.86.201.193 as permitted sender)
 smtp.mailfrom=tjoseph@cadence.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cadence.com
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
> From: Kishon Vijay Abraham I <kishon@ti.com>
> 
> Implement ->msi_map_irq() ops in order to map physical address to
> MSI address and return MSI data.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../pci/controller/cadence/pcie-cadence-ep.c  | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 

Reviewed-by: Tom Joseph <tjoseph@cadence.com>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/MN2PR07MB620832AC733463A0702A6155A1C70%40MN2PR07MB6208.namprd07.prod.outlook.com.
