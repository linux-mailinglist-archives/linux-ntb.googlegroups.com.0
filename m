Return-Path: <linux-ntb+bncBAABBFPA7HVQKGQESPXN2DA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 44151B310E
	for <lists+linux-ntb@lfdr.de>; Sun, 15 Sep 2019 19:08:39 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id 30sf3877807pgt.1
        for <lists+linux-ntb@lfdr.de>; Sun, 15 Sep 2019 10:08:39 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1568567318; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHCVxLgMm+0KeAI6zim7GFH0A15KpojLtswbE76bXTUNbu0YzqXMgAZNJuMn/9SS4H
         2BKMj634PrylK9AIw+kp9Yp5uZp2x/k9eIVgfd/T0MxXnzFwOVqPOvW+r04kheQZVqC0
         XZDC8s5s1BAMjT3RzcPB/otYRxzdPka44Wd48HwCdYRYeScFygpXqPpTGJIa6v/6iwZM
         9JOLTGiZHRpBEDs8RK035qIjHEQa/cmIbSvKi9FYihKkBwgwD/fo8iR6c1VTPCYZlZjd
         PirB9qEE+EzdsvI0wiN4Jc0QJ4PTGX04gM03rC4ugkKdOLcsXRxwRU+8Etl8LxNkHIHo
         ynIQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:sender:dkim-signature;
        bh=EZtziTASdtc/mVRfo4qJO7a3eT6JryOIBviBlnigbG8=;
        b=vN8dfxn4xDroe8teSS42Iq+7XDQKhh295N2y3JGmCpdUyXMDu9DBJRKGwsLJRR5Rio
         sPhNA+PCiDQuB1PUiqUeXcZWYoZ9XC9QDIb41MQXchhyoF2b3KjWRlMqdRwavEGVfWhL
         PIcWUbZJOSUnCUHRBsiG7t6DdeAyzAGxRpRhE2N3Ml2ee66EH550XMfrj5biOSci9tt9
         a7s5AvaSUNhgu0hTWR5eI6QcKy8x5Txm9NE4SeeWWBsL5XWa2w2sl9ntC72UsfvxY7Iu
         cPQk+YEdgV88m/QxyQdqO+SvfxFr7XLDxLuetllH8VWkJpQsSHnnkZtkhEHxv9RsskkH
         NqdA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="J/u3pHBo";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.79.41 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EZtziTASdtc/mVRfo4qJO7a3eT6JryOIBviBlnigbG8=;
        b=o9n6cbuyEu4Bl/X9PxSb4j90XB7/LFp7dXgAY9WXogSs8xtlS5EmazF1CGgATEpSht
         mGCvWxf4ABeaWUBvFf4YvzH/4x/B8nSx/RIGRBmigHWITPMjy26vlcvT1tdQbFWnCTVX
         Zgm02/OZXx6j6tUUCSD8KPwLS8g5nBw17OF+VRPbjZs6TSGI2FqotdGFsQ5i8XDFCJC7
         tPcSdqGoc3pRCTwGUf/dRGcj4JhJRcFzuUSXV6L6tBa172T5b7CjOpkVHJs66xNSXWuT
         gxeKHNUoYbuwSM2uaZRfn6uCDdEqzq4wK+FkXLzE+CW/gfiDrbmU8NYy0F8IIsHi4VlU
         epDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EZtziTASdtc/mVRfo4qJO7a3eT6JryOIBviBlnigbG8=;
        b=sbgjVpgpWuYUMy8PpaMDLbEdbYJtn0RuMkPoPOKysBbA/7VPts1KSOwwqViijuzszx
         mYkZ1MWmrEM/H0qQGBKw0/LJQStcS/H3wuvM7aoNTh8nXnGjspcOw/ETBUQWcO6kz+H7
         +2HTit9u8epxFVz5vLYwe9sGgqdEuGtEUKuMKIahewPfSmVhFP8/JKiz1vS2Pew3Z0H6
         Qzqd2+fPdjzu3bNifheTmFUwQjo7NJQMtlTy16QBT92QeXR3nfFFJuJV5sO04Ew+fkbU
         qAxLmzt7396QvDQETllvSPMuXbvLLh+3rbHAknLVados+q8wM+qNustDKdJMar2HVmYh
         pqLA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUHwMqNabDHLLs7EwM5v/Z7hHy3JNDc2zDjtEOM6ygu3Ck2uZ6x
	G77hGQ7Nft8hzi0mHZ01BIs=
X-Google-Smtp-Source: APXvYqxgC+4fJPlWZU9NTmkoTa7kicG73MzDWgj/WelsFjmJ3i5Lhk13t+DYqwrjuv4MP8zKn81Jqg==
X-Received: by 2002:a65:4546:: with SMTP id x6mr7930123pgr.266.1568567317868;
        Sun, 15 Sep 2019 10:08:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:2b90:: with SMTP id r138ls6127604pfr.7.gmail; Sun, 15
 Sep 2019 10:08:37 -0700 (PDT)
X-Received: by 2002:a63:4181:: with SMTP id o123mr18576120pga.164.1568567317568;
        Sun, 15 Sep 2019 10:08:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568567317; cv=pass;
        d=google.com; s=arc-20160816;
        b=I4jitFGsmzZjWBDI8cOddqG2tDUyjfVXhDFuMDEpWy9UcF8DX1Si+Mhiq1qktuJGzY
         zbCGTY6jpz77BtOjoK+5Yq80ki2Vc/TLhLq4tfDmNurYpQcf8bXv0G154HPAgxFGfOuk
         xPkoKk0qhFyDET4bORKBWVMkruuwwhLb9ZTwvfhXxlUMgbSFSJIa+DqX75fw2tMNg9Wc
         uPLIsqx6IvJKSwKuDpSHRAkgO8mS6iUkYbulWzeS16POKqDkXTM99HHh2LzjmHIVog5R
         rS398SvIlkP0SadVlpv1G84cLfHpKSwUtbwDwSTeN9vsRTpBW2XXmrKafwjULi4g6/Qd
         dWlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:dkim-signature;
        bh=YqZVAMZ+RjzyFLGAEX3hXjrzDB6SOb595bQZhQ7ckFA=;
        b=AFKXgHhrsG3iZrAkXzo9OdW/UagFvwQLO59+39CkTte4UgEDdF5vSEug0NhjPi6lAT
         zav816phttuuAWrgNZoogz373nLsCXw8ksKPSVR6e5eecNWUWplyDqWao2JOm37gpkW1
         2mZMeH40poC9SNSMlRuIAzN9hP0OQpjfGolk8idgFK6B4wmbyTMeSEvK09vhevZZcBfF
         RlU0D8zDhYhPohbbE4T7zprN2AxGoShkX9dl/G9UqixAWj01yPf/2tU8VdqqQRbmOZhi
         PRUdSkQZLeMzZhEQuV5aFtTMLDTwoRVU0cuNQbIaTE5FPbILtnt/KwdWrl1Q6LsSOoEF
         oPPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="J/u3pHBo";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.79.41 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (mail-eopbgr790041.outbound.protection.outlook.com. [40.107.79.41])
        by gmr-mx.google.com with ESMTPS id j21si675436pfe.5.2019.09.15.10.08.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Sep 2019 10:08:37 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.79.41 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.79.41;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PGew9d5vyFaaLCCujUOmKLy1BcHicVEuADswNLvdFm8qBe7DGBmggkVH8WPfAHtk1GoBD51J7477X5mR6bcPhAKiMcRzkfP7rBYtQ+0q+Xrlgn0NsbsIT04hmFZufe2GgEBuGgwCO4RwdoBfBH9zZdDx7nJhN027cJ90He1FVwgIX/7wc0Pnro3IpfC2emW9pib/C4Ds5XZadHyaWM37BWGSTU7Gy2L2lolM7YTj3trzlbITG5lkz6cO2xZxGCxNEWpHxHYD+t6c+j2B4pau/DTWBsjZfXYhRRDMx/0S3td1DUec1Pn2iFtNxpUsduTrBA9vFdT9K/8mj44R5zytdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YqZVAMZ+RjzyFLGAEX3hXjrzDB6SOb595bQZhQ7ckFA=;
 b=cm9yw8AoaGn7G0Bx9hbaNIiy4a0T1hqxuEHN1zdTIqMm7gFoWxp+pfZCt2b4J8FeIXSceTZ13KEiAITiH6BKfP9s5qHIkm37Q/Qn7nEHO8JpwkMcSXZWq3g1NwvFNtbQ7ecufraKgEeW0QTL+uI7OrnGEXxdbIzo948Nf8VkDFMyKWch+NURo1FKycAwoTEEcI3geN3Iu3/K94Ff00KUexl07ZR/tVwZtC5QgkH0Jr+91QWlXkBf5GTHTbkuEsCdvlhoT10youpORC8w9VH9hrmQldKcDfmWNFxJYBQ+qm0GyPAEaY/eUTWo/MzTSRomIWsHHojIrDwA234QLTPSPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (20.178.244.22) by
 MN2PR12MB3309.namprd12.prod.outlook.com (20.179.83.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Sun, 15 Sep 2019 17:08:35 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::ec02:b95d:560a:ad36]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::ec02:b95d:560a:ad36%7]) with mapi id 15.20.2263.023; Sun, 15 Sep 2019
 17:08:35 +0000
From: "Mehta, Sanju" <Sanju.Mehta@amd.com>
To: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>, "Shah, Nehal-bakulchandra"
	<Nehal-bakulchandra.Shah@amd.com>, "jdmason@kudzu.us" <jdmason@kudzu.us>,
	"dave.jiang@intel.com" <dave.jiang@intel.com>, "allenbh@gmail.com"
	<allenbh@gmail.com>
CC: "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Mehta, Sanju"
	<Sanju.Mehta@amd.com>
Subject: [PATCH 2/2] ntb_hw_amd: Add memory window support for new AMD
 hardware
Thread-Topic: [PATCH 2/2] ntb_hw_amd: Add memory window support for new AMD
 hardware
Thread-Index: AQHVa+g1U8wnuc3ADUCHbHDfjwwgYQ==
Date: Sun, 15 Sep 2019 17:08:35 +0000
Message-ID: <1568567293-26894-1-git-send-email-Sanju.Mehta@amd.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR0101CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::14) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [165.204.156.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2babc224-bd83-4a94-45bc-08d739ff5800
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:MN2PR12MB3309;
x-ms-traffictypediagnostic: MN2PR12MB3309:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB3309961E66F82F9B052208DDE58D0@MN2PR12MB3309.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 01613DFDC8
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(346002)(39860400002)(376002)(366004)(136003)(396003)(199004)(189003)(66476007)(66556008)(6436002)(36756003)(64756008)(66446008)(66946007)(7736002)(2616005)(186003)(2906002)(305945005)(14454004)(3846002)(6116002)(316002)(26005)(86362001)(2201001)(8676002)(50226002)(8936002)(81166006)(25786009)(81156014)(2501003)(71200400001)(476003)(71190400001)(54906003)(102836004)(110136005)(66066001)(6486002)(478600001)(5660300002)(486006)(6512007)(4326008)(6506007)(256004)(386003)(53936002)(99286004)(52116002);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3309;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oAYdD+lf+mWt6z8ksLPG9uZxaUgnG0u4Y/NcrGeJZkDiuIGOOYja2bhC8aEw+tJGDV/2G57y1evrsEbky5u6hpUuecTVzkpBKCFGgjfi3zVHuJHJBA6+fGTDgT11DH+nWBhO3gx9vfv3p7l31ie6pGaAPHOUQFgdiyc2KBseC1zs9OWQyn+bLlLDEf09rPbyjWuMQtnP0f5hscqxWTNgzyD9jGlJOtwuouKXxb6ZrSyBdF6/7IkhFZYAi5/eud5e3ZmDo65A8GwHzZM1r7IfAFCXBDS2EJ/8/E6RdxTQdg1k4w4YHA8xK6/DaDu/LlBHRMlsbvVOOkAWAFhpe3JqFq1hNn22C3wVICwx6L06E4LyU+w374FjztygbGqoHplj+fegfYMkxAlp0jzs7lZwhNvI2wRh1H5/fAM6enF1Npc=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2babc224-bd83-4a94-45bc-08d739ff5800
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2019 17:08:35.5928
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uVgkaqtJ6VWQ9zEWKoqA/2o6ZJMvLOnurLgBvml+EkieJLw0PMyCHmeh3JG6Y5wB/cQjJyvzbGmM5PcdW/sO3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3309
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b="J/u3pHBo";       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.79.41 is neither permitted nor denied by best guess
 record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
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

From: Sanjay R Mehta <sanju.mehta@amd.com>

The AMD new hardware uses BAR23 and BAR45 as memory windows
as compared to previos where BAR1, BAR23 and BAR45 is used
for memory windows.

This patch add support for both AMD hardwares.

Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 23 ++++++++++++++++++-----
 drivers/ntb/hw/amd/ntb_hw_amd.h |  7 ++++++-
 2 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index e9286cf..156c2a1 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -78,7 +78,7 @@ static int ndev_mw_to_bar(struct amd_ntb_dev *ndev, int idx)
 	if (idx < 0 || idx > ndev->mw_count)
 		return -EINVAL;
 
-	return 1 << idx;
+	return ndev->dev_data->mw_idx << idx;
 }
 
 static int amd_ntb_mw_count(struct ntb_dev *ntb, int pidx)
@@ -909,7 +909,7 @@ static int amd_init_ntb(struct amd_ntb_dev *ndev)
 {
 	void __iomem *mmio = ndev->self_mmio;
 
-	ndev->mw_count = AMD_MW_CNT;
+	ndev->mw_count = ndev->dev_data->mw_count;
 	ndev->spad_count = AMD_SPADS_CNT;
 	ndev->db_count = AMD_DB_CNT;
 
@@ -1069,6 +1069,8 @@ static int amd_ntb_pci_probe(struct pci_dev *pdev,
 		goto err_ndev;
 	}
 
+	ndev->dev_data = (struct ntb_dev_data *)id->driver_data;
+
 	ndev_init_struct(ndev, pdev);
 
 	rc = amd_ntb_init_pci(ndev, pdev);
@@ -1123,10 +1125,21 @@ static const struct file_operations amd_ntb_debugfs_info = {
 	.read = ndev_debugfs_read,
 };
 
+static const struct ntb_dev_data dev_data[] = {
+	{ /* for device 145b */
+		.mw_count = 3,
+		.mw_idx = 1,
+	},
+	{ /* for device 148b */
+		.mw_count = 2,
+		.mw_idx = 2,
+	},
+};
+
 static const struct pci_device_id amd_ntb_pci_tbl[] = {
-	{PCI_VDEVICE(AMD, 0x145b)},
-	{PCI_VDEVICE(AMD, 0x148b)},
-	{0}
+	{ PCI_VDEVICE(AMD, 0x145b), (kernel_ulong_t)&dev_data[0] },
+	{ PCI_VDEVICE(AMD, 0x148b), (kernel_ulong_t)&dev_data[1] },
+	{ 0, }
 };
 MODULE_DEVICE_TABLE(pci, amd_ntb_pci_tbl);
 
diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
index 3aac994..139a307 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.h
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
@@ -92,7 +92,6 @@ static inline void _write64(u64 val, void __iomem *mmio)
 
 enum {
 	/* AMD NTB Capability */
-	AMD_MW_CNT		= 3,
 	AMD_DB_CNT		= 16,
 	AMD_MSIX_VECTOR_CNT	= 24,
 	AMD_SPADS_CNT		= 16,
@@ -169,6 +168,11 @@ enum {
 	AMD_PEER_OFFSET		= 0x400,
 };
 
+struct ntb_dev_data {
+	const unsigned char mw_count;
+	const unsigned int mw_idx;
+};
+
 struct amd_ntb_dev;
 
 struct amd_ntb_vec {
@@ -184,6 +188,7 @@ struct amd_ntb_dev {
 	u32 cntl_sta;
 	u32 peer_sta;
 
+	struct ntb_dev_data *dev_data;
 	unsigned char mw_count;
 	unsigned char spad_count;
 	unsigned char db_count;
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1568567293-26894-1-git-send-email-Sanju.Mehta%40amd.com.
