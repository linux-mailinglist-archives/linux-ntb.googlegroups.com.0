Return-Path: <linux-ntb+bncBAABBSH5T7ZQKGQEDNQAZDI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9B61809A0
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 21:55:37 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id w2sf4113qka.4
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 13:55:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1583873736; cv=pass;
        d=google.com; s=arc-20160816;
        b=i7huf90buc6EfyDe8e3CJ3vzS5CmdOcEWQpbcBquly2QWtqYWHQsiekTQ5qM5dVKfa
         k35fxBVR0Y4SpaqX9kM3of4WXyndkyE8rwVAacrMZnC7AqM1JERSx4TCC1Qfe0PzhFJ6
         Gp327CrIxKq3yR+oOFU/4JN7Ll/UNDvbEC6ByGw5BZkxXL1kxhLZOiPVnafrrFKCzwSc
         ImJcVfn5qSYW/NlaNLTSW8nzk/lifGJ+31zb4KoTUyfa+SPNs8tRTdcG+P474mSGYiM4
         QheqyZBNhUfJTtxmg3KofR/YeVBe5X2VGvB+3epMeCOgBVFPyY5rNpHELo6bMhzydZZ7
         kcCw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QSdPbecDWvTIGzJyz+JX9a9ZK/A4O+tLXWeaEIScmQ8=;
        b=uM6Y61UepCkZ8fGNfjJ3sZnb7SWYHkD9fh3VAxoRWPCTskEHlIsKn1nQSduuvVVR7H
         aXjrWWtJbuQPeOQ5oeP56YCUY9Dx8vaBbpjLDyWelNA5CtsoQN5cvc5eIlDG5kTP82F1
         ZmQ1UF3P1gAvqCJm/llkVrq3f8G06DzSkd1H0bkngWg3NkxD01+r/ShRKGRHTyn+M+ro
         2zXbeP8fwERZNKHk+1HEnGDoAAwTBmeDKyFN6p5/aymWohkD5qnjA1oa/KwsLy7SyRG+
         PHdYFPPT20ZeGygUyAOQYRoszhijvBksM6dPLxbAZLUI72oqy3ZATVsRCTjTP0LZ6KKf
         Onow==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="dhw9Y/8Q";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.69 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSdPbecDWvTIGzJyz+JX9a9ZK/A4O+tLXWeaEIScmQ8=;
        b=k5TclaMzpvdBSv2d6btmvdZEAX/HSs87rVyWXd29vPdAzNcvigJRSMBtjzufq0e/XP
         Vm6yRhP2F8I/TUKQL4gL9HUKysCeh8EgwbVYa0De4DZWyP8mSVVd4fclITHE9nQ43hsL
         ImseWQiOwmdLHQpjkoiHxOYJYt/zpHE5eyMZcvhAuXjqoyTt+1S6vo2gT/8AEZoFcAEV
         r3tH91vXy+5Z2WZI1GOkRb5ium259FIm09PzFllam3JT4/MYyqxzQiGVmxr3tv3qL9mZ
         DI8CAk3IwS26EHxqoSjk6gvPdD1v+vAcfbhzdshKZdujMkjVE6kj2Om6Yyfunyk5CxuH
         XREQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSdPbecDWvTIGzJyz+JX9a9ZK/A4O+tLXWeaEIScmQ8=;
        b=Hp4Bh2ihlpvM1oYvNtu9IZlK/0mnlkMUg/KUwaRdz0j4G9cvi/gexdxdPGqzxsQUMS
         sXlNdc+FqqH9neNFaPMSbOhdLcz0tRM1RHTX7Qr4ZKGneOKQpgTjXKbTGXIJSW4c5L2h
         y54d5jzlUwR2XiDjheX6UnrwA/+WHUkEz52pSm1xX7W5MQ1VtsUW0iVq5PWIc1Xxhiip
         /7buvDLTm8Y4rjBOBkPjyzUw4izqzk16MEafT6tY7YXRa06D56cuwrMNZkz6tnvNAYPT
         eEhKlujOGhK0N9k0pKlO7xpC5T3iTpUBRvZjI6tb0js1w35sT2VjHiuL6TjAfxiW9edF
         HQxw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ21fAjzZi+gXfwYNuNU33owWTDkPyWZUA4VZQoDduYf11MToPMw
	0GpvoObpr04a9M2Hhsa4QHc=
X-Google-Smtp-Source: ADFU+vtu/IXFYlLA6D72TCLOOkl2nJmnl8tCodrDTyM9YYT/ID2fqvHOp6FAJDC3t+1u8DJVpkxZFg==
X-Received: by 2002:ad4:4d54:: with SMTP id m20mr54071qvm.173.1583873736833;
        Tue, 10 Mar 2020 13:55:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:a603:: with SMTP id p3ls1844081qke.6.gmail; Tue, 10 Mar
 2020 13:55:36 -0700 (PDT)
X-Received: by 2002:a37:4254:: with SMTP id p81mr20256714qka.98.1583873736433;
        Tue, 10 Mar 2020 13:55:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583873736; cv=pass;
        d=google.com; s=arc-20160816;
        b=I/ISZadVfjH/tS35QzDCK9B2M09RsWedMP8oTYUcITeKB0LLvr6HPbNFt3SHBYV5AW
         knD2HHq4TmGY1OYz1QN4qveotslYoqSgme0LvyVorpa++u4G8gm588pHbMDhOY5Np1Sx
         grrf6CteHZPoUDMyhikOrnOK8p/zC5MOjw1hXiDWygvgRvuorDFk+A/65w3TVpoKklak
         3He18/5Sl1/4aKfQtE43cDFIC7CKO/VCFAInR/jAYzHjLD20iwZA5GC/dI9zYxisuYn4
         1h2Q6AiUsjpAshmPCG72ABjfuSoZ/+jIPujjQsNcnRUUA1OoUhro+gTxUiJLyECSHMN6
         kefg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZxuvIhzW4A+yVAThE6YY5+0KzdACmu3Yh6KN9k+qD2U=;
        b=pflv1wnp0IO2Aq1Vtmq4DGLeAhitk+d6k8dfjO4/1G/IRFuhi+SGtSEC13VkeRXuL1
         Y/gbcVwuWDFfwoC0NBijSekIqNWsGjR69aHVeT4WWzatiylgmE5fDFpSR4htITRMLGBG
         LUsiznckvzmFSciE4/X6auOdwwxL1vRex4hH3LG/NTbhkenFuqswH+JObk+gtY2c7lvw
         cNrTDAdsSs14TX+5IW2SCtEFW9Rs1WZZHZOvSnNH1MwOcv+knXtnHCBhXCAQMTmkz4Jc
         bH6cjTBZlyZoBqm8dNNADp2kCodmMi1qO/gIGU7PIDkD6pSIW+MsBgvxiitMKgEFj2BD
         QhLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="dhw9Y/8Q";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.69 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2069.outbound.protection.outlook.com. [40.107.93.69])
        by gmr-mx.google.com with ESMTPS id g23si802032qki.4.2020.03.10.13.55.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:55:36 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.93.69 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.93.69;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UWv7naXCLtSlrsY3j0Q88XmqXXbzAYJXkU5AAB6Gqt/rVHO3AkFqWnrT5+Nxfwfaf5yujMLq6CXtanNugavnLurAE2V+/EEhKcOd6Ye9rfT5ofR22img3UBCami2xZvlheCmHacm1D5Eqn4WXY1VEs/+2CtpC7pKsBtBfAeohGnqtQsnroJ04cPsBFpfsZWm/+yhUi2cd3kSMVTghKP+UpEpyi2FUTWk3DRbGhe7NX2KzRFjKUGTdOgyhO/IVYQjs1gWFm/J8CwfBc45JOPydev2eje4U2NnnyPW/dZmiyVPX/z4JeiwehvDb7ydIljr4s3J1k/X6tyJot8oaZFPBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxuvIhzW4A+yVAThE6YY5+0KzdACmu3Yh6KN9k+qD2U=;
 b=KBf3TEzhOsKG8B0IpWiMHOitpCuBSCbd0OhMDDO1CpinJ9cQUfB0F2+6egW+A5Ii/hTuS/aJRL/0+1tYYYG1GCFp4GdC27BcdYn1VaHlkdXSqkbA01fU75KB3SPeD4fXLK5uP11F/WO4aa5ku50fSiWKyVJ7IA5v9+yPCmUDRFrkKMrZVnThVkz145sZdKwg9y257MPup1lA56urlsizhudgOtQXtQelDEphi/1sCKey2tQuZ7ZPrqQ0A0XgA2hGwSWDD/kstDeKp26JUyRI3/N7oHqvc8BE82TY9Nt7QF0i190cH7vuyjkAOOVuPwe5pL1H0RAHrxjgErnHef6W3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (2603:10b6:208:d0::22)
 by MN2PR12MB4031.namprd12.prod.outlook.com (2603:10b6:208:16e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Tue, 10 Mar
 2020 20:55:35 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6%2]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 20:55:35 +0000
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
Subject: [PATCH v2 4/5] ntb_tool: pass correct struct device to dma_alloc_coherent
Date: Tue, 10 Mar 2020 15:54:53 -0500
Message-Id: <1583873694-19151-5-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::24) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2793.14 via Frontend Transport; Tue, 10 Mar 2020 20:55:32 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 08a4efae-cecd-451d-7682-08d7c535611b
X-MS-TrafficTypeDiagnostic: MN2PR12MB4031:|MN2PR12MB4031:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB4031039074D3C5357660A652E5FF0@MN2PR12MB4031.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(199004)(189003)(86362001)(316002)(66946007)(6636002)(8936002)(956004)(8676002)(5660300002)(81166006)(66476007)(66556008)(52116002)(7696005)(2616005)(4326008)(478600001)(6666004)(6486002)(2906002)(81156014)(26005)(36756003)(16526019)(186003);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB4031;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mDJK4UCisrzWPmc5ykChaL/cedrkRYiG+bzL6GEf8Qs1I7Q8c4rhCGiZeqDSDMGhZJzIBjD0v1BsXOseVjFQj6Lfn4Zm5DWZf3vDMqfYngcIJZnk08OIEUfMlSrEbjlw/QhOIX07SOrP3DY3ZJwXamEPpZdsowtR31Ltx9phy+NSS10+KS1k/fEQpGo3CoyfM6JR/YgMO+xuWCMthtcFJCxFE6DO5Gs52LoErqWAjARm2P+gpegKU9VVCb0YT8xs3Kt7JB+UJ/Qq/Ichu6lRQWyP09ElWbK7lqG/SPa03fzblnyQPJ4SjIN542xrablcMBhxmqG9iOjXDtz/N5i/8Xy2zO664gSB8Q6K2Vhntk9SGpm1lP9NT4PzLsMhTJKEtfTgyNWj+NXX3RAPZLV1R14XrljiJpN6Ers/Drd2K3q44l6GJCZlmSHCFheBIcRv
X-MS-Exchange-AntiSpam-MessageData: 2mP6sPbCnnB7l+oqaNkTpFjZ0vP/4lzZ990/0wsvJd6Yn3Rg8CZsZBHc+nNv4Ga3m7OrS4xYI9ylQoCM32frwpiXb4ZAfvAVU/jl3oTYdVYrdK8iyixIROXdRL1S4zvtWbTqUDuTAiaris+Q8C7oSw==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08a4efae-cecd-451d-7682-08d7c535611b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 20:55:35.0841
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6itHnEjSysdKWEdCddnOFUJ1rIsn3xnSEUGdoeQHyNoo5TvdrZEgmsid/NTXpGBuFw0Nyuwy6Tcy4YK/aJWzIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4031
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b="dhw9Y/8Q";       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.93.69 is neither permitted nor denied by best guess
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
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/test/ntb_tool.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index d592c0f..025747c 100644
--- a/drivers/ntb/test/ntb_tool.c
+++ b/drivers/ntb/test/ntb_tool.c
@@ -590,7 +590,7 @@ static int tool_setup_mw(struct tool_ctx *tc, int pidx, int widx,
 	inmw->size = min_t(resource_size_t, req_size, size);
 	inmw->size = round_up(inmw->size, addr_align);
 	inmw->size = round_up(inmw->size, size_align);
-	inmw->mm_base = dma_alloc_coherent(&tc->ntb->dev, inmw->size,
+	inmw->mm_base = dma_alloc_coherent(&tc->ntb->pdev->dev, inmw->size,
 					   &inmw->dma_base, GFP_KERNEL);
 	if (!inmw->mm_base)
 		return -ENOMEM;
@@ -612,7 +612,7 @@ static int tool_setup_mw(struct tool_ctx *tc, int pidx, int widx,
 	return 0;
 
 err_free_dma:
-	dma_free_coherent(&tc->ntb->dev, inmw->size, inmw->mm_base,
+	dma_free_coherent(&tc->ntb->pdev->dev, inmw->size, inmw->mm_base,
 			  inmw->dma_base);
 	inmw->mm_base = NULL;
 	inmw->dma_base = 0;
@@ -629,7 +629,7 @@ static void tool_free_mw(struct tool_ctx *tc, int pidx, int widx)
 
 	if (inmw->mm_base != NULL) {
 		ntb_mw_clear_trans(tc->ntb, pidx, widx);
-		dma_free_coherent(&tc->ntb->dev, inmw->size,
+		dma_free_coherent(&tc->ntb->pdev->dev, inmw->size,
 				  inmw->mm_base, inmw->dma_base);
 	}
 
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1583873694-19151-5-git-send-email-sanju.mehta%40amd.com.
