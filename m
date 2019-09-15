Return-Path: <linux-ntb+bncBAABBYW77HVQKGQE4C226BY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE52B310A
	for <lists+linux-ntb@lfdr.de>; Sun, 15 Sep 2019 19:07:48 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id b8sf1037pfd.7
        for <lists+linux-ntb@lfdr.de>; Sun, 15 Sep 2019 10:07:48 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1568567266; cv=pass;
        d=google.com; s=arc-20160816;
        b=xj/KqF8a7+7Sv6bziLg0BwpCO+5TKNx5/VX1zQunqjMgSdEoWr+2GGQXwjPJR7m0py
         yaJu5gR5/EbP2g2HiqgsN4D+ahxwgT7XEXtR+FcU7Tk3hyiIsnhIbIZ3v0KOANXjFqPn
         FvRx/mzcN/KVQuwSlbMHqLzHCk6ITFbF2cI5f9/Vb08Ck8RYExkCXdFpFk5p0QlxxKfG
         FCgjoNTMHn8+TEpIw4C7zNsTvbYSCXZCYvG4Ehr7Do8w5CCiIxk0BCxQCHLaOz0j2Gc6
         QX20YL32+HK2Q9MWSUGG2OB3WF7SuSPeG9fRZ/oMnmLjxdg+f3MUDFoGoJ0F2Zbm3g+1
         ITeA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:sender:dkim-signature;
        bh=sKPFsSTjICPsKnHS2TImZUITd+Gt2//pvXA4W9HXL4E=;
        b=Xz3ttJ8vfuyWqTS1uzPQYVBOTGKAyeOVDi09KsHj+pw3fcQrQTGlRzT7IyVFTKDbS1
         K50uihcsjn/21V5ray0bjBSh/fXBK3S/E5VwwLYw+HzInWDDjw9mu/d3NptM4wR4K1oT
         uyrbp70YhW7LOV/s/VkDny4QV7bfRipLfYiakPvB307rlaMLsbL6pqP+GUdzkMibZTNw
         xNx+QluloJp5qW9j6SsWs7205xs5YohtazlOUe1kioMBcJyGbbXoN+a5y9Lhoh21wBKz
         Qt/7MemVYim7Qf9G/WMpMga3knvMqve1FI9pa1mxnBQhaJ+L7+WAu1LWyIILa3AtX1i/
         q5lg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=DpfGmWb6;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.79.51 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sKPFsSTjICPsKnHS2TImZUITd+Gt2//pvXA4W9HXL4E=;
        b=GSztTiKf4eWkHUcLdij/oQ+VV0OeyAr0/30mlRMlYw1tD74OIUt+LpQGqmf0k3x/se
         0bDSymYGem4Tgb3eJO/y3CzLDx1IC1PVSEd/W/PxNjNT/LCfKGtCFoYPesbvJVCwKiP/
         LdqT4rer0BGABqNyk0t6RbN1zYUHsGSoH8N47G7eSnPTR2V7uhHb1b/68aqNHdDPa6nw
         C5UFFhI+oxWbiP/0IopM+MblaT7fSjtaVCxB50f47/YJZegEwhhoRDaSFhcPT4IZuTZv
         EvzW51fspsOGJV2ZesS3pYiTJHjRy5Sn+4i/5kvtj7/bkry/gg6VIV4p9s847dzIeYdN
         CyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sKPFsSTjICPsKnHS2TImZUITd+Gt2//pvXA4W9HXL4E=;
        b=caaqZUPvsqcEwo/HXU5gFzcpaLpOL//EsYN/wAdghvv4kM+ocO3BMcYnwLDPMS5V5s
         kA7tVlCiHx2uaS8kD4m7ehLnB8aW6xaPGN3hSj/9wqJsLSa81uTPMzGgWN6cKm+6uUmH
         VKDT3yhyg9DlzfiE1hg5fmlFHUDgCYZM3HwqybOI5RJbCgo6wXKdOnyTnnqD9S6r998U
         lzMY2aZE2qafAzQB00VGm1iypPT/Xw66AV9M/BeY34HdgD4+aebvhINivim5mUUfxIeZ
         T6vFgIUW+Ipp6YeH8SEj+VJcFfjxosfGidjJAAZx9oMD9L1I6VpHNM0zrHWb5X0B60yM
         BIcg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVD6pFrzP6HjQBiy1r20TIj/PC9Ev4B9wZAoulY/1aXiguoBnRx
	nHmpgXIQEh9mbU1ZDts4rsU=
X-Google-Smtp-Source: APXvYqwXpCEIXZ3ATnZetE3V4NWSQhVcDWld0eFwdxjbq6ZjaxDR8ut2HEXR2Us05fHJBExmvFh+VQ==
X-Received: by 2002:a62:3c1:: with SMTP id 184mr62298622pfd.209.1568567266480;
        Sun, 15 Sep 2019 10:07:46 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:6585:: with SMTP id k5ls2663969pjj.0.canary-gmail;
 Sun, 15 Sep 2019 10:07:46 -0700 (PDT)
X-Received: by 2002:a17:902:8f8e:: with SMTP id z14mr39347348plo.323.1568567266185;
        Sun, 15 Sep 2019 10:07:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568567266; cv=pass;
        d=google.com; s=arc-20160816;
        b=TGOczlUBhx/3BE7AeKXMf3ONqF8QctAd+YSTp+6R0+hYm7gYGeWtrZg5Yvkp6tLg2/
         xtXkVi5MWPlX/UvZ4I4Vtqcj8WK+LYmHeJ2P3zRIoNH3bqomjdQjjiTzZPtvPpOwJR8m
         XIzj8e83S1Az7f1CBgh+1n+REC78RWQ40wA9ZGImUy5ePFVYR3UQstYyFHG6LFXl+PTj
         nTCDDVKYeXG5WNXasve3F36VUANNrGviyLqCLiHnAyV7TUmgzIDXxqkILjekIakY+PNz
         2qgfD11hwL+RIYH9mn54F1Vc5vJYghTiaqb9zQS8/7AbrvQu+jsbH7ZShBgSKre6Q9J7
         vcpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:dkim-signature;
        bh=/DW0su9blBzZE5LiHq1P8zqfYeTGEHhK88zGeyL0e2Y=;
        b=ate8P8iS2H7oDl26qZzDLvnu9NqCBd2OCLZKFqIfCLN2RIFNhJLeG1v01weRf1Zv3x
         QeF+FOjWvNi4tletg5rK0FhtAiwN/0Rk0itLN4lihuqegbj6mx4ggZk2hXnqHYPooXDE
         OVT6mJUKqOgpvkbnKCgDhGaQ8rYnVc+GyntkKNsW5fNCNUlmdk1Ac5aX8S+72p6HWRmx
         L3mdLsYLBNu5FVfKw7Zseby8U07Mun8slNGITlFMk1vINasHQI5zyTTYfb0x829v93q7
         R6Tatsmm9egrRb8HgiyBkAMkDUo4DduH4RknAafOy9BMKjvYqZ1nIRMbFCdEhlb8LSfp
         qKhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=DpfGmWb6;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.79.51 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (mail-eopbgr790051.outbound.protection.outlook.com. [40.107.79.51])
        by gmr-mx.google.com with ESMTPS id o6si334839pjt.1.2019.09.15.10.07.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Sep 2019 10:07:46 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.79.51 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.79.51;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCN1TMuWHykhw4NqoVOVPergJ2vhgYXNwDPB5jmLCIrkf4/RviwdZCJ3aLI0sr4kAAh9VAhUVCy+sSkCicMHGAt7MvekAMsCEu7CI8gaE4MzsNDe5I8Ft0bjnwiUyPeUfi0U013vmCODvGoauAUG7SThpL5XMnVKUf4e5YylVQ3ekSGPIebzfOoouG7VPVEPy6OgAKreEOoq1lEhFuojKvWBoEOk534H3qN94T6eFiAEiDOhffVEJsJ+hApOcR1RfuZ7j8yzYqHhg1U30rIk4GnmACnq88cIIr0VKn+hKjnXC/RVFhzBrC6i6gYzmJyQ/KfrSojF0hV6NhOhcHS8BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/DW0su9blBzZE5LiHq1P8zqfYeTGEHhK88zGeyL0e2Y=;
 b=Q0S3MAZ8/C72ikRq+abtZcqfaQbEyn7fdLCVaEQEhb9YfnIhQVm8mPHJdxAhVvWpPwQ6Stexeutj2dBbkgoaiJhN83qQwqwux0yzPOKOyL8xm/BZVR9krzKGhfpZcG0GcBmb+u5UL4xLiNUjL1pH3T8qvC5KA25vuX10DkVusl0jS2NJF6Ioc3wOMewApFz5L3kZRNvt4UgiR14gcTrrlZ9x2BJie9zr14wsjBWRjVcN4r8YtGvv9gXZnZK2FwLUylqNbfClALLNscDpbSjDoZ4M3q9zELxCROyJ7ewLa563+Db69gR9B2PpMTGGW8k9wJS5LL4UW+ouKi3csqj5Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (20.178.244.22) by
 MN2PR12MB3309.namprd12.prod.outlook.com (20.179.83.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Sun, 15 Sep 2019 17:07:43 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::ec02:b95d:560a:ad36]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::ec02:b95d:560a:ad36%7]) with mapi id 15.20.2263.023; Sun, 15 Sep 2019
 17:07:43 +0000
From: "Mehta, Sanju" <Sanju.Mehta@amd.com>
To: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>, "Shah, Nehal-bakulchandra"
	<Nehal-bakulchandra.Shah@amd.com>, "jdmason@kudzu.us" <jdmason@kudzu.us>,
	"dave.jiang@intel.com" <dave.jiang@intel.com>, "allenbh@gmail.com"
	<allenbh@gmail.com>
CC: "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Mehta, Sanju"
	<Sanju.Mehta@amd.com>
Subject: [PATCH 1/2] ntb_hw_amd: Add a new NTB PCI device ID
Thread-Topic: [PATCH 1/2] ntb_hw_amd: Add a new NTB PCI device ID
Thread-Index: AQHVa+gW9+Bl/2VHLkO+yiE6eLNTog==
Date: Sun, 15 Sep 2019 17:07:43 +0000
Message-ID: <1568567222-26810-1-git-send-email-Sanju.Mehta@amd.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:1::16) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [165.204.156.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b058b68-e79e-428b-787b-08d739ff38d7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:MN2PR12MB3309;
x-ms-traffictypediagnostic: MN2PR12MB3309:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB33099C72D397BD8C578C1A6FE58D0@MN2PR12MB3309.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 01613DFDC8
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(346002)(39860400002)(376002)(366004)(136003)(396003)(199004)(189003)(66476007)(66556008)(6436002)(36756003)(64756008)(66446008)(66946007)(7736002)(2616005)(186003)(2906002)(305945005)(14454004)(3846002)(6116002)(316002)(26005)(86362001)(2201001)(8676002)(50226002)(8936002)(81166006)(25786009)(81156014)(2501003)(71200400001)(476003)(71190400001)(54906003)(102836004)(110136005)(66066001)(6486002)(478600001)(5660300002)(486006)(6512007)(4326008)(6506007)(256004)(386003)(53936002)(99286004)(52116002);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3309;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jxNA6bIlbq3G1LTXhtyQq2vqMT1sDlkzaFoAFkleaQmGx5Sukv4o3jbgJeaCmhyA9KM3kbweoC8uLTbf7EgZt7mOIva3+DDk2j+dt1Ls36xg+dHdXx9Ix84UtXtmJKvhC6yTCNOJqvvGTEDVevLw4eI55hs7aJ8dtJJyadYmb0l6rJO7yUyk6oOvF+65tOh7Z8JaAWZRxk4iYK1bI8LT8npYxu3hEizBypK3jvy76I6WV+sCmbctdNXKflzeDpI8hb9eBrZFdcANp0padozOr9SB03Xvcurp/3BJbnceM653h8Djc+YCNDxz7RwcXdlmcbyOnNhokT+PPuQ2Sb8EwdIA8UaedL2cZzfnmwALzq7C3dOQO7zwGC4qHH1QxFWnU/+trkGwaH0VSd1DzhUsaZ4eWwEElj8aDo/qaXWCzCQ=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b058b68-e79e-428b-787b-08d739ff38d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2019 17:07:43.4120
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5dR1j+1TYHQLFh5RVc4aKlutNwJRDD3kViHoCtl+fJv0D3ZLPqD7fow4ArZcS1rIA6W3KLvESmgPGyyDvWpvCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3309
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=DpfGmWb6;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.79.51 is neither permitted nor denied by best guess
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

Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 3 ++-
 drivers/ntb/hw/amd/ntb_hw_amd.h | 1 -
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 2859cc9..e9286cf 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -1124,7 +1124,8 @@ static const struct file_operations amd_ntb_debugfs_info = {
 };
 
 static const struct pci_device_id amd_ntb_pci_tbl[] = {
-	{PCI_VDEVICE(AMD, PCI_DEVICE_ID_AMD_NTB)},
+	{PCI_VDEVICE(AMD, 0x145b)},
+	{PCI_VDEVICE(AMD, 0x148b)},
 	{0}
 };
 MODULE_DEVICE_TABLE(pci, amd_ntb_pci_tbl);
diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
index 8f3617a..3aac994 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.h
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
@@ -52,7 +52,6 @@
 #include <linux/ntb.h>
 #include <linux/pci.h>
 
-#define PCI_DEVICE_ID_AMD_NTB	0x145B
 #define AMD_LINK_HB_TIMEOUT	msecs_to_jiffies(1000)
 #define AMD_LINK_STATUS_OFFSET	0x68
 #define NTB_LIN_STA_ACTIVE_BIT	0x00000002
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1568567222-26810-1-git-send-email-Sanju.Mehta%40amd.com.
