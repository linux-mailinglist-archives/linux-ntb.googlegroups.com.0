Return-Path: <linux-ntb+bncBC47F5EI6IFBBPM42SIAMGQEW2AODPA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCB04BFE73
	for <lists+linux-ntb@lfdr.de>; Tue, 22 Feb 2022 17:24:30 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id h17-20020ab03351000000b00341f4df8bbbsf14160uap.18
        for <lists+linux-ntb@lfdr.de>; Tue, 22 Feb 2022 08:24:30 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1645547069; cv=pass;
        d=google.com; s=arc-20160816;
        b=xWFyoimB6/rNGs4l+A/DLtsXjZxUrGk0hCSu22bJW4B+5t+5X8oRA/kuQunLPPwpbT
         uk2P+vlLbzF9XeB0EicDQJ5tgMr/NE0Nl0sXeNhiwSWw/IlBw58fievm9YgJt1IgGslm
         pgiI2E6IG7fIu7H8xfQmxkyCCK6swAJzk7zGjDl9lGPuT/Tx0Et6s+8WrsbB7bpMX3Rv
         r24CN1CunWe91U4lJJoY9DZyCS+vKX0K77s6qmagLg9Z6TCnyLljdCheFU2pKYMou2jJ
         082gSHNH3PTc4S2x02NaB/es/ok3reSXRGwtE0mzNgvRKGFWbJ1AB35XSg1ORiVM3SMS
         PKBw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=L2PR19vwbdzLGz5x3+uX3UVgYda8b56uL89xECEwlJk=;
        b=RvbS5CVMatfRyRi+PlfOxUKL3193c7zbgcLZdTxtpZHDVC29+7gz+/R+dPtLXD6wJI
         va9pa4wuRITXBa+xgmIJgaZKgD/aqvhnD106jdHHgzFDJwbEl77pfNPDrsYg34RXF2Zb
         4dkoFMk6Zt+VJbKD1CZwaE0j1axUNAk5iRVtst01QVTfKTj+b8bsx4lf8wnfkQkL850o
         X6x/zqnyDT4oU5v61hXIVdpj7/VQ0HUHqfFmEis4O12u9WRbi/VnLDR/i+WaG2vq70DE
         bHAp/1E3utNoK4uFJqqSxH8kJt8+styVjdpmtoqNaUv+m4ot8hB2h3RJ2dpybDE2HVes
         aylA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=bxURKeKe;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::619 as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L2PR19vwbdzLGz5x3+uX3UVgYda8b56uL89xECEwlJk=;
        b=E8p5xfO3+d9nc4GNxrSFz2KQn9bQpIWcNo+X48izwlHCa4m+9xoLig9xgYFZIurImq
         /dCnu3cWHAs2P51kgEE3cfXgw4fFZ+TJPX3fTmx8eXw5qK3ha8Cfmcm11EFcIln1jaT/
         Q0R/4LaStMEfZqdRaxrcFS9xXKEy4kc0C9EoVEFZbU+DqyQDOUBXT/R1OdItVAFzyBdb
         aDLpFo9FalPpPDtm/VU6bFvF4SfBxl7SzRrKKH+JJ2PJoxXK9S4R4HDeDma/mkHiwOtu
         e5b//B2xcIJy1pBa4bA68w43RFrInSEiin7WVOsO5bYBMuLywh/DwmHD08IPBZ4OXcv1
         Vt5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L2PR19vwbdzLGz5x3+uX3UVgYda8b56uL89xECEwlJk=;
        b=5fUWIwbxyOkvgofb/aH3WIHqXeaL0Wep/Da97SupaoitVMhUkOsSDJ41BFWhlSulc1
         QC2eZfEej6yAmxyOmSo9c4dLbpB5xxx4UDJIWQTnehD2J8XnuJOWTrtt5ugIgsP1NCFQ
         8TZcYE5TrHmuy9D72ZrR04ZkbIzy3QKkVFk+uPF8oNdcA/QBzEW9vGNzq5VZ9YbyMZIY
         EFvPh4m7c5fsmgFsxgcZpjQtKQ113+fz4vH1HJO7lmOp3UAWopQQUISijgGudQDuoeAe
         eZc+1lALuzEuNCaXNJEbPTZBvzGxZE2TR5uUJJe2V9SPGilLMuZIBnIkz0w6xsiQN0Jh
         iEsg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5338bLYrOL7J0fzZmVxha/PMjqFQu7dgXoLX0po7hOONt6PZY3dq
	jSUHTDS4/BaJJiMQXDQlOug=
X-Google-Smtp-Source: ABdhPJyBKfyEsbqldoBmdg6NCrk6vqHiF362yiRKD0uN5/S2v9lEMXr64S1HGBvLQ6UF9L33AIg0rA==
X-Received: by 2002:a67:e088:0:b0:31b:b338:5377 with SMTP id f8-20020a67e088000000b0031bb3385377mr10560953vsl.4.1645547069579;
        Tue, 22 Feb 2022 08:24:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9f:2461:0:b0:310:8578:3d6f with SMTP id 88-20020a9f2461000000b0031085783d6fls1196167uaq.3.gmail;
 Tue, 22 Feb 2022 08:24:29 -0800 (PST)
X-Received: by 2002:ab0:2b8a:0:b0:33c:a7e8:273f with SMTP id q10-20020ab02b8a000000b0033ca7e8273fmr10351440uar.129.1645547068993;
        Tue, 22 Feb 2022 08:24:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645547068; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zr6wJmA8Vh74HLNd++Ajbg7WWRBE8x5CKlv8xKTGLAFlzuh46mkOxoRAq/eJtikbSU
         ee8oY3557APsqg/CJz859M8ZN6Uhjd/9uBsj8ovYVY4gNlwjKm1lRGstB5GaEOqsR7FR
         KgTRuDxPxTxKgQVNUNaNHrzWMstHjq8JaqPKo3pA0YOQchqJUa/DJ88kT/OnhKikeqQN
         DeOipFIQpimG8jklG+8m0xHSGl75EKJAjBCZsWmTUgWJrGY7KRfwAMB2FrMftAuO3lzs
         j7MJrNfUTryDQNPLSQQGETAe58Q4JQ0r3o5rFd2k2b5kWsLp/7UAY5oWEwsWtQ04SRV2
         K+3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JnjfmRV5DcSkVQ2t63I2p84gGsDEwLAu1++xUm169S0=;
        b=pa/V6RSCzhGId55Y9RA4/KyaOzrYQ4HNbiCSJJiw0JgZ5MAm9Pzbmmfr3hRhINwZgj
         DFXOHgW6lxmeQgzF2kcB0a5PAjxYPB9+/jmMnE65sqjzGYpXEHRoVIFpyH/XkRhdHS6v
         CQKVD+NaEEX68n/4OTGZem6++xjjzvrqry4qtdvjmS44U5Gatu1uhtmNtlJpbF3iOlDp
         UWW4+P4pKpwCwX89sQoKEqoJVIheLAbgG4GnPu9MsMfU6uL6SNzxpkENvb2tchPF72+d
         IEGxQWK3cqogKgZUWoZ3TT5fWArlAD/0bogkfgAQ3Ri+8CSIG26+5af0ZG4nCT3QWKHk
         sOyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=bxURKeKe;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::619 as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-am5eur03on0619.outbound.protection.outlook.com. [2a01:111:f400:fe08::619])
        by gmr-mx.google.com with ESMTPS id g74si7142vkg.2.2022.02.22.08.24.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Feb 2022 08:24:28 -0800 (PST)
Received-SPF: pass (google.com: domain of frank.li@nxp.com designates 2a01:111:f400:fe08::619 as permitted sender) client-ip=2a01:111:f400:fe08::619;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lXufrFUs/BwdhPj7aEhnSeWxndc8E4wPGAyCktRcAhT1Pu3b2zWE9fZVU06HmkS1TKQyQTtNbFMeV7w6IXaMEUAMeAkRuvEdgr9BP1KIXr7esKe7zfgUVtvaVlOKJwFbrfG8tlcf/1iJ613x7nqE+FHOn083TGTtR9iEFvt9gMMAFMpJjXQpmOqm11enW75doAj5iItxAlSVrEPzdXfjRokTMDpRGql4U3suZpudQBBlLdv9ltLDCCUUq9nDgWspQu1GaINezIrM+ptRuADaTCG8aDDQIwW6LwNLyk92JNPLsFDOuhzS3cmtW64jcfcICgut8TM6eDwQJtnfz7WMeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JnjfmRV5DcSkVQ2t63I2p84gGsDEwLAu1++xUm169S0=;
 b=JvUaGCLhSkR735BP+AHL5LmQDslhALgRrGjYLU4W4joRR39lmx+z7l0hp7VfpHIFbcK78vcTaifp7sEz1S8pcv5+M7NrxZmXyJvCxyD/W0N9c2DqGLBPEugU/EvpgVpPfNddbmyDcvNQ1QmNlzKg53OK7iyoTjG9eK12k1xQxpyOtThA5FORqIQFlmRkFmI0wWKgyds4ziOu53yReIfybNpdKvJ5hbrbBTtWJC1E4hWxZe+1w8Iv1Y/2F60xkenDlgUl1BYJFtn145YE11oR72unBhTcZrejAW4E+SjtJhoCJmiARQuxZVsm92AB/drjzfMtcat1GwJcYAS0uo22lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from PAXPR04MB9186.eurprd04.prod.outlook.com (2603:10a6:102:232::18)
 by DBBPR04MB7899.eurprd04.prod.outlook.com (2603:10a6:10:1e1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.27; Tue, 22 Feb
 2022 16:24:26 +0000
Received: from PAXPR04MB9186.eurprd04.prod.outlook.com
 ([fe80::9ce4:9be4:64f8:9c6]) by PAXPR04MB9186.eurprd04.prod.outlook.com
 ([fe80::9ce4:9be4:64f8:9c6%6]) with mapi id 15.20.4995.027; Tue, 22 Feb 2022
 16:24:26 +0000
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
Subject: [PATCH v2 3/4] PCI: endpoint: Support NTB transfer between RC and EP
Date: Tue, 22 Feb 2022 10:23:54 -0600
Message-Id: <20220222162355.32369-4-Frank.Li@nxp.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20220222162355.32369-1-Frank.Li@nxp.com>
References: <20220222162355.32369-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: SJ0PR13CA0190.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::15) To PAXPR04MB9186.eurprd04.prod.outlook.com
 (2603:10a6:102:232::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 05601ea5-d181-4421-c068-08d9f61fcadb
X-MS-TrafficTypeDiagnostic: DBBPR04MB7899:EE_
X-Microsoft-Antispam-PRVS: <DBBPR04MB789946F363DB9482F3279C1A883B9@DBBPR04MB7899.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LAsLzUoIea/lFJCgNZlyPPvgIRJpYVcVN27/dfZ8/vJK2KVVc80syJ68QPPxq4h54IldM0d3Giikz0lvNqnUenK+2JMcg6wkdCOAcvTN1HwRjcqbqLD8yyPMwBFf0HhquxqUGS/IJtgzIeMcGhb5LANMDx4fNHE1Jls6IaCJ/RgY2fc4JLvBrEHx//swTKQlvtv8r1BhM1vD4CztGODvCB/ecuQt+9j6d75WR9NJHZAOloXtknxNu7ShjxIiM9wVWrxS4K+HDtMRzCazoPtZ0tQ6x33g5TZl8zCqDGF2P8t3hkuYiN/+0CDSZyqGLTUnhpqIZlWD8Z50q/j+8Qt1ArR0WJDVj62OH7AkM8wAjRZ4TiqdpK/6HbsOeUc8Vbsh/y991noGl7sIfjbRtvYIuKRAWl+GJ46AekgKsIOHloTeLN4ygBHrIZj1hV6uBUYKzAlKpnIU+iFLdZ0Z7VmnoVziD5+R8kNotiS3KJzRkyrNNw5JFdWkwHKxzC1ti0CQyu2eYC9jtGWGXfCmoUhUjOUjcW21oWZCBjz5Juj60zT4rrAOSDdf5Q0MfwsljlVuD7JpBwxq/JTeB0XvGQ6ftpra0KvS/awes90iY9l1tIg80WkAezTR/1KBiKIt9vx2Oza7LWUsYAZ6+ej0+pfepH33hZJ5/MHimX4xbhsJgnPEtiordgW7i9KQ9IJgLN2A4opQZXIcVD4iH0mGBq+xN3X6+p0S4JffQ8qFTrrAJgc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9186.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66946007)(66556008)(83380400001)(508600001)(4326008)(36756003)(8676002)(66476007)(6486002)(52116002)(6666004)(6506007)(5660300002)(26005)(1076003)(186003)(86362001)(30864003)(8936002)(316002)(7416002)(2616005)(38350700002)(6512007)(38100700002)(921005)(2906002)(579004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFdieG5sVkpCcWVJMFZBcWl2RzdibDFxdEJrdUptV0lRaGI1eXh2d0NYcHpR?=
 =?utf-8?B?YVBubkl4SVlFdnd6ZkEybFRocWQ4UndjLzZVdXNyV2VWQjJFT2RxeXErWDBL?=
 =?utf-8?B?alpiNEJvS0ViSGR3TWtYamJtUFBiWUQzaDhSK0x0RWwyUDlrL2VKVnFMSVZv?=
 =?utf-8?B?NTlMTWxXTld5WGxSc0lZRElRRm5FTmpxWDgvN1M2NWE2VGo0d0VmaTlvdUJ6?=
 =?utf-8?B?aWszbG9KWkh2WlkyVkg2LzdEL3dnc29jb1YwQm1rTXdzZXpjZXdYaVN5TVNE?=
 =?utf-8?B?ZEpMb3kxZnh3RFpNZHBPTll4Z2owbG95TWE3RHc2STZkekx0a2xydk1YN0Ey?=
 =?utf-8?B?TzlJL2ExUFFydFpOdUxWQkd1WC9uYVUrdmFOVG53K2hESGROSWdLMHlYdEtC?=
 =?utf-8?B?NGsxbGV4ZERmQkU4SHZkUDVXMks4ZWF1T0d1amI0NzJGaHVvclRBM2ozbzVB?=
 =?utf-8?B?ZFRKaGQxS25iNFQyNkVqN0dqbFcwRnpIcmZZQkdPa0ViOWUveWxkU1gwbExs?=
 =?utf-8?B?SkQvb0cvdlFxZ1RjRnowdE9SOVp2TE1qOURUbTNiSHM3VjU4RUVnSy9CRlNC?=
 =?utf-8?B?c2ZmNXNTMDBydk5kbEZQUnIvTWtzbFRLRWhkZHljNG9ZcnNTUHVHblI0ZFFv?=
 =?utf-8?B?ZUw5WmlPOU1NTzVXQnp0Z0l2aXUyWlE1eC9nM2RpMHZjVHRqMzNwZm5jZzZx?=
 =?utf-8?B?R1RkUzlZR0dYMXoycDA4NTJ6VzZFa1p5ZEtFcEFPR1NKWjI3cjR6RU9zRlBR?=
 =?utf-8?B?Mis0WFl3d2I1QnNVcklaTWhZcVpsdFQzSWtpNEJMeFoySU9CU1dRM2RoWVMy?=
 =?utf-8?B?YWRwb1VnWHhZRm9DVjNjcGREeXB4eUlqZGFYZ0V1VEFZZGdId3hSdSs0ODBi?=
 =?utf-8?B?T3RKUlpoenErZDF1RDIzaE5sUkNSZUZ1dnQrakFpMktCa3NmSk1SNXNQRjhz?=
 =?utf-8?B?a0RsNTVDTXgxdGRWa1c4YjJyVkJvMEtzWEhKRmVGOVhLQ3RwSk5jNVM5S0g4?=
 =?utf-8?B?aDlobW5uZ29HNTJMK0x3eFVjenozbnFzM0xBdWVNSW1uT1h4TkFhTXlnOVhj?=
 =?utf-8?B?bWNjQndNQldzVlNkR0dNQTNWR1ErWDVlMjMwV1lnZUlSWDM4ck92blN3S3dE?=
 =?utf-8?B?YWVSNE02RUYwSGxrYnl6RjlFR2l5bnFGSmozYTR6TkJMUzFNQ0dUSkUzQTZu?=
 =?utf-8?B?a0hKWUR4ZUhFY2YvWXZDT3F0cnZLbGZKOHVIMjZ2eFY2WUdLaWd2bGtXck8x?=
 =?utf-8?B?eXJGYStNd0gwS0lMQnFsYjlQMmhBNEgvZG9HM1NzUzU2M2NFN1c4Z1BjelJs?=
 =?utf-8?B?eDdkNitaaFFjTi9WZEo0ZTh4QlRtSllrODZVRjNHRGVFL1AxdnBGZGdRblIw?=
 =?utf-8?B?ZkRNTDFaR1RDSFM0am1VM0QzVmpFNitYWmUvZVllNjl5Y2RJVGdZWXFPeVp6?=
 =?utf-8?B?RzdRMVRIV3gwZDRZbGJPSVhrUUw1YmNmU0dyTEtuNEU0a2FyZHFMNFl5anVP?=
 =?utf-8?B?aFpuOUxrMW1Pc0xKT3hpbW9uL1d6ZC9MamZvTHU3dHYzb2tXeHI0K09rSVBy?=
 =?utf-8?B?NW1yMWxDQXBqTG40c09sbHh5SnhMWmZabitUYVI1dm5GSWsyU241dWhwenM3?=
 =?utf-8?B?Qm1ROU1WNlh0b0JHV3FwRGVnM00wb0UwWCtFZitBZ0VjQ0tPRzk2MzM3NHNS?=
 =?utf-8?B?SFlKOFQzY3F1Q2lDRS9DWGZMckZUY0pXZnlTd1hBNEZpaDYzQ0Z4anBGUGJI?=
 =?utf-8?B?Y3NDcE1IbFJQbWNZVUJic3ZsRHBJQ2x5L2t3MUhmeEZpN1hVOTBQcFB0YUVp?=
 =?utf-8?B?ek83RHZzV0oxdlFkL28ycDRiVmxxT1hqQUJYUjd0dENXM0gvOVBMUTVVNjFW?=
 =?utf-8?B?NVRndWh6L3lFNkxjUkEvSFVBWUFtRWpMUHZoSjJ2T3ZBRTNPdzZ1UDZOaThl?=
 =?utf-8?B?WGJyakpYQXA3V2NKL3NjOWRYZlR0TzF1SGVFRHpTYVZ2MEM4MzdMOHo1R3Bt?=
 =?utf-8?B?dHlvUitPRzhVbGhDY1ZGK0ZWN0FLd2ZsQ2QybnlDWVBnZnBEck5CWDlMczV5?=
 =?utf-8?B?cjRUTlM3a0ltTit2eWtVNDd3azlvUDV4cCtjMlhXand3U1Jmb1lPR0tVbCtV?=
 =?utf-8?B?TC9vWE5VUVRPRjQvYmlZSzZnWjNPYVFiU01sTElFMTBmNzUzQURTcjBuNXJW?=
 =?utf-8?Q?dMpzhgCibPbPHPPTKpGa92g=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05601ea5-d181-4421-c068-08d9f61fcadb
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9186.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2022 16:24:26.0266
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aWE7XxQj6ntZMD6dvi5ndJoIxyj6U9Rr0YwGTtXP/D7BCDy8NL1PI2kc9qjJZcMEtkyB5YLP8YZPBIhbCZ2JcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7899
X-Original-Sender: frank.li@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=bxURKeKe;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of frank.li@nxp.com
 designates 2a01:111:f400:fe08::619 as permitted sender) smtp.mailfrom=frank.li@nxp.com;
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

Add NTB function driver and virtual PCI Bus and Virtual NTB driver
to implement communication between PCIe Root Port and PCIe EP devices

=E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90         =E2=94=8C=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=90
=E2=94=82            =E2=94=82         =E2=94=82                           =
          =E2=94=82
=E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=82      =
                =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=A4
=E2=94=82 NTB        =E2=94=82         =E2=94=82                      =E2=
=94=82 NTB          =E2=94=82
=E2=94=82 NetDev     =E2=94=82         =E2=94=82                      =E2=
=94=82 NetDev       =E2=94=82
=E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=82      =
                =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=A4
=E2=94=82 NTB        =E2=94=82         =E2=94=82                      =E2=
=94=82 NTB          =E2=94=82
=E2=94=82 Transfer   =E2=94=82         =E2=94=82                      =E2=
=94=82 Transfer     =E2=94=82
=E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=82      =
                =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=A4
=E2=94=82            =E2=94=82         =E2=94=82                      =E2=
=94=82              =E2=94=82
=E2=94=82  PCI NTB   =E2=94=82         =E2=94=82                      =E2=
=94=82              =E2=94=82
=E2=94=82    EPF     =E2=94=82         =E2=94=82                      =E2=
=94=82              =E2=94=82
=E2=94=82   Driver   =E2=94=82         =E2=94=82                      =E2=
=94=82 PCI Virtual  =E2=94=82
=E2=94=82            =E2=94=82         =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90      =E2=94=82 NTB Driver   =E2=
=94=82
=E2=94=82            =E2=94=82         =E2=94=82 PCI EP NTB    =E2=94=82=E2=
=97=84=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=96=BA=E2=94=82              =
=E2=94=82
=E2=94=82            =E2=94=82         =E2=94=82  FN Driver    =E2=94=82   =
   =E2=94=82              =E2=94=82
=E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=9C=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4      =E2=94=
=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4
=E2=94=82            =E2=94=82         =E2=94=82               =E2=94=82   =
   =E2=94=82              =E2=94=82
=E2=94=82  PCI Bus   =E2=94=82 =E2=97=84=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=96=BA =E2=94=82  PCI EP Bus   =E2=94=82      =E2=94=82  Vir=
tual PCI =E2=94=82
=E2=94=82            =E2=94=82  PCI    =E2=94=82               =E2=94=82   =
   =E2=94=82     Bus      =E2=94=82
=E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98         =E2=94=94=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=98
PCIe Root Port                        PCI EP

This driver includes 3 parts:
 1 PCI EP NTB function driver
 2 Virtual PCI bus
 3 PCI virtual NTB driver, which is loaded only by above virtual PCI bus

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
Change from v1:
 - Fix code style problem according to Bjorn's feedback
 - Remove hardcode VPCI_BUS_NUM, let user choose free number by configfs
 - Remove hardcode vid pid for virtual pci ntb driver, change by
   configfs

 drivers/pci/endpoint/functions/Kconfig        |   11 +
 drivers/pci/endpoint/functions/Makefile       |    1 +
 drivers/pci/endpoint/functions/pci-epf-vntb.c | 1424 +++++++++++++++++
 3 files changed, 1436 insertions(+)
 create mode 100644 drivers/pci/endpoint/functions/pci-epf-vntb.c

diff --git a/drivers/pci/endpoint/functions/Kconfig b/drivers/pci/endpoint/=
functions/Kconfig
index 5f1242ca2f4e4..65217428d17b9 100644
--- a/drivers/pci/endpoint/functions/Kconfig
+++ b/drivers/pci/endpoint/functions/Kconfig
@@ -25,3 +25,14 @@ config PCI_EPF_NTB
 	  device tree.
=20
 	  If in doubt, say "N" to disable Endpoint NTB driver.
+
+config PCI_EPF_VNTB
+        tristate "PCI Endpoint NTB driver"
+        depends on PCI_ENDPOINT
+        select CONFIGFS_FS
+        help
+          Select this configuration option to enable the Non-Transparent
+          Bridge (NTB) driver for PCIe Endpoint. NTB driver implements NTB
+          between PCI Root Port and PCIe Endpoint.
+
+          If in doubt, say "N" to disable Endpoint NTB driver.
diff --git a/drivers/pci/endpoint/functions/Makefile b/drivers/pci/endpoint=
/functions/Makefile
index 96ab932a537a2..5c13001deaba1 100644
--- a/drivers/pci/endpoint/functions/Makefile
+++ b/drivers/pci/endpoint/functions/Makefile
@@ -5,3 +5,4 @@
=20
 obj-$(CONFIG_PCI_EPF_TEST)		+=3D pci-epf-test.o
 obj-$(CONFIG_PCI_EPF_NTB)		+=3D pci-epf-ntb.o
+obj-$(CONFIG_PCI_EPF_VNTB) 		+=3D pci-epf-vntb.o
diff --git a/drivers/pci/endpoint/functions/pci-epf-vntb.c b/drivers/pci/en=
dpoint/functions/pci-epf-vntb.c
new file mode 100644
index 0000000000000..1466dd1904175
--- /dev/null
+++ b/drivers/pci/endpoint/functions/pci-epf-vntb.c
@@ -0,0 +1,1424 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Endpoint Function Driver to implement Non-Transparent Bridge functional=
ity
+ * Between PCI RC and EP
+ *
+ * Copyright (C) 2020 Texas Instruments
+ * Copyright (C) 2022 NXP
+ *
+ * Based on pci-epf-ntb.c
+ * Author: Frank Li <Frank.Li@nxp.com>
+ * Author: Kishon Vijay Abraham I <kishon@ti.com>
+ */
+
+/**
+ * +------------+         +---------------------------------------+
+ * |            |         |                                       |
+ * +------------+         |                        +--------------+
+ * | NTB        |         |                        | NTB          |
+ * | NetDev     |         |                        | NetDev       |
+ * +------------+         |                        +--------------+
+ * | NTB        |         |                        | NTB          |
+ * | Transfer   |         |                        | Transfer     |
+ * +------------+         |                        +--------------+
+ * |            |         |                        |              |
+ * |  PCI NTB   |         |                        |              |
+ * |    EPF     |         |                        |              |
+ * |   Driver   |         |                        | PCI Virtual  |
+ * |            |         +---------------+        | NTB Driver   |
+ * |            |         | PCI EP NTB    |<------>|              |
+ * |            |         |  FN Driver    |        |              |
+ * +------------+         +---------------+        +--------------+
+ * |            |         |               |        |              |
+ * |  PCI Bus   | <-----> |  PCI EP Bus   |        |  Virtual PCI |
+ * |            |  PCI    |               |        |     Bus      |
+ * +------------+         +---------------+--------+--------------+
+ * PCIe Root Port                        PCI EP
+ */
+
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+
+#include <linux/pci-epc.h>
+#include <linux/pci-epf.h>
+#include <linux/ntb.h>
+
+static struct workqueue_struct *kpcintb_workqueue;
+
+#define COMMAND_CONFIGURE_DOORBELL	1
+#define COMMAND_TEARDOWN_DOORBELL	2
+#define COMMAND_CONFIGURE_MW		3
+#define COMMAND_TEARDOWN_MW		4
+#define COMMAND_LINK_UP			5
+#define COMMAND_LINK_DOWN		6
+
+#define COMMAND_STATUS_OK		1
+#define COMMAND_STATUS_ERROR		2
+
+#define LINK_STATUS_UP			BIT(0)
+
+#define SPAD_COUNT			64
+#define DB_COUNT			4
+#define NTB_MW_OFFSET			2
+#define DB_COUNT_MASK			GENMASK(15, 0)
+#define MSIX_ENABLE			BIT(16)
+#define MAX_DB_COUNT			32
+#define MAX_MW				4
+
+enum epf_ntb_bar {
+	BAR_CONFIG,
+	BAR_DB,
+	BAR_MW0,
+	BAR_MW1,
+	BAR_MW2,
+};
+
+/*
+ * +--------------------------------------------------+ Base
+ * |                                                  |
+ * |                                                  |
+ * |                                                  |
+ * |          Common Control Register                 |
+ * |                                                  |
+ * |                                                  |
+ * |                                                  |
+ * +-----------------------+--------------------------+ Base+span_offset
+ * |                       |                          |
+ * |    Peer Span Space    |    Span Space            |
+ * |                       |                          |
+ * |                       |                          |
+ * +-----------------------+--------------------------+ Base+span_offset
+ * |                       |                          |     +span_count * =
4
+ * |                       |                          |
+ * |     Span Space        |   Peer Span Space        |
+ * |                       |                          |
+ * +-----------------------+--------------------------+
+ *       Virtual PCI             PCIe Endpoint
+ *       NTB Driver               NTB Driver
+ */
+struct epf_ntb_ctrl {
+	u32     command;
+	u32     argument;
+	u16     command_status;
+	u16     link_status;
+	u32     topology;
+	u64     addr;
+	u64     size;
+	u32     num_mws;
+	u32	reserved;
+	u32     spad_offset;
+	u32     spad_count;
+	u32	db_entry_size;
+	u32     db_data[MAX_DB_COUNT];
+	u32     db_offset[MAX_DB_COUNT];
+} __packed;
+
+struct epf_ntb {
+	struct ntb_dev ntb;
+	struct pci_epf *epf;
+	struct config_group group;
+
+	u32 num_mws;
+	u32 db_count;
+	u32 spad_count;
+	u64 mws_size[MAX_MW];
+	u64 db;
+	u32 vbus_number;
+	u16 vntb_pid;
+	u16 vntb_vid;
+
+	bool linkup;
+	u32 spad_size;
+
+	enum pci_barno epf_ntb_bar[6];
+
+	struct epf_ntb_ctrl *reg;
+
+	phys_addr_t epf_db_phy;
+	void __iomem *epf_db;
+
+	phys_addr_t vpci_mw_phy[MAX_MW];
+	void __iomem *vpci_mw_addr[MAX_MW];
+
+	struct delayed_work cmd_handler;
+};
+
+#define to_epf_ntb(epf_group) container_of((epf_group), struct epf_ntb, gr=
oup)
+#define ntb_ndev(__ntb) container_of(__ntb, struct epf_ntb, ntb)
+
+static struct pci_epf_header epf_ntb_header =3D {
+	.vendorid	=3D PCI_ANY_ID,
+	.deviceid	=3D PCI_ANY_ID,
+	.baseclass_code	=3D PCI_BASE_CLASS_MEMORY,
+	.interrupt_pin	=3D PCI_INTERRUPT_INTA,
+};
+
+/**
+ * epf_ntb_link_up() - Raise link_up interrupt to Virtual Host
+ * @ntb: NTB device that facilitates communication between HOST and VHOST
+ * @link_up: true or false indicating Link is UP or Down
+ *
+ * Once NTB function in HOST invoke ntb_link_enable(),
+ * this NTB function driver will trigger a link event to vhost.
+ */
+static int epf_ntb_link_up(struct epf_ntb *ntb, bool link_up)
+{
+	if (link_up)
+		ntb->reg->link_status |=3D LINK_STATUS_UP;
+	else
+		ntb->reg->link_status &=3D ~LINK_STATUS_UP;
+
+	ntb_link_event(&ntb->ntb);
+	return 0;
+}
+
+/**
+ * epf_ntb_configure_mw() - Configure the Outbound Address Space for vhost
+ *   to access the memory window of host
+ * @ntb: NTB device that facilitates communication between host and vhost
+ * @mw: Index of the memory window (either 0, 1, 2 or 3)
+ *
+ *                          EP Outbound Window
+ * +--------+              +-----------+
+ * |        |              |           |
+ * |        |              |           |
+ * |        |              |           |
+ * |        |              |           |
+ * |        |              +-----------+
+ * | Virtual|              | Memory Win|
+ * | NTB    | -----------> |           |
+ * | Driver |              |           |
+ * |        |              +-----------+
+ * |        |              |           |
+ * |        |              |           |
+ * +--------+              +-----------+
+ *  VHost                   PCI EP
+ */
+static int epf_ntb_configure_mw(struct epf_ntb *ntb, u32 mw)
+{
+	phys_addr_t phys_addr;
+	u8 func_no, vfunc_no;
+	u64 addr, size;
+	int ret =3D 0;
+
+	phys_addr =3D ntb->vpci_mw_phy[mw];
+	addr =3D ntb->reg->addr;
+	size =3D ntb->reg->size;
+
+	func_no =3D ntb->epf->func_no;
+	vfunc_no =3D ntb->epf->vfunc_no;
+
+	ret =3D pci_epc_map_addr(ntb->epf->epc, func_no, vfunc_no, phys_addr, add=
r, size);
+	if (ret)
+		dev_err(&ntb->epf->epc->dev,
+			"Failed to map memory window %d address\n", mw);
+	return ret;
+}
+
+/**
+ * epf_ntb_teardown_mw() - Teardown the configured OB ATU
+ * @ntb: NTB device that facilitates communication between HOST and vHOST
+ * @mw: Index of the memory window (either 0, 1, 2 or 3)
+ *
+ * Teardown the configured OB ATU configured in epf_ntb_configure_mw() usi=
ng
+ * pci_epc_unmap_addr()
+ */
+static void epf_ntb_teardown_mw(struct epf_ntb *ntb, u32 mw)
+{
+	pci_epc_unmap_addr(ntb->epf->epc,
+			   ntb->epf->func_no,
+			   ntb->epf->vfunc_no,
+			   ntb->vpci_mw_phy[mw]);
+}
+
+/**
+ * epf_ntb_cmd_handler() - Handle commands provided by the NTB Host
+ * @work: work_struct for the epf_ntb_epc
+ *
+ * Workqueue function that gets invoked for the two epf_ntb_epc
+ * periodically (once every 5ms) to see if it has received any commands
+ * from NTB host. The host can send commands to configure doorbell or
+ * configure memory window or to update link status.
+ */
+static void epf_ntb_cmd_handler(struct work_struct *work)
+{
+	struct epf_ntb_ctrl *ctrl;
+	u32 command, argument;
+	struct epf_ntb *ntb;
+	struct device *dev;
+	int ret;
+	int i;
+
+	ntb =3D container_of(work, struct epf_ntb, cmd_handler.work);
+
+	for (i =3D 1; i < ntb->db_count; i++) {
+		if (readl(ntb->epf_db + i * 4)) {
+			if (readl(ntb->epf_db + i * 4))
+				ntb->db |=3D 1 << (i - 1);
+
+			ntb_db_event(&ntb->ntb, i);
+			writel(0, ntb->epf_db + i * 4);
+		}
+	}
+
+	ctrl =3D ntb->reg;
+	command =3D ctrl->command;
+	if (!command)
+		goto reset_handler;
+	argument =3D ctrl->argument;
+
+	ctrl->command =3D 0;
+	ctrl->argument =3D 0;
+
+	ctrl =3D ntb->reg;
+	dev =3D &ntb->epf->dev;
+
+	switch (command) {
+	case COMMAND_CONFIGURE_DOORBELL:
+		ctrl->command_status =3D COMMAND_STATUS_OK;
+		break;
+	case COMMAND_TEARDOWN_DOORBELL:
+		ctrl->command_status =3D COMMAND_STATUS_OK;
+		break;
+	case COMMAND_CONFIGURE_MW:
+		ret =3D epf_ntb_configure_mw(ntb, argument);
+		if (ret < 0)
+			ctrl->command_status =3D COMMAND_STATUS_ERROR;
+		else
+			ctrl->command_status =3D COMMAND_STATUS_OK;
+		break;
+	case COMMAND_TEARDOWN_MW:
+		epf_ntb_teardown_mw(ntb, argument);
+		ctrl->command_status =3D COMMAND_STATUS_OK;
+		break;
+	case COMMAND_LINK_UP:
+		ntb->linkup =3D true;
+		ret =3D epf_ntb_link_up(ntb, true);
+		if (ret < 0)
+			ctrl->command_status =3D COMMAND_STATUS_ERROR;
+		else
+			ctrl->command_status =3D COMMAND_STATUS_OK;
+		goto reset_handler;
+	case COMMAND_LINK_DOWN:
+		ntb->linkup =3D false;
+		ret =3D epf_ntb_link_up(ntb, false);
+		if (ret < 0)
+			ctrl->command_status =3D COMMAND_STATUS_ERROR;
+		else
+			ctrl->command_status =3D COMMAND_STATUS_OK;
+		break;
+	default:
+		dev_err(dev, "UNKNOWN command: %d\n", command);
+		break;
+	}
+
+reset_handler:
+	queue_delayed_work(kpcintb_workqueue, &ntb->cmd_handler,
+			   msecs_to_jiffies(5));
+}
+
+/**
+ * epf_ntb_config_sspad_bar_clear() - Clear Config + Self scratchpad BAR
+ * @ntb_epc: EPC associated with one of the HOST which holds peer's outbou=
nd
+ *	     address.
+ *
+ * Clear BAR0 of EP CONTROLLER 1 which contains the HOST1's config and
+ * self scratchpad region (removes inbound ATU configuration). While BAR0 =
is
+ * the default self scratchpad BAR, an NTB could have other BARs for self
+ * scratchpad (because of reserved BARs). This function can get the exact =
BAR
+ * used for self scratchpad from epf_ntb_bar[BAR_CONFIG].
+ *
+ * Please note the self scratchpad region and config region is combined to
+ * a single region and mapped using the same BAR. Also note HOST2's peer
+ * scratchpad is HOST1's self scratchpad.
+ */
+static void epf_ntb_config_sspad_bar_clear(struct epf_ntb *ntb)
+{
+	struct pci_epf_bar *epf_bar;
+	enum pci_barno barno;
+
+	barno =3D ntb->epf_ntb_bar[BAR_CONFIG];
+	epf_bar =3D &ntb->epf->bar[barno];
+
+	pci_epc_clear_bar(ntb->epf->epc, ntb->epf->func_no, ntb->epf->vfunc_no, e=
pf_bar);
+}
+
+/**
+ * epf_ntb_config_sspad_bar_set() - Set Config + Self scratchpad BAR
+ * @ntb: NTB device that facilitates communication between HOST and vHOST
+ *
+ * Map BAR0 of EP CONTROLLER 1 which contains the HOST1's config and
+ * self scratchpad region.
+ *
+ * Please note the self scratchpad region and config region is combined to
+ * a single region and mapped using the same BAR.
+ */
+static int epf_ntb_config_sspad_bar_set(struct epf_ntb *ntb)
+{
+	struct pci_epf_bar *epf_bar;
+	enum pci_barno barno;
+	u8 func_no, vfunc_no;
+	struct device *dev;
+	int ret;
+
+	dev =3D &ntb->epf->dev;
+	func_no =3D ntb->epf->func_no;
+	vfunc_no =3D ntb->epf->vfunc_no;
+	barno =3D ntb->epf_ntb_bar[BAR_CONFIG];
+	epf_bar =3D &ntb->epf->bar[barno];
+
+	ret =3D pci_epc_set_bar(ntb->epf->epc, func_no, vfunc_no, epf_bar);
+	if (ret) {
+		dev_err(dev, "inft: Config/Status/SPAD BAR set failed\n");
+		return ret;
+	}
+	return 0;
+}
+
+/**
+ * epf_ntb_config_spad_bar_free() - Free the physical memory associated wi=
th
+ *   config + scratchpad region
+ * @ntb: NTB device that facilitates communication between HOST and vHOST
+ */
+static void epf_ntb_config_spad_bar_free(struct epf_ntb *ntb)
+{
+	enum pci_barno barno;
+
+	barno =3D ntb->epf_ntb_bar[BAR_CONFIG];
+	pci_epf_free_space(ntb->epf, ntb->reg, barno, 0);
+}
+
+/**
+ * epf_ntb_config_spad_bar_alloc() - Allocate memory for config + scratchp=
ad
+ *   region
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ * Allocate the Local Memory mentioned in the above diagram. The size of
+ * CONFIG REGION is sizeof(struct epf_ntb_ctrl) and size of SCRATCHPAD REG=
ION
+ * is obtained from "spad-count" configfs entry.
+ */
+static int epf_ntb_config_spad_bar_alloc(struct epf_ntb *ntb)
+{
+	size_t align;
+	enum pci_barno barno;
+	struct epf_ntb_ctrl *ctrl;
+	u32 spad_size, ctrl_size;
+	u64 size;
+	struct pci_epf *epf =3D ntb->epf;
+	struct device *dev =3D &epf->dev;
+	u32 spad_count;
+	void *base;
+	int i;
+	const struct pci_epc_features *epc_features =3D pci_epc_get_features(epf-=
>epc,
+								epf->func_no,
+								epf->vfunc_no);
+	barno =3D ntb->epf_ntb_bar[BAR_CONFIG];
+	size =3D epc_features->bar_fixed_size[barno];
+	align =3D epc_features->align;
+
+	if ((!IS_ALIGNED(size, align)))
+		return -EINVAL;
+
+	spad_count =3D ntb->spad_count;
+
+	ctrl_size =3D sizeof(struct epf_ntb_ctrl);
+	spad_size =3D 2 * spad_count * 4;
+
+	if (!align) {
+		ctrl_size =3D roundup_pow_of_two(ctrl_size);
+		spad_size =3D roundup_pow_of_two(spad_size);
+	} else {
+		ctrl_size =3D ALIGN(ctrl_size, align);
+		spad_size =3D ALIGN(spad_size, align);
+	}
+
+	if (!size)
+		size =3D ctrl_size + spad_size;
+	else if (size < ctrl_size + spad_size)
+		return -EINVAL;
+
+	base =3D pci_epf_alloc_space(epf, size, barno, align, 0);
+	if (!base) {
+		dev_err(dev, "Config/Status/SPAD alloc region fail\n");
+		return -ENOMEM;
+	}
+
+	ntb->reg =3D base;
+
+	ctrl =3D ntb->reg;
+	ctrl->spad_offset =3D ctrl_size;
+
+	ctrl->spad_count =3D spad_count;
+	ctrl->num_mws =3D ntb->num_mws;
+	ntb->spad_size =3D spad_size;
+
+	ctrl->db_entry_size =3D 4;
+
+	for (i =3D 0; i < ntb->db_count; i++) {
+		ntb->reg->db_data[i] =3D 1 + i;
+		ntb->reg->db_offset[i] =3D 0;
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_configure_interrupt() - Configure MSI/MSI-X capaiblity
+ * @ntb: NTB device that facilitates communication between HOST and vHOST
+ *
+ * Configure MSI/MSI-X capability for each interface with number of
+ * interrupts equal to "db_count" configfs entry.
+ */
+static int epf_ntb_configure_interrupt(struct epf_ntb *ntb)
+{
+	const struct pci_epc_features *epc_features;
+	struct device *dev;
+	u32 db_count;
+	int ret;
+
+	dev =3D &ntb->epf->dev;
+
+	epc_features =3D pci_epc_get_features(ntb->epf->epc, ntb->epf->func_no, n=
tb->epf->vfunc_no);
+
+	if (!(epc_features->msix_capable || epc_features->msi_capable)) {
+		dev_err(dev, "MSI or MSI-X is required for doorbell\n");
+		return -EINVAL;
+	}
+
+	db_count =3D ntb->db_count;
+	if (db_count > MAX_DB_COUNT) {
+		dev_err(dev, "DB count cannot be more than %d\n", MAX_DB_COUNT);
+		return -EINVAL;
+	}
+
+	ntb->db_count =3D db_count;
+
+	if (epc_features->msi_capable) {
+		ret =3D pci_epc_set_msi(ntb->epf->epc,
+				      ntb->epf->func_no,
+				      ntb->epf->vfunc_no,
+				      16);
+		if (ret) {
+			dev_err(dev, "MSI configuration failed\n");
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_db_bar_init() - Configure Doorbell window BARs
+ * @ntb: NTB device that facilitates communication between HOST and vHOST
+ */
+static int epf_ntb_db_bar_init(struct epf_ntb *ntb)
+{
+	const struct pci_epc_features *epc_features;
+	u32 align;
+	struct device *dev =3D &ntb->epf->dev;
+	int ret;
+	struct pci_epf_bar *epf_bar;
+	void __iomem *mw_addr;
+	enum pci_barno barno;
+	size_t size =3D 4 * ntb->db_count;
+
+	epc_features =3D pci_epc_get_features(ntb->epf->epc,
+					    ntb->epf->func_no,
+					    ntb->epf->vfunc_no);
+	align =3D epc_features->align;
+
+	if (size < 128)
+		size =3D 128;
+
+	if (align)
+		size =3D ALIGN(size, align);
+	else
+		size =3D roundup_pow_of_two(size);
+
+	barno =3D ntb->epf_ntb_bar[BAR_DB];
+
+	mw_addr =3D pci_epf_alloc_space(ntb->epf, size, barno, align, 0);
+	if (!mw_addr) {
+		dev_err(dev, "Failed to allocate OB address\n");
+		return -ENOMEM;
+	}
+
+	ntb->epf_db =3D mw_addr;
+
+	epf_bar =3D &ntb->epf->bar[barno];
+
+	ret =3D pci_epc_set_bar(ntb->epf->epc, ntb->epf->func_no, ntb->epf->vfunc=
_no, epf_bar);
+	if (ret) {
+		dev_err(dev, "Doorbell BAR set failed\n");
+			goto err_alloc_peer_mem;
+	}
+	return ret;
+
+err_alloc_peer_mem:
+	pci_epc_mem_free_addr(ntb->epf->epc, epf_bar->phys_addr, mw_addr, epf_bar=
->size);
+	return -1;
+}
+
+/**
+ * epf_ntb_db_bar_clear() - Clear doorbell BAR and free memory
+ *   allocated in peer's outbound address space
+ * @ntb: NTB device that facilitates communication between HOST and vHOST
+ */
+static void epf_ntb_db_bar_clear(struct epf_ntb *ntb)
+{
+	enum pci_barno barno;
+
+	barno =3D ntb->epf_ntb_bar[BAR_DB];
+	pci_epf_free_space(ntb->epf, ntb->epf_db, barno, 0);
+	pci_epc_clear_bar(ntb->epf->epc,
+			  ntb->epf->func_no,
+			  ntb->epf->vfunc_no,
+			  &ntb->epf->bar[barno]);
+}
+
+/**
+ * epf_ntb_mw_bar_init() - Configure Memory window BARs
+ * @ntb: NTB device that facilitates communication between HOST and vHOST
+ *
+ */
+static int epf_ntb_mw_bar_init(struct epf_ntb *ntb)
+{
+	int ret =3D 0;
+	int i;
+	u64 size;
+	enum pci_barno barno;
+	struct device *dev =3D &ntb->epf->dev;
+
+	for (i =3D 0; i < ntb->num_mws; i++) {
+		size =3D ntb->mws_size[i];
+		barno =3D ntb->epf_ntb_bar[BAR_MW0 + i];
+
+		ntb->epf->bar[barno].barno =3D barno;
+		ntb->epf->bar[barno].size =3D size;
+		ntb->epf->bar[barno].addr =3D 0;
+		ntb->epf->bar[barno].phys_addr =3D 0;
+		ntb->epf->bar[barno].flags |=3D upper_32_bits(size) ?
+				PCI_BASE_ADDRESS_MEM_TYPE_64 :
+				PCI_BASE_ADDRESS_MEM_TYPE_32;
+
+		ret =3D pci_epc_set_bar(ntb->epf->epc,
+				      ntb->epf->func_no,
+				      ntb->epf->vfunc_no,
+				      &ntb->epf->bar[barno]);
+		if (ret) {
+			dev_err(dev, "MW set failed\n");
+			goto err_alloc_mem;
+		}
+
+		/* Allocate EPC outbound memory windows to vpci vntb device */
+		ntb->vpci_mw_addr[i] =3D pci_epc_mem_alloc_addr(ntb->epf->epc,
+							      &ntb->vpci_mw_phy[i],
+							      size);
+		if (!ntb->vpci_mw_addr[i]) {
+			dev_err(dev, "Failed to allocate source address\n");
+			goto err_alloc_mem;
+		}
+	}
+
+	return ret;
+err_alloc_mem:
+	return ret;
+}
+
+/**
+ * epf_ntb_mw_bar_clear() - Clear Memory window BARs
+ * @ntb: NTB device that facilitates communication between HOST and vHOST
+ */
+static void epf_ntb_mw_bar_clear(struct epf_ntb *ntb)
+{
+	enum pci_barno barno;
+	int i;
+
+	for (i =3D 0; i < ntb->num_mws; i++) {
+		barno =3D ntb->epf_ntb_bar[BAR_MW0 + i];
+		pci_epc_clear_bar(ntb->epf->epc,
+				  ntb->epf->func_no,
+				  ntb->epf->vfunc_no,
+				  &ntb->epf->bar[barno]);
+
+		pci_epc_mem_free_addr(ntb->epf->epc,
+				      ntb->vpci_mw_phy[i],
+				      ntb->vpci_mw_addr[i],
+				      ntb->mws_size[i]);
+	}
+}
+
+/**
+ * epf_ntb_epc_destroy() - Cleanup NTB EPC interface
+ * @ntb: NTB device that facilitates communication between HOST and vHOST
+ *
+ * Wrapper for epf_ntb_epc_destroy_interface() to cleanup all the NTB inte=
rfaces
+ */
+static void epf_ntb_epc_destroy(struct epf_ntb *ntb)
+{
+	pci_epc_remove_epf(ntb->epf->epc, ntb->epf, 0);
+	pci_epc_put(ntb->epf->epc);
+}
+
+/**
+ * epf_ntb_init_epc_bar() - Identify BARs to be used for each of the NTB
+ * constructs (scratchpad region, doorbell, memorywindow)
+ * @ntb: NTB device that facilitates communication between HOST and vHOST
+ */
+static int epf_ntb_init_epc_bar(struct epf_ntb *ntb)
+{
+	const struct pci_epc_features *epc_features;
+	enum pci_barno barno;
+	enum epf_ntb_bar bar;
+	struct device *dev;
+	u32 num_mws;
+	int i;
+
+	barno =3D BAR_0;
+	num_mws =3D ntb->num_mws;
+	dev =3D &ntb->epf->dev;
+	epc_features =3D pci_epc_get_features(ntb->epf->epc, ntb->epf->func_no, n=
tb->epf->vfunc_no);
+
+	/* These are required BARs which are mandatory for NTB functionality */
+	for (bar =3D BAR_CONFIG; bar <=3D BAR_MW0; bar++, barno++) {
+		barno =3D pci_epc_get_next_free_bar(epc_features, barno);
+		if (barno < 0) {
+			dev_err(dev, "Fail to get NTB function BAR\n");
+			return barno;
+		}
+		ntb->epf_ntb_bar[bar] =3D barno;
+	}
+
+	/* These are optional BARs which don't impact NTB functionality */
+	for (bar =3D BAR_MW1, i =3D 1; i < num_mws; bar++, barno++, i++) {
+		barno =3D pci_epc_get_next_free_bar(epc_features, barno);
+		if (barno < 0) {
+			ntb->num_mws =3D i;
+			dev_dbg(dev, "BAR not available for > MW%d\n", i + 1);
+		}
+		ntb->epf_ntb_bar[bar] =3D barno;
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_epc_init() - Initialize NTB interface
+ * @ntb: NTB device that facilitates communication between HOST and vHOST2
+ *
+ * Wrapper to initialize a particular EPC interface and start the workqueu=
e
+ * to check for commands from host. This function will write to the
+ * EP controller HW for configuring it.
+ */
+static int epf_ntb_epc_init(struct epf_ntb *ntb)
+{
+	u8 func_no, vfunc_no;
+	struct pci_epc *epc;
+	struct pci_epf *epf;
+	struct device *dev;
+	int ret;
+
+	epf =3D ntb->epf;
+	dev =3D &epf->dev;
+	epc =3D epf->epc;
+	func_no =3D ntb->epf->func_no;
+	vfunc_no =3D ntb->epf->vfunc_no;
+
+	ret =3D epf_ntb_config_sspad_bar_set(ntb);
+	if (ret) {
+		dev_err(dev, "Config/self SPAD BAR init failed");
+		return ret;
+	}
+
+	ret =3D epf_ntb_configure_interrupt(ntb);
+	if (ret) {
+		dev_err(dev, "Interrupt configuration failed\n");
+		goto err_config_interrupt;
+	}
+
+	ret =3D epf_ntb_db_bar_init(ntb);
+	if (ret) {
+		dev_err(dev, "DB BAR init failed\n");
+		goto err_db_bar_init;
+	}
+
+	ret =3D epf_ntb_mw_bar_init(ntb);
+	if (ret) {
+		dev_err(dev, "MW BAR init failed\n");
+		goto err_mw_bar_init;
+	}
+
+	if (vfunc_no <=3D 1) {
+		ret =3D pci_epc_write_header(epc, func_no, vfunc_no, epf->header);
+		if (ret) {
+			dev_err(dev, "Configuration header write failed\n");
+			goto err_write_header;
+		}
+	}
+
+	INIT_DELAYED_WORK(&ntb->cmd_handler, epf_ntb_cmd_handler);
+	queue_work(kpcintb_workqueue, &ntb->cmd_handler.work);
+
+	return 0;
+
+err_write_header:
+	epf_ntb_mw_bar_clear(ntb);
+err_mw_bar_init:
+	epf_ntb_db_bar_clear(ntb);
+err_db_bar_init:
+err_config_interrupt:
+	epf_ntb_config_sspad_bar_clear(ntb);
+
+	return ret;
+}
+
+
+/**
+ * epf_ntb_epc_cleanup() - Cleanup all NTB interfaces
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ * Wrapper to cleanup all NTB interfaces.
+ */
+static void epf_ntb_epc_cleanup(struct epf_ntb *ntb)
+{
+	epf_ntb_db_bar_clear(ntb);
+	epf_ntb_mw_bar_clear(ntb);
+}
+
+#define EPF_NTB_R(_name)						\
+static ssize_t epf_ntb_##_name##_show(struct config_item *item,		\
+				      char *page)			\
+{									\
+	struct config_group *group =3D to_config_group(item);		\
+	struct epf_ntb *ntb =3D to_epf_ntb(group);			\
+									\
+	return sprintf(page, "%d\n", ntb->_name);			\
+}
+
+#define EPF_NTB_W(_name)						\
+static ssize_t epf_ntb_##_name##_store(struct config_item *item,	\
+				       const char *page, size_t len)	\
+{									\
+	struct config_group *group =3D to_config_group(item);		\
+	struct epf_ntb *ntb =3D to_epf_ntb(group);			\
+	u32 val;							\
+	int ret;							\
+									\
+	ret =3D kstrtou32(page, 0, &val);					\
+	if (ret)							\
+		return ret;						\
+									\
+	ntb->_name =3D val;						\
+									\
+	return len;							\
+}
+
+#define EPF_NTB_MW_R(_name)						\
+static ssize_t epf_ntb_##_name##_show(struct config_item *item,		\
+				      char *page)			\
+{									\
+	struct config_group *group =3D to_config_group(item);		\
+	struct epf_ntb *ntb =3D to_epf_ntb(group);			\
+	int win_no;							\
+									\
+	sscanf(#_name, "mw%d", &win_no);				\
+									\
+	return sprintf(page, "%lld\n", ntb->mws_size[win_no - 1]);	\
+}
+
+#define EPF_NTB_MW_W(_name)						\
+static ssize_t epf_ntb_##_name##_store(struct config_item *item,	\
+				       const char *page, size_t len)	\
+{									\
+	struct config_group *group =3D to_config_group(item);		\
+	struct epf_ntb *ntb =3D to_epf_ntb(group);			\
+	struct device *dev =3D &ntb->epf->dev;				\
+	int win_no;							\
+	u64 val;							\
+	int ret;							\
+									\
+	ret =3D kstrtou64(page, 0, &val);					\
+	if (ret)							\
+		return ret;						\
+									\
+	if (sscanf(#_name, "mw%d", &win_no) !=3D 1)			\
+		return -EINVAL;						\
+									\
+	if (ntb->num_mws < win_no) {					\
+		dev_err(dev, "Invalid num_nws: %d value\n", ntb->num_mws); \
+		return -EINVAL;						\
+	}								\
+									\
+	ntb->mws_size[win_no - 1] =3D val;				\
+									\
+	return len;							\
+}
+
+static ssize_t epf_ntb_num_mws_store(struct config_item *item,
+				     const char *page, size_t len)
+{
+	struct config_group *group =3D to_config_group(item);
+	struct epf_ntb *ntb =3D to_epf_ntb(group);
+	u32 val;
+	int ret;
+
+	ret =3D kstrtou32(page, 0, &val);
+	if (ret)
+		return ret;
+
+	if (val > MAX_MW)
+		return -EINVAL;
+
+	ntb->num_mws =3D val;
+
+	return len;
+}
+
+EPF_NTB_R(spad_count)
+EPF_NTB_W(spad_count)
+EPF_NTB_R(db_count)
+EPF_NTB_W(db_count)
+EPF_NTB_R(num_mws)
+EPF_NTB_R(vbus_number)
+EPF_NTB_W(vbus_number)
+EPF_NTB_R(vntb_pid)
+EPF_NTB_W(vntb_pid)
+EPF_NTB_R(vntb_vid)
+EPF_NTB_W(vntb_vid)
+EPF_NTB_MW_R(mw1)
+EPF_NTB_MW_W(mw1)
+EPF_NTB_MW_R(mw2)
+EPF_NTB_MW_W(mw2)
+EPF_NTB_MW_R(mw3)
+EPF_NTB_MW_W(mw3)
+EPF_NTB_MW_R(mw4)
+EPF_NTB_MW_W(mw4)
+
+CONFIGFS_ATTR(epf_ntb_, spad_count);
+CONFIGFS_ATTR(epf_ntb_, db_count);
+CONFIGFS_ATTR(epf_ntb_, num_mws);
+CONFIGFS_ATTR(epf_ntb_, mw1);
+CONFIGFS_ATTR(epf_ntb_, mw2);
+CONFIGFS_ATTR(epf_ntb_, mw3);
+CONFIGFS_ATTR(epf_ntb_, mw4);
+CONFIGFS_ATTR(epf_ntb_, vbus_number);
+CONFIGFS_ATTR(epf_ntb_, vntb_pid);
+CONFIGFS_ATTR(epf_ntb_, vntb_vid);
+
+static struct configfs_attribute *epf_ntb_attrs[] =3D {
+	&epf_ntb_attr_spad_count,
+	&epf_ntb_attr_db_count,
+	&epf_ntb_attr_num_mws,
+	&epf_ntb_attr_mw1,
+	&epf_ntb_attr_mw2,
+	&epf_ntb_attr_mw3,
+	&epf_ntb_attr_mw4,
+	&epf_ntb_attr_vbus_number,
+	&epf_ntb_attr_vntb_pid,
+	&epf_ntb_attr_vntb_vid,
+	NULL,
+};
+
+static const struct config_item_type ntb_group_type =3D {
+	.ct_attrs	=3D epf_ntb_attrs,
+	.ct_owner	=3D THIS_MODULE,
+};
+
+/**
+ * epf_ntb_add_cfs() - Add configfs directory specific to NTB
+ * @epf: NTB endpoint function device
+ * @group: A pointer to the config_group structure referencing a group of
+ *	   config_items of a specific type that belong to a specific sub-system=
.
+ *
+ * Add configfs directory specific to NTB. This directory will hold
+ * NTB specific properties like db_count, spad_count, num_mws etc.,
+ */
+static struct config_group *epf_ntb_add_cfs(struct pci_epf *epf,
+					    struct config_group *group)
+{
+	struct epf_ntb *ntb =3D epf_get_drvdata(epf);
+	struct config_group *ntb_group =3D &ntb->group;
+	struct device *dev =3D &epf->dev;
+
+	config_group_init_type_name(ntb_group, dev_name(dev), &ntb_group_type);
+
+	return ntb_group;
+}
+
+/*=3D=3D=3D=3D virtual PCI bus driver, which only load virtual NTB PCI dri=
ver =3D=3D=3D=3D*/
+
+static u32 pci_space[] =3D {
+	0xffffffff,	/*DeviceID, Vendor ID*/
+	0,		/*Status, Command*/
+	0xffffffff,	/*Class code, subclass, prog if, revision id*/
+	0x40,		/*bist, header type, latency Timer, cache line size*/
+	0,		/*BAR 0*/
+	0,		/*BAR 1*/
+	0,		/*BAR 2*/
+	0,		/*BAR 3*/
+	0,		/*BAR 4*/
+	0,		/*BAR 5*/
+	0,		/*Cardbus cis point*/
+	0,		/*Subsystem ID Subystem vendor id*/
+	0,		/*ROM Base Address*/
+	0,		/*Reserved, Cap. Point*/
+	0,		/*Reserved,*/
+	0,		/*Max Lat, Min Gnt, interrupt pin, interrupt line*/
+};
+
+int pci_read(struct pci_bus *bus, unsigned int devfn, int where, int size,=
 u32 *val)
+{
+	if (devfn =3D=3D 0) {
+		memcpy(val, ((u8 *)pci_space) + where, size);
+		return PCIBIOS_SUCCESSFUL;
+	}
+	return PCIBIOS_DEVICE_NOT_FOUND;
+}
+
+int pci_write(struct pci_bus *bus, unsigned int devfn, int where, int size=
, u32 val)
+{
+	return 0;
+}
+
+struct pci_ops vpci_ops =3D {
+	.read =3D pci_read,
+	.write =3D pci_write,
+};
+
+static int vpci_scan_bus(void *sysdata)
+{
+	struct pci_bus *vpci_bus;
+	struct epf_ntb *ndev =3D sysdata;
+
+	vpci_bus =3D pci_scan_bus(ndev->vbus_number, &vpci_ops, sysdata);
+	if (vpci_bus)
+		pr_err("create pci bus\n");
+
+	pci_bus_add_devices(vpci_bus);
+
+	return 0;
+}
+
+/*=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Virtual PCI=
e NTB driver =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D*/
+
+static int vntb_epf_mw_count(struct ntb_dev *ntb, int pidx)
+{
+	struct epf_ntb *ndev =3D ntb_ndev(ntb);
+
+	return ndev->num_mws;
+}
+
+static int vntb_epf_spad_count(struct ntb_dev *ntb)
+{
+	return ntb_ndev(ntb)->spad_count;
+}
+
+static int vntb_epf_peer_mw_count(struct ntb_dev *ntb)
+{
+	return ntb_ndev(ntb)->num_mws;
+}
+
+static u64 vntb_epf_db_valid_mask(struct ntb_dev *ntb)
+{
+	return BIT_ULL(ntb_ndev(ntb)->db_count) - 1;
+}
+
+static int vntb_epf_db_set_mask(struct ntb_dev *ntb, u64 db_bits)
+{
+	return 0;
+}
+
+static int vntb_epf_mw_set_trans(struct ntb_dev *ndev, int pidx, int idx,
+		dma_addr_t addr, resource_size_t size)
+{
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+	struct pci_epf_bar *epf_bar;
+	enum pci_barno barno;
+	int ret;
+	struct device *dev;
+
+	dev =3D &ntb->ntb.dev;
+	barno =3D ntb->epf_ntb_bar[BAR_MW0 + idx];
+	epf_bar =3D &ntb->epf->bar[barno];
+	epf_bar->phys_addr =3D addr;
+	epf_bar->barno =3D barno;
+	epf_bar->size =3D size;
+
+	ret =3D pci_epc_set_bar(ntb->epf->epc, 0, 0, epf_bar);
+	if (ret) {
+		dev_err(dev, "failure set mw trans\n");
+		return ret;
+	}
+	return 0;
+}
+
+static int vntb_epf_mw_clear_trans(struct ntb_dev *ntb, int pidx, int idx)
+{
+	return 0;
+}
+
+static int vntb_epf_peer_mw_get_addr(struct ntb_dev *ndev, int idx,
+				phys_addr_t *base, resource_size_t *size)
+{
+
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+
+	if (base)
+		*base =3D ntb->vpci_mw_phy[idx];
+
+	if (size)
+		*size =3D ntb->mws_size[idx];
+
+	return 0;
+}
+
+static int vntb_epf_link_enable(struct ntb_dev *ntb,
+			enum ntb_speed max_speed,
+			enum ntb_width max_width)
+{
+	return 0;
+}
+
+static u32 vntb_epf_spad_read(struct ntb_dev *ndev, int idx)
+{
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+	int off =3D ntb->reg->spad_offset, ct =3D ntb->reg->spad_count * 4;
+	u32 val;
+	void __iomem *base =3D ntb->reg;
+
+	val =3D readl(base + off + ct + idx * 4);
+	return val;
+}
+
+static int vntb_epf_spad_write(struct ntb_dev *ndev, int idx, u32 val)
+{
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+	struct epf_ntb_ctrl *ctrl =3D ntb->reg;
+	int off =3D ctrl->spad_offset, ct =3D ctrl->spad_count * 4;
+	void __iomem *base =3D ntb->reg;
+
+	writel(val, base + off + ct + idx * 4);
+	return 0;
+}
+
+static u32 vntb_epf_peer_spad_read(struct ntb_dev *ndev, int pidx, int idx=
)
+{
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+	struct epf_ntb_ctrl *ctrl =3D ntb->reg;
+	int off =3D ctrl->spad_offset;
+	void __iomem *base =3D ntb->reg;
+	u32 val;
+
+	val =3D readl(base + off + idx * 4);
+	return val;
+}
+
+static int vntb_epf_peer_spad_write(struct ntb_dev *ndev, int pidx, int id=
x, u32 val)
+{
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+	struct epf_ntb_ctrl *ctrl =3D ntb->reg;
+	int off =3D ctrl->spad_offset;
+	void __iomem *base =3D ntb->reg;
+
+	writel(val, base + off + idx * 4);
+	return 0;
+}
+
+static int vntb_epf_peer_db_set(struct ntb_dev *ndev, u64 db_bits)
+{
+	u32 interrupt_num =3D ffs(db_bits) + 1;
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+	u8 func_no, vfunc_no;
+	int ret;
+
+	func_no =3D ntb->epf->func_no;
+	vfunc_no =3D ntb->epf->vfunc_no;
+
+	ret =3D pci_epc_raise_irq(ntb->epf->epc,
+				func_no,
+				vfunc_no,
+				PCI_EPC_IRQ_MSI,
+				interrupt_num + 1);
+	if (ret)
+		dev_err(&ntb->ntb.dev, "Failed to raise IRQ\n");
+
+	return ret;
+}
+
+static u64 vntb_epf_db_read(struct ntb_dev *ndev)
+{
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+
+	return ntb->db;
+}
+
+static int vntb_epf_mw_get_align(struct ntb_dev *ndev, int pidx, int idx,
+			resource_size_t *addr_align,
+			resource_size_t *size_align,
+			resource_size_t *size_max)
+{
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+
+	if (addr_align)
+		*addr_align =3D SZ_4K;
+
+	if (size_align)
+		*size_align =3D 1;
+
+	if (size_max)
+		*size_max =3D ntb->mws_size[idx];
+
+	return 0;
+}
+
+static u64 vntb_epf_link_is_up(struct ntb_dev *ndev,
+			enum ntb_speed *speed,
+			enum ntb_width *width)
+{
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+
+	return ntb->reg->link_status;
+}
+
+static int vntb_epf_db_clear_mask(struct ntb_dev *ndev, u64 db_bits)
+{
+	return 0;
+}
+
+static int vntb_epf_db_clear(struct ntb_dev *ndev, u64 db_bits)
+{
+	struct epf_ntb *ntb =3D ntb_ndev(ndev);
+
+	ntb->db &=3D ~db_bits;
+	return 0;
+}
+
+static int vntb_epf_link_disable(struct ntb_dev *ntb)
+{
+	return 0;
+}
+
+static const struct ntb_dev_ops vntb_epf_ops =3D {
+	.mw_count		=3D vntb_epf_mw_count,
+	.spad_count		=3D vntb_epf_spad_count,
+	.peer_mw_count		=3D vntb_epf_peer_mw_count,
+	.db_valid_mask		=3D vntb_epf_db_valid_mask,
+	.db_set_mask		=3D vntb_epf_db_set_mask,
+	.mw_set_trans		=3D vntb_epf_mw_set_trans,
+	.mw_clear_trans		=3D vntb_epf_mw_clear_trans,
+	.peer_mw_get_addr	=3D vntb_epf_peer_mw_get_addr,
+	.link_enable		=3D vntb_epf_link_enable,
+	.spad_read		=3D vntb_epf_spad_read,
+	.spad_write		=3D vntb_epf_spad_write,
+	.peer_spad_read		=3D vntb_epf_peer_spad_read,
+	.peer_spad_write	=3D vntb_epf_peer_spad_write,
+	.peer_db_set		=3D vntb_epf_peer_db_set,
+	.db_read		=3D vntb_epf_db_read,
+	.mw_get_align		=3D vntb_epf_mw_get_align,
+	.link_is_up		=3D vntb_epf_link_is_up,
+	.db_clear_mask		=3D vntb_epf_db_clear_mask,
+	.db_clear		=3D vntb_epf_db_clear,
+	.link_disable		=3D vntb_epf_link_disable,
+};
+
+static int pci_vntb_probe(struct pci_dev *pdev, const struct pci_device_id=
 *id)
+{
+	int ret;
+	struct epf_ntb *ndev =3D (struct epf_ntb *)pdev->sysdata;
+	struct device *dev =3D &pdev->dev;
+
+	ndev->ntb.pdev =3D pdev;
+	ndev->ntb.topo =3D NTB_TOPO_NONE;
+	ndev->ntb.ops =3D  &vntb_epf_ops;
+
+	ret =3D dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
+	if (ret) {
+		dev_err(dev, "Cannot set DMA mask\n");
+		return -EINVAL;
+	}
+
+	ret =3D ntb_register_device(&ndev->ntb);
+	if (ret) {
+		dev_err(dev, "Failed to register NTB device\n");
+		goto err_register_dev;
+	}
+
+	dev_dbg(dev, "PCI Virtual NTB driver loaded\n");
+	return 0;
+
+err_register_dev:
+	return -EINVAL;
+}
+
+static struct pci_device_id pci_vntb_table[] =3D {
+	{
+		PCI_DEVICE(0xffff, 0xffff),
+	},
+	{},
+};
+
+static struct pci_driver vntb_pci_driver =3D {
+	.name           =3D "pci-vntb",
+	.id_table       =3D pci_vntb_table,
+	.probe          =3D pci_vntb_probe,
+};
+
+/* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D PCIe EPF Driver Bind =3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D*/
+
+/**
+ * epf_ntb_bind() - Initialize endpoint controller to provide NTB function=
ality
+ * @epf: NTB endpoint function device
+ *
+ * Initialize both the endpoint controllers associated with NTB function d=
evice.
+ * Invoked when a primary interface or secondary interface is bound to EPC
+ * device. This function will succeed only when EPC is bound to both the
+ * interfaces.
+ */
+static int epf_ntb_bind(struct pci_epf *epf)
+{
+	struct epf_ntb *ntb =3D epf_get_drvdata(epf);
+	struct device *dev =3D &epf->dev;
+	int ret;
+
+	if (!epf->epc) {
+		dev_dbg(dev, "PRIMARY EPC interface not yet bound\n");
+		return 0;
+	}
+
+	ret =3D epf_ntb_init_epc_bar(ntb);
+	if (ret) {
+		dev_err(dev, "Failed to create NTB EPC\n");
+		goto err_bar_init;
+	}
+
+	ret =3D epf_ntb_config_spad_bar_alloc(ntb);
+	if (ret) {
+		dev_err(dev, "Failed to allocate BAR memory\n");
+		goto err_bar_alloc;
+	}
+
+	ret =3D epf_ntb_epc_init(ntb);
+	if (ret) {
+		dev_err(dev, "Failed to initialize EPC\n");
+		goto err_bar_alloc;
+	}
+
+	epf_set_drvdata(epf, ntb);
+
+	pci_space[0] =3D (ntb->vntb_pid << 16) | ntb->vntb_vid;
+	pci_vntb_table[0].vendor =3D ntb->vntb_vid;
+	pci_vntb_table[0].device =3D ntb->vntb_pid;
+
+	if (pci_register_driver(&vntb_pci_driver)) {
+		dev_err(dev, "failure register vntb pci driver\n");
+		goto err_bar_alloc;
+	}
+
+	vpci_scan_bus(ntb);
+
+	return 0;
+
+err_bar_alloc:
+	epf_ntb_config_spad_bar_free(ntb);
+
+err_bar_init:
+	epf_ntb_epc_destroy(ntb);
+
+	return ret;
+}
+
+/**
+ * epf_ntb_unbind() - Cleanup the initialization from epf_ntb_bind()
+ * @epf: NTB endpoint function device
+ *
+ * Cleanup the initialization from epf_ntb_bind()
+ */
+static void epf_ntb_unbind(struct pci_epf *epf)
+{
+	struct epf_ntb *ntb =3D epf_get_drvdata(epf);
+
+	epf_ntb_epc_cleanup(ntb);
+	epf_ntb_config_spad_bar_free(ntb);
+	epf_ntb_epc_destroy(ntb);
+
+	pci_unregister_driver(&vntb_pci_driver);
+}
+
+// EPF driver probe
+static struct pci_epf_ops epf_ntb_ops =3D {
+	.bind   =3D epf_ntb_bind,
+	.unbind =3D epf_ntb_unbind,
+	.add_cfs =3D epf_ntb_add_cfs,
+};
+
+/**
+ * epf_ntb_probe() - Probe NTB function driver
+ * @epf: NTB endpoint function device
+ *
+ * Probe NTB function driver when endpoint function bus detects a NTB
+ * endpoint function.
+ */
+static int epf_ntb_probe(struct pci_epf *epf)
+{
+	struct epf_ntb *ntb;
+	struct device *dev;
+
+	dev =3D &epf->dev;
+
+	ntb =3D devm_kzalloc(dev, sizeof(*ntb), GFP_KERNEL);
+	if (!ntb)
+		return -ENOMEM;
+
+	epf->header =3D &epf_ntb_header;
+	ntb->epf =3D epf;
+	ntb->vbus_number =3D 0xff;
+	epf_set_drvdata(epf, ntb);
+
+	dev_info(dev, "pci-ep epf driver loaded\n");
+	return 0;
+}
+
+static const struct pci_epf_device_id epf_ntb_ids[] =3D {
+	{
+		.name =3D "pci_epf_vntb",
+	},
+	{},
+};
+
+static struct pci_epf_driver epf_ntb_driver =3D {
+	.driver.name    =3D "pci_epf_vntb",
+	.probe          =3D epf_ntb_probe,
+	.id_table       =3D epf_ntb_ids,
+	.ops            =3D &epf_ntb_ops,
+	.owner          =3D THIS_MODULE,
+};
+
+static int __init epf_ntb_init(void)
+{
+	int ret;
+
+	kpcintb_workqueue =3D alloc_workqueue("kpcintb", WQ_MEM_RECLAIM |
+					    WQ_HIGHPRI, 0);
+	ret =3D pci_epf_register_driver(&epf_ntb_driver);
+	if (ret) {
+		destroy_workqueue(kpcintb_workqueue);
+		pr_err("Failed to register pci epf ntb driver --> %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+module_init(epf_ntb_init);
+
+static void __exit epf_ntb_exit(void)
+{
+	pci_epf_unregister_driver(&epf_ntb_driver);
+	destroy_workqueue(kpcintb_workqueue);
+}
+module_exit(epf_ntb_exit);
+
+MODULE_DESCRIPTION("PCI EPF NTB DRIVER");
+MODULE_AUTHOR("Frank Li <Frank.li@nxp.com>");
+MODULE_LICENSE("GPL v2");
--=20
2.24.0.rc1

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20220222162355.32369-4-Frank.Li%40nxp.com.
