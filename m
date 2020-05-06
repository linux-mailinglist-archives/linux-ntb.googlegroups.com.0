Return-Path: <linux-ntb+bncBAABBJPXZD2QKGQEWYAOJQA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 786371C66C2
	for <lists+linux-ntb@lfdr.de>; Wed,  6 May 2020 06:23:02 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id j206sf121499vke.11
        for <lists+linux-ntb@lfdr.de>; Tue, 05 May 2020 21:23:02 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588738981; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mbx383hJCc7Zb4pnMc5ycluUNvbVvSOGTwjqoPq5OjrbRGg2caxI94+OzsM4A3Nm5R
         BCa9qoseLnNRxYccmypmxGVwEFX06BjcvYC0xVUWF56isXVk1EZjrcokxsjzDraTDzmb
         Vyot2NMI5Sed6QsSMlaLshnmw2yLSr/KLDjpyg+YwofFrOaYFcm87RXkcpV2Wz5vz9Nh
         mali9+204xn65LdkQkvm44KJhtVXmUFXMn+DA8+i3DpWh8HvHI9tEMpiNPMwmOoPF7IG
         G+nD/xjfp5n4qUx5NCXkCqeCCIcIuCDsq0CxjcsBrjY6nPN+KvrxEDwVHpVEdXTl85FO
         OcYg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=50I9uGG5GYYCTmzTIXtpYJN2RZ/4Erm5semQdri6mfI=;
        b=QdKvpfXHxG4TL1uNbCpeGttPuBnDfIt4AmZJsKTLGOqfUTUd1ZMzln1udqf9vBslez
         W6I+dJrMbR66i98qWMqb5rbXjakmQciqv+NZoS9//iDUdMks0XxL2cx3V/YzhrjOB+4n
         ytBr7t15L81wY8DFIoM78slVDx1b16p/6mdaSp8eu4orfc+gxWP1JHXOsWFbN5fvGAlV
         OzYyGjPFL2vynqk3WcXhoL4x3dcwMFQn08dkKaQh1j3l18EaKUxi/VlQ4+1yJTUjWWzY
         Y8paPL+wlR955waMpaLKskDQe+bHMIsmJpmMzB8pBYYXHrS79K81Yu3j/8xUb3XHQudY
         pF2A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=t9i98UIZ;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.223.78 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=50I9uGG5GYYCTmzTIXtpYJN2RZ/4Erm5semQdri6mfI=;
        b=Sz5TJjFY4FJeG0SXtnrB8HMufkV9ycC+HKBCY1Xad/a+BkBDpgtQ/WiliOrycrN6nN
         ZdmVzDvphnJDHH/sMS7U+/cY11Esz68dhh6ySQEdoEQ+1Lzw7537RxbVLM3ruHdv51tl
         /e5tfc1XhK3T9iVYIg4fD6xsFKfzstf0HvUyxP72g94JsS3M4OQ58qLkRmumyS88bUJt
         99XP25WT8mD46SWAJ+paQXnJFpH5TXdQobiYQ0ldmCG/WxR5Nm47DBIbujq8vIw9ApCR
         Cyin8zBn5o9lNWYN0YH9gUycSlAFEtp80fX/njFBpumpUAKJTbppamRgqCQ5dP4ZDZMX
         rR1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=50I9uGG5GYYCTmzTIXtpYJN2RZ/4Erm5semQdri6mfI=;
        b=NrOEX4Vcn87N45WWiQw89DKzG61ZlHn3COLUBUr5dAlcO3OKPlqaCHEwzxoS93rm7G
         O4cTzrXt+l3Dkxb4mQe6G2934KxJLf2Zmcuhyu5shIBi2C7/yH0p4SxM63Sey8/za3T1
         HnRqpykyzhZyANWyIU/oBe0yWgOMMlMf24EAL4dJcgXhkpnUOM2VXNRut0tLMqh1ysQu
         PAX6ExulzxUKQSvEi1DZyGbzDwH2dymB73f62dbwy/fdc0nEPFl79bQ93Yy2/FPi82xL
         zlEJRr88o+9E1dWCMT13tOUouEOUB4Fw7AnyznqoWkiViqvlq6WEmVCX9gkLTwAX5z/7
         1+mA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuaCNT+KEIgCWy70UsMLwbkFxcwVBkAvB/GzX/2o+KUu3E8veR95
	KbTTMfSdr8P5gySFA70Jtko=
X-Google-Smtp-Source: APiQypIdf9S5EXe4pbu+h5KBQtPLUdwgVH8Uoiq0qxB08shj/5sZDckxTV6Pn3P7mcT2PXR5NjJVRQ==
X-Received: by 2002:a67:f254:: with SMTP id y20mr5975428vsm.177.1588738981556;
        Tue, 05 May 2020 21:23:01 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:2992:: with SMTP id u18ls49855uap.8.gmail; Tue, 05 May
 2020 21:23:01 -0700 (PDT)
X-Received: by 2002:ab0:5642:: with SMTP id z2mr5577301uaa.6.1588738981264;
        Tue, 05 May 2020 21:23:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588738981; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vq0Ndi0nY+tEhZ9+7gvtJvoCd3YgdssEp8JdTlsOCKVwgi6YWfQPHc5Bbg2quq8Vjb
         4ciH4jShPftb1+ucBChdE+lnAkIDQN+edyic/bWcgnSdvad9JgG21SAaZPCs+aB/Xxju
         V5I0w9kRdXy+ijfgk424nESuplZcdsGWCDwOGpavZ/g4A3ARJ67skT4XdQsVBt7fhdth
         GEiIHD9Yn6hHCzsAiZYdaqkSZBOsu2qqfxbc3dZ7Cs3K30E2JF4MK1cR/y0KmNQeIr3Q
         oVLPqSI4jqPEY1Qtsd0L5KEiSLT7tbgclxNFQEDkxcECWu2T8e/rDp3eHA57vhKS5rsC
         8OZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6n00zdWDFWbDv/3iaLNdZKLLmsOS+DWJVWgvHoNcbMk=;
        b=NyxG2Zo5P4BlbV/W0ues9SXnhb5ldq+ry8X2ylCNEUjgQYRDVVDPsJB6NZ3j3teqN2
         5EBFz1L2hD8Mg1CAMkU8RLHUZqRwZU/hoCtJT1idIWvO2wGpmwjNhK5e770Yrj88Z1GM
         ebJLO7YMKq01lFuoHP0+TL90bLwfWFJAOgstQ5qdueeTdrAiPHtqz6Nx3XxaUcr/H4CW
         9hl4boGd8Jx7Vr27JaRjKJzpN2vydQqflZbE5QT+RkC5hXmjaTt3gq+tVU8e0Bz1j9qW
         7e1czlFEREUYWbczI/J0p2Qg/OcVYFTshT2SoRfshDQpSPaPWQ/AUQsfRPiuyW0ISzXc
         Ww/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=t9i98UIZ;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.223.78 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2078.outbound.protection.outlook.com. [40.107.223.78])
        by gmr-mx.google.com with ESMTPS id y77si63834vky.0.2020.05.05.21.23.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 21:23:01 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.223.78 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.223.78;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YrTBdxhEcgk9jhmk3shrJD2s0V4W+5fEOgjjEVWi0YrL4Vto5+7RfsBy/22Zihwg8Com2GpdNy4pIc748kRN+KHE0tI7Xhkys2e0zik8uK9MnyETCIbRnV1pgAbCV/AvPg5f1CW4ysQrSiwRoiRAskXhrcYDdEiWp3vRqH4c+smFuxiL8FSP0YkJ1sPZsxhxbyP7wQmFUorSUYheEM43K25fSAt+JRjwPvtMeHtC4ZJVhHamR/Iz2BDu8W0pogYyH00UMg7Qex/VBnkPdv5UN6BJqImsN15miOXY++IKH5k/xPU8cdUrhKCs+eriYuOiB33ElAit614+73iKC8heQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6n00zdWDFWbDv/3iaLNdZKLLmsOS+DWJVWgvHoNcbMk=;
 b=W0IGNVXaIIeuMPnfNBNAk9HYPLRahy+g+thF7LcNUf9wCfo09MaEdfEsqfUUfagkebE9SQBVyFEktuV7VSJ8zw8Z9BLOOobf/axONc91PIl74Sz+hC9orjStT0d15ygWG0kiTm3RvdImAslSfAKRqooQt1RoCSNjxSRf88e50OpOOAekU5FWUdDBJEOn0fd04zt7mk6kdDFzwCN3gj3Q8Y2DPdgukQDE7PMSGtG4UJiON+04Fb1f3I6uh/rh13My0JAT68X8CkblVIvXi6uD7tvfQbfSQRfZHlohz9RwPixOO/hXfL5b1kXo0fC8Q0DlAR+PlfI5uuHvQWTEaY2WAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM6PR12MB3420.namprd12.prod.outlook.com (2603:10b6:5:3a::27) by
 DM6PR12MB4092.namprd12.prod.outlook.com (2603:10b6:5:214::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.28; Wed, 6 May 2020 04:22:59 +0000
Received: from DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0]) by DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0%6]) with mapi id 15.20.2958.030; Wed, 6 May 2020
 04:22:59 +0000
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
Subject: [PATCH v3 5/5] ntb_perf: avoid false dma unmap of destination address
Date: Tue,  5 May 2020 23:21:52 -0500
Message-Id: <1588738912-24827-6-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
References: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::21) To DM6PR12MB3420.namprd12.prod.outlook.com
 (2603:10b6:5:3a::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.26 via Frontend Transport; Wed, 6 May 2020 04:22:56 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: dc385fb0-cefc-46ef-76f6-08d7f17528d3
X-MS-TrafficTypeDiagnostic: DM6PR12MB4092:|DM6PR12MB4092:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB4092AD5754DBAD0F49A72853E5A40@DM6PR12MB4092.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iwyqhVv19j54pC/wpzHNj5c/k48YVWjQ5QRJcXZ/ZNkRlUnBcNPckmMWk8f/tC9OsiGWtNiKCjew52xCBfkPbVyM3cjGcDpHplALc3Qan88A+aqWmqmGxDXhZL4TTKSY2v+f45MxUakz7b+NAl431Jqju6VGUW0cfxP3w1UIJASDJ8ow7RXb+L8M8YBJuvA8e6OURJqLrqURe6IqghwfFvt8pr+62bX2RPPBGcOCaXWrhJBoC6qN6BLCpT9UDPvJssYSyMXIMSjmiQTb4tAwW0SZvYt5swdp5eNdXt1Yi5N739r63sWbuyj1ixo1OT2DoalayjlfDXMwM6kxtdvoJYkEFjUoyCqihrJp4ACfpL5k234vht7VOCbFRceok0W1n2Dsp3lmiZkbBAxKkvgr4OASxhUwWtf0IWOqdJl8LR36vLKSkvkgPyYOPcbnOC/ME5M10BQgatvdjV6kkQN5hIpfjxNyNCVHT6Is0t4dXL8S2945Goi8+lrxro40/IprrspzV2XsMQYYBVMZmdoo2A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3420.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(366004)(396003)(136003)(39860400002)(376002)(346002)(33430700001)(4326008)(33440700001)(956004)(2616005)(478600001)(5660300002)(2906002)(8936002)(36756003)(316002)(6636002)(66556008)(66476007)(6486002)(7696005)(66946007)(52116002)(26005)(8676002)(86362001)(6666004)(16526019)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: UyTYFEcgM7h3/E3QwKJXnlJrxW0O4h3QPdkB5itxNj4dmMgxqguOGNvzBVDe9v7NO8D9PCdRQ1EA+vBvGIr4YuuFYmxC4LkvE8oLsROPrYp3och31iyO+sSDXbIyC7Z8RE9j7kIsJ/6zjc7Gj9QACrtXCGEspgJ2jf88Vs9DRzEtcBXtloyV4o7r0nUXv1zxybfv01cC7WvvNV9sfjeHh+upnhp/memKX/a6zAPgAf2sdOEO/myJebxhzbGlRmjVlI03Bil4gaV7hbdvn/GbDpIyjO6bQWnjDn6b41X6p42Ol8hPGbEpw2r42qEjBhzPiaMKy0GnhnPwYpLj71jepsdmCtqBYsGi5GTh2a16y0K/XV0IMF3cY+EfstE8JKt7/ZZ2/3n6/fltiYjACixkxlQbS49ESbB4JLOA7D3dXSmrmb60FKMEl52kxehK21rL2PdCXrmEeDkRpffWVYkiJCHXQ9rjFAA6abbA05WFpEkR49KMLpaaL8XBM4pGhNrMwGXCX2ifV+nA3VlvO9UlqbWI5KIjgU/ioTvjRTi/ajgXUnxeKDUgd7a5ab2ZmDa2C6I9wlukD1Zfnk9dz+lOi7AFHdpZrQ4t5cje7zjATta6Cra81hF34hvr2KjJtkvcNZgr46x15IltOoz72QJ6ZkbQxqJ/d3ddLIWtsS0khyydC9SMt1RudJ92bu/3+Aakqp5HdykNRVM214gp2x5HmTmcDSDfAwpGAa48oh8psHQoA41NfTe5KMVm+zzlK68y5iWIjVgYGGg5rIA00se7Y3ZL2V4o5UvI3jje8e5QIYQUn9+4LDOKqUXuBaIFDTVb
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc385fb0-cefc-46ef-76f6-08d7f17528d3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 04:22:59.6158
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S1GbMMbePl/ste9PTewMqCBf2OzrwX8F9SlE5KsnsX4KnSMYoYWhKRB4N8ua4gq9IsIOStIRgTOUpErb9pcgUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4092
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=t9i98UIZ;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.223.78 is neither permitted nor denied by best guess
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

The DMA map and unmap of destination address is already being
done in perf_init_test() and perf_clear_test() functions.
Hence avoiding it by making necessary changes in perf_copy_chunk()
function.

Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/test/ntb_perf.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index dbcfdaa..95a0853 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -804,7 +804,7 @@ static int perf_copy_chunk(struct perf_thread *pthr,
 	dst_vaddr = dst;
 	dst_dma_addr = peer->dma_dst_addr + (dst_vaddr - vbase);
 
-	unmap = dmaengine_get_unmap_data(dma_dev, 2, GFP_NOWAIT);
+	unmap = dmaengine_get_unmap_data(dma_dev, 1, GFP_NOWAIT);
 	if (!unmap)
 		return -ENOMEM;
 
@@ -817,15 +817,8 @@ static int perf_copy_chunk(struct perf_thread *pthr,
 	}
 	unmap->to_cnt = 1;
 
-	unmap->addr[1] = dst_dma_addr;
-	if (dma_mapping_error(dma_dev, unmap->addr[1])) {
-		ret = -EIO;
-		goto err_free_resource;
-	}
-	unmap->from_cnt = 1;
-
 	do {
-		tx = dmaengine_prep_dma_memcpy(pthr->dma_chan, unmap->addr[1],
+		tx = dmaengine_prep_dma_memcpy(pthr->dma_chan, dst_dma_addr,
 			unmap->addr[0], len, DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 		if (!tx)
 			msleep(DMA_MDELAY);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1588738912-24827-6-git-send-email-sanju.mehta%40amd.com.
