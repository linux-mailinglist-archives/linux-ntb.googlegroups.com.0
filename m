Return-Path: <linux-ntb+bncBAABBBPXZD2QKGQEPSAQZ3Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2ED1C66B8
	for <lists+linux-ntb@lfdr.de>; Wed,  6 May 2020 06:22:31 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id w4sf555883iol.0
        for <lists+linux-ntb@lfdr.de>; Tue, 05 May 2020 21:22:31 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588738950; cv=pass;
        d=google.com; s=arc-20160816;
        b=yOAxzGgcqn3Puj5IhApxjMbdScEqbk6ovNoISsi0eFwle0uu3fAwTkQQQc0k8YUtUa
         U9R2aioPpStsFljweU9FlKcZaTNL+hichGdiIAXFRSz7Y5S1+ttSuDIOmdH/0kNMHsjG
         e1g5URi+WGZkFcQuRuXcqvnG7pe/BMPFPAQ0YN3xqOf0SMWy7iOzix8WIjXdnSh+zzvr
         d/U11oSqJYMxk7TnoGLk2tckHqiI/ofr6oxrGlKwWE6A0cMsJcjeaDQAqNZ6VVcv7Vao
         V8l+66H2Ay7SGEi1KtEqH+UbzQYiCyVJ8TJm9QP14pKhRDi0Zl8zeqbtaFsBj6GuuS18
         1b/A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VaZq19aB0w1IvlLplruk+T59O6LoD6rkEIzFXgArYlk=;
        b=BmMxYYYqA+8H0e0Csrxt4G0oAXXEvAAhlW5/rV8iJ9GiPTRFr1DIxOpIcZXXHDe2Lj
         ko2k3PqZ0PjiFUsxX5/b/WKhYYnhu4xP662xyu079tYfK7fojQXf2pX0NBm/1TSYPlnF
         AEA+lBpz0O8vGBg11v8K67+fumZNhzvw4Usl9NWcybeL9Sri2w58ZfLNd5xNukaGYogE
         2soVJ7r/7OWPz8SEKDVhdijWomc6J9X06emNQk5feN5g1Qehowdt5uZcDLwm6O3OrgkV
         Rn0xq82jm8nW7gN+FTQvkNEf2JNRPrAu+U0C45pugsT9noXz0iLMYtIcD5i1NBFxuCl2
         ufGA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=eAFYCOw9;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.94.80 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VaZq19aB0w1IvlLplruk+T59O6LoD6rkEIzFXgArYlk=;
        b=GOHvpJbPAThTdEn6tXf4bTWUCx5vyoYkFyhWA0JEsX2AjWJk6nE3xcZetW5WaPDw63
         5zmm6dRhwa+RgHgHehRXHCq4M8vrbxrv6gPlTl/19DLQRStG+eNTGr2VCXyZNKWj2zT3
         Z0Ua4lD+nXMOs+d6QuIZDmRiHmnX+AunohZDlVYRCqhkP5oq/x6Xt09xU9JuIAYqTftU
         O+UDC6ZTs1ihDHP9berdyztQVMGG3rtvRoaWoxTswgR7JRZD5uKnCuGwjZ09kcq/DZJ6
         s2DyooiwXuxOf6gQ8vB8QUuInf2jd8DOiJi5bfESERFGeuTI37qOq5376vxKkO0Q4fPb
         zrWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VaZq19aB0w1IvlLplruk+T59O6LoD6rkEIzFXgArYlk=;
        b=qb/pTBQasYCst94St4N+YToM6kgJK/eDdjJWkzQcMIkY2QqMD7jB+uqzAaHXNUjfRJ
         d/2bbKys3gQhd+Lsu/8eoMomkakO9aKV8UVpWVByszHLYPeMTCzy60bGfwZ6GIo3BqU7
         yfkPygs0z8XPjCz5sYaHiBNAxDWzdw+fmHxUae+WhQJTAKMs7QA4/eo0g9TId+7aeOrf
         rbzTqxElicfyTmFg1k5abjAMYtaM81WoI9xs+Mw3RdM90WXjVEc201npUGU+abf2C1g5
         TCmc4zO0UqHrWq0anqICQBqliJ/KINHZOixpZ4arl7HXUynQBUiH3cPHbKSS3rGWRZLp
         1dxQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuZFBGjA9Q6lmIuTUVgFnFxyH53FdpZROMUDiEuq8R5/Zfl8gsfe
	zys1Uy36GAnN1TNm14SVcow=
X-Google-Smtp-Source: APiQypLKc1ORqUraDaua7W39rCT4S5Z02x2RPN7kVdaETGJP3R5Dguau00zfq6SRc87nCVNG870UgA==
X-Received: by 2002:a92:af1d:: with SMTP id n29mr6888184ili.306.1588738949876;
        Tue, 05 May 2020 21:22:29 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:2186:: with SMTP id b6ls196623iob.6.gmail; Tue, 05
 May 2020 21:22:29 -0700 (PDT)
X-Received: by 2002:a6b:3fc6:: with SMTP id m189mr6345589ioa.97.1588738949575;
        Tue, 05 May 2020 21:22:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588738949; cv=pass;
        d=google.com; s=arc-20160816;
        b=yfeNngWhHy31CyNgjl4PsuvUUxizTyIlds0RB+UFTApiuLjUQV7sHOC9nL3qYQEWEB
         ws7o7lk0URqUoC8RFNAB1D3oRnqU7UMkDhMsgwJ0VDsiwBw4A0vqZhoD6hmBlRtIlDmC
         N7WgCvKmhjG1KS+UgxhdW07xanUZqHX8V05rVbLsaCQPbjsFqbCOPtnSxCcG0sd4Io8k
         iowPQLUs7EPyjWf5BxHEHJ4LfmgyQ0joKLhEiCdyqwEpZ/aRiLHMDJOgl+dJ4fSk8ZPX
         D9QEu5bKWZ1IU/AiccLL1vrS5E+tOK8NavPPNQDpR3hbgjpC7e8jeUcfX+MGnsuxr6r6
         Wo3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Md+OW3jup0sBPcPCHUVGgrXZ6HoBl7TcYSq92ojBqXU=;
        b=gjtMI1yLareWSVB2RTT7I2wBFlpj7ozHOKFVei5Rk2PXfPY5GPRM8IAfQa5Gax2xyO
         Ln4Y5RNnBBcw/galiqTKkCRS/Dk4X4fDBERu7yjd2kfouSR1sYqihmFQXFeqjLOS+dWe
         7ISxP38owzar4y69TTg5P0RysWwsMCx0SKOAvC6/PsLsOrCwyEOoEVuveXQ8SaIO6dLo
         ZJ6ILUlKBB85a6Snhp8hAQj7Ye+eyFPd2bGCbTCLH6JuQiEpYjackKJ86zPU8AEzMsxn
         4MW9XWwmd+1kmCt4cIfiS4LnxsYqvciMczvvef+X1a38LcIMZw2OG7oM8ou7jWcvRiFQ
         cfew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=eAFYCOw9;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.94.80 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2080.outbound.protection.outlook.com. [40.107.94.80])
        by gmr-mx.google.com with ESMTPS id k13si102409ioq.3.2020.05.05.21.22.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 21:22:29 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.94.80 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.94.80;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lhzo+wU5+r8ChKxIHmnxWXK0ijqrLlkcXNF64j5pdigS4J5ztV6NeTyILryKUiPkZxYp+16Xi/rWyZ29PDV5wnjUqdtbM9B2vSd9G38+uZKi4AGwVL0KRzUtRe8Qnhz8miLqavPJ3y/rdudy9A7i3al3relVFd+z43UGjkLWZ8bR+YZydx1t498iH61Im7euBTwHFzh0yp3oUKZ/Ji1NRLwTHu3d6BHdCteYg8CMZMpk59ETb2m0bKiueuhFU4OG7H7ZVEcwg7TqPqd/UirEOQ+KqqF/RERIUFNwbKA8KRbJj9ussyjooPxvAL58uyt7rRROFPl+cdSlFJhxCOOq3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Md+OW3jup0sBPcPCHUVGgrXZ6HoBl7TcYSq92ojBqXU=;
 b=goML+Aiouj29JDfitQG49RDFOFsC+a2QO40W6dQ4YuE725j9M95SQl7tx9z9Ha5LMhDIcw8TjD0huEYQHk1QGZR7PoVb0Mt7yQNumZvnt6DDVQEZqRqLJui0mwrjFIByb7A0Ufc3hVn8kiif7u1ErXiqxJDDV/2+MXk8oheYgXFxV4cND167LT+rPFK+4ilD2vHW7VztlOLqT9/JAczJucUm3kw/eJ1/OIjDy0hpSVSiPHlxRt1/ytuRXsNk550AcaBJgyoyBYaAHVBTXKCLpMwcoWkc0c/p2Bvrg2zmi15h1a8aDC2OUQiprrMDZEwD8xzHf9KZ1JaCMUbM7cFS6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM6PR12MB3420.namprd12.prod.outlook.com (2603:10b6:5:3a::27) by
 DM6PR12MB3707.namprd12.prod.outlook.com (2603:10b6:5:1c1::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.26; Wed, 6 May 2020 04:22:27 +0000
Received: from DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0]) by DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0%6]) with mapi id 15.20.2958.030; Wed, 6 May 2020
 04:22:27 +0000
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
Subject: [PATCH v3 1/5] ntb: hw: remove the code that sets the DMA mask
Date: Tue,  5 May 2020 23:21:48 -0500
Message-Id: <1588738912-24827-2-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
References: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::21) To DM6PR12MB3420.namprd12.prod.outlook.com
 (2603:10b6:5:3a::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.26 via Frontend Transport; Wed, 6 May 2020 04:22:24 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 703baaa5-53a7-4cbd-1203-08d7f17515c8
X-MS-TrafficTypeDiagnostic: DM6PR12MB3707:|DM6PR12MB3707:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB370770F2E4A4D64472E44565E5A40@DM6PR12MB3707.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GR1PlYI/8qBh4vDhwyo4DleVSrTsxxly+Pl5x/xbu57D1shXtmCSicTPoH2PhaVu8p5UxkUv6M45Wm0bYSImn2dY0MG0ECaYxZSSMs98gbywmNLhqeirBho1eKLtfG6kUX59XQ/Mrl+JaJECJVFZcO/55dbUWhLt+TKqBCpbDu3SRw8tpfcxDd8CT49KLpZ5v6+xdX76/n+jBuH8NwBi3BEOVdjSELE0BuMgt5sekgy+fyktDViWHgAp6MEaOl8ZXo3ptyiF6dD/Uwy17jQ0mjh8YJuHgviGeAS/ntYnbL38e3BLoLMC07tQ2dwSscoL5JBnwEDH4slfxWTZfqGqpW3BsxnjbOdZbPWEFa594ay7zkbL6DM4nnjql9xqNpS6X6431w0axxTEiUtMqzVpELG1xxIA19yoK53oORJmj/j8omtR2JdDockuTKB2f0FSyV4bNe6njFZA3TYjhphSRVahiyQM2ZDcD/iZ/ToZ3xZDoC1NefdBBB/kNxxevofR8gwDGptaQFOM0iEUj4orhw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3420.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(39860400002)(136003)(396003)(366004)(376002)(346002)(33430700001)(5660300002)(478600001)(6666004)(4326008)(316002)(66476007)(33440700001)(86362001)(6636002)(66556008)(8676002)(8936002)(52116002)(2906002)(7696005)(36756003)(6486002)(186003)(16526019)(26005)(956004)(2616005)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: Luf50LP4FC+5Ort6zG8Af4bW/fyQXJ+YasVUJgUhF1eH/adUb2ZQsH9QTFECdfYcXKHmmTvb7rEATWURCDewhk9L9Fb0IXcB2KiPOBN4EMXVgUUZNKKEGrlNB7/PlzYJjzDPFMCxzY65CVaGn3RreINlYo7yEJ23NC6HPZJoijWwi0t29yUeqM7EyhiT1mwZBLPqMVGNvvaS/MRjGfm3fsymVGThTtCYSob9vTmRsdS1Ap5EqHLVA1iaU0SaKuJz0/Z5FEqBpCaQWQ2dJbbLIFgLbZyU8l9+ktgMoq6fANKgkTkkIujZAMgg2qlnkF5pWE19Hmc3kiNZp6CaMNJ1xyHdSTRXrdle4Vjk0aO6DkSsfBeaZEjqgTmNilZXCnnVEbJOCSAA0xghxgIAe4taJWKoNAcIHOwZJVVZKvJvdunQCcFb+aJJEF3oKxHjoAC+yV9cV4zu67j3afK40FpumD81rLc7U4ENwsUAJOWbV678qCKD9pidPSQHAaLkn9bEABTf5PdD7oeCua2VeUZpOAy/2WSLMfw6NitX9mujnhtojyhVynOMdYsQz3ji+NNI2Q8/j/i7a0qPMAI1X2qayIAmEykMn8eDbHdFCQ6vym5OjBE/Qpw3c1iCS9EEOBacFLfSLuTFkEZybcNPQ24Qe/NEi/U2GdNv+Bjdf/gqgcUJUWbDaVi7cceuPPaCHR0LIpH7RfGTejkKVPAL1f91TJnmVOjTyL2HAwzk1Yw/PHPNnlGGLrsnRown+tV4ogznDG2mIBULnrWv6pGXAg//xQh2snT3+sNGl1QEdG51Q20bIyG10hpPzFQZHrC6XwkY
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 703baaa5-53a7-4cbd-1203-08d7f17515c8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 04:22:27.6814
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iEptR/cBdYnd9wswcTCKlWay8pirRKX4yuRBTGA4wW/T1SOIlpkv0nWXAsqgD3sIxHKS6/Reaxj2HLPgvj9rFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3707
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=eAFYCOw9;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.94.80 is neither permitted nor denied by best guess
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

From: Logan Gunthorpe <logang@deltatee.com>

This patch removes the code that sets the DMA mask as it no longer
makes sense to do this.

Fixes: 7f46c8b3a552 ("NTB: ntb_tool: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c    | 4 ----
 drivers/ntb/hw/idt/ntb_hw_idt.c    | 6 ------
 drivers/ntb/hw/intel/ntb_hw_gen1.c | 4 ----
 3 files changed, 14 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 9e310e1..88e1db6 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -1191,10 +1191,6 @@ static int amd_ntb_init_pci(struct amd_ntb_dev *ndev,
 			goto err_dma_mask;
 		dev_warn(&pdev->dev, "Cannot DMA consistent highmem\n");
 	}
-	rc = dma_coerce_mask_and_coherent(&ndev->ntb.dev,
-					  dma_get_mask(&pdev->dev));
-	if (rc)
-		goto err_dma_mask;
 
 	ndev->self_mmio = pci_iomap(pdev, 0, 0);
 	if (!ndev->self_mmio) {
diff --git a/drivers/ntb/hw/idt/ntb_hw_idt.c b/drivers/ntb/hw/idt/ntb_hw_idt.c
index edae523..d54261f 100644
--- a/drivers/ntb/hw/idt/ntb_hw_idt.c
+++ b/drivers/ntb/hw/idt/ntb_hw_idt.c
@@ -2660,12 +2660,6 @@ static int idt_init_pci(struct idt_ntb_dev *ndev)
 		dev_warn(&pdev->dev,
 			"Cannot set consistent DMA highmem bit mask\n");
 	}
-	ret = dma_coerce_mask_and_coherent(&ndev->ntb.dev,
-					   dma_get_mask(&pdev->dev));
-	if (ret != 0) {
-		dev_err(&pdev->dev, "Failed to set NTB device DMA bit mask\n");
-		return ret;
-	}
 
 	/*
 	 * Enable the device advanced error reporting. It's not critical to
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
index bb57ec2..e053012 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
@@ -1783,10 +1783,6 @@ static int intel_ntb_init_pci(struct intel_ntb_dev *ndev, struct pci_dev *pdev)
 			goto err_dma_mask;
 		dev_warn(&pdev->dev, "Cannot DMA consistent highmem\n");
 	}
-	rc = dma_coerce_mask_and_coherent(&ndev->ntb.dev,
-					  dma_get_mask(&pdev->dev));
-	if (rc)
-		goto err_dma_mask;
 
 	ndev->self_mmio = pci_iomap(pdev, 0, 0);
 	if (!ndev->self_mmio) {
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1588738912-24827-2-git-send-email-sanju.mehta%40amd.com.
