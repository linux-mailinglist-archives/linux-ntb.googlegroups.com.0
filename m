Return-Path: <linux-ntb+bncBAABBZVU22GQMGQEOD3MADI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAA84718E9
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 07:44:55 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id t25-20020a2e8e79000000b0021b5c659213sf3927689ljk.10
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Dec 2021 22:44:55 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639291495; cv=pass;
        d=google.com; s=arc-20160816;
        b=iUUC1ZmzvY8Z1A9yBh/6qM/GFsdBIoKezvC9/l2pZ6HPsN6DjeJzY9hjv+teCn643x
         D5aZLzGI9iLtbnS4C3WKWq0ZUXB+mCRQAVU9Tsdo74dEZObv0Xw7dt/o4hkWkFWaSIoH
         bX7mfYE7NlfC94m1LJMz3ClKmP/2cSEyUGuH7/0XCh7GY+ywTjPfJYV+M1PwzAvIow3p
         Yh6+z4xe/fBv2xwPbjx9Uqgv+zfwjsqsJVQD/3SMcbC8H7Mpka2qnVtAh8JOZk2sO7Qw
         CQk1hEm4Qj4nyc1BLXDgla6t/Y00+vhswNNqCve+6OdvY3uMUEUTX3tYD7TDDHf2mqAI
         sWHQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :content-transfer-encoding:in-reply-to:user-agent:date:message-id
         :from:references:cc:to:subject:sender:dkim-signature;
        bh=v4XO02cA+E9Qq0q3kg7AXWQ+DCVB7zyJQbmUuOtwLbI=;
        b=MaBLkASouTKnaBhLJyL2UFaeT5oQDCTkHaqS2EQPjQjKRxfdHsq3LL1rg5//PQgMXV
         XcDuLXorqU2uMysKcsxe7u1Spd4V7X0WSPvG4dmH8vNETfog2KMfF+AEY638flic8Tuv
         btRWN3NGVwTKijuUjwLMZb8bLFbVUiak1jEMZtOlaZYoyEaPL6Ud6DZk8bSG+SG26PiB
         9TIwjOj/OzGpAUdq5/8tedI7foICcDMfWlSRCbB9yYTtnlWr/+HMcfbGJoqNo2lwhwAn
         AR3X4DSLmz990gI3i7wYh1FKCrQbKJzXskxzIkJq47IhDYDOL+8EedOh3T9y3blJMNo0
         b54w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@NextfourGroupOy.onmicrosoft.com header.s=selector2-NextfourGroupOy-onmicrosoft-com header.b=MAhySbBj;
       arc=pass (i=1 spf=pass spfdomain=nextfour.com dkim=pass dkdomain=nextfour.com dmarc=pass fromdomain=nextfour.com);
       spf=neutral (google.com: 40.107.20.83 is neither permitted nor denied by domain of mika.penttila@nextfour.com) smtp.mailfrom=mika.penttila@nextfour.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v4XO02cA+E9Qq0q3kg7AXWQ+DCVB7zyJQbmUuOtwLbI=;
        b=QTQk+ILf1u/1Ja9LOez1MUwZlmvkab/iK/bKYPgg07sNiBQfOAvLCThNmMF3CxfM4x
         QKOr1NUfjuUncUTO5Kv/NbLa6gHPvY22qyEbpoX3R+IBxFnSqSQ7vtb5o3HaSPDZ0bCW
         cWEr0B33ZreFy2DHbIzRKedHb4mDeQjK4mKcU73MK0lK8I8+8OLx4wisRmI5H2o6YCv2
         jKrQRr+FMNf4AGdv3RMyyTvPXwthzWoWb3l3Th8oAdyDtqPxe50Lv+m4EIWlagLHOael
         fRiz74LCMGRFJIg1yZddu9v6RrRd+78diM0lB6VYnIsPfuhvD4bHWc8pVT2G44hA3Wpg
         i9Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-transfer-encoding
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v4XO02cA+E9Qq0q3kg7AXWQ+DCVB7zyJQbmUuOtwLbI=;
        b=ncqBXz4QQ/BmHbm7iC0iaccK599V1NIsA8xFRpdIjhQlS+l6uXeeN1gSMmdXfSEdzT
         u58/399gFTeW4OSQaNIHDroGa51yn2sGOV/PY3dPFhW+0Gf0pgkS9vkIEwlF/jBGyIox
         i5k8bMpnpyRWcRwD4x3SkuDBWz5/OJVLDrV5U2B667xSXT7hdqmw2oMpbEmwSgWJL7ZA
         emco2n3mcIBAFUEcPGBuQgBFWXNQoQH7RFaTvK93JoFttDm8+aXMzGFKq5Px+Wfbq04N
         jCDNpR6V28iWxD9wzAP8Uy9IEO8bFruLWAR3PtJowembOXJCcWg5E9O3ruK7X3fWfiFn
         ExqA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531rQhiMLwzE6CUst9olO5scQmlSO4VBrHPWfKDsgDJC+ZQvG3RE
	mWB1t3Xo9GNAj/gFg7AT0jE=
X-Google-Smtp-Source: ABdhPJzydxE+Ej9tmxf05isR/P0jYRXhUCu+9l2gOCNUP3UmptR0lC5VxWWvSPYgOiY+F4KexL8FBw==
X-Received: by 2002:a05:6512:b0d:: with SMTP id w13mr22726576lfu.266.1639291494690;
        Sat, 11 Dec 2021 22:44:54 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:a378:: with SMTP id i24ls80728ljn.3.gmail; Sat, 11 Dec
 2021 22:44:53 -0800 (PST)
X-Received: by 2002:a2e:80cf:: with SMTP id r15mr22653170ljg.34.1639291493845;
        Sat, 11 Dec 2021 22:44:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639291493; cv=pass;
        d=google.com; s=arc-20160816;
        b=RbgnhQyUm63wmCMGQ1GDFuN7APeO89Tx8dq3IIuum8lQrBwUpjSSjzOP53uuo6CacZ
         Ad4lu/ABp2rzvXMhvGkGlH1ivyYW7k6nX80+kxdj6ehbt0fnXFfoP5omUsx7F6G+ZNAa
         at535Y3tBBajet0KvxAa0IcsaEGgco9zdI4mTv7qhzck1WK0jyaEuQUHEvDNFJmO73w9
         YbMt7WQClLJBCkDq9afy4qZtgbwHLPGJVJzApr7RRkT4KjYnoGbjGaTODeC8y2F2hjaP
         gCLlS4PFKKS66jwWDgmu2pkFnQBRMVXqHP1peyZna8cYxSoHMrT6wQDYzd1yfGFHYq5L
         V0+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=z/kI292VVGwC9YHzx6achs/pLHP4Kp+eYk2JuzwHU+M=;
        b=wovtfoFta5nqvF5fgtCf5f/guWd7r1iDWLIAaVct8UFJ7PgDWpzKOrv0nY5zy1uPrc
         Jf9IlJVakCuPjed5HyXGCZ0h1XTzKP1asS4MGrgK8pWNqGf1K3JYOd6Pe0ldL5r29B36
         0l7WQX9YGAbKbejqFTslzJBk8gM4gSWUW3HFYIKau/emEWEML61ad07pxdL9qEYa4tB1
         TalPFc5Ie7ffYkymASDAJd14IcVoegvo4AzrTH+x4uG2fkRzpxhFUShHrHG1zeQZKWye
         uWbJBK6ZcckLql0k4pf+TndcjC/Z1fCdZs4cudTtDJOjgOGyhVh/ZhKdEbXeLDcVqPO5
         3Pig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@NextfourGroupOy.onmicrosoft.com header.s=selector2-NextfourGroupOy-onmicrosoft-com header.b=MAhySbBj;
       arc=pass (i=1 spf=pass spfdomain=nextfour.com dkim=pass dkdomain=nextfour.com dmarc=pass fromdomain=nextfour.com);
       spf=neutral (google.com: 40.107.20.83 is neither permitted nor denied by domain of mika.penttila@nextfour.com) smtp.mailfrom=mika.penttila@nextfour.com
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2083.outbound.protection.outlook.com. [40.107.20.83])
        by gmr-mx.google.com with ESMTPS id y8si357740lfj.0.2021.12.11.22.44.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Dec 2021 22:44:53 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.20.83 is neither permitted nor denied by domain of mika.penttila@nextfour.com) client-ip=40.107.20.83;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNuyxlEWZpftbwbbz3VAjS+eVoqPk7vS0bN2oojghWs/SkVPr1Wy/5KfjN/r/YXQFKin6V3YzXZVeX0M0vANcpVkgNcdTOH7to/bsu6Uhf0g5fOO+dPQ/sYvd/h7f0uUJ90xTJchA4cB8vgHVZKzLqMNECO48ulobOSASIJX2940xAnJS3m6Wk4bxiA8fBGRmuyjAcmgMC+tKx8CstVJ5y4FxGjw7RrN4PedqfJgacRTQIhXlfG+UfTaoVqzsvhAhIVpxM93oG6qCuHCLbLL9ESsdnaMGiBqcEEMKNW8VooHdFR+aHWIqGvFc++T0L7yVOCAybCscFQ7o4jaF2qpIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z/kI292VVGwC9YHzx6achs/pLHP4Kp+eYk2JuzwHU+M=;
 b=hjFNg63ab6WBSFoWaks17uFs0qIjbZW8t7jGOAA2V4aUsLgmT2g7CdX9XDBiicszeeom988pAWnnsLdX8jlBw21R6Idyp5Q2micgF9XNIhog3giIDxVUDNN40jdnhCQraFUJ8epqg1WYtKQRaHjMhUykeIHaaofHG9a/NiEXabGkqHBzHFc5cDUAb9NCJ7KjhBYMqH9Nbhbd47TRgJYGv9SPo0S54xLvr2kweDHa4uqRIbBUs1+mDQDoa1g7bCfdY8f11wkz2QG1eSRuwYNKPG2b9n7Q9MMsSHtTwKTbMFZSZpT4CK48yW7IazBzFGKYPtux4792UvwFXY7GAiQX+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nextfour.com; dmarc=pass action=none header.from=nextfour.com;
 dkim=pass header.d=nextfour.com; arc=none
Received: from DBAPR03MB6630.eurprd03.prod.outlook.com (2603:10a6:10:194::6)
 by DB6PR03MB2855.eurprd03.prod.outlook.com (2603:10a6:6:33::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.12; Sun, 12 Dec
 2021 06:44:51 +0000
Received: from DBAPR03MB6630.eurprd03.prod.outlook.com
 ([fe80::39ec:706d:cbfb:8a26]) by DBAPR03MB6630.eurprd03.prod.outlook.com
 ([fe80::39ec:706d:cbfb:8a26%6]) with mapi id 15.20.4755.025; Sun, 12 Dec 2021
 06:44:50 +0000
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
To: "Tian, Kevin" <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Thomas Gleixner <tglx@linutronix.de>
Cc: "Jiang, Dave" <dave.jiang@intel.com>,
 Logan Gunthorpe <logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 "Dey, Megha" <megha.dey@intel.com>, "Raj, Ashok" <ashok.raj@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason
 <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 "x86@kernel.org" <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
References: <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com>
 <87pmqg88xq.ffs@tglx> <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com>
 <87k0go8432.ffs@tglx> <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <BN9PR11MB5276599F467AD5EAC935A79E8C719@BN9PR11MB5276.namprd11.prod.outlook.com>
From: =?UTF-8?Q?Mika_Penttil=c3=a4?= <mika.penttila@nextfour.com>
Message-ID: <3f6d4bd7-8b60-1976-73a4-f5ef7f3dbf27@nextfour.com>
Date: Sun, 12 Dec 2021 08:44:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <BN9PR11MB5276599F467AD5EAC935A79E8C719@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-ClientProxiedBy: HE1PR0901CA0052.eurprd09.prod.outlook.com
 (2603:10a6:3:45::20) To DBAPR03MB6630.eurprd03.prod.outlook.com
 (2603:10a6:10:194::6)
MIME-Version: 1.0
Received: from [192.168.1.121] (91.145.109.188) by HE1PR0901CA0052.eurprd09.prod.outlook.com (2603:10a6:3:45::20) with Microsoft SMTP Server (version=TLS1_2, cipher=) via Frontend Transport; Sun, 12 Dec 2021 06:44:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6a9841ff-3283-4278-9698-08d9bd3ae56b
X-MS-TrafficTypeDiagnostic: DB6PR03MB2855:EE_
X-Microsoft-Antispam-PRVS: <DB6PR03MB2855EECF64352E555D35954D83739@DB6PR03MB2855.eurprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pwa39zJxitZSCq9F7V7guW9o9JoRNqZqqDVFgA34AxkeI21bEos+5QFp8tWWhlNZfoUTHGYrP8RmPFqlJ9JA6RWzOtYHqqlJGNXnorXp08Nw1hCXFKlftdldIFVAdOGV2TEX+B7dF7ENcOY3DYlKhHgovA9IQLvFUTByQDIu77FAIXdRStnOL0cVAs+BmoLbXHtT0I6DC6gcpxAWE6vxqJ11VxbhP73bQ1xod6scfqd2qXCs0vZ3IzEwXAtbB+RwqNFa9rfHfIUd/xwDmN3d75/yrA3e5uYg3t9vOjuOZ1VfatnjiWqZxyPXbBsdBoqaXyCkNPeVvQZ0NH9BS0v1Nxe+Y4Bnqi3ci9uAjM6KJhdhutAbzekS1eyLPGaVjknGpyYnBMWw/TCWlqlunQhW+6lSeqpm/rycb5ZKBvyjEDUKUlx1LZ3tTwWC7UQTlZKeitLzupKVYRE7dZok0upQO7OMW+AIxcn1AMvwMMh7jv7U0xKU5hGKp/pX8jikuIw7iZ4ik/T8XFqmdFuTl7UufxvDUFaLNfxmVlD4krqfwaYq/DRJlGNoaE1fpUtWkXLeUHeDq8kaFVPKe093iiYvpUZwebDD2BfPOTi6XxwVyF52V2CNevnlrUZ7Kb2rI+zcYvRMHGyClnS6I5f96l6gIw34kIs8FuklJQZe+MVnsNWKDrXOyODTSw8qAodqjsfI6zUIaEcg0cn5rdCQU2FtJpkuxUe1e27EJUlqDZJgbRBEiVJkYRmSwhluD35XUk0acvRrpQJoLO4M0/EIkIPimA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBAPR03MB6630.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(136003)(39830400003)(376002)(346002)(396003)(31686004)(52116002)(54906003)(38100700002)(36756003)(956004)(8936002)(31696002)(2906002)(186003)(5660300002)(83380400001)(6666004)(16576012)(110136005)(316002)(66946007)(38350700002)(7416002)(86362001)(26005)(8676002)(6486002)(508600001)(66476007)(2616005)(4326008)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFBGWW9PM2thWjcwdjNMOFNwR3lNeUtVRmlLaCtrMWhyZDNBRmpWQ3U2RURo?=
 =?utf-8?B?OHBISG5leFlsK0JWYlNiczQ2ZzMxaHFUeWQveFRQdGxidUN3WnVWNUZGTHF6?=
 =?utf-8?B?NVFCYy9DNC9ZeTR5MzNnNXZUeXVMckZuSkh1NDVVejl5UjJ1WHBic1NWYlhZ?=
 =?utf-8?B?VWRFR090NnA2ejNJSE1xRjB6VUNQSnBNNHNmKzVhajN4N1JDbzArays2QXBo?=
 =?utf-8?B?YmxYT1VnWnBwcVdlbXBsNG9hMWs1T0ZkTUZHVFlnYVpvREN5aVJpRWV0N0JN?=
 =?utf-8?B?ZUsyaU0vTnI2M2kyYkRUM0dXTXBMWnZDUitTZTR5c05LUTdiR0dVMEczSTNZ?=
 =?utf-8?B?SHE5VkNodURzVVNNeHpTV3lSanJEWWlYN0pWKzNaSmVaanRTcFpHcytzR01X?=
 =?utf-8?B?WHZEQ3NmYVhUMFFnSkkyaFJ0c1l5VWdOZE5oL0N6a3JLQ2p2YWJ1alBaUXpa?=
 =?utf-8?B?aFFWaU82ZjB3ZmxUQnU1eEVYTXpMMUY2Zmd3K1Zyb0pOVGZQME9OMjJKeWh2?=
 =?utf-8?B?NEZnZ2wxU1VvQ21nZHp4dDZiTXEycDlRaHY2RCtmVG91Nk1PYnlxTk1KRW0r?=
 =?utf-8?B?Vk00YjlmTHNZYjNRUGIxei9CNzlvK3ZjdGF4bncxTkdIbTIrTUdMN3dxaVNR?=
 =?utf-8?B?SzlnOE5TQjZRVjQ5eHdWdkZZcS92ckk4QTVDa2tYOGJqVXZXdmNYblBYOFFI?=
 =?utf-8?B?Y3UrTStIWXNYUFJiQXVNN2k2UjNXUjQ4dklBbEc2WkpscThwSTZkUGtlZkUy?=
 =?utf-8?B?b0wzdzVCa3QwV1hDb090cXlUQk9USEJNcDZpeGU5MnN0V09zN3lRbmF4ckZB?=
 =?utf-8?B?cG9uaEZ4T1E4V0JxcVJXNVdNaU1sZTViSFJiUVd4U1hjMEdHTUcrakJkSnQ1?=
 =?utf-8?B?VEhkY08ram14KzlNUXdFWEtKekdCa1RoY3ZHdlBEY2NnN1pSRjZFTkoyUzBt?=
 =?utf-8?B?ZnVoNUswemhhRjc4R1gxeGhIUE1ZUDBnZndOQ2JCMWQwY1pNZXM5K3M4Rzho?=
 =?utf-8?B?QzZWY1A4QkthcVVwSG5ieS9VUFhMZE95TlIzNk9PZjQxK1hJUktpRU5Fdk9R?=
 =?utf-8?B?L043QU5qSW5tdGhkTUdQVUxqOVVsTk1Qc1AwRjZoeXZFWHRBamtLSmpHczEy?=
 =?utf-8?B?c2F1dlZwL3E4WHp4ZjZvN2VjLy9MdWVYcmdueE9HQVNaOVdYeUFEQ2NscU1t?=
 =?utf-8?B?eElVK2RIZm1PU1pIU09IZ3hLdTlsdTIvNjhNRlhOQlVUaENVbEo5YndhcG1z?=
 =?utf-8?B?bWIvQnRHcVkrQzMvdC9DdWVRNGQ5enhsYWh6UVJ1cERUMjNqMndHVVdBVk03?=
 =?utf-8?B?MXRwUlZ3b2RhRFJCeDRGNG1TQ3h0Z05yY1lUZ3h2N3owNURwbHZTeklueFdn?=
 =?utf-8?B?c3JTTmFoOGJMR0ovZndYeHVhV25RMzZZUE4xUUdyeHg3R0RBRk5mcXZmeHdt?=
 =?utf-8?B?UGVvNE9uSXlRVU9pTmh4aXpFS3U4SnB4aXhPQmhiOGxpSm4yYWNVQk9TVXlw?=
 =?utf-8?B?SEdEWGsrUm80elk4YmZYV0t2RllvUWFMdEJ5M2JoNFphRHRvM1ZudTNNdlVR?=
 =?utf-8?B?eFlSOVFmekd4TUVyMlljN0tMWXpJTUQ2NjBHSTYwQ0FFUCtvQzh3K2M4bnRw?=
 =?utf-8?B?c2FrYVdzMWRHL1NZaW1BelFCYlZnWTIzMEJWNUVTL1lqMGlFcTVoaFRRVmtG?=
 =?utf-8?B?SHovRVdzai9KWHh6ZkN6N0ZRTXh5T2hrSVZKcVlzcHUrdTcxTGtmRU9BdGlR?=
 =?utf-8?B?MVltKzh3elJ1cmdkNWF3aXptTGZFb3l6aWNkd0NKN2xSRzlGZGFzT21FTVg2?=
 =?utf-8?B?T1lTWlBzQVJ3eno2bVdDaWFSUDRFR0IreThGYXFnZmNnS3hlZzlqV0FBVEQz?=
 =?utf-8?B?WWVraCsvNGp6Q3VoVmZmNDA2eUJPbG0vUFZTbnUrYmVUVVVPcTY2OFc2b1Vk?=
 =?utf-8?B?eFdmL2swdDFYMHhMVHcrNGNMaGRqUjZaYXFxMWdTRWV2dU52c1NkMUZNWTFI?=
 =?utf-8?B?dWFvMy9wL2ZhbmVVbHdXeGJZR0JQdE1vY1V5b09mQnFPcEtrYjRNMDFTZExH?=
 =?utf-8?B?Q3AvMmpTMnBJN0E3dmlNTXlRNEh2dXNOYkVpNmRFeFhtMkI3UDZmSEhNWmhO?=
 =?utf-8?B?WElZWUliUG9udXE5Q2lZd0VBdDZJM0Ywckk0M0ZZdy9BbnJLZmQ5WEZiUUxq?=
 =?utf-8?B?YUx5OVdwcTFsMlQvcUszbXlLYkUzVkxzQTAxczRmRnhVQlNrWFB5d0tNeGRj?=
 =?utf-8?B?dWdrSk90U2VvV1c2cXV5Z1BkQUJnPT0=?=
X-OriginatorOrg: nextfour.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a9841ff-3283-4278-9698-08d9bd3ae56b
X-MS-Exchange-CrossTenant-AuthSource: DBAPR03MB6630.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2021 06:44:50.6373
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 972e95c2-9290-4a02-8705-4014700ea294
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M0bGH/jO+ZCoS+pZk1NmA+/GX8GOPnc+9gNhOydkEVkXpJts8x+qkpHL748R4gSg22+uoRHl7X3Rq05clhcBjYa6Etzd39X7lVRgUmB/OeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR03MB2855
X-Original-Sender: mika.penttila@nextfour.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@NextfourGroupOy.onmicrosoft.com header.s=selector2-NextfourGroupOy-onmicrosoft-com
 header.b=MAhySbBj;       arc=pass (i=1 spf=pass spfdomain=nextfour.com
 dkim=pass dkdomain=nextfour.com dmarc=pass fromdomain=nextfour.com);
       spf=neutral (google.com: 40.107.20.83 is neither permitted nor denied
 by domain of mika.penttila@nextfour.com) smtp.mailfrom=mika.penttila@nextfour.com
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



On 10.12.2021 9.36, Tian, Kevin wrote:
>> From: Jason Gunthorpe <jgg@nvidia.com>
>> Sent: Friday, December 10, 2021 4:59 AM
>>
>> On Thu, Dec 09, 2021 at 09:32:42PM +0100, Thomas Gleixner wrote:
>>> On Thu, Dec 09 2021 at 12:21, Jason Gunthorpe wrote:
>>>> On Thu, Dec 09, 2021 at 09:37:06AM +0100, Thomas Gleixner wrote:
>>>> If we keep the MSI emulation in the hypervisor then MSI !=3D IMS.  The
>>>> MSI code needs to write a addr/data pair compatible with the emulation
>>>> and the IMS code needs to write an addr/data pair from the
>>>> hypercall. Seems like this scenario is best avoided!
>>>>
>>>>  From this perspective I haven't connected how virtual interrupt
>>>> remapping helps in the guest? Is this a way to provide the hypercall
>>>> I'm imagining above?
>>> That was my thought to avoid having different mechanisms.
>>>
>>> The address/data pair is computed in two places:
>>>
>>>    1) Activation of an interrupt
>>>    2) Affinity setting on an interrupt
>>>
>>> Both configure the IRTE when interrupt remapping is in place.
>>>
>>> In both cases a vector is allocated in the vector domain and based on
>>> the resulting target APIC / vector number pair the IRTE is
>>> (re)configured.
>>>
>>> So putting the hypercall into the vIRTE update is the obvious
>>> place. Both activation and affinity setting can fail and propagate an
>>> error code down to the originating caller.
>>>
>>> Hmm?
>> Okay, I think I get it. Would be nice to have someone from intel
>> familiar with the vIOMMU protocols and qemu code remark what the
>> hypervisor side can look like.
>>
>> There is a bit more work here, we'd have to change VFIO to somehow
>> entirely disconnect the kernel IRQ logic from the MSI table and
>> directly pass control of it to the guest after the hypervisor IOMMU IR
>> secures it. ie directly mmap the msi-x table into the guest
>>
> It's supported already:
>
> /*
>   * The MSIX mappable capability informs that MSIX data of a BAR can be m=
mapped
>   * which allows direct access to non-MSIX registers which happened to be=
 within
>   * the same system page.
>   *
>   * Even though the userspace gets direct access to the MSIX data, the ex=
isting
>   * VFIO_DEVICE_SET_IRQS interface must still be used for MSIX configurat=
ion.
>   */
> #define VFIO_REGION_INFO_CAP_MSIX_MAPPABLE      3
>
> IIRC this was introduced for PPC when a device has MSI-X in the same BAR =
as
> other MMIO registers. Trapping MSI-X leads to performance downgrade on
> accesses to adjacent registers. MSI-X can be mapped by userspace because
> PPC already uses a hypercall mechanism for interrupt. Though unclear abou=
t
> the detail it sounds a similar usage as proposed here.
>
> Thanks
> Kevin

I see=C2=A0 VFIO_REGION_INFO_CAP_MSIX_MAPPABLE is always set so if msix tab=
le=20
is in its own bar, qemu never traps/emulates the access. On the other=20
hand, qemu is said to depend on emulating masking. So how is this=20
supposed to work, in case the table is not in the config bar?

Thanks,
Mika


--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/3f6d4bd7-8b60-1976-73a4-f5ef7f3dbf27%40nextfour.com.
