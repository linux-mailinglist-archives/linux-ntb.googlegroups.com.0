Return-Path: <linux-ntb+bncBC47F5EI6IFBBDV24SOAMGQEEAEAKAY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C86464C176
	for <lists+linux-ntb@lfdr.de>; Wed, 14 Dec 2022 01:47:11 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id r6-20020adfbb06000000b002455227c5c5sf3240183wrg.20
        for <lists+linux-ntb@lfdr.de>; Tue, 13 Dec 2022 16:47:11 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1670978831; cv=pass;
        d=google.com; s=arc-20160816;
        b=NNq85ue/ZBaxuNHKc0N0bDuijqszzt1G9acivSaF+akkLZH5pjd6Ysngq43KTYepF+
         +H94A0SWwkqv9D/sIrtfRkCyaZXWD77+GSQ8ZWO8asdQKcaYzewR32jLFV6lmcR9GWJP
         YJBA7bu0h1KqvpOi0pxIe0AiFc4HEFhsijomYF6QIc789cSB5ZSRRmcoB8jy4yiA21qA
         kbAVOuXGkBbPb6UaoAZBDrm6prpsHUk8yrM7iIl3GwyuXpoCVAugcEBxouc6th4VcZhQ
         zIfntGUr/OTDBnHQjLsYPyJFBWjvtqMrN5Mx09vhE4Y9Ld6+KUadZYVo3s5mIIfOLjyk
         TcRw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ffhUDxsyxxKj5ahj40pYCffI+Uekfhi2wJa/sClNans=;
        b=nmkNn0TQMXZlvYVDqhIdizjF+NJsOPnLN1vbsGyC8XVu3M3Y06kPZraKjLbHFBqU6K
         9As+q8b60KQDmb21L+KR7F+0GGuEMysPAK3AZ1a4IlNOWsdEEBw9kVAaiQgNh1nz4Ew1
         DoJ0W1f+oeomfbEVEfvGjT2S8LC89EXW34CD0zFm3waGOCFiI28mAZYs4XOk0Z5Muoqw
         AoZqIQwJNLRGhQk1nkOZJUuQhsn8x5DfEFNNkLYhMJbOPDrz9XJL8Um7XQO3S+r+q9+Q
         n+QWEqY5GpBkX48HJiU4o/3elw2HJQxwkL9UPXDJbW+g09uuqXcPRk5q4vG4qg//g+ju
         bLDg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=khW1zFAb;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of frank.li@nxp.com designates 40.107.15.72 as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ffhUDxsyxxKj5ahj40pYCffI+Uekfhi2wJa/sClNans=;
        b=Ukpc5IAbiQ8juhDHXfa9Qc7gER/nhPvwQIH85L6uWJlHzk6GdOBXuWvMUVPBSYty2b
         Oi3IJ8SpOj/+8+ghqYzVRu4N2j353VlD+o+MdNsiJs+LBf2a3T72wd4Z77KtJvuDZwqu
         aveQwhiyLTWUpukhBUj9p+CkAQ08PbOltSTVWWI8sb11gS40eS5GRQGVsqreDYQe0Hkh
         aQfXp3PC9ZelNi1vBRZBghcgjqE4LnKRPiHy4+wDjCKODgoDr/e2ChmYkkDFm+Jytz27
         96MrUSVWBNMPi9qPUWHpSFYYp+BNNeJ3s7bmcR6nFnHt4pKaWSW0xgusrXyxjJAAMxMF
         gdKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ffhUDxsyxxKj5ahj40pYCffI+Uekfhi2wJa/sClNans=;
        b=doDE0Y+P2Fg2c7AArnJtdArB1ZCSM2GojCYHILV7fqhQYRHflB5jlQH4kpxMa8LRzp
         iA/SKWE34g5jfYOeS1S+hb6kDtY7L2AP4xyPrf7hZrdA6NAtuJo+klhgVqYseWYKG8fy
         vfMAlbXSxDguxzXr0xBJx42Cy7Jpf/dE9tQu/dp67/GcPb+uBo/lDlJW0PcRchnY4sQY
         /t+UqhOsFl8iEpshCuy4a6bmaAPWNJz3oxjHCrffkp6ijk0wIREZ9orjUWeUyZXHoWac
         iJuMRFeb2xU4frXGmvzIJNJZ8I8CYmOK1JbFvUP2Kb1HbcCEZebSe5hM9FvkQcrCMn7M
         WGRA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANoB5pkHSElIJ3HgV0aiIImgBG02R0i2mynNC255dE/OUPTkWbyDNohq
	g+Tln/0kgE88bWs4zygsbUs=
X-Google-Smtp-Source: AA0mqf62Pjn3zW+YD5qMCbWiQALCTtepopECYEdsuWbC+5acIQVc/1yuEhVa9PXQhRznQdtQxoLEYg==
X-Received: by 2002:a5d:624d:0:b0:24d:acff:8a69 with SMTP id m13-20020a5d624d000000b0024dacff8a69mr489722wrv.33.1670978830854;
        Tue, 13 Dec 2022 16:47:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:e909:0:b0:3c6:efd6:9cd8 with SMTP id q9-20020a1ce909000000b003c6efd69cd8ls11745225wmc.0.-pod-control-gmail;
 Tue, 13 Dec 2022 16:47:09 -0800 (PST)
X-Received: by 2002:a05:600c:1d09:b0:3cf:a39f:eb31 with SMTP id l9-20020a05600c1d0900b003cfa39feb31mr16686100wms.33.1670978829859;
        Tue, 13 Dec 2022 16:47:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670978829; cv=pass;
        d=google.com; s=arc-20160816;
        b=UJbcbl/MZ3Svrr7qkRqqLK6qriVwDwoYNdUbXia3kKGCV55UnUlIaZTuzYGOJlmlux
         KfsNPxy1HSuI/UmT2cxoF/glnG0KA/njQMTnNFHs7FPRjWtpHhMi50BCgai/6l1AJxns
         +BhPBfUXtp9SE2OBS2p4IJZq8hAZbPvnoD3Wf7/DduQKlomt/k3a/jqZ9qVUOVjyYJ4C
         I5vtPxq2Yz5i6ToAEBSgZkIm8KbFS/Y8nTB/Xb0nBeAE+tqkmLr5Ck/XBbuiD+kVu4TT
         +SJ9GpHnMpG+Rqd+zxmq+Uc3H/Q8lmZIB9EJZ6HCfbIk7XD6dzp3EtxFxH9pfn4Idz1v
         ZCew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=hokOnp9Xrga+CB1ctwSW3btP5kdmhtG9zyikTKqpnU0=;
        b=JVfjcWdbCPU5cmAXLON77Xtdq5vQpO7ItnM13E5UAebv2YQTV0IDuXo2nOkO+CuCrd
         QWgj4KUqj32HMlqkq+3Saqs9lDWna/QESbBOOtdcqLwATVDJXHX6pY8o9PjDEzObj3aL
         p6OPzCrZFsJN2yEakqDrOkki9gdp8Am/In1bNzz2sJpvPObVC2U0eaA+lDl56RR2xQgo
         tb/EUxuP1JuEne76Pp/CLHPWx9WMwHmTuIqI7xXmh+sSHMoiQxSF1jzA3QCmM5eBVm0H
         EpbHJjYO5y4T+6OT1s9ieBv8qoVyrtxGjZjpUGVodbALgSuPcY1W9T+VCLbqAGwV1Gt5
         HRaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=khW1zFAb;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of frank.li@nxp.com designates 40.107.15.72 as permitted sender) smtp.mailfrom=frank.li@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2072.outbound.protection.outlook.com. [40.107.15.72])
        by gmr-mx.google.com with ESMTPS id 4-20020a05600c22c400b003d2051f87ffsi19269wmg.2.2022.12.13.16.47.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Dec 2022 16:47:09 -0800 (PST)
Received-SPF: pass (google.com: domain of frank.li@nxp.com designates 40.107.15.72 as permitted sender) client-ip=40.107.15.72;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HdHEYoW6aKS4m3ioBwqM63c/hn10KShRllaL0LhqeHTkCAGkOZbZh+75FaUk+zsr8/TQjb+m+sCLvW3PK3auBsBtsqKdsDpTIAu3eQG8hf/+3+e13M/ELukPi2MUTiZz4Z7O5H+hnjzKJkji1ggj50NWzgqCcLqsYpQAE5Lfe6H4312M66zSp/kARtnMkPqXj5kP3n2E1z/hFY8QIM2d3NdOwEzwLKK/O1ZuCFnYYcHLvzbEfAvwBeObRNRFdHKgOLJbA+f5aoNWlmsoIpw3xSAjmB5cxTMqSDvuY0NZH7xK6iiyt4HEfzdSI8t/bPLaaGSgKzlgIPK+bXOUJGWzRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hokOnp9Xrga+CB1ctwSW3btP5kdmhtG9zyikTKqpnU0=;
 b=Thxop+pa7wVjDvWhFa1yBQKDqZkS2ZVjEURpeKBisJHRLcbnJfR6K+ftwweGSSPCF8zj+V9e25/3QWrBBraS2dabFg8tY1QyERlzdIw27Hq3eWPKBIe9QQfqOSpzKs1ZxEgDt0djMpweYmM9Ko5jJaAhcAcbgjE2oisAAK0HUhkq/l8VfVU2ycBFDLqvefuVDPZFvPoOw8qPa6NFS47xx9A4/5q12+4BpiN330baaLUgTvj/l3WuWj4owiXsrkRMy4IZrEEDXiVav3cMIiW8xVM2NFCHrLGUhT9JrXYhNzHwuM+IPeFpJAcGl7Juo2ernSH2gtd+jwebIoMajg+RWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from HE1PR0401MB2331.eurprd04.prod.outlook.com (2603:10a6:3:24::22)
 by AM0PR04MB6803.eurprd04.prod.outlook.com (2603:10a6:208:187::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 14 Dec
 2022 00:47:08 +0000
Received: from HE1PR0401MB2331.eurprd04.prod.outlook.com
 ([fe80::203a:e5da:a4a:7663]) by HE1PR0401MB2331.eurprd04.prod.outlook.com
 ([fe80::203a:e5da:a4a:7663%12]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 00:47:08 +0000
From: Frank Li <frank.li@nxp.com>
To: "bjorn@helgaas.com" <bjorn@helgaas.com>, Zhi Li <lznuaa@gmail.com>
CC: Bjorn Helgaas <helgaas@kernel.org>, "allenbh@gmail.com"
	<allenbh@gmail.com>, "dave.jiang@intel.com" <dave.jiang@intel.com>,
	"gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>, Hongxing Zhu
	<hongxing.zhu@nxp.com>, "jdmason@kudzu.us" <jdmason@kudzu.us>,
	"jingoohan1@gmail.com" <jingoohan1@gmail.com>, "kishon@kernel.org"
	<kishon@kernel.org>, "kw@linux.com" <kw@linux.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>
Subject: RE: [EXT] Re: [PATCH v2 3/4] PCI: endpoint: Support NTB transfer
 between RC and EP
Thread-Topic: [EXT] Re: [PATCH v2 3/4] PCI: endpoint: Support NTB transfer
 between RC and EP
Thread-Index: AQHYKAio+bOIJcDpcUqpzZv3HaVt4K5uUGgAgAACZICAAAM/AIAABKFQ
Date: Wed, 14 Dec 2022 00:47:07 +0000
Message-ID: <HE1PR0401MB233104FC6C4D79D44BA96C3788E09@HE1PR0401MB2331.eurprd04.prod.outlook.com>
References: <20220222162355.32369-4-Frank.Li@nxp.com>
 <20221214000848.GA221546@bhelgaas>
 <CAHrpEqSGySHDET3YPu3czzoMBmCRJsgGgU4s3GWWbtruFLVHaA@mail.gmail.com>
 <CABhMZUXcTst3F1jvpa6ijWgVDnX4k-s8c3m=zBoaEiQaj_Xu1w@mail.gmail.com>
In-Reply-To: <CABhMZUXcTst3F1jvpa6ijWgVDnX4k-s8c3m=zBoaEiQaj_Xu1w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: HE1PR0401MB2331:EE_|AM0PR04MB6803:EE_
x-ms-office365-filtering-correlation-id: bf6e9677-c687-4a69-84e6-08dadd6cba6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: irQZs3Xl1qUT9VX+fGORWihRczqtuRcchFdCW1w5LRQ88gH1I80KQPHFZLhsY/T96HHj7P0YOa7q0wok4pI60wmNF01VPRf2vO5XXFipfjfYqnvlrHwUtatsGKGcn0qTYcJuD7OpBK4WncOAfjDh6Rswf91f+f89PtpYql3Cso4a9ChmGcszTUjwJkOSvPihO8PAXLQ09R6SbuYgdNUkNFMSKuz3XpFplw7DGmF6LoPfXfpHrh0eOfRXzpBD/K69fiAIHswo/j0MkYqdD1pQJCtW7C8aG0oXpSGe303xvdP6JlKc7Ba37Iltyz58ODdhqIr1wBCg5KDjDLy1J49hhkwOAHXa0MRgCELtvm5a7oEqg6fzBgsAXJWp97pPZfUP0nYMNg0HOegETIBlfZhMG9ofEfyfclnkxwvbIZVR42TcBUGtYlJg2EjyYEZKd0Wdivk5s+122SI5F0hsWxW3WIR6/+m0vCKjASYrQj6yoEp8rCtG7UCQbuXrTw2nk6LxX879ZO1rG7XqAdIPT6yXonJLNuoi970gFWu2QHl9ER5YyT+VIYMr8qjf74Z2tI1NjOmBHGd9PHvGSNk6FebXz0LufmicqWAurfO2VwlEz52MltU0rKEl1hpbQcX8R4xoOIpDo6E3L8HxYpJ/VgEGmkEEQL4QKm+8L9MJhElzqdQwbB5iz29/HOgULmkisN+O
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR0401MB2331.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(366004)(346002)(136003)(39860400002)(451199015)(110136005)(8676002)(41300700001)(4326008)(8936002)(316002)(66946007)(86362001)(7696005)(52536014)(26005)(53546011)(55236004)(64756008)(76116006)(66476007)(478600001)(66446008)(66556008)(83380400001)(122000001)(38070700005)(55016003)(71200400001)(186003)(6506007)(38100700002)(33656002)(9686003)(54906003)(2906002)(7416002)(5660300002)(44832011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QW1rK0FIZlJKRnkrbkxpd1NCNjhxQ3E2VzhvZk50RFFEamV1V0kzY0tTMlVV?=
 =?utf-8?B?WmxzWVdndEpGNHZQNU1EMFJqWmNRMHcrVWR3c2RsYlQxOHB2U0hVd1FrblJh?=
 =?utf-8?B?SkF5ejdwSjI3U0VNK2tkSUN6azhRdlBDay84aDhMMGFWVVI3UVRSVzQ3L1Bo?=
 =?utf-8?B?VXBzZDd1OXM5Y3Q5b2Zsajk4Q05KMjZNK3FibitHYllqVWtPY3dSTkxRdGwx?=
 =?utf-8?B?QzhNSFRsOHlUZFdSYWpyTWh1cXNhVmZNN1JNQURzRENEeDVVNDNEcXhCMnJB?=
 =?utf-8?B?SE1RVzVVTHYrRVQzbmFlZHJmNzRwdHBwZ1NTeWJYcVJLTjczOThlZXZNUXRs?=
 =?utf-8?B?V2RUaklLd0c5UVFmRkl0YTM0Qm1mR08vRlJmOUFxQWh5MFJXUmNYajRJM1k1?=
 =?utf-8?B?R0cyZ2FYNldtc3lqdnYvc2FaSUpUa01LQU55V2E4NTlaK25uMmtyRS9jbzJx?=
 =?utf-8?B?UFVNMTl2VkJNQzV5S1NmVFlVMytvRkVTQ1A5YjAyWXViMVNwRndOYzlKVmRa?=
 =?utf-8?B?M0FWelpwWU5CbURIaFlBL3FoU0xtelhjVmpJZXBQVEVYWkdDV0hVdEVDT3hi?=
 =?utf-8?B?bVJKSTZ1blNoQndoYTRUVG1rK2g2R2xyUW5PMzc2cTJaa2ltRGZUNjJ6Qmxq?=
 =?utf-8?B?UGFrekNtSTVodWdhYW9xd25TSTZwQUVXK1kwVm1mT0U4dVh3d2FFcjNYSFJo?=
 =?utf-8?B?UTk3MzhYY1pJL0pzZjZJak1WRGJaSEphMFQ3Sjl2b1hkSjdWY1BlMUxEY1Ur?=
 =?utf-8?B?c1Y4eGE0aEFVTXFQNzM5Vm9SUjltUDNTV2QwV2JlVEttRmxYVWlBSDVkNzBy?=
 =?utf-8?B?cWVBblBvVlJCRUpMVCt3RFVlYlFqSllDZmk0Rkl2WjBrSDhaUFVGS0RSUnhz?=
 =?utf-8?B?K0pWVlBEQWV6UEtHQzhOUXNLMzdxU1dJcCtsNHBheHI4cEN3WGt6Tk1uYXhJ?=
 =?utf-8?B?NUNER2dkbWV0dVJBb1JsVkw2L3ZxaUFmaGxFcFVDNkwyVkIwYUVRbkMwajdS?=
 =?utf-8?B?akQyNS8vakNYUkxyQ2NML1ZmSnVONktSU00vNDFpOFJXNzhPOURGSEhOVlM5?=
 =?utf-8?B?Y1hmdHIzMkpSeXFZVGpJSTBaU29idFdOQUdscStmN0dpYlNUY0c2L1hLejZD?=
 =?utf-8?B?NTdlRHV0OXhHcDFSTFF0M01hd2lJSHJoZitNYzRPMk5JS0MvNmY1b2Z4WjNY?=
 =?utf-8?B?cXZ6aVU2VEwwUlNnVVVZaU1HaHFhbmVjeFR3WmxpbWhzZnB0eUN0WGxpSXZC?=
 =?utf-8?B?QlVSUWhMKzkvRUdoSmlmcWhMTWZpN1Z5T2h4M1JtblVxcDdQa1NmaXhaN25s?=
 =?utf-8?B?OCtQVklMTHB4alZ6LzVsZzJYUWZ0V3YyVzQwYTZ6YlFPZXpOSDZ6VmlENjFh?=
 =?utf-8?B?TEQvTjI0c1k4elVBYjVEaWpyS29EQVQ4TjBmWnhrYVVkeXA1L3FNTTFQZlFG?=
 =?utf-8?B?bkZlN3l4SU94L0k5MEF4M2E2eitMWFgxZlpSVEJaLzYzSVZkQWRBaEpPeDZF?=
 =?utf-8?B?NGR4bTVOd0NCcmNuV29sRnF2Q1hNRzFIckJoSnc0K0Y5V2FQc3daNXErWTYr?=
 =?utf-8?B?YkNaRGZaekZBL0dqWUpwZldRckNzQk5GOHIvdlF0Y0FOcGYySDlvcVY4ZE1n?=
 =?utf-8?B?cHBucFVaejB1NWFJazBDUXhFZHBDZFU1NFpjMmMrMnRHc3FVTi9lTlY3VzBY?=
 =?utf-8?B?SmtVak9FS3RjNjhxQnRTMFlNakNDTEhCb3ZDekFWM1cza1ZjaGVDeUZZemdU?=
 =?utf-8?B?bWNSTUNsVkk3QjcrN0xYRlU4MVhta3MxYnVFOW96ZFV0QTZpWGxYVEVIRVF2?=
 =?utf-8?B?U2tkQUdYYkE2SEZPT0lvVjdFZFFlSnRnS0RWU1kzeUhWL2p1UEZIaGRxOVJP?=
 =?utf-8?B?d2MzWlRqTXVyN2hnY09yVWRqc3E5MWZ0eURpNzh5Zng3L21jNm9oandteW5n?=
 =?utf-8?B?aURTWjdicVkzNURSd0NEUnJpRTlhOHZ5TVV3aWJPbGZvU1RLbmRsUTgxYXpy?=
 =?utf-8?B?ZktGNWxqaEVsOHJBcEYvTy9nWnQ1RWI3Q0FYSS9pQ0RFN2hMLzR1bFNKN0Ew?=
 =?utf-8?B?ZG4yLzYwSC9udFpWZ3FyOG0vRVRocmdqb1ZlV2gwd1prc2lwQlUvNjZVTkto?=
 =?utf-8?Q?Pfes=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0401MB2331.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf6e9677-c687-4a69-84e6-08dadd6cba6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 00:47:07.9849
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wy2YbIOBaLKvWZ0XPNGwyv/uC7Mwrf1tGzdsDwjqBrvKGHWkxwtVp5MnXIHhTPgIs+RTlp0VWFmXICEPhYp0Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6803
X-Original-Sender: frank.li@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=khW1zFAb;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of frank.li@nxp.com
 designates 40.107.15.72 as permitted sender) smtp.mailfrom=frank.li@nxp.com;
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



> -----Original Message-----
> From: Bjorn Helgaas <bjorn.helgaas@gmail.com>
> Sent: Tuesday, December 13, 2022 6:29 PM
> To: Zhi Li <lznuaa@gmail.com>
> Cc: Bjorn Helgaas <helgaas@kernel.org>; Frank Li <frank.li@nxp.com>;
> allenbh@gmail.com; dave.jiang@intel.com;
> gustavo.pimentel@synopsys.com; Hongxing Zhu <hongxing.zhu@nxp.com>;
> jdmason@kudzu.us; jingoohan1@gmail.com; kishon@kernel.org;
> kw@linux.com; linux-ntb@googlegroups.com; linux-pci@vger.kernel.org;
> lorenzo.pieralisi@arm.com
> Subject: [EXT] Re: [PATCH v2 3/4] PCI: endpoint: Support NTB transfer
> between RC and EP
> 
> Caution: EXT Email
> 
> On Tue, Dec 13, 2022 at 6:17 PM Zhi Li <lznuaa@gmail.com> wrote:
> > On Tue, Dec 13, 2022 at 6:08 PM Bjorn Helgaas <helgaas@kernel.org>
> wrote:
> >> On Tue, Feb 22, 2022 at 10:23:54AM -0600, Frank Li wrote:
> >>
> >> > + * +--------------------------------------------------+ Base
> >> > + * |                                                  |
> >> > + * |                                                  |
> >> > + * |                                                  |
> >> > + * |          Common Control Register                 |
> >> > + * |                                                  |
> >> > + * |                                                  |
> >> > + * |                                                  |
> >> > + * +-----------------------+--------------------------+ Base+span_offset
> >> > + * |                       |                          |
> >> > + * |    Peer Span Space    |    Span Space            |
> >> > + * |                       |                          |
> >> > + * |                       |                          |
> >> > + * +-----------------------+--------------------------+ Base+span_offset
> >> > + * |                       |                          |     +span_count * 4
> >> > + * |                       |                          |
> >> > + * |     Span Space        |   Peer Span Space        |
> >> > + * |                       |                          |
> >> > + * +-----------------------+--------------------------+
> >>
> >> Are these comments supposed to say *spad*, i.e., scratchpad space,
> >> instead of "span", to correspond with spad_offset and spad_count
> >> below?
> >
> > Strange, I received some of your comments on the very old patches.
> 
> What's strange about it?  I went to the trouble to look up the patch
> that introduced the thing I'm asking about.  I sent the email a few
> minutes ago.  The question still applies to the current tree.

Okay, I doesn't realized you are talking about current tree also. 
Let me send patch to fix this soon.

Best regards
Frank Li

> 
> Please use plain text email on the Linux mailing lists.
> 
> Bjorn

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/HE1PR0401MB233104FC6C4D79D44BA96C3788E09%40HE1PR0401MB2331.eurprd04.prod.outlook.com.
