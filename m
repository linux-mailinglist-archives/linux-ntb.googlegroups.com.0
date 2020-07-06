Return-Path: <linux-ntb+bncBC6IHYV42ILRBKN4RT4AKGQEAJ4CXCI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3166E215798
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Jul 2020 14:50:50 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id g24sf17043321ljl.19
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Jul 2020 05:50:50 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1594039849; cv=pass;
        d=google.com; s=arc-20160816;
        b=J6rPF3NuQfjjE72WVxrSiimeuy8pelWQPkifZqXG/BmFe7v7HKEYicnc2UPUxsxcNI
         Q2D48zyeV9cFCPCLbI5AaAfi3NjoC1K3IBmIyc/ZBM1AWY5ViZbjRr4Zv22l8ywTEtRD
         iJ4qDAOeuF0pC6cGu94Kdl99z/a6jp6Av+uzSdFE+Z1v/0Qbx021p4LhkPnGmri58i0C
         GM+IQZuk4FIY2+IUvWtgD8LQNfAvm7ru/NxLSODNNv+cMIV3Tz07fopkTL09swV2qdzy
         o6Rlb1armgwTyebnMtWIJmLFUC8HtTYH4rtnzJv7zRxOtXItCLh8x5uKOzL79XTxjq3v
         nLVQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=JxvHjKkFwG9DgPdwf43Dc2gHQONsm/YF+jeU2ALtk5s=;
        b=Fj7LcV17Tu9Sq3hAZPSBUmUKKP37Wi/ls4fbvLDkHtkPXNDc1F7L1xxyjMIT0jtKGf
         bYJp9FfcoWXvy1dbp3g+GZDAGZQ4T1fQqrcZwU99DTevP8b0YgLXOrnTR8xzx+axvJPL
         RukUcTeRoIuQmrXYuQX4amHIFmywqmvosCRCw+pKo0j0dauvDtoJisZuQPy9CoPBewjG
         Fzn1gDn2rO4eYUclRRhkljrgd03k/oY0dYfCWwvkC9D/0xZalxSUhdLcOiLyRaiHMUpC
         NzyUsvbHDMUYsnrfPQhO7kyPfPWk/L7OgMU9Xj/P+tn02IPf3xHmg1QWQjhKdW0QdERK
         SBLA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of luis.chamberlain@suse.com designates 62.140.7.102 as permitted sender) smtp.mailfrom=luis.chamberlain@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JxvHjKkFwG9DgPdwf43Dc2gHQONsm/YF+jeU2ALtk5s=;
        b=g5odC5JudyMEy/KzGDT8mBYOy3aq3L1lyV9DmZe7K6x8g79ie42iC6gPYJ8PnSCbQ+
         gVkv980uXQzdO9HzCrApuKBLRHYpz2SkjOinVzOZkcu6ST1ljuvm9ItKC5By1xBxsZkb
         BYbpdRjZcXZZYnYuXOdff+hEkWbT3lzuK/UHnxueuO8D/4HbJzRrAj7Flfy92jRESQO7
         lZRwHTjFiY8JOHuwiXIODJKdD0bOw/JPqTxXm5uSaHLlDLIfE4dNLRzCxH9M8M34nJ5w
         Yk+RD02BJDYMqmYWkhNWdOgaP4itYzO0Z0RElBs2RM5X92VkbA1P1opPdjIzFu1vig6k
         J4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JxvHjKkFwG9DgPdwf43Dc2gHQONsm/YF+jeU2ALtk5s=;
        b=jMlulspc6wp7pOUckCheEuVCs7zU0Mq/e6mBRXTwPa4MaLhMqrG+CmiBnaf5m7KoEH
         SQ1jfJaZ8xPjIM4zMps9t9ToRt8kr4f3xQEqnUmAcE0eWTQldBeHXizc0qxY0uL6YeVu
         1Gz0kUFyETWzxfP/R6DpO3b1DR5lMVI35TLDplixBspglvXj8ZwyZLh/t5T7DvR4yufd
         8iPXB8Agmz6tOBQLU0ZznvaPWyAZQNq2KMbvnlNG7UeVUeYlXH9wXxLT/iSoD/14xwuH
         yceyMGUmVndFeQ4+4E7AmUkFgfhWD6TomzOTYgr3SekKTuaNxHEFsd92P8xKas9KWG2v
         9UcQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533g6eC3cPkntuj9zbHm3lMfnU12c22uPxLuCf6lYjY4xXvM8p+t
	FZa5NK2eR69h0eD/4UOfqPo=
X-Google-Smtp-Source: ABdhPJwig3EssISYUCmxZrqq9kBKXhQs0N91KSvKIJo2eRiCNroIYKujM3ycXZPqcZEC/SJ09+ZTFw==
X-Received: by 2002:a2e:99cf:: with SMTP id l15mr27646163ljj.294.1594039849707;
        Mon, 06 Jul 2020 05:50:49 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:be95:: with SMTP id o143ls1753047lff.0.gmail; Mon, 06
 Jul 2020 05:50:49 -0700 (PDT)
X-Received: by 2002:a19:c8c2:: with SMTP id y185mr30134864lff.52.1594039849157;
        Mon, 06 Jul 2020 05:50:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594039849; cv=pass;
        d=google.com; s=arc-20160816;
        b=uuxOg5FW38n2blbWC333kxZ2NEwWTAIIavmRlrdMe32Ra5H1xpq16QGRcpFVXjsDpB
         ge0n5pMkVmZiYk2ls1Scfk56pMlJitOfpIqtmi1eGtYSJqvVZZDIUNB7smi39cWkOZQ0
         q8rCbeW42BT+OEhCR7Ey2QXbCcYSt6f0+jCiEIogDwW8wj6qFZqJX5kdZngEAMGnSO4U
         eNb8NYdxDdypnLQPCkMEcLrhxdHIDB2REQzeux6x34OgsQe/GMgVY1rSnRc2S0latlNa
         RdmPYCNQDT0qPQ7fY4hsWebGrviHe4zE2GZbco1UazfCy1uEJp8IgBD6/lJSbfurUYqi
         oJSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date;
        bh=5wXx1fomwPRGhWNiBlZVNG4MTyfJX1vHSR2d0J6JKFo=;
        b=STnKjhnLQGGP3/mpys3YWVYS8KUnnI5aeMGHUleh73z3Eq1oWCafHCrReEZxMw/pNK
         KAJEsYQOMGvz8vC4nxAYYUXXJdXjtLLUfKEzZkvKp0A9P4ze/MOcptUqhrmA0q8oeOuo
         Cn4jJeY2ZRHuFrhpBq/15zDE/HIQ5mRa03zivMqX3zy1rTkEveaNZKZtWRSFhwV8FSEl
         6aoYDl/Cl6rAbIXsxCDKEhPCm6xXp6i8LjDD26U7IyovIwXD9azX3zZVmPCkJo6fvBpG
         Z246TjFrBVrpb320bkmAXZoTVThkHZCliMjSZ2vbgATaSSCyb1/ie/hvFa+E131qkTF8
         lEzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of luis.chamberlain@suse.com designates 62.140.7.102 as permitted sender) smtp.mailfrom=luis.chamberlain@suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [62.140.7.102])
        by gmr-mx.google.com with ESMTPS id a15si1095854lfb.3.2020.07.06.05.50.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jul 2020 05:50:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of luis.chamberlain@suse.com designates 62.140.7.102 as permitted sender) client-ip=62.140.7.102;
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2051.outbound.protection.outlook.com [104.47.14.51]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-18-kyQW1u4ePpGd2mFQWuazlQ-1; Mon, 06 Jul 2020 14:50:46 +0200
X-MC-Unique: kyQW1u4ePpGd2mFQWuazlQ-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Av40yiNvxzuZfnHj2Z3K6/vnqpls4rs9Cpef7mhM58i5alcbEDFx73mndTCRtJj2Uo7QwABIYXX4KaqJjsD8dHsUQsOy0e1ACKDXPzMOCU9mJ4wCPeHZniLcZkT8Nd2JMK8tFk9FeN4V6dQ7V0F6/nEFrRSTfMEjjYeGyEETehcZrxVc3SJsXhtk4WgwptoDoOXDRIwzmcwMv0h5X6ZietaMxJ51DicYI0vz+1bLt3Iz6FsdZyX8SYMXClffqhZjJJZ5FgRJHxNnRTMDjoUii5Eb6t1D/dfjsx0kvG/Ny2yF9kiKRTmwsDy5C8x3ONGse8fGWKh2HtJ4gPluA754zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5wXx1fomwPRGhWNiBlZVNG4MTyfJX1vHSR2d0J6JKFo=;
 b=QU1UY3bwjHikX4YFS2tFGGO0aut33fW5MVOJ7M1IQx8bkw8BzVgAuDQYvSB4cycR9VY3FiBBkJm1niIfr3kwuhbPG2lktz0zUkJ1ys73EV6S6Z7vdrXZAXGwGjJxrC+x4oz1D+bu03cPiAUF0YfA6p09Vsg2383Hj+YagODPpQ5e7CZTztdXpSoMhVM9/bFwtkTUQMOT4jvnq/ns2v3882D/SsHWvmPKZBmTG1OIJHdD9YkbrIZ2qG2RlZReT3hm0zfHIubH1M6U4qBmhGimtEc0b+p7TpFOIATMMWFOfjsVE5WLoVA+y39Yg/WFZ+BeM6YtFKMjorF71w7RbI98sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from VI1PR04MB5325.eurprd04.prod.outlook.com (2603:10a6:803:60::14)
 by VI1PR04MB6173.eurprd04.prod.outlook.com (2603:10a6:803:ff::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.23; Mon, 6 Jul
 2020 12:50:45 +0000
Received: from VI1PR04MB5325.eurprd04.prod.outlook.com
 ([fe80::dcff:4fd4:7403:f1b4]) by VI1PR04MB5325.eurprd04.prod.outlook.com
 ([fe80::dcff:4fd4:7403:f1b4%5]) with mapi id 15.20.3153.029; Mon, 6 Jul 2020
 12:50:44 +0000
Date: Mon, 6 Jul 2020 12:50:36 +0000
From: Luis Chamberlain <mcgrof@suse.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
	dmaengine@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	linux-iio@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org, Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-nvdimm@lists.01.org, linux-usb@vger.kernel.org,
	Eli Billauer <eli.billauer@gmail.com>
Subject: Re: [PATCH 02/17] Documentation/driver-api: firmware/built-in-fw:
 drop doubled word
Message-ID: <20200706125036.llvg2mgmr7a4ydni@ergon.do-not-panic.com>
References: <20200704034502.17199-1-rdunlap@infradead.org>
 <20200704034502.17199-3-rdunlap@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200704034502.17199-3-rdunlap@infradead.org>
X-ClientProxiedBy: BY3PR05CA0028.namprd05.prod.outlook.com
 (2603:10b6:a03:254::33) To VI1PR04MB5325.eurprd04.prod.outlook.com
 (2603:10a6:803:60::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ergon.do-not-panic.com (178.128.74.135) by BY3PR05CA0028.namprd05.prod.outlook.com (2603:10b6:a03:254::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.8 via Frontend Transport; Mon, 6 Jul 2020 12:50:44 +0000
Received: by ergon.do-not-panic.com (Postfix, from userid 1000)	id EC0FEA2856; Mon,  6 Jul 2020 12:50:36 +0000 (UTC)
X-Originating-IP: [178.128.74.135]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 743f4daf-1c58-4b23-fd3d-08d821ab327d
X-MS-TrafficTypeDiagnostic: VI1PR04MB6173:
X-Microsoft-Antispam-PRVS: <VI1PR04MB6173A4766C59D95B10831F90F0690@VI1PR04MB6173.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-Forefront-PRVS: 04569283F9
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8QKd0IN2aSMYsWoYj52PX5PysF/dW//lGCEbeH0Fi5uGqHDI6tYacudyeB5xMRDbCpnHVPYyAZevMDiwx0zb8lQ1EhKJjoyFBJ/17Ur4sZt3MsE0heFvlA9y2sT9UM5vD0uf+WU3xxOi5IcUtOXpt+1FjX5EC/7xE5jj4o1CSlkBxb3jHh4dgrofUhiT+bNZy4C6X2Y8+ikp9XHHe23U4aRzsuwjgaJn5LS4j1zhSbuPCrMEXFFEcUKtyZ94tlJbY1V8vTIAMqlYlVuqUCJ51/To+dWmHARUDryp43DTyn2vnmUS/gsW4yoUHs/gCJuEAKqdlI6bZPktcUO3TPq5xg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5325.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(396003)(39860400002)(376002)(136003)(366004)(346002)(6916009)(9686003)(52116002)(186003)(7416002)(42186006)(316002)(6266002)(4326008)(8936002)(26005)(54906003)(8676002)(478600001)(4744005)(66556008)(66476007)(66946007)(2906002)(1076003)(5660300002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: Mb8GQRRldTCnyvM8Adi7uHnOb037Eld+uNceQL9ruoX6sJ5NLsKMj3JTCl2aKNTIuUCRTMAH1KuH0/buN08WyQUWU+lBv28VgI6mf5uSMtWrNSGeWnXjl/fMoZ7wZM24AxEVJFFKFAF0FN9k3NOyJoITaJ0SQy7GnWIjEA/+GkSWZ8jrkwAHNv05ZQbI8lrKN0HFhg712cSVD1iCGah2UELlj6u6twBmOxuz0vBFhapWZZV7YIP7UOchbc6z671YKHT3cu4gQ7BmmbmyMNlOMcU4mudyCF+wQ5CNXFIToczMgOQF280BZ0xbFVoPfAJJVy8rRTKoOcA/Pi2CorVhtTZV4jhRB7b6d+neiDBDiZZ89ZALZibx+/spVUSfgaYoFG7sLxkzzzX5PYvVk9NkSFonqYb1Tu8Ce+zbzeHj+w3k04XUBGPAs/HyvRpdguixT9WUjGrQZFemEAk7nGLItviw9y0f2uvJBXacylqloNam879Wlq+HJHNJuU2TiZcN
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 743f4daf-1c58-4b23-fd3d-08d821ab327d
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5325.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2020 12:50:44.8174
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZL/MSPQ7vF6G817vDWiCPHaUz/7g1QBwypX6CWbRGwuxqbC0IzBzB/o11VDOQnRsD+XcmWon58h2h0S4bSPOYh9U6QTaSZC0p+rcOYFddDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6173
X-Original-Sender: mcgrof@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of
 luis.chamberlain@suse.com designates 62.140.7.102 as permitted sender) smtp.mailfrom=luis.chamberlain@suse.com
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

On Fri, Jul 03, 2020 at 08:44:47PM -0700, Randy Dunlap wrote:
> Drop the doubled word "for".
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org
> Cc: Luis Chamberlain <mcgrof@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

For all the firmware patches you sent:

Acked-by: Luis Chamberlain <mcgrof@kernel.org>

  Luis

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200706125036.llvg2mgmr7a4ydni%40ergon.do-not-panic.com.
