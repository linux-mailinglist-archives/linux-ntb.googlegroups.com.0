Return-Path: <linux-ntb+bncBAABBLF4YD5QKGQEVWLMKVI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1295B279E5D
	for <lists+linux-ntb@lfdr.de>; Sun, 27 Sep 2020 07:07:57 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id 1sf907358lfq.18
        for <lists+linux-ntb@lfdr.de>; Sat, 26 Sep 2020 22:07:57 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1601183276; cv=pass;
        d=google.com; s=arc-20160816;
        b=LiCzSAQViY6fHJApFKppeG9H7hUzBpmQ+r/lIFyNyQba0EU7KpH0HIvaNaznwGl2ir
         cK0ZGVp24+Is//jAIjlTSpMdPO/9JmwMhj4fiFyIKoVN/xfLaYyvKGaiMRdT+88kn0Qm
         sCTAKAXncQ/0BObWzs3CToDsv81yULKCmydXeZcHiSTMnn+08QHqirvmv04DLIPZ99zd
         Wq7TScN1sqozLgOG56Hbn97DKXGMOp34vwPxCHlonUHZfZZSzJSpmomSGezNV28HskJX
         BSAAvagntam2aYyNSxvJJkZt4ySOVxl14FAzExDhxx0NIPn3cwPlDFJF5hZ7fEOaSA5c
         KzRw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=rNF6gg6LB0AB3SGMhcT7gm6D35wIssd23RBMJCbIcHU=;
        b=mUieFci1F7BHat0J+LKfD1EmXQDpW95FMZri+etV6AwFvM5gYCzZWIxwn9I9Sp0Es8
         oRrFEYY6r88oyMD55D1HyQhrOu3/idhdXmoKXLqj41wifiUuCEGWbRBJUeGziR8TbxsV
         eSLWl6Fq6cMh7D3DmGq54zmtV2JbG1BaJlDAzzeWfNZZKqehKbf1EAh9H8ALzAHF1HYm
         Ar/SLk9gNT9nWGbb9jSDbrfDyx6OHRwVaqFE7/TTbdnzAz+Jo9H8wRTUySuopBLjmlQX
         KSJ4gUTFWGgwGvagnwkH/fo4QnvQ6f19euqFR9gjMZvgMQeZHAwRUaTwclxh7OL3R0sp
         /XFw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=ndMvVrrr;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of sherry.sun@nxp.com designates 40.107.1.62 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rNF6gg6LB0AB3SGMhcT7gm6D35wIssd23RBMJCbIcHU=;
        b=XHV9DelUC36TT74N9MUwBKRb7qNB59wu5WCSR7m/j2tqsj+fBymwhQZx3KQQdgUYC+
         Mnab2RqfBICo3PytIGSQpGhd+C8uIBlLE9DxFAN9KWu1jngDRUVBeJPMkFkuWAuCrWIo
         Zu3ishZYj6qRz2P/34T66YWomKxzgWGWwpcrFnoBm11FTlHKgO1PxhEXQZFuLPK5BxmJ
         YAcplzVEOoZ+gN7YQIFd3MSJdctm5/xSwYT7aotq9+pvtXhzU0Nq1xwoIdsLT3V71gHS
         j+cI3zGA/ajMb5K59ZHB3BMo5IxR+TxJKWJVXCftJ7T2h4iqXZ0UFfAJNa1uRwK8smyb
         B45Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rNF6gg6LB0AB3SGMhcT7gm6D35wIssd23RBMJCbIcHU=;
        b=csLZ3AMMTwib3t2BJtAYpAoXcUa7ZvD6ilqPJ/3lsDWJfO9BrIreOIambtq/vcS41M
         ms+vvSrtGkLtekyc5MxYf7fM0UuCPmAR0veLHL2oAEZ2/7qI0h5o5HCwMkLHKElmj+CO
         cNyLGX+qdPbNl/llMG6uFQWKR9GF88PBe1rJ2yq9dUMl0Ti8aMoXgZffa+KAMr0QvCaj
         yvF5mblAtAlyORqzC3+MPIUmTfVW16+R30JgfGmv9VimKOUJGY2dh36xhxikxjV+uv95
         Ojw1S9VfbwVp9fW+1Bm2OQGrq6lvojL+cTcENKfPc0zf1s2NG9/ZLqP2Iz8stMoNj4My
         sm5Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531PcmnirjvzwebaJFKjY/6asZGrIVKPH20/omp0SCCt6kB0/qIv
	s9xfZ2zGTcpyJtd6sd/ZMLU=
X-Google-Smtp-Source: ABdhPJxMNIRUp9b6NfvlgPdlCRJTOofrfJFwp+1yENkgtku+W9Ytxg/zWtwZDE5YGt8a8NgHPv+LGw==
X-Received: by 2002:a2e:b5b9:: with SMTP id f25mr3673050ljn.61.1601183276576;
        Sat, 26 Sep 2020 22:07:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:7e02:: with SMTP id z2ls813489ljc.2.gmail; Sat, 26 Sep
 2020 22:07:55 -0700 (PDT)
X-Received: by 2002:a2e:900e:: with SMTP id h14mr3486703ljg.103.1601183275680;
        Sat, 26 Sep 2020 22:07:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601183275; cv=pass;
        d=google.com; s=arc-20160816;
        b=hHd7qlG/HO1WKvo2QtO5ZrBqm1t+kEXA5qfm5my19Q1akQa/YzAvKYUpwCELPpA42X
         GkY9itZLaun4rPGMY0DaS1ZkIU/N4qeRKiklADXKJuziKK7yzs0/q9qzM2BFt8GB6SDe
         EdmIw3JWFFadwF6jknjfk4wo1FvknlhpKJHU7lf6q7/tuS26eSM6E/oc6O6VlC6OgbRm
         Yu3q+lYfLZSNGp0ZnYiEC8nY6nTxga1v9g+bWPyxGKW7sziyQM1kxAvl0St2LUc3A2gJ
         AtA10aVN5Y9gzcvgV/eVSyt6ebWMXdMQMArFuvf9z1mXRyJp6CmubSDdE0j6UCT1WqD/
         UVgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=OXgmCYDWyeH8w8zhWl5uJvVLoWijTHcslnY8W4Q8gV8=;
        b=WG3dDlrHomztFBD5a94qlmRCPJNwGrXloZnhAEBYmiLn02QU3UecpyXeVON1OB4SZ5
         zd1B5d/GmGXubY9w8BOWpGgTSm1AXOGS405b2BOLnuudAbyKeqNyTLifWRtsJd/YBcZy
         QTZkDUKz7Uiqwstaj0C2xcfABNxqx7xRXRVXCPps8iQePqw3hwrvMQyHu6NoYvB5nQvY
         klYyIoRFWIusxBVi+ecxd8m8qPI7/oEtF1ZL0MqttwGZQQlciFUmVpQouURH1wAQA0L5
         bh3Rmg/eIZmMhCf+lqsQUg1Rd4hr8/gy4DiiIahUBCwaHozq6qBkgqRRCFT8VhuBhR20
         pDeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=ndMvVrrr;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of sherry.sun@nxp.com designates 40.107.1.62 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR02-HE1-obe.outbound.protection.outlook.com (mail-eopbgr10062.outbound.protection.outlook.com. [40.107.1.62])
        by gmr-mx.google.com with ESMTPS id h22si83499ljh.7.2020.09.26.22.07.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Sep 2020 22:07:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sherry.sun@nxp.com designates 40.107.1.62 as permitted sender) client-ip=40.107.1.62;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlQt0eOVkm0/SMTCEM62MJhtsSLS02DuHqzPQ4UlK6rxYF38T2v+vj6BwCp3opzC2wuzIgYjqXY+lwzscq2Sk8lSLn67lPU7GDsb+ugpfeCbLRsAjDqVQFh+aMdfjCitN//1FmNP0FByLkk42WoOw5VNMZnLa5ixxptoh1b8buu1W0yC3dSDJDiFmQ4l6D/usMIit0txxPDok1QR3adxFVpr8iIbOgpybhde0hywfekjIhtyJfO6+ZjI1MqFaD4TzEKQj/ZpRB4NvupROdKzYJs5vo6Kqhyrp+b/F8syrim3EECw3cmmSTstextGWWHHGJ+lDiCWYJcL8KNcgsFSDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OXgmCYDWyeH8w8zhWl5uJvVLoWijTHcslnY8W4Q8gV8=;
 b=iGzt3U2+1qpQbOMoAfbg88T86GdlCYQJQ/nLje+X8Zr+H0q1Za+QZNEqZL/hETokSTY3dKUBbjMpHY49gntogSu7TvCER7ccNXzRvt76PRVaJGkROKCMum0fK4h+lwR3TSLpksb65NWwIlISEvJT2JOo15p7QoOAZTU81x1G8x1YBAlb7hd9pdcIR2f2zwfrzQWhX2Iun/HOtdDqaovpbCkzO0OA03udp2k/GR6mls+U3uvtkH2Mwl3cLrt0/lMEjsrvSMnV4fNNQSBhMpSWobwbwBQyQRd6Z410twWSTG29Kspwy94GwvJnYlJbZiBgHb0x4BLGqtimbJzzFkgoEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB4960.eurprd04.prod.outlook.com (2603:10a6:803:57::21)
 by VE1PR04MB6525.eurprd04.prod.outlook.com (2603:10a6:803:120::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20; Sun, 27 Sep
 2020 05:07:52 +0000
Received: from VI1PR04MB4960.eurprd04.prod.outlook.com
 ([fe80::b178:a37b:1f9e:3a6]) by VI1PR04MB4960.eurprd04.prod.outlook.com
 ([fe80::b178:a37b:1f9e:3a6%3]) with mapi id 15.20.3412.024; Sun, 27 Sep 2020
 05:07:52 +0000
From: Sherry Sun <sherry.sun@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>
CC: Sudeep Dutt <sudeep.dutt@intel.com>, Ashutosh Dixit
	<ashutosh.dixit@intel.com>, gregkh <gregkh@linuxfoundation.org>,
	"wang.yi59@zte.com.cn" <wang.yi59@zte.com.cn>, Rikard Falkeborn
	<rikard.falkeborn@gmail.com>, Lee Jones <lee.jones@linaro.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, dl-linux-imx
	<linux-imx@nxp.com>, linux-pci <linux-pci@vger.kernel.org>, Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>, Kishon Vijay Abraham I <kishon@ti.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
Subject: RE: [PATCH 0/5] Add noncoherent platform support for vop driver
Thread-Topic: [PATCH 0/5] Add noncoherent platform support for vop driver
Thread-Index: AQHWkw1OpmSoLCAf8Eq4qu/02j8Taql5NxUAgAKXe7A=
Date: Sun, 27 Sep 2020 05:07:52 +0000
Message-ID: <VI1PR04MB496047225BD131296FA8EE0F92340@VI1PR04MB4960.eurprd04.prod.outlook.com>
References: <20200925072630.8157-1-sherry.sun@nxp.com>
 <CAK8P3a3fog3jE_cPUTELDkFKoO2FbCJufQiDZhfL2FsZ5s5q3Q@mail.gmail.com>
In-Reply-To: <CAK8P3a3fog3jE_cPUTELDkFKoO2FbCJufQiDZhfL2FsZ5s5q3Q@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bc3cee92-e3d8-465b-6f3d-08d862a3494e
x-ms-traffictypediagnostic: VE1PR04MB6525:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6525013F912A7B7C4EF11A1B92340@VE1PR04MB6525.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UNbmPV7usbH1+I/8L0YcMRQa0NbYfI41wNrwyjIfEPzgnCv++ufm8uJO2cNmCB2dOorxf49s2yjlyHrHrhBq9bKo2fsGwOShjJh6o3t6A7PDkmN1kq68NP1YXhGJtrBgqfrH9abnheBGz3Ubrnn0BSEW2E5cUwRtopRRo31knVEjeWgEWCGF+sLaq5bzG42YEenrL7ZuBJ1Yoj8ZDlavJ6tael3kfnguNOba46EKcGytPPgZoUjj9oPDDQ6AKkdDBTNaN9N/YekS1OsBS16vZjUUZ0m3+P3L3nxpCoCKVHK4CuzIEYguHZSdZ5LWVn59eTGjoz5GqOjH/c64NTctR9HVdnYJ9ErxUxObPatjYnTGH7zTC7aYR2119OdR2V8Z
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB4960.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(366004)(346002)(396003)(39850400004)(316002)(2906002)(5660300002)(186003)(7696005)(53546011)(6506007)(26005)(54906003)(55016002)(71200400001)(9686003)(33656002)(52536014)(44832011)(8936002)(66946007)(478600001)(66446008)(64756008)(66476007)(76116006)(66556008)(8676002)(6916009)(7416002)(83380400001)(86362001)(4326008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: qWrrczvJfpGCo6yABRWSD+oDgtywDDBh19vIKAmht260tulyPNiqBl8IBGNF8j6LBPbueMq1BieBIRA2qj4RXkm+J/f8mZu5buYxq7mJ51roxb3XILY87iCSFzNYjggQCnr/eIjQV5APtsxZJc3tDXhlmxZUBvzmThD9EEbRPZQDTksBZjl5YXGZwDxmSB4T4Ev0SmCdtjKEd9AeRGxq4/6xoRgtlFUMwim+amDFs1cxJ2gTFXBN68rnh3wxLou2mg3m7x0wlZksqVyuuU3PaINAhTQNnLIvgg0YkCLdlS2QMU415aKZ3Hut3xeFKk7JM4pyw04jMVrFR04ibGeNLAx6DqbKmC/1UorkvCJM1pK3eYwP7k3U92Gd25av2qs+9fpsMB1+aOqshUOQtgV5Ovm0RY80fPiTRTWjM0LiEgQxdoPBbmKMgimdLBMXIDEIeugVVE8ke5RAmXvPuNq8dRankmJGdnBbZq/n0P1tHDGqL2TtuHQln2NAZoGTFFMD4fhyIDMP2/8/+gad5w6LxgzfkQ6b1IbzE1A+JnX1MXfiLaxWw+P0l3Iowk55hpYqiynW6rrsSOT8CboVly60Qqla4yQenZFPfTq0N5GerASKRkf3IlT1VuGivGwgOferdPo1NcAaPJg2CV+xsBGkaQ==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB4960.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc3cee92-e3d8-465b-6f3d-08d862a3494e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2020 05:07:52.0704
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9CKO1LNP6XJFrn1OfqFlT7ja3X/sclThE/HgxXR9+uYzG5/UhXT0i0eyGhMDzfHASTk8RVpB+v+EZQKT0xrIUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6525
X-Original-Sender: sherry.sun@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=ndMvVrrr;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of sherry.sun@nxp.com
 designates 40.107.1.62 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
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

Hi Arnd,

> Subject: Re: [PATCH 0/5] Add noncoherent platform support for vop driver
> 
> On Fri, Sep 25, 2020 at 9:27 AM Sherry Sun <sherry.sun@nxp.com> wrote:
> >
> > Change the way of allocating vring to support noncoherent platform for
> > vop driver, and add some related dma changes to make sure noncoherent
> > platform works well.
> 
> Could you describe why you are doing this? Are you using Intel MIC devices
> on Arm hosts, or trying to reuse the code for other add-on cards?
> 

We want to reuse the vop driver between two i.MX boards which are arm64 architecture. And in fact we have successfully verified it. 

But the biggest problem we currently encounter is about the noncoherent memory.
Since the hardware device of our platform is not dma coherent, 
when use the original way(__get_free_pages and dma_map_single, but without dma_sync_single_for_cpu/device) will meet errors.

Device pages/vring which are interact between ep and rc should use consistent memory without caching effects, 
so allocate them by dma_alloc_coherent is a better way.

> Note that we have a couple of frameworks in the kernel that try to do some
> of the same things here, notably the NTB drivers and the PCI endpoint
> support, both of which are designed to be somewhat more generic than the
> MIC driver.
> 
> Have you considered using that instead?
> 
>          Arnd
> 

Sorry I don't much about NTB, but for PCI endpoint driver, we will use it for pci data interaction below the vop layer.

Best regards
Sherry

> > Sherry Sun (5):
> >   misc: vop: change the way of allocating vring for noncoherent platform
> >   misc: vop: change the way of allocating used ring
> >   misc: vop: simply return the saved dma address instead of virt_to_phys
> >   misc: vop: set VIRTIO_F_ACCESS_PLATFORM for nocoherent platform
> >   misc: vop: mapping kernel memory to user space as noncached
> >
> >  drivers/misc/mic/bus/vop_bus.h    |   2 +
> >  drivers/misc/mic/host/mic_boot.c  |   8 ++
> >  drivers/misc/mic/vop/vop_main.c   |  51 +++++++++----
> >  drivers/misc/mic/vop/vop_vringh.c | 117
> > ++++++++++++++++++++----------
> >  4 files changed, 125 insertions(+), 53 deletions(-)
> >
> > --
> > 2.17.1
> >

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/VI1PR04MB496047225BD131296FA8EE0F92340%40VI1PR04MB4960.eurprd04.prod.outlook.com.
