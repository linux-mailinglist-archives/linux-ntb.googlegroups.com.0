Return-Path: <linux-ntb+bncBCHK3VHCYUIBBW6K5PYQKGQEIVUBULQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2A51534AD
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:08 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id j9sf3597079ywg.14
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918107; cv=pass;
        d=google.com; s=arc-20160816;
        b=bzEZXOWA6bVwCVa6QZcR2wQk3VTdwSwX2JCjbl/oQQyzY8E5L4vtBfiajVsV6Dvrnt
         d2aU6Z55LlwMHqV/QumxFYzH/ztt8uNT0pZs1rBeuCyeMoLNDNwSbd7sVP6UIhYpmyIv
         Ij5DKtyzxS/ZhY4L+h3MJuKVZ8vBJ69MDNFMs2BRDXMg8MHCV27Xhwn+n1EouSmb3IvE
         lw6gyKGhVyJH0g2dcOgqHKo73gpb6HKeOnj5Zth8j51rg5o/nxzcrsjpKsIBLUvDpZmG
         BfMjZhZDDNmCSknz4PxOgd256E3QDzzv++hi9l2pt/TNKhSA3AKr/e885DwSfHHbUb2t
         qY3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=qXD1L6YdKxTOFJI/rClyNnacYtEsLRKgXt470WvjNHk=;
        b=eUDK3SZV1YCLAO4ivOEQ+ip7HTjj3/PYvzsSidRgh/OUIQe8eZi8jh8Hzr3ovoCF1B
         XYbIbkpYdzajhk7I66rj/S6mJ/2KTGmDBcuZ5W+zl4KI77eu0AW5ac9xyUB/+Hu5hUyw
         LRHCjZeTSoL4PwGvk6uPQjY8Eq2uTsYY8LxW62TxEU1xnamwei5eO+wFsts5oc0xygfp
         d0xtzAIghiwY52xhBtTJAcj2sUwuM4zo40fuTgNsOC8u8k68kN2kMDvZX6RpcY9ViFEu
         liFhgoF/Npl3uDqB16TnvpljIxPDdSjXNCeX/eu5s5u8PnZMtAa4pOqVmx0mJJxidocA
         rfZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hFEF6DGw;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qXD1L6YdKxTOFJI/rClyNnacYtEsLRKgXt470WvjNHk=;
        b=HKwgvAk/r2EkemAoACP1iWgaKsEc3CAIx646jku/rNHjjXsmgYC6+00XEvZBSHd0od
         hscYh/7yrOPoH6PBQkv/TUH0AXYteQSu29JF4qD5RA873Iry3oX6vaOZHypupCZS0uMD
         sVeAtacx7DNCQ/HyNcTHT7J6y7vbKTR3YoQnqD2QQ4zj4jKi0Cau5+fIhfaWcakEfacu
         zpNY5R90UcEBuPUBMe9VpeGwjRhZ9BGVCvQaIUKbg8jgHTmlbKvszSTsv7orZlQZKmy+
         AHhdVITm04CyGppyC7Pu4FnAOBCxBSq87GeebLunAUqE/XBbdDWYaGsRJLGHDm+B3O9s
         pt/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qXD1L6YdKxTOFJI/rClyNnacYtEsLRKgXt470WvjNHk=;
        b=Xq1YZk6GHfk1JuNtkHFrcykK/PqeWsUxV4tsB9Momxim+gLq1CfmiXWnYE6ZpXTvj+
         Q7p0e8NsXtC2/NdnTZUIHBzFj+5R2fPbGPB1KGbhUpBz/1MN4VGyxy41kHi2ehVpzSvo
         45NjqtXXHVV3GdmuhFKOVrOs5py+RJGCGebFyu6vyUjidYLpsogr0txI9TaERSZEGdF/
         Nuli0uXerehOCzx5Z1J15AmQXW5xB/PumJh8p/gEPdb1A7tkV//xtzRGW1nEs86rqgj8
         EsFy47Jb1ayiph76CN62MfB4RQpCVcaj/cR2Pvv5usVyebCrYRLLL9SHOJa0pCaUJfDW
         1nWA==
X-Gm-Message-State: APjAAAXyocweKbBWZM3ybSBxExXa94GXdUHei6CBpCxJuNSXUY94UrH/
	mCpfCqlnpSM78mK9/pxgWQI=
X-Google-Smtp-Source: APXvYqyIXMMEnV2jPbS575h1O/mzGWgoaBWki/DUMDwqN9bawyXayDuA5hqqHUuTRnaGWkjLXRWVVA==
X-Received: by 2002:a81:5787:: with SMTP id l129mr11599667ywb.483.1580918107655;
        Wed, 05 Feb 2020 07:55:07 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:a2c3:: with SMTP id c3ls518609ybn.2.gmail; Wed, 05 Feb
 2020 07:55:07 -0800 (PST)
X-Received: by 2002:a25:d343:: with SMTP id e64mr31414656ybf.257.1580918107197;
        Wed, 05 Feb 2020 07:55:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918107; cv=none;
        d=google.com; s=arc-20160816;
        b=srcIOY7T+8KtP0i+h9Nftk0gdU+1nkw4HxGXwiL8Kp1tYZNpC29wPc+D2U1MhoqYoK
         t7IPSxc8nqlqzGstHL1LhvlSrAub9gtqsAnbwq/f/TyRaKQVs5XzGsDjn2VBTcLoUFl4
         PQiyKhD0u+VNUSqcNhmuIiDf4ShoW3nxDcdXsFMsfj6Kjzt994ooMfxazIK1DTAqhnjU
         f/pIhPs1l5t3rpx6H1/ho8qaW+6mlzjvUItB/ChKLJVVyMeb3Pa5IUdzFce9kiGi/p0w
         cDuZZG6tKOiT58LMtm0PjgfnnEQ173RI0hwpumMB+5LR63Df4+ncZVnj3ZvrenmnzdCO
         AG9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=r6M3muC17wmFBo6gGHeq8kEyee20Ea6YYRIE9th2DHM=;
        b=ha0fISCurOs07EyLLkxTgDVTefgS9fQThoQiAh68xQBkXIA3btwgzZmmdTuNcGZJ+y
         sGh4jnOG3rCywV4uxGh9Hi8+oHEamlNCjti9YiktQ9CeEDnoGH7IosilI0D9cU5YeHHs
         Za56NakBE7aMY5N5Kvhg3zUaOrIBWCzR/FPFZebTo4nhweX21iGSdfAE+NjhIjaK1XL3
         7QJfU9PMdo9jFeklThzsUdjCiqn3pOVOuyGKQ2/c2qA4vTvnmIpYzyfRCaDEA99jy5Tq
         EwlADbX37uK7QCWQCj1FWbAFFV5YhJQnqszZPwAsZjHmQXCe+vWhlygTHwaNpxSi1vyV
         B8Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hFEF6DGw;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s131si6473ybc.0.2020.02.05.07.55.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:07 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id y73so1423316pfg.2
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:07 -0800 (PST)
X-Received: by 2002:a63:7a1a:: with SMTP id v26mr717429pgc.51.1580918106459;
        Wed, 05 Feb 2020 07:55:06 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:06 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Jiasen Lin <linjiasen@hygon.cn>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 06/15] NTB: set peer_sta within event handler itself
Date: Wed,  5 Feb 2020 21:24:23 +0530
Message-Id: <cb8fdfc226493dd9e80be514c201f92378608081.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hFEF6DGw;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Content-Type: text/plain; charset="UTF-8"
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

amd_ack_smu() should only set the corresponding
bits into SMUACK register. Setting the bitmask
of peer_sta should be done within the event handler.
They are two different things, and so should be
handled differently and at different places.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 84723420d70b..b85af150f2c6 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -541,8 +541,6 @@ static void amd_ack_smu(struct amd_ntb_dev *ndev, u32 bit)
 	reg = readl(mmio + AMD_SMUACK_OFFSET);
 	reg |= bit;
 	writel(reg, mmio + AMD_SMUACK_OFFSET);
-
-	ndev->peer_sta |= bit;
 }
 
 static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
@@ -560,9 +558,11 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 	status &= AMD_EVENT_INTMASK;
 	switch (status) {
 	case AMD_PEER_FLUSH_EVENT:
+		ndev->peer_sta |= AMD_PEER_FLUSH_EVENT;
 		dev_info(dev, "Flush is done.\n");
 		break;
 	case AMD_PEER_RESET_EVENT:
+		ndev->peer_sta |= AMD_PEER_RESET_EVENT;
 		amd_ack_smu(ndev, AMD_PEER_RESET_EVENT);
 
 		/* link down first */
@@ -575,6 +575,7 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 	case AMD_PEER_PMETO_EVENT:
 	case AMD_LINK_UP_EVENT:
 	case AMD_LINK_DOWN_EVENT:
+		ndev->peer_sta |= status;
 		amd_ack_smu(ndev, status);
 
 		/* link down */
@@ -588,6 +589,7 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 		if (status & 0x1)
 			dev_info(dev, "Wakeup is done.\n");
 
+		ndev->peer_sta |= AMD_PEER_D0_EVENT;
 		amd_ack_smu(ndev, AMD_PEER_D0_EVENT);
 
 		/* start a timer to poll link status */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/cb8fdfc226493dd9e80be514c201f92378608081.1580914232.git.arindam.nath%40amd.com.
