Return-Path: <linux-ntb+bncBAABBUGY6TYQKGQENMAY26I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E37155466
	for <lists+linux-ntb@lfdr.de>; Fri,  7 Feb 2020 10:22:25 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id q130sf1320894ywh.11
        for <lists+linux-ntb@lfdr.de>; Fri, 07 Feb 2020 01:22:25 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1581067344; cv=pass;
        d=google.com; s=arc-20160816;
        b=ev0/NC0YFcEGYhNA1mMVk4o0mAiI3RP9MhIvFobASbWTg9mcXXNy8nBmZoAo/r/f+C
         5ZYNsoopqgGtmIaavJzWpH5yxp+laWcZyCyhPu18fMli5hzJeeOVPG50hfwlyS9ry5mF
         T9zfP5LjfjCRtZqbbZcUxHa6xlQ2H7DdoZ+yuW90H+XhQ40uB+LsP1yMLEkGLTY9Xel9
         r5E7EunmIboqYpkjUosECd0J6TVvwn/Rl+k7vW4aPufO+6jvZ2w6wL5AV8Zcxk8mHam9
         UlApBcWGgS2FloSzlK5RFI9Zl7bgMUgUDsa6qQRezMlkTttt4MeocVSEdnRs9wHlg1aV
         xqjg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=S5GqOgsq3itaE5rAq9g0hHP4kgQJyk3YPBOBolSr6Zc=;
        b=wfX2C2XIIr2p76fxq6YH12ZDYBR2PttAuEbbVq8xtKpr2BFcwKF/sJlacDFx69N4k0
         xGHYmZGcgOv6Mk5RMepJXJNbcVGKj7ecJoehtxwhpG63dUPd04tGw6fmv4qPtleUxeCc
         y34vgB+xCSF/ZqN3kg4A8XcYmLj+B3Ji5ZH7ScKbBSzDCgLWPX5j+QsZo9DabQrzdQtv
         qs9J1OdtLKsVreeA1qGuiEY8hxEWXkzoYPahQFlDNDIIKXTpLfKk0ufGY9k/kQ+FOLn1
         ck1t9EnaJvY+u7JOTQdbyGmA11JYNUGekflR+8ud43ShTDb3mtLuUuF8gPc23xlgx2Yb
         qjkA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=UDQZ1bHL;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.236.45 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S5GqOgsq3itaE5rAq9g0hHP4kgQJyk3YPBOBolSr6Zc=;
        b=sgH0+u8sf7ren5LGuhOYQj8fQnKt6NG+ThgZsXJ5vvI9zdweiAH+FQtEwwdVONpoIT
         ygeF3TQHe97KxTEdH+RAhtZsPB7ZXNwwpoujvP1/4mCVxyQPZSocWKSON+K/j6my8qHn
         RhvKMVIi/bOOTOb17Rq39vBfDoYCNOe7Y2jPzpyPDCn2l7bv0WtBgSMkEoh0U3K3ZWue
         Jy08ZhSVCrIeULV5+NCWvHTR5/d7KxaIxJzl/z/lcZbMNO/FVWmHBqTsBB9AO63Grf2v
         RzAiV2sz4KHFocgbDp61+DSbvSOOs3OqwhRIdIILubBk9z8YvS5y0DYgNK0ZG1Ifi6Bz
         wc/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S5GqOgsq3itaE5rAq9g0hHP4kgQJyk3YPBOBolSr6Zc=;
        b=EeYlaN8J/SvrTmsIQw+h70rWowvZwh2Mn/c1YkaXhY3J9fHNlLo+KzjVFl65YRvDJE
         DKeH4F6FY+vWO++T6xIoyTh/GD3wRR+YXGA7e40+2qEywMRWddVXw8AgdEenuF6em6Wn
         aWliBtyoSa5H9BV2IHiS7fQElalBZxtPkJ2KUDAmQRaVJJCSgFFtuCcVfKDxYPSnRCSc
         iBXmVX2oiV+mvG50Vz434ikttnzTM+4lpDvsSymtgsvL12cJAZMbeQqR26m7MtBfYXe2
         YKxEyB1LN/FX4g+EBA0IZsX8WuOFc23befTC2+Id/hsrPSIXOdzoIj24XctbfRY+O7vV
         fmnQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUGU2O5CO3C9NhZH5y5Ql10/gn+CZ45bjr+t3x+FZQam+sTjrw8
	C94f5pCVhk92R8qd4lUIDTo=
X-Google-Smtp-Source: APXvYqyWzYEwZ6kpN6xu66pH6BcagUpEVD/AzASoxAlQk9jpYs27P/jFZrutde2l/jxuRgvP1byYzQ==
X-Received: by 2002:a81:9c06:: with SMTP id m6mr6926242ywa.328.1581067344219;
        Fri, 07 Feb 2020 01:22:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0d:fc04:: with SMTP id m4ls2080891ywf.8.gmail; Fri, 07 Feb
 2020 01:22:23 -0800 (PST)
X-Received: by 2002:a81:4896:: with SMTP id v144mr7472993ywa.236.1581067343886;
        Fri, 07 Feb 2020 01:22:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581067343; cv=pass;
        d=google.com; s=arc-20160816;
        b=FkKhDri+HYJwMScp0oaaWJiW5Hi64s8Y6sSekdwPdBuUciauHFYwhyz+2RJAaFWaxi
         g/mCdodo1BykbxXyVb8C0YwXCMoYDanr51jDmoHQpfMH2VqJEam2Mgm9hsGTqB89ZX7r
         Ut8+ehTcCtTWtuizshCWTjUBW7YkbBit7bh5IOXbCMgrYyMrM+G9fab5f6s3lLVFsN7A
         J+ntsB3HJqfIjWt2ORF+I/p9SdaNGwO9ZgMijmom5LKB+HaQAtfyVHKUMF9tC0eIRJvV
         6O+R5HR3SKsLRHInm9jO6aewWckWZq8Vr4cVhq12mP0Ag60EKp8bb74mkPfFOrnnEyKE
         0BLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=07f0cI0GmQTJEGwYTbHa5UJQxIVJ9iQWZdvQaLfpFVo=;
        b=sVikBK6OWdwlGHs9hGlkdhqVfmtwdMYjEqnZqoe3EEi/B+IYUkMZwLKAosVAl0bxpF
         ndEqYi+EgpSZKdWEqaYUr8T4lar7/+CygJELQ258jkZajWm1olglet1TWzopo+mj7uA5
         k7DtHd9v2scwaaEF8QhGQumOm125FUbx1tOum/tkKHLG3ekmt/woM04Pg+fdkYEkirLa
         dh2O+xB8mPqWeCQQuh/hOqvj743b3+DZLS3vHtm/yHuKV3WERZik/FLFlaXDoVBkqtVX
         H9eVRT2vmRta2PxEEBWQddoPj0mM5ekUPjbjB9sH/P/vBCPPSItecMZ5CVkHaVf/3pXa
         k5Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=UDQZ1bHL;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.236.45 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2045.outbound.protection.outlook.com. [40.107.236.45])
        by gmr-mx.google.com with ESMTPS id i200si132156ywa.3.2020.02.07.01.22.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Feb 2020 01:22:23 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.236.45 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.236.45;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QgQUyOfmQMQ6LGgdbfU32xR2AXGMrYI8i76MGg7ln8rGq7/y3CoCzpac3eTT8mYQaUuUx0lsmoszIAoY9wahaQTgnv47f+QsDQ4JsKF0Jp0MXO44SOvV8M9O//QNNOSibJ+VJAReBa244QpaCuDS/vvOagmldSZkV/1l1QHhKwmuxPHyC3lfi6HtT1RhHr93CzCIQjgvMBWM/LVSRjCog6KmOWGsSkgNu8qs+OBtKLpBBumZng8sSdr7neq3O6X6HJ3V9GF5baZlcfrrbU6+mW2E0ZWmcDEo+Q56XRHJi7hq6OF7sV4l+KON4SUlzqv+e2VF4Lpjf8PoqyqS9uZBbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=07f0cI0GmQTJEGwYTbHa5UJQxIVJ9iQWZdvQaLfpFVo=;
 b=X6HMH/WOo+T8lpE83KkjA280bCW93IAxZs3PM58IYNfzeZ5qgWSMhd4Z871CvmVqKNlgCOUoGHBxW4lVFIiyf0Q8j1b6ipdgNCLKPYAGchYSulldVuOqNdIa5ZCekadbRm/TOjSVgY2+r8BhPT3MeGsL84QqobNNH7c9993sJrZE74oEdeBC9o3Ja1cxkQYvk5RD1Sa0rZmFNx5BHUNIEEJvDKNM0DOhfmrcOeejUpsfrV5XU6Pjq8OiVCFPLVm/K16JnRL7jQaEEDh580//ByIUSuaVI9OKuQ5CMK9MeHMTVSDowVLS5WY+vGJMG4wWwB6KWRDc+ijySR+8uyf5VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (20.178.244.22) by
 MN2PR12MB3168.namprd12.prod.outlook.com (20.179.81.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Fri, 7 Feb 2020 09:22:21 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::1900:6cb7:12ff:11c]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::1900:6cb7:12ff:11c%4]) with mapi id 15.20.2707.024; Fri, 7 Feb 2020
 09:22:21 +0000
From: Sanjay R Mehta <Sanju.Mehta@amd.com>
To: Shyam-sundar.S-k@amd.com,
	jdmason@kudzu.us
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Sanjay R Mehta <sanju.mehta@amd.com>
Subject: [PATCH] MAINTAINERS: update maintainer list for AMD NTB driver
Date: Fri,  7 Feb 2020 03:21:58 -0600
Message-Id: <1581067318-103927-1-git-send-email-Sanju.Mehta@amd.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR0101CA0001.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:21::11) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR0101CA0001.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:21::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2707.21 via Frontend Transport; Fri, 7 Feb 2020 09:22:18 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1582d2a2-f224-4aa4-8056-08d7abaf3ba0
X-MS-TrafficTypeDiagnostic: MN2PR12MB3168:|MN2PR12MB3168:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB3168AF361A45AF5198722F23E51C0@MN2PR12MB3168.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-Forefront-PRVS: 0306EE2ED4
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(376002)(346002)(39860400002)(396003)(366004)(136003)(199004)(189003)(2616005)(956004)(6486002)(86362001)(8936002)(316002)(52116002)(7696005)(81166006)(2906002)(8676002)(81156014)(66556008)(36756003)(66476007)(186003)(6666004)(4326008)(4744005)(5660300002)(66946007)(16526019)(478600001)(26005);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3168;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0Q2sQtW474kroca7ryGxUtZPcZDs/+CSAi/UHRmW5ftXY/9S0smXxu0G1oZfhch68rK1bUF8NFl3PF7vPbxiH3pZFlnIzbkJoK75Cjx8d47NgkgbzyvbjzEslhpoy+6/j9bUoR/hl9A0IoAVbdFDJ3UibvX2mzC6TyaexYMd6qCfIuRiaMjVHQkaLsKs+XJQQP1G2Owr4NzSj5gELJfMs5VNgU8qXjN5y8DydbQaq9dLQEFJ0aQ5NttWPJlsnGCzIpdmfEevR9MhITN8/9JAn9V6I6wV9JGvrbh9OhkfS45wGY7FO4E2KGBbBXAmHjOh2kDWT0PuaoHsIjPxs/8NKSfuQSARL+EAzFjnRcoJggavx+2zbV363TiOtC84HkAcWMJdBVsf651znCgpPRgcX2Umlyz60yQROcx0GjYCDWWQeiCOc5p/cHWxMfJS2k00
X-MS-Exchange-AntiSpam-MessageData: p0M72BWB4B09pb92fSsMf9uD8hbKOh8oY8llQ7AMIyvFBVAfk2bIeyTxdS0n7NUXLVOk8Eyv3HMt9oUboPpuF9zsrnrAHeI1SsYm04Vcdq2ZP2uy1YWq8maZtlvVlPHEN2SLY81m9HuEhfsrcbsGiw==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1582d2a2-f224-4aa4-8056-08d7abaf3ba0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2020 09:22:21.3870
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZrfVLgLE+VSudLqEPgi56/9XMyLFEg1k9C1G01Gm9fLf52RY3hEgM+Lp7SctF5jneoBxoKIFg2VIQFrqJRtxVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3168
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=UDQZ1bHL;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.236.45 is neither permitted nor denied by best guess
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

From: Sanjay R Mehta <sanju.mehta@amd.com>

updating with my email address.

Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b9a8d15..040ac53 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11734,6 +11734,7 @@ F:	scripts/nsdeps
 F:	Documentation/core-api/symbol-namespaces.rst
 
 NTB AMD DRIVER
+M:	Sanjay R Mehta <sanju.mehta@amd.com>
 M:	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>
 L:	linux-ntb@googlegroups.com
 S:	Supported
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1581067318-103927-1-git-send-email-Sanju.Mehta%40amd.com.
