Return-Path: <linux-ntb+bncBAABBA7XZD2QKGQEJ2DRENY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 515191C66B7
	for <lists+linux-ntb@lfdr.de>; Wed,  6 May 2020 06:22:28 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id f4sf957090qvl.9
        for <lists+linux-ntb@lfdr.de>; Tue, 05 May 2020 21:22:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588738947; cv=pass;
        d=google.com; s=arc-20160816;
        b=LIA5u2i7soNajPC92qR8X1fFcx5xuYhFvjkEeUJxU1V6fy49W3XYMrjYq05YOXk00I
         q+ZiW3FrulkbkMMJS/jvdxvuyetsO9FXKxt+888kDwn7bX5i1qcb9nG+RRMuQkVogplh
         Vc472HKRfJ/zmCRomyTPX34S+u7+L0PYdTJRylI6gBA5JM3y0t9EWwbzZB7Wtzte0LL9
         V3NO3QDPLCFjPYP1Em7FGFuu1I2p5Kk0E5Fpo4j5eaoNYNPlSVk9sa0MJ4Aq4+TT9t0u
         I5o3e9ak+ovrS9LTAvuRVxhglIv9zojRs7PWrn4Pz8RdZX8RkotDaeItbwJ2/cgaTdwA
         zseQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=BT/bZgnxaw/05h0KjPKvqmIXGl5xro3uq0t6m5gtupo=;
        b=R8Tgz7PXgPM3Ws6P0e/GmabByJTTzLRgayHXnGwKVXce17JMhHnWkJz7L2YWCT1fo+
         gcyHN5JvWXcP/F2O9JNEQ2TiiQ3BrYK8tNd0dmouO2H1iaj8bW7V9md3K54dmPe9G+QH
         n5G03VwWBmGJefEuwhEv1w0ZJUxAtPch2+/IcVyeKWnwjy4x3EyEGg8brg5it1E5IYNx
         2GqyMs6J1iqDXddtF/60orXSoRBMnR1d6bcjVBFIN/aCoPDbRpchh6xrCDG9BiLKC+0w
         T1qU6XMxUS5oJbCdKUx0XmmMRBh4VR+2nU21Xtr7+YR3Hsb0rajf9JNG8ewtvUJfT2qw
         iClg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=QXCKib3X;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.223.42 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BT/bZgnxaw/05h0KjPKvqmIXGl5xro3uq0t6m5gtupo=;
        b=XLQI7ZjlIyVNIn7NsZ3tyzi8FcVoiX2VnKypZ4XEwaIzCiuNDRhTr2iTNZKsR89Dew
         ieFVrymS9N8YPd5ZY+RsCgoOmJThqaOBE4Il2v3TMLApsNLqhk2vmwJVCg+rCBLn5uC7
         ZFUfxILyUbPKO7sjewUiP2Wy6mA5yQJjFg2izi9hCWr9s+wxh5krqLI4QhPtngKGKYkA
         OTeXoVTRKoDXqBmN0sJu8kCrN8gWiE2ZVK1GifYeAXAPRSZh1a+NY1Dv3m/hh5ymRGm4
         IxvRX5IKDJHfu8RLJvKZnVRXLnB150GDKaMdlhXHKS3jeUPgdndnWZngTDbvz2jaHbTe
         bw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BT/bZgnxaw/05h0KjPKvqmIXGl5xro3uq0t6m5gtupo=;
        b=igC4F0XbeMUv4E4SyBxjyhQbGngSg24gQ296BAUa2CMJLlnYIQxkT1qrYbnjDtW67/
         DXZrz953z23dFi2CSlEW6IB5sixzcUKDffdwo05lOR7PNbdOg+R4lYEMbiQ5MFsqLznU
         bP3+n8/gYoDbSMWhdoxhDsrWeUKj6+a8WDhD/ASk6gmuwhJgOb/JX5FlVv8QyXmz8cY/
         i3eWPx0IwenOPolGCJtt9DJyLXY9Qdlk/crfN+ceocX+Caxb+YDfEn406fiPI7R8IyBP
         L01LXHv7HfMrscRvT2rVJ4fCxYHHrSWIZsEaZWD7EpkL4JYhB7Fe0E9iio/XwX/0QLbo
         FMvA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuYEvHdLPPtK5P4EdmHW3kVKV0X5WP2z3F2r0E0K/wXjlIFrGbRM
	ZvvwUOPZcbig305DATgvok8=
X-Google-Smtp-Source: APiQypIwoen9mFVU68ASrVMxV1fvnxqnypKTQlwpqw4W9oY6YU6T0Bsl+axpc4RpG1+NueUpAE/U1g==
X-Received: by 2002:ac8:7c81:: with SMTP id y1mr5967272qtv.97.1588738947158;
        Tue, 05 May 2020 21:22:27 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:8a03:: with SMTP id m3ls956964qkd.8.gmail; Tue, 05 May
 2020 21:22:26 -0700 (PDT)
X-Received: by 2002:ae9:f30f:: with SMTP id p15mr6888538qkg.178.1588738946859;
        Tue, 05 May 2020 21:22:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588738946; cv=pass;
        d=google.com; s=arc-20160816;
        b=JErDwfXsRT89MUrRircxmJjcTBkD9JMsoAmYrsGOx1gvD8lvH2PIKmWsw+P0cuRb+h
         pHHtZDpWbpyhaq1RtOI61QdjH8hmm4xdKfy2JK82mKV2Fwqe54kRRHpflqCGagmvRY+a
         vepcpm7lnqrMNwgrfbcE2G/DgMXJBcyR9PHMmAOyMTpUQ9clK3XQCuWd0Ae9PwLWwzHC
         E0rHINOrpkC8jsc3ugKCREpXIU+6lI1EZHLXKMCWals7YM2YqUz2jnTK2Ds+pUjz/A3F
         GGehxQBnTERlmdY7jL9cb8MJDkOCIo4f5MbLJ8NO6QJgw1yRv2LpNa9C8wbD3NXb2dZy
         XhMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=o5TRbehMvGkjXSn7TAU2whsQAM/aRFYEGYzIWF2R0mY=;
        b=bORfEqk+UbuVw6HjymjFSCYd+yfRgQoMlv8jrBuWSwrLvKknNstoHNomJCT11rIpOu
         Fgzr3RBdW2yTXpaagWVNewVkedA00pxQYwl2I8R264LSx2h+lJuFkEW26a3IN7tdtbcx
         Un34DIZQXWZiVSCjw9sNyC0f5iKWquaqw4gSOKQnVBPCJABCfizaU5nikUylISFiyEvn
         m3RvALCcGMKrh1x5PPZVVsImeLwe+w1fvKfDGYRrP3q5b0yxsJY2/6F2BL8FaI3CER0x
         FnAPB/hGnEENE78hV4ctOdpISsb71HO8QS9yvU8dgDB8H5sQC2f72OjPen6ADunZ3ERe
         YaOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=QXCKib3X;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.223.42 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2042.outbound.protection.outlook.com. [40.107.223.42])
        by gmr-mx.google.com with ESMTPS id 2si80453qtp.1.2020.05.05.21.22.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 21:22:26 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.223.42 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.223.42;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nWUnm7MaIg30po8cR9Mqasb5bVNTe2ZV68tfeSk3ya0Phdk0T96Qxvy05xbLbnmyIPZNLjDM6CO5kVYuqopodzF+JY9PNBgxOxBiHPU6ik2+Oxb2ylNIoTnP3cNIzh3Q1Ot7SYceVdiyIaULRvv0e5HzsEskJ1SL86INL5eaelW0ZXz3XPj1gqaIFnkfE65BNyk40IuF2d29r7hfPoi1FeU6mO26rCoojcfslAqYEPYwMbvERwkS39C/sQuCF/g8Fiujh6b6dh+6Yg8foYrH0YjMenq7hvnmf6izR5tiIEd+86zmj0lrUqntd0pXvlwgedmNiI7bWBld2Z++wfYH0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o5TRbehMvGkjXSn7TAU2whsQAM/aRFYEGYzIWF2R0mY=;
 b=PpP7ebiGBoRRVYd73nF11lz2zK8trfwbvchNozCTg/WlNLQ7k99lGJxr9f7gsFDAUTWn+yJntbL/44t3mNbqO1wLZXxjf7hnBWXD6Pa1xe57hgDAex6vZuMwoE0UItxOzYAqxUZYXHYSq6BSJ414Ww8jpK1jbiLuYvBO6fZe0TKwO51D8w+7AVzDxbf4gXkjC01n99lKA47I0wUHQbJBL6EJf5z0Sqa7ReGg/f6uG1RcMYei1uv0nANPr+GQrb4MxrqnaWgI4rJ7JOYO1QkYzkP3HatZ5yv19/ojjEmiCq137fj9h8TO2LUqyUQ+yB/jyb1rLvvqlC3V8M3bYl2/Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM6PR12MB3420.namprd12.prod.outlook.com (2603:10b6:5:3a::27) by
 DM6PR12MB4092.namprd12.prod.outlook.com (2603:10b6:5:214::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.28; Wed, 6 May 2020 04:22:22 +0000
Received: from DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0]) by DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0%6]) with mapi id 15.20.2958.030; Wed, 6 May 2020
 04:22:22 +0000
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
Subject: [PATCH v3 0/5] ntb perf, ntb tool and ntb-hw improvements
Date: Tue,  5 May 2020 23:21:47 -0500
Message-Id: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::21) To DM6PR12MB3420.namprd12.prod.outlook.com
 (2603:10b6:5:3a::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.26 via Frontend Transport; Wed, 6 May 2020 04:22:18 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 40f3576f-182a-4ba8-fb6e-08d7f175121c
X-MS-TrafficTypeDiagnostic: DM6PR12MB4092:|DM6PR12MB4092:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB4092788B26965AEE9D7D39ADE5A40@DM6PR12MB4092.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XdQC+LwTva08m/wYOoMdsM7nVSs9KesSLrC1oUOAEfsQlnCN35HxpwfBOOGkKjyQQEBGqmTc+A60yKjDRhz2O+lUtmZaq6EsJG++LqiJvcR1sdkn0cCTnWvC/JSz2cG5L6vLgv4SyQGem6/F9dW9GwbFR3t6lr8Tb62Fkj1r23uTcmtNXYitmERtN7rNLLdTVuI05gvBnuVuOUewVv7800GQse3wYUg6GE7sSo3TrwZj68byodyP9nCY2NrZbqEqnEF/dfop8SCPnIYktE9xFvLWpKZoIvSxL3teso2Y30f5jciGRGlo9Re3629SIqKC6lU3MNGJy8osQ/BiLuEKpSDFLYRuYG34FhvcYkvJq+FQtdi6UPv6CIaRjPyOcfrcKQyjd1yVcpgMyTJqld/hjpEBK+YlCHbuIF6IzBchTuGQ/G/Xa4F+Cablvb4rBsow7OrplphD5OkErJhnm5Y3Rk0PxqkoinFgrqG5CBJkaDzBwdSM88oYPK73G59LJUm10R1ELUA+a6+sMwDF3rDuUreYFj3JKokOXCmXOjNa8at89P6v1eLn/KEgb9dwaoh4CbRsfnwDjskNiU9Pfb3lxhQDiOQqgRHCEjpdMiGm+hQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3420.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(366004)(396003)(136003)(39860400002)(376002)(346002)(33430700001)(4326008)(4744005)(33440700001)(966005)(956004)(2616005)(478600001)(5660300002)(2906002)(8936002)(36756003)(316002)(6636002)(66556008)(66476007)(6486002)(7696005)(66946007)(52116002)(26005)(8676002)(86362001)(6666004)(16526019)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: TeKNUXW4zrli+690dDAeJtP9+QDzuDcPmyqfD9QIBp+/ZB6cb6sMZlzEwxZLf3+37L+YLuA/qQlo/+aMY/rPVyXlsuuHel5pXrtgAWmkJ7Xx2PMGSOG5NHHldEA6ywQkLO9z6khp6vbCJTGYyavikFYiyGOd/5xbePKjLoI0L0GfSvoasrWc/EUTsYIpBZSqtu6WQT6KIhJFfq1UU35qx4TRD2abqngZazdEjJgkYe5M1grPtHDcxnMeAp1jht4R7gEWtZXaOumS4ISKsklHfklmmu5/C0VO4s7eYNTQNhYxbuV3evXh3RgD+VUNcIP2Omd0Uo05awCGLnYigqJZGSX290gGSgDuNCZDF1Zd3l77GzUf7jBmqO+HskKDQqcKCDKGdsIrIAB5f/e5eT9hlhp5LdYPNnLiPKEh94vYG/Yjv/tey2471Sbyf7I1FrhZs2icvNAEhaujQ2rI7WWntSWU3rkqPszhGT4QK/yg7RU1CEa1q3PRjvzPLkD+atQGEMh7zPUfBpYHw0BUjQ+G5iWF9xfCPQiWf7yGQbN4+/RTJMw3Bfpz+gZxFriLJLufDsALWZKZhsTXbC7DS1cBZxKIVYkXB3y92QuMgOkJm8qVdEZx6zcCZovlw1YjVUJwRo/FeXzFtOS9cvX+qvyFZKvVvl9FgCCm63LeCD9Vpv08RF/n/q2vopAMipx039tSaqHjk39Zbx9D7jf4DG0J8ztULMSyX8frHJ4uxIJG76NdKncFnX9PayzxJ6YkqoXN+FhjU1W7dXIdNmhVJeSiLN50crPBkjO4V7Gc5Q4lO6nihtHl8YhET0cCuAykTtNy
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40f3576f-182a-4ba8-fb6e-08d7f175121c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 04:22:21.8678
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i2MR8PItnzGgLdbWDmJGMTeyvwvosqte5M1rHd7Csp0Qtpdlep6dhy/8BAo75y0evtC+e2LVF6mFQKITzPTJUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4092
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=QXCKib3X;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.223.42 is neither permitted nor denied by best guess
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

v3: 
- Increased ntb_perf command re-try sleep time
- avoid false dma unmap of dst address.

v2: Incorporated improvements suggested by Logan Gunthorpe

Links of the review comments for v3:
1. https://lkml.org/lkml/2020/3/11/981
2. https://lkml.org/lkml/2020/3/10/1827

Logan Gunthorpe (1):
  ntb: hw: remove the code that sets the DMA mask

Sanjay R Mehta (4):
  ntb_perf: pass correct struct device to dma_alloc_coherent
  ntb_tool: pass correct struct device to dma_alloc_coherent
  ntb_perf: increase sleep time from one milli sec to one sec
  ntb_perf: avoid false dma unmap of destination address

 drivers/ntb/hw/amd/ntb_hw_amd.c    |  4 ----
 drivers/ntb/hw/idt/ntb_hw_idt.c    |  6 ------
 drivers/ntb/hw/intel/ntb_hw_gen1.c |  4 ----
 drivers/ntb/test/ntb_perf.c        | 23 ++++++++---------------
 drivers/ntb/test/ntb_tool.c        |  6 +++---
 5 files changed, 11 insertions(+), 32 deletions(-)

-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1588738912-24827-1-git-send-email-sanju.mehta%40amd.com.
