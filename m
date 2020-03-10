Return-Path: <linux-ntb+bncBAABBQH5T7ZQKGQEDNVAUNA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 464E918099C
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 21:55:30 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id h17sf9912453qvc.18
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 13:55:30 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1583873729; cv=pass;
        d=google.com; s=arc-20160816;
        b=LC2Eqbs0lxlAGE18yP0FWomv3UWhGmQP722WBf+c4M7/lG5qKLwoAa/ZvmUE0hve5/
         eCQmtIlcu8OzLu3Q7+bRLvqAn1coXdx1n7xtnzNUPrMCeRQQD3WYbF8tNwBntu4ScMpr
         8DKIuuvFGpBbSzbkqpSE3RMAub4qn5u0SZEhDg5FBc21oQUvVM/Iz6skVXWRhhZhPkrW
         5W0j9DDQdriYg929Cmg/YGiuzMN2SjwP2Y0BTE9gepJtXGFrEw6cHwRtRfO2/L+CPhx/
         IyJgwUly7erzOQ4DMupm5qnyrFAfS+6ckuxPwbAbIcIghAItos74RCs9oGOWLum6HjE8
         DQww==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=upa66zqpZm81kqS60GYdgBQNjG3FSTuW6OuOFIbVsQM=;
        b=a48njoD4viFMBQO+VuOB7TkUnqb++7xVktUYO/0GsNg4yaJmDv48a3Pbq44+gIm0oS
         p7DTDLrJeUN/wUP8iBJMln/HzUjt+/mYuKqKLc+f49CmIAy07FBP5na65xLVVrkLT7G3
         wBWDzZz8MaBk8gnKR9Ss4fU19h+ibudYd+wTY3P/DOwpqWj/8RYDgzzZvJL0VDCQM2g1
         q4ENWkLToyLmpeYeKONtnUlshIzifYm0vkGBJH7plJHSp/Jgiqp+jDGkeFDJp8jdxiFr
         vNxFXX77fBeVNRR7/z/12mDbo/iwN6FotCupt1jt6L6z9ctuSshpUiD4trX9/0LXW1bB
         eNdQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=XX1zK+AG;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.237.57 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upa66zqpZm81kqS60GYdgBQNjG3FSTuW6OuOFIbVsQM=;
        b=hslh7ZlXu60RFZH1iBiUnISZA8OomT0g8tI5F6S7ddkiRwlE5bx9S+/8Xldi0xZaNn
         +6hPjS0UcSJ60BNhG20lCbDspSSVEIaGf1zb86mDPTznNG+LwaCu9uMAwD1C55x3hCuC
         R1W1j6FA5n0dBOsVF7Y9kKmYy1Ia+rQGnbhwgQkh7RCNo3V7SwzZ3xaU0MIFec5Og/xe
         sAwA3QXMcYCiTwEe48kSO2+mL1h3LpVvta9hQANSacWrFSLnaqP2Ax5dNYz1FNJDevA3
         o7Or0sajZ4bpnowMpQkBrdf7VBrdq/Nbd/S9G2hlw/OOsnC7I5D7Y3uj0BzIlB7UKvso
         nXZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upa66zqpZm81kqS60GYdgBQNjG3FSTuW6OuOFIbVsQM=;
        b=Qot80aoIl5EvqT5IYlxQyTwpmpsRBRnJ7NIlb6oe3TkoiqHAoP3ivLTDuUfWmdsvVa
         yNp7SrnNxQPjbYgzDrQFJaYn1DyTwzbj67oQXU6tlZXteSG84nKnkY7DWYqyg5mel7EV
         K2ezZjoyUibzJJxylgEAH+zYUptS6/RabwzaDCeAXx7VPh1neWF8Pg97TJ8jEQmFDbks
         AieMqBARWkcr2LsYySRGivCMG2jLn3uDb5Ri52pN+xn1zfeGqNVAzyMOa5nhcDYDBKnA
         an8+2RQcexTjwuorApkb9yZSj4pq/44KllLA5TvMRlHyp1xEhoTh8FQUJdky3hxYhHX8
         ZJ5w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ0Qt9pX1o98uFtrgbIbMO7aFhd/ddm0nER2ny1BZLQCYUJGeZ44
	I4B6fG6lT0IeTXrjvzMSdOs=
X-Google-Smtp-Source: ADFU+vsGBUQ1EXqXl+98lA1ZlD2hSFlhVwwupWpFBeV7hBY5VfLaT/Xd668QdTb5LBWhWqg+IJteCw==
X-Received: by 2002:a37:4548:: with SMTP id s69mr10800472qka.371.1583873728949;
        Tue, 10 Mar 2020 13:55:28 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:a0c:: with SMTP id i12ls1845072qka.8.gmail; Tue, 10
 Mar 2020 13:55:28 -0700 (PDT)
X-Received: by 2002:a05:620a:382:: with SMTP id q2mr22109664qkm.474.1583873728527;
        Tue, 10 Mar 2020 13:55:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583873728; cv=pass;
        d=google.com; s=arc-20160816;
        b=G+39DbTpRQH5cZ0K9WCIbLgaEEP1itW8pqv80l+2o3DJX8p5466FJ2FFRRHFYd26SW
         may71hkrkU1EiJ67QVHsPc2r6HwC8kwJCpsVMOxXt4yJBa0n3hbtq0obIjQ0GxL7r91t
         bbomu9XM+If4BJ2NHAbWHHsEwxH80zLXsi1YBmqHT9HtkJF2ocj7oQzIebPL0lqtMN7L
         UqIMw2VUko3vfQVC9MBw2obELuyO6kQ0+eQH6zq3gyuesSaoC+ffiJDsfuPx76LRg4/m
         sVy1xDNUcnS2EmIJOpO3FZLnGHRu7Oe1AaRazy3jWA0TFFpXM4F+5K10sR7D5zvXW02V
         SLog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3Mw9R9NS21yF85WDHGFMTVGpjccAZ/6N/A+mPJNK6SY=;
        b=LJAC6oT8+eueHRCNWtRBzM2VH+NQtNui0FnP/kak0BtvotbngzOM6ROCey4N8otmJ5
         +ucdPgBWPxZarCF7ejvf0hDBpSKZhY+p6uEIlrovidat+ZQK0+GhETzwsKuqoOResC1M
         kbykfc/Z3jgfdojioRta6WM1R6SQDjKPo3QB1zzpscrA+Q0BsmutXF9e6OEk+1UhvuRB
         I2n0pDEwL92hn2MCaQf9NK5IHsggt3Qt9aaM1rH2vffQpQyp11s4fFQzL2CDRXOesbvg
         E++jG0CxXpbKh81/RA3Vbyx4caLzxzE7Gw4/ZXWuUg1jT5fUvH0oJYqniEPmeBECg5op
         aYpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=XX1zK+AG;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.237.57 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2057.outbound.protection.outlook.com. [40.107.237.57])
        by gmr-mx.google.com with ESMTPS id d193si366285qke.1.2020.03.10.13.55.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:55:28 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.237.57 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.237.57;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aeS9P+dLf0VDFGmhU45GpK7iwjiUowk+FtDAbvea4mNx99t23KaVN0FoMam/UM2GjBSEGXZ6l3jGOTg9jpGZrMoZP7+6ak0OdWW3+8B/EY4slN7cjg28tf33vTAxEd4Fdjo3NQexTkH45b3MyGgwjTC/Pvq8rw70UqiUoctS7kzUT0XbKRGv1TmSbOZuYkQu09sXaIkNrmVtGHV/6ybwlfP+uUeVbB+RUlqXIlzBEj994yPBHtjxfn9vOFcEWm3FCV4dbs5TueaJuXa+JsrX1teyNEA9iG9PiWibH4HptCHNp5dupMEOhRMURnfN+IFbzNMQcArqZzIAoHT6/i8FUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Mw9R9NS21yF85WDHGFMTVGpjccAZ/6N/A+mPJNK6SY=;
 b=FT3JAysxXyWGaMsZGSPmHWKid9EuU8E4oQh+nGLy2dhFYHlWUPtDxOFfnuu2e7kMXkE5QTHuWtn8yfLC/sDT77St2m0sBndTh8Qtz+4Bt27Nq0nFBYhXnwo7uRZQBSZblrSQJM8wWZvDt01HpJGZhxBpZYc+nWd76NboRFwszvRLA/DiOi8SHPhz8ILrErD+mCzdWNlgvVmZvIKUxR7RA73RmCvDYz/+cirUHvq9Ab0RBRS7syFhe7YN1zJI3hXXM7lhEdFDfk49qe8kKuKHKk5M9r3Rmuk1DeakijLtF0ElNKBPMFyQGRmwk5KKY16laTSiG81P3Or+vCaKNoZ4qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (2603:10b6:208:d0::22)
 by MN2PR12MB2925.namprd12.prod.outlook.com (2603:10b6:208:ad::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.11; Tue, 10 Mar
 2020 20:55:26 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::f19a:d981:717:3cb6%2]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 20:55:26 +0000
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
Subject: [PATCH v2 2/5] ntb_perf: send command in response to EAGAIN
Date: Tue, 10 Mar 2020 15:54:51 -0500
Message-Id: <1583873694-19151-3-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::24) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2793.14 via Frontend Transport; Tue, 10 Mar 2020 20:55:23 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 313b36fb-fb47-4e15-a3aa-08d7c5355bfd
X-MS-TrafficTypeDiagnostic: MN2PR12MB2925:|MN2PR12MB2925:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB2925F6BC96FE919A8BFCB5E5E5FF0@MN2PR12MB2925.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(346002)(376002)(136003)(39860400002)(396003)(199004)(189003)(2616005)(6666004)(956004)(6486002)(316002)(52116002)(7696005)(478600001)(8936002)(6636002)(36756003)(26005)(16526019)(8676002)(66946007)(4326008)(81156014)(186003)(2906002)(66556008)(5660300002)(66476007)(86362001)(81166006);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB2925;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bOVZjrWqVP9PCgwFOyOZv2kJVLAQ9fEN2xj+Zi1XXzpZOvGID4wlVZuBFGvaKKEloBTgAvFW1yaFbf2tnf3hDciPRnivyatQguwhtbjzZfMSZMlXR6MSbugGFptt1HovLvwIhLc/gTbFm591Kgd6dDAq9WO+w3TPPtRsvo4TriVElYEbetaa6uzOoM85/8qYIKq9Z34ATE36ISB3zgz09Q4CWg60vbFAfi7biRv7yPu1tvuN8R+84QiBxmuQlW350P7CjqZg6BzYxidWOl7Nr7VonZZAi2uBi2CoQuY2seqrHl/bx6v0LzvNSJnmhZdUDoommsFgUHhxnkM9OoinZHW1sc+HfGofE4uhzQtmBcdW3KxYv/AiB6GsEWAVbK304nnkzGVn7mRME1KoDHT/mrGT+ZgvHv0eNr7jCx0M69KRscr6UTcowb6/IBw7NX29
X-MS-Exchange-AntiSpam-MessageData: 5PI7rK8axL12YulGH3N8eP2IZLFS4tCl3b4F0pVy8VIIEMxAtx2E8pqxP0TAUwCyRqy6XHzn1tB/ujGzhBzwvkPjzDc4rv3eOYmtVrXFhB11bfRF0yrQ452nR6i5Qnm4ri0hpvPWgPRHCi6ayyq8hg==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 313b36fb-fb47-4e15-a3aa-08d7c5355bfd
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 20:55:26.4851
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X53QhGXGHer98y745KkZAGMBuia4nA+4ZiFDKAJhmwxJwm3H+4+KU4HxbezjYRxsjKnqclhAiGKtOrdijVyCbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB2925
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=XX1zK+AG;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.237.57 is neither permitted nor denied by best guess
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

perf_spad_cmd_send() and perf_msg_cmd_send() return
-EAGAIN after trying to send commands for a maximum
of MSG_TRIES re-tries. But currently there is no
handling for this error. These functions are invoked
from perf_service_work() through function pointers,
so rather than simply call these functions is not
enough. We need to make sure to invoke them again in
case of -EAGAIN. Since peer status bits were cleared
before calling these functions, we set the same status
bits before queueing the work again for later invocation.
This way we simply won't go ahead and initialize the
XLAT registers wrongfully in case sending the very first
command itself fails.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
---
 drivers/ntb/test/ntb_perf.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 6d16628..9068e42 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -625,14 +625,24 @@ static void perf_service_work(struct work_struct *work)
 {
 	struct perf_peer *peer = to_peer_service(work);
 
-	if (test_and_clear_bit(PERF_CMD_SSIZE, &peer->sts))
-		perf_cmd_send(peer, PERF_CMD_SSIZE, peer->outbuf_size);
+	if (test_and_clear_bit(PERF_CMD_SSIZE, &peer->sts)) {
+		if (perf_cmd_send(peer, PERF_CMD_SSIZE, peer->outbuf_size)
+		    == -EAGAIN) {
+			set_bit(PERF_CMD_SSIZE, &peer->sts);
+			(void)queue_work(system_highpri_wq, &peer->service);
+		}
+	}
 
 	if (test_and_clear_bit(PERF_CMD_RSIZE, &peer->sts))
 		perf_setup_inbuf(peer);
 
-	if (test_and_clear_bit(PERF_CMD_SXLAT, &peer->sts))
-		perf_cmd_send(peer, PERF_CMD_SXLAT, peer->inbuf_xlat);
+	if (test_and_clear_bit(PERF_CMD_SXLAT, &peer->sts)) {
+		if (perf_cmd_send(peer, PERF_CMD_SXLAT, peer->inbuf_xlat)
+		    == -EAGAIN) {
+			set_bit(PERF_CMD_SXLAT, &peer->sts);
+			(void)queue_work(system_highpri_wq, &peer->service);
+		}
+	}
 
 	if (test_and_clear_bit(PERF_CMD_RXLAT, &peer->sts))
 		perf_setup_outbuf(peer);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1583873694-19151-3-git-send-email-sanju.mehta%40amd.com.
