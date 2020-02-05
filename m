Return-Path: <linux-ntb+bncBCHK3VHCYUIBBPHR5PYQKGQEIGSHM5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DE1153630
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 18:17:49 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id t26sf785466ual.17
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 09:17:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580923068; cv=pass;
        d=google.com; s=arc-20160816;
        b=hnGHuQ4kGPQ1RLFgHU5LP53BC+hLH8hX0u0wFv5bFhrsEoao4qiZXmcSrOVsLCKxLm
         fye2Qv343HS7Z2LVXrxge0eRxzXcPKwksAzgmn7PhdcSLzF2Vg3g1lCW4/dccW3dkZqL
         xLtK7DDhpOhYiLOB6Qmr8HPsFFW0ugkZbcje3E/eshhxrO67+Nz55hkGFbf8VtT+OAJb
         AxKiPAb2D7Vir18q0Kp2LrdgKZuKFr2LsycX9wuroAG7oFsZh2O3NvTVayRYE2//OXVU
         50+h7ylHfpEobJFa4kVKsg491ih8iXQ2XjpTJDnaF4zwWtFpK3TMlhZjdSxfTxCXEX30
         e5/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=GLh+sSGaddZs6kHJAdFqGgCcg/imr2kJJP6diEhrzKw=;
        b=VK4AIZmuW6dvHpSwMDNSTqxRqDJdzqruAKwGCrJzaWwrAtGvoD0RBaqhQ5jZ9cEo0Z
         v6ZxKPmu02VLMUAWfeBZFnyY45PwK9bneglMJoG17mvaWE77IlRQqkcgw/kaK0eBL5eF
         OkvYKOILNISXxttVB6p17eie9a7nwRoh/Wr3o1mBzzYgmmNc81RfGIlUhyCrDmrgOgIX
         c9XpV+h10KcY/p82jVSFW1RBSL2a4SDdMHejpnWgOVbOPLM8ETx0gqSx5eTvjzw43XrA
         T2mVb7oT2mqRwcqxFvEOFj1obQAVp28SJsrOX+W7OhSzmDsPrhBN1NcEcC3dJHIVileo
         R4lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JoRJst93;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GLh+sSGaddZs6kHJAdFqGgCcg/imr2kJJP6diEhrzKw=;
        b=PTxjP5WI036/AmxHRRWDlMF2jaFA9DK055W6eWIdE6+8glk/gL44CV0JccMhQIM3fl
         +P/3UL/0GeDhwj6ZLmjibW+obZCvTDekVNGYwsV2XWLRCl08K27oy8gG/yAnVdi1Vsx+
         gqhGB0DGVK1QAfp6HDPLQa3Ikx9WW+La2DygMpKunVrZjpxaPOQOETgAQspfDp69IlUp
         eB+pt3QSRYu4FgTERB0i5VWcnYcTp5k8TuizONF5YjKheDvw7/oCiwInKTOb4BrR2izh
         XVrMTro8HT5kASwy0n3dtq2jJTaxDmssNtTjAPHCr3izOoYH2+n8twhUHwXyvQKQKZZY
         mBrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GLh+sSGaddZs6kHJAdFqGgCcg/imr2kJJP6diEhrzKw=;
        b=SBIVOTSf+BvlcbrR2XVqyreA1k+0cG8v27oSV4Ya6xCaGXOFMZhJ6mIx5lv3VVJraz
         Ilf/KU3qF0b5qOtOYvANOB9g+Yd8Gq+Mvumtj/FUNk0UUA79FvZpErpP56NHTpD7SDjS
         Nyer0fM5NSSW9c2XmdUIjp2ZgHRg8jNtjl7gru+L1MChjSwENzI2U9k3huUSkds4ZEDZ
         EugroB3/mL1v53tx7oMKS4Q6pKGxs++94NSfWIl3Bsqh6Zk04+1OZEjOBAawk8Dc4oMR
         qPEzVOuhT6IgaLXeb4ANAA5BdvxEB8/26TLPsgJXvH3G9lmado6fhD/kxd9HQwZnUDP3
         l+/w==
X-Gm-Message-State: APjAAAUf5Bvms1yBE+eGXN6fmkVlS+qGY1Nwy/3em/deOjm/PI5a7a6u
	/CXqSEDfsksV8sk3/5qnpzk=
X-Google-Smtp-Source: APXvYqyAVw2g34+qwTmHsSlwyvkERyeI3w5tiZmWWmy1U7Fig+eXUk3LHytv7lmJ8NI0BVQh77tzFQ==
X-Received: by 2002:ab0:6017:: with SMTP id j23mr21486225ual.3.1580923068138;
        Wed, 05 Feb 2020 09:17:48 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:d38b:: with SMTP id b11ls382362vsj.9.gmail; Wed, 05 Feb
 2020 09:17:47 -0800 (PST)
X-Received: by 2002:a67:8dc8:: with SMTP id p191mr20444557vsd.231.1580923067696;
        Wed, 05 Feb 2020 09:17:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580923067; cv=none;
        d=google.com; s=arc-20160816;
        b=soq7BNULRrGibiOEQlF+TDDkh9j5Q0xBqgOlfW/dqvBOeM4ffsHcdJidGV0eVsvAsF
         w7fwbsBA0XmIRRaBAdypqxEhBAlsqt0vDaes0Nx3Uj5F7xiS4DocdRWSPU4AbWXGsKqK
         ws7RQtnKj4GOwj7sYTDURjvJBVGI+YoQOw77nE5LzcpA81B+qPMEElBBZgKxzOtP3Faw
         s6WyDDF6fz52jJ25BFdJV/K773mAb9+FHls5PHeAbIJcgv2qzQTlvXVarnPNt0sB8/2l
         UdWaWzi/B5qR9tWgBPN5ZCDVEJUtmkWqa5FkiFYsdgbxAOgMQrfiEdL+Xrhceg0iBwYP
         Rhew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=5Epmkols/Jcpk4BOtB6xrYTMWDhv57jhe/5P27cPTsM=;
        b=XeSPkTekYpNV3mPA3U/IBzYR6FsWGxOMwasoaBXvxleqRZFrBtTEJ/g17sdj7Uhxfp
         XkYRM8Q9L3ixBn9oIr5li9AO5U23Pov+HCchbK6ODJFi6dlqlN2tGOz7ZwCtdPllnjeI
         mGiNRAjiPlq0euo+xHwKWk55jq/TTRzevgtHhdYQvGnrykui2EN3haiNrjP7eAmjHTos
         S703ObEm6zG+V8p248hShsrd0IXEwhj29Dw5XKQPQnUXe8bCr8ock9BfUbBuU2VY/bKF
         tXjkBSYf3j+LtAU0Wd3KPRFfDyJa9PBljqAEd5lLzldaP2s98PjT/RbhpmpzhYsFTF88
         pcQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JoRJst93;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id i27si28389uat.1.2020.02.05.09.17.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 09:17:47 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id j4so1284307pgi.1
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 09:17:47 -0800 (PST)
X-Received: by 2002:a63:60a:: with SMTP id 10mr1707960pgg.302.1580923066845;
        Wed, 05 Feb 2020 09:17:46 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id l8sm357945pjy.24.2020.02.05.09.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 09:17:46 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 3/4] ntb_perf: pass correct struct device to dma_alloc_coherent
Date: Wed,  5 Feb 2020 22:46:57 +0530
Message-Id: <aa4e69feffab2fd3cd846569e0546c5cf8f8f6b4.1580921119.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580921119.git.arindam.nath@amd.com>
References: <cover.1580921119.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580921119.git.arindam.nath@amd.com>
References: <cover.1580921119.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JoRJst93;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544
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

From: Sanjay R Mehta <sanju.mehta@amd.com>

Currently, ntb->dev is passed to dma_alloc_coherent
and dma_free_coherent calls. The returned dma_addr_t
is the CPU physical address. This works fine as long
as IOMMU is disabled. But when IOMMU is enabled, we
need to make sure that IOVA is returned for dma_addr_t.
So the correct way to achieve this is by changing the
first parameter of dma_alloc_coherent() as ntb->pdev->dev
instead.

Fixes: 5648e56 ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/test/ntb_perf.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 5116655f0211..65501f24b742 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -558,7 +558,7 @@ static void perf_free_inbuf(struct perf_peer *peer)
 		return;
 
 	(void)ntb_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
-	dma_free_coherent(&peer->perf->ntb->dev, peer->inbuf_size,
+	dma_free_coherent(&peer->perf->ntb->pdev->dev, peer->inbuf_size,
 			  peer->inbuf, peer->inbuf_xlat);
 	peer->inbuf = NULL;
 }
@@ -587,8 +587,9 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 
 	perf_free_inbuf(peer);
 
-	peer->inbuf = dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_size,
-					 &peer->inbuf_xlat, GFP_KERNEL);
+	peer->inbuf = dma_alloc_coherent(&perf->ntb->pdev->dev,
+					 peer->inbuf_size, &peer->inbuf_xlat,
+					 GFP_KERNEL);
 	if (!peer->inbuf) {
 		dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
 			&peer->inbuf_size);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/aa4e69feffab2fd3cd846569e0546c5cf8f8f6b4.1580921119.git.arindam.nath%40amd.com.
