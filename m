Return-Path: <linux-ntb+bncBCHK3VHCYUIBBZ6K5PYQKGQE3WDRODA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B23B1534B2
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:20 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id h8sf1368999plr.11
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918119; cv=pass;
        d=google.com; s=arc-20160816;
        b=otyBwXMkpWb1bYE+QbF7+bc7u2uGWGjqOV+KlUnf7BeYaGI2C7UQDMqkBYHWHAvY9h
         eQ9tHNsMZ+VtIGABRJdxpwwwVrwh20H3s3UGzYuDS6zMG2wTj7H+Udovh2aHx9Ij7E25
         Bc2NJitTFnnuk9/VPRlWbAjX7NPf7zcLhY0HG4mRqIMHNjhiyQN70qhnVw76oJR2zd0B
         frzEtvX4vkM6rSGtCUyeOWKjZ+1NPORQpqE1uYSEsM2x14GwJMbUTak5/FJrxfjEnuj+
         4r3AhibS70dlWx7mNaB/7aB0W3MP1gLXzjjSHkDfXOkhjlIMb8cVhxkhHJC1jDj2TlYN
         xybA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=LffywpmYDerBClKiH98Vd+92GuPJ3kQcyjD76nKX8EI=;
        b=OkuTp2fDlKxv5T5xkiB/70J8rR+njRsyc8mjJ0k/nShb7hIf/442TMHG5n2VE/pvvs
         U5EBqOytj5cBDyZDrY7CzfIBkbKuBB8Sz3qWU5Zo4x9aB9m2MhRItQdv3gu229vCYII3
         J97tSwht7PX74tmkWZ9Vt/kljyYFOi/wpxCTbX4mMme1ZD7JQMw5mC1fdRLPcbtqVc6E
         pM+4YqggHvfUM6k/Bl0+601e6lGNDuDiZjuFbKieM/7vF6OXC2UvR1+0y9jaR5aDPa3M
         nJ2Ghiimag1n/TQXx/2Ay/Cl1B1lXue0CD4jq5Pxlt78yvy8bxCigiTFPUEbSgSzwvH+
         mOEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OeLf/aWb";
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LffywpmYDerBClKiH98Vd+92GuPJ3kQcyjD76nKX8EI=;
        b=DtdIrK1CzijgTwGIm8GpE3xvTn1yDPGQlO9xhTs51KFYl2gKKKDD+E9glHZmb0n09a
         N0LTMxCbBzwp7KO12a5SuFVKyJFTuk8deayOQy0oYWpZHcAbg0RowK/bZvGiSr2M4O/N
         JX0NKmcmvE6Vwmb7xaA4oYyr7pnF5SswJeVAffGrsv0nLY0L1OzgUcyTD14cCa5h6FpQ
         3q1gyIHsBAYsZo6ujdhXbtiyTeqZ1WUegExGYuWSZQUVWhti73vfuDPBykHbr+D7Cect
         vPZcqsK3a9cUjLWkeFyvNt7ZDQZIgzvkn7zioqXvUDDagrj+n5xLxuNYy9Zk8tM66AnJ
         v/Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LffywpmYDerBClKiH98Vd+92GuPJ3kQcyjD76nKX8EI=;
        b=R/Hq4Ngiwe9TQyo8fAsbn2OiAcQYozSmjNW5Zl9ULbOgy5YN9rTObKLl6AJUINuuZR
         BrITgJYjh6VFgWnVdD8EJHCAfXoSEpQaYBBMlou3EZIjljLxwHRG9cXi1HKEvu3i4Yhb
         wIBFKAmZ7uGqtPIw3pKG47aTPL6mkR2oju2Yus5BqLJHLwJbW7GFdVF6PuJQUnvCUxvQ
         ZhKiK3+H3e2OM8RuaOJjRlt5vnMP70Yxhv6DBe6+cq0aDW32yg5sgu8EN96AmvUT1h2y
         PVjVm/iDYyd4rxDNWM5ljVca63RLkgsKteX//VXhez7WLwjigNLKubEyS7IrcsiDs7QR
         w0zA==
X-Gm-Message-State: APjAAAWH2lqHOt81O0tCDEFzoTFA/Lxvy9GhvT/KOdMNJpkryugT+EtM
	vq+dMc910OPj82fXdcTj28w=
X-Google-Smtp-Source: APXvYqwnFXaklU9jjXhIk4I8yKpsQxfU0RsRQjWE3sVY24y+wleA0LD/FM+6E6+iG6Qx/mAQnnf/pw==
X-Received: by 2002:a17:90a:20c4:: with SMTP id f62mr6593065pjg.70.1580918119063;
        Wed, 05 Feb 2020 07:55:19 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:1bc6:: with SMTP id r6ls1407820pjr.1.canary-gmail;
 Wed, 05 Feb 2020 07:55:18 -0800 (PST)
X-Received: by 2002:a17:90a:3aaf:: with SMTP id b44mr6514600pjc.9.1580918118530;
        Wed, 05 Feb 2020 07:55:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918118; cv=none;
        d=google.com; s=arc-20160816;
        b=QTabN/MHwBAWtO0//OC+rC7guBTTLr+STdVen9+0PXP4BvIGDfxi5bgBsJCT+ay0RV
         KpFzPCgqrHbRcUob8/eoKcIm4C4DM1iKCWEo4sOa0MYBzvWNxnEC/0tRlhCX1u4mEHFy
         BZyuPFqQLorpZPEMhF1bNmQUr5FMacLUltyHpIRVGWG6roJCrEUm15XhhqhbsrPOUPA/
         V8SrKWvKg+MpcPOeaCPGJFBs0xV9mBwdjVO1LMSTNcMUCHaJdHVluyvtwDdrknM+4Ykp
         rKlwMZw9UB1fil5ukaODh5T0SD2pfiv0UYqhExrC6Uc2NSoYajwZNApUw6JQ3XzvW2qu
         Xb8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=vtj5yU1EsG5Z9W3Ll/6G1xCr4kAz0z3BK+crKJ17lmY=;
        b=Y9QDebYdR3wNh7k6qurlBk0nGttO0KE62xjC/8OhWXuSbOFAvzGleoVrtX+hXOuQ3/
         rMX+SCggIfsF/wivenA2xWINoQ6HBkNzX/WvsSTvwumAlgYS2VIKkILMNP5rIPe/pSaZ
         hGCg6e2BZSeRvaiMMvteM7wExc8eZuCvohpGRTLD7bMrxL7lFTRgHwaNBQ5vsQafisAv
         AUPd/+Ci0C7hrdPDSfF6GaF6onV6Q6W1lnvmmO70LYnfTwQ8kewNs/mDZZztiuYWGAOT
         wqpEGxNweuvbrGZxohRN1355qe9YtofQsHpsFG1xtoyfqRCWzO2Ad8npbihcRbNKiyhG
         +Asw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OeLf/aWb";
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c13si684pfi.3.2020.02.05.07.55.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:18 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id a33so1163007pgm.5
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:18 -0800 (PST)
X-Received: by 2002:a62:6842:: with SMTP id d63mr37654928pfc.113.1580918118279;
        Wed, 05 Feb 2020 07:55:18 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:17 -0800 (PST)
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
Subject: [PATCH 10/15] NTB: move ntb_ctrl handling to init and deinit
Date: Wed,  5 Feb 2020 21:24:27 +0530
Message-Id: <62c2d386903e1ec4a6a1b6a097ec7f5faade72e6.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="OeLf/aWb";       spf=pass
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

It does not really make sense to enable or disable
the bits of NTB_CTRL register only during enable
and disable link callbacks. They should be done
independent of these callbacks. The correct placement
for that is during the amd_init_side_info() and
amd_deinit_side_info() functions, which are invoked
during probe and remove respectively.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index a1c4a21c58c3..621a69a0cff2 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -290,7 +290,6 @@ static int amd_ntb_link_enable(struct ntb_dev *ntb,
 {
 	struct amd_ntb_dev *ndev = ntb_ndev(ntb);
 	void __iomem *mmio = ndev->self_mmio;
-	u32 ntb_ctl;
 
 	/* Enable event interrupt */
 	ndev->int_mask &= ~AMD_EVENT_INTMASK;
@@ -300,10 +299,6 @@ static int amd_ntb_link_enable(struct ntb_dev *ntb,
 		return -EINVAL;
 	dev_dbg(&ntb->pdev->dev, "Enabling Link.\n");
 
-	ntb_ctl = readl(mmio + AMD_CNTL_OFFSET);
-	ntb_ctl |= (PMM_REG_CTL | SMM_REG_CTL);
-	writel(ntb_ctl, mmio + AMD_CNTL_OFFSET);
-
 	return 0;
 }
 
@@ -311,7 +306,6 @@ static int amd_ntb_link_disable(struct ntb_dev *ntb)
 {
 	struct amd_ntb_dev *ndev = ntb_ndev(ntb);
 	void __iomem *mmio = ndev->self_mmio;
-	u32 ntb_ctl;
 
 	/* Disable event interrupt */
 	ndev->int_mask |= AMD_EVENT_INTMASK;
@@ -321,10 +315,6 @@ static int amd_ntb_link_disable(struct ntb_dev *ntb)
 		return -EINVAL;
 	dev_dbg(&ntb->pdev->dev, "Enabling Link.\n");
 
-	ntb_ctl = readl(mmio + AMD_CNTL_OFFSET);
-	ntb_ctl &= ~(PMM_REG_CTL | SMM_REG_CTL);
-	writel(ntb_ctl, mmio + AMD_CNTL_OFFSET);
-
 	return 0;
 }
 
@@ -927,18 +917,24 @@ static void amd_init_side_info(struct amd_ntb_dev *ndev)
 {
 	void __iomem *mmio = ndev->self_mmio;
 	unsigned int reg;
+	u32 ntb_ctl;
 
 	reg = readl(mmio + AMD_SIDEINFO_OFFSET);
 	if (!(reg & AMD_SIDE_READY)) {
 		reg |= AMD_SIDE_READY;
 		writel(reg, mmio + AMD_SIDEINFO_OFFSET);
 	}
+
+	ntb_ctl = readl(mmio + AMD_CNTL_OFFSET);
+	ntb_ctl |= (PMM_REG_CTL | SMM_REG_CTL);
+	writel(ntb_ctl, mmio + AMD_CNTL_OFFSET);
 }
 
 static void amd_deinit_side_info(struct amd_ntb_dev *ndev)
 {
 	void __iomem *mmio = ndev->self_mmio;
 	unsigned int reg;
+	u32 ntb_ctl;
 
 	reg = readl(mmio + AMD_SIDEINFO_OFFSET);
 	if (reg & AMD_SIDE_READY) {
@@ -946,6 +942,10 @@ static void amd_deinit_side_info(struct amd_ntb_dev *ndev)
 		writel(reg, mmio + AMD_SIDEINFO_OFFSET);
 		readl(mmio + AMD_SIDEINFO_OFFSET);
 	}
+
+	ntb_ctl = readl(mmio + AMD_CNTL_OFFSET);
+	ntb_ctl &= ~(PMM_REG_CTL | SMM_REG_CTL);
+	writel(ntb_ctl, mmio + AMD_CNTL_OFFSET);
 }
 
 static int amd_init_ntb(struct amd_ntb_dev *ndev)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/62c2d386903e1ec4a6a1b6a097ec7f5faade72e6.1580914232.git.arindam.nath%40amd.com.
