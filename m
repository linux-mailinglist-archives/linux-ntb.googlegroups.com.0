Return-Path: <linux-ntb+bncBAABBM4U2XXAKGQECCVHTII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id A917E103D05
	for <lists+linux-ntb@lfdr.de>; Wed, 20 Nov 2019 15:14:12 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id w1sf7344885lfc.8
        for <lists+linux-ntb@lfdr.de>; Wed, 20 Nov 2019 06:14:12 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1574259252; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCjavFF64nZHu97wesdaEmwdzI+xNiXKOrjGYWL97QWCRvI0izD4EYyXNmkthoSmcc
         wL8IHKbvxhICUsme8/pTuc9V633IliypC6nCUHiVsxRQzqQR1L+E0Q0+w9LF1PDqR4K9
         f7xu/wCcsvkQKhbg6M21JeywS9NjzJh9mdSR+sB3XGEXT7uDxoQtT/K/Jv7vNvL3Xx88
         mRNvoNhRpvquH5lXkcOiCbkOzgY9MRMjLCXlOpmNLrnM7N0sF2sSNsH0mxXEqkbeS1Hp
         Se1CPefA8LJ/nDsDNZ1qGHc5sRCNbSSYtSU4QxA96brUIs5kcEDPcGcia4t72DaCnCMx
         376w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :content-transfer-encoding:in-reply-to:user-agent:date:message-id
         :from:cc:references:to:subject:sender:dkim-signature;
        bh=SC6A1lZI8wArqrKuLBSlnYlHkhUGzDNAub3z4w2Hh8g=;
        b=MNHjHemHp+x2L8VwycdWRscejAhhif2e6WcpC5ViuC/RXCiLm/zzioaHYp2dMHqAh3
         Y+oeTBx8ezG8v+kX0ABwcZ0Dg5g5uoYsk5gUhaMtZfzClGVOCi5Dgx7TK7eYOPoi72Yd
         dskEhHt+yD2kuljNQVrFu+R3QCAY8kSHv1n2pyHhNG8nS/HS6xbZPLRQbRpMfvdWrHhb
         lfzh0bhim4isyXDLgbzFRufEbZfetwkl9UvHXsqWisTeFw+GrFe3XYLwyJ4GRpZ5mh1r
         MzxXqeMlQJ1ErrgSKzExYYkmtNQakQIq6z1dZaJvWUjDo0ukhL5Vx53NAkgYs04E8vm0
         Gpgg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=vr8kWfiD;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.80.84 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :in-reply-to:content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SC6A1lZI8wArqrKuLBSlnYlHkhUGzDNAub3z4w2Hh8g=;
        b=DNQUIKGBYptXqUrWwM5caN+VHmViawD1ubpA8AwU3sm0Oc1q4hMONpB3toHdz1BrU+
         hLxmPSQMI+Z2xtXCH4Cm/vVpnU9V11WgyofNgfo3UvEj+Di8Fc/k3w1L3I4wyvDMkEOS
         xmmtK/G7v1w9OMUjwPS5HNlJjjgXnOStVo3YnHPiTkeY2NGoZmKuNLjGTnmEwozu+9Oz
         YeYKK5GHmDvbsl2RSommk4DOCWXxgDqsEkvWvAyEtTl/EW9n9nQaKYXLX8BUIKWWDH93
         mpgFy4eRnhZd2FUbXGI89ipdcwVtd5NpSDWgIrt086UjiqDNEfKS1MJk2013FuupD0lc
         vhfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:in-reply-to:content-transfer-encoding
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SC6A1lZI8wArqrKuLBSlnYlHkhUGzDNAub3z4w2Hh8g=;
        b=uWzES9rmRCdU8QW6SZCo7j46dcgXMM3Qu5leKW2SrcqMmJTYaQ2kGlookjq8UOpApN
         NVR0CEwDq65m2pbfs2gbhnXMMqXvGfM2QCY+PE9Gg8Wyxo5aGwcd7rFw4ssQs7ZxRp74
         JykRr6c59EHg1GUWyY1opI3EOgfAe+EV3DeNfQqzHr5FYOMGuM136J1ZI+Ta75JioDti
         pwLxwpoA/5zs9mq7/cdOYKREPGBRaxCA0urjotGnFfg3yV2UjZ+/Qe4EOt2S8PejX5Da
         nC7OvH6OQA5v9wuMHVg1zTKTF3PnEZCEiHlNwHnKg+lNi5nENf/3t3OE2TRVx6bhs+yQ
         bZ5A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWKMEeWQI5vvk0eiyK9TyRi/M9YQN30+g5VupSp9D/iuFw0QGpm
	SOtP13gDtowzFLLCsarCO38=
X-Google-Smtp-Source: APXvYqwAD7GkKmRXitr5KgOVbtFrCFTEVCEstIQLR1OounlmGKTpek/v3cGo2aEbIYgeeU7wZbdyvw==
X-Received: by 2002:a2e:300d:: with SMTP id w13mr3032405ljw.117.1574259252142;
        Wed, 20 Nov 2019 06:14:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:8ed1:: with SMTP id e17ls331373ljl.2.gmail; Wed, 20 Nov
 2019 06:14:11 -0800 (PST)
X-Received: by 2002:a2e:63c9:: with SMTP id s70mr3037220lje.73.1574259250287;
        Wed, 20 Nov 2019 06:14:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574259250; cv=pass;
        d=google.com; s=arc-20160816;
        b=cgmO5liwaQyOsyWwUzV97DXPUQ/8cwL32jTGKxzPYk97CVtAJljU8uUPq9qWPLkc3Q
         QQ1QWcIZrOtwfdEILZD96IvL4vgkzZWCMx522FIa36nLYMQ/NbCvliNXN+ZiMSnu/tO1
         siyMfxqRS4CMZ+bdALiG5OXIBvUzzv9hIGKwu1OnPh3YI0aotBzS/mGk9efkukABtPUm
         NzGgKWIuvNnOLnZ4aTLWSWBY4er3y25nn70RRVnTEMYs5n4PrS52KTSRSN8ttU2lnLVZ
         zaTskWaCyUQFDk1lklV+jpIVn5k3+agVA2kLd42oGB3A3WdLzo4zVAal9etmtS5xZ0Pr
         roRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:from:cc:references:to:subject
         :dkim-signature;
        bh=frxBKfp14rXQvS9lqrGdzI2iWgh6yqJfwOX1JJkSd6Y=;
        b=HNTbdeC+aQ36eQyOZ+i5qXv1Q81WUHCIdOrk2IfFiqABGOAa37XCK4luY9CF7cDaaD
         YxuxTwE7g/eqqYYmfH2zofP4JrqXSPiUttZjZAZGOuybfYx1TWPOhji/ht7AN8uAve8F
         k6KWPxMuS440BN1H0+/pJ3VB3l+W+VbZK3YdKw9wfovgFePIeEdKujOOHpnQMq+BjuAj
         i6r7hPfTtkEphk5NhXoxxrbDAdEEZwhNGXOm6F/ZNCwUXp3Erv1ZBOqxjflZ5ddp80UY
         o7Y2QTnGBtHG/m0NOv2REhZqgg+gOaIg5r0XafcIqyNxgUXzsLVqpfWF+bR/z3Kn5u1F
         O9kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=vr8kWfiD;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.80.84 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (mail-eopbgr800084.outbound.protection.outlook.com. [40.107.80.84])
        by gmr-mx.google.com with ESMTPS id c17si1285488ljb.3.2019.11.20.06.14.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Nov 2019 06:14:09 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.80.84 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.80.84;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EDADVazm5402/tObaJ1yuS2lZj20VU0IQJZYZgUQ/gFhT7jw+DTzlRn6E9mP7revcJ30Azdp103oUiZV0wIvkgFg5gfzVfvn94mh6hxkXg2XqN7W5L1dXNfCF+jePvVGJpJ49WO+EWoknw9wzM2A4w9m+EhPkYWGDveDJkm+QWbAMTEF63QXpSJo1PzH3Lh3OzOn6SIbe1w1lyRV6nEnZ8G1OPXI1WZcDMExdXwdRdZLI7FMGd/tst6pPXH7wl9yvnyC2GxO+ohmIV1YaWInIBLKXXVk0G+o8NO/FE1asFtcd8rsIq8poJkmKyT0wHO3KE1Rllf5IRXPSwdtOiYb7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=frxBKfp14rXQvS9lqrGdzI2iWgh6yqJfwOX1JJkSd6Y=;
 b=LgNi1pqUQaQzpN0mjzhvSduwpHgCidPLZr1D1ZVMxefROfenowhao7E+O47K81JnRuWhxY4Hpf2tRIAnDLuByRX6HW2E2ooH3vaL30uzw3mJyPr/F0oJ0lXoBeGCfB9LiAYH24+1pNCAP3YINInWjSkGjPCpZ6r5YJ7udAGsXyyLuon2MFLkrd5FIMzkjKSdTFwFIOzUuByfXgxUrL84nwqsdMHYbh6eg+g6+MKA363VjHFqZQWMQkpDBS9O4NJta5fQ2o6V8kbZeUOu61RjHMawM2H0jgcGP47TYqA2R+19k+Yks+LQ3jsfYw3kF0wG4yDD2snt+bjA1ZWvBAglMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (20.178.244.22) by
 MN2PR12MB3101.namprd12.prod.outlook.com (20.178.241.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 20 Nov 2019 14:14:06 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::b927:9d83:f11:941b]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::b927:9d83:f11:941b%6]) with mapi id 15.20.2474.015; Wed, 20 Nov 2019
 14:14:05 +0000
Subject: Re: Fwd: [PATCH] NTB: Fix an error in get link status
To: Jiasen Lin <linjiasen@hygon.cn>
References: <1573119336-107732-1-git-send-email-linjiasen@hygon.cn>
 <CAPoiz9wAJz=Hqb6Os=9AHHv_NGpZ8uCaAuOC=aUTkASKdfs9WQ@mail.gmail.com>
 <933f74c7-7249-618c-13dc-9e4e47ad75d7@hygon.cn>
 <11b355a8-0fe0-f256-c510-ddf106017703@hygon.cn>
 <CAADLhr7bpb-F0eF1UFXy7AcN=z061mno_QsqGE8z-mvWKvUyCQ@mail.gmail.com>
Cc: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-ntb <linux-ntb@googlegroups.com>, linjiasen007@gmail.com
From: Sanjay R Mehta <sanmehta@amd.com>
Message-ID: <04b4d1ed-ea47-819e-a7e4-b729fa463506@amd.com>
Date: Wed, 20 Nov 2019 19:43:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <CAADLhr7bpb-F0eF1UFXy7AcN=z061mno_QsqGE8z-mvWKvUyCQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-ClientProxiedBy: MAXPR0101CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:e::28) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-Originating-IP: [165.204.157.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 81ff98d5-d8dd-4224-f1ff-08d76dc3e6e9
X-MS-TrafficTypeDiagnostic: MN2PR12MB3101:|MN2PR12MB3101:
X-MS-Exchange-PUrlCount: 3
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB31014B635D1DA353AFD65B4CE54F0@MN2PR12MB3101.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 02272225C5
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(346002)(39860400002)(376002)(366004)(396003)(189003)(199004)(229853002)(76176011)(36756003)(2616005)(316002)(2870700001)(58126008)(446003)(305945005)(47776003)(23676004)(5660300002)(11346002)(4326008)(52116002)(2486003)(6512007)(6306002)(6246003)(6862004)(478600001)(65956001)(6486002)(66066001)(65806001)(476003)(8936002)(99286004)(6666004)(3846002)(6116002)(6506007)(53546011)(54906003)(81166006)(386003)(81156014)(8676002)(31686004)(186003)(486006)(50466002)(26005)(66946007)(66476007)(66556008)(14444005)(14454004)(7736002)(966005)(25786009)(6436002)(2906002)(31696002);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3101;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hczpjcLckyFBdD/y0nZIZXTN0u6TyYhBNl6ONCi94l+0kRGSSCrhea9ktT0Ju+zhK4lnrj6ibwq3vIA5NHemafO2ZSPt8kFEuSJi8FXOXmRqv4VlAfC+OKjjW5OzCe2qS3Lwqo+VzZ0veB+ng3QMWMudy3cu9D7jES7xX24jIwRLv9DEt4zJdd5asYrFMQHFJGo6UEfJAVAGsRJrtoA9kBUVCJLjgrpMrb3mU7qKmGYqxUMGUvngk9YjLZWJct+XU3zheDwCwuYJVOBULkp9jrfOGnGpu0pzNvRJIZnBcruJhx+SgXLoaryeaaMtXGPvEWaxTbmYhm40MqqjxO4dfXH+4z3hN0qrUqGTNiSwV8dy9kYwT/FJad5mdCb3j917r4c7aB+z9kLAY88NxX75Yor2VQccvQKvgafNvM7+Z8QvFtjyL18c/PH2OIV4enNLM7TidE82eWJzC6nqCVN+Ih48Qwv63Z2lRYfhV4fx38Y=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81ff98d5-d8dd-4224-f1ff-08d76dc3e6e9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2019 14:14:05.7995
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: drWl+hjKFQ+WBVOa+/aISvaqB+edwF5i4QEfoPmHwf5F4vT+RDSVD16HJrdoLtn4SP7r7JWz/0+TYDuLCse+GA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3101
X-Original-Sender: sanmehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=vr8kWfiD;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.80.84 is neither permitted nor denied by best guess
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

From: *Jiasen Lin* <linjiasen@hygon.cn <mailto:linjiasen@hygon.cn>>
> Date: Wed, Nov 20, 2019 at 3:25 PM
> Subject: Re: [PATCH] NTB: Fix an error in get link status
> To: Jon Mason <jdmason@kudzu.us <mailto:jdmason@kudzu.us>>
> Cc: S-k, Shyam-sundar <Shyam-sundar.S-k@amd.com <mailto:Shyam-sundar.S-k@=
amd.com>>, Dave Jiang <dave.jiang@intel.com <mailto:dave.jiang@intel.com>>,=
 Allen Hubbe <allenbh@gmail.com
> <mailto:allenbh@gmail.com>>, linux-kernel <linux-kernel@vger.kernel.org <=
mailto:linux-kernel@vger.kernel.org>>, linux-ntb <linux-ntb@googlegroups.co=
m <mailto:linux-ntb@googlegroups.com>>,
> <linjiasen007@gmail.com <mailto:linjiasen007@gmail.com>>, Jiasen Lin <lin=
jiasen@hygon.cn <mailto:linjiasen@hygon.cn>>
>
>
>
>
> On 2019/11/18 18:17, Jiasen Lin wrote:
> >
> >
> > On 2019/11/18 7:00, Jon Mason wrote:
> >> On Thu, Nov 7, 2019 at 4:37 AM Jiasen Lin <linjiasen@hygon.cn <mailto:=
linjiasen@hygon.cn>> wrote:
> >>>
> >>> The offset of PCIe Capability Header for AMD and HYGON NTB is 0x64,
> >>> but the macro which named "AMD_LINK_STATUS_OFFSET" is defined as 0x68=
.
> >>> It is offset of Device Capabilities Reg rather than Link Control Reg.
> >>>
> >>> This code trigger an error in get link statsus:
> >>>
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat /sys/kernel/debu=
g/ntb_hw_amd/0000:43:00.1/info
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x8fa1
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Up
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI-E Gen 0
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x0
> >>>
> >>> This patch use pcie_capability_read_dword to get link status.
> >>> After fix this issue, we can get link status accurately:
> >>>
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat /sys/kernel/debu=
g/ntb_hw_amd/0000:43:00.1/info
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x11030042
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Up
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI-E Gen 3
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x16
> >>
> >> No response from AMD maintainers, but it looks like you are correct.
> >>
> >> This needs a "Fixes:" line here.=C2=A0 I took the liberty of adding on=
e to
> >> this patch.
> >>
> >
> > Thank you for your suggestions. Yes, this patch fix the commit id:
> > a1b3695 ("NTB: Add support for AMD PCI-Express Non-Transparent Bridge")=
.
> >
> >>> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn <mailto:linjiasen@hygon=
.cn>>
> >>> ---
> >>> =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.c | 5 +++--
> >>> =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.h | 1 -
> >>> =C2=A0 2 files changed, 3 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c
> >>> b/drivers/ntb/hw/amd/ntb_hw_amd.c
> >>> index 156c2a1..ae91105 100644
> >>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
> >>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
> >>> @@ -855,8 +855,8 @@ static int amd_poll_link(struct amd_ntb_dev *ndev=
)
> >>>
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->cntl_sta =3D r=
eg;
> >>>
> >>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pci_read_config_dword(nd=
ev->ntb.pdev,
> >>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 AMD_LINK_STATUS_O=
FFSET, &stat);
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pcie_capability_read_dwo=
rd(ndev->ntb.pdev,
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI_EXP_LNKCTL, &=
stat);
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (rc)
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->lnk_sta =3D st=
at;
> >>> @@ -1139,6 +1139,7 @@ static const struct ntb_dev_data dev_data[] =3D=
 {
> >>> =C2=A0 static const struct pci_device_id amd_ntb_pci_tbl[] =3D {
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE(AMD, 0=
x145b), (kernel_ulong_t)&dev_data[0] },
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE(AMD, 0=
x148b), (kernel_ulong_t)&dev_data[1] },
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE(HYGON, 0x145b), (=
kernel_ulong_t)&dev_data[0] },
> >>
> >> This should be a separate patch.=C2=A0 I took the liberty of splitting=
 it
> >> off into a unique patch and attributing it to you.=C2=A0 I've pushed t=
hem
> >> to the ntb-next branch on
> >> https://github.com/jonmason/ntb
> >>
> > Thank you for your comment. We appreciate the time and effort you have
> > spent to split it off, I will test it ASAP.
> >
> >> Please verify everything looks acceptable to you (given the changes I
> >> did above that are attributed to you).=C2=A0 Also, testing of the late=
st
> >> code is always appreciated.
> >>
> >> Thanks,
> >> Jon
> >>
>
> I have tested these patches that are pushed to ntb-next branch, they
> work well on HYGON platforms.
>
> Thanks,
> Jiasen Lin

Hi Jiasen Lin,

Apologies for my delayed response. I was on vacation.

Your patch is a correct fix, but that would work only for primary system.

The design of AMD NTB implementation is such that NTB primary acts as an en=
dpoint device and NTB secondary is a PCIe Root Port (RP). Considering that,
the link status and control register needs to be accessed differently based=
 on the NTB topology.

So in the case of NTB secondary, we read the link status and control regist=
er of the PCIe RP capabilities structure and in the case of NTB primary, we=
 read the
link status and control register from NTB device capabilities structure.

The code below is the proper fix for AMD platform. I will be sending increm=
ental change above your patch.

would appreciate if you could test my patch and let me know whether that wo=
rks for you.

---
=C2=A0drivers/ntb/hw/amd/ntb_hw_amd.c | 27 +++++++++++++++++++++++----
=C2=A0drivers/ntb/hw/amd/ntb_hw_amd.h |=C2=A0 1 -
=C2=A02 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_am=
d.c
index 14ad69c..91e1966 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -842,6 +842,8 @@ static inline void ndev_init_struct(struct amd_ntb_dev =
*ndev,
=C2=A0static int amd_poll_link(struct amd_ntb_dev *ndev)
=C2=A0{
=C2=A0=C2=A0=C2=A0=C2=A0 void __iomem *mmio =3D ndev->peer_mmio;
+=C2=A0=C2=A0=C2=A0 struct pci_dev *pci_rp =3D NULL;
+=C2=A0=C2=A0=C2=A0 struct pci_dev *pdev =3D NULL;
=C2=A0=C2=A0=C2=A0=C2=A0 u32 reg, stat;
=C2=A0=C2=A0=C2=A0=C2=A0 int rc;
=C2=A0
@@ -855,10 +857,27 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0 ndev->cntl_sta =3D reg;
=C2=A0
-=C2=A0=C2=A0=C2=A0 rc =3D pci_read_config_dword(ndev->ntb.pdev,
-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0 AMD_LINK_STATUS_OFFSET, &stat);
-=C2=A0=C2=A0=C2=A0 if (rc)
-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return 0;
+=C2=A0=C2=A0=C2=A0 if (ndev->ntb.topo =3D=3D NTB_TOPO_SEC) {
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /* Locate the pointer to PCIe Root P=
ort for this device */
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 pci_rp =3D pci_find_pcie_root_port(n=
dev->ntb.pdev);
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /* Read the PCIe Link Control and St=
atus register */
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (pci_rp) {
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 rc =3D pcie_capab=
ility_read_dword(pci_rp, PCI_EXP_LNKCTL,
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &stat);
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (rc)
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 return 0;
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }
+=C2=A0=C2=A0=C2=A0 } else if (ndev->ntb.topo =3D=3D NTB_TOPO_PRI) {
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /*
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* For NTB primary, we simply r=
ead the Link Status and control
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* register of the NTB device i=
tself.
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0*/
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 pdev =3D ndev->ntb.pdev;
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 rc =3D pcie_capability_read_dword(pd=
ev, PCI_EXP_LNKCTL, &stat);
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (rc)
+=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return 0;
+=C2=A0=C2=A0=C2=A0 }
+
=C2=A0=C2=A0=C2=A0=C2=A0 ndev->lnk_sta =3D stat;
=C2=A0
=C2=A0=C2=A0=C2=A0=C2=A0 return 1;
diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_am=
d.h
index 139a307..39e5d18 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.h
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
@@ -53,7 +53,6 @@
=C2=A0#include <linux/pci.h>
=C2=A0
=C2=A0#define AMD_LINK_HB_TIMEOUT=C2=A0=C2=A0=C2=A0 msecs_to_jiffies(1000)
-#define AMD_LINK_STATUS_OFFSET=C2=A0=C2=A0=C2=A0 0x68
=C2=A0#define NTB_LIN_STA_ACTIVE_BIT=C2=A0=C2=A0=C2=A0 0x00000002
=C2=A0#define NTB_LNK_STA_SPEED_MASK=C2=A0=C2=A0=C2=A0 0x000F0000
=C2=A0#define NTB_LNK_STA_WIDTH_MASK=C2=A0=C2=A0=C2=A0 0x03F00000
--=20
2.7.4

Thanks & Regards
Sanjay Mehta

>
> >>
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { 0, }
> >>> =C2=A0 };
> >>> =C2=A0 MODULE_DEVICE_TABLE(pci, amd_ntb_pci_tbl);
> >>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h
> >>> b/drivers/ntb/hw/amd/ntb_hw_amd.h
> >>> index 139a307..39e5d18 100644
> >>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.h
> >>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
> >>> @@ -53,7 +53,6 @@
> >>> =C2=A0 #include <linux/pci.h>
> >>>
> >>> =C2=A0 #define AMD_LINK_HB_TIMEOUT=C2=A0=C2=A0=C2=A0 msecs_to_jiffies=
(1000)
> >>> -#define AMD_LINK_STATUS_OFFSET 0x68
> >>> =C2=A0 #define NTB_LIN_STA_ACTIVE_BIT 0x00000002
> >>> =C2=A0 #define NTB_LNK_STA_SPEED_MASK 0x000F0000
> >>> =C2=A0 #define NTB_LNK_STA_WIDTH_MASK 0x03F00000
> >>> --
> >>> 2.7.4
> >>>
> >>> --
> >>> You received this message because you are subscribed to the Google
> >>> Groups "linux-ntb" group.
> >>> To unsubscribe from this group and stop receiving emails from it,
> >>> send an email to linux-ntb+unsubscribe@googlegroups.com <mailto:linux=
-ntb%2Bunsubscribe@googlegroups.com>.
> >>> To view this discussion on the web visit
> >>> https://groups.google.com/d/msgid/linux-ntb/1573119336-107732-1-git-s=
end-email-linjiasen%40hygon.cn.
> >>>
> >
> > Thanks,
> >
> > Jiasen Lin
>
> --=20
> You received this message because you are subscribed to the Google Groups=
 "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to linux-ntb+unsubscribe@googlegroups.com <mailto:linux-ntb%2Bunsubs=
cribe@googlegroups.com>.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/linux-ntb/11b355a8-0fe0-f256-c510-ddf106017703%40hygon.cn.

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/04b4d1ed-ea47-819e-a7e4-b729fa463506%40amd.com.
