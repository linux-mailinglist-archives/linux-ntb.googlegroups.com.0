Return-Path: <linux-ntb+bncBAABB3GO337AKGQEUEJINBI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id CC90F2D9E4A
	for <lists+linux-ntb@lfdr.de>; Mon, 14 Dec 2020 18:57:01 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id f19sf12284618pgm.4
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Dec 2020 09:57:01 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607968620; cv=pass;
        d=google.com; s=arc-20160816;
        b=0fxvxIhP16gG9UKi7vBIS+txvpLXfzkrcWBFgOSTQjJ+aujQFvlwtsgMhtSxabdRe/
         SsPMB6tNAIngV3AsHbTYNurCND3ND31q26eGnw8PY+RxqIj0jtqBfoQpVgJz2DldoB+a
         iN1EzvLYae9pAmVl9zgn1lP3Jh6rbwEC+Nh1ZE/T948EuUlOoSHbFm35Du3fVRufzbjW
         0sHSsizhCmkI0N5GOgCbjamCNO8TNCdXDiLhAZ2tiUhkJVkv0AuQngPqz29HtUrSUY5/
         Hn6O+N1dEia+MQKHwZ1D4NX9f4LnP7fbWEM3sb4FftyxZOOaasryFUg8dF4/q9BhX8/a
         yyGQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=YzoTdz0ObBOZLY9xWM83LzOCJ/t0ixtoyS1EKC3tzvI=;
        b=gWgXR/wDrV19jewum+mrkenaLe5OVx47nWQ1cnjBN69gCUHQ4olbA0ho1gwcIjrUT8
         OCDstwlXGA1eTKzsy+sZJkcPrUJDhyAooD5rVS/jI/Uw/vYdJ11vi7upXFmpIUE9x7eH
         M31owJSTBtSYxpLRYn9XeR3L1hI8W/vA5hl6vEyBNlrS85ihQowQBLWh39DTwOMpbM5H
         sbzmQfaR30YZW3PC0WRrKY8AgXn2c5vcaHQfatl8/AmFyUX9Y6xgo4ZNBxYb9AP6XGZN
         4NBFI/pinpyVuc+ucUqfOgu6x9X2x1pRW3k0pG9pwYOWBR/4bgv70f5UiCgyeS5cH5/z
         5Qwg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@cadence.com header.s=proofpoint header.b=kNtMDEaG;
       dkim=pass header.i=@cadence.com header.s=selector2 header.b=1d48Hk4p;
       arc=pass (i=1 spf=pass spfdomain=cadence.com dkim=pass dkdomain=cadence.com dmarc=pass fromdomain=cadence.com);
       spf=pass (google.com: domain of tjoseph@cadence.com designates 208.84.65.235 as permitted sender) smtp.mailfrom=tjoseph@cadence.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cadence.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YzoTdz0ObBOZLY9xWM83LzOCJ/t0ixtoyS1EKC3tzvI=;
        b=jn3iNmqbVYSxc9gfSmnKdz0x6Rj9+JffvVGWCJYvkUiRL8Th1h4+CqzMrt9uddRCra
         48KH7volILVQc4ARMMDXXvxN3cVUKIyS3zRGvu79rRj5yljDwLkYJGhSKAu+vBI9V/et
         0OEsm+ArY/yuijPQiYKv/1Sr5JMHvHAfFU5K5UM+6PQLD02snob9iZ7wEXfEqxtDanto
         BybIBhWpqquymaUgtZ7SEJ6iKy6bfBiHmzfStQ3iLumMBe3oTeTOdfH8JP6YnMUfs7Ui
         xXy1IqzCFelfjFEgL3PIDzHBYi0FwTaBkcltV6zDq6kKo/Q1rufPo+5ePi65uDWMW9tJ
         jh9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YzoTdz0ObBOZLY9xWM83LzOCJ/t0ixtoyS1EKC3tzvI=;
        b=mvmfiwpptDEXL60GtRjehdpO7OiLh5oidxKIFUQrEjJ50SeP4zmjrSUlosdcVK06Fc
         F8uI6JzdBVz5c76g3ij4BwVWdUXsULJXzm20a437GMyhy+bdJEsx+qZjyB2Nf72Ka57j
         +Lfo3X49aCFl5X7548MZVM3T7RwXRzwrzexdtY1lzkPlQmAnwHk76ATU1WhnhRJS3eLM
         +VuRTUzbrcQp8cXBysMgSXOuCPMgsZVXi7HYyEvknOp5zDT0wD23x0KgBwfRu365YkIK
         3szHH1olb7Tf8C+OSUTpx0GA4cTaQKMIBB2+AJ0gGvgzFvfHdGYuvnOF3oaSexbcYT0b
         aIrg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533UYHn3zthHZ3T+lJkaOnpMIK/CzRsO9eKXkKqt8ydG0wbsOFZj
	ayyt/7NiVal19gU+1Ut2Nok=
X-Google-Smtp-Source: ABdhPJytLloelzaQL5PfrChO/IVocEj/+2l4uJFEYQvcPGUnUNMj3+qp+ujt8re7Hd4dWWGBNSudiw==
X-Received: by 2002:a63:f154:: with SMTP id o20mr25058025pgk.127.1607968620358;
        Mon, 14 Dec 2020 09:57:00 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls6685804pfi.3.gmail; Mon, 14 Dec
 2020 09:56:59 -0800 (PST)
X-Received: by 2002:a63:9809:: with SMTP id q9mr25024382pgd.205.1607968619812;
        Mon, 14 Dec 2020 09:56:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607968619; cv=pass;
        d=google.com; s=arc-20160816;
        b=ldgapPOH/yOqSjmXFsZWneKN1r16WaF8vNCArSO49HYpaGrFfLkRXC0JkEltraX5qC
         vtiYIJbsG6TdL9AHNLOklPWX+EgaVUoBNzPNrvkRnauz/5azjdO/2XgKLI+OufGoYQQz
         60b5hgNHlxibHsY+mGtKvmvFqXxRR9RANE0W3B/GZRmLUEhMsz4NASczGKdUhVXjuTPU
         1VHQHKQjriINgpgmkcFSrl2xBqKzVxhrjl01+DmT9E/bGxq5yVDxYyXSGMRPEgHdSm34
         H1k4pnjrkkAEQgIMzlZG+ufTedzIDbRcis0A44yr3GxjaFgvXsUrMkUf0oQzNHt27d+0
         StQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=B72Xbwoy2qhOAMD4X7LSM6GdZC5KCqX2TI4vs079Qws=;
        b=ycK51glDeg5RM4okAsY62bPcBA/CcMXLEMhR1PfbzQdzsnaC74PvW0PU8jxgZNCR9f
         fQOJZ6JlHXsI8nhJVhcksCgusTkPmydlcUw1pr9EbHjemMCy9+fKBEHnFVRqOPFR+g8b
         HpB02O+cNUwWdF6KiWetdUpznx9roMaimZhSw2bOcFoW0o94REMZbDAVSGZJSGC7GYiX
         PMA7oYvU4d8XbFfgHq/3r7PzbN77YeFeEpxz2f1oEa/CJt4GmknwhM8AeZePkAhulK2X
         +XJQITGUlJ9DLCmepdEApodOZwv7R1nSEFTqE6a3JZFw06Lk0nK4AusrYvfFi6rbTlHI
         NwqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cadence.com header.s=proofpoint header.b=kNtMDEaG;
       dkim=pass header.i=@cadence.com header.s=selector2 header.b=1d48Hk4p;
       arc=pass (i=1 spf=pass spfdomain=cadence.com dkim=pass dkdomain=cadence.com dmarc=pass fromdomain=cadence.com);
       spf=pass (google.com: domain of tjoseph@cadence.com designates 208.84.65.235 as permitted sender) smtp.mailfrom=tjoseph@cadence.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cadence.com
Received: from mx0a-0014ca01.pphosted.com (mx0a-0014ca01.pphosted.com. [208.84.65.235])
        by gmr-mx.google.com with ESMTPS id j124si1361064pfb.2.2020.12.14.09.56.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 09:56:59 -0800 (PST)
Received-SPF: pass (google.com: domain of tjoseph@cadence.com designates 208.84.65.235 as permitted sender) client-ip=208.84.65.235;
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
	by mx0a-0014ca01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 0BEHm0cL000559;
	Mon, 14 Dec 2020 09:56:46 -0800
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-0014ca01.pphosted.com with ESMTP id 35cua25vcn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Dec 2020 09:56:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BwnGoHN+d+R+dXEkBo8NrasxfMw8aA0Xrk4hIr8PKQh0mE/8uykshqWnyiAOYqeHtn+sp3geTHKQefzB6JHx7QH3eYvKGc1ut4TrxHkFBmalLlP5KXiDFKKhAuY4k6NioGtSkuHNePpAa40B2vxVu7jNXlxLMLIjv29UVL7zPWlOS3mkmn1kS8ZQfMYXWGKMJZICfqqu28X285l9ls9KKOBLC36XVe2FOKmJXomDiIIrD3RC3nPQsOhZljV/k9rK0YYgJ5eyyHoVKhn0HzTYbJh0tbf2mmr6Tf87Geb6Lh84MU7JisDfsDD6hxpzQ4kRCXBsbwPtk/jZgky0k96mFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B72Xbwoy2qhOAMD4X7LSM6GdZC5KCqX2TI4vs079Qws=;
 b=hbgfdtTS1CmoJ40HRYWQ5mrBYtvVmbvDSNrOCEI0KRXzLLGkQ9Rnqpljvfph6l9j5te12vbb7dsTqV3CohbffWZLh3vMiNqRjHf60mjrM7aaz9kigquKTll4GtWMjwTa7F7SHGJGEvBe/Lg7BDDFVWGbG3NUjbVGiq4BHNOfHcNdWneZcol8KfAfIlzWPTqsWvWpgocCmn43+suaGVdxKKT+e2qWFh0Evhu4YMf7TDkIotJeOX7NsOMDNevRv3mRu+Y2IN3j+OJoaB9gLyvZJEi9qnkwqP7yVOd29Y1KTOHSiIAZsxUnTFB6ju0R1yJ+72ye/UG8dAFAw4kYzwdZHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cadence.com; dmarc=pass action=none header.from=cadence.com;
 dkim=pass header.d=cadence.com; arc=none
Received: from MN2PR07MB6208.namprd07.prod.outlook.com (2603:10b6:208:111::32)
 by MN2PR07MB6128.namprd07.prod.outlook.com (2603:10b6:208:10e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.15; Mon, 14 Dec
 2020 17:56:43 +0000
Received: from MN2PR07MB6208.namprd07.prod.outlook.com
 ([fe80::e80a:361:a186:f317]) by MN2PR07MB6208.namprd07.prod.outlook.com
 ([fe80::e80a:361:a186:f317%5]) with mapi id 15.20.3654.017; Mon, 14 Dec 2020
 17:56:42 +0000
From: Tom Joseph <tjoseph@cadence.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
        Bjorn Helgaas
	<bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Jon Mason
	<jdmason@kudzu.us>,
        Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
	<allenbh@gmail.com>,
        Rob Herring <robh@kernel.org>
CC: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
Subject: RE: [PATCH v8 12/18] PCI: cadence: Configure LM_EP_FUNC_CFG based on
 epc->function_num_map
Thread-Topic: [PATCH v8 12/18] PCI: cadence: Configure LM_EP_FUNC_CFG based on
 epc->function_num_map
Thread-Index: AQHWuECgG+CdRZ/+iUKw/v4fvaCeqKn1mkWw
Date: Mon, 14 Dec 2020 17:56:42 +0000
Message-ID: <MN2PR07MB6208137D0A15339D083FA187A1C70@MN2PR07MB6208.namprd07.prod.outlook.com>
References: <20201111153559.19050-1-kishon@ti.com>
 <20201111153559.19050-13-kishon@ti.com>
In-Reply-To: <20201111153559.19050-13-kishon@ti.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcdGpvc2VwaFxhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLWI3YTkwNDBjLTNlMzUtMTFlYi04OTNlLTUwN2I5ZDg0NGVhMlxhbWUtdGVzdFxiN2E5MDQwZC0zZTM1LTExZWItODkzZS01MDdiOWQ4NDRlYTJib2R5LnR4dCIgc3o9IjEwOTgiIHQ9IjEzMjUyNDQyMjAxMTE4MTY0NiIgaD0iNDljRjFXT2RPY1hLOEs3NTJFeGEwTWUwa0JNPSIgaWQ9IiIgYmw9IjAiIGJvPSIxIi8+PC9tZXRhPg==
x-dg-rorf: true
x-originating-ip: [185.217.253.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b25e279-5a9e-4ec9-f3fd-08d8a0599d8e
x-ms-traffictypediagnostic: MN2PR07MB6128:
x-microsoft-antispam-prvs: <MN2PR07MB6128942A9580CD90292C73EEA1C70@MN2PR07MB6128.namprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: As308KL9pkItdIBfJJP8kDC2bcpYmLxEZOglQEegZrD+eWstu8aNxA4gJr3Zy13893z9WHawMrL/EA/KXC/MGRFDkuqnehqdo3uAXRslYMV7YxQyzOt+U5Ej/SDfaqQUV374u0d0SMSADOScKjBap00KeGfJutFPgEPWI7u+/1p9Ryt5TlCC0/wc/mbEZeYiXNAkaqjDhmmjDChaRgEN+2W/28ldgCZpNcD51RZglWIbcKRMukBobqi3FBcrkAle6NAiwe3Yx6zVgmcMv/NfTVHHKua1+3tJg5KaSJcbOrmKUHg7qXF8Jwp0CSNOWqEZLhgO7B+TG1jggacE8BtV8EHUQS4mvicJXA81V9Xuu8roCduA5hc1EZC8fkBWBEPf
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR07MB6208.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(136003)(346002)(36092001)(4326008)(6506007)(64756008)(9686003)(186003)(83380400001)(33656002)(7696005)(508600001)(54906003)(2906002)(7416002)(55016002)(110136005)(66556008)(66476007)(66446008)(71200400001)(8676002)(76116006)(5660300002)(52536014)(66946007)(26005)(8936002)(4744005)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?PlIUwBShDNKwnZ2gKlFEDgvpqfa2fhUx/QvlvrnlrM6eNutnRABuqHkvfK88?=
 =?us-ascii?Q?4UWAOzjC6J9/V3JuvUP2gIpg0HUzJzS1UpU/ECb/o5TE1tquV4APu50Xv0yE?=
 =?us-ascii?Q?8OVGwjq64F96WeNpsAgfkRrKTBY3y2hptACsvmtITj+CCsYQxuPjgjBhzBIj?=
 =?us-ascii?Q?zxfbKU9j4GXp1mBDkrP53lQAko2X4CbAVWn723cTpQVrD0/7UU7lMWJwX35q?=
 =?us-ascii?Q?OIi0Uteyxif4AiNMrhg7qNrL1YaBpU3odo3OAmc2hX0WpDMS3MiK74rxjFfz?=
 =?us-ascii?Q?HiZFjbagOJvc/lJVjMM28kjcb8oCZX0xRNJhjFHQAEtib5YNDSOK66S9lXqt?=
 =?us-ascii?Q?J16C6g7M28byAUuaWTJAc0FjVuSm/YZ5rbVx0+2Qtr4RJf0DqndBFBo9MaQt?=
 =?us-ascii?Q?82wldI6RHdUKhwEC2pg424f8Kt49q5y9749sMfDWABBtkWP3vhxhdn7aeUn4?=
 =?us-ascii?Q?0pzg50z9XafVeyO7tSj4Eybvm2agl7lIu7oCsGblqGeqmMpQJ8HXOyAc8E+d?=
 =?us-ascii?Q?W4tiEv97T6kAOxRRDAKRCl2YMG9vtQ1a1af7P+gju4elIr8OS6B8Z9/11fVV?=
 =?us-ascii?Q?IlXNcYIV4j8kUNl7oad+CcanwylBYbhADTgF6blh/mLBqaZFDj3KRn9lVVPq?=
 =?us-ascii?Q?rDnj6fLZPDFDft/iFiymlbJTdpbN3radUjvC88GuoZOlJ42qHgvFkofguAOe?=
 =?us-ascii?Q?wpCAdzKrL+/vZCSj/K2KNiWCThvsomof7X3AG6WGH9u+Yt2g6OAtKKCpfgNC?=
 =?us-ascii?Q?KyCpuW7yUtiy0/ihJB2pYMFCKcBWr1X+gJszQa+uALJ6RsldmPpfDlXfjioj?=
 =?us-ascii?Q?OGf8xEaxyf/y9Ow9FJ0soBtHv6J4vuUZXL2f5ZAhWsJKoa1AK/FULpKtPAm3?=
 =?us-ascii?Q?1xjrTVSBgCRRCKrZMLIJ3RTxtnZ0cUn+Mr2zMp8p0kEf2tKWijVQny9qrIDf?=
 =?us-ascii?Q?FTqj00rp0yphYNDvtNQZHUjMqq7dSOfHlB0F5oe6kOM=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR07MB6208.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b25e279-5a9e-4ec9-f3fd-08d8a0599d8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2020 17:56:42.7730
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kymXSxsRHlkWWZf/UKfLMSTcXlPfZeiyP+Isn00DpLb9NuH5S4KEu2tlQYnqT0RWmedjZ+RK78pDvt+FKFUxectY1pEXO5JQFe3xvCNit9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR07MB6128
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2020-12-14_09:2020-12-11,2020-12-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 mlxscore=0
 mlxlogscore=999 bulkscore=0 suspectscore=0 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 clxscore=1011 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012140120
X-Original-Sender: tjoseph@cadence.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cadence.com header.s=proofpoint header.b=kNtMDEaG;       dkim=pass
 header.i=@cadence.com header.s=selector2 header.b=1d48Hk4p;       arc=pass
 (i=1 spf=pass spfdomain=cadence.com dkim=pass dkdomain=cadence.com dmarc=pass
 fromdomain=cadence.com);       spf=pass (google.com: domain of
 tjoseph@cadence.com designates 208.84.65.235 as permitted sender)
 smtp.mailfrom=tjoseph@cadence.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cadence.com
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
> From: Kishon Vijay Abraham I <kishon@ti.com>
> Sent: 11 November 2020 15:36
> 
> The number of functions supported by the endpoint controller is
> configured in LM_EP_FUNC_CFG based on func_no member of struct
> pci_epf.
> Now that an endpoint function can be associated with two endpoint
> controllers (primary and secondary), just using func_no will
> not suffice as that will take into account only if the endpoint
> controller is associated with the primary interface of endpoint
> function. Instead use epc->function_num_map which will already have the
> configured functions information (irrespective of whether the endpoint
> controller is associated with primary or secondary interface).
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/pci/controller/cadence/pcie-cadence-ep.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 

Reviewed-by: Tom Joseph <tjoseph@cadence.com>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/MN2PR07MB6208137D0A15339D083FA187A1C70%40MN2PR07MB6208.namprd07.prod.outlook.com.
