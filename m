Return-Path: <linux-ntb+bncBAABBQGI6TXAKGQEN4REGWI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 55531109E80
	for <lists+linux-ntb@lfdr.de>; Tue, 26 Nov 2019 14:10:26 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id m14sf562770otf.3
        for <lists+linux-ntb@lfdr.de>; Tue, 26 Nov 2019 05:10:26 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1574773825; cv=pass;
        d=google.com; s=arc-20160816;
        b=dsrmVs7cK9kqgn56UHSxtme0Ahoj2PdFUr0GnWcFqPKwTYXdMnGWyTfjJcEZ7US39O
         808LS2vTz+PdHf1IOTIaBfPbahWXtXgzEDSa0laGhFlWHCFGK9kb04+vxm9oJTggiH3f
         Iu7MJR5nlcy6IiAbEOY85v2TdWUEzKPuUJWjtl8T9rnQcqaycbgcNc4B/Vj0ygtmy0Vj
         +hv6haZKlkvn+FYd13CP7d1yFEXFHxxPnve41JeSPOAH7k4B0OoU1p8spetvx8pIKiEg
         edeMOluZLr/r8rPVyx4knXuj1hNW+GDKohTsLX9zpp4FgAs5Io/CDtmAYzAJhv4vYEqg
         smhA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :content-transfer-encoding:in-reply-to:user-agent:date:message-id
         :from:references:cc:to:subject:sender:dkim-signature;
        bh=m7MYkcX8wsBjHPt0TFn0lV8RJmpe3DV9Th9CviJISww=;
        b=W7bcApAsWJK59LuRdsEgTvKCVhpneSwWeBXa5fhvHbFlbVV3Ax2CW8qF4523+dUQIC
         yge7SeMkvqzq+NRFfEy0tisjMUY7otHEl4ny65evZPR1wRxkYPBAWEfhmdanYSgrRYZv
         2s8+Y2UBXHYs9+V5na91M1wSUT/jlB/Znwc7EDaogvjRJ988Go9A+Z5U0udH6MG2vvuI
         XQx0GDxFJbnJ9HthYqcdsPipOeuNnQKqFHdVd+cYXwQM+bCyzHg/oyN8ZszzyR4LUQHI
         rjdRe295hFc7rsh30iA8cr0nBi4jj/geDAJoz8N1fK6S3+C5xN/9fxP+7qGbBGJrBbMO
         cwJA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=PD4jtv6G;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.75.58 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m7MYkcX8wsBjHPt0TFn0lV8RJmpe3DV9Th9CviJISww=;
        b=BQ9of1ZWhszzGPI/Bz6IbrxjtmhsLRKNuwAltaPv7WAEBLbR1siGFkIDKZUbABSKfn
         KijBbwMvOA2YQ6/pNOijDb2KaR01IyW1UtI+JS7EX5x4VmD2WVCWb0aKVoysR8KWxKKd
         UHWqDZaR8yWxRPqhzddi46GvQ7AKwCFGrwva6vbCB1xn4R/rgrSmAfQXkSmw++EFXsBY
         i93gk7dzSdo7hOwIC+ZGJ3GpcBubFS2+YbFfrOP7s7f1ANsk/4780221x0TOc5ceAnUI
         kiSB35u6/M8dKxj9Ky9GXKzeF2ivp/Kj4nt4+Y1tHaD4YAP615MsKdJ220cLHRU9utLg
         Vp6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-transfer-encoding
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m7MYkcX8wsBjHPt0TFn0lV8RJmpe3DV9Th9CviJISww=;
        b=RsWPM5ofagJ/QnH4D5NV5dV+pqRjq95tSdf0ANur+Xy8BVYEdE8CBbLbF9q6MpqrZJ
         JyPEUPUO78VuN6EgQFLU/+w1WLT/N2WjmQXHkNTFWoakcmXNaBj+GWfP5zRtM0HogRKi
         ALdxTJOEbl9+qXIYGeFsjH4+tU17TtYIvE9jD9TbvNlEYRHwF9lC79IZenwU3oNAcxp4
         iqyQQ3GBReP+jXKr1JANER2W7elar2CPssZPm3Ik3+BIPezyGhQfzzwVxsMbCH68PbR8
         pPVMi80sk95hvYCZm34DxERRx8Ot9yN5LLzd4Am2DVDibz7QmP1CznjPTTE+AvAX9Fd0
         BUMg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVGFRZA5JCCUi3+++kDLq82b0mTGb0CrlRPDFSgQq2BdMA4rnui
	NyTG0jKYpDk20S6w4J2pp1A=
X-Google-Smtp-Source: APXvYqyLNhXERRZ55S/ztgOy5mrrD/dk9KvlLxkDc2v9ymvtC/wr3JT1mFl1OCwJfBmLjvPp2Y3Frw==
X-Received: by 2002:aca:b805:: with SMTP id i5mr3677814oif.110.1574773824758;
        Tue, 26 Nov 2019 05:10:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1618:: with SMTP id g24ls1407870otr.13.gmail; Tue,
 26 Nov 2019 05:10:24 -0800 (PST)
X-Received: by 2002:a9d:3b26:: with SMTP id z35mr24972805otb.355.1574773824468;
        Tue, 26 Nov 2019 05:10:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574773824; cv=pass;
        d=google.com; s=arc-20160816;
        b=iCtu3TINP3FFE08lwkrHhI26QT4ICpszJEDcZSQaSazsqwPPMCkOQZHAy8pzhkiNA+
         7g/3oeOFfRYxHS5x2O8MeSB6w3AtrugT4chBTZv+dBhRxe0JtLmlNoP5mS4O+QQ7qZ7/
         8TLn7ZtZ/9lDUx+AMlhmDLTIWUy8GsEhFmbjnjcu/I3r+2rIg5E/p7gqtOD0t9arW0Hx
         NQ/lCXFzB8dN5j5DJLr9Xs4rcpAfF/ogSkbx6a8vHYZxkJn6mJUcjYznRnIdWoZhZMHv
         9zc8bH9rh24RKFW1uX0+/iy90pL8ZFQzpyeFDtX/DZQNgffPeLS4PhiyeahrbBB0gzB2
         Dgkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=QrWLzrJbyculD6NkQ/GQeEyeu0Pf96Mh2AuC0rC48h4=;
        b=iI3h7+761liERNK16cy6511emYOcjdcW3GGPMy+Q614ObROje15QJTr1rv8QY+eNyA
         I0SCYnpo/+RvM+5PJDlk2gRb3YQFUa//+JiQyI9i97mSrQQe50ToVxtq9ba1elkBLZSQ
         /YbJBHobYos6umbt0lYeaKFOJ64YgA/Z0rzU12qArqE1fyi2gi4q5pgh8OsH+7MW8jGw
         hSx5vp2PFlzA0LbmgCDcVbKTtM9zxclaPMo/PjOVdCjSiWwuBrOp2LB6z2YmGif+aOj3
         ir/YENfwjANB3imuQNLLWgC0UPg72667p7AKAoKMvUhr5OlUkkrdpJtiklnqvZBZPoyH
         tDQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=PD4jtv6G;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.75.58 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (mail-eopbgr750058.outbound.protection.outlook.com. [40.107.75.58])
        by gmr-mx.google.com with ESMTPS id 144si374197oii.2.2019.11.26.05.10.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Nov 2019 05:10:24 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.75.58 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.75.58;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D+eDdpsVd+DznZu3GSTtMDGkhQQJdD9nD8EbLZuEmCrnG5wv1jYRVYiDC6U+gOOifi9BOgCrPWTCHZAT/LuyWRpgozDCjbFlK7BxAxZlfcSmMywNTBySLM7Kzib2FVEOcr1Eh+xhvKmWCepgBv4ZLdnd/kPgEwtZQMy0Rr0XuvUOTCSRKpfwvadf7SPmFqZIOpDPyChV7Q4vJb4muoCQpvURa2okNw1EGC6Wq3f8M6epQQ7SNsDrcY8PTp8ELAe17nTJKzegdeXjc6EGWU8Hfveci8lmx2C2q6rUb3xE74W5wye7JZDFxxZewYnAgQ+ex0lnBys4WRNE8M2Lc1iOjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QrWLzrJbyculD6NkQ/GQeEyeu0Pf96Mh2AuC0rC48h4=;
 b=leabm+Fd6VhtMa9TpimwJRf1XLPrvvQvhKqWX3fdXhfZYrm+3WtFebQ41yJP3XJXpqa021Bcq4mBYioPKDlyIcskFBZRCqh8yIR2zCBcnqENIH+c0JKsH1v6tsBlRaYyCRJmsKTQYtFznHMmrF6Ca4j9Qck6F5phwwbXwF+4OY3CS/7VVFZk8s58mmeyyBx9uFWuXRlnMO5aQ5majbk7ghaahAkCtdSa73v3b13yulw3KNn8XkDXKGoAa2mUX9WJS5W/xpGoEY5OBiyeF9OZ+Z/jtuyOyyydW42H9kItImnZNCYs+qx5TNaSTV/UIyto4OE3a72g5H7WL0+PwhPI6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (20.178.244.22) by
 MN2PR12MB3485.namprd12.prod.outlook.com (20.178.242.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Tue, 26 Nov 2019 13:10:20 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::b927:9d83:f11:941b]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::b927:9d83:f11:941b%6]) with mapi id 15.20.2474.023; Tue, 26 Nov 2019
 13:10:20 +0000
Subject: Re: Fwd: [PATCH] NTB: Fix an error in get link status
To: Jiasen Lin <linjiasen@hygon.cn>
Cc: "S-k, Shyam-sundar <Shyam-sundar.S-k@amd.com> Dave Jiang"
 <dave.jiang@intel.com>, Arindam Nath <arindam.nath@amd.com>,
 Allen Hubbe <allenbh@gmail.com>, linux-kernel
 <linux-kernel@vger.kernel.org>, linux-ntb <linux-ntb@googlegroups.com>,
 linjiasen007@gmail.com
References: <1573119336-107732-1-git-send-email-linjiasen@hygon.cn>
 <CAPoiz9wAJz=Hqb6Os=9AHHv_NGpZ8uCaAuOC=aUTkASKdfs9WQ@mail.gmail.com>
 <933f74c7-7249-618c-13dc-9e4e47ad75d7@hygon.cn>
 <11b355a8-0fe0-f256-c510-ddf106017703@hygon.cn>
 <CAADLhr7bpb-F0eF1UFXy7AcN=z061mno_QsqGE8z-mvWKvUyCQ@mail.gmail.com>
 <04b4d1ed-ea47-819e-a7e4-b729fa463506@amd.com>
 <5c3155b5-6eed-d955-b18b-59b0cb1c513b@hygon.cn>
 <740bb924-b258-8dda-6469-bc1bee90291f@hygon.cn>
From: Sanjay R Mehta <sanmehta@amd.com>
Message-ID: <c5adca66-024f-8d37-3187-ffba73102ac4@amd.com>
Date: Tue, 26 Nov 2019 18:40:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
In-Reply-To: <740bb924-b258-8dda-6469-bc1bee90291f@hygon.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-ClientProxiedBy: MAXPR0101CA0012.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:c::22) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-Originating-IP: [165.204.157.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3ce53380-5afc-459b-e90f-08d77271fd0d
X-MS-TrafficTypeDiagnostic: MN2PR12MB3485:|MN2PR12MB3485:|MN2PR12MB3485:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB3485D39F41B4DB77D95F875AE5450@MN2PR12MB3485.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 0233768B38
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(189003)(199004)(2616005)(31686004)(11346002)(446003)(6116002)(3846002)(50466002)(25786009)(36756003)(66946007)(186003)(4326008)(6512007)(8676002)(6666004)(305945005)(7736002)(6862004)(66476007)(66556008)(81156014)(81166006)(23676004)(2486003)(66066001)(52116002)(6506007)(6246003)(8936002)(386003)(76176011)(6436002)(31696002)(316002)(2906002)(47776003)(58126008)(2870700001)(478600001)(14454004)(26005)(99286004)(65956001)(65806001)(229853002)(5660300002)(6486002);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3485;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mJZBS0upws9jJneNjNyucXyEqMgwzo7VXUTYGS9RX7u4tSWqUxNObxa6m3Wm4WKHAQyUFJoiiecgjOmToRW/2164nscausnd5L67YwbAhT9RSIGEk7UQMuC86zWWPaBUQcKMFKv7mz7O1XM427xA05JjDn5zPRSnpvVzJlpU6OH9tSbFbxQcfH6jXjmXijCMMwv+ZGSBui6VF+gsQe2wJcMlZGTPgbGVZjZ/1F8GpCitwHx52sWQi89qi/+lwKgXyvO7NAAgglj02zbyhOx+pfkUGP0QyMPXE/n8wdNc1WFiM9h2Nk/5v9HowNMmBygQF7qRgiZoxVzqPMfIIbXePz1bvMC7AFJTd4H/kf7MQEnHF90tMf+U0dqO8yqEHqPPfYuWUUUTMZtbbADE6SfeVQi7p8KMudo6/jDl5IA0eRY9UJbFfIolKzRW0gkspx9Z
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ce53380-5afc-459b-e90f-08d77271fd0d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2019 13:10:20.2900
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ItIRLWATrP9tJa9+u/LAue+DDceLmc1Y5Pjsc0XjP/w9n+E8u+bCVMR7Xrey9VRNi/zWTVc7cei2ehO1GvYR2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3485
X-Original-Sender: sanmehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=PD4jtv6G;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.75.58 is neither permitted nor denied by best guess
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


> Hi Sanjay R Mehta
>
> In more complex topology, read the Link Status and Control register of
> RP is also wrong. Suppose that a PCIe switch bridge to the Secondary RP,
> and Secondary internal SW.ds is a child device for switch's downstream
> port as illustrated in the following topology.
>
> In secondary PCI domain:
> Secondary RP--Switch UP--Switch DP--Secondary internal SW.us--Secondary
> internal SW.ds--Secondary NTB
>
> pci_rp =3D pci_find_pcie_root_port(ndev->ntb.pdev) will return the
> Secondary RP, and pcie_capability_read_dword(pci_rp,
> PCI_EXP_LNKCTL,&stat) will get the link status between Secondary RP and
> Switch UP. Maybe, read the Link Status and control register of Secondary
> internal SW.us is appropriate.
>
Hi Jiansen Lin,

I modified the code as per your suggestion and is working fine.
Adding Arindam for comments who was the co-author of the patch I was about =
to send for upstream review.

Thanks,
Sanjay Mehta
> struct pci_dev *pci_up =3D NULL;
> struct pci_dev *pci_dp =3D NULL;
>
> if (ndev->ntb.topo =3D=3D NTB_TOPO_SEC) {
> =C2=A0=C2=A0=C2=A0 /* Locate the pointer to Secondary up for this device =
*/
> =C2=A0=C2=A0=C2=A0 pci_dp =3D pci_upstream_bridge(ndev->ntb.pdev);
> =C2=A0=C2=A0=C2=A0 /* Read the PCIe Link Control and Status register */
> =C2=A0=C2=A0=C2=A0 if (pci_dp) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pci_up =3D pci_upstream_bridge(pci_d=
p);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (pci_up) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 rc =3D pcie_capability_read_dword(pci_up, PCI_EXP_LNKCTL,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &stat);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if (rc)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 }
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
> }
>
> Thanks,
> Jiansen Lin
>
>> I have modified the code according to your suggestion and tested it
>> on Dhyana platform, it works well, expect to receice your patch.
>>
>> Before modify the code, read the Link Status and control register of the
>> secondary NTB device to get link status.
>>
>> cat /sys/kernel/debug/ntb_hw_amd/0000\:43\:00.1/info
>> NTB Device Information:
>> Connection Topology -=C2=A0=C2=A0 NTB_TOPO_SEC
>> LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 0x11030042
>> Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Up
>> Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 PCI-E Gen 3
>> Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 x16
>>
>> After modify the code, read the Link Status and control register of the
>> secondary RP to get link status.
>>
>> cat /sys/kernel/debug/ntb_hw_amd/0000\:43\:00.1/info
>> NTB Device Information:
>> Connection Topology -=C2=A0=C2=A0 NTB_TOPO_SEC
>> LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 0x70830042
>> Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Up
>> Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 PCI-E Gen 3
>> Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 x8
>>
>> Thanks,
>> Jiasen Lin
>>
>>> ---
>>> =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.c | 27 +++++++++++++++++++++++----
>>> =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.h |=C2=A0 1 -
>>> =C2=A0 2 files changed, 23 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c
>>> b/drivers/ntb/hw/amd/ntb_hw_amd.c
>>> index 14ad69c..91e1966 100644
>>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
>>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
>>> @@ -842,6 +842,8 @@ static inline void ndev_init_struct(struct
>>> amd_ntb_dev *ndev,
>>> =C2=A0 static int amd_poll_link(struct amd_ntb_dev *ndev)
>>> =C2=A0 {
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 void __iomem *mmio =3D ndev->peer_mmio;
>>> +=C2=A0=C2=A0=C2=A0 struct pci_dev *pci_rp =3D NULL;
>>> +=C2=A0=C2=A0=C2=A0 struct pci_dev *pdev =3D NULL;
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 reg, stat;
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int rc;
>>> @@ -855,10 +857,27 @@ static int amd_poll_link(struct amd_ntb_dev *ndev=
)
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->cntl_sta =3D reg;
>>> -=C2=A0=C2=A0=C2=A0 rc =3D pci_read_config_dword(ndev->ntb.pdev,
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 AMD_LINK_STATUS_OFFSET, &stat);
>>> -=C2=A0=C2=A0=C2=A0 if (rc)
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>>> +=C2=A0=C2=A0=C2=A0 if (ndev->ntb.topo =3D=3D NTB_TOPO_SEC) {
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Locate the pointer to PC=
Ie Root Port for this device */
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pci_rp =3D pci_find_pcie_ro=
ot_port(ndev->ntb.pdev);
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Read the PCIe Link Contr=
ol and Status register */
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (pci_rp) {
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =
=3D pcie_capability_read_dword(pci_rp, PCI_EXP_LNKCTL,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 &stat);
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(rc)
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return 0;
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>>> +=C2=A0=C2=A0=C2=A0 } else if (ndev->ntb.topo =3D=3D NTB_TOPO_PRI) {
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * For NTB primary, we=
 simply read the Link Status and control
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * register of the NTB=
 device itself.
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pdev =3D ndev->ntb.pdev;
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pcie_capability_read=
_dword(pdev, PCI_EXP_LNKCTL, &stat);
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (rc)
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn 0;
>>> +=C2=A0=C2=A0=C2=A0 }
>>> +
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->lnk_sta =3D stat;
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 1;
>>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h
>>> b/drivers/ntb/hw/amd/ntb_hw_amd.h
>>> index 139a307..39e5d18 100644
>>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.h
>>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
>>> @@ -53,7 +53,6 @@
>>> =C2=A0 #include <linux/pci.h>
>>> =C2=A0 #define AMD_LINK_HB_TIMEOUT=C2=A0=C2=A0=C2=A0 msecs_to_jiffies(1=
000)
>>> -#define AMD_LINK_STATUS_OFFSET=C2=A0=C2=A0=C2=A0 0x68
>>> =C2=A0 #define NTB_LIN_STA_ACTIVE_BIT=C2=A0=C2=A0=C2=A0 0x00000002
>>> =C2=A0 #define NTB_LNK_STA_SPEED_MASK=C2=A0=C2=A0=C2=A0 0x000F0000
>>> =C2=A0 #define NTB_LNK_STA_WIDTH_MASK=C2=A0=C2=A0=C2=A0 0x03F00000
>>>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/c5adca66-024f-8d37-3187-ffba73102ac4%40amd.com.
