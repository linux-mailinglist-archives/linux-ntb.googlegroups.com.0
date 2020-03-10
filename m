Return-Path: <linux-ntb+bncBAABBTH5T7ZQKGQERVOAHSY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C65D1809A2
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 21:55:42 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id x16sf9341130pgg.5
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 13:55:42 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1583873741; cv=pass;
        d=google.com; s=arc-20160816;
        b=ah9pNSVWqFId3WhzkrqzbidbnSjJEQejLC+GyTZl8EC3DMT5FeTNBXP48GJA4FF77W
         ikPQQ5BxjAyUj8a1qPEU5zxJRm0Mj82onwYDrxfJAhOhbzcCmoTlqYSVzOC8h+nNFoSj
         ADesCQkP5qKAvuywaWV3PGfCOl3kZf/fwpkbLjFuPsYEBJdMIhtNqyQz3ETx10voy2ts
         wt8/tgY4vVdwmrDiNY6oZnY1tM1JKAcW+xaJEPHX1X2yd74nhpJm3yRNhs41Z8j3flnY
         vdP1v511bJ26ernJhKp9lFTPu2AOlmCOv0uhJtL54yscNZenivkFOU2eJb29JVw6Wsiz
         jJ8A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bx1ZCzPvoUSfA4m5X3cT4InRmNMupIP7kRys9BKvFZk=;
        b=hip7IAP5MNufF/NPDllZYs/I9Ob8B/+LWaurj9pwqEhfqqgXLIwCW/NDRaF6hoCJ53
         2ijSBRbDwUMTleyzgoCF5qPDTouyNZGU6cH6OXr6Rgp/zI6b6CeCo4koysYr12hBH+uC
         DEKgs9VHWfTPxTqdjYQqlYVdxr3nJ2D4t2s3M0Pfatp/xUXYDsl8Ng6Wmwz0rYCx3L8Q
         Vw7mG6Zb2W8xDHQG//aNW7uS4SvG7Xxiy6yUwUN25EyQJUn0zZzdLp7EZA8RYCO00X2N
         fCJPvhZbH+Fl6cpgT3z1pFKGekkY+Dq4OPqgDobf8OLJq0+N8n/xBgcAIYGiCujlAqAU
         BOkw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=i9w8VsHi;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.50 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bx1ZCzPvoUSfA4m5X3cT4InRmNMupIP7kRys9BKvFZk=;
        b=F8SHVfLAy9CI9jwJ+NPaeQlin4q0Y81qdruSXnE2Vy5gdkV6z5qKPHNLB5ph588Pan
         HNnEIFHhr/3MTKNx+aWarVX+NTtPy13xkJnVmbODekAWueYHalWc5WTNn3mnyURoxE/y
         7cCgtk/H5p/9e02FsPvKz1tMHXbCLGuoj9V1yRaICGK0MlktzSer3ZUFBNXdzFKo8g+n
         9iEaFIE8tmSBQICzb/0UCDPqqJGFP3y837jb0Bj5ss3SZP2lDy/l1hKf/9h1QpyNAYZY
         fQZcy1+AhxYGcxs2KvIvPFa0Y6175pUypqxUWptwmhQE839oojLt3YPEOyZzk8f/7/uU
         uhLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bx1ZCzPvoUSfA4m5X3cT4InRmNMupIP7kRys9BKvFZk=;
        b=BAgaRCknm07gpE3wWFBawYTnpwLXKTvmofXVkf3KzwaquIdCNd+H8EU3Q3ZSNC9Mc5
         MeOlC+K2fHJ2J6LJa9e33MhsOh1V9o6/jcHBd+MMSMt7cXccNm3Pdov7cLWNhyU6tL+Y
         ELQM2EGJ2c6AA8ZsucmqBjLan/9AKZZX7WxfDsPOnCRw9qKGB12Xf9r1R9/h749Tojx4
         SoQdiy3ehVYviv2nVQHmydpJGzeu4IHGcEWhBuR0QumS02n/RPqHDywcTtavBTO+nVgc
         P/PBtawA4N1Oiwv/LA+d6ZIJudjz9cxdv0mAQjP7uiGZclkCyR/xxZxsuuZCayWLr/OT
         e0lw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ0YU86/Pgb0XICu8kXcNfcDEI3PRGJbmxnrDVPF884SwPq0tRae
	UF50AiyexOdS/HUFAU/w9q4=
X-Google-Smtp-Source: ADFU+vsSZXjxLs2ern6FVlbUcAH76S68At85J6cN0692bI4ULM3zLHPFLxbPm6TmGAZ6AjpVvooPMw==
X-Received: by 2002:a63:b216:: with SMTP id x22mr1222376pge.198.1583873741077;
        Tue, 10 Mar 2020 13:55:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:3851:: with SMTP id nl17ls773677pjb.1.canary-gmail;
 Tue, 10 Mar 2020 13:55:40 -0700 (PDT)
X-Received: by 2002:a17:902:7d94:: with SMTP id a20mr8044028plm.307.1583873740659;
        Tue, 10 Mar 2020 13:55:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583873740; cv=pass;
        d=google.com; s=arc-20160816;
        b=1I9P+DxjZ9BpCuxDmwCS56Dr9YUB0ZaKnr5gFFWEcZ9hJsrE6KTJfS3uoxPcaKTMgP
         TY8iMcHomU13Zo+kGX8IIU/ijQVmCijK2GaDvTgZF8Sb0KwK5EomXLbpiMEsJ2CHL0u8
         hSg1/VREBzeJG3/OysQqflhUlbWhwADzv1XE0h3DJInaD3iumDfWZFLLTdVohWvCBre+
         /9JjOWJjBNxQ6lqwzc2Q4Uq4b1/ujKjGC5PsSYb4qoIQS08PdcD+/WWHiR204muzdgNv
         H5Hi2J+u93BiRjAiJLYpeJVjKDg08+7VonfUpFrEEpJEJ2ZK/GGl+Ka4/0HgaISPttoz
         5AaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/NH075+zFNvlnqWVy1IhzqbRw6HT0o832CSe1PdyReY=;
        b=D7yuOkbS1TaRFey42bRYjB1IjUnnHR7j0xCsao2odsLElkxJCgcICrenKzCrlJGUIH
         XVVZQMcJnlWvYe/O9A6kLn2vlCJNv+sXSpAbbzsKzaAtusOdQ+d40M/eDnPXIsomtAHa
         x45S/WR+T42gmdpbOmU9p5gZMVNKR9zjkKxHeMiTAU2uHiLvMX33OLszhtE410P3BnWb
         5rdnfBoOqOGSzzCXeIXwCPOF33aJgLMSLIZGhAQX+hkF44/QAH2EIiS4WlBe4H9W6L4/
         tfBwFwQfmfAb4Q1vDoE8/0MrI9hUNBr8a8/6My+XyuQzA0t2RSL+UQX4e5hTwjWrwUbI
         HAlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=i9w8VsHi;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.50 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2050.outbound.protection.outlook.com. [40.107.93.50])
        by gmr-mx.google.com with ESMTPS id j12si1734pfr.2.2020.03.10.13.55.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:55:40 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.93.50 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.93.50;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IYnlnLapU9noPEjK/9RWf2/74LAjnfElUDyTFaB/MQ8LbkD3nlsKG6o1Tn/2XRyLYPafPanickeEtAMvJoNhfCaMUaq8QXr27ZoWA+TxDEYuURs/sxHs6cmME4bQGrW1k9xZAvhBe/A/J1AiswHosv5Zzprei6m6SVpSsclW+H0Rag8krN+uz47dWnFzpKDLt5UUbSu4RpOJyvarEJm/jCYZXF/X0YUTQbzha1ylY529avf4s4zq+3LwLoDZw2RlhxtBZOF0KiM+D6+GBXwY0QkqiSBH/e1e0/JQwTwTPvsxzHEh13XG5Xb6DK655gRMg+hsqfYt2Korn423BlGc8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/NH075+zFNvlnqWVy1IhzqbRw6HT0o832CSe1PdyReY=;
 b=VaTMqCOnzzMUfzXs98Cvk2oL9fbWWAGWn6C/yyd/jPZR/67X0eeal0C9qYsfB8BDhOzx6L/oU2h/Q2I/0hd7ENvlfviUg7KorlsTDPINzzEn+EdBU6pYPxYMe6MaqO0fYce4C9LXO9N9ClL1rJj8qhu+d+AEYW3JEwajDfXW9T88PmqvH8e15dgvb6FYo6gKv5WyDgv4aG65neltx2fYFysoe04YkWPld6A0SnEPdYy4MXobzAIq91kIot+IxhZ0HDwWl7SUAREpieaMlfL5NTAb0MPVMu2QbqXvebYJlwWoZ48YZl+DVhxSBI/ibE5tFw7IQHJXCDNyZ3CMssXE8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (2603:10b6:208:d0::22)
 by MN2PR12MB4031.namprd12.prod.outlook.com (2603:10b6:208:16e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Tue, 10 Mar
 2020 20:55:39 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6%2]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 20:55:39 +0000
From: Sanjay R Mehta <sanju.mehta@amd.com>
To: jdmason@kudzu.us,
	dave.jiang@intel.com,
	allenbh@gmail.com,
	arindam.nath@amd.com,
	logang@deltatee.com,
	Shyam-sundar.S-k@amd.com
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Sanjay R Mehta <sanju.mehta@amd.com>
Subject: [PATCH v2 5/5] ntb: hw: remove the code that sets the DMA mask
Date: Tue, 10 Mar 2020 15:54:54 -0500
Message-Id: <1583873694-19151-6-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::24) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2793.14 via Frontend Transport; Tue, 10 Mar 2020 20:55:36 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e056d8b7-da72-45a9-5d0b-08d7c53563b4
X-MS-TrafficTypeDiagnostic: MN2PR12MB4031:|MN2PR12MB4031:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB4031BC4DD1FAEBE837F83A39E5FF0@MN2PR12MB4031.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(199004)(189003)(86362001)(316002)(66946007)(6636002)(8936002)(956004)(8676002)(5660300002)(81166006)(66476007)(66556008)(52116002)(7696005)(2616005)(4326008)(478600001)(6666004)(6486002)(2906002)(81156014)(26005)(36756003)(16526019)(186003);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB4031;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5Psv0qwJXY1m3r+5g6js0LtU+d+WTjLEDu42Pp9w9oUX2cq9omnLQ4PFh/UTXOhEqWjE3NxoZ5bZsubj878LnQrFnClfOztVcJv9LzrmYA4TuNQhxsjKDvGxEw2IP/yUvWUMLTwL9SDdR2JX+bWGv2kjGfNdkZBF8+JKhGSpozP7M64A3STFnxE5+FZlQFXavCoRBs7RuPAXEMgFaHLEfBKmLbcoSDk0daXI4JL9u4FYp8A+RbwhiyTA7psmo8Z2fw7xFpEixTFAbegX8OBs9ymSy7qmo6/s8ULFKy29+UmpIAIThoIhmgA/+8bTC4ljENDPiaoNjTxQnPs86jiJ2+LDL8NU6mfy1WY+j4Vkf0sXC4E18Bnx6Xh0JSuQvOMkR2tSeZVkugjpX7huUrttfuaSSLRJlN6uksLTwGUoV6bYQjS6m0Xo4I1hXb44V+aY
X-MS-Exchange-AntiSpam-MessageData: P1W37DlnuRM+XKiDl9mvcBsIDmU4Imx//VH45ibVk8XRiMQa3hZgbluURwV/8V6J5CCNeTtftSWPjMUYuiA+9fw9MODdJvr3rKE6St3GKSStwUW1Q+d0uLtx+YvaCiK3jnP+ysS9q6zl3KuCEXa6Ng==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e056d8b7-da72-45a9-5d0b-08d7c53563b4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 20:55:39.4436
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JJWy9a4mFivTx5w8wziyhYAaoBwb8vgecIoZyo+qWdCxEYXUrWWYo6LH7DTGm2I82fYeYAF+meyp9XZp4gbPAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4031
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=i9w8VsHi;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.93.50 is neither permitted nor denied by best guess
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

From: Logan Gunthorpe <logang@deltatee.com>

This patch removes the code that sets the DMA mask as it no longer
makes sense to do this.

Fixes: 7f46c8b3a552 ("NTB: ntb_tool: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c    | 4 ----
 drivers/ntb/hw/idt/ntb_hw_idt.c    | 6 ------
 drivers/ntb/hw/intel/ntb_hw_gen1.c | 4 ----
 3 files changed, 14 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index e52b300..a3ae59a 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -1020,10 +1020,6 @@ static int amd_ntb_init_pci(struct amd_ntb_dev *ndev,
 			goto err_dma_mask;
 		dev_warn(&pdev->dev, "Cannot DMA consistent highmem\n");
 	}
-	rc = dma_coerce_mask_and_coherent(&ndev->ntb.dev,
-					  dma_get_mask(&pdev->dev));
-	if (rc)
-		goto err_dma_mask;
 
 	ndev->self_mmio = pci_iomap(pdev, 0, 0);
 	if (!ndev->self_mmio) {
diff --git a/drivers/ntb/hw/idt/ntb_hw_idt.c b/drivers/ntb/hw/idt/ntb_hw_idt.c
index dcf2346..a86600d 100644
--- a/drivers/ntb/hw/idt/ntb_hw_idt.c
+++ b/drivers/ntb/hw/idt/ntb_hw_idt.c
@@ -2660,12 +2660,6 @@ static int idt_init_pci(struct idt_ntb_dev *ndev)
 		dev_warn(&pdev->dev,
 			"Cannot set consistent DMA highmem bit mask\n");
 	}
-	ret = dma_coerce_mask_and_coherent(&ndev->ntb.dev,
-					   dma_get_mask(&pdev->dev));
-	if (ret != 0) {
-		dev_err(&pdev->dev, "Failed to set NTB device DMA bit mask\n");
-		return ret;
-	}
 
 	/*
 	 * Enable the device advanced error reporting. It's not critical to
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
index bb57ec2..e053012 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
@@ -1783,10 +1783,6 @@ static int intel_ntb_init_pci(struct intel_ntb_dev *ndev, struct pci_dev *pdev)
 			goto err_dma_mask;
 		dev_warn(&pdev->dev, "Cannot DMA consistent highmem\n");
 	}
-	rc = dma_coerce_mask_and_coherent(&ndev->ntb.dev,
-					  dma_get_mask(&pdev->dev));
-	if (rc)
-		goto err_dma_mask;
 
 	ndev->self_mmio = pci_iomap(pdev, 0, 0);
 	if (!ndev->self_mmio) {
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1583873694-19151-6-git-send-email-sanju.mehta%40amd.com.
