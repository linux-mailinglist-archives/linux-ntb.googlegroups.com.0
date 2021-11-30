Return-Path: <linux-ntb+bncBCN77QHK3UIBBVMSTKGQMGQE5MRAP6Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BDD463F36
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 21:28:07 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id e131-20020a25d389000000b005fb5e6eb757sf31364671ybf.22
        for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 12:28:07 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1638304086; cv=pass;
        d=google.com; s=arc-20160816;
        b=yqaaCYgnaBvLdPWPY0W0OvSZyqzGaDOoZnuGBNx0lJC8BrB6B6pfXiV//qyCmjI/tX
         +CpVsWRYngR8yuMlxujTNOH3uKgU1c0qM8My1V7fD3G5wGnDpMwO9SOY+E0+FW90bY9D
         UrtgRrk685yHKcsVAqL9MCPFMVwW1DryEl+cjGJ48qiBBDYPTvw27rwpEn689qpM2UOT
         wMhUledUNpy4QJcLVwBV35lpRcFqIAbfctSUMt7XUqgrQnUj9iKzrHDzJYvPs/AT6hPM
         CgqL3Ad3aNXJsSrZOkaKJOUxiCqM0iOjqy1fX/ElbMbsIIEmtfFqRdTsHQJlL3+rhrCu
         SF1A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=mQt3WlmdfYfKo5yPCpacAI8v2kKYT1tHgzxitrQ1ZTc=;
        b=NhkzLRr7ZdEtSURk70y6f2AElaEr4F5AMHlIBsmltniZ/dT4mAcYJ9YvKRAzoldy4k
         28SIrlqveB2jy8ghKvNeU3/Jk+KZFqqlFdUTQOhKs5EgFTfba1VtFCYoDhHpZChQ4O2U
         giPqT+B4Z4JrUmCGap6sq2LwDYrRzc8oKusjG/7dpxrCxnFyNizmxIiJ1SsNjXU6WtnA
         QqVVRSXYVY/guTTgtcVlZvOtxGsKrpaE+mjnBOBsCO5SmSVGtKYHuuqz48/lbtDLOcff
         /aoio9VsX4p8qTUDgybl+gjucGSlBDzJHSoYuvACUCtgzQVBWkX/AgQmw5VjPBmeK5rA
         smsQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=MhQn51Fv;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.212.76 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mQt3WlmdfYfKo5yPCpacAI8v2kKYT1tHgzxitrQ1ZTc=;
        b=fbHic8ZX1lButgSCedmBpui0Jax48SS7ga8L9G+BcUH97ih92+zsD3Ik5Bc24VBKzL
         t1VVK3S6RpVPHmVT5/m6Ps3GKlRrTXf37j+amDL6RmBu3g141yHoSA9K6Gc40bowSnvV
         W4M0GHWKwKqHA+0rmjRj4lN6jtUHkHDEIby1cWoFSlyjiUrP9rDz+J+dU6We2kEYNouf
         p3dSodlLSfy8BlJ33SLbMqBYSJKS6gJlm8EqPJ90Mo0iIM0vK16ynHVMtkZjAVftJtxA
         pPVruzlsiMGgj2uZK7G2ZrRo7oRE4sh/uX6meCLqJM9IH18pUPjH8TAsCEQplLj1GArG
         dxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQt3WlmdfYfKo5yPCpacAI8v2kKYT1tHgzxitrQ1ZTc=;
        b=6ON8y5m5aDBQ/2WFs3xY3E/Ms41WsSbXr7Yk5ZXbI+jWIqXq1DWpA2QY52ggod8Lv0
         M7qhvnE3bi5XaqeZWqIO6mmpoONocaO7I6IlF6BUgHc9w8MrevMnqIlDhonRe/ojT+AK
         1XoMvsbKuXbwm4PU9sAR1jtKN3/L4feHxoOUQ1xtuk/1utrDVDu1S5Yh6+UyHTYVO2DS
         PQjt75EfqjagJ2Fx/yXjAnBGdPQ+OibjG2B3eqCoNhZKBTqPqpY5K4qxL5JC2WFXveJx
         4qGzM3tJusQdToCgo/C3ip6gff6cRfjf2dOgcXTh/MLTkbZLqoXfmRhuMcZpjLFCp/SA
         /vXg==
X-Gm-Message-State: AOAM531udFS1irW/mkmUsJ2N/WZyW7PklcIhbvzkTaTyALfrKG1I2bJo
	rpytFM9j62/6o6xn2BcEtV8=
X-Google-Smtp-Source: ABdhPJwVr2j2yjuUD01fqTos6HAF+6nJAz+fnHtoqmgdmpE/XdoDXmz4XNeZ0YCnsc+bmjTGNtNfgA==
X-Received: by 2002:a5b:783:: with SMTP id b3mr1758877ybq.328.1638304086016;
        Tue, 30 Nov 2021 12:28:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:6b04:: with SMTP id g4ls10992ybc.4.gmail; Tue, 30 Nov
 2021 12:28:05 -0800 (PST)
X-Received: by 2002:a25:245:: with SMTP id 66mr1586609ybc.285.1638304085501;
        Tue, 30 Nov 2021 12:28:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638304085; cv=pass;
        d=google.com; s=arc-20160816;
        b=EW5ynLmrE6Rfi5rSQFWcQvDH77YMm2SrvnH3OIf002GDhhjonFoaqoN9sdsY6JtoJI
         Z4Qhs4mPzFUGxyIiEaM+dYPKujx3Q4yRru3eXlSLrE7OM0RJThs78h4d3Af+qjZIPBzj
         MjyXWvARhmIT/ZytMVv5o2dAWu2DYOmYKhurd4HaVTsNzBsB9ih0hpewBoPt7YT6/vki
         XWXW4XRTSPS6QODICY+vqPueOrvzFB6GaS5+JE+CZLTyz0Wj8HfTcn/FxZ9sbNW/doqP
         /K5HUeFJa/bBOeP3q6M40CWfJgpEYjhV9JwmiDTrtlYdYOoqbwJptW9FA2el99Z9GQKd
         fYTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=d6ZY5ACMuyUpQLU7ZfWCRPgdiyQKhG8NR8yudvtEaAU=;
        b=TlLGfSnsF/4/wJvYktFONc96E2QZacqpu8lWSfjJUB2BdjyKCS9M6XqXyTIHmHTFoq
         GkT1KdzgwOLwwAFoRVWYcnVbVEb4PS+adq4/HuxVXDL0HfqMxBslE2kwN9CIefb4bSUK
         NzigjyRQohKgmUP9XfuS77obYUzygRTniZPYLHkBWAgShxVapfy+4IbOGUct1YCfNo7U
         vfZ8JopgSh6tU9inOd5qqK57UCqiLsLf7RjR1j/eelKlY+kvGcE27PCPB2BlNrvlOoCt
         ig55TItke4jBZzYFVCz24MJgfI2F5jSV4u4gckfOvK3ZCVMEYeM1jPzQoEwAtUgdgw+S
         +HcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=MhQn51Fv;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.212.76 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2076.outbound.protection.outlook.com. [40.107.212.76])
        by gmr-mx.google.com with ESMTPS id w6si789431ybt.0.2021.11.30.12.28.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Nov 2021 12:28:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.212.76 as permitted sender) client-ip=40.107.212.76;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jOxUtZK7oQ62pFIZ7VhjQWrGKIrEeKZGIR96PESivHWluxu2FS6RNd/RyXJpPGy7k1T0wg+EYI3xKV7XDyeWKO0aKw+l1JyWCwQOakBUUKxZgquvTJ2IFCwpSJTG0DY4Sn0D7uEytcZIxrwFti3Vj4v6jOyTfxDmwYkMlVo2doPoIB3YQYHSIYDinw24Q9nuBXXZwD/tn9qGJQUO6Yi6h+xJyZEBQB5zmeM5QTWwhGnELoFjqolR9+OZaZVlO5qMieQirKgHPsChsGH33gll9Y4vf/8tjpAGI3RMkAh3ZCVfLz+mIrCM0RF/EQ3T/IXVhoACTd41nNAf+xS+wHfmdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6ZY5ACMuyUpQLU7ZfWCRPgdiyQKhG8NR8yudvtEaAU=;
 b=UQwj+S4BMWADsw6XEviddUOvKma79WQfybx5UJtoMAylF459JJ80bMVA3898bsn5sNsTo3d4LvuznDopvnc/cPaieCFxm4JjlDOxnksIKugrxDYd098EuYGN2KKKVlVB9JwEPzeBPs5CEuYBmDOlNf5f/smG6NWeRqbcvsxuiOuEIG3CUD02/PaeyWsg20fJ9XAXwyiphaw98BmR8XBFQvwSO5SfHtIAurmwFFk6Kpfegv263Thk1NKaoUnOTtxHID6wyN4oYk3ZZMO4nO/IeMaDkJX7t275oUiejuw+qqWk1bMFfsHfOChfFziKyxu0+TXa0IApr5e+PkCwRrdNiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5240.namprd12.prod.outlook.com (2603:10b6:208:319::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Tue, 30 Nov
 2021 20:28:02 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::5897:83b2:a704:7909]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::5897:83b2:a704:7909%8]) with mapi id 15.20.4734.024; Tue, 30 Nov 2021
 20:28:01 +0000
Date: Tue, 30 Nov 2021 16:28:00 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Logan Gunthorpe <logang@deltatee.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
	Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <20211130202800.GE4670@nvidia.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com>
 <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
 <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
 <87v909bf2k.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87v909bf2k.ffs@tglx>
X-ClientProxiedBy: BLAPR03CA0044.namprd03.prod.outlook.com
 (2603:10b6:208:32d::19) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by BLAPR03CA0044.namprd03.prod.outlook.com (2603:10b6:208:32d::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23 via Frontend Transport; Tue, 30 Nov 2021 20:28:01 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1ms9jM-005jFG-3n; Tue, 30 Nov 2021 16:28:00 -0400
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 63537dc7-528d-4a5b-5613-08d9b43fe7f2
X-MS-TrafficTypeDiagnostic: BL1PR12MB5240:
X-Microsoft-Antispam-PRVS: <BL1PR12MB5240EA55F08A1291534E6C52C2679@BL1PR12MB5240.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OAh1PgjjJ7D7KKDTgunpFX7FRJxK3rvNLdVybeOeiLEyRoAzS7zF5tVgJ4gkSIDkDo34Gjv7zS6un+O50GIPTk2rRaxqQlzzoPoWJGzBjFnW0wsNdRiMy/TwMtVOyYLzMAep0x8ryj/VAPwANUK0HkBoBxuCPCmbpNeZfj8IF3vuf5B5ptfuf/8H4ALwLEjwFxhfSG5fPddHoJY/O1bd0VuFBWYF3ktkS2Fk3ItGIrckoo0963cJEipyg9/rycdyOvU3ONaSYHHQkSZQiP881ABrHaf1O4Z1/5ckMsW+XkI5vJQ5JzFyTet9QKFmplHQfpmkDpO5wv/4fT4aaj9TDJRhUv8UVHehuSXaI/jEcAcIHZfrUTn4ePn7rWpGkYOLZf/gEjDevu9hb96SliXAfypsqTDY2TxcT0Uk+YnhAMbN8378oBYeVzTRR08z1i6auZdzf+mx7b7NEQUOErfEw5N8Qmm/bm0WTodHgdqNfx5BeZHetXDyrSqbFBneclL4TsCGaexj9Ml7RLLpeFYS0167utUypmr8DMhrtUorTNV3CBhOmeHaLE1pEX5vuDQHU/JKpcy57Jq2eHg4siRKbmY7rhqmUM1nElD65VZQoXz82XJ5sJxpbcsw48B31ncPL6IyRrsfC+sUtXFuYpEL+na737z7LO52r7e6z6GZZAIMVGy8FMp9qfeDPut4qJSVH6BcmKzVFD9ULSI/fCFqHFc2Ji28I6PXElanp/7kbgU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6916009)(2616005)(4001150100001)(38100700002)(8676002)(53546011)(7416002)(8936002)(508600001)(1076003)(966005)(83380400001)(2906002)(426003)(33656002)(86362001)(9786002)(54906003)(9746002)(36756003)(26005)(186003)(4326008)(5660300002)(66556008)(66476007)(66946007)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?i79AMh5yCjE/aw1aYbeO9EILecIeHP50tYqPFWT4cJoGAqRRDousvpXnh02x?=
 =?us-ascii?Q?oQJhnYEdB7Xx5NzQxMcCi5SaJhhWh0TGVhNO0P8pXM1EXbzl2DioTavzdzR1?=
 =?us-ascii?Q?Bb6n2a8xBFDzQBZHFX19NQwgrx46ZSa7gPQnJqh9mQC39TXV49un12D4qtYF?=
 =?us-ascii?Q?yBdrtDxZ9lEcrUhGWkbIfTmVdWU1m53srtSz5OeQ2If5Anq/hY/8d1+DKj2O?=
 =?us-ascii?Q?CdS8LOsgFI0faiv70j8psDLbF9Keq9nXPxx+Fy4vou4PNmZ19eI90GKjKBLK?=
 =?us-ascii?Q?oCkujlL7CUlk/+Yu3UTSVaCCDGlyJAYsOWHpsCcJ35i3vu1o+a8Ss3mv+TmJ?=
 =?us-ascii?Q?KuIYxHnomJNfV65SeiFsNKn/qw+/dbNtJUs2TWD9C7j2a+suSoJ+DuJOcJXw?=
 =?us-ascii?Q?62oJ7XmxWrw3uPv8368xxWORlgISVr2yIYVvMAgBXAyTL23B0XlYQxbd7GRI?=
 =?us-ascii?Q?rUIU9tN/AOG3n9prkNU7cNWEQiKylYZ/faP7N1UUa72YH5M4XDxFIJlfBGlm?=
 =?us-ascii?Q?7Mg3i8VNyLiMMFhG0qdux+5vyW6H9ybPmnyBrgSrVFzx4YyIuvzv+cA2KH9Z?=
 =?us-ascii?Q?AKIc6NhnOHRDO3T7p1XN+V7qygIp0SjzJPdt+7IKYohle+2dN4+T/A58B2/1?=
 =?us-ascii?Q?h6lAw+qPWCvnBjBXZ1Z8Od4G/Z+6OXrgulZpm3JARYIrIAIDqc8j9Tdx1Yi+?=
 =?us-ascii?Q?BrLRRP5ki8VoRS9E2IK1SKSHspxf+DOd1gloWPk8JZ1km7Xh0rkOejcwpOXA?=
 =?us-ascii?Q?fP7YMYKKYei0sMWjx7ldaoC/vP8TS4JzejbzXHL7MREoGrNXdhRrnfEaKLxE?=
 =?us-ascii?Q?a+G5U+yVxnrxLBeQhKZD+yMCYvCfmAZXbk32rtPtdBBtftuFTcABQXee2MWf?=
 =?us-ascii?Q?5oYJOQCOO7NqQoPurc2mIOSTUQEic0G/y5ld7tbnbXlcexbgwSIzdnXzQVkK?=
 =?us-ascii?Q?tnVUZzP2SwmGFffMQlc/hmhnDx41iJhaD1glTSR7FMPafQPAiGrCTbrXvNIH?=
 =?us-ascii?Q?od9Ma2jXbk3LDEO+0BoOgCSwoJYO3U7H+E9LNzVY39rScJX73sbDdL8hkb41?=
 =?us-ascii?Q?iZLHJspvyHTBSwWVwgd6x68dVMt7OQXe5a+I5bwDIGUvKB69OBHzMMeUHlmn?=
 =?us-ascii?Q?KST+Ei7WlD8R56N28IEvd89dczffgwlyRPu1bycozPbhErBYtzu31KwNcFV+?=
 =?us-ascii?Q?kSi9d3AdCTkMnzvkZ41K0ViacuuOv6F5o8Hr7S7j+jxrdRdNamRv66BuncTf?=
 =?us-ascii?Q?AMq5eXyktQyLeq8j++JDFiBI1P1MWoVpjg0FOAu3UbFcIREhR517KRLC+pU7?=
 =?us-ascii?Q?4u3Y6wLfkUbG9lylaU5Ms9kmd3aXLrmisPlDzHE6JItpBEgd4VXr02NBwU7o?=
 =?us-ascii?Q?fHshWSGq6WToBZle/Yx6XYIgZyUF4ujx/JKKGCRjA0+UrQLMEyW+dUE/3REC?=
 =?us-ascii?Q?B+0P9j0RKELMGmrT9rMdXQpkiTyzADQdUEMo0brk6eg8P2cwUkGFObMsTJ+x?=
 =?us-ascii?Q?yXt11LeU/wCckQstLhjOnQncq5NZUWGV+FWj22u9Wa4i1O+DV/cPPH4QqE3M?=
 =?us-ascii?Q?DuT7jWRMz6UeVYNB3rI=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63537dc7-528d-4a5b-5613-08d9b43fe7f2
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 20:28:01.8487
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ucpqPuptML+MhNc9/6VfMxvzAvM6pnkO+/XxCtjpSbCVwp0jjQoK4ZDjGInrO+95
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5240
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=MhQn51Fv;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.212.76 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
X-Original-From: Jason Gunthorpe <jgg@nvidia.com>
Reply-To: Jason Gunthorpe <jgg@nvidia.com>
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

On Tue, Nov 30, 2021 at 08:48:03PM +0100, Thomas Gleixner wrote:
> Logan,
> 
> On Tue, Nov 30 2021 at 12:21, Logan Gunthorpe wrote:
> > On 2021-11-29 5:29 p.m., Thomas Gleixner wrote:
> >> I'm way too tired to come up with a proper solution for that, but that
> >> PCI_IRQ_VIRTUAL has to die ASAP.
> >
> > I'm willing to volunteer a bit of my time to clean this up, but I'd need
> > a bit more direction on what a proper solution would look like. The MSI
> > domain code is far from well documented nor is it easy to understand.
> 
> Fair enough. I'm struggling with finding time to document that properly.
> 
> I've not yet made my mind up what the best way forward for this is, but
> I have a few ideas which I want to explore deeper.

I may have lost the plot in all of these patches, but I thought the
direction was moving toward the msi_domain_alloc_irqs() approach IDXD
demo'd here:

https://lore.kernel.org/kvm/162164243591.261970.3439987543338120797.stgit@djiang5-desk3.ch.intel.com/

I'd expect all the descriptor handling code in drivers/ntb/msi.c to
get wrapped in an irq_chip instead of inserting a single-use callback
to the pci core code's implementation:

void __pci_write_msi_msg(struct msi_desc *entry, struct msi_msg *msg)
{
        if (entry->write_msi_msg)
                entry->write_msi_msg(entry, entry->write_msi_msg_data);

If this doesn't become an irq_chip what other way is there to properly
program the addr/data pair as drivers/ntb/msi.c is doing?

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211130202800.GE4670%40nvidia.com.
