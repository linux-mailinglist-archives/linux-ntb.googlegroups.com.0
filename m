Return-Path: <linux-ntb+bncBCHPZHMXUEARBWN56GGQMGQESS56X3Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD33478846
	for <lists+linux-ntb@lfdr.de>; Fri, 17 Dec 2021 10:56:43 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id k6-20020a0566022d8600b005e6ff1b6bbasf1067174iow.8
        for <lists+linux-ntb@lfdr.de>; Fri, 17 Dec 2021 01:56:43 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639735002; cv=pass;
        d=google.com; s=arc-20160816;
        b=v82DVH3kgUYXWMk7CM/OEpmp8oQD87LBqOK+wO7DVKEJb2uoAOYwLgybKZoFOVgcL0
         nZwgOIQ4PsO5pv8UtRooDitOdZMBJ3OjoXxE61TGMrw5JPrWTJuEDpresUDfX8K/xS6d
         VB+vc9IrheZY0Vu4MKsfRirLxzCd2g+LqO+NSC6DhEiYytgH9uHoBqxk+MqQe4B88Lek
         K0YBwlH4RtRwO0eJUFLOw2dpZD3eIao8rVB6nK3WRc+WIxlLJVASg/teTqko8ljUW6Pf
         g7M3TyIZeekn/S+YSSBO+tfzybfauTFEcYHRgmOnZYAb/loRdnHu/EqY4aqdXhzvH9UB
         4wzA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=GR15xbbDJ1jinmSwF5oRbLpQfF6PbexlwdzrZKcYg0U=;
        b=OJ/docfZ5hddsOoNz2Q2o/CyZscGPcN9sFi5wUcYoDTOh0l+eLXBMxDbueQUxN/4ds
         WxhmX9JDBZLjoiS2Qrp8xNmKkUEsKmgrj6Du864swmx9kxvSfVTM5MnEdXlMu1Mugx/8
         UwvR1Ogvqljox0cWfw7Qc37kDIbW0y2H+aum+C8JS+7i9QFnyOF16D0RHuCAulJDw7GG
         BYKMvjcxK0VpDwHYtmi/w/EmTXKXeTHINH1Y9CuOVzB4LdyXqaglbk5dRmS4zAX7lDKO
         h+5DxbnPDh48ee6/goz12p1updJYU9aJHGR+BH/xohIksarJI8aWogCcQOW+mwNUpDx2
         39eg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b=aMEvL2d5;
       arc=pass (i=1 spf=pass spfdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of sanju.mehta@amd.com designates 40.107.95.82 as permitted sender) smtp.mailfrom=Sanju.Mehta@amd.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GR15xbbDJ1jinmSwF5oRbLpQfF6PbexlwdzrZKcYg0U=;
        b=X3l7GvKpx8UdWNrbTmZYRe2f29RPZre38cGMrfdqlD5xHypR6PErhYJcAwJaLmL2bA
         DvGkQ6ngi8t5sH0Tp8FGqpG5ZmLvdB7qnWyAIzQg+RxZjuW9gpcc+fy+gDQEXJODR2uS
         jjKRZTQ5RiM53o/SvxSa/FX/hp/+CNnJ3b3PuEdkyg2EYRH2awUCJ72UR66KsWajrpJi
         SnFF8fkEnWl9MHxvQV5rb4VugfrqFeNcBPl0sgzDOZV64X2nsiyDB/iJkHphje7y0pQc
         bYhaE2LxDLDH1FbaqcclJ2R7pyOfuuy+PKCRi3ZNCcxJyiwD/cywm4voqpudP2LrgD45
         g1rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GR15xbbDJ1jinmSwF5oRbLpQfF6PbexlwdzrZKcYg0U=;
        b=2CqIKPXW+mI9nyAuaKr/TAPYc9zvEF72eapQMdZgxplOns5cEDu+MpjPR5p0iXLs7+
         4GYoOjGBP6UcR+bNJfKt2UoWswG7Vbvu5LnNvG7hs7KTTL/Ni8AppnfprzDAM5OY7kBT
         LBxOl+uzzqeD6Gxwmc1PeFQnyUNmTIi56I4RWYX43wuRS58W9EHudbm2fusH++tmVqSk
         io36Bu+Uqa/fFjR9E4z2bVPU3NLkbvZxt0KypqOMKgE3uHjeqjWdF+znfd8Za9m7wBTK
         gSwZxqLAWK3HApPbL4TGXJdx7xo1IFJV73QzZNpgEc5nTwGyDnTWqOD1qWYHPHo4zLEH
         GHQw==
X-Gm-Message-State: AOAM530GYgQ0ZURm2g6GH1eT8id/rdiEcxHCoylu0z1hSw793Q/1XNbj
	4zWvWNBH3RC69Um1oVgMkyM=
X-Google-Smtp-Source: ABdhPJzRqlv6qkH2mRmF7ZWNybmkF7kFkGN2oFH8+d/Anpvaah++7He879o+po66DKT6tjHJUY3D0Q==
X-Received: by 2002:a05:6e02:b4a:: with SMTP id f10mr1009455ilu.281.1639735002025;
        Fri, 17 Dec 2021 01:56:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:1a84:: with SMTP id k4ls1348644ilv.4.gmail; Fri, 17
 Dec 2021 01:56:41 -0800 (PST)
X-Received: by 2002:a05:6e02:1212:: with SMTP id a18mr966836ilq.165.1639735001670;
        Fri, 17 Dec 2021 01:56:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639735001; cv=pass;
        d=google.com; s=arc-20160816;
        b=sD/bmCj3WObRL8YYvJ1ZTAs6PLz+0imNgIcTHkUF1lsjsjGeBEYunyAW9QAhShpptH
         3sQxx1aNLyiSAX9FI3rF2aCC3Aewpc8dJRxgVPzMrd4v21Dkj1WpCQw/XcLKblw1mWjh
         NziNJvpvAraRLZyrs3Q6g8i5Z6g91mYv/b/vkzwYioxICxPjpOt+sbPn7Y7A7bCX3xGD
         OC7UeJYNNUZjiFx7LHmWVe1xHgdp+2uC6kO0foQZ+pi/iIZ0Xh9smvzPJW0cxIddvZ9H
         wtU1+pzuvg+It1L/staJ6Lf20P1D0TOhbbx1J+TAxVPJWhNqWxuJkdcJeWmB9O5Pjit+
         Pt7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZybGgRaNDjmTu26//9eDFA9G2SdOQAMHYsXqj8Zy7os=;
        b=0wkiWZgCqU2OwVyllx1U1zt2XPeu0GFRME3IyhEEiYolFOpY30uCMY/FBqUz6OJ0JI
         KMMRzVcNhfPlLeg2QEBY2UPQY/ytjmMze1OT19NI5mu4okHriA87O9bIv+GXaCrYwpjF
         VipcHWVCjCggdCC8DeK5ezeGuWW6J7IJKEQ0zFPDBlayr+t6Te4fnglpzUYu7AZL/6iC
         WZQWDsIptwG8O2ifxc0Rc0T6q/B4uxs98O4Q8nxqiJOQM5zZNLe3pKkG4zKLIZ3KgsOM
         wRBdWmltnijoZkW3jZhWbUb1Zph8YVsE3owbAt4+6TFYcFpr3YAmENCCDPcf0lu4VSRL
         VjtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amd.com header.s=selector1 header.b=aMEvL2d5;
       arc=pass (i=1 spf=pass spfdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=pass (google.com: domain of sanju.mehta@amd.com designates 40.107.95.82 as permitted sender) smtp.mailfrom=Sanju.Mehta@amd.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amd.com
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam07on2082.outbound.protection.outlook.com. [40.107.95.82])
        by gmr-mx.google.com with ESMTPS id 8926c6da1cb9f-2faa6b53fbfsi1061383173.1.2021.12.17.01.56.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Dec 2021 01:56:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sanju.mehta@amd.com designates 40.107.95.82 as permitted sender) client-ip=40.107.95.82;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CPHX7s/GXdcp9QRbkCBlWfdhi9lRmofxjO+sAKr8c1o+gkb53XZH1lvwp6OlYupD8aTFkbC7PgJ6avU+hGWYBa6dLBQkgq3pQKSO7ce13LH4Bz+0hfaMXk8iRFbupidlHERpVQGZi6ST0Ii6hmRZj+Ry+ctsnE88J3HoZ8V0bLmt5LB5yQ+gnl8lVGMJxQVMSFa0WZmsU1e/69wvTdHESpHYr70eof4xRlpVuEsfa8UCmvYRgHDyhg2vz19xotXLqMW/sYVBcPEuH83RHPWRiajDsha/vd9aQqv9fENvBYtUpgX92OXXbGOxDCn5t5ikuweKYES6oZDLuyUk0bhu1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZybGgRaNDjmTu26//9eDFA9G2SdOQAMHYsXqj8Zy7os=;
 b=P+MjIyqRwjftpNhbLvM1LuYddmAO63AGdVxUa674gmUkf19OxJg3vxgKF+IQS0UzdMN50sIjKdbVktWuyKblzZmZ+iCUgJmGksgbMuyfYZQu5uiJW6oRpHTD+ts15mz99NIOhrMB81JzF1g4TsB0v8Sh/XMtdUxTOnRGdHXI+uwhHFACoLVPdSLYYS6oQOlE4ILOOugJdFketq/Pdo3c3GjOZif7milcjaY8RKljI1Ngg06w131k8yDeZ/1T4L1rXq//AnG4laq64dWKLl+ZfFnMCOxktmqnYEfV+HvASmPDb+TLVsAhImnAJZKj46KwCOVlcms2thBiffa0Qf2nQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kudzu.us smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
Received: from DM5PR04CA0025.namprd04.prod.outlook.com (2603:10b6:3:12b::11)
 by BYAPR12MB3031.namprd12.prod.outlook.com (2603:10b6:a03:d8::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.14; Fri, 17 Dec
 2021 09:56:39 +0000
Received: from DM6NAM11FT060.eop-nam11.prod.protection.outlook.com
 (2603:10b6:3:12b:cafe::40) by DM5PR04CA0025.outlook.office365.com
 (2603:10b6:3:12b::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.16 via Frontend
 Transport; Fri, 17 Dec 2021 09:56:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com;
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 DM6NAM11FT060.mail.protection.outlook.com (10.13.173.63) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4801.14 via Frontend Transport; Fri, 17 Dec 2021 09:56:38 +0000
Received: from sanjuamdntb2.amd.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17; Fri, 17 Dec
 2021 03:56:31 -0600
From: "'Sanjay R Mehta' via linux-ntb" <linux-ntb@googlegroups.com>
To: <jdmason@kudzu.us>, <dave.jiang@intel.com>, <allenbh@gmail.com>,
	<logang@deltatee.com>
CC: <linux-ntb@googlegroups.com>, <linux-kernel@vger.kernel.org>, "Sanjay R
 Mehta" <sanju.mehta@amd.com>
Subject: [PATCH] ntb_hw_amd: Add NTB PCI ID for new gen CPU
Date: Fri, 17 Dec 2021 03:56:20 -0600
Message-ID: <1639734980-9748-1-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB03.amd.com
 (10.181.40.144)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 307850b6-f6ee-4772-1ec1-08d9c14384d7
X-MS-TrafficTypeDiagnostic: BYAPR12MB3031:EE_
X-Microsoft-Antispam-PRVS: <BYAPR12MB3031DD50B35E2D8CF482FB88E5789@BYAPR12MB3031.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VwMHXirmIoYFhRBy1bkd+2f+BL038zq0UChT19megutovfNcJXMipc+CoWmqFzaqaqjPmHwxtLAwfKU5ItY+WDfB074lS1EWHBBu7btUpCzmtfKzcWolcws1TyH672CYphaJ0pUTIbvaWbH6+19uBc+jUkvK4DbpQvp4/BojesiYUVe88VFfJIGBC9JWufvM0VpQ4csvmMFRGLKtMcRrT081K1FzjPyQTD9mGeatXtYie/pYpW/G1fVjWVWvFbKOsXZhNBDiuXObf7c1FxSn558M9eVSidBKKBM7DOsVcR3eMlUGa6AScMpLnxqq9r1tdqqGb3P02c8AWZZMQznAOThDLMqHJQcU3sn6HP6PbkqQATREN2T83LaUCVxdvJiXAeWOcJLcCOHTfhKCguwgsV7uwA9uhtJt+3ya+zoPF53C7wkYriwb+LsjLc24y7os57kzmjHjmMhTQ1N18MU2tkj3PlaD+7jBvfd8QEhLs3lLs7bnNJM8PdECKBYrP9pE3gQj9wvwJa30GhfdBPWQMdRflkkHK1L6p2uSeBhjuNic/tLNM/OxavjcglDdsypfcHnx6CR1/CNsMHjZPNvgJlSCyjC0vrfa8vPfxeaR6F6STHDeDo857z/+gPKTqELKWmWEO50dympTqmWtY7Fcn9BZG13ZCZkMS6wovWe+YqJodtUMnUh/N3K3ejQVrAmr+ijCQNHGIAc/4vlRQQvhrzOGoEnXGhS8BJuAQvQhz4Uqf2DLaugVCsVdoBEBI0+r9oOZhdhBb/Bq2jF4gAJnnG33aqwBOXNfHM2U+y0McZE=
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(40470700001)(54906003)(2616005)(508600001)(40460700001)(336012)(36860700001)(5660300002)(186003)(26005)(16526019)(8936002)(8676002)(7696005)(4744005)(86362001)(426003)(47076005)(70586007)(70206006)(356005)(82310400004)(36756003)(6666004)(81166007)(110136005)(2906002)(316002)(4326008)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2021 09:56:38.4427
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 307850b6-f6ee-4772-1ec1-08d9c14384d7
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT060.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3031
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amd.com header.s=selector1 header.b=aMEvL2d5;       arc=pass (i=1
 spf=pass spfdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=pass
 (google.com: domain of sanju.mehta@amd.com designates 40.107.95.82 as
 permitted sender) smtp.mailfrom=Sanju.Mehta@amd.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=amd.com
X-Original-From: Sanjay R Mehta <sanju.mehta@amd.com>
Reply-To: Sanjay R Mehta <sanju.mehta@amd.com>
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

Add NTB support for new generation of processor

Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 87847c3..04550b1 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -1321,6 +1321,8 @@ static const struct ntb_dev_data dev_data[] = {
 static const struct pci_device_id amd_ntb_pci_tbl[] = {
 	{ PCI_VDEVICE(AMD, 0x145b), (kernel_ulong_t)&dev_data[0] },
 	{ PCI_VDEVICE(AMD, 0x148b), (kernel_ulong_t)&dev_data[1] },
+	{ PCI_VDEVICE(AMD, 0x14c0), (kernel_ulong_t)&dev_data[1] },
+	{ PCI_VDEVICE(AMD, 0x14c3), (kernel_ulong_t)&dev_data[1] },
 	{ PCI_VDEVICE(HYGON, 0x145b), (kernel_ulong_t)&dev_data[0] },
 	{ 0, }
 };
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1639734980-9748-1-git-send-email-sanju.mehta%40amd.com.
