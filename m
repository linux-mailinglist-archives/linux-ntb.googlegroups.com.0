Return-Path: <linux-ntb+bncBAABBLVRX3XQKGQENNIGYNY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCF211892A
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Dec 2019 14:07:59 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id h14sf1829578qtq.11
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Dec 2019 05:07:59 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1575983278; cv=pass;
        d=google.com; s=arc-20160816;
        b=07qVkDzx6qQVv2VoTvlDMcsDfcD0XE1nZjytuCVtudOX80KkN5ATD8Ica4NIN77D0D
         13W3uBpj+uabxOsxjgo08qevDeBifGmAFBck8FyvrM9nqP3lYCKJg2A1SPZ8ibNAPeEH
         ujGFuX+mQ68Meig9CXc8Az5bcMT/b+xqvxQ2yRoKqBYLyJs7zlVrZWk1gWx9yQDxTSwX
         0X1kjxk9PtSfmceh4LQl3HKCnN9rjQcOpd2nKDFEZh3wVDUUSGyhQrK1GlU6EDZxkS85
         nYBP+4X4Cx7OQmICTc2d+/41lLqfLKuAd6gEd5IKROevqrN8G8LL0AYc72DazoSGXhdg
         316w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=uYJaHg2WnvGFUN0eG5I2Abg6Cec39t3+cCct6uYdXU8=;
        b=t1snpozCbYh8HiIxypTuZDVCqIHZLBkHL2paBr4Y9gQ1mpXCwmHrZHREJV2E+0hLHo
         1ec5IBXB4g+IzETWb1KF1en0xnZO1bA0RZKPFBtPkOK79SBJqdEOazpnig5CQXSqqArV
         MzsMjE0zAmlkWzEoeNJ8uKpmcYv7kjO3TjTwBtF6BTBZa6O/0qSssgh6GcYr1iQRJ7ww
         /8HSPm0DT/UaCe2R2Kfqf0jqNdBcRPOGxdiPeMzjY/4CNt1dfr7TIdWO344yjrnN/tV5
         NBzsSrgBzwh+ev31XLv9AdlExHaGeT9s5xffi2iANtUneE21jkY39VVsR9PwgdjAoXWZ
         PrIw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=nuUWiSq7;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.236.52 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uYJaHg2WnvGFUN0eG5I2Abg6Cec39t3+cCct6uYdXU8=;
        b=OUOzcVHKM8brmIb0WH0/GaenEq/FLk70PdQPKHQxfStQEb3+Hlizrpf3G/3E1ERX0k
         wRyzAnRpeBpA06/8dSN9+ppoq7x9TTh9bSVnwFiSnkU5oFhgCLSL39CjG2EWIE//XN2l
         h9Cxy/ya6V1Z8G7xJc/92tCuitLHHgzdVFZUW2qOoXXNkuN53lG+Yxg7FlyKMrWggcKv
         JaYvAEW49QM2IHU9PnAWFzYJylfTIkrkAhRzqarubxui2LnihniVtnaE0ZH9xV4opnkI
         V7v/ydbD7Wcgns7HW5aGhe1wd424HQSsx+zWj2nJ+4DtiMEh/c9HJ3v0miTCJvBQGUeh
         sjBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uYJaHg2WnvGFUN0eG5I2Abg6Cec39t3+cCct6uYdXU8=;
        b=eM5tZglWnolpqIbc24/6vHaW0kh6TQ25WHdRJX2Vg/Y1WyFgccpPdLYQo8LlkBPsiI
         7n9BrjEay64VIAvM7UANxs6o8Qydp2dY3w3kRStjBJ7ReNMJa7YQtFY+xPt3bDedAosX
         GW2p+cGgaxPrmlJScqaJKD4Tw8AdEjkqD4IhjVSjaAnyNfhWlvRgNIkxWC5Snwt1l5P7
         xkGpH/eU+Ci8VMeFDFsT/7PD7yJpZk0qrY7MFfK7mqFE48/u8xc0frIWnRu+cBIJTDfF
         x+xym0gFJHUZlgLYxsS0QWXtSpTdKZhT7AvcpkgF6dnJZOQ3faw8HgF1nCXAzYUcQTRT
         NP/w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXcItMKP4IyHgHIZMgDhJ163opa/x8ULibz2kObM+hZtg3cxLZ+
	/FlelzjJE9u8jay0Jq1rCUU=
X-Google-Smtp-Source: APXvYqxAk+/DBK3Xq5hSzGRYoFvRO14BS+SCFBNtkOxtCiydElyx0p+bJoEaoBUyerGARAtsE9USvg==
X-Received: by 2002:ad4:55ec:: with SMTP id bu12mr28778762qvb.107.1575983278422;
        Tue, 10 Dec 2019 05:07:58 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:bfc3:: with SMTP id p186ls6175574qkf.13.gmail; Tue, 10
 Dec 2019 05:07:58 -0800 (PST)
X-Received: by 2002:a05:620a:a87:: with SMTP id v7mr32982743qkg.357.1575983278104;
        Tue, 10 Dec 2019 05:07:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575983278; cv=pass;
        d=google.com; s=arc-20160816;
        b=jsskEnFLBeYeq362YuRhlaK3bBrUGlG6vw8kYoGK6Gny++7ZLfpmiQESJqazM5UBff
         vE51DqzSJf4NAo4XJIZqRGuFaMq6XP48QdLOL6tr6WMbNmTDRkhuP9D6IuwHQQh5xTd3
         9hZCJy4DXOXO8dWrakqgri7GtvIBGrIbgzltmG7atS4hQaEb529x3Y0G4qt3MNVgzmLd
         +POAuXnxrrqCPtWQswlKDVC7F4rj0ouTwxEyu2wuN/ZbzXQ/QYwJEv5QJiPpNcvq3m6D
         q9eMPUUw5EMxe/m9j/X+rcdU+I7LfzhDuxczKUIERWmVs9omQw/5ggZLOn4TR08SGjh1
         gxfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=fj+oD0KgsNOBwhS6sD0d4UQxcccC7nEOj1NsraymGZU=;
        b=AEkjZFNtIxTTKnYHknvubQGL9mT6N8QhnRWdRg4yyvb4DF2MsUp8oOV7ETGE+zqn4j
         JyE62xKT2Slyayk0omt4+CSwHY9fImbnj9x1dhWGR+Tzs58s5YTvWKOupt8wySvUvxOt
         Nhb90NmXBC/w7mzldDK6FXt9X/u+0V83k6c8PBef+C+7Sex1luFQKBwyN/5kon7q/1IB
         /sXjzQ35bWQMQH1xIVBwrS4sc5x2IsLg+lJ4LIPFRzwa5QZbGrDrsxUEB9qhuQPyv+2k
         E1TqbFg9z4EspvzW7RBlgIOqddKNRkI4j3KiRd5uFtaGepOCQRM8/sABoIgoRxGrhiDV
         p0/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=nuUWiSq7;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.236.52 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2052.outbound.protection.outlook.com. [40.107.236.52])
        by gmr-mx.google.com with ESMTPS id k16si112305qkg.0.2019.12.10.05.07.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 05:07:58 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.236.52 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.236.52;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lfHqo69PbB6QvbCnWcdqi+8ApjxxEfT13dLYGUrt7WHLIEEyewWGch9+3XkGC81etY7EFk5YGFCwCJ9taMOoMVk4d6ceL8dOpB8mP8ZFfHsCDi/4bBaVhMYf423d7D45SjdzhKKEJKQxVivGwODmhtR74Kka32Wu2SeP5uiap2ULq7M7z3u67hHSix2qW8CPvxq4Sb5wXQH7U/oXs82sYL+TiZBq5WJn+cXlg1iBGFnt2f3QqhU8pcPsxfPfLqI5hyjduGfLl5jHi1CH/2AFvokud7oXMTVgdAodc9TlUBEePoxxJbbEOgxxs/Cp5G+zjfH03ts4RVfU2gxkco/Yyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fj+oD0KgsNOBwhS6sD0d4UQxcccC7nEOj1NsraymGZU=;
 b=i9Hto5R0832sueEemNAywu6MkfOcZvld+ivQXvdq4Raek6yKp5mEIUGxWypouIhDvygcXl6VKHyM/VzmY+CGvzstoFTy/PCyHAzaqu5yuFJX1CkY0qLlF9zrysIpL3xoB0y17TtldO9apXqGoapbmkKIeZqmwayCQySfApRJbL/qtJOU/QhPk/7O9MyEHZhJNv6q/qRuzOhaPh616xP/hqLF0ISXDU0euzyQ2d64zZkGiFApoCc02h3t7dfkvkPdlFU+1rzS/JfFp/IfQLRD6JhjMcMO8saZSyMsp20bMM9tZSPt75mpDn2k7Hx16Bmv4PU79FknxIRXZgLlLwpy6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (20.178.244.22) by
 MN2PR12MB3934.namprd12.prod.outlook.com (10.255.237.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Tue, 10 Dec 2019 13:07:54 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::1900:6cb7:12ff:11c]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::1900:6cb7:12ff:11c%4]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 13:07:54 +0000
From: Sanjay R Mehta <Sanju.Mehta@amd.com>
To: Shyam-sundar.S-k@amd.com,
	fancer.lancer@gmail.com,
	jdmason@kudzu.us
Cc: logang@deltatee.com,
	dave.jiang@intel.com,
	allenbh@gmail.com,
	will@kernel.org,
	linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Sanjay R Mehta <sanju.mehta@amd.com>
Subject: [PATCH] ntb_perf: pass correct struct device to dma_alloc_coherent
Date: Tue, 10 Dec 2019 07:07:35 -0600
Message-Id: <1575983255-70377-1-git-send-email-Sanju.Mehta@amd.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MAXPR0101CA0004.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:c::14) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7befc626-5bc5-4468-a67d-08d77d71f7af
X-MS-TrafficTypeDiagnostic: MN2PR12MB3934:|MN2PR12MB3934:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB3934F1B7D571D2E94E787A5BE55B0@MN2PR12MB3934.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 02475B2A01
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(396003)(39860400002)(346002)(136003)(376002)(189003)(199004)(186003)(8936002)(2616005)(6666004)(6512007)(52116002)(6486002)(86362001)(4326008)(478600001)(2906002)(66946007)(6506007)(26005)(8676002)(36756003)(81166006)(5660300002)(66556008)(66476007)(316002)(81156014);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3934;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9h6NvTAuSuNFpB953cv6cXnXQtx8tDbItafwDIs8vESpPNT11rOk5PVdAVcFCGJZg1Cfz6Zicab9pcJsm728G7E/3lGHcy2ute18rftEmoYaYC8cyKpMXtFdVadTYHg5VVd96VGvBV9D4cGLy8DBqrckvqXksJGTFQG3ldGvkFmKaDTZFhRnKPVQSsfPrZP9Eg92p+n3VS9mE3TPQv21iXjTvhTW6Ur68n+ZhnM455iPKYyQd0o8FO4emgJBySGjYiKQsdE+mxu/NSUQHg1OjkNXOoW4BCIaMb655MmZxTiNRZ8EXGfFGbBOzbVl1Z4v54LR7xn95IqwK89JWy65+XLbe/oOdnF7kifzNSijP/mwL/gx4KwthZ3skK9LVg2eGkRep858efOX7jBs8Ue7CSnn9IL+3Rp6KOEVpFLKIXaY7F9NPO6+H9kdCsqfdq1E
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7befc626-5bc5-4468-a67d-08d77d71f7af
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2019 13:07:54.0762
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TETFvItKW9G1/vL3Ua/kXE0YaJGH8lzJlDZXthxDH3uhI6E+HgzjaKpZ6En+t2Q8SFIIMSYESaXoFJlEITkuQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3934
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=nuUWiSq7;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.236.52 is neither permitted nor denied by best guess
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

Currently, ntb->dev is passed to dma_alloc_coherent
and dma_free_coherent calls. The returned dma_addr_t
is the CPU physical address. This works fine as long
as IOMMU is disabled. But when IOMMU is enabled, we
need to make sure that IOVA is returned for dma_addr_t.
So the correct way to achieve this is by changing the
first parameter of dma_alloc_coherent() as ntb->pdev->dev
instead.

Fixes: 5648e56 ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
---
 drivers/ntb/test/ntb_perf.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index f5df33a..8729838 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -559,7 +559,7 @@ static void perf_free_inbuf(struct perf_peer *peer)
 		return;
 
 	(void)ntb_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
-	dma_free_coherent(&peer->perf->ntb->dev, peer->inbuf_size,
+	dma_free_coherent(&peer->perf->ntb->pdev->dev, peer->inbuf_size,
 			  peer->inbuf, peer->inbuf_xlat);
 	peer->inbuf = NULL;
 }
@@ -588,8 +588,9 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 
 	perf_free_inbuf(peer);
 
-	peer->inbuf = dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_size,
-					 &peer->inbuf_xlat, GFP_KERNEL);
+	peer->inbuf = dma_alloc_coherent(&perf->ntb->pdev->dev,
+					 peer->inbuf_size, &peer->inbuf_xlat,
+					 GFP_KERNEL);
 	if (!peer->inbuf) {
 		dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
 			&peer->inbuf_size);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1575983255-70377-1-git-send-email-Sanju.Mehta%40amd.com.
