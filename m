Return-Path: <linux-ntb+bncBAABBR75T7ZQKGQEPUS773A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id E10ED18099F
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 21:55:36 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id e16sf3160634qvr.16
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 13:55:36 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1583873736; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cre0lhtM+CB7Wfsaw/2wZQj/kcMkr/UJROkyMT3Wlof5w3g9KcSE69lv32z7ZBDM34
         bPbgWS0DJDbiyh/G9pRmI8nR67Hu/a23mB2MKOyFDzwWHkNyI+n3FwFyn1DUW/ZfBTtg
         v1d7RcsR5DK2pk0CtE/ePEA1fOAGFpfp9AhAtBXgpkqyq593Co43ET8gvfULk6oXFts3
         prJRqpabRLg/f7DeqdmK211uo5wVH2b4rMRRNKWFKjyuwywpJnYmm38OsAmS0y/4B1HO
         7R8hMABuaNVdWayfCUqQvSB9ZITT34OfbyxAN/otpyy/jNtGZl8/xg6TP/pEjyuZg5Zt
         Ctcw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=d5T4OzQti8nL3K9EV4l0cLcQgxrl7GbubbSP1Ghz8DY=;
        b=pn/YyPYwnETvfCorRETY6ILLlQEMzNXpsxCQ962AP2eZRJWN1fdJCYJJ8Dd344wuBx
         3rqYhu96ziO4AQqg0eLpf9jIaA/Lp97+/n5r157Q3d5KPaW4dSrzGqZLS3lXuGHcEkFs
         vqoNAtOQ1fxwz3B9nbcwwxh370wMzmeca9gKXqJgXVAuDoPVsVKzG3V9excraqQDL3ud
         EYFfrYVI5hsDVZcXRNdifIgLfIyKbEM8Y2tA3oIcG1YptqY9kegYhv3DDBIA3iG7dcqQ
         MqN2d52pu4FJQMnuDsKdbovQmPIaAZqxGRwO1to0MLfAtd02OY9p/tpOv3/+83piHLEv
         AnPw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=3DXXtqSk;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.70 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d5T4OzQti8nL3K9EV4l0cLcQgxrl7GbubbSP1Ghz8DY=;
        b=GBbA1nxh9Nooiaq4I/Wx31UjnDnyMgEKhBVCMuzkcodjGHvZvzZa17xtseb1XlV16G
         LjM37xRku53iT832keTWDh8xtaA0m9UFmGXsDwqtultBkz5vDorI4dWY3t1Z634KlwNd
         KWoOFw+W5mJWxf3WBYT1iR6rWgBVM4u6EItlqTM5zQEnoYSj75E7K1obe3EdFR6JSdub
         84i3exV4Mg7ansSJBDFzYHRwYN7fjvZS7A4mq3kKDXhaLPczp/OITcN7w8DH9HsrGhlD
         uyX/n4HG6qIpQeg0z9I3feSUBZRH+sI0+h8umOz2qCg9NLcOCTIahVPE7Mp4Iln58o5l
         I09Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d5T4OzQti8nL3K9EV4l0cLcQgxrl7GbubbSP1Ghz8DY=;
        b=kEVOw7fDC5gTGTL6mEw62+kYcBFjNyN88jcz6f/5fLtuQ0ZfALziWNOwl03FJxMygf
         QdyLPAVLTBnzR8tuP5KFsUpk2n6hZmwr4BQq1ugjO0nf34FRgqflSvyr1sp2BYezqr6+
         FXEb4OD0QwNqEfcGT56rjI/kVvOI5YXT9v4O8GL1SocKtURiSdhTHgrE7frI0UWFbWMh
         y6Y3x7O9ZlpAIEa5GN9GkZ8gOP6rskGYV9kxIe4qpWYD3mGhRqIPbTi871yqRpZBPeeI
         bJ3KJwdu4DR5RBV8S6ri4n3fTZBteonspQRuvdj0Xx/HLAwvcT5L3z4ia1XtQgYfhwJw
         Fh7w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ0ilioJTKMp1dHiECILtkFwfCpLyTXzMJDbzrDYCESiS7n/mw8K
	jJ/qvr/B3saCMxPTUGZh/0o=
X-Google-Smtp-Source: ADFU+vvBG4Gr64PmJ4M6mFL+guna1Xz/y0WIYsq8z7LHQ21EPZWN42yGHtQhnnwaZY4b9Khy4XO47g==
X-Received: by 2002:ac8:7c92:: with SMTP id y18mr2883200qtv.263.1583873735748;
        Tue, 10 Mar 2020 13:55:35 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:a0c:: with SMTP id i12ls1845213qka.8.gmail; Tue, 10
 Mar 2020 13:55:35 -0700 (PDT)
X-Received: by 2002:a37:a746:: with SMTP id q67mr22146899qke.215.1583873735487;
        Tue, 10 Mar 2020 13:55:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583873735; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0DtFzKBg4ezRkFF9E5ONNjMFUnseNWaWdJg2kuXt+R0O5FiKZvscWKKDbrL7Z7wp6
         pVMrlzJp+r6PK2HL4wYbmzADAJG5DrQ1L4G3UoDq61t4n5PtBkRCo9bA01XbEp74R3vr
         Sz/3SKxfQjZKnKoVHskVUh0x++FQlr/Wa/86gWPxsf/T6VYI3yTtFhBBCGlR1VekOibz
         9XrLb4wsmboxpNgOKSm+M2cg5LICaQUCIDGTuVDYdSRaXpHOHVF7D095yrZvAsSvd9SM
         oUPmpGoscrQ+f07TquD6yQHIRNixdyamDVS9qujnEXRmDFCqlsb9Mrg/hyQx3v/vULkJ
         PjrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ukWWs60UOVQ5kGSFjRgCOvv30kHX7httY5WMgOeMy3A=;
        b=h4p1XSEkKw1QQ/tS1nM2BwmrM1Ge+aCx8UALLJWTUDDB0Bv7pinMiXsqANAKHxC9oU
         AEmNMlmeb2CRPQ8QgZ5vIOReDRdapDpTmDz77qAF1wmcPvxxKAjdqa1tNDAMtMDQe65m
         JKHjoAbbHy2UmT7rDbZLwE0TT/EVYZmY9XCcmYjmt+ai2E4w8iOFM99TXGTNkzy7ZFuz
         Kv+fU7i6+QK0zyAsXcR8RmiV+9KrHHzmNa2dQjUkBaOHFTR0fxAFRcsVKzs43qqzIO2I
         xy1wbXVUEDpPMiz81/rGazXVR5iwNS2Zq9Dl/I/AR5HlE7+whswL6b/F2adA9FCNghJJ
         oVTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=3DXXtqSk;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.70 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2070.outbound.protection.outlook.com. [40.107.93.70])
        by gmr-mx.google.com with ESMTPS id n138si496157qkn.5.2020.03.10.13.55.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:55:35 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.93.70 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.93.70;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FQpFWg9kdvy6Aj88w83fPNw+FZF6flI+2LqzD5wXJXqpn7m/0brRGoJo6Fr10HcS2FdyYY5GNZJT3epQoA1fVY0a3PeHIuS3/Qbh2p2fgQrB66giyvDwrZbp11VS5X1i0AJoCA7ggdJ28/B6kkhoIVrAbErlqM71725m0Dxn/KIkbDxwLxuE8SKeO9j6+SkX8Q2B0mO+FH8jkmFcaYIc0BADMSDvJJlrOqzyk5htuYhWo3ywVKmLYclyYX9rboJyTFMoxDa8sxlBF5FeAsd/kWriYahG6j4RszQzh+xqCBsVrfe0QilH5GvpGNIneAUiclozRR8uwC1Ce26VZK50kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ukWWs60UOVQ5kGSFjRgCOvv30kHX7httY5WMgOeMy3A=;
 b=DoKS8sWwGOQZ6OozfM/DBfs3NSf+rpVV+J/Xh6/9MIBTE0PP2oowhoVDJAKST+z8nqrFBXgbzMOBz6tvwe048ZMIMzZ6SMfBBGZTjspavCbL7HcxQ8OjPiuggfhDEK7OGXzhy8WO0duCHYMhMbdKJBb+/86xQggmTG9VeNsrpipRslcVXFlWiQRaTlI8l+hHr3RW29aTlqhgpgjqAgdlH2Yk2jTmxfPenLqGbTrtzlDNhK/SGLoDC8kykGOZnPra9BeYIWFPM+GDpkE+xQ/WSxrnOAxGR3myToDSXISRU5D1TF+0tdGKjE6H93dJIcFHdMUNxr17U/pE8B/0INLPew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (2603:10b6:208:d0::22)
 by MN2PR12MB2925.namprd12.prod.outlook.com (2603:10b6:208:ad::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.11; Tue, 10 Mar
 2020 20:55:31 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6%2]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 20:55:31 +0000
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
Subject: [PATCH v2 3/5] ntb_perf: pass correct struct device to dma_alloc_coherent
Date: Tue, 10 Mar 2020 15:54:52 -0500
Message-Id: <1583873694-19151-4-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::24) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2793.14 via Frontend Transport; Tue, 10 Mar 2020 20:55:28 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a0310aba-7ff1-4718-1f53-08d7c5355ebd
X-MS-TrafficTypeDiagnostic: MN2PR12MB2925:|MN2PR12MB2925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB2925FCC268FC6799999D8926E5FF0@MN2PR12MB2925.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(346002)(376002)(136003)(39860400002)(396003)(199004)(189003)(2616005)(6666004)(956004)(6486002)(316002)(52116002)(7696005)(478600001)(8936002)(6636002)(36756003)(26005)(16526019)(8676002)(66946007)(4326008)(81156014)(186003)(2906002)(66556008)(5660300002)(66476007)(86362001)(81166006);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB2925;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: He9z/6d5rLTEienWCBNw1E3xLSEz6P6aXDkiDTYgaFL5SanIGppazpglIG4ha8cBxJyLUX+bYRuNHewDVX1i1Z0brn0TrnjHgIpHpAVW87j0NoUawALh3yuAunQxvuRhiN58Su9/15TMtmbcRUdCimMN0dYy/vDGsolF63ICATpMgxpKmyPg33DexPSlY7cWxNPHkXj9LCK6jLI1FyCxXFEP4pt/MulmmpuLXS8id/BvQaCvncfmGUpitsI2rAeixs6zAiLN9E1hHQR+rXd0QAQ1OPb0SC6uxWEd7XnC/6w+tsQD9UfriLiKk0bc7DpHKo3loqMPxGcrSth49c7S35YM6Xx0p5PQ5DBb2AmRLHlePzFBYmvmav/O//k7RgdVE6RVNKJzv4qtFQT3zZHHfINlukyG1WFTX8I/LUun0LfD1h4zm3NHydhhZmCczWfb
X-MS-Exchange-AntiSpam-MessageData: 1h8jq/pLA0F6F6FU6qs9v/qCid8+la2v1e3a8+W+mdurWKaPitm9gQDEI8ZbcF1EsjZVHNm9OYU0KevGLvI1GpXG49EwC6icVO+JuqY9HCOysbmxp6soC+7hTzDFw1v3D1pevjjjIkgHJe44mKPgPA==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0310aba-7ff1-4718-1f53-08d7c5355ebd
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 20:55:31.1364
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FUX8x36N74VNcN4z7h3pUSHRBvnqdeSq326gYm7cy559s8m9nQtlMD/aRkUSuKtxRcc1Zj7a5thcFIhXkSJKmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB2925
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=3DXXtqSk;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.93.70 is neither permitted nor denied by best guess
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
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/test/ntb_perf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 9068e42..c193d62 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -558,7 +558,7 @@ static void perf_free_inbuf(struct perf_peer *peer)
 		return;
 
 	(void)ntb_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
-	dma_free_coherent(&peer->perf->ntb->dev, peer->inbuf_size,
+	dma_free_coherent(&peer->perf->ntb->pdev->dev, peer->inbuf_size,
 			  peer->inbuf, peer->inbuf_xlat);
 	peer->inbuf = NULL;
 }
@@ -587,8 +587,9 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 
 	perf_free_inbuf(peer);
 
-	peer->inbuf = dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_size,
-					 &peer->inbuf_xlat, GFP_KERNEL);
+	peer->inbuf = dma_alloc_coherent(&perf->ntb->pdev->dev,
+					 peer->inbuf_size, &peer->inbuf_xlat,
+					 GFP_KERNEL);
 	if (!peer->inbuf) {
 		dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
 			&peer->inbuf_size);
@@ -1596,4 +1597,3 @@ static void __exit perf_exit(void)
 	destroy_workqueue(perf_wq);
 }
 module_exit(perf_exit);
-
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1583873694-19151-4-git-send-email-sanju.mehta%40amd.com.
