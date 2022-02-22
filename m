Return-Path: <linux-ntb+bncBC47F5EI6IFBBOM42SIAMGQEWAJ3D3A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 247C74BFE71
	for <lists+linux-ntb@lfdr.de>; Tue, 22 Feb 2022 17:24:27 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id f128-20020a623886000000b004e152a2c149sf7316588pfa.5
        for <lists+linux-ntb@lfdr.de>; Tue, 22 Feb 2022 08:24:27 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1645547066; cv=pass;
        d=google.com; s=arc-20160816;
        b=NpSJpmRe9VCYNVkdNlBleLj4IemJY7jG+GJyAHfq49IA3RKCrFQJ/wUe2VYNPZaNmY
         NFem/j6hYaQyngmsaGp9/KLWsNh1F+W1eRE9IKaEo/tDfV5hX4y5gaK02H8ccnfvQzRq
         7tBmQwjoArBeHVEIQEQVks/YwR3ovjUIcfYlvBQ6ShjWDvemXunjr4Z/EqNRdWUrix5j
         JGi5HW33b13dwexvEiifFCvlSYBJ3VNgSJRPeG565VelkhjeDfaHJKHWJZ99jQCJWKkr
         xhJ5OWDgzRCDVak3y/7EZ7U3+NcskubKor9oskdQs4He7MsLliFMnGjGNKoNYZhoL3EM
         3lzA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5t+PzsiY0gijWT1a1YqZlqy3tz0qnFVVL/Doc1B1e/Y=;
        b=qt5vnsa+SLNZDU0KdJoS7wXMY9gVz3irittUQ0n2DcE8b2qRBbNVbKa/asDYtywZOo
         ePdwcIkUBkJQXT05R4yqmhlZqB92viZGvn8KUh8sM+ooHauEVEV8mPTXp7qKG2fPgXL3
         7sORzMrxyBR6CXf3HBohThdVLvK/S2ZWsfE20fkw/Phu/7mx944LvQeTg0QFZKtJ09Fy
         GUjK9AmiRYFJ5HSPLAAt22J12ZmwkwaV2mat8nomNPUIBFg47pVuVFwInT2WSzXpQQTS
         GYghKoh1mM2HXv61VRgq6a+/38RDzjmkEhjHG7+t28vz3W2rx0eJGwLQyH0W2g3zYbwz
         sYeA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=NLVgHOG5;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::630 as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5t+PzsiY0gijWT1a1YqZlqy3tz0qnFVVL/Doc1B1e/Y=;
        b=VpYHYQlLEMewIk0U8+3ODSkMT5tGogJ5FRpjCeRN5NhJM9lsnkRab38cf69MKJJnBY
         iWbLcqDOqBjBXAIcSwZ8dQlDCgmaOEooFGkqO7hfm+sw3sXgIcLsvRG146lI4V8NX7vC
         Tr3g8Yr+fD08WkMCrZxVcDKMp90+APCXGph9HkIMdUpq5IlHHK6NVtiMTEcLh3/xky9U
         iuj2Z5QZKvRB8jq5IttV6jfD5c7rjGQpS8V/utzA8F+TOwM5AAitkHq9V9DBti6XoqkC
         FjznDmDm9EN3A9s5Adux11t+RKkm27UIwEXWtURTNK4U9kEFlk9m+WWDZ1L1Q5WCdSCS
         yyjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5t+PzsiY0gijWT1a1YqZlqy3tz0qnFVVL/Doc1B1e/Y=;
        b=zoEE3XS4CnQVyBLE08IuxQbqGNxURa3Kv1fcQqXStlNouexJU8PMyk4brK68iY2x4b
         geLvNUBsqZZDndMFqLBU/oDWpTuoNVOXSPhk2NNdXBSLeukK/jlWo4NLixcF9GHvHEWo
         NBJTVk3VJfKrLZz6lBMzOWE7EM5k93t550FlIQui+9seK+Oapd1rrYnLbuZ+5L2Clhap
         yheWlSIHStftL2BQa9Cff+a8cVKR+Ut+BheuIfssVBGIgQDzDU1DUmtpiYG/ovt3q3tp
         NIEJ1lkMqhlbSzK1bWOwZ1gAu4DLUOkiHFoIusyuMl2n2eIh9Eg7/bKozhCp8v5NsmgT
         KxLA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533vVr8Q7+B6C4kCTcLOKumCq+z8xwale2FuCxNR0gaOd09APW0d
	3z3wm1MX2mO5oFGOus2BF7E=
X-Google-Smtp-Source: ABdhPJzz4Xu3IAHnNhief/tCIK406g1puwxourBdiy9FpHdFXg50QXsqy0Mw7xflAtIZyFW/zx+zww==
X-Received: by 2002:a17:90b:1c88:b0:1b8:a77e:c9cb with SMTP id oo8-20020a17090b1c8800b001b8a77ec9cbmr4947087pjb.205.1645547065804;
        Tue, 22 Feb 2022 08:24:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:903:1cd:b0:14f:eb8d:b29f with SMTP id
 e13-20020a17090301cd00b0014feb8db29fls792916plh.9.gmail; Tue, 22 Feb 2022
 08:24:25 -0800 (PST)
X-Received: by 2002:a17:90b:3cc:b0:1bc:692b:ad8 with SMTP id go12-20020a17090b03cc00b001bc692b0ad8mr4898367pjb.90.1645547065284;
        Tue, 22 Feb 2022 08:24:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645547065; cv=pass;
        d=google.com; s=arc-20160816;
        b=Td927SpgGKwrMt8/k5dC7rjGmFOi49+kRMnzM8CL6DwEWUyNiBwW6t3TU6OPzDpQ6T
         S8jO4ll8NVZzKYnVTo7WAYhs4nUTKQZIiG6KoaS6lrpNPrQAgX6joJz8neI0/mZKTmbO
         LU5yoBKGVxKBw19q3CaDu8Sh7bCAAusX+xAEKtR8hpK5TD80xNUwunZcCksIcAkqRov7
         SdYf+/hvueerjiCYlwL9L4pZvJwQh6yPV6qoexTTeSy5pVaNZYDiwoutWL6qp6UMoNfW
         +0x9vv6h5U2u+7BGSZeXm/meOUuHzrllKsk1GP8lpfOAQ4YJLFxSjeHhkYMfiy6xnOn0
         RtiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RdJVpM6AR5a//yTRM7PS6G/WZYcpKxnKa5E09YK544g=;
        b=MgLZlETW6+nuzSDcL5Sf2zqs7I4r8diekf8fKt/X4P/qNph74HdAXlicpSwarJ8om4
         mVysomxIDN0Lw1bMpXMZenO7E8XroxKA+6DcG2ctNj6ZxbA1VlcfRLqQlPU+nF+dD4af
         PhD2mdn7aoLP/mzucPqOkJe9TG8WJsIZ+OnGvKqfYS77zeobv7Q+mSW27iBQQpoy94LN
         zYm8Z7ExKuQ8fC3kXwgB1kambg7+y1KZSURbmhiKNuoQC5iyMWmVOAExp/yPTPa6x4mf
         vzh8kbHEs/9vd0PNuCyBH/u+zfJ6k6aCCc3QP/O1v1NtyQm0QEoCUEMLFFj6wv3Dymrj
         Q+ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=NLVgHOG5;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::630 as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-am5eur03on0630.outbound.protection.outlook.com. [2a01:111:f400:fe08::630])
        by gmr-mx.google.com with ESMTPS id bj5si339845plb.4.2022.02.22.08.24.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Feb 2022 08:24:25 -0800 (PST)
Received-SPF: pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::630 as permitted sender) client-ip=2a01:111:f400:fe08::630;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b2mVjCTVjl9C9rmZ2xJozS6FmrKx5jI+qznaKSP0C3LU04AMXrIn+B5i5r2sf02b20TPbvjt8a/U6U3SDh2vTEKWhfT7cCUCipX7ObvVQ9zGq99G7E4WofRkZVInCQgrMjL2L9HkNazBX+BE/A//P1Rm8e7bqZffmtC+3g91FnQtQ+pLLzAvdGXqlAYvX9oaFfrlI5V+nDgZCTWX9mJpmhk48qOn312+ssbDw4PndgzrfxWEkR0NtIRHewmwoyNDP+uv1akrb1aMLOgnTRXkEFG0LUGEUleXHsFsvvfYxxT6CCLqw/OQlA8AW9tW2MuhvggGy3HedX4sLKlTMnFuXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RdJVpM6AR5a//yTRM7PS6G/WZYcpKxnKa5E09YK544g=;
 b=N4K5biTqLEavk+kocZ6qczVo2ouwMLFH3N5zQIvvW1ayExjMTHIITJ/h+PxnjjrdAjQu2lWxyHVOam4jAGoqm95swCkP/6pb+1yX4IZG2/k7Ubu6ks/+R/IpAjMOqfz1Qd0wTrn3POHhovgF60qPcOfJc05mnJ0AwPkNb+JsS4z6zHrd3s3sNGZfsDE/ETukkUnTh1p6r3WZCmhW8dvqoky8onU0oOjnL8+UrhQxem1j4OVUPUgGHjesvpFO0v8Kh+2r2JoLQIm8K+No0+qAB5EP+HL7Yll3Hr0KhIWL1DGib7L9o+R58sSvw3oR2bHke0hMQvWEZuZX6rwfyA3V6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from PAXPR04MB9186.eurprd04.prod.outlook.com (2603:10a6:102:232::18)
 by DBBPR04MB7899.eurprd04.prod.outlook.com (2603:10a6:10:1e1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.27; Tue, 22 Feb
 2022 16:24:22 +0000
Received: from PAXPR04MB9186.eurprd04.prod.outlook.com
 ([fe80::9ce4:9be4:64f8:9c6]) by PAXPR04MB9186.eurprd04.prod.outlook.com
 ([fe80::9ce4:9be4:64f8:9c6%6]) with mapi id 15.20.4995.027; Tue, 22 Feb 2022
 16:24:22 +0000
From: Frank Li <Frank.Li@nxp.com>
To: helgaas@kernel.org,
	kishon@ti.com,
	lorenzo.pieralisi@arm.com,
	kw@linux.com,
	jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com,
	lznuaa@gmail.com,
	hongxing.zhu@nxp.com,
	jdmason@kudzu.us,
	dave.jiang@intel.com,
	allenbh@gmail.com
Cc: linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org
Subject: [PATCH v2 2/4] NTB: epf: Allow more flexibility in the memory BAR map method
Date: Tue, 22 Feb 2022 10:23:53 -0600
Message-Id: <20220222162355.32369-3-Frank.Li@nxp.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20220222162355.32369-1-Frank.Li@nxp.com>
References: <20220222162355.32369-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SJ0PR13CA0190.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::15) To PAXPR04MB9186.eurprd04.prod.outlook.com
 (2603:10a6:102:232::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d5076545-0e43-4a44-ee72-08d9f61fc8ce
X-MS-TrafficTypeDiagnostic: DBBPR04MB7899:EE_
X-Microsoft-Antispam-PRVS: <DBBPR04MB7899814CDC705D20F2E8AD5A883B9@DBBPR04MB7899.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tLqjmNawXgfr7xdTTaKwwO8avG7i1iH7nt5dbs2NJPgW6oEuD0c4anjbCcPvKwo4CZBUjRltmBi6jHgQ9ZVNWH1m2IfVivKe0EV1hLUisRRV2v+gAZ2K1wKZvu2D/onUpVK2jg6rND/AEdKDHYGm+42JyM564M4UKEpCN1+oe7BM2NN50+DW9qbQsmoaT6Xge9QCM5bgAZkLnhxUfQpueEfR2nSOUkFe16Vi2zVubwIUbG1LJlVkgRGHieTOQRUKPL1UpVsXyDpJbM82+8CxP+nwgAYycmjg7O2OjB61reLyD2EwvQ7cTDkhU575oYgMEGqbt6vXOIK3tBskzCLDaxtOgdHRZrZKK/aBMeWYkfbywREX7Rc7GaKBPWZC+X2EinyJatGsF2eYkp+MDVW5URNW7myASUOfpqpwlIv08X30aHwMnhGaUMx3h430P/jVsDwv2TMoHmFVQ1St4KX8EDYVGn2Vw6vWmBG4KxnDz/sP3ST+Ldvw9nIEhWRXUYidPG8VZcabaVzsgHeEph/Fb+r3Aa/+RAOLz3z76YrHkRr7C4N4HrXTVER/zqKnhD5QZJ0hj6+eaCG/z3jg9eEdRmPNGNIq0vLEMg4e5qOK1orsVlRyqkbXBT+42HO1Mh4oEr0xlnsPcPd120HsABQoljrcHPRdrqqgOPd7aXNT2L6aRcw7wdBmmozleFIBYHncGO36Nw5608eLYzz4XEViV/EWc5LgHHmfF2olW+hPiQQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9186.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66946007)(66556008)(83380400001)(508600001)(4326008)(36756003)(8676002)(66476007)(6486002)(52116002)(6666004)(6506007)(5660300002)(26005)(1076003)(186003)(86362001)(8936002)(316002)(7416002)(2616005)(38350700002)(6512007)(38100700002)(921005)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?a7OgWLD8AAaQep/HMamKy6iCOIkRbEb6XJ4ovhvxdGpIiHjDtNZrnqY/JNcp?=
 =?us-ascii?Q?1+sYxDdldTzoq2ZzUzgbaC8g8kMycPijz+P28bE0MNTKDAX2fCFnKEjLhjsA?=
 =?us-ascii?Q?+gv1s5UvPo2xCgrpmhxKOiS9pZhy3YLKlOLTwxLU1U7QrSv3XZhr6ohi+RuP?=
 =?us-ascii?Q?XFj8aA4opfgxP9qhpktrtjud2kkyRxgW7QOVYEJyrKphabXTSy1/dOtdDaDu?=
 =?us-ascii?Q?PbXLJtAL9WruAlBXCbgqsQ0aUixBRutEKzHRAgcGuoCyimD5aN2n+LJgiSD0?=
 =?us-ascii?Q?Y+OqPgSOhcPRTOqdNBftd5xSGjI8FBwlhB+U3yYfNfZ/2UycIKXGAj7zCsX8?=
 =?us-ascii?Q?ZEDczsIsI6ol8M5QelUHPwVPcyfpCafDbjfkP9y1c2HXBV0DQJUSCSgWQcSQ?=
 =?us-ascii?Q?3z3bvPKWB4c+dH6JlCIz854FrbH+YCYc69Z5f4FyqSmUnqxFMxYBu4XoewL4?=
 =?us-ascii?Q?r9XHgJDZg10e5PS+riSmCr7gvZGBIrDPuZ+damLeooD7OMzrS+m5WYG2OE7z?=
 =?us-ascii?Q?QGRVcxZQcMo8534OSOKvA0YILVQX1riw8s+TI7+vRaGGREN40Ro2LLbRdDmg?=
 =?us-ascii?Q?jvX0xlC6x5gJZKPWtzZm22nXUGuEZ51ZBO/52BYwFsIvCBjpRWNpJz53tHWt?=
 =?us-ascii?Q?OQ+51n6H2TJvtxRJE3yZ2p76+wB0YkZnUTWPTMaTH+kLr6NtkyvBa7g6dGFU?=
 =?us-ascii?Q?qZDu9ai2EpDOvdUikau6pTeJ70MlcPjODIXzG4FoDjXAyN84Ax7MFnAcXbd2?=
 =?us-ascii?Q?h6NjlbWMUVogzcILWZyW+HZNEO4QDLWxREq6z1saLgh1/jLf29EMAt6zH2kF?=
 =?us-ascii?Q?dIK38mkYu9/QKJK+3jrjBx9X2WpBrYc3wNri64nWxkbkjVplPjTbNbcyGYfi?=
 =?us-ascii?Q?f+HBr8BAuKlUA01YldjURIMtFWrT58TXguqoK2bsFapFXZA5OTsr3+81MYpW?=
 =?us-ascii?Q?vYCxK0pgm+MfbwIqMriPToUjHu5FlB2vj/0YnusexsVjipKTD7+1ViYF3FOb?=
 =?us-ascii?Q?++v1+5HwXMjTLPxoZXSprIoPeyL2zt/Tk1bG9APuPlpZKCOVd2AS47xt8fk4?=
 =?us-ascii?Q?H6/GZpVeL2S2vZaG9iDXWZzNHyjW+8VN5dEjMmdY9RwJpqR9AFLAHkSPjwGU?=
 =?us-ascii?Q?S26Dq3029+ewxifq//RG+O5kwW1/FGWMLv008yRBlkAbaGTIEHljg6On9VF5?=
 =?us-ascii?Q?aCCp3qdiI6w1hyZWw/ZwC3ePdjDmOIxolNw0vvxPFlDnnCBXx8rHZE5tnGB7?=
 =?us-ascii?Q?PNqy5VP6HS/wgPmXexOu7MhsJAP072rM7ksViWgQtlYoPvpsOjkDXH4u+Zei?=
 =?us-ascii?Q?BhB+cgnDZm3XJ5a13JkjlAGHS/hRXkJwI7MCvGzu122ys0WAwBnDnbsEy2so?=
 =?us-ascii?Q?qhBt2MkhBAafgmqrmZY+pUOF7UniMDq5BYjwfx8pWizA5+SZiqK8APD4LqXT?=
 =?us-ascii?Q?rka/b2o7BLWTSyCWZGje1DnomUOxUo5c3WJ458Ng9GJXWdFTyfs0tWNcZXkf?=
 =?us-ascii?Q?K/SXGrrjg7wuZS8YSPzBGPFUnDJMU9yyuQTRT3/8QNevCv1v5F4B1cOEz4xu?=
 =?us-ascii?Q?7UtF6jFceviCGG/NbDiKqU9DkRNwBJf7Zhyn3KkJUnm9ITwpTmb8AR2MRLtu?=
 =?us-ascii?Q?hKkNnsevYzpIdvUKKwgDNbc=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5076545-0e43-4a44-ee72-08d9f61fc8ce
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9186.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2022 16:24:22.4634
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mbStB+a9VkqdGPnRmFK2ojq/0aTTRjV/7Ie+frWofUtRVaXXgEdpFZKa/tuNQ2wk7ahswVMHlsQQj1hoIZyh0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7899
X-Original-Sender: frank.li@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=NLVgHOG5;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of frank.li@nxp.com
 designates 2a01:111:f400:fe08::630 as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
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

Support the below BAR configuration methods for epf NTB.

BAR 0: config and scratchpad
BAR 2: doorbell
BAR 4: memory map windows

Set difference BAR number information into struct ntb_epf_data. So difference
VID/PID can choose different BAR configurations. There are difference
BAR map method between epf NTB and epf vNTB Endpoint function.

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---

Change from v1:
 - Improve commit message

 drivers/ntb/hw/epf/ntb_hw_epf.c | 48 ++++++++++++++++++++++++---------
 1 file changed, 35 insertions(+), 13 deletions(-)

diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c b/drivers/ntb/hw/epf/ntb_hw_epf.c
index b019755e4e21b..3ece49cb18ffa 100644
--- a/drivers/ntb/hw/epf/ntb_hw_epf.c
+++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
@@ -45,7 +45,6 @@
 
 #define NTB_EPF_MIN_DB_COUNT	3
 #define NTB_EPF_MAX_DB_COUNT	31
-#define NTB_EPF_MW_OFFSET	2
 
 #define NTB_EPF_COMMAND_TIMEOUT	1000 /* 1 Sec */
 
@@ -67,6 +66,7 @@ struct ntb_epf_dev {
 	enum pci_barno ctrl_reg_bar;
 	enum pci_barno peer_spad_reg_bar;
 	enum pci_barno db_reg_bar;
+	enum pci_barno mw_bar;
 
 	unsigned int mw_count;
 	unsigned int spad_count;
@@ -92,6 +92,8 @@ struct ntb_epf_data {
 	enum pci_barno peer_spad_reg_bar;
 	/* BAR that contains Doorbell region and Memory window '1' */
 	enum pci_barno db_reg_bar;
+	/* BAR that contains memory windows*/
+	enum pci_barno mw_bar;
 };
 
 static int ntb_epf_send_command(struct ntb_epf_dev *ndev, u32 command,
@@ -411,7 +413,7 @@ static int ntb_epf_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
 		return -EINVAL;
 	}
 
-	bar = idx + NTB_EPF_MW_OFFSET;
+	bar = idx + ndev->mw_bar;
 
 	mw_size = pci_resource_len(ntb->pdev, bar);
 
@@ -453,7 +455,7 @@ static int ntb_epf_peer_mw_get_addr(struct ntb_dev *ntb, int idx,
 	if (idx == 0)
 		offset = readl(ndev->ctrl_reg + NTB_EPF_MW1_OFFSET);
 
-	bar = idx + NTB_EPF_MW_OFFSET;
+	bar = idx + ndev->mw_bar;
 
 	if (base)
 		*base = pci_resource_start(ndev->ntb.pdev, bar) + offset;
@@ -565,6 +567,7 @@ static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
 			    struct pci_dev *pdev)
 {
 	struct device *dev = ndev->dev;
+	size_t spad_sz, spad_off;
 	int ret;
 
 	pci_set_drvdata(pdev, ndev);
@@ -599,10 +602,16 @@ static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
 		goto err_dma_mask;
 	}
 
-	ndev->peer_spad_reg = pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
-	if (!ndev->peer_spad_reg) {
-		ret = -EIO;
-		goto err_dma_mask;
+	if (ndev->peer_spad_reg_bar) {
+		ndev->peer_spad_reg = pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
+		if (!ndev->peer_spad_reg) {
+			ret = -EIO;
+			goto err_dma_mask;
+		}
+	} else {
+		spad_sz = 4 * readl(ndev->ctrl_reg + NTB_EPF_SPAD_COUNT);
+		spad_off = readl(ndev->ctrl_reg + NTB_EPF_SPAD_OFFSET);
+		ndev->peer_spad_reg = ndev->ctrl_reg + spad_off  + spad_sz;
 	}
 
 	ndev->db_reg = pci_iomap(pdev, ndev->db_reg_bar, 0);
@@ -657,6 +666,7 @@ static int ntb_epf_pci_probe(struct pci_dev *pdev,
 	enum pci_barno peer_spad_reg_bar = BAR_1;
 	enum pci_barno ctrl_reg_bar = BAR_0;
 	enum pci_barno db_reg_bar = BAR_2;
+	enum pci_barno mw_bar = BAR_2;
 	struct device *dev = &pdev->dev;
 	struct ntb_epf_data *data;
 	struct ntb_epf_dev *ndev;
@@ -671,17 +681,16 @@ static int ntb_epf_pci_probe(struct pci_dev *pdev,
 
 	data = (struct ntb_epf_data *)id->driver_data;
 	if (data) {
-		if (data->peer_spad_reg_bar)
-			peer_spad_reg_bar = data->peer_spad_reg_bar;
-		if (data->ctrl_reg_bar)
-			ctrl_reg_bar = data->ctrl_reg_bar;
-		if (data->db_reg_bar)
-			db_reg_bar = data->db_reg_bar;
+		peer_spad_reg_bar = data->peer_spad_reg_bar;
+		ctrl_reg_bar = data->ctrl_reg_bar;
+		db_reg_bar = data->db_reg_bar;
+		mw_bar = data->mw_bar;
 	}
 
 	ndev->peer_spad_reg_bar = peer_spad_reg_bar;
 	ndev->ctrl_reg_bar = ctrl_reg_bar;
 	ndev->db_reg_bar = db_reg_bar;
+	ndev->mw_bar = mw_bar;
 	ndev->dev = dev;
 
 	ntb_epf_init_struct(ndev, pdev);
@@ -729,6 +738,14 @@ static const struct ntb_epf_data j721e_data = {
 	.ctrl_reg_bar = BAR_0,
 	.peer_spad_reg_bar = BAR_1,
 	.db_reg_bar = BAR_2,
+	.mw_bar = BAR_2,
+};
+
+static const struct ntb_epf_data mx8_data = {
+	.ctrl_reg_bar = BAR_0,
+	.peer_spad_reg_bar = BAR_0,
+	.db_reg_bar = BAR_2,
+	.mw_bar = BAR_4,
 };
 
 static const struct pci_device_id ntb_epf_pci_tbl[] = {
@@ -737,6 +754,11 @@ static const struct pci_device_id ntb_epf_pci_tbl[] = {
 		.class = PCI_CLASS_MEMORY_RAM << 8, .class_mask = 0xffff00,
 		.driver_data = (kernel_ulong_t)&j721e_data,
 	},
+	{
+		PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, 0x0809),
+		.class = PCI_CLASS_MEMORY_RAM << 8, .class_mask = 0xffff00,
+		.driver_data = (kernel_ulong_t)&mx8_data,
+	},
 	{ },
 };
 
-- 
2.24.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20220222162355.32369-3-Frank.Li%40nxp.com.
