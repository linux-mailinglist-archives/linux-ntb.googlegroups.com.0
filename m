Return-Path: <linux-ntb+bncBAABBEPXZD2QKGQESBY4N5Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F9B1C66BC
	for <lists+linux-ntb@lfdr.de>; Wed,  6 May 2020 06:22:42 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id s81sf108204vkb.16
        for <lists+linux-ntb@lfdr.de>; Tue, 05 May 2020 21:22:42 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588738961; cv=pass;
        d=google.com; s=arc-20160816;
        b=kuEIiqWbBfuxqxIROLcbO0bW7b2DHnV6+QnwxUtYxPMDppMPX5Z75kjk1vSEnvRx/a
         9KD/8wvBSc9h0iMZbc7LlrlewgrIFcrF71WYVynD/e8ssBXOgOrer6pUCkzXUE4VFqtc
         AMIxr6kzllXgB5h7Nd+6z1LBFyfLzpj/OG4k1KkhETdqGiPysnajHTOL7OKo5xcr++TI
         mImg9gzRTDFysTVFT7GmhuzYBRbxQzx5N1yQ4mFIHnakL+8BkFgH36Dal1Va3XjZUNOC
         FPL/VPuKur+p+fc6BEU3W+1QbR1xuW9vmg7ApvO741L/iVer6qCfXcUYPO/sEVtQWTwj
         1T5A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=96jbajgomFS78OgLp53OfkPGHESgZFmscpeCKdJQAU0=;
        b=ajrlNWXCeJW1z5D6WTKBLkGJQnxAPWgsfgv5YeDCGQE7ODW7HVcGYDYS0MNcUyFpWP
         Wq2Ob0G00xJvOuaJretCc5RTXYRClqR4VKtdlKWrHNAmRrpnRlL7qG4q4Zotco7s9VeK
         hyzbC9TK36Yu1V2vYalqTR8k0CNdvQv5UAJSK/1Yejwzii63hmtFCbdf8axSetvsXRyd
         SJA5AOry1KW19co9loqgJWpX+r993jMApWNsw0kLwJjWICMbv4BqTS6SDGOI3DQdxRri
         CKEELnPmfeIYYGWXQFqW6VwVRRE6bAudl9Ctw3B8WD32zBi/JbpUG97L51710Dt0IH61
         k7Ow==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=Q2t6452k;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.77.47 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=96jbajgomFS78OgLp53OfkPGHESgZFmscpeCKdJQAU0=;
        b=r5ybFgk782mhLnG7h6OY0Q5dHC3hpTj2WLXTx+iR9mFf8sM7RvSjjzA+85aFvjc+5N
         7xeDly6eEiuFfCCPHtyLKTIh62u/vqy9Ynghtxxj8paf/vIq1TREGEXQnS9VxfNT0Slf
         xkcMJz4UFic7XkAjqyuhNAYQ9ykpFRqXQxKCLh/oUXgW1iZCGSQ10XryOrdHsJ5uFTIH
         3VTf8KToCa3eIiPLbndjpR8Fy8jzGb91GJcBchX/wkmitttz+vtFJsR2hYdDtD8t2S8V
         8FKKsa29QaAtqDOaqjViwufuDDLjPdWK75UnZHHmcACU6pM3xQReRMHVtg+hnETR378m
         Lu7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=96jbajgomFS78OgLp53OfkPGHESgZFmscpeCKdJQAU0=;
        b=t5A2wRxJv/lXpyxNcq9v0n6B52zAQYnQ3Qtyso7Egx1t0Sjg0hFRiLzabsVId5Q1qs
         A61QKrjBBmd4STaFfGK/FEr/9iBoWtv17ijaUFedrhLdtvBbK1oUPrdcOnSeKHFb8gOl
         r32BEtluI1dKT2V/Q/Hwf98D3d8xOq02t+c56yZha0Y205okxgnXBTxuMm83i6kkzMSq
         pdUp+HGhTJk3PQp3k2U49m+VR5ek9MVRcazv5xtATzuIZ6zXV+W3tCmi8dGzUZaaIQUF
         gyvu5MdKIUnGDdGXe6HuH6fV8iK1jAJ95nYigcb2IT6SYxcMRsR94It2/vSjCuQkyprW
         DO0g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PubO6KAd44W1o9uB41GCVlghcxB6zm7S+zoynxAaORZLnM3EcFmz
	rMRLChtITW1BbuLtLjbAcr4=
X-Google-Smtp-Source: APiQypIsBxsSMq95T5aVHV9XfdvJbi2LfHdl7Gzdf9JuD3uzVgJ8nOv6t/lniGmrcXr6V3WJ9/c0nw==
X-Received: by 2002:ab0:38f:: with SMTP id 15mr5416336uau.12.1588738961326;
        Tue, 05 May 2020 21:22:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:98cf:: with SMTP id a198ls75909vke.9.gmail; Tue, 05 May
 2020 21:22:41 -0700 (PDT)
X-Received: by 2002:a1f:9605:: with SMTP id y5mr5313749vkd.75.1588738961086;
        Tue, 05 May 2020 21:22:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588738961; cv=pass;
        d=google.com; s=arc-20160816;
        b=PtAHng0iqWDcWly2IRpjurJMph5r5t9+0KfNVMwf7C+9Y3dt5KFdhSOqzCStxyQEqu
         H3m/jN2hkebfZmPADLprraltpBTJUzZOhSvA04ONfkMKURqEp7RHKFZL8zEBQ7cmI/vO
         HBiWoeT0xSYQ5nDWwSGQ35VYbL+FO+FzmzJPmsse4yhCM319VVQ3Fk2hn0+uiDssRIQP
         huMh+DP4xZU151jCHWujs74GwYIo0fW4jIKA5ct22LWiEn9CIwJ0bWufCzXVTZFR2bvk
         mJdixN2rIOGH+UqJF4OeKD3njwIPsrbtHkYHjA7d/y8UJjmizRfsUR6o5YOjwRGkx/td
         zIng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=i76LmjhVjQfy949FdsWL0x5D+eEOXKAlyHNpW84ckZ8=;
        b=Hjpnl5P5ZMw/CiQZZGkfrT1ps0Jhgvh2oUj5jXsmPJjvC10Rx+ib8K3fyjMgWjpYbW
         fGq//AvbqXkvGvAMz5j/lL6hD1khAwvSfWZtzMFQ2eJJpgQtZGbYRQdTFO+JJ2sTanNV
         l4rjbmL0DES75twiyjTRo5gk6wE42w4cJfoCn7io6xIiLOJxWwdxdF26uORImNCoPjen
         SidieRDO3m1WFm1fZkeYc40V/LGwgoT5AfQ2iiYvzqaZaxSRTEv/cUCMvSovkg2TShI+
         Kv6MYGeTKuX2UH/T4amp26I29HDazrj6CrxLTkHSJYCGdFj+x7REUZ8cOv7GAN4m8Csp
         vDKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=Q2t6452k;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.77.47 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-eopbgr770047.outbound.protection.outlook.com. [40.107.77.47])
        by gmr-mx.google.com with ESMTPS id y11si83965vkc.3.2020.05.05.21.22.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 21:22:41 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.77.47 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.77.47;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=irWIfWwYNMIch35dfZI0XDnfaFk5AIOs0hMmcYLGCf8YY2ZfqzNkpfJqEM/j54/FZvN5fATvQ5bHP0b4EpPRbAiFtB+T2eANl1Vd109EHt/jTnWJWiIoSvQY/MTxPTl6maITBgsXxODyj/fV+UZJOzr5kYnU4i9fZRzehL3FMxM6jfTO86vUizU1wvJYMmp1YcnQgDy867qbwuu/qAyOjCaFyQp6w7ZfGWv2HKaMDa+QKSTDDE0vOGkBKTmn0PKBGsRwAaAgVPI2lIMMj4FnWgN1yEhdRPzbE8yrBlqQOs98PPiyyI0LNMRZOBOsMSalJ2Ovago97Fx3EEFxx+uIJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i76LmjhVjQfy949FdsWL0x5D+eEOXKAlyHNpW84ckZ8=;
 b=ie+peGvHj87u0E3cY4U5eDYPI0Z5BcrnboBo+CR0EvQFfbKFqGoSrW2l5wx/LqQxtM7S4XmiF2lfXyfpIOGqgX0FjWawxdabMVIMEzbgprk8nel6+6oxXqnzTjo6nSkFLA78sF0YQOhvQFIYntjll0dzfT1j4HWvK9N0BSTDvS7o0ZlkcEiu7pZXw/FURXag/tTh8fc4s7w9Z8LAWXgVsMTXvRFhpOEK0RejwRAaAos2AHpKZeM5u3cdvaXo0mhQMUV8woeoN+FC9oMjggkDSsxtJwP3+gxtvZmI/qD3SneOFpEjLfCO0AYKKg3GCwU4HX6WeV/fHAyB5VQAY83q7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM6PR12MB3420.namprd12.prod.outlook.com (2603:10b6:5:3a::27) by
 DM6PR12MB3707.namprd12.prod.outlook.com (2603:10b6:5:1c1::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.26; Wed, 6 May 2020 04:22:38 +0000
Received: from DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0]) by DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0%6]) with mapi id 15.20.2958.030; Wed, 6 May 2020
 04:22:38 +0000
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
Subject: [PATCH v3 3/5] ntb_tool: pass correct struct device to dma_alloc_coherent
Date: Tue,  5 May 2020 23:21:50 -0500
Message-Id: <1588738912-24827-4-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
References: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::21) To DM6PR12MB3420.namprd12.prod.outlook.com
 (2603:10b6:5:3a::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.26 via Frontend Transport; Wed, 6 May 2020 04:22:35 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b4f58a03-af49-4c9d-9064-08d7f1751c43
X-MS-TrafficTypeDiagnostic: DM6PR12MB3707:|DM6PR12MB3707:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB3707D84FB8D1A0C432D2B6B6E5A40@DM6PR12MB3707.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OkBQhk52uZYQHEpSZDuJsy5IPwKhfi7oj2J861JrV9PQw+PCw5MsoRgZZ+pjmyWkDT9qqp7Bf+ocOPoYOCTdyHsmU+vKyoIEC0R+WAmZe6cEFKkdKhQwliiskXJVxW2QegN0KZCaKlCI5+RXxLKcsU8Wj887zOSKf284iHrcijVHhbl+AczqEczTiCdmJE58YNMOEiJKSN50noPNBH1uf77JCspsUfrDC98SSlbaDuRnheE/yTaUFyNIHLCfdq1FyuX6wiqVKHRywr3kxrs7Hla7+mGxbvw6GWupO3k3g5fJw9OwFINhFgEgRYxy3ghFA3ZN0uXrUfbCFb37Tkr6HZS7pWXWXr8ePRh2jC54sznZPfLcFA5exMaj3XLEzgYHXijzTyqRemQQxX56zrXRBTNsdq3/u8UcaWFHrzNtRp7WBx5dfZcEgpizIGMnmsg5tdrWRAtS/WnGplggKMawVVack5AYqz9yYEhY4doXzPi6SEZycdLG8g0RD6aS581GqHHYTl6M2GeW2eV9/KJtoA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3420.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(39860400002)(136003)(396003)(366004)(376002)(346002)(33430700001)(5660300002)(478600001)(6666004)(4326008)(316002)(66476007)(33440700001)(86362001)(6636002)(66556008)(8676002)(8936002)(52116002)(2906002)(7696005)(36756003)(6486002)(186003)(16526019)(26005)(956004)(2616005)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: Gl2x60wTUroeVvXemxSkYcaP7cKUAXGEV11SxIfS3QYGjJLAR+0VuSCoI9nmywTXOg6dfb0rULm3uqFuGdTG3cXmrD3sAbOPDiPVgKOj01dVpxK2F4ByC3Jp+44AuN9HwT3lbfYu+cOHbjap4AUXMAlqH3hIoK+uvssODzX7GbfdR6mCABjmx0DQLayQzgvKn5s3MfKrmaCNtH7qqcpuCiC+IXI7331sWLTeD1y+4ZbCVyqlL5qorRdgvcTaYKClZ18YKZL37PUMld4a7do5IRaqHhfXzJo5FLnF15RJXCwz2KlCAgx3FjmWC/Dgf50cSovhA+TCEKNIZIes5unHYe076t07uaDC+5XPXDbXgN/j4I6meFNxdVgHwzvs/CjmmoJt3IgA4ZXHrpNrIOevaGx7F3ZdAUsxvV+4CNb7N8OJu3VptHI98tdgpEySWjmfNFqGGsGnAPOdS4CQlUEzWG0B9CMjXwoiqMgkGJWJhlaqMDAwdQ63unzLl/N7Sgs6hFzTEsI5df57f3DY2+su/3FPz16Z5RmdcmEvcLvaz1ucSYSq/ONA6uBzRzY4V3T46dXz4Ysma26myiHttCyWpt4fxqnhm16hcv32vg2YFhdiweLaVmq+cucO7xgurRFtU7AxR3Xv04vzjO1V7nB0d6kFAFAd6SdXscC58qfRr5MNlh0Si90wgK+2Nd99jzeFitq6+d5DWYjGithbJpwbXM5PwKIjE9dFo9F1vJZvet3BW7vdHxdaMH1RDmHEki/qBJQG96mcAgQG+5ruP1m+fduLQnE9F7Cejvpu7go+k+UF3aJSQfHvSJIxTKCNIAoA
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4f58a03-af49-4c9d-9064-08d7f1751c43
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 04:22:38.5191
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EZQ0KBsLLM0zCzIzqUUgygAyWX78SKu2NRB3OgQlI4xPszBGkOEEb8jBq1ulBSqAWDnohm524sksQm93souvKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3707
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=Q2t6452k;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.77.47 is neither permitted nor denied by best guess
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
index 69da758..9eaeb22 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1588738912-24827-4-git-send-email-sanju.mehta%40amd.com.
