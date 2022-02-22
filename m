Return-Path: <linux-ntb+bncBC47F5EI6IFBBNM42SIAMGQECYXJPEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3FB4BFE6F
	for <lists+linux-ntb@lfdr.de>; Tue, 22 Feb 2022 17:24:23 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id c3-20020a4a8f83000000b0031cb521ef64sf858470ooj.8
        for <lists+linux-ntb@lfdr.de>; Tue, 22 Feb 2022 08:24:23 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1645547062; cv=pass;
        d=google.com; s=arc-20160816;
        b=o6tIHdBc21rWZiti07axLCUt+szGm9lOUV5lnSC1/JqjErEZNIgS9w4glT1hEVF6xT
         Q6tL3cLXvuYHBTMqtOWC/UWW4hUnfgWdDOI9MET2g9Asc/EhiZePfDuoKf2In8U14ZFV
         n/G9Sap+BsymOcQb/YNXHf5wWkLGCy8qHSZp6w5EQACu2kizEBkG12BrVCxDiZxjtaQL
         biPjnz7zXD2FIXQTwT0a6Y/yXS8cOA+33epUO75rKjTdWSokeDWOzsotZRGiThh9KnJw
         n7WWNbciLHyk9xS/spblFgLJ/lE+recEmwjEeB6tpJe9gHo3ADkjDwsxQR7SZHHSWt8y
         +r5g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vQzbt0Tj/bQBcSMhTP6nQM8MTofG8hdRq8E+TW5Rjfk=;
        b=Ehn/zLE+766/qTD9RmC7p699wcBO4D0HXLGuk3nkKMXYtiXXfHBlCARaj/9cUbbcL9
         yn6cQaaz2u5W084Y1SY8O1DEAlXILmL298MBsA5O5LPzhGix5kXdhM4K/S2rjGDj7MF0
         Gvg8EoNFtOqKTtADQW9gGlchBmgc5yAfQt19X/G6cM5UKRpuOQyLrEg4/6k7bVoW2tQV
         5wQtsL81mZ4he+zBUyrG2h5hrQZqNF9tfCp5co/eDADIWNkzhenu2zag6QE/vkXzPv4l
         EmuAOCcWlAPfOqKtneI0Tc9dCJnBwKSn6LfLl4hjfRy4a4PHNegF88PJjF4uUY502yxD
         2wXQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=JLok11Ey;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::62c as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vQzbt0Tj/bQBcSMhTP6nQM8MTofG8hdRq8E+TW5Rjfk=;
        b=K6Do6xJuFRxciIJipZXfnVrvP/YVKyuY1H1bWIBA1VvfSRhpGG5GF+fiLVa0WqUFsE
         HXo9MN0GQSn5llK42kMtAx6AWAvUavejK/3rrGvJF/KzJ9AUyTD3mkJmTKAdwxWX1jKO
         NzXye4KRg/xM69WTdYk7104/WpW+cpLvaCpDBA2WtzoHDdFsMUyLp7X2fFNQcBZE6oon
         cPDvbO/ak7zDxRx48pcUMxQOtJ/PLx3YZK5gzqFbmZw+unXdM33dCKn4gcs1nDiCHFS6
         7ZEH5CEx4OmYtiCtUg11PzXAQGG8orO88bZ7G1+V9i2yD6kfIyYhVxtj4MB2YeD+Kh78
         3i0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vQzbt0Tj/bQBcSMhTP6nQM8MTofG8hdRq8E+TW5Rjfk=;
        b=ceqGcwVT/HDfOj4L8iVI2+OxZwkEdNCfBZJGw74lnk85uKbg7i8EupTCS0/5kGQMzq
         7XsOhgZ/GfHiL/Xk+/m3VGdJ8S/so5iJYluoIHfuyaSZewsiYwmrwhevV11+HMS4veLn
         nJZDhBblwU/lvSzRqq22G8vZhDsQnOW86ydYbE6BvNs2SiDdhhcXvO0/ad17Xoq0MwdO
         Nv64aDO4AhdFUvSRh1DhHqfcdeEd/EEcbXfds3s0fp5tREHI7RzfP7sD4+xsR3u8hxG/
         +s2rUTarkpZ2EB/JTzagRd+26Ep90fvplpZad2C3GNnOr//VOMKI0mRbCnbvhz0eADFO
         +Xkw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5306uW5W160/+CVvIkODJ2IfaDAgm8SlFAgvxTRI2cwH+vhqM1PT
	bmdSEOi70qG+pnCSD/uOW5k=
X-Google-Smtp-Source: ABdhPJxWp7t+uxIno5H7gH48/ZRC73MNneZ2FVHvoKkjcYnQCZu/noQw142jugvcTVBvz2D4AXc2ow==
X-Received: by 2002:a9d:784b:0:b0:5ad:52fd:5c24 with SMTP id c11-20020a9d784b000000b005ad52fd5c24mr6250499otm.1.1645547062033;
        Tue, 22 Feb 2022 08:24:22 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:2706:b0:5ac:5163:c230 with SMTP id
 j6-20020a056830270600b005ac5163c230ls2268735otu.8.gmail; Tue, 22 Feb 2022
 08:24:21 -0800 (PST)
X-Received: by 2002:a05:6830:401b:b0:5af:157b:6408 with SMTP id h27-20020a056830401b00b005af157b6408mr4280651ots.300.1645547061739;
        Tue, 22 Feb 2022 08:24:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645547061; cv=pass;
        d=google.com; s=arc-20160816;
        b=OIcJH6FdVqxVsd8v+ZEQtaM3vFg/A3KGLIbkIQsFNYu0LI7Q/KlR2ocOyCQ0osQm3m
         vdIX/w+5lsIFXLMIOSa76xISEuEp+3yTV6EJ0EnfFZvEDnH6EepeEd7vKoUH9iBhpdyD
         Q+d98qDuNlyfw7KPWdZR1vMIBBQZ2AaJC8j5iO9FJxr7C2VQQri9MHxtGauYKn3Ep/lm
         p40HV6HGvtxU7QXP6Han62AwJ8Yg36InNSZZGU/6+HhhFYmunUO0QP5L25X4x2+v+fMy
         Ho4zPlzV4BWIEjbJOqmuxPE2Eau2p6azE9p6n4rfdq0PAfZDyot0KA21lI92BZRuD7i4
         JkNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1RgWblfR/C8f+Z8AehLHL9Zq+OOFwooZ/LpJ5Pds6d0=;
        b=EoQ94hDyqosH4nCyMB6Qvht2dfIVcct2iF08CXndan47iUYbUCI/lsX9mYFpOkGLTw
         DhF3Sr1HxjST2HE7qYZnu8IGhozRWQjQA6Qc5gKo55YyeRkbjjRrwci12PRCTCVfKN6y
         +Z1cpMtbebgn0/yIohGtNUbF08hyEBPsmFgUe8J/ZOi6dku4gbMVDIka1bsKcM59EuQs
         zPRLg8fOVql25gwSY9JAtAyqAhU+LYGcYOwgK7MG3H1gvslQnnQ0qwh0Wz3/z5cpDzda
         XzF2gQCf5kYL20hgkmWKGfBOLfo1IYnTA4zSGWrbnYSmraoPGgeBicvws/czdkiGoeC/
         RwEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=JLok11Ey;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::62c as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-am5eur03on062c.outbound.protection.outlook.com. [2a01:111:f400:fe08::62c])
        by gmr-mx.google.com with ESMTPS id x47si1344754ott.4.2022.02.22.08.24.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Feb 2022 08:24:21 -0800 (PST)
Received-SPF: pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::62c as permitted sender) client-ip=2a01:111:f400:fe08::62c;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dJKpxg4Ss6VtmVzuY1PAqdtGbWeNFirjElT2PlqfDS8PX8bwm1nvriDUZ3cg+OKqMSVIkoCA7LGXg+C62JtrSc6bVejmnbxES4ezL9IzA3t4rnd+3JmsMZllwHouf07EFQ0QXJUF0+HnTHYRxJ7IraFZUgDZvXZzMWhFa9/N4KtlffOsRMQi6vodlMWj2X/nRZMPYLZ8EgmQN6F+mjV0GnXCecV3F8ZK2vc9t2XR20t5RDmP1/CTqhDzX/DCJScs3CsEprAHAbq00OnXT4fam3eMQ20VJ35jZn8io6XW9fDE0LeDrLRKATO/767a0LNoAj7qtcqHolNi6aC0nA7MFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1RgWblfR/C8f+Z8AehLHL9Zq+OOFwooZ/LpJ5Pds6d0=;
 b=X5AsZQ145GIuHD1IYVUwxPXOkNT7ypBMT8z7+DDW2c5G169A6rYg6IbC3IoqcQBp2rU4n/XlV/t3FoTSC1qIRtilFxTBH2ovRB57s+elG91V+kFvK40hNHYjHatnYLHWs0zMpnRD+wJpzC+J3R3GRfW6erNGMvo7Bmz6G33x7E/huitGzmJ5UPXsRubxbeYcYVz5s2+avHXBXFB6NIvU5o/4TkJ4GsQrpi5dd66CIWetihbRdBPc2IK+g5G3TKznCzNm1INW8x0xcUZ6LoBRc+MBg0sAAh1NSyFKaficmPCWfr4F821fLBZYJ3ul+ebcKjOn5vgzAng2IoMQztCkdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from PAXPR04MB9186.eurprd04.prod.outlook.com (2603:10a6:102:232::18)
 by DBBPR04MB7899.eurprd04.prod.outlook.com (2603:10a6:10:1e1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.27; Tue, 22 Feb
 2022 16:24:19 +0000
Received: from PAXPR04MB9186.eurprd04.prod.outlook.com
 ([fe80::9ce4:9be4:64f8:9c6]) by PAXPR04MB9186.eurprd04.prod.outlook.com
 ([fe80::9ce4:9be4:64f8:9c6%6]) with mapi id 15.20.4995.027; Tue, 22 Feb 2022
 16:24:19 +0000
From: Frank Li <Frank.Li@nxp.com>
To: helgaas@kernel.org,
	kishon@ti.com,
	lorenzo.pieralisi@arm.com,
	kw@linux.com,
	jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com,
	lznuaa@gmail.com,
	hongxing.zhu@nxp.com,
	jdmason@kudzu.us,
	dave.jiang@intel.com,
	allenbh@gmail.com
Cc: linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org
Subject: [PATCH v2 1/4] PCI: designware-ep: Allow pci_epc_set_bar() update inbound map address
Date: Tue, 22 Feb 2022 10:23:52 -0600
Message-Id: <20220222162355.32369-2-Frank.Li@nxp.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20220222162355.32369-1-Frank.Li@nxp.com>
References: <20220222162355.32369-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SJ0PR13CA0190.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::15) To PAXPR04MB9186.eurprd04.prod.outlook.com
 (2603:10a6:102:232::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7fc12a77-14f0-4a68-7560-08d9f61fc6c4
X-MS-TrafficTypeDiagnostic: DBBPR04MB7899:EE_
X-Microsoft-Antispam-PRVS: <DBBPR04MB7899450093FFB73AF20445C9883B9@DBBPR04MB7899.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QSlfid2WtZQ78erVvz3G/KCHAaae21MpDBSN3AKbvkMEP/NaSTn8/VNEHQ8MGu7U1WrHzE4TB1MdxXNR580EmrChpiGPmbPmcYfrYAUHlfqHfcBX5SllNwYRVVhKorrzFZWTjbPuugj8w3s1YJGfPUg2AQhIbpNbU4H91GKz7BFamgmTiXWCwSxRSpAKzNe0Sq66SM3nG0IEOlYCQODxuqaYmkJ7uCqWinoCVSj8BLeOL6f25nzICrqPCW9+TjInejabCeWSp+z4oLAmDpio5+stjpigX9SQZNmClsf5hH0cTe/fJXdLwU8o9C+8HmyyNH5Nhpy+FgqSttwha75Ye4NI37/Bu8ATyszc1vOq3L8AneZuoFmPFhksnUScxhLzi0TiU1LLK5fSseYoChJstftfmJJmcEbJcncFQQZvifyDN7XeOtYy1cvpoZUPBuwntKpGrvag4GiDOSrDCruVd9GCw2b/UtROpwAlFsF1r1jprNxRxKROE7bPRDdIVUFWiBabO/0qP7DSHxNjINRqOOT30dmQXh+/MXnM3CWpXQB2ic3dKMWewyoGEWs0kNdk/z+sfeEv2U3boTNBERVPqM5i2RFOjGRm2qcudTlPEI8cgpSBPLJLOWUvGiSX6yTcecOZvrLYR5Bj9IHs9j5Zqvnb7dT4q2mbF177OIhL2Wh5ATW/kuIh/exFo6KLwXrigFiv/xfz/5y3vD2fLebx0HX6Kj0/9s2QPtg5dlf9TV4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9186.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66946007)(66556008)(83380400001)(508600001)(4326008)(36756003)(8676002)(66476007)(6486002)(52116002)(6666004)(6506007)(5660300002)(15650500001)(26005)(1076003)(186003)(86362001)(8936002)(316002)(7416002)(2616005)(38350700002)(6512007)(38100700002)(921005)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+RpC4rsb86wMxRaJUeZDrDIBLrEKW0ig3xruzswmLH3rd0kXN0d7YLAy3uDL?=
 =?us-ascii?Q?Xmd1cEWKcbMJ7AMIm6YUbjQpOPN0zY7bURoalyiOjiecM1s+geVR7Dwsk68D?=
 =?us-ascii?Q?NHPPiOWlcIQBsxcJCdnXJgbHTuqpjKykNtqfKpWbMSo38LL8ZjENpHkq9l19?=
 =?us-ascii?Q?ybUlRFXOpEsnwD5gEvfcH2YYYkFpv8J3mpfRcEa/AfVd883CTvgVJPx6JgoK?=
 =?us-ascii?Q?6+a789XL4rM1zm5Nh+PdfJRXUTnvvW945pMFDF+mUlBSC8nfA+VaiuVrgq8v?=
 =?us-ascii?Q?y1GlpTPtC2JDlvm9P0QReV/SLEcSffYc10hbnWTuC2ob0AvurlTqbk2+/5Kt?=
 =?us-ascii?Q?6X3ypzALcyt28d7X7I3aEMgP+c935DHASwo0pGUAjZobhcxOFagEUSiYZbTj?=
 =?us-ascii?Q?TDxE3+4jsshKhwmgQvOaVuQ44GrKVB7wwPHG+cdyt5pouRDlW9l2OxgNqnpH?=
 =?us-ascii?Q?So8P1FN9w3l1iV3/+0D1X5xMeE2xiG5n/tcfBzCphdZVyyOefCKMwkMZQbPF?=
 =?us-ascii?Q?cEzyBkPsTQgASq1OuVJmD2Hm/xcA0qsoLx0MYgusdYd+yz/u4gZMPEWykqv3?=
 =?us-ascii?Q?RKySUdJHG0a83vpXpgt+T6MrKCLFzuC6T/DDiRLhszw0e7KbkfZmkaTuyJQq?=
 =?us-ascii?Q?OHqfG6X+sLRc51DeusYU0mRPhOdzPNVJxMfXJGhm2xtXR+RUlu5pDhmiBKDX?=
 =?us-ascii?Q?kQassyaNqfzx7LhJuDt/DeEOBTA3BaUVwpowOJeqcefs8bp+OaTMeHBq3Ars?=
 =?us-ascii?Q?BFMgaBjFwWz9NpLxcKKeeLDze3nsATWZgaZTMwY/NBzIQNuuuJDPHh3R5lnK?=
 =?us-ascii?Q?RFxkMiJWXIXOy6scXRLAm82E2cB30Mzp8l3wdcM6rlTQ/KghJksmlvYG0zX4?=
 =?us-ascii?Q?wg2NDsla3YAB+t20d6eSE080bp9fMFvfB1gIAQvYs1+cguNL9PZ828TEuJO0?=
 =?us-ascii?Q?CScia/MAjYD6GuP63uwjMHVPPi50ZF0yRhlPePQtK5U+I4rH7vXOPNwa9fTz?=
 =?us-ascii?Q?8D3wq2jttt/JDkL1zCMlhngC5UTtk19tWIt0Ts7PEwcE8BEqOYjkHMjJ7uaE?=
 =?us-ascii?Q?rLy4m30WA45jvYHgucgIbumQLnZz5w0RhcWNsV7LUGHV6ObIIDeR7mH/XMxR?=
 =?us-ascii?Q?0MiyZ33wj5g0wVtMKnmntrEBODxYMidV+KrpOlNiv7VOgKmxh0ZQze5VaVS3?=
 =?us-ascii?Q?A031F0XDmUlGVqLT4qoUyfeIPsQYXctRayzJm+r6Au3Nm7A7jpDgTJ38feAO?=
 =?us-ascii?Q?oDJCXgh7xsrDvWMIfQ+R3OnhAV6FLm3B/lEd7BptGpXTDjDvzacla2SDi2yK?=
 =?us-ascii?Q?Mqx8qruUGsTd++i1TAgwvpqSI9v2MA1gXGpWWCCPtOHbjuWrRGQDKnhyA6FF?=
 =?us-ascii?Q?0Zcb97DEYWbmKMACY5dpI+XEp9TEF7hmpTKzOWFt29clyK7zlj6tMKchO/eS?=
 =?us-ascii?Q?COV+MwXtngiDZyYgmIFlHqv4vZ0Bs2elxzYBaRFd4UoH1k4Tw6uGUoK/SVXh?=
 =?us-ascii?Q?fEbT0w21gQSd86diIoS5xjn7cQ0KaxYUwN4xVPDsxkV0R0m6UPLnrD7oXvfS?=
 =?us-ascii?Q?tg1pSYt0VcM5DHK9UDy7tL9G3W5g+g0FmusiWAVX0Tg/ezywNS1kEYP7NHZK?=
 =?us-ascii?Q?75nAJdZ90o8OfncvbSauJDs=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fc12a77-14f0-4a68-7560-08d9f61fc6c4
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9186.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2022 16:24:19.1162
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qAYcSE8KtiKEFhejf3vBCrjczBDIeAInXbqeBSoZ+7Cqe1O7zWn3SjCgX5Nd5trU5wRMyrB8f+boiYbV8Hz2wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7899
X-Original-Sender: frank.li@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=JLok11Ey;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of frank.li@nxp.com
 designates 2a01:111:f400:fe08::62c as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
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

ntb_mw_set_trans() will set memory map window after endpoint function
driver bind. The inbound map address need be updated dynamically when
using NTB by PCIe Root Port and PCIe Endpoint connection.

Checking if iatu already assigned to the BAR, if yes, using assigned iatu
number to update inbound address map and skip set BAR's register.

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---

Change from V1:
 - improve commit message

 drivers/pci/controller/dwc/pcie-designware-ep.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index 998b698f40858..cad5d9ea7cc6c 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -161,7 +161,11 @@ static int dw_pcie_ep_inbound_atu(struct dw_pcie_ep *ep, u8 func_no,
 	u32 free_win;
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 
-	free_win = find_first_zero_bit(ep->ib_window_map, pci->num_ib_windows);
+	if (!ep->bar_to_atu[bar])
+		free_win = find_first_zero_bit(ep->ib_window_map, pci->num_ib_windows);
+	else
+		free_win = ep->bar_to_atu[bar];
+
 	if (free_win >= pci->num_ib_windows) {
 		dev_err(pci->dev, "No free inbound window\n");
 		return -EINVAL;
@@ -215,6 +219,7 @@ static void dw_pcie_ep_clear_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 	dw_pcie_disable_atu(pci, atu_index, DW_PCIE_REGION_INBOUND);
 	clear_bit(atu_index, ep->ib_window_map);
 	ep->epf_bar[bar] = NULL;
+	ep->bar_to_atu[bar] = 0;
 }
 
 static int dw_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
@@ -244,6 +249,9 @@ static int dw_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 	if (ret)
 		return ret;
 
+	if (ep->epf_bar[bar])
+		return 0;
+
 	dw_pcie_dbi_ro_wr_en(pci);
 
 	dw_pcie_writel_dbi2(pci, reg, lower_32_bits(size - 1));
-- 
2.24.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20220222162355.32369-2-Frank.Li%40nxp.com.
