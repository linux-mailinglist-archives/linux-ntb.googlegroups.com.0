Return-Path: <linux-ntb+bncBC47F5EI6IFBBM442SIAMGQEOOYSR6I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C1C4BFE6D
	for <lists+linux-ntb@lfdr.de>; Tue, 22 Feb 2022 17:24:21 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id o8-20020a17090ac08800b001bc366c58fasf2002962pjs.4
        for <lists+linux-ntb@lfdr.de>; Tue, 22 Feb 2022 08:24:21 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1645547060; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zfzlp9/WfY1aV75yyTxUwMV7ICo6Rkiui3uithqQA0mqvvKzmztyGRMyhdTwnsuQtG
         34vhcd0+M4UGTfs8DTEC/kXk5fnrfFFVaW+rBWOk601J4QxCCEIxwbI9MCj0HytoW81m
         ZGn+uUGQ1b//s4EwCYw1YMEvwgG6othd7voyoeO+GfjhD1L0Pv0aGQXE0ckLamg1s+bO
         63BxuRSLN5rRMuAhJ42im3znzMG5ekkKfTzqIX0DzXYUdThEntJwyC44kjA2vbTX9KeI
         R+m/FUEC6whahuRhBtMHzjJ9Ks1ImxyzwMG8+4ibJOmLBUBCSePBJKy1PlzgFh4bSNAR
         ar2Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=/IAo90VmzsLiqqxPPhYBxBFpb8olG4cT5MSlrB8IiDw=;
        b=UISFFwMrsDrSEMJBuUYYIRQwvEWqDHCEYzz+w1bqAAmy0nFq/JHvsiK6J9Y0Vmj47g
         I2nV3mGVlDTDRoppKie48YgGLMW2cvT7RGgfDmE9YvxFPXPnrkhS/HPVSf0a8oHJqCdb
         GfjkdPJpW+M+VYjB7P1zOchOzxuF/PSg/p1kvSCGVigR3w6SSzOxIz2P05ozXLve8BDn
         q+iOQcInMSjER1CoNlrVm7/DjkSaCquAYl0846me6CHY8m3ogQirGjoqsYUXRm7U1N0v
         ulOC7jj6hknjP+ld+/7FS4AK1sMpqmvF+3+zwCJfzuTWEFRH/soE8h/X1lJzbzAdBjTB
         84pw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=ZsVXiqQ4;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::60a as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:content-transfer-encoding
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/IAo90VmzsLiqqxPPhYBxBFpb8olG4cT5MSlrB8IiDw=;
        b=pkHRsbdBFfL2b44hcYV+qkL268XB1v7oea5wYbVkK1VfUVnKh6NX34KJ2/uOhiCVnf
         VOaowF1Zn3iAmWFFXfwcVEmDQw8qW70wv09HmRzzXc0uolmU5rlHXO5voqVP3nBlUTKP
         UhGHYtXTRlBZ8/POISFrQewKaozlXbh6XWc+lAURDA30PKNPb+5lxPonzysQzL1kYkXe
         W3/cDox8S6CUNvYkC5864RyI9ZKnGNs6ZcUfakXrDbayxeWYu+11lLXGrZAe7so/mfN/
         ak1gqcNJjuH9d88dIzgb11gn8CVQmyzAz1t4jlyDdxXiYUwD7LWPPKLW3mrTFQQpyFLE
         6Lww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/IAo90VmzsLiqqxPPhYBxBFpb8olG4cT5MSlrB8IiDw=;
        b=sC2VDwzz2US7ssMbBrxOSS3VT8iughfYrnx/8fhNlG5Wa/Kqr67f+pql0DULPOQVVD
         tUMmIigwdjGMr4FUNTTYgHmWmmgV+fzOisgOHeppAhtxvw2OTjzHNqbfC36QP6tnidEU
         tnzQqtAF2bUUDqP6v7X7pdk5mFchErz9wdCyTAFyoy/NYyE6+Lrv7Vlp/VrURDeKuA1H
         uJlkKGoY142Jb/is64u+zZGSezojkyVXmiKoxEtOGvzVyTvjh7kHbjPr1sb4TQJ/xYTM
         FzzO7uwNVt4Yzm6N2Ongb8aCiPa/8vx8iEEA0Ay7/sLpVVBsDp5bnQDSxR4kEbaWbixM
         28Cg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532aEM8ytaUA7vanmAoREwdGUqHMAW44MEdyZGwCDQgtqw7cZh6v
	81KtrtGo8uvK+pHePoEyb4E=
X-Google-Smtp-Source: ABdhPJz8ZfdJbB/1mwtFlVDDTJKAtCyuYCwgQh79jDMVSaVtaBszyHQt5nji8cP2FSyruqCAIZS2Pw==
X-Received: by 2002:a63:cd49:0:b0:373:5fbb:c790 with SMTP id a9-20020a63cd49000000b003735fbbc790mr20663731pgj.206.1645547059711;
        Tue, 22 Feb 2022 08:24:19 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:82c5:0:b0:4e1:79f5:10b with SMTP id w188-20020a6282c5000000b004e179f5010bls7498068pfd.10.gmail;
 Tue, 22 Feb 2022 08:24:19 -0800 (PST)
X-Received: by 2002:a05:6a00:1692:b0:4df:c6b0:2f02 with SMTP id k18-20020a056a00169200b004dfc6b02f02mr25573194pfc.50.1645547059167;
        Tue, 22 Feb 2022 08:24:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645547059; cv=pass;
        d=google.com; s=arc-20160816;
        b=MHePoEsKBL2N8ePJjVBSvftgzvtoFL5Hy4FHPiIqtCnx4TXJ3p+jZlgvVkhUHvNfVe
         tokwpifNSNYCwfnvk+ppDqLx2ZHe7IGc0I3xm20xbl5NbmNNvUmznui67TUroZ/JrmXu
         +UO7vFfwLDdSjo6n16vj3y5zP5JG640RN17CQ2I6m4j8EcccuCA6moNoizZwoyWxQxq2
         dfksz5R3QyIqiDywghFuDIjGSxTDA5Q04FOTHRo3JA0TULdWRhCkL7WrbQKZkIj8DHK5
         8PCcfkx/gL1tKB4sBbABqOtTO/1XSq3Ft3pmKdAOrHTJesMW+ZPJUYb3G23bu+n9psic
         WkIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=qs/jkr41pVJhlqjqIo4Dp0IOTVGhXFDkBybRJYaF+dg=;
        b=TvAqoSphPJ+4uzSEvAAqZhdoNQ563MMpzT6MxT9e4ykBkiSE7OkhV8qMbhIALz89L/
         M8gK0BjdujpM+cyN2eqjuGntUCVrDsagDRkLztBm9CN9psczRVBkjwYHPNdgFSKZv3WP
         pA8OQSLcEMjMvE9Mg2vHO9tacA0qLiBwJhMMOQsHwmLxeMjWyKqxUEvRtjgJSCvbLrcV
         bxPP9RkgSfBAJcmihN4OAolQTgig/t3ogTDa2Zq23GI89RDhvSuyfZC9BaMnNvyqi+0w
         F664rXMp368tD+dzMAMh17SfgU6n94jylvUIXfN0/EyjjixqoR4gR2me1DwC1GjYolxf
         HHwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=ZsVXiqQ4;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::60a as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-am5eur03on060a.outbound.protection.outlook.com. [2a01:111:f400:fe08::60a])
        by gmr-mx.google.com with ESMTPS id j8-20020a17090a94c800b001bc49965aa0si219150pjw.2.2022.02.22.08.24.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Feb 2022 08:24:18 -0800 (PST)
Received-SPF: pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::60a as permitted sender) client-ip=2a01:111:f400:fe08::60a;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PCUvNp0fHnPeqjzMiSsNDFnUceQq5oYCfBFhLoSuZMl92oGBFLFbQLyA8ZGCIRVs+0brqF4Cgh1KtFogE7QK/H8OlnHZB+E+PgpOlQ48++bETaTPH/+aUWSdgm3UkTcBK1vt/JQi+ufnQacdIM6xfgyXZk0OVubPxV3+HoA/GUSCOS/xzqXU5Qc+9EHSHqz9EDEAKh+LJnqwwzXXg6mtqgqrnIoogJN0JIeVvdLf0pY29+7WIKahAoxETyhDvS1FwCkAEFVqiGortZ39LtZg1RF+N6E70uXsqbCKMEjIURrKCEGQVtyIHPRZFZWmhM6/6XJnFNYGvBB5+8QcA5wVJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qs/jkr41pVJhlqjqIo4Dp0IOTVGhXFDkBybRJYaF+dg=;
 b=Z8b2j7hP2HV5oFSno7ZZFUqFCc0f8aGYzhVYAMOmDKWJ9YHv6qJ+EUJrVfZ/9qF0KXEY2bJrD8IVldWxlqHYo6kZsYReHw2Eegr/ZpE4wlYBteXzGYjdVDqrxtvcFpeBCqXbi31BRJqsmmF9KdXgzt3AYikCSJ1uxCMRQOs/Vfs7L0vMODZdBm58doqAdFQ4852eZ6o+85sEgvxisOo2PwlScg5bcpHKmKzMAAIEu4F69hAVvfzh9KnV2R5K2l706od8pjl1NowcFQ3exsU0hvJzxm8yuzNYcXIpLa00aMYYnXKQPCztBpEfD9Vycp7emjV3wcr6saCC5Tf8BRnrHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from PAXPR04MB9186.eurprd04.prod.outlook.com (2603:10a6:102:232::18)
 by DBBPR04MB7899.eurprd04.prod.outlook.com (2603:10a6:10:1e1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.27; Tue, 22 Feb
 2022 16:24:15 +0000
Received: from PAXPR04MB9186.eurprd04.prod.outlook.com
 ([fe80::9ce4:9be4:64f8:9c6]) by PAXPR04MB9186.eurprd04.prod.outlook.com
 ([fe80::9ce4:9be4:64f8:9c6%6]) with mapi id 15.20.4995.027; Tue, 22 Feb 2022
 16:24:15 +0000
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
Subject: [PATCH V2 0/4] NTB function for PCIe RC to EP connection
Date: Tue, 22 Feb 2022 10:23:51 -0600
Message-Id: <20220222162355.32369-1-Frank.Li@nxp.com>
X-Mailer: git-send-email 2.24.0.rc1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-ClientProxiedBy: SJ0PR13CA0190.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::15) To PAXPR04MB9186.eurprd04.prod.outlook.com
 (2603:10a6:102:232::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 57f58000-413a-4639-ece4-08d9f61fc4be
X-MS-TrafficTypeDiagnostic: DBBPR04MB7899:EE_
X-Microsoft-Antispam-PRVS: <DBBPR04MB7899AFF61F4FB5019426F391883B9@DBBPR04MB7899.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UkBvm86E+OYUUtZUYHBY+oyfYgfyhR0jPdpPnvsYkQPJNcs5243aAv+gcB8EUQ3FZWX+McgUR86SMdg9QZLljvcQmA2ZsHifZrurTi0C76kurUqV2jpjGH9uX7KuNaX1AgBd/sCkBe7YpztGC56yk/oEZC7fI4Qt9e1NLeTS6GNzzHppqorM3KMPj+TPeAIDZMPfN93zFwnCXT6VYECOBNUztoUBk8gNd07dXYFv+kgfnICDAeaKV83g7GbFvHR4EGs0GjdbxiI3W0V4brb9GCqn/0g6kR7qpa2PJxdHplbSHUdWk68Nnz+Gl3D36FppSStRxYllRZMm7giBq3Dlua6GIIDGLQee+OLGSO5acfHkvXvf+Utib8FwF762eKSYDZBnvfgWSfWRQRDCxF+3jyy2XhoXfAhegvgwmVwT1gZulF9JPkxNft9kg5+UvcrZktFYH7LoUWWqfjVftswQFpC7XKF+jRBmG4Jln3In87fPi7Zwp/AfrSraNXU0jDCEujXJH6HSgLtDnRuNHgJSD5F96tFLvykH3RpPf+NI/dWbUElRWr3QYt74H+Ws+xwM8Y2OvnObRDStV5/k/2R6cc+HSgLpaeoWtGLSPk6y3OjOfRfj2iK/x0+rZ8RKOGLEDKDsfRC6GfQYihyvxFMtH1IqEGUFuVekVoxbedVmTshRJMWXBc9UihODh0E3ezbrfAU2YpMTOmBOPYo97w9NOcnfNEedf4k8LE5cE89cQ0w=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9186.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66946007)(66556008)(83380400001)(508600001)(4326008)(36756003)(8676002)(66476007)(6486002)(52116002)(6666004)(6506007)(5660300002)(26005)(1076003)(186003)(86362001)(8936002)(316002)(7416002)(2616005)(38350700002)(6512007)(38100700002)(921005)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0sxMXpOY0QwMUNOZWZVL1JIZExrZUo4aURrbUlJckd5TFloVjF5TnI5a3NB?=
 =?utf-8?B?bmRUSnphMDErV2JrTkN2VzMrNFZ2STBsZmhITjh1Z21NejZ2Zk9hYmtmSzFN?=
 =?utf-8?B?akc0RHlVSlFGbVhNSkViS01GaHZVZFBSVEloNzR1MVk0OWliWmxFSitkQXJU?=
 =?utf-8?B?aE9FUE52SkthUmJHcWNzaEF2emp4Q3l0Qy9MakxuOVhDQTVneEZwZWpFZmE0?=
 =?utf-8?B?eCt5NndPa2J1RGFXaWp2NTV1N1U4bnZiZ1hTN0lNaEdYRTJNYzNteW1XWmFU?=
 =?utf-8?B?RldEYVBnRGVVS1RpV0FtNUxkSzV5eDJJbEFaNkpkZlN5cVpPNTVmRGk3TndN?=
 =?utf-8?B?MXpoS3lzYWdBR0dscWdRM1lmRi8vbDl0aXJGcXY4K2NUYzd1ZzNLd3BtajlR?=
 =?utf-8?B?amdQY2N1TFd2MzA3aXBBQUdVdXNTcmEwNVp0cG9maXRlUDR5MXhZTi91ZXhz?=
 =?utf-8?B?YXV3UGRsVktvSFdPWnhsZVJKRjZDTXVnOERWQks3QnUzYUdXR2V1aUIrVUxn?=
 =?utf-8?B?blNyRmE0eFR6d1d6VnRxazFCYTAyeGJXdTZRaVordGh1bVdxY3VyWVBtbDNt?=
 =?utf-8?B?SHg0dmZVM29oMmJaUWtKdFE0bnJVNlVYbFJTemVZK1FSM2krM3ZYQ2IrQVZy?=
 =?utf-8?B?MUkxTHRFNWNDTG9rSXVCbVpIVUJlemRmVndGc1FpKy9WbEtmbVRHb3FId0ZI?=
 =?utf-8?B?dnpONnZNY1dCNy9jMDRjdzhIbXkwZm4ycWxmeXEwSmZwWmM4Q0dDOVdGbFpY?=
 =?utf-8?B?MnZYMm9YclUvd2N1L0VmY0NiVG52U0FQVVlXQlF6WWVveWxjRkVGaTZrL2Zp?=
 =?utf-8?B?ZUtNbVdhSXEzYjN0YWoxcHJYNkNPVlo4T0tJMDdyQ3B1T2g1THEvWDNmUEpi?=
 =?utf-8?B?Ni8zdHJWYVQ0WjZ2YTVMNGlrNUhLeUpEdzlrYk04WlN1SVNHUG1EWkw4SHZV?=
 =?utf-8?B?bGliVlZ5S01BdWFyaTBNbjF6NE1QbUdnR3VHZzdyQldSelVKYS9STE5jZkYy?=
 =?utf-8?B?Rkp2d0Z3TWw3MHBjZmxzVExGTGpTeFRPMGJaMEZkR2VjM3FuaGg5WGhNaEJl?=
 =?utf-8?B?UzI2NGlmUEJ3NE9CKzdaZ3NkU2FkUUp2TlNKUmkzVksyYUtndVlTbmVDSERO?=
 =?utf-8?B?T2VLcFdGa0pTNFgrKy83QXhoaXJZMlhWd21DazZNa2duUFpTbHVVdEswSkYz?=
 =?utf-8?B?OWRMaWg3NXgyMTVneXBnck1qc2pHRENUWCtqQTlqU3BWWUFUMUQxbFdDK012?=
 =?utf-8?B?VjJWbkcyK3Uvc3F4Yi9UYkJRd0NLV3hzd2xycU1qWGZLQ0V1VzR1R1JWV1Zv?=
 =?utf-8?B?TVc3TE50VUVacUlwS0FQd3hBNW5IRzhEcjIvZHlhY1hWUzNrc3VGZ3pvdHFE?=
 =?utf-8?B?RHd2SUhvRWJEOXd6VFoxcEY4dCthaU1wSFA5VTExeEZKTFBxRnJvektpYk5M?=
 =?utf-8?B?a2s4K004M1dOd3dRZzB4SFk1aXIrdFJUOENqWXk5NWlaWGdsbG1jdHJxM1Q1?=
 =?utf-8?B?Q2haZ3dPeWZVVFRKOWtJamJWNUNjR29zV3FUK1J6SWJzMEJxVS9XaERXcTJO?=
 =?utf-8?B?V3NWcUdqak5Ga3piK2hOVHNGRTVrZW8vZy92U1Rkcm5yQVpyMW90WHdIKzA5?=
 =?utf-8?B?WS9rWUhIaWRlSTh6OU5oSHNlSURxN2MyK3c3TFd1NDkxTUtTbm9HNU4yMjVz?=
 =?utf-8?B?enZlTWhwdWE4b3Flc0xXMkplcjRFc2RzME9Wdjc5MEdBRXB3RDg3L2FUZXlL?=
 =?utf-8?B?TDFwT0hHci9oTStSMWlLQjR5YXFQQkFWeUlEbTd6blcvRGQrTmVod2tDNkhw?=
 =?utf-8?B?OGg5dE9FS3JpdlBybmE5MUZUQ2U5amlYMktYaUJJSDdrdllHcCtCazVJbEhL?=
 =?utf-8?B?S0c5YjBaWHZ2OFZxelI4L0RIV1EzQnJ5SjJkRUk2V2xVQ1o5MmJJR1RmckVr?=
 =?utf-8?B?YkdnemV6cHRqeUZ2ZkV5SGJIWkhybnFpZzZUNWlEK3RhbEN5SVFoenhWeXl0?=
 =?utf-8?B?VGc5WWkvblF6cUtUVHVmV3NBM0w2WWxQOS9kZTZRZ3NsbDN2QUl6SUp3cmhN?=
 =?utf-8?B?UWhzU01PMzJlNE82bVozbGhaUGF0NDl3SHJSSlYzeGlYU0FSTGJuNC9ad29k?=
 =?utf-8?B?eEFkaUV6WHJSK3ZLRHFNUFpqZFVvcmp3M2YwSlRFNk1HZmhTQ0UwY1lPTDdm?=
 =?utf-8?Q?I6OfXAFLu24k4C5acFbBcAM=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57f58000-413a-4639-ece4-08d9f61fc4be
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9186.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2022 16:24:15.6776
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kjXjyyESD3oBD9tx/tUC1/kPc4xkYfD2jKW7I67TJm1LJPktEhRLTuqBovRRhTVIPaGRxZSvKkdn26ZpuA1iWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7899
X-Original-Sender: frank.li@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=ZsVXiqQ4;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of frank.li@nxp.com
 designates 2a01:111:f400:fe08::60a as permitted sender) smtp.mailfrom=frank.li@nxp.com;
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

VGhpcyBpbXBsZW1lbnQgTlRCIGZ1bmN0aW9uIGZvciBQQ0llIEVQIHRvIFJDIGNvbm5lY3Rpb25z
Lg0KVGhlIGV4aXN0ZWQgbnRiIGVwZiBuZWVkIHR3byBQQ0kgRVBzIGFuZCB0d28gUENJIEhvc3Qu
DQoNClRoaXMganVzdCBuZWVkIEVQIHRvIFJDIGNvbm5lY3Rpb25zLg0KDQogICAg4pSM4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQICAgICAgICAg4pSM4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQDQogICAg4pSCICAg
ICAgICAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIOKUgg0KICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAg
ICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIzilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilKQNCiAgICDilIIgTlRCICAgICAgICDilIIgICAgICAgICDi
lIIgICAgICAgICAgICAgICAgICAgICAg4pSCIE5UQiAgICAgICAgICDilIINCiAgICDilIIgTmV0
RGV2ICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCIE5ldERldiAg
ICAgICDilIINCiAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQg
ICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSkDQogICAg4pSCIE5UQiAgICAgICAg4pSCICAgICAgICAg
4pSCICAgICAgICAgICAgICAgICAgICAgIOKUgiBOVEIgICAgICAgICAg4pSCDQogICAg4pSCIFRy
YW5zZmVyICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUgiBUcmFuc2Zl
ciAgICAg4pSCDQogICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSk
ICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KICAgIOKUgiAgICAgICAgICAgIOKUgiAgICAgICAg
IOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgICAgICAgICAgICAgIOKUgg0KICAgIOKUgiAg
UENJIE5UQiAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgICAgICAg
ICAgICAgIOKUgg0KICAgIOKUgiAgICBFUEYgICAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAg
ICAgICAgICAgICDilIIgICAgICAgICAgICAgIOKUgg0KICAgIOKUgiAgIERyaXZlciAgIOKUgiAg
ICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgUENJIFZpcnR1YWwgIOKUgg0KICAg
IOKUgiAgICAgICAgICAgIOKUgiAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUkCAgICAgIOKUgiBOVEIgRHJpdmVyICAg4pSCDQogICAg4pSC
ICAgICAgICAgICAg4pSCICAgICAgICAg4pSCIFBDSSBFUCBOVEIgICAg4pSC4peE4pSA4pSA4pSA
4pSA4pa64pSCICAgICAgICAgICAgICDilIINCiAgICDilIIgICAgICAgICAgICDilIIgICAgICAg
ICDilIIgIEZOIERyaXZlciAgICDilIIgICAgICDilIIgICAgICAgICAgICAgIOKUgg0KICAgIOKU
nOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUnOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgIOKUnOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KICAgIOKUgiAgICAgICAg
ICAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgIOKUgiAgICAgIOKUgiAgICAgICAgICAg
ICAg4pSCDQogICAg4pSCICBQQ0kgQlVTICAg4pSCIOKXhOKUgOKUgOKUgOKUgOKUgOKWuiDilIIg
IFBDSSBFUCBCVVMgICDilIIgICAgICDilIIgIFZpcnR1YWwgUENJIOKUgg0KICAgIOKUgiAgICAg
ICAgICAgIOKUgiAgUENJICAgIOKUgiAgICAgICAgICAgICAgIOKUgiAgICAgIOKUgiAgICAgQlVT
ICAgICAg4pSCDQogICAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSY
ICAgICAgICAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pS04pSA4pSA4pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSYDQogICAgICAgIFBDSSBSQyAgICAgICAgICAgICAgICAgICAgICAgIFBDSSBF
UA0KDQoNCg0KRnJhbmsgTGkgKDQpOg0KICBQQ0k6IGRlc2lnbndhcmUtZXA6IEFsbG93IHBjaV9l
cGNfc2V0X2JhcigpIHVwZGF0ZSBpbmJvdW5kIG1hcCBhZGRyZXNzDQogIE5UQjogZXBmOiBBbGxv
dyBtb3JlIGZsZXhpYmlsaXR5IGluIHRoZSBtZW1vcnkgQkFSIG1hcCBtZXRob2QNCiAgUENJOiBl
bmRwb2ludDogU3VwcG9ydCBOVEIgdHJhbnNmZXIgYmV0d2VlbiBSQyBhbmQgRVANCiAgRG9jdW1l
bnRhdGlvbjogUENJOiBBZGQgc3BlY2lmaWNhdGlvbiBmb3IgdGhlIFBDSSB2TlRCIGZ1bmN0aW9u
IGRldmljZQ0KDQogRG9jdW1lbnRhdGlvbi9QQ0kvZW5kcG9pbnQvaW5kZXgucnN0ICAgICAgICAg
IHwgICAgMiArDQogLi4uL1BDSS9lbmRwb2ludC9wY2ktdm50Yi1mdW5jdGlvbi5yc3QgICAgICAg
IHwgIDEyNiArKw0KIERvY3VtZW50YXRpb24vUENJL2VuZHBvaW50L3BjaS12bnRiLWhvd3RvLnJz
dCB8ICAxNjcgKysNCiBkcml2ZXJzL250Yi9ody9lcGYvbnRiX2h3X2VwZi5jICAgICAgICAgICAg
ICAgfCAgIDQ4ICstDQogLi4uL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZXAu
YyAgIHwgICAxMCArLQ0KIGRyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9LY29uZmlnICAg
ICAgICB8ICAgMTEgKw0KIGRyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9NYWtlZmlsZSAg
ICAgICB8ICAgIDEgKw0KIGRyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLXZu
dGIuYyB8IDE0MjQgKysrKysrKysrKysrKysrKysNCiA4IGZpbGVzIGNoYW5nZWQsIDE3NzUgaW5z
ZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vUENJL2VuZHBvaW50L3BjaS12bnRiLWZ1bmN0aW9uLnJzdA0KIGNyZWF0ZSBtb2RlIDEw
MDY0NCBEb2N1bWVudGF0aW9uL1BDSS9lbmRwb2ludC9wY2ktdm50Yi1ob3d0by5yc3QNCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdm50
Yi5jDQoNCi0tIA0KMi4yNC4wLnJjMQ0KDQotLSAKWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBi
ZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtbnRi
IiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2Vpdmlu
ZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1udGIrdW5zdWJzY3JpYmVA
Z29vZ2xlZ3JvdXBzLmNvbS4KVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiB2aXNp
dCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvbGludXgtbnRiLzIwMjIwMjIyMTYy
MzU1LjMyMzY5LTEtRnJhbmsuTGklNDBueHAuY29tLgo=
