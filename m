Return-Path: <linux-ntb+bncBCX5XI4QUENRBOHXSCDQMGQEXKIACYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F6F3BCC93
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 13:17:13 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id i189-20020a6387c60000b0290228552e3ac7sf11789072pge.20
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 04:17:13 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1625570232; cv=pass;
        d=google.com; s=arc-20160816;
        b=aPN0nxlvoItstxiPhivrli9znWL2koT67SZvKIDWRV0/55HUqxR6zeovbrZoFhSYTU
         i+jujZAZ5BXYAq4JbESkYt00n5mHfH0Ku6njM3r0nixEc/6Y35hQCF/1FWYgv2e7ELKc
         h7dhdeSLkSHxk2t4XEo4d+GLnWqewGkO96MvvyhfoiDKyy8fOpm0aLBmIW/DE7rESkE0
         2QjBJGJg1jfeuyhy4XgAyL9YNF3EvKiJ0ZLD7gxms7D7yIT5oxR+E7HN67LYLpPSh+n1
         8nsvzXIFvzk4BuAPw7lLEdD7hGb2IAUsreWbe7/lXdhCr60aiKKBGNcNd9LiXBzzNpz4
         f5Ig==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=BLlYEiM7QzE5QRgD2fxHCo4s19fl8Ck0fmc+hSoLVEU=;
        b=ZL3L5iMboSV+Xpnk6cH7MJJG5QK4co8iGA7xg84+a9NHnfPDz1ZbNq46SFD+/dn9dZ
         0z4zBdX+x4pVCQecLiv6yMkempsndlbB+h4KxDJIMB8I7QaDbEuzODwYCQcxAsSGqMaN
         Y3EXrCNSXpLGLMkqwquDGK9CJE12bOlhCpqvJmglF1eMhRdyvQ7R9KG2c4CBRhUvQe3z
         JmF8he49zbzLfrAd9LJs3ehFFAsyDMhcuF4CQfI3CercLI7tk+3BxN/jZLbtuhHf/fv7
         53e8WHIpLJu0W2jtJJypIOrGPPtGVArqh8/MoHRUEVpI3k5gLYuzbocdT9LBUjPZDhf3
         2CyQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=Z3JYE8fE;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of kwankhede@nvidia.com designates 40.107.92.70 as permitted sender) smtp.mailfrom=kwankhede@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BLlYEiM7QzE5QRgD2fxHCo4s19fl8Ck0fmc+hSoLVEU=;
        b=V5ivm/Mq3IDBqwOi6Cg/ojy/ciWqmn6Eebwr9ai8SNp6w3cUc9NM75O4fBZxDBEWUH
         bDTtzonpGm6106zhP7HwX5Gx+w3zq3e1N1PJJ8VLFVPEWRIvLiGCBQy/VEWbrVCcc7EI
         BFdIjCWgkYCOzruR4UDFil2Jei5uSI7YFzHNS5nCvqQDObI723vdN55lQvlO7DcHjKoG
         T6rtLOTV/HtfEQM/Vdj8M6yYxSfbK0LPW6/EeH38OlBZjvifAYqb1pTrQa+BUYxB3pJf
         R9Zpu462Pnw/pHRKN6Gwf+vu/Cg1jQRNKovN41qRxZ/7+bbLxE3JhyAhlOjF4gWB5r44
         J9/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BLlYEiM7QzE5QRgD2fxHCo4s19fl8Ck0fmc+hSoLVEU=;
        b=KNtJnJ+f7/S8oRCkT19pkqdMcwOEnrigfkNIB38CEDmN8K0nhqfGCSd9CMu50ei2p2
         p+lfXNkihGCHe9aT95J6EvmsQCX2kxb0Abv9xlM+8oJJDpJKADNG6P63rXqo9hw8daMF
         ZOAL8yujwF6lOuLpIfGo9n7NRnpLN4l6JqMAvexbLjsmEDU2ssRIalhbssiJDv8DuFRZ
         tLq9mNlZluaO+a3Hmk6pygO/BnFp7ndH5g140FE45zl2bnFTLfVTq8xV9mZasR7twS1w
         P+6vNhUCRxplj8feEOXm3kTyEyDuBWpc85zWVP/iEuymB6tEo0/DbQsnFJU1yaGjOmM5
         5afw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530jPpH2ydzUsVue89lXIrT6kIMnb5R0jJdANop2CoJVn3bA4FZX
	6f3Uh/EnwQL+SBiQWReU6jo=
X-Google-Smtp-Source: ABdhPJxnON/OFifz5vy6GGPN4AF3JYFbqmGBayGaY+1w/9SuQMThAbkIkm0yCX6HqGuZtjhs2RIU/Q==
X-Received: by 2002:a17:90a:7e13:: with SMTP id i19mr19849387pjl.23.1625570232455;
        Tue, 06 Jul 2021 04:17:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:4283:: with SMTP id j3ls9597595pgp.11.gmail; Tue, 06 Jul
 2021 04:17:11 -0700 (PDT)
X-Received: by 2002:a65:5648:: with SMTP id m8mr20715790pgs.93.1625570231836;
        Tue, 06 Jul 2021 04:17:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625570231; cv=pass;
        d=google.com; s=arc-20160816;
        b=qRp1titibzNDzdyUIAfecO5kkZ2Fqlze2uqB/uvZhy/wDPAHkpc1xSNLvlZ5cplpwK
         h5L5kxi3UPIYH2CWJAwx3IatGOf4CilyJf37sKT2H1MqTxfZYxEjR4/anFYGO9rHUUm4
         aUGGQ6z9e8Y5w0G3CDYIK3SfJH9De1U+LwWeir94QHNX0xzOmkp1HOofxzXWI3uy9ccP
         V9yIJ3iI4wN67YagUl09BGSsQuWo5ZfJM6nPa4aFZbGloU2kryiji16yHmo0oXk2FZ1o
         /ilcPczQCMX0oYnr6jVvO0LiIhoq7/y+NAVSvXwdSkvASjB3P13dbAfipeLp25nqWVii
         TmOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gzQgfqIi8OFdMGOA+iDXYHDenSaYbIa98IiQWdAlr00=;
        b=KKMWIk/DEstxo6Oez6nIY8p6opp3HCNVwMXFEGdEtLBjSKVnlQSnMTuJilellNKaDk
         KPUVOiAzv87BAlUxGvKG3qdAYVUlms+9aHrKjEsEsku0ivWpyp49Eru2MOyr4Zuvhx7u
         Ji+DjyUuYyCFUGeYCKlwnFcTRcI5emUIUUoJ4F9tRcBaAL9yu3yqTWVzg1XdyWQ/Mgve
         jTqX9JV9TQoeltwv66R2LSNtfE802ds6RhYHy89Z63O5lRtxv2msIIhfGJQkXRUoCpdS
         ZnS6zsO2VHiEniuzVAsyVWqIX6Hp9m4D7nwt6wC6U4OHfNMTalYpuySmlOLb72LBl4I3
         /EQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=Z3JYE8fE;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of kwankhede@nvidia.com designates 40.107.92.70 as permitted sender) smtp.mailfrom=kwankhede@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2070.outbound.protection.outlook.com. [40.107.92.70])
        by gmr-mx.google.com with ESMTPS id u25si1579088pgk.5.2021.07.06.04.17.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:17:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of kwankhede@nvidia.com designates 40.107.92.70 as permitted sender) client-ip=40.107.92.70;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OB3jt3SlsdowvqILnghDEybT9vYvyo2iso3STBIJcnupZGT9eEg2Qnje2DqSc1C4mFk2QBNm4Rucxdtyl+OsHUQ/EmMhpY6Ao22yIbNMM+gvlQ8sod5DJX/bxsjpKS6eO4jX3PQu/YQHrM1O+BbrVNmmvyE+/SEjOD6yYppVXkhGxNBjW6Ktv0JvCMebYgktbnIi00Q7kZfMtMhgzlS+RanZh8R3z7epBj+pipCPB70e3UOOw6Nwz1UsTwZdygf++CmCNg4iCcEFQob/F8pbAQCy3wJJMjqKQPM3zCAKa0XQ42hESmNJRNH+Vc9ZPSJZpZVoJ4lnNlD0tHOjILD6vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gzQgfqIi8OFdMGOA+iDXYHDenSaYbIa98IiQWdAlr00=;
 b=PbcXlkdCv25iKncBNhz1SQ8QsirUn58/y6c0ZmgRVus/xxMLbQ+eR9VSZ8eS506GpA2/FBfVsZ02guxjIB/XH7j/2OgjjGvg8CvTq+vELmw+UEsn8eda5C/LlejJ5Rvnhlxv9Vq4u8iw3YorMf/V1Kt7r5YEs+kp9iV5eUT8qYCAru8m/eCf7MY/zpu4IWRaIZ7LQCj+ntML2yOrXDI3yBcUIZAzvmFL4gVKSV5hmxR2vbloCwGfZAqDrgsHFQlNeRuHorr7BxChRkbtg6OF6BJIuRJ0pDWVaA3/LNo3ycmIeKRljLZTyAL1xlaE4oBbreAYAPZoCo0uQol2wsMRJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=linaro.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
Received: from BN6PR14CA0005.namprd14.prod.outlook.com (2603:10b6:404:79::15)
 by DM5PR1201MB0059.namprd12.prod.outlook.com (2603:10b6:4:54::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Tue, 6 Jul
 2021 11:17:08 +0000
Received: from BN8NAM11FT013.eop-nam11.prod.protection.outlook.com
 (2603:10b6:404:79:cafe::5) by BN6PR14CA0005.outlook.office365.com
 (2603:10b6:404:79::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend
 Transport; Tue, 6 Jul 2021 11:17:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 BN8NAM11FT013.mail.protection.outlook.com (10.13.176.182) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4287.22 via Frontend Transport; Tue, 6 Jul 2021 11:17:06 +0000
Received: from [10.40.102.252] (172.20.187.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 6 Jul
 2021 11:16:25 +0000
Subject: Re: [PATCH] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
CC: <kernel@pengutronix.de>, <linux-kernel@vger.kernel.org>, Russell King
	<linux@armlinux.org.uk>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Helge Deller
	<deller@gmx.de>, Geoff Levand <geoff@infradead.org>, Michael Ellerman
	<mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul
 Mackerras <paulus@samba.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len
 Brown <lenb@kernel.org>, William Breathitt Gray <vilhelm.gray@gmail.com>,
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Maxime Ripard
	<mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
	<jernej.skrabec@gmail.com>, Alison Schofield <alison.schofield@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>, Ben
 Widawsky <ben.widawsky@intel.com>, Dan Williams <dan.j.williams@intel.com>,
	Dave Jiang <dave.jiang@intel.com>, Vinod Koul <vkoul@kernel.org>, Stefan
 Richter <stefanr@s5r6.in-berlin.de>, Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>, Wu Hao <hao.wu@intel.com>, Tom
 Rix <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>, Jiri Kosina
	<jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, "K. Y. Srinivasan"
	<kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>, Stephen
 Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>, Dexuan Cui
	<decui@microsoft.com>, Alexander Shishkin
	<alexander.shishkin@linux.intel.com>, Wolfram Sang <wsa@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Dmitry Torokhov
	<dmitry.torokhov@gmail.com>, Samuel Iglesias Gonsalvez
	<siglesias@igalia.com>, Jens Taprogge <jens.taprogge@taprogge.org>, Johannes
 Thumshirn <morbidrsa@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>, Ulf
 Hansson <ulf.hansson@linaro.org>, Lee Jones <lee.jones@linaro.org>, Tomas
 Winkler <tomas.winkler@intel.com>, Arnd Bergmann <arnd@arndb.de>, Jakub
 Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Jon
 Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>, Kishon Vijay
 Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>, Bjorn Helgaas
	<bhelgaas@google.com>, Dominik Brodowski <linux@dominikbrodowski.net>,
	Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede
	<hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Matt Porter
	<mporter@kernel.crashing.org>, Alexandre Bounine <alex.bou9@gmail.com>, Ohad
 Ben-Cohen <ohad@wizery.com>, Bjorn Andersson <bjorn.andersson@linaro.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>, "Martin K. Petersen"
	<martin.petersen@oracle.com>, Thorsten Scherer <t.scherer@eckelmann.de>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Andy Gross
	<agross@kernel.org>, Mark Brown <broonie@kernel.org>, Stephen Boyd
	<sboyd@kernel.org>, Michael Buesch <m@bues.ch>, Sven Van Asbroeck
	<TheSven73@gmail.com>, Johan Hovold <johan@kernel.org>, Alex Elder
	<elder@kernel.org>, Andreas Noever <andreas.noever@gmail.com>, Michael Jamet
	<michael.jamet@intel.com>, Mika Westerberg <mika.westerberg@linux.intel.com>,
	Yehezkel Bernat <YehezkelShB@gmail.com>, Rob Herring <robh@kernel.org>, Jiri
 Slaby <jirislaby@kernel.org>, Heikki Krogerus
	<heikki.krogerus@linux.intel.com>, "Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>, Alex Williamson
	<alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, Martyn Welch
	<martyn@welchs.me.uk>, Manohar Vanga <manohar.vanga@gmail.com>, Boris
 Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>,
	Stefano Stabellini <sstabellini@kernel.org>, Johannes Berg
	<johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
	<tiwai@suse.com>, Marc Zyngier <maz@kernel.org>, Tyrel Datwyler
	<tyreld@linux.ibm.com>, Vladimir Zapolskiy <vz@mleia.com>, Samuel Holland
	<samuel@sholland.org>, Qinglang Miao <miaoqinglang@huawei.com>, Alexey
 Kardashevskiy <aik@ozlabs.ru>, Kai-Heng Feng <kai.heng.feng@canonical.com>,
	Joey Pabalan <jpabalanb@gmail.com>, =?UTF-8?Q?Pali_Roh=c3=a1r?=
	<pali@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, Frank Li
	<lznuaa@gmail.com>, Mike Christie <michael.christie@oracle.com>, Bodo
 Stroesser <bostroesser@gmail.com>, Hannes Reinecke <hare@suse.de>, David
 Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>, Julien Grall
	<jgrall@amazon.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mips@vger.kernel.org>, <linux-parisc@vger.kernel.org>,
	<linuxppc-dev@lists.ozlabs.org>, <linux-acpi@vger.kernel.org>,
	<linux-wireless@vger.kernel.org>, <linux-sunxi@lists.linux.dev>,
	<linux-cxl@vger.kernel.org>, <nvdimm@lists.linux.dev>,
	<dmaengine@vger.kernel.org>, <linux1394-devel@lists.sourceforge.net>,
	<linux-fpga@vger.kernel.org>, <linux-input@vger.kernel.org>,
	<linux-hyperv@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
	<linux-i3c@lists.infradead.org>, <industrypack-devel@lists.sourceforge.net>,
	<linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
	<netdev@vger.kernel.org>, <linux-ntb@googlegroups.com>,
	<linux-pci@vger.kernel.org>, <platform-driver-x86@vger.kernel.org>,
	<linux-remoteproc@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<alsa-devel@alsa-project.org>, <linux-arm-msm@vger.kernel.org>,
	<linux-spi@vger.kernel.org>, <linux-staging@lists.linux.dev>,
	<greybus-dev@lists.linaro.org>, <target-devel@vger.kernel.org>,
	<linux-usb@vger.kernel.org>, <linux-serial@vger.kernel.org>,
	<virtualization@lists.linux-foundation.org>, <kvm@vger.kernel.org>,
	<xen-devel@lists.xenproject.org>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
X-Nvconfidentiality: public
From: Kirti Wankhede <kwankhede@nvidia.com>
Message-ID: <f4c5e4c9-95a1-e801-6d2d-6bb18a924b01@nvidia.com>
Date: Tue, 6 Jul 2021 16:46:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d660212b-af0f-4381-7aa8-08d9406f9722
X-MS-TrafficTypeDiagnostic: DM5PR1201MB0059:
X-LD-Processed: 43083d15-7273-40c1-b7db-39efd9ccc17a,ExtAddr
X-Microsoft-Antispam-PRVS: <DM5PR1201MB0059F2FD2EA1FF32196093E3DC1B9@DM5PR1201MB0059.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yp+xo1ChYomO5saPmEiiXoTZrpARTWeS+6+ILqneuCodLa6j14xykFNBVNaB4aiSH2d+5MPlJMacyo/bFt8aKcan7CtgrqMd0lAsvFIkZgwuCeKYMsT2Xfmw5J/km/XgptN82DkQln6ltmUSP5rY8bY8C1/13//X6pHRKC7TQ718mAEqrAKf+wNbig3UHNNLoOR6w975lGU5jVv1u1lHKveYETvI1HxLK9EAigj1IS8jiHQwoEUbAJtPyk/0Iyw/umAFVeL1/yiulcjReFcWfGKm4HxeXYHJeqjsbDQ8z58nwPulNCDyrEyI2OAIPYW2DXMjhWpIeFrDWB7LG2y1+dMgZOC5Awev6CyctuFAr8/1dfXCAF/zLNAw+WZe/OqYx/LBwE+uUIq9DNbzkqraj1p2iLhQk6oPB9wR09pr9cHnLBbuxX8n2WvREZhzVDRzS67ljrMLBTDu1SLxxnozXOoYny7NjUfvBOJMFdRHn4z7ivj1lLMqYCjxkQoKa3xuvEsNCSVAsoGhuEc6Dy9sdlluue/2i6NiQirxyNP97b16LmlwAsDu2J1GknqHaGuMnaNt2+f0/PQaAiKJ8Fl+NVNqnUw2Xp0PRXBcfi55eDn1g28TuiXzOCgRh/zVdhr+4Tywc040jRYHJj6OaSzsDUlECeNnvEToseYb+sDgQ1R2LGrW5aEEyqm9q5ftmFVUz7yPSsE172P7P4oFhOBR2K9NffS/ZbkUK/PIiZkGZ+vRBrWH52nHpdCxqybxQFxD
X-Forefront-Antispam-Report: CIP:216.228.112.34;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:schybrid03.nvidia.com;CAT:NONE;SFS:(4636009)(376002)(396003)(39860400002)(136003)(346002)(36840700001)(46966006)(53546011)(7366002)(7406005)(336012)(7336002)(2906002)(316002)(31686004)(82310400003)(82740400003)(66574015)(4326008)(47076005)(7276002)(86362001)(6666004)(7416002)(7636003)(36756003)(16576012)(8676002)(36860700001)(70586007)(31696002)(356005)(16526019)(186003)(5660300002)(8936002)(70206006)(26005)(2616005)(110136005)(54906003)(426003)(36906005)(478600001)(4744005)(557034005)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2021 11:17:06.9013
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d660212b-af0f-4381-7aa8-08d9406f9722
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.112.34];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT013.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1201MB0059
X-Original-Sender: kwankhede@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=Z3JYE8fE;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of kwankhede@nvidia.com designates
 40.107.92.70 as permitted sender) smtp.mailfrom=kwankhede@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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



On 7/6/2021 3:20 PM, Uwe Kleine-K=C3=B6nig wrote:
> The driver core ignores the return value of this callback because there
> is only little it can do when a device disappears.
>=20
> This is the final bit of a long lasting cleanup quest where several
> buses were converted to also return void from their remove callback.
> Additionally some resource leaks were fixed that were caused by drivers
> returning an error code in the expectation that the driver won't go
> away.
>=20
> With struct bus_type::remove returning void it's prevented that newly
> implemented buses return an ignored error code and so don't anticipate
> wrong expectations for driver authors.
>=20
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>


>   drivers/vfio/mdev/mdev_driver.c           | 4 +---

Acked-by: Kirti Wankhede <kwankhede@nvidia.com>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/f4c5e4c9-95a1-e801-6d2d-6bb18a924b01%40nvidia.com.
