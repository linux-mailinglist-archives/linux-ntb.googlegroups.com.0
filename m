Return-Path: <linux-ntb+bncBCNYF77OWEBRBTM63PYAKGQEMAZCC3I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 5043913536E
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Jan 2020 07:59:26 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id i29sf1394049lfc.18
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 22:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kVePdXB7CnDwMSl/jRzD9gSBwDJgEymXp+r5mZL9Pe4=;
        b=k/wSQpEpV61vyFpRsznn0UIlMh9NoIB/mj89RRSoeOBhQk2nPQnBd6FuBBirQxirVQ
         PQUrFxXuIK47G30mfNUORq1KJFfNMakkiTwg4ygXRJ7CVI7CQ7VC2TJnVxFnzyB6xQaz
         n1ttrACggUCPyFzy0VW1xNkc+FvleclLQLKsWMFPHDATXv8W0rLiqivqD24nfy+e4UGi
         N/SXTYq0lbJhaxxgAVqQPCHsq2uawj4dUVCzNzy9J7nDpQZwkFFDIEjKwMvmgK+iXWVl
         p9nEBnQKzzWTp8yl83VjhalWzdlYRqI3Sh7F16b2JH8UBjMwLUSm1vzEkiT07m90xarR
         LX+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kVePdXB7CnDwMSl/jRzD9gSBwDJgEymXp+r5mZL9Pe4=;
        b=sRYCs9tODiCVBT2GeK0c9Q2iKZ4UNhKBO4RddEKeSEKC12NCSt1Kxe8Q5kkR1ySXpW
         7Zx5RBje1Mei5YCqZQwo0OBPIrKTXHMu6RcH8C7ECQ3m3vEhXu5yMwFd6HNj/TkEz/h0
         ZyhkB4y9D/YrTey2DVrckQB4O2z8Ku0/CJWzDnzPoUCOkW+AYhp/rrZAnerc6Wae0wEX
         OpstWAB7XW9WT1KCsMRdEaydRQvh9qd9ZKDD8bJzkDQw3okgyK+oLhxPmpiykFGoIKBx
         jjvZ3iZlIOwJK33deyJ4Yrrx/kZxE2ORGRfYwuzVfy9xGMQQGsQg26QV3q+yFe3wYcd9
         kclQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWTuu6jXiSbtLumt6+07M8qT69PKgptwJRbjgV3e7T5dNz6oUVf
	LYu7Vk5EcMdNcZ9dDO21MsE=
X-Google-Smtp-Source: APXvYqxUjZoDPwbgdx6R0OxhGEG2MV2K01F3JdZc9dwpHSH7TBiIFX/QuMISB8UVOb27EE7MKmVUew==
X-Received: by 2002:a2e:909a:: with SMTP id l26mr5570787ljg.209.1578553165867;
        Wed, 08 Jan 2020 22:59:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:1051:: with SMTP id x17ls121910ljm.8.gmail; Wed, 08
 Jan 2020 22:59:25 -0800 (PST)
X-Received: by 2002:a2e:9d89:: with SMTP id c9mr5491679ljj.129.1578553165384;
        Wed, 08 Jan 2020 22:59:25 -0800 (PST)
Received: from smtprelay-out1.synopsys.com (us03-smtprelay2.synopsys.com. [149.117.87.133])
        by gmr-mx.google.com with ESMTPS id v16si253433lfd.2.2020.01.08.22.59.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 22:59:24 -0800 (PST)
Received-SPF: pass (google.com: domain of alexey.brodkin@synopsys.com designates 149.117.87.133 as permitted sender) client-ip=149.117.87.133;
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com [10.192.0.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 18D87C009F;
	Thu,  9 Jan 2020 06:59:13 +0000 (UTC)
Received: from US01WEHTC3.internal.synopsys.com (us01wehtc3.internal.synopsys.com [10.15.84.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailhost.synopsys.com (Postfix) with ESMTPS id AC426A0083;
	Thu,  9 Jan 2020 06:59:06 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 8 Jan 2020 22:59:05 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 8 Jan 2020 22:59:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cshDnWFcL3vz2YIk/LsskhD22ozYAL1lqFzfe3F+fLO8Vd4nOftatgoNBw4osWVEFPhP/cWMW5KUwy1QHAoEaZA9hCHWcF0qxJfzedoasDUmPIN1SFQVBx9HdJWNSjFJ7ss/0oyYD5uRp0PSZ61pQESoPWadkv7fPBrIH9ykzeToJJYCRTUeslsglvuGaFZRexwzZt/StfzSqImmWeG6oLSnXwPIrCvCa6SJ51pVYnEEe+L/ZQbZKLUMWMbsqb0QWPBlzFzuIvjbX523iRTdmfNCikNpg996Ru5zdkIoWOrQLF0Gd4Jrla/G5f2HaSeyu6XjpD4BrrPBkfrtEs/5kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8gmFjR/b1fGaQAM2gOqn8nmQPkcV93ur6tT+xau3hk=;
 b=HgIizoKlI2r0tjlSM9SHuXnac13qnrWBaZk9StULCjuHqkOoa5eyhT8iGmanpB6RGakG0XbbciTXol3XyFTJnJ5PXaGwXOB3VmQF0csxKpYnJ2scd5x30Zl/2wULBxIzkllhqdow8vRfkoKPjL8zlnNHOFJd390CFsPMpJIN5hrHiRQ5yhKjpo4y/8xpODXTPxRXax3DJaL/8TJ6DNwuhuNu/CPeRikCzxQTq7vqOS8heEOqfOxwK91t2kucwuNnchQPy6eXT+Np8cBeDP3YnGUhdTzRBkLV3zj3zQq3R2jEWijD5Me8sO+lRYuOjDwxmSdAf9rF3AQGSPOzFdTqLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com (10.172.78.14) by
 CY4PR1201MB0054.namprd12.prod.outlook.com (10.172.77.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Thu, 9 Jan 2020 06:59:03 +0000
Received: from CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a]) by CY4PR1201MB0120.namprd12.prod.outlook.com
 ([fe80::3977:e2ba:ce57:f79a%5]) with mapi id 15.20.2602.017; Thu, 9 Jan 2020
 06:59:03 +0000
From: Alexey Brodkin <Alexey.Brodkin@synopsys.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Vineet Gupta <Vineet.Gupta1@synopsys.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>, Dave Airlie <airlied@redhat.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Ben Skeggs <bskeggs@redhat.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jiri Slaby <jirislaby@gmail.com>,
	Nick Kossifidis <mickflemm@gmail.com>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Dave Jiang <dave.jiang@intel.com>, Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Thomas Gleixner <tglx@linutronix.de>,
	"linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
	"linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
	"linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
	"linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"virtualization@lists.linux-foundation.org" <virtualization@lists.linux-foundation.org>,
	"linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>
Subject: RE: [PATCH v2 5/9] arc: Constify ioreadX() iomem argument (as in
 generic implementation)
Thread-Topic: [PATCH v2 5/9] arc: Constify ioreadX() iomem argument (as in
 generic implementation)
Thread-Index: AQHVxl82ysx9hNAdrEOd7vUo3yqzKKfh5x8g
Date: Thu, 9 Jan 2020 06:59:03 +0000
Message-ID: <CY4PR1201MB01201F44C7EBC54F6AA86446A1390@CY4PR1201MB0120.namprd12.prod.outlook.com>
References: <20200108200528.4614-1-krzk@kernel.org>
 <20200108200528.4614-6-krzk@kernel.org>
In-Reply-To: <20200108200528.4614-6-krzk@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYWJyb2RraW5c?=
 =?us-ascii?Q?YXBwZGF0YVxyb2FtaW5nXDA5ZDg0OWI2LTMyZDMtNGE0MC04NWVlLTZiODRi?=
 =?us-ascii?Q?YTI5ZTM1Ylxtc2dzXG1zZy04MzJjMmY1Yi0zMmFkLTExZWEtODAwMS04OGIx?=
 =?us-ascii?Q?MTFjZGUyMTdcYW1lLXRlc3RcODMyYzJmNWQtMzJhZC0xMWVhLTgwMDEtODhi?=
 =?us-ascii?Q?MTExY2RlMjE3Ym9keS50eHQiIHN6PSI1NzUiIHQ9IjEzMjIzMDI2NzQwOTc2?=
 =?us-ascii?Q?MzY3NSIgaD0iTll5SFZoTlMzUGh4UWxnWXV0YmErY21FVTdJPSIgaWQ9IiIg?=
 =?us-ascii?Q?Ymw9IjAiIGJvPSIxIiBjaT0iY0FBQUFFUkhVMVJTUlVGTkNnVUFBQlFKQUFC?=
 =?us-ascii?Q?YmpZTkZ1c2JWQVRwcEg3YXorOVhTT21rZnRyUDcxZElPQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUhBQUFBQ2tDQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUVBQVFBQkFBQUFSWDJrMUFBQUFBQUFBQUFBQUFBQUFKNEFBQUJtQUdrQWJn?=
 =?us-ascii?Q?QmhBRzRBWXdCbEFGOEFjQUJzQUdFQWJnQnVBR2tBYmdCbkFGOEFkd0JoQUhR?=
 =?us-ascii?Q?QVpRQnlBRzBBWVFCeUFHc0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?RUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFHWUFid0IxQUc0QVpBQnlBSGtBWHdC?=
 =?us-ascii?Q?d0FHRUFjZ0IwQUc0QVpRQnlBSE1BWHdCbkFHWUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFDQUFB?=
 =?us-ascii?Q?QUFBQ2VBQUFBWmdCdkFIVUFiZ0JrQUhJQWVRQmZBSEFBWVFCeUFIUUFiZ0Js?=
 =?us-ascii?Q?QUhJQWN3QmZBSE1BWVFCdEFITUFkUUJ1QUdjQVh3QmpBRzhBYmdCbUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQm1BRzhB?=
 =?us-ascii?Q?ZFFCdUFHUUFjZ0I1QUY4QWNBQmhBSElBZEFCdUFHVUFjZ0J6QUY4QWN3QmhB?=
 =?us-ascii?Q?RzBBY3dCMUFHNEFad0JmQUhJQVpRQnpBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdZQWJ3QjFBRzRBWkFCeUFIa0FY?=
 =?us-ascii?Q?d0J3QUdFQWNnQjBBRzRBWlFCeUFITUFYd0J6QUcwQWFRQmpBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFBQUNB?=
 =?us-ascii?Q?QUFBQUFDZUFBQUFaZ0J2QUhVQWJnQmtBSElBZVFCZkFIQUFZUUJ5QUhRQWJn?=
 =?us-ascii?Q?QmxBSElBY3dCZkFITUFkQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFCbUFH?=
 =?us-ascii?Q?OEFkUUJ1QUdRQWNnQjVBRjhBY0FCaEFISUFkQUJ1QUdVQWNnQnpBRjhBZEFC?=
 =?us-ascii?Q?ekFHMEFZd0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBR1lBYndCMUFHNEFaQUJ5QUhr?=
 =?us-ascii?Q?QVh3QndBR0VBY2dCMEFHNEFaUUJ5QUhNQVh3QjFBRzBBWXdBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFBQUFB?=
 =?us-ascii?Q?Q0FBQUFBQUNlQUFBQVp3QjBBSE1BWHdCd0FISUFid0JrQUhVQVl3QjBBRjhB?=
 =?us-ascii?Q?ZEFCeUFHRUFhUUJ1QUdrQWJnQm5BQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFBQUJ6?=
 =?us-ascii?Q?QUdFQWJBQmxBSE1BWHdCaEFHTUFZd0J2QUhVQWJnQjBBRjhBY0FCc0FHRUFi?=
 =?us-ascii?Q?Z0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFITUFZUUJzQUdVQWN3QmZB?=
 =?us-ascii?Q?SEVBZFFCdkFIUUFaUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFB?=
 =?us-ascii?Q?QUFDQUFBQUFBQ2VBQUFBY3dCdUFIQUFjd0JmQUd3QWFRQmpBR1VBYmdCekFH?=
 =?us-ascii?Q?VUFYd0IwQUdVQWNnQnRBRjhBTVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFB?=
 =?us-ascii?Q?QnpBRzRBY0FCekFGOEFiQUJwQUdNQVpRQnVBSE1BWlFCZkFIUUFaUUJ5QUcw?=
 =?us-ascii?Q?QVh3QnpBSFFBZFFCa0FHVUFiZ0IwQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUhZQVp3QmZBR3NBWlFC?=
 =?us-ascii?Q?NUFIY0Fid0J5QUdRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFB?=
 =?us-ascii?Q?QUFBQUNBQUFBQUFBPSIvPjwvbWV0YT4=3D?=
x-dg-rorf: true
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63c7ca27-ecc9-4075-3e51-08d794d16992
x-ms-traffictypediagnostic: CY4PR1201MB0054:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1201MB00543E76A1688BDB5A9E77E0A1390@CY4PR1201MB0054.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(346002)(396003)(39860400002)(376002)(136003)(189003)(199004)(478600001)(81156014)(81166006)(54906003)(8676002)(7696005)(5660300002)(33656002)(52536014)(86362001)(186003)(8936002)(6506007)(26005)(316002)(9686003)(55016002)(66556008)(4744005)(7406005)(4326008)(7416002)(2906002)(6916009)(66446008)(71200400001)(66476007)(64756008)(66946007)(76116006)(41533002);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR1201MB0054;H:CY4PR1201MB0120.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YMnlrJ7QW7WllT9PHw0N7N/gksJdOFPnYmPrWGBpV4B2xWzTTWoE5SjnGdXn/GhSH84HlQTd5YrMSC8KwopriiY3mk4tA0bxu4BYIESOCSVErNvcLooGe1ef02ikuLwhzKVLfZMrE4/dWyGA2rP9xCN7UH3BsoT4XkEi1zAIOe4qtWUsTa9sAeVMv6Mvl1mN0+kw7g5/eLkaXIVZMeX5y6CVZ69YB4Mz5BsGpSehNFiikdcOQruE/Cq2uuFmZ7AeK2FZ9iShJBrxvMoMrtvaSNK0771l3Nvrb52VzRg3xuR7dy3SkTsPQynDSW8QJECknGAj3J1eWVXRchvRL7TcPLybZLCtx2Ml1CVTlTbDwtZ8gJIjjV3ZbffySH2pbevRVCbkcGigoDSX0rw0MwvB6MIFzIgL8Usl8KMedyr6rg3qusTVuDnRFeweo81NEw6sxx2+Fw2qSBJbp8eRVlvNQUK9L9upUX/qxF/ePPJIQDk=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 63c7ca27-ecc9-4075-3e51-08d794d16992
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 06:59:03.4083
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FDpz17WNzPjlQTfYttFBIyOQWptuLfICcdYscr9HUoeY4oXUU7Arulrz6WM3qjUuFFCOBmTrAP0aTEo3sd/3EQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB0054
X-OriginatorOrg: synopsys.com
X-Original-Sender: alexey.brodkin@synopsys.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@synopsys.com header.s=mail header.b=WQEGVbEl;       dkim=fail
 header.i=@synopsys.onmicrosoft.com header.s=selector2-synopsys-onmicrosoft-com
 header.b=ElhTNwP2;       arc=fail (signature failed);       spf=pass
 (google.com: domain of alexey.brodkin@synopsys.com designates 149.117.87.133
 as permitted sender) smtp.mailfrom=Alexey.Brodkin@synopsys.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=synopsys.com
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

Hi Krzysztof,

> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
> 
> Implementations of ioreadX() do not modify the memory under the
> address so they can be converted to a "const" version for const-safety
> and consistency among architectures.

Thanks for this clean-up. Looks good to me, so ...

Acked-by: Alexey Brodkin <abrodkin@synopsys.com>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CY4PR1201MB01201F44C7EBC54F6AA86446A1390%40CY4PR1201MB0120.namprd12.prod.outlook.com.
