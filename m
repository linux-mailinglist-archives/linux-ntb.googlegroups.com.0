Return-Path: <linux-ntb+bncBAABBB756TXAKGQE5WAC4LY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id AF06D10A0EC
	for <lists+linux-ntb@lfdr.de>; Tue, 26 Nov 2019 16:02:32 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id a11sf7962714plp.21
        for <lists+linux-ntb@lfdr.de>; Tue, 26 Nov 2019 07:02:32 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1574780551; cv=pass;
        d=google.com; s=arc-20160816;
        b=ahac+JR3tlFNkeXgKmkR7e2MH5lJdN2yIuVCMzNvWCXGk2xMbBjJswHeqpCFnIYGxy
         4DWkFEtY7yCDJPeaWlvgHbC5OMhgyptoF47zP/RvCQGNXE/pLB5FWDdEGvlYINMKPRuO
         MnmPd5q9D2aQkaTjG2kC30yMZ0DkKntDIYedcx/MZ+U1zuAX9jAsg6eUwRIFjS7IF0+s
         Epvhrf1DPhWh1KMb3+2j4iBPsQlUSlgQAPh/ijBSNki2I/z5IxiE0EsOghzJCngs72hF
         atH45Ehf0IuGXaQZFX/jBn5rxI18XmTf9QC3XUrGK9pbABMONai0Q9ZxbuBFJVQpuUeV
         m0cg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=LeXwHh0TrMiaSSFrBM/uRfLgkH1NgnUCMK6FC0m3Uoc=;
        b=GELy0dwP1He2ByGgiDHwtNcorWQMYiaV2q1Rne0T500NRae0iH/TDqIff1AYSht8QQ
         8wl5pebPu3C+7FW98O+y1tdMaC5z6Du2ZDpMgG4rl6XgzAj9tYanfIQEWnGUvzQTYXH2
         utC6sylL0Vvg+bOis9YzIecWnBk8T/MWpr97nHAMfy0mlDENvFfzg3JsxkUjaL5wakBB
         IJ4id/QlOMMaHXBPr7uHT+rlytsUncL2bB2hdu3d3uY/nc1Poknaa5N95+XhEY9Rvl7G
         Xrx7HHFZX7IGszAejaF7/XNmjZzWRNQfjPLVjWpC9z37GFYLH+TNwm6XUeN2o6g7m1Te
         lYvw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=hr+cdaiU;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.72.46 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LeXwHh0TrMiaSSFrBM/uRfLgkH1NgnUCMK6FC0m3Uoc=;
        b=o+dd5ZzI/eG4W0f9m9s43G5yRxD3vstTSa9krelOgcvKXidjfX3lAiTeqtNPJsrfFe
         apTtSTQXMd7N5DqQs7VkpHNUuDipFUc3JbZ85oaca7CQ15wWlG+HKM3NpKyaXIOviF0n
         56gu0vVBZVVIT1OzBKkfscTzT4ks4AT/e6fvUW6NB9DVrMXF6UZME8VNDu+ahOxNnaB9
         JQSwtaMIDr42gRJG+lFmsNlHCPY7rh/7pBcXIXMtcaaoul4IL/v3jIjuVs+yv/kRzYjp
         ATyVh+WnN77PiIKR26R0N8liNye7h8PbYHguIo5CCkpLU/ZZ70bjwkXwarjlmLBwBwiK
         aPPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LeXwHh0TrMiaSSFrBM/uRfLgkH1NgnUCMK6FC0m3Uoc=;
        b=mW3599b5gNL7Lg1Cmjz29avRZxDTOQK+Lhl7nHIbsvJUMwO0a95vnyUQpffGUkrSiT
         taJk1WwRq/hTwyYjENmWfUGO3qo2K+f3x1E8q19jklzyAqjHV0gGZ2xkSUoF+ZFFAMGw
         q0GOGYjd1v/3HY0j9Z6ZZc0mOAI2w2YQJIjMk0lM2sQ5RF51aYhzL8wmSkqLMie5mz4b
         0BlkQraRqfHo+1ylFxSzkD4C5vXHRZwvU/UDowPTkGa7LY62GC0fQ8dTqCpQDaDcKtQP
         o4FQ23VlcRhSTGGJNGHa+hSGP5ivwv7E9Nxl0L3xXwwqC2xIxHG3FBz0zwDS/RHuxtXl
         u6kg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUyyNty6NjY8O9NMwy7l5URslE71W7MtfGLg7zPx/RxV0gOBTbf
	bKPkAwsgEhMkYkN0hG0oKak=
X-Google-Smtp-Source: APXvYqzAh5w10Ag7Z0s32lqQZkGX+uF28i5LngF7Hfh/KuKoiIs6/baRorf/w9q12pnK6SAIVC159w==
X-Received: by 2002:a17:90a:8995:: with SMTP id v21mr7562770pjn.109.1574780551298;
        Tue, 26 Nov 2019 07:02:31 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:2e08:: with SMTP id q8ls948462pjd.0.gmail; Tue, 26
 Nov 2019 07:02:30 -0800 (PST)
X-Received: by 2002:a17:902:8a8e:: with SMTP id p14mr9536033plo.72.1574780550876;
        Tue, 26 Nov 2019 07:02:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574780550; cv=pass;
        d=google.com; s=arc-20160816;
        b=D3up0EU5Qwjpy5gF3LXSFy0Dz2vGTP/ofKWRqmf2+Zt43Rztu3Qk0tgx3I9pd6cmgf
         p7Hwu2hWq+VYK/fbybAcD8dgzIv3jO/k5Qm+NctHfLgtt5fbOPDvUtIy7oFAAnpyKG0R
         uczELiiVAGljlO8Cz63y3yxiM+fC70JJbJAi4uvOhc2XitEcMPhmorgcn0ufvMrCfE7U
         Xu2wRlZU/uVJmORATBakBtxfpOx3ptHUxeDbR4njRW0d33dfAuLM9r5TEz0Z6dHceI/x
         llEMuIycscDosyGNQMm1WNNH4z86GHiEWu2YXdbw5jeT9RvXzrQk5lzs4x0X+BWMkE9O
         sEUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ybb6ak0lL/TnI7k8HEVFxKgIOsXWvEhizwQp4rOuq68=;
        b=IDACk1zjJEJjkWCAOhVQf4py3NfgwF7CSB+rFaG0gSfYIA+DFxSFWc0sh6BTwhJw6l
         pN0OvRbv3hRW8xNeLT18Mhg+wADI9udze+mAxersqbCdVY2yt/mLMytZZEbWfsJRJgCJ
         YxmjkfhWCbxZ47A4/8GYCv8oJ+t1FAlEkGC0QdzbGN20Edk8qiicnJTeHh9CFVzFITHw
         0flMllqLO439jjbr/wQjnJ2Ujk9fcxO04EQtwLjtabAyS4f0tEmdgKwkI0XB7uPN4tNT
         Zb5fc3z1IdD/OnyMb5OwiLLn8kcIBcE2t8AbnqWxGr/PaCAHBXAfPkSXYkN16kB2QoGm
         W/UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=hr+cdaiU;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.72.46 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (mail-eopbgr720046.outbound.protection.outlook.com. [40.107.72.46])
        by gmr-mx.google.com with ESMTPS id m11si63086pjb.0.2019.11.26.07.02.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Nov 2019 07:02:30 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.72.46 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.72.46;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=imGfv7f/YVQS/7A2u4mDLcMhXYHkxg4K3XceZlUpp3ZraMhC7h6scPHJov9SeT6/40dInbLPSDjyFWtwOhBl9vaK3XMi/9ytRjRYEjJfBa++TYeQCi+LHhtSjp2Dl7pfTysmQP11Nx6jsr/H5hHw+pKlF3zhSt8udcNzhLnmRpVY9YWa3bt7qt+bY7fU/ocy4/xbSmpB/SrXQ1QHh2QQ5T2NahgqzjR3Yjvy8ng0nPE+0t85OmLWp3k0MczFG7XI/O02sFE1ZozXBZdcZ5z4FCmkzhRj2BeWPkECt7W0kFduHVshHvZStgISHtXI2aKHnE6lcBk3Ttt9WPd5BUBVAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ybb6ak0lL/TnI7k8HEVFxKgIOsXWvEhizwQp4rOuq68=;
 b=l/i1JCP6w1j7FeBps3m9aI0tervL9RqmS63t2itUNkOr79WoFLifYAiaV09TRKTtAsc7dwCV9BvCF+YRrwr946yelR0uB6dDbAcdr6e14UhhI4/57/fVG7JXCSn3JPh7xmjrXJxZ1CMzC4bE4xKulWEphFujs2D/ec5/Djs/GkH0JWtAHhz5y++Tzmjm08e4c+5nayc9d11tUVxm8QF9rWveH8irHeajvFOvbuiaRzoD7EBhuAUlgl+DR/hk5rXsiHGwbsmmB/MWdfCK2ReuIszkAcwlFi4BwkZ40dxgm5elQI+e29QmcIb2dZJBLh3JtOlLBq6LLlUngnXg+faSkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (20.178.244.22) by
 MN2PR12MB3119.namprd12.prod.outlook.com (20.178.242.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Tue, 26 Nov 2019 15:02:29 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::b927:9d83:f11:941b]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::b927:9d83:f11:941b%6]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 15:02:28 +0000
From: Sanjay R Mehta <Sanju.Mehta@amd.com>
To: Shyam-sundar.S-k@amd.com,
	linjiasen@hygon.cn,
	arindam.nath@amd.com,
	jdmason@kudzu.us,
	dave.jiang@intel.com,
	allenbh@gmail.com
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Sanjay R Mehta <sanju.mehta@amd.com>
Subject: [PATCH] NTB: Fix access to link status and control register
Date: Tue, 26 Nov 2019 09:01:16 -0600
Message-Id: <1574780476-4423-1-git-send-email-Sanju.Mehta@amd.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR01CA0103.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:1::19) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b7bcbdb1-6fca-47fc-68d5-08d77281a7c7
X-MS-TrafficTypeDiagnostic: MN2PR12MB3119:|MN2PR12MB3119:|MN2PR12MB3119:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB3119E3C933D8979776347BAAE5450@MN2PR12MB3119.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0233768B38
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(199004)(189003)(186003)(5660300002)(66556008)(26005)(66476007)(48376002)(66946007)(50466002)(14454004)(386003)(6506007)(51416003)(52116002)(478600001)(6666004)(99286004)(305945005)(7736002)(16586007)(316002)(2616005)(81156014)(86362001)(66066001)(8936002)(50226002)(6512007)(47776003)(6116002)(4326008)(3846002)(6486002)(2906002)(36756003)(6436002)(25786009)(8676002)(81166006);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3119;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fz8jzWTL8IlYLnTDQP51i0t+0LMkGpKAvY/ZbNHS8Gn3S311jDFjqSqTRqHLSVn6cVscsfSOdtnEUPtG4vF69gTIFlUcqbJgbtr4m4nPsDzi0up8+m0Ig8/VYE4YNjxmWKqgIzXSBSaNjYu7ZZxFWoiMlbD4WhTrceOTK/BVml0BvCh+V+21xH/HsD0AyWV9GLlBazBnCFHQvj0g6ICMPfmYlGBxpgiu8QIaWZcosu4SrCd02yeaoAaA1UbzXl40qhRHlZCQy0eiuSwhoBYRMtVEmP/eD+WQkmYaQjL1xaGerz6gYWW+NdfPCEjBagJroUGeQdhODPTrzJSO2NaQhK+mY6OLMUgHDlwd0hEiHOYhaIsxnaszCIfc7gzT26TsZfTr2icCdbT73ninbmgSuIp2QKixSf4EC15Is+zCFQFivsUWIFAIYIqffHvvXmIc
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7bcbdb1-6fca-47fc-68d5-08d77281a7c7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2019 15:02:28.9454
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3kBnLU213OxhIstOlDyV/nB0gjmnS9SYpOPgdLs1v0fmVnkzswXMfaejGXeWTd3SDnboE4fJmE43e+HYuWHeKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3119
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=hr+cdaiU;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.72.46 is neither permitted nor denied by best guess
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

The design of AMD NTB implementation is such that
the NTB secondary endpoint is behind a combination
of Upstream Switch (SWUS) and a Downstream Switch
(SWDS). The link training happens on the SWUS and
not on the secondary endpoint. So to correctly
return the link status on the NTB secondary, we
need to read the link status of the SWUS.

Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 45 +++++++++++++++++++++++++++++++++++++----
 1 file changed, 41 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index ae91105..758f748 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -842,6 +842,9 @@ static inline void ndev_init_struct(struct amd_ntb_dev *ndev,
 static int amd_poll_link(struct amd_ntb_dev *ndev)
 {
 	void __iomem *mmio = ndev->peer_mmio;
+	struct pci_dev *pdev = NULL;
+	struct pci_dev *pci_swds = NULL;
+	struct pci_dev *pci_swus = NULL;
 	u32 reg, stat;
 	int rc;
 
@@ -855,10 +858,44 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
 
 	ndev->cntl_sta = reg;
 
-	rc = pcie_capability_read_dword(ndev->ntb.pdev,
-				   PCI_EXP_LNKCTL, &stat);
-	if (rc)
-		return 0;
+	if (ndev->ntb.topo == NTB_TOPO_SEC) {
+		/*
+		 * Locate the pointer to Downstream Switch for
+		 * this device
+		 */
+		pci_swds = pci_upstream_bridge(ndev->ntb.pdev);
+		if (pci_swds) {
+			/*
+			 * Locate the pointer to Upstream Switch for
+			 * this device
+			 */
+			pci_swus = pci_upstream_bridge(pci_swds);
+			if (pci_swus) {
+				/*
+				 * Read the PCIe Link Control and
+				 * Status register
+				 */
+				rc = pcie_capability_read_dword(pci_swus,
+						PCI_EXP_LNKCTL, &stat);
+				if (rc)
+					return 0;
+			} else {
+				return 0;
+			}
+		} else {
+			return 0;
+		}
+	} else if (ndev->ntb.topo == NTB_TOPO_PRI) {
+		/*
+		 * For NTB primary, we simply read the Link Status and control
+		 * register of the NTB device itself.
+		 */
+		pdev = ndev->ntb.pdev;
+		rc = pcie_capability_read_dword(pdev, PCI_EXP_LNKCTL, &stat);
+		if (rc)
+			return 0;
+	}
+
 	ndev->lnk_sta = stat;
 
 	return 1;
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1574780476-4423-1-git-send-email-Sanju.Mehta%40amd.com.
