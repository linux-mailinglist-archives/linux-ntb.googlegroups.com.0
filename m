Return-Path: <linux-ntb+bncBAABBJUZWP3AKGQERFG36CQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBBF1E1CC8
	for <lists+linux-ntb@lfdr.de>; Tue, 26 May 2020 10:00:39 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id r18sf19580078ybg.10
        for <lists+linux-ntb@lfdr.de>; Tue, 26 May 2020 01:00:39 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1590480038; cv=pass;
        d=google.com; s=arc-20160816;
        b=0CY1ER/flbKoobvxQy0zzFBx+cXhtqFFoVtC/zFa0ej4sW0bXQxt4cRe1ZotAS8HFX
         p3Pxt1tgFJ8ME+gVgWExSdsfsUa3OajyHZDbUmOdTOR7KjX5VYXKt1LCnpt8w2Mdif3h
         K8HlIa0wAYRPFkW4n1+GZdTAjeIbhh+VIw4Fe+70iK7zIPjhXdzOeR4AWQ4Nez1bWgXu
         50arUX8V2zaIL1griZ0oqEBcOPLZv2lWBaqvkjbxLf39axS0KPpZP61dPLE8nPXPtFeu
         ARAaM/bDM3SQ7H6vjb1mWTeuQwpbK93qfwpYg1Q9pT47mTcj19gveX+mtI5KFhxV+1j4
         5exw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=T5RThXcTWli05qrZ6QV/zu0ef92Cw3da1SAiQjsC9CI=;
        b=talNo+EALT5hB4K9sqxsy5inuD64NDm4tvGszHzQDJK6+4vp3tIjXo8Ay+tYWFfYaq
         1Mmwfp2qDd9IpwcBw+F9bKfkjvWzmrn2gC93MIXaPcaAomTWP77ZYrj9AXomZCH982W+
         3lwvhV26TatiKR50UlRx6ZIYSvCi08G2vX0BSs/+QD2FaA8ScvqFw4StKwN/5ylc8WV6
         mVEZ++/8DXW6LestAbesg6d5/xdklCSR9/IGpMf/yCLExBeS/AM2s77drSLSofBLFmih
         36zKP/PwMMvqJdby8cjb4YF1dsN0D6Lz6dv5RhjFRMc6QE4DsS4E9xXgwq6XPnPUJNtF
         oaqw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="ligm5/JI";
       arc=pass (i=1);
       spf=pass (google.com: domain of bounces+srs=2l6qk=7i@amdcloud.onmicrosoft.com designates 40.107.92.72 as permitted sender) smtp.mailfrom="bounces+SRS=2l6qk=7I@amdcloud.onmicrosoft.com"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T5RThXcTWli05qrZ6QV/zu0ef92Cw3da1SAiQjsC9CI=;
        b=bTPVtxyo6TsYl1qbluVvOJVm6YcOXLS79ijLMmNdDIUEYummiAiJZ/cRRd/Hr6v0hM
         nPoGAu5ldlLjyRl6gpxvk/iUDpvVLZi7BwEBJI5mGA4WJ5fa2+DrhW13bIFPi7vodXuQ
         D32OUuvVj1tHelx8aRfea0jPx7foo7XQZ53AC7rNoQz4z/6hLx5bDCqW437rB86hSzce
         QsGxX8uRHjLq3UJlmA5fLI1IOrYgU2/YcE08EPZClvmjLS7r1vIByM+2BOTryZ2FZ65C
         TyQesN3B6BqZOOO04hpSbt1DBtM1JzHGB5I00px3wXQfWa9fxNhriktbewSgwwJ3mLxH
         scsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T5RThXcTWli05qrZ6QV/zu0ef92Cw3da1SAiQjsC9CI=;
        b=Ioh6w+4MRSvsyE2xFoCWxRm/hIOwBsog38TECAspZFUGtgWIYqAjXSwQKYpcliBlYj
         PvcKgjg3a+eqcHxo5zRAFOsZ0gGxeVvX/o8yjRcYz87CmPaiPl5efOgbYzpquqcyJIF1
         ljyzuMtkqPAEloOKDknZdAMvBemsJ9G54hz0eTAa3BOIP1jk1+l+BNeotNvkohfAWiP7
         TXUaJdeZfNBMzTYBMBI6NXktSHV19uJbuUsSzT++c819ciPLMJpAnZz/eZVVXIXzY4+S
         ichYgNEvlnZUgRmgkYN0I83MLdMDPD8juvIZ9pcmstUB99MtFR8b+dSbqSzhY3hZ+43/
         J7wQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533aRe1yWdNFPWQrEdWgM+wVWFdcQKmqEJtTo9TUBWqNLKLJr2Qw
	vYVXPSlaK3v5Vk5jGtSId+s=
X-Google-Smtp-Source: ABdhPJyan1VjbJAJZVMWds2cr1JYXz0yuzbVgS/q9uhVgbPSAyFXupjSzYzLqMLdDedgO1+WkNa5dg==
X-Received: by 2002:a25:2442:: with SMTP id k63mr36951891ybk.319.1590480038440;
        Tue, 26 May 2020 01:00:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:824a:: with SMTP id d10ls3843744ybn.10.gmail; Tue, 26
 May 2020 01:00:38 -0700 (PDT)
X-Received: by 2002:a25:bb0d:: with SMTP id z13mr12101279ybg.417.1590480038198;
        Tue, 26 May 2020 01:00:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590480038; cv=pass;
        d=google.com; s=arc-20160816;
        b=wldkZxlF1dicvfvitV5mio5UPRbWYSxbaYxzNEiEo7nXsJB4PhUE6GfSXOKKEEOOzZ
         nCdz4grwfGOmgWNKItz4Io7scHemcciS951sIyMKh5cODCHKeZnJRVqPUyGzulbEJNYq
         w0tGOOOItTiU55EMRvb7R9iyfWCzKSliDvshcMD29NgU+ZXzXkEb+7YDk5U8qYgsFHT4
         Xttcs9/mOchusJ+dIBIRqLPahq+My9T8Ihs/F9YertT5x80tTTxOEY83MNDzxQMxky11
         BvMyk9IbnVWwv3hFv68/TU1V2WwTbaxoInu4u9diOaWp3LsnQ1UgdfaQG5hoSD3WcvAE
         etFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=iFur7+hvEAckJneUss4HF6YfuQRKPrMTM5qk2dTU0nM=;
        b=xZO7/YXqnPvZwHWVPVkX0MSW1hv0SAQROKBoYEKJix0S6MPzRCXx7gCszXmaNzdVaF
         u9gTWxlZaZUgcu7i77SsIp12DSboK10jwcTg8vbU8T+E7Jp3Ih98TCpFyqomtV0h4WWs
         zDPhkxi5RtACIlpu6oUoZJ7q1tNp7tLRt43UYkuJ0f4kB/gQouAAj7jObGKsDJ48g7Ee
         UTmlGnCVxN3odVuaUK2472rNgr5WUCpDWgp8/a8PI/j3uEAxuGerVW64uo1jexKXIyHu
         DJgiAwYDMiKbly3gqOyKQJH5nPbRpI2DXI5YFf5M9bPEf00OqrV4+LiuJHS15ewqhsRE
         oXjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b="ligm5/JI";
       arc=pass (i=1);
       spf=pass (google.com: domain of bounces+srs=2l6qk=7i@amdcloud.onmicrosoft.com designates 40.107.92.72 as permitted sender) smtp.mailfrom="bounces+SRS=2l6qk=7I@amdcloud.onmicrosoft.com"
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2072.outbound.protection.outlook.com. [40.107.92.72])
        by gmr-mx.google.com with ESMTPS id w190si1127139ybe.2.2020.05.26.01.00.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 01:00:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounces+srs=2l6qk=7i@amdcloud.onmicrosoft.com designates 40.107.92.72 as permitted sender) client-ip=40.107.92.72;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c5pus8z8SAp04Nx6lXfXhJ9GxITXhlmegUBmJNo7E1+4aczoVOCpzDUx1w4k7Svj5/G0gifK9lp20jpTLnS3pslSDh7egZhl/+c8KoOKT471qFy9gCw4uaDusk7nOURtKHBlyuNIpiNSE/uLppd/OQTd6PrAw7pObqh5R3WtqEOR0BpGgdt/5eQLsnsN+OM/YlNBn1yvNluQydsA7TWLwE1yEnINrZvLbB6eSDchcEnXSXXRutzWwhwSUYK4BWbvunueO3/bI+XEJk5mIgWhOrCTdwWMamvhOW1zoGYLDzcWpfuO2Pw1/tjz7QByzFx2KMVmfxMTHNYMDYw0USEbgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iFur7+hvEAckJneUss4HF6YfuQRKPrMTM5qk2dTU0nM=;
 b=TZ3wvf4d9bBY/esu1z6kzmQV5lN+CBleeVMNtDKmiHjxGCK/IXD1IjzhT6XGz0IQ5HFXSEve2vtHY0ssHOfiDhGe4eT1gJgCWXTjEb5rmlhIP+f0En6+WiRzb48cuK9CM2wwMTgKmgT+n/7XxF80ogsVno1g4VzPMjea9y8u9yDUm7qZg1vcjpq8oLn4JdEoO3NDBJm54x/i99ZSau5TcVKcPgP83z/9ma5f42f0YvHwNXCXA3+NcqhTPGwH8Tz9t0Q/u9YF1qH9y1TLZF5zy7PLvJc9/yDFSNJ/IXUuk++Piv7IaKjikByK0DMg4/fqrQUQfNGIC0P+mql3uTS45Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=sina.com smtp.mailfrom=srdcmail.amd.com;
 dmarc=permerror action=none header.from=amd.com; dkim=none (message not
 signed); arc=none
Received: from DM5PR17CA0055.namprd17.prod.outlook.com (2603:10b6:3:13f::17)
 by BN6PR12MB1794.namprd12.prod.outlook.com (2603:10b6:404:100::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Tue, 26 May
 2020 08:00:36 +0000
Received: from DM6NAM11FT003.eop-nam11.prod.protection.outlook.com
 (2603:10b6:3:13f:cafe::45) by DM5PR17CA0055.outlook.office365.com
 (2603:10b6:3:13f::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Tue, 26 May 2020 08:00:35 +0000
X-MS-Exchange-Authentication-Results: spf=none (sender IP is 165.204.84.17)
 smtp.mailfrom=srdcmail.amd.com; sina.com; dkim=none (message not signed)
 header.d=none;sina.com; dmarc=permerror action=none header.from=amd.com;
Received-SPF: None (protection.outlook.com: srdcmail.amd.com does not
 designate permitted sender hosts)
Received: from SATLEXMB02.amd.com (165.204.84.17) by
 DM6NAM11FT003.mail.protection.outlook.com (10.13.173.162) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3021.23 via Frontend Transport; Tue, 26 May 2020 08:00:34 +0000
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB02.amd.com
 (10.181.40.143) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 26 May
 2020 03:00:34 -0500
Received: from SATLEXMB01.amd.com (10.181.40.142) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 26 May
 2020 03:00:33 -0500
Received: from atlvmail01.amd.com (10.180.10.61) by SATLEXMB01.amd.com
 (10.181.40.142) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 26 May 2020 03:00:33 -0500
Received: from srdcmail.amd.com (srdcmail.amd.com [10.237.16.23])
	by atlvmail01.amd.com (8.14.4/8.14.4) with ESMTP id 04Q80Vvi014384;
	Tue, 26 May 2020 04:00:32 -0400
Received: from srdcws1054.amd.com (srdcws1054.amd.com [10.66.16.34])
	by srdcmail.amd.com (8.13.8/8.13.8) with ESMTP id 04Q80UHs025260;
	Tue, 26 May 2020 16:00:30 +0800
Received: (from weisheng@localhost)
	by srdcws1054.amd.com (8.14.7/8.14.7/Submit) id 04Q80Sr0020868;
	Tue, 26 May 2020 16:00:28 +0800
From: Wesley Sheng <wesley.sheng@amd.com>
To: <jdmason@kudzu.us>, <dave.jiang@intel.com>, <allenbh@gmail.com>,
	<linux-ntb@googlegroups.com>, <linux-kernel@vger.kernel.org>
CC: <wesleyshenggit@sina.com>, <wesley.sheng@amd.com>
Subject: [PATCH] NTB: correct ntb_peer_spad_addr and ntb_peer_spad_read comment typos
Date: Tue, 26 May 2020 15:59:43 +0800
Message-ID: <20200526075943.20756-1-wesley.sheng@amd.com>
X-Mailer: git-send-email 2.16.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SATLEXMB02.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(4636009)(346002)(39860400002)(396003)(136003)(376002)(46966005)(8676002)(1076003)(5660300002)(4326008)(70586007)(82740400003)(26005)(70206006)(2906002)(316002)(47076004)(44832011)(8936002)(54906003)(42186006)(110136005)(426003)(356005)(6666004)(81166007)(2616005)(336012)(498600001)(83170400001)(36756003)(82310400002)(2101003);DIR:OUT;SFP:1101;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4722de4b-c7c2-454f-a49b-08d8014ade9e
X-MS-TrafficTypeDiagnostic: BN6PR12MB1794:
X-Microsoft-Antispam-PRVS: <BN6PR12MB1794BF0AF5F29DDAA3A3393CF0B00@BN6PR12MB1794.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 041517DFAB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VNcfLpcYn+5JLBnApqZomPXqwa2xKcPRTCTjIZlGeD5Pleg0CcEtvsQtol7x8kxfhol7KhvDLQcFHHYTF9KJq5PCJ0zAN72tQyZTXfeAs0D8xLW3IlXVUgWKauyP+tCS6+oPNoQWrTrNM8coQdT8tS9bz8vDflqoAJ5q7Gx6Tlxdth8bJSreENElYPvf/LlFQgJhkrV7TwQbkoQGt6ZTrCtJZeQVJdryY5waCqdY1x/MmjfMnHWGo7ZKhA0pZOirEEFJwAx/WlkBcoCVzR4fSGU+oZ4qzp1dYPQaW3LZLYkOKCKYjy6Xn2U2jjvSjduhRR/FOqG92Opspmail+EG2FZ1+9GsZSCa5s8oxqQz9dIJk5YEf/x41JtKBbIuMJgPUd55hubolDtJRPWkgDiseCuI+Xq8rID6UNKxwnXFTuo=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2020 08:00:34.6172
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4722de4b-c7c2-454f-a49b-08d8014ade9e
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB02.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1794
X-Original-Sender: wesley.sheng@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b="ligm5/JI";       arc=pass (i=1);       spf=pass (google.com: domain
 of bounces+srs=2l6qk=7i@amdcloud.onmicrosoft.com designates 40.107.92.72 as
 permitted sender) smtp.mailfrom="bounces+SRS=2l6qk=7I@amdcloud.onmicrosoft.com"
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

The comment for ntb_peer_spad_addr and ntb_peer_spad_read
incorrectly referred to peer doorbell register and local
scratchpad register.

Signed-off-by: Wesley Sheng <wesley.sheng@amd.com>
---
 include/linux/ntb.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/ntb.h b/include/linux/ntb.h
index 8c13538aeffe..b9b0d805d0f9 100644
--- a/include/linux/ntb.h
+++ b/include/linux/ntb.h
@@ -1351,7 +1351,7 @@ static inline int ntb_spad_write(struct ntb_dev *ntb, int sidx, u32 val)
  * @sidx:	Scratchpad index.
  * @spad_addr:	OUT - The address of the peer scratchpad register.
  *
- * Return the address of the peer doorbell register.  This may be used, for
+ * Return the address of the peer scratchpad register.  This may be used, for
  * example, by drivers that offload memory copy operations to a dma engine.
  *
  * Return: Zero on success, otherwise an error number.
@@ -1373,7 +1373,7 @@ static inline int ntb_peer_spad_addr(struct ntb_dev *ntb, int pidx, int sidx,
  *
  * Read the peer scratchpad register, and return the value.
  *
- * Return: The value of the local scratchpad register.
+ * Return: The value of the peer scratchpad register.
  */
 static inline u32 ntb_peer_spad_read(struct ntb_dev *ntb, int pidx, int sidx)
 {
-- 
2.16.2

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200526075943.20756-1-wesley.sheng%40amd.com.
