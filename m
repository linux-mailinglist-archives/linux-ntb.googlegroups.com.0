Return-Path: <linux-ntb+bncBAABBFPXZD2QKGQEHNZVGBI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DD21C66C0
	for <lists+linux-ntb@lfdr.de>; Wed,  6 May 2020 06:22:46 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id t17sf75257vsp.23
        for <lists+linux-ntb@lfdr.de>; Tue, 05 May 2020 21:22:46 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588738965; cv=pass;
        d=google.com; s=arc-20160816;
        b=ll4v71i9xQZR2rHo5WkWs+Xi8v385gSWsyhZcNIwhmcTTLFY6jk5A1rF74FtvlEpPT
         fNJGVy9hsFfD/VqaTSvLvN/z2kvUldb1kQEbd5QsjQ68QmO7sALMuljb+1deGJ24XSJd
         bQQNDp2U0ZwuLKFJhFgY9EYkpmzS8WehVljDOVl77wwpAUzJA6/nP4OUk383eYh8rnJX
         FSFI/wDd90rCZ9/jS5gbAP4KHgWe//trTYNyRNfENFw2ec0n8hz1GxdNhvW2u5Oo8I1U
         0J5/krB+5YhxjR09TqgQJoWPWmI+9LhfbRPgaXpOiT7mo16PFsZKMPhQ7dSLPHYLeQzM
         +Z+g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cbVacRIdEyBK9iWUAR2lQK4NiQZat13TMa7Wg3TahVE=;
        b=EO+ZjNLmSFFPLq2Ylq5USEF/iyTbI9Bzs0/CXUsfIGz0kufWcCWPk1OjS1iUG4/kLS
         WhvTt6EyaIf96aj1+KpGqH+w20OfiPK+D7ygYrPWKqprwXn/hSHSdb+nkq4nDKSW8kDa
         UoBxftyJbB0U+cV4h65BCTYJnERxxZffFSiH6QOpsZhx6mesDbjs8beqS3RdaRZBbiZq
         vjpuRDLnWR7Z/moKJPpBtD1qGMGC2N3Mk+sXu0ENnvwF4dzhpi3ffzbIJ1Fj6aJg+ygR
         p3Q3xbLYxCQvh4Wbor9NDAJwQc0MvPwl6IU7DlqCj1tAaTnzNFy7imIpRjp0NPL+iIo+
         9mig==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=l52dYC5U;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.223.57 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cbVacRIdEyBK9iWUAR2lQK4NiQZat13TMa7Wg3TahVE=;
        b=mfG26IFsUTYUcD/xVsrsfMXF1NrnF2F5hHFxhJJRpp0/ixf2yGipSt63O0jNrXtMB9
         GfUWLAUkoau6UKVVtWL51/XoCnc/3Iwiu6LQzP2fWz6Zsnkmbi0QIox0KeeeEeaS6SoE
         MlAQzsYIgqX4iMjSNPer++lBoMOXVYxDu9rtyfdFF6jgua1ZdkVmUQ2UddpNmWEF808R
         DqcwoQUGBJ2Cdju3N3HeRD1q7uBLtFGW1qCwKDnVlLfGWyssnBcBBKZVTT7fvPwQV50D
         d9zMHeIzqW9ExQBJNPvMfkF4c0PrSnyRRv9SvXSoVx8OuGPyPWKtht6x64e6Tu9Bhljy
         kabA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cbVacRIdEyBK9iWUAR2lQK4NiQZat13TMa7Wg3TahVE=;
        b=eWAZpmX0EuQo3sQmnKymqugDsXmGIqCcLFe0AKqwgvrZVRYj+mPm046M81s4lT/KCp
         1YlOmquv/1PIEcDPws7QDcwukQjA6rdgoB1dYOriJdaLmqPJEtrlGbCzbJ4/MXPCBXQu
         BcS/1Q6QOUt43O4MQQEEtSV7xxG/EnQSIDCcicdqVwHNDnrO4I8WRI/1G81GXlV1cxZ9
         ak6hmzdUZIIb0v4dmalJyCccRgS87o28uSrf5ve0d7UWjwV5I4/rn5CnqKgDmZMOWH6K
         nzo2CaRLC1ipzixvq78O4P+oYV0bJPoB0rc1vPOTPq65+YFqqbhzgqvKAM7YhgDdK4vF
         k1KQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuZxPm9bOnPt/4zY781382p7zUi1TjwhkKcn+R8eZqqwPtqdPdXd
	uSarySBySj813XQP6awpRuI=
X-Google-Smtp-Source: APiQypIwExJL6FXS2PimRh6R5fiEmGhR0WcRZ10NeYKmY19IaqbIK+CrzFZho08Gsg26GkWKDQp0Zw==
X-Received: by 2002:a05:6102:2139:: with SMTP id f25mr4573044vsg.153.1588738965568;
        Tue, 05 May 2020 21:22:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:f605:: with SMTP id k5ls115484vso.2.gmail; Tue, 05 May
 2020 21:22:45 -0700 (PDT)
X-Received: by 2002:a05:6102:a01:: with SMTP id t1mr5806196vsa.103.1588738965328;
        Tue, 05 May 2020 21:22:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588738965; cv=pass;
        d=google.com; s=arc-20160816;
        b=GRc7JJXyrQDAcXPKhbFD1e63EHBHfd6enUdU/AvzQjuvcRknX1N/OeefpbYBwHoEIi
         JRuS8DYbjN2p2QFmfDgxX9uv/uw6Ah9f2ccuwxmMR2NKgL8CI4FyicBD/jDtsoFJC0t0
         y3+UA/XppQJq/pVCElP0R3FnTGRJX3MUVL7LURJPSPRDJkVxWhbpKWVf6uMX1iSFtKI7
         4CAf91a+T8k8gkBCApUqYkmWZhBtac5IMvXTceVo3rYSE0Lvy8Ws5jsESwL4sXCPHDmY
         rchHt+4VOWbq94Ke30pkC/Odbath8+LrvaiHV9NuG6ScAcvB8j/xOGIco+XCJDqwH58E
         8eQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hJTcAg2Rx20NV/3eV+nC7FBwuzQCxZ4bTl7EOG16GUQ=;
        b=Gzznrws0roZIg+RsCP/da5fiVW5DYv2O6gBKLehO62lgwQVPAmHK7HrwVwHxEiwr0e
         vdACc5vherz1gyMfFHKNjF4AHEpMbWgkQZS/fruwDqg8ytgHNBaKjQ3VAuLpKAcPldc+
         yxAIJ+67g5Y+CQX0LZY/rZ2wkoJQKHMv3fwseQcJ/lfaBmVeXKcYAN61Z50NmykDYOH/
         SGaIvwdwjJYlioEv7XLlUo0tEjTV67rMSzcsDYN8cPxeh+yB7AX1wMX8cz72AiSUVY/O
         0TnMEBfCjAOqYt9Kz+A9q+D8IOCMvo4U+Do8LuAcUFZY2C/ew2Gv9gQqRKaKM71sNi9P
         PLkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=l52dYC5U;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.223.57 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2057.outbound.protection.outlook.com. [40.107.223.57])
        by gmr-mx.google.com with ESMTPS id v22si87449vsl.1.2020.05.05.21.22.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 21:22:45 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.223.57 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.223.57;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OHHTLzkdyLHkCPhQ+vyk5OQlGWlM/mKmBg7ARlzPgT7HiZ89+6YYbOTQk46lCr6/WX89WiAOc40gbYWX4WsHmKMdB6oCCwcMgJpOnj6klelQxMWoY0blYkUMKr5hEStgHeuKVhEi7faJOwf5UAn6x1tQpgSbGH1tTjGzXLDisdC+vMO1XLWUfO7MxezA89hRdYIkEV6LY16WAA3N97pNNtesmIAq/yAkvsHiZXFnLCassZQOfVJjq5u225JwsOQGChsuPaScCOIum3ySt0TcQ7Nzfv53j2Kh+cGHSXTlhBbyNy6HNX49WcqbLSVcbkJJCCuk6KlclHepQyF9qwyt/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJTcAg2Rx20NV/3eV+nC7FBwuzQCxZ4bTl7EOG16GUQ=;
 b=klO+wzPB8i4gdpgTk5ec9eXe3418+dw+EdWVJL0OT4BR4F+dlzHPuYV+rknApNYQ2a5bfpW4BsT5kw9V84rdUJ38hGcqwL7Ikg+53FS71mK3LtzvbpeciNnoM4DhG8vGEx877LEiPVw/fASml4EjTPC/Z7GLZYjIzYiIbu2l9g0JIpGmSMBHJFYEaboO31Un47QMGlQFcIms/4pFLOiAem4aHHX9HZNKscmEEYTFKl4S+We8PSKPZplkQQ24xitJDFf6BhIeYfn+OFfDlOFLfcUSv3lcr2MUOTt++9XOczcgSVRm7LbKzFLBU26aJuTeBjzp6OrFyt8v69GeLk3zcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM6PR12MB3420.namprd12.prod.outlook.com (2603:10b6:5:3a::27) by
 DM6PR12MB4092.namprd12.prod.outlook.com (2603:10b6:5:214::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.28; Wed, 6 May 2020 04:22:44 +0000
Received: from DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0]) by DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0%6]) with mapi id 15.20.2958.030; Wed, 6 May 2020
 04:22:44 +0000
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
Subject: [PATCH v3 4/5] ntb_perf: increase sleep time from one milli sec to one sec
Date: Tue,  5 May 2020 23:21:51 -0500
Message-Id: <1588738912-24827-5-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
References: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::21) To DM6PR12MB3420.namprd12.prod.outlook.com
 (2603:10b6:5:3a::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.26 via Frontend Transport; Wed, 6 May 2020 04:22:40 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8bbc46c1-02bb-4fd1-f76e-08d7f1751f59
X-MS-TrafficTypeDiagnostic: DM6PR12MB4092:|DM6PR12MB4092:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB40922EBF5D56C3D40C3AF7CEE5A40@DM6PR12MB4092.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9oGL3XVXNMXcZrRopTG3pFNerw18DviCj+0lagy89nVbOWIORJg8/xoh8s0nFmAxpO9MwN1KQZt9GLb/wIUoEn7vcVPpLo/kLiUiy9oTSkrU7AXOY3uqtXvNgM/DbzjyQe62XkAEYiq10Jkej0SfyBuQm33ZkMTfMAxUi2nwLh8PGPQv/pvzHdC92EV4QC3erHcG5FqmKaaGXVVD3K0drDaKcJHkb1Spjbpqo6Lpp9XsZdtABW5/7yxK33dY3glGpziaRLZK0CE0Mop9abc0PeYgiBaa3Ohss3ln/yNqI1IpkFu3rwPRqASbl9LGxZmQeTS48PzZmGaFrADmKD2ExtcTIlydgNm9kUHgkFiqF0AY8/Ne1WsqM5ONgMgI22aKn/nuqmB62o355JQkT17yAqLt3X1vsQ83KyTRdAM5C1sGmSmYwyIuQC4JilzKTeVu96yKWd7hQso3MPr8FXOARfnHWL9amY8cLzbELu3I2Ph5UUxvxBfra1assvHHrlLuFi65KNKnVn87oOIRFiKqaQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3420.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(366004)(396003)(136003)(39860400002)(376002)(346002)(33430700001)(4326008)(4744005)(33440700001)(956004)(2616005)(478600001)(5660300002)(2906002)(8936002)(36756003)(316002)(6636002)(66556008)(66476007)(6486002)(7696005)(66946007)(52116002)(26005)(8676002)(86362001)(6666004)(16526019)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: Po/RQ9wgbUpMupKSf4rVZ3Yvz0K3UycJTj25ws9c00PE6PgB+Lrk+l4pHVqvmxm1oxh/cD+osoFZKrVJ8JziT5MV9j8Rvsijv4MJxGTR0jLHdb1xl7DB5YgVVHFAPVnvnTT82lsrftoK/B5/FBkpHoSx0MVT0t7lEXrR8Xm7BsmW+XYuUzhTvPWMeY4zKU8TwKp5Ot6yLOFY997VG3Ym8M9aA4jgQwwkaM7zUjTE91B5QCP6TFevaOBKnMsM4oG7Q4WcslVoMuW14A6MRWuF9lAWwjnluVbXtG1jMEcwmcJxVVNA1cZ97IuhpSPZ+dHvIJWSoDFiIlYUgnTelJS/86/OEufwNFDAg7Owbtg7RmZ/7Cq/ou+Hj+3kjh1CGC/LI+l9eK+NZdnFM6yEAjG34uLgcxIDRfKKh2eB1/e3MlijDnIHYQN+I+xhNrB0Z2VG2hFQVr51y9PLaP45qRd7moN1KVRLQmJ3Y5XPVfwUWpL3J/4L4Pr1ocaSOxak4lstwVWap3kZ9+OljCefP/PczJ6mrDeTZ2psjr1j2GYy5JUxCzOFBdqEhZmedP6yzXhIGUGVmnzYm4eM9D9KKESMOMzZdmbcQg600LGcY/N9zXxgYfu/7taTaCrr/wcXGwXnCYK2Lti/C0F6f9KCrjDc1mpkIaPxrkcEL/3KdL1apvdEjne+flp0mxaaTjp1o2PoqZ3rqBZiHEuSxKqIvGEyzpUtIMDMjARxQvkHpA4thAJVY7/v9pDPwBJJeu4OgCW3AZN0bBCf6LBmzwYO8Jnep7VKZ56R7C/RL0KqN2oPVOzt6Ibp6742OVqJqe8IhtgH
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bbc46c1-02bb-4fd1-f76e-08d7f1751f59
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 04:22:43.9959
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: liwEhD1vJ6+Tvlb2WeEqyd8LZEkz32J4pa1pJIFrX+GjEkhuYEuM5NTh+JAv19vOPurG0CxM9BYXNE4nRzhbPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4092
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=l52dYC5U;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.223.57 is neither permitted nor denied by best guess
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

After trying to send commands for a maximum of MSG_TRIES
re-tries, link-up fails due to short sleep time(1ms) between
re-tries. Hence increasing the sleep time to one second providing
sufficient time for perf link-up.

Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/test/ntb_perf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 1c93b9f..dbcfdaa 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -101,8 +101,8 @@ MODULE_DESCRIPTION("PCIe NTB Performance Measurement Tool");
 #define DMA_MDELAY		10
 
 #define MSG_TRIES		1000
-#define MSG_UDELAY_LOW		1000
-#define MSG_UDELAY_HIGH		2000
+#define MSG_UDELAY_LOW		1000000
+#define MSG_UDELAY_HIGH		2000000
 
 #define PERF_BUF_LEN 1024
 
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1588738912-24827-5-git-send-email-sanju.mehta%40amd.com.
