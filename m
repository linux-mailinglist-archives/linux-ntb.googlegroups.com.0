Return-Path: <linux-ntb+bncBCHK3VHCYUIBB2WK5PYQKGQEXETX35A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 524B71534B3
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:23 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id t12sf1739399iog.12
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918122; cv=pass;
        d=google.com; s=arc-20160816;
        b=LqxpPlCyIRlhxeBMlHAqgLibCz+SWBBKb7LPv0Y2fXc9sheEJsJeEB6lUQ09MzHOgj
         lbjj+ZdEfcNl3dfXf/I6bHeQFpJ6uaFp8nBcnORbXsraRi7RjXk5/omMk3TXgaRVqAi2
         /FcWJLV54wN9x1x5iGqZx+nbe29Ry1AR0iyd36FQSRQk7BM6D2KlIaNybuSeA5YjopSW
         nEydSngHTFEIgTeCjg4+DQyQuLujn9QmA914xlhwoImQ1vzrETMx3+FoaGyvBKAJvktn
         gBAWGn6gLX047LrVSThN2LG29k1WDyqc8dra97O1rBkjhJhZK5WvhbyzcNQrIWu3uHLb
         Bibg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=5GeYxdP47DiLzbBBTwJVtr/umQgtpSqi15faKK2AkG4=;
        b=xs3K3s4b6AY835hqzkqbhqDiLRX0UFVjirldKrjWjQe0bspCAgGwB13VsgyxYNnRwL
         qyjsjWJo8BkKNzaS7O6viCZypuul0b7xA+HnpBQrU6t9aGn/nrD0vkrzMMq+XyQ1Smzq
         S36TeMecVO28kp14GniHc8qviFjzutOI6ym95Wv+EKqOr6X8eXQC8FOGXAs6gR4rxqtx
         c3K65okbSBkTR3GqrpXh/BgAYxAPethCudBiOyXjtwLU/et05BqD+8IKt281UG4q1lzZ
         f+0L1WZkDJyszIdpjLfZLA8wrWt33Js2h/gHgQCOPfc7YaBktQWNLcvmQONw+yU86pN7
         9H5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INNRrJBg;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5GeYxdP47DiLzbBBTwJVtr/umQgtpSqi15faKK2AkG4=;
        b=WNqRZXJZmY+OxUFBigOFApF+jcQksXJDsfzlBfra5PEtokf02IRACyPmgkaPKxAyrU
         9I/bV4R5pTsV+0BEryInbqs33yQZq6GPF1bWJZaXhD/jq+7sfIcTKNmoFVdfq/xCJRV1
         rkm0ZYQ315Bbt9MjeJ7MemOqde8ODorpN5YKv9u8xj5rJjOwzWszcL1em3pa6HyTAKJU
         jXMn4ap0ssCFfzvMb6zGAnnifzFUg8NyA0ON7GKRX+SXnbyko1KTSk3yGckObHy9nu0X
         rakFP19X08gXQH5vltATWNOBdrIgvOEpVAIabmoOK6mehZwwo0Bm9ZdRQ9GWQ0tTYcpB
         S7jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5GeYxdP47DiLzbBBTwJVtr/umQgtpSqi15faKK2AkG4=;
        b=sLUnFQLOf6WlCgq5CB/ip3y3LQ7tprt/ep5pA4c0P5ihmYRBaKzAjPexImFXBGDoGT
         0mnj8hz4EgN+CoHTornrYWuSXfqx0LRzErA2li1/P6SOsI/os1T4EtsszdK0etNGO9jZ
         5kkMc3CybgS7Cmft8xeIwQD37tskM3lQA4TWzip56Tf9VHaZuVCdfjvYAiyRLyLHemD/
         9RVzYAQc2yy0/1frM5eIquvoDRPaCObEeWJ/jJ2MSic6+YqDSFyexRiLbz9o/4cSs9T3
         jkyMA6CDZ/fYQ27ustKoC0WXC0xoxOsZNMfmrCsgE45ncO6IOeMHR2Ts9u0Bxki+P/cI
         P5RQ==
X-Gm-Message-State: APjAAAUPtlMK3GV6BN75Vunbmt7CjlaL1sWLDnbN28IKpHQ1XDWdyIR3
	Bo8efqZpuEO8N5Id2jR19tc=
X-Google-Smtp-Source: APXvYqyH1xAU2jR+EOMC6aMP1UA+3BBniDQuWGx7wMG25bFUw3LJZjZu9hiPJhx3QJvZA8taEVzDMA==
X-Received: by 2002:a5d:9697:: with SMTP id m23mr30072721ion.45.1580918122259;
        Wed, 05 Feb 2020 07:55:22 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:5e84:: with SMTP id h126ls280613jab.5.gmail; Wed, 05 Feb
 2020 07:55:21 -0800 (PST)
X-Received: by 2002:a02:85e8:: with SMTP id d95mr29252033jai.92.1580918121812;
        Wed, 05 Feb 2020 07:55:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918121; cv=none;
        d=google.com; s=arc-20160816;
        b=abWeHR+Wj/Fzb3hmeDzpVJKY5ebHaxykl3y5HXIkoGyG5gT1hcKD0k3k3kz33q71l3
         kNhFAGJFRvfQQse9Ah928wJL3O/wtQD62s6G1kGB9JAlMOcDYlmZUb/0tjRvpOhxYwB4
         juZBxBi0H/Xh1+0vSUhHS5p2rQ/j/sJGUW6K1vacxSxYA8TzfsZMBOFK0x3w6I7AvSKm
         OFJDgo/e92wev6bBgboZVGS0rvYNMFqwZopHzwVB9rsOVyLT9zp29nmmLlP+vTKM1gdO
         UcbZ6PYhBhcDNbGS9ximr8vatyTW7B+/qTg0BbiVxkXrpk07I1LqlovkfH3/n3liLU81
         7kaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=xDAPz0iqMJV07aH6pLFlhLI9ETQtq7tGyHxeyMeHoMQ=;
        b=V0DNUbi7uoCoyQlH7pyc+hGcNj2+Dxj43PE7qTZZm+eHgEuZn0QwtPQsU+Buasogfl
         B/lM6IU4cTD9KgmCyeirb2pvW5pn99WCgseRTP84LA2+aygSRvhsJmFyp8DKfHUDpDRp
         vJPiPWIqaVSiwJLlopSTKrSw0C8ZB5UuYhQtGneIzOISmsWRnzEu8hNZlc1MXyLEm06z
         sZl8OEPEDo7ZjduexLzrl0E7BP8DMz4mnlNjM9wpHL/MH+WgHYhsRGXgRAxBZXUrjrdr
         oIjRjWE6oHqyQB6Q1QyZ+7tOUZ7yh7e5ypDCpyZaOb+f0T2xO6sjSg0fpS9RpGoj3u3a
         R0vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INNRrJBg;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h4si10766ilf.3.2020.02.05.07.55.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:21 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id g3so1149929pgs.11
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:21 -0800 (PST)
X-Received: by 2002:a62:e708:: with SMTP id s8mr28926286pfh.122.1580918121222;
        Wed, 05 Feb 2020 07:55:21 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:20 -0800 (PST)
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
Subject: [PATCH 11/15] NTB: add helper functions to set and clear sideinfo
Date: Wed,  5 Feb 2020 21:24:28 +0530
Message-Id: <08593511a6c9c4a4ce937e2c92c08638c051c70f.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=INNRrJBg;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::542
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

We define two new helper functions to set and clear
sideinfo registers respectively. These functions
take an additional boolean parameter which signifies
whether we want to set/clear the sideinfo register
of the peer(true) or local host(false).

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 44 +++++++++++++++++++++++++--------
 drivers/ntb/hw/amd/ntb_hw_amd.h |  3 +++
 2 files changed, 37 insertions(+), 10 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 621a69a0cff2..d4029d531466 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -913,28 +913,32 @@ static int amd_init_isr(struct amd_ntb_dev *ndev)
 	return ndev_init_isr(ndev, AMD_DB_CNT, AMD_MSIX_VECTOR_CNT);
 }
 
-static void amd_init_side_info(struct amd_ntb_dev *ndev)
+static void amd_set_side_info_reg(struct amd_ntb_dev *ndev, bool peer)
 {
-	void __iomem *mmio = ndev->self_mmio;
+	void __iomem *mmio = NULL;
 	unsigned int reg;
-	u32 ntb_ctl;
+
+	if (peer)
+		mmio = ndev->peer_mmio;
+	else
+		mmio = ndev->self_mmio;
 
 	reg = readl(mmio + AMD_SIDEINFO_OFFSET);
 	if (!(reg & AMD_SIDE_READY)) {
 		reg |= AMD_SIDE_READY;
 		writel(reg, mmio + AMD_SIDEINFO_OFFSET);
 	}
-
-	ntb_ctl = readl(mmio + AMD_CNTL_OFFSET);
-	ntb_ctl |= (PMM_REG_CTL | SMM_REG_CTL);
-	writel(ntb_ctl, mmio + AMD_CNTL_OFFSET);
 }
 
-static void amd_deinit_side_info(struct amd_ntb_dev *ndev)
+static void amd_clear_side_info_reg(struct amd_ntb_dev *ndev, bool peer)
 {
-	void __iomem *mmio = ndev->self_mmio;
+	void __iomem *mmio = NULL;
 	unsigned int reg;
-	u32 ntb_ctl;
+
+	if (peer)
+		mmio = ndev->peer_mmio;
+	else
+		mmio = ndev->self_mmio;
 
 	reg = readl(mmio + AMD_SIDEINFO_OFFSET);
 	if (reg & AMD_SIDE_READY) {
@@ -942,6 +946,26 @@ static void amd_deinit_side_info(struct amd_ntb_dev *ndev)
 		writel(reg, mmio + AMD_SIDEINFO_OFFSET);
 		readl(mmio + AMD_SIDEINFO_OFFSET);
 	}
+}
+
+static void amd_init_side_info(struct amd_ntb_dev *ndev)
+{
+	void __iomem *mmio = ndev->self_mmio;
+	u32 ntb_ctl;
+
+	amd_set_side_info_reg(ndev, false);
+
+	ntb_ctl = readl(mmio + AMD_CNTL_OFFSET);
+	ntb_ctl |= (PMM_REG_CTL | SMM_REG_CTL);
+	writel(ntb_ctl, mmio + AMD_CNTL_OFFSET);
+}
+
+static void amd_deinit_side_info(struct amd_ntb_dev *ndev)
+{
+	void __iomem *mmio = ndev->self_mmio;
+	u32 ntb_ctl;
+
+	amd_clear_side_info_reg(ndev, false);
 
 	ntb_ctl = readl(mmio + AMD_CNTL_OFFSET);
 	ntb_ctl &= ~(PMM_REG_CTL | SMM_REG_CTL);
diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
index 156a4a92b803..62ffdf35b683 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.h
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
@@ -215,4 +215,7 @@ struct amd_ntb_dev {
 #define ntb_ndev(__ntb) container_of(__ntb, struct amd_ntb_dev, ntb)
 #define hb_ndev(__work) container_of(__work, struct amd_ntb_dev, hb_timer.work)
 
+static void amd_set_side_info_reg(struct amd_ntb_dev *ndev, bool peer);
+static void amd_clear_side_info_reg(struct amd_ntb_dev *ndev, bool peer);
+
 #endif
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/08593511a6c9c4a4ce937e2c92c08638c051c70f.1580914232.git.arindam.nath%40amd.com.
