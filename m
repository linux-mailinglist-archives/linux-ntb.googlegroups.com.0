Return-Path: <linux-ntb+bncBDXYVT6AR4MRBYXK5OHQMGQEMH6NNFI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D574A7A1E
	for <lists+linux-ntb@lfdr.de>; Wed,  2 Feb 2022 22:19:31 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id j11-20020ac2550b000000b00436c45fe232sf371079lfk.12
        for <lists+linux-ntb@lfdr.de>; Wed, 02 Feb 2022 13:19:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643836771; cv=pass;
        d=google.com; s=arc-20160816;
        b=Go/HbkDWTj1v03AtcQEn2UscD9boNs3gDB/T8MLx6cb59sy96IRlhdNhgovjEKQTtZ
         re0j9BjE9v82s8VqawgYtAORWkOj8IWs6EQIFCind5NiTGlOA3IoBwgHoKGd4DYeRHzO
         wOhCEb0TY8Gdhs0wRBMpHcIkJ+sHyX7th4tqLuJfRTEWkQ/wOuf2hhk7EpqBDe9PtgyQ
         MW3ozdPo1rwxXYOhmVfm7atHWgjjGzQYR1td6IyLLrhQW1VBBe1AvfwDr8RB3ylfVvY1
         mEul5PCLxIAwEIeTsFsuMrUogmrR9FMW8qxNSkMO2gpDhqBgOMZL48mastfiiX8/fSua
         XwYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :date:cc:to:from:subject:sender:dkim-signature;
        bh=W9KomFN2CFWb1U5mk1s2xF4UMTyg2ez5vbfFEHPZsyM=;
        b=zCrDUnXzcw5A8ra51Bi/TimNP2K9TnQfzmPkPS7A3Bl8xkNV43cVJW9ue+t0DZIeUr
         kUzKbIaJuwXfaiKQJAAFPqw9qeAWdNW4m8xt7EXWjwZjViZxapZi6fc9ErO6V/oib5su
         PlUAEL9cEqoLmZDTcN1vBuYKXEw5p1O65ouIbWHCvvxJ/T6cBzFeKJ6ao/MhFd2hJH/K
         POG4NCzLQ3buChCQLpPKEvXUHeOyVmYCK9LORUBPGcqA1563onJZtYbfVNzNqHN2llH+
         b15SdaepHotBlJNAsiaaepdy+Fj7Sg1KSBvKWXlUDav0/zc/bAcXps9dZe8dkRy6SO2C
         riGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=S0WpqQ9Z;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:from:to:cc:date:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W9KomFN2CFWb1U5mk1s2xF4UMTyg2ez5vbfFEHPZsyM=;
        b=f8O11ULTWsPxrpKUiA9mXCil83C1rUY1ScmeacDn5mPXpCuU0XpsZgn9xt3Tfg2gSY
         iUOkXAK5Ecb3aH1XpRkNMHK6XT7uOQ0C0gFgTlmATUt2TWqvZl956H2De04OHp+KQ0dg
         YZI0xlfNpv1Ui2XKdMn4TynFasZAp4gJBzkzq0mMsZLGYuWKy3/J8N15W8e4LTNjyg/Z
         Hbf+tnK/t8HHVTVfE3Wds05NkZc6FsTtQXkeDsOnL0Bkn5kGbq/RQfBDgccShP4cfxTn
         Xz4h+ftPWmrEaENePhqWjv7ibrGt8C+TtwaoVndbpWvAm2AR34hr+t1WHUiFLRFs1jW4
         b82Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W9KomFN2CFWb1U5mk1s2xF4UMTyg2ez5vbfFEHPZsyM=;
        b=ybVEbnfHOioSppEaEWK+5RIDSU7D5/Ue1vwlozYIPghR7yJ2trtqZEf1SFAOJoyTNk
         Ja2eeEVI0mkWsMWDyug2fmTtRvCB6bck8NLHQHUohKD/MdURIUBL5TuidaUAJj2F4ybm
         7Fk6w9Th60ZHNLTHnjaVTR0n3+9g26gg05sdOp33LsrwyF1VYpNDqJDwsz8tUcMId/jM
         IrerqacjUpa+ga9RwcPrdBMAyNKj/HOGQagI3QR45TO3Mk35rHVRaoFuZACsJ4QG4Jm3
         zEaZW9k5k4oxlrKHl/N5kwwjQmbufhSd7+Oflb9Wun6aZDX0zpLE5oMLf3hZ+OstgX37
         LKQA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533xZnbosBQmNGvDh2SLJBn7wZb3VLQggx/MFMp2Ax1uhwHW2jN0
	VHq+3LA4MSxQpc0KlDMZwrc=
X-Google-Smtp-Source: ABdhPJx1u5WCXm8p6mIuBI2W8RF3WcDgpuC5bYTKNyNuOelGK81iqAkQ+ICwKz/JsCp/txcyWeVFXA==
X-Received: by 2002:a2e:b16e:: with SMTP id a14mr20360061ljm.35.1643836770706;
        Wed, 02 Feb 2022 13:19:30 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:5ca:: with SMTP id 193ls3984621ljf.11.gmail; Wed, 02 Feb
 2022 13:19:29 -0800 (PST)
X-Received: by 2002:a2e:3102:: with SMTP id x2mr20541686ljx.211.1643836769542;
        Wed, 02 Feb 2022 13:19:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643836769; cv=none;
        d=google.com; s=arc-20160816;
        b=K2a82hZZscviNuk9MqDF/UndShsMk/e+dYPqiKRd3fMRS8TdU10rYI0flitvneg5MP
         CStppdtNNI6i9S0KP8TV0TFnNxMw/PCiM26cMZLyQtSEHyFe5rdnkpNPo64fdLMU5jPp
         r+oGkyV/ZwrszX/l1DlLJdO13cHRXwERDwTYGZWb7MlzUTEfcOLrCg274QmuRgXvh0+r
         nuy5SbtBmr8gWRF8gEYBIb/Q0SQBDhZ+GVkINNzvnH8Cj04vjdoM4NrDtt6UTrgYLYd/
         hFq3rxlwinMC5xFOHi4ZI2/XUjlmZZjgDTXZ7sjBAqbUj0A6Gx29QT0349iVlBKPU9BQ
         FRig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:dkim-signature;
        bh=mEApg6wI/MT55KlrH0NdMjTRxhZC+p9JYsDPrZ0HUHw=;
        b=O/CyBYh2xsfTPuVQ/wJk3SXoN37J3WuwkLM/+TPWgu7z7HgmEOduszSHhXIh4jYnhP
         j/9eboS2WpeVZFxSjUchfjHOntdTAcoIP4s2oqCqCzlph0i7DAJeCG8cyWBsetImlVWG
         PDfa2jpArgJCrtLaaVUXpl27VBpktwFXMorz7mcKSgYnd1x+Y/6Iyu5eI7IDPaBimgwT
         rYmbUreJzv6unANIzScpKNhAJcJ8YxNt4//mmVqIHiISUwf1fNhD9jLWxX/l3mWPVHif
         nSUXiBYa45aaR2ypvncqip44x1/M+T50RAdF4z7PpaY8dOokpq86dk6vUtX7q0kjxPTZ
         21Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=S0WpqQ9Z;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id n17si516324ljj.4.2022.02.02.13.19.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Feb 2022 13:19:28 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="235422063"
X-IronPort-AV: E=Sophos;i="5.88,337,1635231600"; 
   d="scan'208";a="235422063"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2022 13:19:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,337,1635231600"; 
   d="scan'208";a="534997964"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2022 13:19:25 -0800
Subject: [PATCH] MAINTAINERS: update mailing list address for NTB subsystem
From: Dave Jiang <dave.jiang@intel.com>
To: jdmason@kudzu.us
Cc: ntb@lists.linux.dev, allenbh@gmail.com, linux-ntb@googlegroups.com
Date: Wed, 02 Feb 2022 14:19:25 -0700
Message-ID: <164383676553.1275889.5218150049158331919.stgit@djiang5-desk3.ch.intel.com>
User-Agent: StGit/1.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=S0WpqQ9Z;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.20 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

NTB mailing list is moving from linux-ntb@googlegroups.com to
ntb@lists.linux.dev in order to get better archive and lore support.
Update all entries in MAINTAINERS.

Signed-off-by: Dave Jiang <dave.jiang@intel.com>
---
 MAINTAINERS |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index f41088418aae..cb118eccab20 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13679,7 +13679,7 @@ F:	scripts/nsdeps
 NTB AMD DRIVER
 M:	Sanjay R Mehta <sanju.mehta@amd.com>
 M:	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>
-L:	linux-ntb@googlegroups.com
+L:	ntb@lists.linux.dev
 S:	Supported
 F:	drivers/ntb/hw/amd/
 
@@ -13687,7 +13687,7 @@ NTB DRIVER CORE
 M:	Jon Mason <jdmason@kudzu.us>
 M:	Dave Jiang <dave.jiang@intel.com>
 M:	Allen Hubbe <allenbh@gmail.com>
-L:	linux-ntb@googlegroups.com
+L:	ntb@lists.linux.dev
 S:	Supported
 W:	https://github.com/jonmason/ntb/wiki
 T:	git git://github.com/jonmason/ntb.git
@@ -13699,13 +13699,13 @@ F:	tools/testing/selftests/ntb/
 
 NTB IDT DRIVER
 M:	Serge Semin <fancer.lancer@gmail.com>
-L:	linux-ntb@googlegroups.com
+L:	ntb@lists.linux.dev
 S:	Supported
 F:	drivers/ntb/hw/idt/
 
 NTB INTEL DRIVER
 M:	Dave Jiang <dave.jiang@intel.com>
-L:	linux-ntb@googlegroups.com
+L:	ntb@lists.linux.dev
 S:	Supported
 W:	https://github.com/davejiang/linux/wiki
 T:	git https://github.com/davejiang/linux.git


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/164383676553.1275889.5218150049158331919.stgit%40djiang5-desk3.ch.intel.com.
