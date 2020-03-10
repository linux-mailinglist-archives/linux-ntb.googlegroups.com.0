Return-Path: <linux-ntb+bncBAABBNP5T7ZQKGQEPYFATNY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id AED90180998
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 21:55:18 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id i8sf1253403uat.10
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 13:55:18 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1583873717; cv=pass;
        d=google.com; s=arc-20160816;
        b=CtmmUdBbmQM6OOIWbN1zFEd2rvkW7mHBAP4OR5Y27jXC57V9xJdrIIHcLUnYaN+/w3
         lYqk/tgMm32rRXXDaOezr3U3ewbglFAouO0P1Kmy6cuIOc8qxUn/NdV/MfSrza2FUOQS
         fvWstIlSW7KsW9L7A9w9vJlGr+P+zTunUA6P7v5sVmR3lkZUnRLVApNMQNJI1HPIhy8x
         iJKh7dYuvjL7baiF4U53XQMUZUukzqWj4yXi2ERbBH5mkB4uOzl7ZCxxpUXiYWQoIWTd
         kpvuI7nI7/DQtVK/RKUOV0uc4U3dNlC+Ocr2XX33qmhKNZZwI1x7aSFo2poCZuQUqCcA
         o05g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=hR0+Y4omlR+h82QAKi2x+30kYi9JV1FYZHc7QyiQ0ps=;
        b=ljCAkWUyxlDf+ayV9TrR5HnBI/L4piCuGwqmpJm2Vr60z28DQxZlwd5xCnXv53x89J
         lSyjGKFvWgoMDqbzkGya0HxbTJ8QMdh1XNPd6jPZdl+TKopnNbym3AAoNv6ZaITYMVXl
         etBy6RGPwBduaNlc0W1JiDnPLNImzmuNY/AFcdP2DHqfx7oZtZ2i4IhAuNqaivDcK7J6
         pxVpOAD8FSxO58I/F3M3o0w5Zo1QrjxQrmHS/mb7axJI3TeSKYYT95/8oAXBJCpe4LMT
         yKAGN3WfU6lhgbtPe6kl74B7slT9pAqn7hZ4A6jAyCuZuky6Phefket2rGSeuf/0glC6
         PQ+A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="JzCi/SFg";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.83 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hR0+Y4omlR+h82QAKi2x+30kYi9JV1FYZHc7QyiQ0ps=;
        b=HwZcdLsHM7vXh6btcOfUBI1zLatkmNZsjOFuCYUGhbTuqtm23eNHFE+bbM+NOQlmOj
         NcEYGoaluQMM4OzSyBRzIad8S4LBIQJJQGMBL88Frn1lzgSBpmPigaOh+sUx2sODbH/6
         5DsbRh0edzDHaa6qVyJ0gmrrCzo1bC5wf8T43ljVOu7T6pO0g2WEDUxkP9eVjsQFrfBo
         mCYYP91cZs0AcVgDAeuJ61IXWkLmHYdbgD7g9qK/KfX5WJr05JSr4dPSJ4IbbefOIoQX
         fkRBNRV3Moaj26KM3qBqMfU0U7xlX0Yw+tKDJgarzSR5hpV2tgHc/WnPAJUvNIyjUxGP
         wN2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hR0+Y4omlR+h82QAKi2x+30kYi9JV1FYZHc7QyiQ0ps=;
        b=CtsHWsfxJy1cPFiwPP87PYk+iogZw5kQVdp0Rc5ZuhGQH71aoYVFW1AlYNUi7SbG2n
         0cc4W/R+IPMpJLQUTA1cl9wfgLZinxTy/M6waw7sbs4XeViGAdOYRTcOJtYim3kTLA/p
         MTVQBye09tneoLhzO6ADAl2W3NPV9dHHTnsgrji3L2jDFNzYbi5zoCg4enT3SPVid9x7
         A3OzuZQvGiaS21JNCwBkW0lcNfTIwdwoWtxOyUjNdpGrmrSsbIGY2Rb+Co/MKbJFcAqq
         b+D/SM8Xz2eGHoSXozuyvrDoMRsoBp7fae2TfpcDahpzHs7swnoHNJKQfpI9ONOio8yg
         ea8w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ0N0JCAzh9Z95RyLGRG8+HG3YI+3i3GYn7cfSCqLjrz+jswVltq
	yXvlnnlr4AJfrluuTqvcfGA=
X-Google-Smtp-Source: ADFU+vthzp5wRQc0aCCN6paj/XXRfDtFFSqt5QbWQXjeltX7Vfrv76RwGXvT+fxT/ZpRtjwHz4jtRA==
X-Received: by 2002:ac5:c30f:: with SMTP id j15mr18047vkk.52.1583873717548;
        Tue, 10 Mar 2020 13:55:17 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:93c6:: with SMTP id v189ls4844vkd.2.gmail; Tue, 10 Mar
 2020 13:55:17 -0700 (PDT)
X-Received: by 2002:a1f:2604:: with SMTP id m4mr12968vkm.74.1583873717264;
        Tue, 10 Mar 2020 13:55:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583873717; cv=pass;
        d=google.com; s=arc-20160816;
        b=hngKtEzTE1hjtpw2BbZH0JI7GD/N2IbacWE0G/3EDZ5rlUp94Ca4ae6vk2lSTujWhW
         eecnidaJoR6yaFR00tx8xWqNGhC/t/ZouVmhRuiqgm/+gx718N55NDdhlnqWGD6Ur2jy
         AQqIY/cyU8GoxTA1CVUsTucb0FQJ5QorvTXKC8GQbq/6YYo/mrAmydTvragTx12IVVMs
         CXpIMvt7dXXe1kIT+oXV9Cm3Kf3UmcG+G113kkeKPuFk/vIPO3cWDuySpsq+2YGY6+4A
         bN7D3+xq5ZYLNN8piIaecL8BdNhtAtYjHyz5N07zw5+svvpIOAQH26b30mGakwsZHYUG
         rYZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=aWNOy7UQ+gcEFrKy+Sxi2eXxpoqap/njQwc4iSsQl7E=;
        b=Rzt4I/DnJuVDKC6HcoYfb5scC9/9R+CNWMzSIiEIYHmWqC/dunIZm3fbbg9OIN3j+R
         kDWXK4sZWw3/8w6yC7iAqihoePSiqSo2bxnurtpurS2RjFl2gfdaSw7CyA9/ugSw1oo6
         rRH64EcWT09IS/RTI7wxLPHOcdRSOvLy3xhIdVhT2yLQRQ4VxOGp6g4lJNcQCdJCXCB6
         eGLjLx4LUvDHecQQExGhEyk6Ze8LaLehNVuxLn2YgSLj9V5YcgkwJ3V7HAxIU4uqjbCG
         BKmVD0SSav3jEJOMn0abl81MIh72pNdzJHncQ8gusT1L4Dh6mgAHhumBJhQfr7bOpWif
         kdQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="JzCi/SFg";
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.93.83 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2083.outbound.protection.outlook.com. [40.107.93.83])
        by gmr-mx.google.com with ESMTPS id g4si567210vke.3.2020.03.10.13.55.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:55:17 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.93.83 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.93.83;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQl579z/o2r9PBmhNTKqNgNdD+dQ1A4k9PUjOL6wf8cOJSUb8KqimntLIdRLcufjMooe22nufgnnmVMJhjHei1KRXAqDwUszAbTCF5wQ4tKHATIt9CTBNsrNdVSkv8sgnOm1DlBeyRvonnhBFeGByWLmpO3AEDI2lyMJuQQlta3+y3eregPiJCKJixpFx3AvhNjDw82NgV785Pc9eL15g7qadyO+WbfhXPtBxQK9C14edGSB88UZBOQ3HFyVuA7kec+lbzi/PB4AHfx3Y8Z9q89vjWXC1TXzUuOb+tQQzRKeVJxDLRGVUj8sicS8hPoe1a8/UhYn80KcovIYNVnfSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aWNOy7UQ+gcEFrKy+Sxi2eXxpoqap/njQwc4iSsQl7E=;
 b=nKged3WER2yVUJyOXVOXWyqeFJ8uTuExAr5D1O0OWg5i9oToLif6dyqNkagumQBL2lgrgKidZpyjfdplAqD/ePvcXC3YXqOp7qQiFckzqLXSP+g0yFgDMu3wn0/S2TPD47mSLuGPbfBkdn67677xnKuysTVmqzU/vZ8zofj9QClLX7BXXNAJhX2+Wx+s86uvTAa6atE/Kr/iC8IbAhPTFHx2UynIvIUzJUMKeGv1wsxYwgkldf14WJ9AQdlMD5NGfl+Pn7e85QPg80RBu9f8Ow0PbTaOTu+C78CG3anZW9QODHz4QwK5xzkRwYifWrdNTyos/lIZMYd/dJ1XlgPa2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (2603:10b6:208:d0::22)
 by MN2PR12MB4031.namprd12.prod.outlook.com (2603:10b6:208:16e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Tue, 10 Mar
 2020 20:55:16 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6%2]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 20:55:16 +0000
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
Subject: [PATCH v2 0/5] ntb perf, ntb tool and ntb-hw improvements
Date: Tue, 10 Mar 2020 15:54:49 -0500
Message-Id: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::24) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2793.14 via Frontend Transport; Tue, 10 Mar 2020 20:55:13 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d14c03be-45a9-4646-ac56-08d7c535558a
X-MS-TrafficTypeDiagnostic: MN2PR12MB4031:|MN2PR12MB4031:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB4031426AB83C1BB765DB3971E5FF0@MN2PR12MB4031.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(199004)(189003)(86362001)(316002)(66946007)(6636002)(8936002)(956004)(8676002)(5660300002)(81166006)(66476007)(66556008)(52116002)(7696005)(2616005)(4326008)(478600001)(6666004)(6486002)(2906002)(81156014)(26005)(36756003)(16526019)(186003);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB4031;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LX5OGgEoAhaSd0rnSsvGOOjt13ss/MlrJvB+kQXrtDYrcR/7HKlfcPkJo9fklgJxBVlGnyOyRx50V8Muxo5bccR11iVdTBrp4uiFHqHTYJrYkTr59J6yXyTNgK0bfBJnwd49P27JbDILG6pUghMqLcgIj5xXjovPPL3cKGCkTVCse6ii8OQQFwnEnL7ua182hjbxYYDjBOFLNxkjVhGXfQWyPN5TTNM5ew/x0Oap8+vGOMFuRXNaYydq6Oei48Q9/fKW+dtqmBXCCek7sMj6JGNPKNcsVjfA+oHyUrFhXCIMgAjQjdzbE0JVIaUASTpEynbobBpi9GB9lvwZpKRlCGJMbuDiZSwxtMslUJjeYxUwtUTZx1af4ZH0+aJ54VVIu6LZ9oA8HiQ/IeLrqb0hNIG9WpbpdqFSqUOjAp4YygWFrNYQKcWXGhX1ZbDl+jqa
X-MS-Exchange-AntiSpam-MessageData: sqeu0tI4hWONAQ9/AP0Vvy5NqIOV9gewiU8Yw3j+MaWHyPO3t+sdxCy1kcchOk9SPPnABEfYoNJewoR6CaG1VzYeHcFizqQCZuvBAf5HiNq/jgIME/eyhzYU2BuB0m8umaL+x6tIo2ZHrW9d2W9yEw==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d14c03be-45a9-4646-ac56-08d7c535558a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 20:55:15.9432
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tHQUssLaIuOFzEDoC/nygrTf0pvfYBCwhu1KKdMGLkQTj187M0tKcusgjlhjOmdyxJRWD4cR2DQBQ8Ee1zOWBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4031
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b="JzCi/SFg";       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.93.83 is neither permitted nor denied by best guess
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

This patch series modifies the ntb perf code to
have separate functions for CPU and DMA transfers.
It also adds handling for -EAGAIN error code so
that we re-try sending commands later.

Fixes have been made to ntb_perf, ntb_tool and 
ntb_hw* files.

The patches are based on Linus' tree,

git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git

v2: Incorporated improvements suggested by Logan Gunthorpe

Arindam Nath (2):
  ntb_perf: refactor code for CPU and DMA transfers
  ntb_perf: send command in response to EAGAIN

Logan Gunthorpe (1):
  ntb: hw: remove the code that sets the DMA mask

Sanjay R Mehta (2):
  ntb_perf: pass correct struct device to dma_alloc_coherent
  ntb_tool: pass correct struct device to dma_alloc_coherent

 drivers/ntb/hw/amd/ntb_hw_amd.c    |   4 -
 drivers/ntb/hw/idt/ntb_hw_idt.c    |   6 --
 drivers/ntb/hw/intel/ntb_hw_gen1.c |   4 -
 drivers/ntb/test/ntb_perf.c        | 167 +++++++++++++++++++++++++++----------
 drivers/ntb/test/ntb_tool.c        |   6 +-
 5 files changed, 126 insertions(+), 61 deletions(-)

-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1583873694-19151-1-git-send-email-sanju.mehta%40amd.com.
