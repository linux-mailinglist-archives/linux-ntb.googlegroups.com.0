Return-Path: <linux-ntb+bncBAABBPH5T7ZQKGQE42LHAOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id D896318099A
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 21:55:25 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id l27sf10473qkl.0
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 13:55:25 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1583873725; cv=pass;
        d=google.com; s=arc-20160816;
        b=R6k/xhM9Te6IIxGEiK155xvCUldSOghYgyL0QHAZVgod35BsBSck137LzPmgwLl8tm
         dqOeBFBz+Qm7VYPBD22q5c8jqrTtPchFspcFRiaklk6H7MBSuTrt70zKwFnT5+1GSy3V
         K7oQthn1ATvqr8kClxxut9fMa8QfR0yxM5CvBgjxxP+9empvshKUU4Mb4EKytdrqzskh
         lNpOUQxVEEzexveYwLKZSbabJUpu+6oWWbnkfQvZLOufwJWFTlvXY4pKGvqsaucTV5qP
         i5a1fPdtutqSvp6VKB55EzdQvf/oE0B82+Dm9UiP406J7pv1nkzzo/KfKTmYjy0jNqDD
         3kwg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Hw5HzaVBW3ycQnnojpPXzbpQDTnDVCWUOOnmOVD8tcw=;
        b=FdV5aAEqvAyux37w7t8ER7VZhvBip6Jk7gtdVADS07fEYwq1gIFGygKW+06y0D5RSf
         A028W+cLGy5j7FFBR3SM64Jbvry7Sh1k8Z2vKdjIylJXPs0sWxM/odInU04JG/cTT/lW
         ACbAiU23GekvwA+cbX/bqYNVdVsduQg52Ime7T8lNGyCVtGjHdXfeq1BbIY+apLNok63
         1aIYsNdM43yvHXgWg6+qddynEilRzGCWvjWnlIdzyjiGS/9COm3/Um8QPe6OboUxZbJS
         7kvu0idWqRaBEl5IBAmE5h9znxFzobxG3cOukHW6JMU5NIk5/2h7u8yRtv8q6hVR2EV0
         kF8w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="IBp8c/r3";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.43 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hw5HzaVBW3ycQnnojpPXzbpQDTnDVCWUOOnmOVD8tcw=;
        b=tPv97iyXodFv5JxwMNkTzdCsbIfjD7yTpRWqFrq51BIaj5SUUAOR5JMo8/GGG/NrcE
         u38ou3aSW4mTFWzKdrc250cwXUfMhTNOg8zdrBaYDb2qZQyBzXl54Cti423pNK5/H8xO
         Z3Xb+6WRPWzvImFExjjSQ6XCfWxmVU2GKQNCnshcUWBln/abGevOvERUYT9qZyImVbhC
         weV3Fxg46PAyTuwqmbmxfCXpokBcgTdOZB2dvgCI15NoYLcyfVpgzfbPd34Gek2armfd
         /EU2oiwMSQnK3tHR+imjX2rmldf+nbMljStP+MXn3gqfUpw4jzCWt1GpC6PefhOxtrrS
         L+0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hw5HzaVBW3ycQnnojpPXzbpQDTnDVCWUOOnmOVD8tcw=;
        b=Re4KR7s5t3ucS8dmr7mIrsJIEy1ZGfnoPjihzg9vI3yNWgTfNR6bV+hbhE/it5J/DO
         jO7yp9fNMtPv7pfZIaQgQXdxspfGSqAqB29zAPA4GUP5TMAyYmQbSR0OFundbljL8ygc
         /PY11KJ3ZMWHbv6W0MLRf/RoHZpQwuOdJjLjQ91Nn1Uf6oBYGGJ5jRsiegNHCC3vCxBG
         CvQl/VquE3Aag4ssY6jZ0WXJj1vhGD314KbWbXmMehzAN9Hd362V94WRXaBZjjHsEMWS
         +desHBYxQcN8I9g7fKs7hH90/RbIzwggT42dS0sdEliNyOWvZ22b/SWGzozeWS52a5RR
         9bjA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ2lGdqOUL7jTvkEDTvloFeMzQVoWxfgufxwByWx353gHDkxnYCx
	vAwM49eqhH/B8lbiO4WsZ8k=
X-Google-Smtp-Source: ADFU+vvn+FEMboLfErcC4Ht5wCwezyZ+PobvjuWPX7Oqm3s9Y3pXdpfDnZ+vvsTvMUA/VzASz8G0NA==
X-Received: by 2002:ae9:e205:: with SMTP id c5mr7714574qkc.468.1583873724776;
        Tue, 10 Mar 2020 13:55:24 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:5057:: with SMTP id h23ls24712qtm.8.gmail; Tue, 10 Mar
 2020 13:55:24 -0700 (PDT)
X-Received: by 2002:ac8:4e14:: with SMTP id c20mr11063160qtw.141.1583873724230;
        Tue, 10 Mar 2020 13:55:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583873724; cv=pass;
        d=google.com; s=arc-20160816;
        b=aPJ6Ueb18srXNBxh89wbb6WScpyw3ffbW2C93W/POVEBlNFGlM3eq/QPjz4UIq/SFV
         7yftlhsN8DLF70hO2DS3yVF8v9gVCGp5XOXq3RbJJNAmvGy2tFApxwpxeU/nwtKb1cK4
         v7u8rcrnFyFvJMhqPhTPfwYvEVsPdrD4g2mcTPEKpn4mZTuytsWx57yrIRahN/hH3EJq
         go6ruWLt5eLJvuYgc5Xqwo18SE6cgGex3m/zj4SfkCApRiRWOZE4RwlBBe3G54oXr3bx
         E8wGY0tev8d2HDwRnSllPkXCj1ejJ0Fal0GmBskM++nZyLpA/M9FTzpscRk56uNjv6TQ
         H7Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Izgrxc5QjnA4+TiLDvjkaJeiODmSdJxaxz5568Qo+Sc=;
        b=EUOIIsfomx8fO89phsIAZzHHNPytt5MT0R5WzUDtYvZXbG1LILyqVilbXQxMnibZE1
         Dw9SREQyFPa1wQs8iVXOn1SEdhxoNwalGX2DtIkMojSzpdj9VSVn3r7hOn1Yli3D4oML
         GSnrRs7RBY+exBa3sHL5aETp8ryTTBMbusV0f9Eqn8RdnhuZn5JXvI41/49Pe6b3PMgU
         2bDi1acq1ATd3hpV+gvU6IF5+ycTN/Xl3pZPDizxaYP5htnBEet6kBa8ChioMAY9OXqC
         j0QAQ/67CNxAbW4Y2BmAgU4NC7CQYu49GAkKvDYrgmwg3XLUCA4/f7TnZ+iu02q4sCaj
         K08Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="IBp8c/r3";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.43 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2043.outbound.protection.outlook.com. [40.107.93.43])
        by gmr-mx.google.com with ESMTPS id 198si780256qkh.7.2020.03.10.13.55.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:55:24 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.93.43 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.93.43;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A6VO3JxVKxtF8yJn5L+oPQf7mvTpQLQCSYgwr+2tUJYALdaEvF0RKZIXoI3KueEQ3tuZpc05lya/ACGdze1kkGbcXoAtaoL38LOa/3gavbhNl/5eLDVDyEh8fW363kc3tVpMWkHj+5xQZ2/wEmq4eIwfTPBZvUaQs8ze+5XedwzRi04sde6gCZbfHM+0J6iCcXrvWYe45TDaVeOX+Lc17sptEL8k2rZMmcWQhWm3cbdQ3L9a7X1C5PKcnskXI0ym2tNfxNspN04CGgywLq8tkqXcTThag74bNJjH5+IhNfeCLXNLvGLlj0xjUOMsq5+YVu5ch7KSI9Zkrz4iBFwwHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Izgrxc5QjnA4+TiLDvjkaJeiODmSdJxaxz5568Qo+Sc=;
 b=Sh30guYNEBGrtFRrXGKB0aW8ePA6eFTFo61iMW7W66endn0p0N2AWIVOFyLHwxUpOfznsl2+BIKl3vzHmCSpaPIKo3BWAH9UTnL52KwlN/8GPxfTu/hJIaDVFK2B2movTA611cfTjietRRu1bAEfPo1xcAg9nDf5bNABmXx4CweZ5nXtAk3Ls4/DjC5BtqJv0joVG0t0IcuPBAAgSkdCCvy4ygXVS5mB8bTl2sxW6UP1BN3ZFQfO5Yr9vK7bLGiPNb4JlpSt56GP5Gryywh5V3bWvNjohUNu8NQMqEP0jfMemexrrylnFEPrWAMZJtfOL3QZBdOICx1f5ze7pCDKfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (2603:10b6:208:d0::22)
 by MN2PR12MB2925.namprd12.prod.outlook.com (2603:10b6:208:ad::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.11; Tue, 10 Mar
 2020 20:55:21 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6%2]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 20:55:21 +0000
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
Subject: [PATCH v2 1/5] ntb_perf: refactor code for CPU and DMA transfers
Date: Tue, 10 Mar 2020 15:54:50 -0500
Message-Id: <1583873694-19151-2-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::24) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2793.14 via Frontend Transport; Tue, 10 Mar 2020 20:55:18 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 187728bc-31a9-4438-ca8b-08d7c53558e4
X-MS-TrafficTypeDiagnostic: MN2PR12MB2925:|MN2PR12MB2925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB2925C29E5F5F57D53D2EB5A4E5FF0@MN2PR12MB2925.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(346002)(376002)(136003)(39860400002)(396003)(199004)(189003)(2616005)(6666004)(956004)(6486002)(316002)(52116002)(7696005)(478600001)(8936002)(6636002)(36756003)(26005)(16526019)(8676002)(66946007)(4326008)(81156014)(186003)(2906002)(66556008)(5660300002)(66476007)(86362001)(81166006);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB2925;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rg9t1sOX9vNqYhddxMKtQYzk2sVDV4CmBz7Ibel9EZMld8CmDV79KWauyjdxWZAqX/2zj4jtDyJwz8oyPDxYhvpNgll51STTKfMDLMWtnFlC+uoBbRD4TFCXxw7Z9saFes1BWGK4rD0bbrxRe5N1/FXuG50TdR43XaNbRMVtcfkW2bKLZfpKlLxM/BSZLJIJC3c40D2YDKE+23EtUG4WfX0aIbw8957r64F5lcSMIcpJO5FUHsqWE2GTWVv3FDQRoO7C7+Qn56R6Bob0no09NpwC3esYN6HWrY1qtOHyZirIzIaev6Jwfsuqi8szPPGIyoqOgcHhP1a7Th6wcLXbTASZk5nDLF/RIUKUBJDO0v2rxPNdNt/jBfS+XWI2r+DeHukLgsGG3Pc+xxaTemHfNo1X0sJYsHmNGamyIGd5elD3VhQ5XFO31qPkIVuUoeJY
X-MS-Exchange-AntiSpam-MessageData: vNf6/0RwU9v1zcVZAUa4p5c/s070QNDfIACJ2dl/TgWsWvE7/M41bXbWrYdr6VLJdgdYznQYF07eV7BI4ba3VCtvt8JfyKBSa0Dv1GmiGmSQz63NZxS3dK/OmNaPzj45gpsMKWvpr0CMqsXkJlskEg==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 187728bc-31a9-4438-ca8b-08d7c53558e4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 20:55:21.3111
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QqW8nzlakx7rgKlQ/ThcoLjF9OrvQ3SRZxzAQfiRI/PKyBGb/7eVifeKEqsGQS3NKCrYW9F6EQ1/2AxFN2hQIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB2925
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b="IBp8c/r3";       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.93.43 is neither permitted nor denied by best guess
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

From: Arindam Nath <arindam.nath@amd.com>

This patch creates separate function to handle CPU
and DMA transfers. Since CPU transfers use memcopy
and DMA transfers use dmaengine APIs, these changes
not only allow logical separation between the two,
but also allows someone to clearly see the difference
in the way the two are handled.

In the case of DMA, we DMA from system memory to the
memory window(MW) of NTB, which is a MMIO region, we
should not use dma_map_page() for mapping MW. The
correct way to map a MMIO region is to use
dma_map_resource(), so the code is modified
accordingly.

dma_map_resource() expects physical address of the
region to be mapped for DMA, we add a new field,
outbuf_phys_addr, to struct perf_peer, and also
another field, outbuf_dma_addr, to store the
corresponding mapped address returned by the API.

Since the MW is contiguous, rather than mapping
chunk-by-chunk, we map the entire MW before the
actual DMA transfer happens. Then for each chunk,
we simply pass offset into the mapped region and
DMA to that region. Then later, we unmap the MW
during perf_clear_test().

The above means that now we need to have different
function parameters to deal with in the case of
CPU and DMA transfers. In the case of CPU transfers,
we simply need the CPU virtual addresses for memcopy,
but in the case of DMA, we need dma_addr_t, which
will be different from CPU physical address depending
on whether IOMMU is enabled or not. Thus we now
have two separate functions, perf_copy_chunk_cpu(),
and perf_copy_chunk_dma() to take care of above
consideration.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
---
 drivers/ntb/test/ntb_perf.c | 141 +++++++++++++++++++++++++++++++++-----------
 1 file changed, 105 insertions(+), 36 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index e9b7c2d..6d16628 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -149,6 +149,8 @@ struct perf_peer {
 	u64 outbuf_xlat;
 	resource_size_t outbuf_size;
 	void __iomem *outbuf;
+	phys_addr_t outbuf_phys_addr;
+	dma_addr_t outbuf_dma_addr;
 
 	/* Inbound MW params */
 	dma_addr_t inbuf_xlat;
@@ -775,26 +777,24 @@ static void perf_dma_copy_callback(void *data)
 	wake_up(&pthr->dma_wait);
 }
 
-static int perf_copy_chunk(struct perf_thread *pthr,
-			   void __iomem *dst, void *src, size_t len)
+static int perf_copy_chunk_cpu(struct perf_thread *pthr,
+			       void __iomem *dst, void *src, size_t len)
+{
+	memcpy_toio(dst, src, len);
+
+	return likely(atomic_read(&pthr->perf->tsync) > 0) ? 0 : -EINTR;
+}
+
+static int perf_copy_chunk_dma(struct perf_thread *pthr,
+			       dma_addr_t dst, void *src, size_t len)
 {
 	struct dma_async_tx_descriptor *tx;
 	struct dmaengine_unmap_data *unmap;
 	struct device *dma_dev;
 	int try = 0, ret = 0;
 
-	if (!use_dma) {
-		memcpy_toio(dst, src, len);
-		goto ret_check_tsync;
-	}
-
 	dma_dev = pthr->dma_chan->device->dev;
-
-	if (!is_dma_copy_aligned(pthr->dma_chan->device, offset_in_page(src),
-				 offset_in_page(dst), len))
-		return -EIO;
-
-	unmap = dmaengine_get_unmap_data(dma_dev, 2, GFP_NOWAIT);
+	unmap = dmaengine_get_unmap_data(dma_dev, 1, GFP_NOWAIT);
 	if (!unmap)
 		return -ENOMEM;
 
@@ -807,17 +807,12 @@ static int perf_copy_chunk(struct perf_thread *pthr,
 	}
 	unmap->to_cnt = 1;
 
-	unmap->addr[1] = dma_map_page(dma_dev, virt_to_page(dst),
-		offset_in_page(dst), len, DMA_FROM_DEVICE);
-	if (dma_mapping_error(dma_dev, unmap->addr[1])) {
-		ret = -EIO;
-		goto err_free_resource;
-	}
-	unmap->from_cnt = 1;
-
 	do {
-		tx = dmaengine_prep_dma_memcpy(pthr->dma_chan, unmap->addr[1],
-			unmap->addr[0], len, DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+		tx = dmaengine_prep_dma_memcpy(pthr->dma_chan, dst,
+					       unmap->addr[0], len,
+					       DMA_PREP_INTERRUPT |
+					       DMA_CTRL_ACK);
+
 		if (!tx)
 			msleep(DMA_MDELAY);
 	} while (!tx && (try++ < DMA_TRIES));
@@ -833,22 +828,16 @@ static int perf_copy_chunk(struct perf_thread *pthr,
 
 	ret = dma_submit_error(dmaengine_submit(tx));
 	if (ret) {
-		dmaengine_unmap_put(unmap);
 		goto err_free_resource;
 	}
 
-	dmaengine_unmap_put(unmap);
-
 	atomic_inc(&pthr->dma_sync);
 	dma_async_issue_pending(pthr->dma_chan);
 
-ret_check_tsync:
-	return likely(atomic_read(&pthr->perf->tsync) > 0) ? 0 : -EINTR;
-
 err_free_resource:
 	dmaengine_unmap_put(unmap);
 
-	return ret;
+	return likely(atomic_read(&pthr->perf->tsync) > 0) ? ret : -EINTR;
 }
 
 static bool perf_dma_filter(struct dma_chan *chan, void *data)
@@ -893,7 +882,7 @@ static int perf_init_test(struct perf_thread *pthr)
 	return 0;
 }
 
-static int perf_run_test(struct perf_thread *pthr)
+static int perf_run_test_cpu(struct perf_thread *pthr)
 {
 	struct perf_peer *peer = pthr->perf->test_peer;
 	struct perf_ctx *perf = pthr->perf;
@@ -914,7 +903,7 @@ static int perf_run_test(struct perf_thread *pthr)
 
 	/* Copied field is cleared on test launch stage */
 	while (pthr->copied < total_size) {
-		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size);
+		ret = perf_copy_chunk_cpu(pthr, flt_dst, flt_src, chunk_size);
 		if (ret) {
 			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
 				pthr->tidx, ret);
@@ -937,6 +926,74 @@ static int perf_run_test(struct perf_thread *pthr)
 	return 0;
 }
 
+static int perf_run_test_dma(struct perf_thread *pthr)
+{
+	struct perf_peer *peer = pthr->perf->test_peer;
+	struct perf_ctx *perf = pthr->perf;
+	struct device *dma_dev;
+	dma_addr_t flt_dst, bnd_dst;
+	u64 total_size, chunk_size;
+	void *flt_src;
+	int ret = 0;
+
+	total_size = 1ULL << total_order;
+	chunk_size = 1ULL << chunk_order;
+	chunk_size = min_t(u64, peer->outbuf_size, chunk_size);
+
+	/* Map MW for DMA */
+	dma_dev = pthr->dma_chan->device->dev;
+	peer->outbuf_dma_addr = dma_map_resource(dma_dev,
+						 peer->outbuf_phys_addr,
+						 peer->outbuf_size,
+						 DMA_FROM_DEVICE, 0);
+	if (dma_mapping_error(dma_dev, peer->outbuf_dma_addr)) {
+		dma_unmap_resource(dma_dev, peer->outbuf_dma_addr,
+				   peer->outbuf_size, DMA_FROM_DEVICE, 0);
+		return -EIO;
+	}
+
+	flt_src = pthr->src;
+	bnd_dst = peer->outbuf_dma_addr + peer->outbuf_size;
+	flt_dst = peer->outbuf_dma_addr;
+
+	pthr->duration = ktime_get();
+	/* Copied field is cleared on test launch stage */
+	while (pthr->copied < total_size) {
+		ret = perf_copy_chunk_dma(pthr, flt_dst, flt_src, chunk_size);
+		if (ret) {
+			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
+				pthr->tidx, ret);
+			return ret;
+		}
+
+		pthr->copied += chunk_size;
+
+		flt_dst += chunk_size;
+		flt_src += chunk_size;
+		if (flt_dst >= bnd_dst || flt_dst < peer->outbuf_dma_addr) {
+			flt_dst = peer->outbuf_dma_addr;
+			flt_src = pthr->src;
+		}
+
+		/* Give up CPU to give a chance for other threads to use it */
+		schedule();
+	}
+
+	return 0;
+}
+
+static int perf_run_test(struct perf_thread *pthr)
+{
+	int ret = 0;
+
+	if (!use_dma)
+		ret = perf_run_test_cpu(pthr);
+	else
+		ret = perf_run_test_dma(pthr);
+
+	return ret;
+}
+
 static int perf_sync_test(struct perf_thread *pthr)
 {
 	struct perf_ctx *perf = pthr->perf;
@@ -969,6 +1026,8 @@ static int perf_sync_test(struct perf_thread *pthr)
 static void perf_clear_test(struct perf_thread *pthr)
 {
 	struct perf_ctx *perf = pthr->perf;
+	struct perf_peer *peer = pthr->perf->test_peer;
+	struct device *dma_dev;
 
 	if (!use_dma)
 		goto no_dma_notify;
@@ -978,6 +1037,10 @@ static void perf_clear_test(struct perf_thread *pthr)
 	 * We call it anyway just to be sure of the transfers completion.
 	 */
 	(void)dmaengine_terminate_sync(pthr->dma_chan);
+	/* Un-map MW */
+	dma_dev = pthr->dma_chan->device->dev;
+	dma_unmap_resource(dma_dev, peer->outbuf_dma_addr, peer->outbuf_size,
+			   DMA_FROM_DEVICE, 0);
 
 	dma_release_channel(pthr->dma_chan);
 
@@ -1383,10 +1446,16 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
 	if (ret)
 		return ret;
 
-	peer->outbuf = devm_ioremap_wc(&perf->ntb->dev, phys_addr,
-					peer->outbuf_size);
-	if (!peer->outbuf)
-		return -ENOMEM;
+	if (use_dma) {
+		/* For DMA to/from MW */
+		peer->outbuf_phys_addr = phys_addr;
+	} else {
+		/* For CPU read(from)/write(to) MW */
+		peer->outbuf = devm_ioremap_wc(&perf->ntb->dev, phys_addr,
+					       peer->outbuf_size);
+		if (!peer->outbuf)
+			return -ENOMEM;
+	}
 
 	if (max_mw_size && peer->outbuf_size > max_mw_size) {
 		peer->outbuf_size = max_mw_size;
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1583873694-19151-2-git-send-email-sanju.mehta%40amd.com.
