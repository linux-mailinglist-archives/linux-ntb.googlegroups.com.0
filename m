Return-Path: <linux-ntb+bncBCHK3VHCYUIBBUWK5PYQKGQENNKARKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AF91534AA
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:54:59 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id q24sf1734051iot.20
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:54:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918098; cv=pass;
        d=google.com; s=arc-20160816;
        b=NVbiRXjwmkkBARzwYMWQOf3oFQ/uGngb3v/rcVkL96dpR93OYTAZJ62N1gSZBz6qv9
         SxGkpdoCbfseWGFqoidm+G05btW0l5oxnog87jhHra3s+vxZwxp9v1N7UjN434/dWPo7
         7RchqFZJbog/OqdiWtfHvpX9HUpxCLzO2xAFiiZSZ3y3K9mitgXpk3lFr9npJcWVVgpO
         aMaTpQytZyv8Lts5U/4LeuFPxdXZhR+kjjlu/KNrPvbb2PQ+nPHUwzPDU5FxiFH0SWho
         6mdnGvRZTJ/u6w0OUf3j6PZHyv5FtmxehLSgyWVgQjSzIuU/saYam+jyz1OXhTTFknOy
         Pe3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=+atV+R6kKE3qqfN3QRW5h5QpDt/3yykuNiHg7FF3kpo=;
        b=oLhOuCbKTLLHdzH79N6tHCgiZCwmCmaiwwms57NujFArG3SScO+6z7mbGrsK3KUH8f
         ejk+B2BCy1rJcw7VK0VJ/lRVCmGN10qSVQkWows4Nqek6hVd5Bs9naTPqeKf9uZ5TLX5
         3sH7DbGpyJx7q81FsGY5F95Hspj0g3ofwN8pFd+3R5vwnUgwgvB6wYSyue1zOFeXVcQc
         +0w6zJCK2Qf8rX0gFFqaDqGAebiWrDnDl1cn1OvVn/JBbAZbQlcETDJ9SJUvyzQTwT78
         Kb3FBdVEmgUUs+z3LDwvSj0b8dgKSi+BA6AGuMPzu0EWnQzKfSdht+4pwQlDVdpsXwKA
         XSPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tSxQWHB0;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+atV+R6kKE3qqfN3QRW5h5QpDt/3yykuNiHg7FF3kpo=;
        b=oyIgn63K7fv8qOm2yXKs20YmPjBjDveMdUlpn7J7PVuhC6tgUJt/MksUQKbXDdvXl5
         iqLtDaz1GcfQUd1wQ9NE7aGTq4RxfzdAVyxeZMRUZ7ibg77/9d7WOwUl83dLDjmkNYR9
         VrWrJ+qMKcXr42Y8P5Yfj73VCuTSrXcAZEwhdGrpQ0h/QDwOqAPoyipxJkuhTsZdlUCn
         KVBv1ERbHzBApq0c2H/Dh4t4gJN7ogWT/7KAaGkMc24QYIx7YqjRKU69LTR+uRbmc6Qa
         umes6uKUtUe5/Kpg4J3NHaM2rAo7deggi8s2cdWsoX8vFO1NlTTrS7NET99wd4e2ZVFy
         +hqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+atV+R6kKE3qqfN3QRW5h5QpDt/3yykuNiHg7FF3kpo=;
        b=qcDm/Iq0Nv3FciSS0KqESeNyxl/Q2NoMO2T7RxeuDhNZqwoHXVhju+q4e/CfLsnQwh
         DnuUBnP3SeIXup1hhMzQz+Mrs0dsJXSlMjZgffF9WBH9gdqACOj63t3zVHbN0I1rcvE2
         50m0g/DDoRvDdw1uZqWQac81X0dn8g58FmDKYre0Smc6z9dtmCW/dzmC01sHHugeVM7H
         aQVTfxbCoYbR73bbwCXYckteyzVJLJ/Ty7MxpTnFZjSVSeyPEY/jpD2lmLe69u9ZVs2Y
         P5pE/Z3Oay3un8yhii4LfKg6OVAhsSBH/WfI6zOpLnrXVF9EmRc3x6Wg7rvf5kQg1Ail
         2cuQ==
X-Gm-Message-State: APjAAAXiZKOWJn7B3Z8cXWO7FmQAMwN9SWFtVJzaneruYEIvZi2/AomO
	3s9fyUGEpld0aXP9f3Q1GyE=
X-Google-Smtp-Source: APXvYqwt+/IpyC53Xtn9GHH+Lio9H2jVEBCkztEyrxRfyM0AUrCpBNbBHAhF+5aOcrmlRWb+E2JRlg==
X-Received: by 2002:a6b:2c95:: with SMTP id s143mr28116517ios.308.1580918098647;
        Wed, 05 Feb 2020 07:54:58 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:aad5:: with SMTP id p82ls682662ill.9.gmail; Wed, 05 Feb
 2020 07:54:58 -0800 (PST)
X-Received: by 2002:a92:c52d:: with SMTP id m13mr27602332ili.233.1580918098193;
        Wed, 05 Feb 2020 07:54:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918098; cv=none;
        d=google.com; s=arc-20160816;
        b=vbiBlg98RZre9TFf7Q1zEWnrgMyWpigriamjrZcDn+XDgFtuQLnw4sRLWoiFGDnnSV
         NJb/zSrO8o7jZp6bnMh1d/CtpdrBrTd71yUwx2x9dl7z4MSwiXtIq9tcWlkzDrhBD4UZ
         DbSW0CtAT/74ZnM29TqWWRXThWM3OScORmgkIUl6Xe2yJCTeay6Iq4l7Zf+fEb4CNCB2
         /V8Aq78734C6OH04ZUtCIzHDmR+egAyWJh2Qij/3BlMO4z2Bcj0jW2N0107W6HqCX9kd
         lV8Yo7TCg7AVPfzwo9HN2+JBSvNN6HTHtG7W1c1mbOQDyPmnWnAi5vJ2Tl9r/dIFJyvJ
         jE0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OeTbs3cyKvuyu1XTWoXkCtNxO0aHwZN3JCJHavQfBCU=;
        b=ntfsvknqbRUjapV1fOSGl06RJ5q47gf+xHQrXi+1wpiGu3RUo/tK/6i6EfgGrnKbPc
         ocvseiRaETH16kIYAdNGl0YV3xFeA2F4tUyDvclhAOLUt9g1xJ6709kTn9WIg8qrRGjN
         9TVW4WHEUA1pEwQe5S4yoav8cXS+VtokIbQ1A3uDCeOXNEsDjPuDyKEfvLt8SzRxjzJL
         w4q1xUOF2ZBoAx9yR1G27qPTyAvQvUE8iibzSHFjbHE4U5zMWCQt7/TcKJ92BaUF/DUs
         gC8Bz16RjAm3N3bxN/8lpaEIOHluix/pJOQ8QojZjYg++FEE9Yn4qiQ0lIH0DuzOEqzB
         fSGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tSxQWHB0;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h4si10648ilf.3.2020.02.05.07.54.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:54:58 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id u131so1149508pgc.10
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:54:58 -0800 (PST)
X-Received: by 2002:a63:1101:: with SMTP id g1mr35938303pgl.435.1580918097602;
        Wed, 05 Feb 2020 07:54:57 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:54:57 -0800 (PST)
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
Subject: [PATCH 03/15] NTB: Enable link up and down event notification
Date: Wed,  5 Feb 2020 21:24:20 +0530
Message-Id: <1fb68eb0ee7ee636ab92bb0b3b7340c56f4a20c3.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tSxQWHB0;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::541
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

Link-Up and Link-Down events can occur irrespective
of whether a data transfer is in progress or not.
So we need to enable the interrupt delivery for
these events early during driver load.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 150e4db11485..111f33ff2bd7 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -994,6 +994,7 @@ static enum ntb_topo amd_get_topo(struct amd_ntb_dev *ndev)
 
 static int amd_init_dev(struct amd_ntb_dev *ndev)
 {
+	void __iomem *mmio = ndev->self_mmio;
 	struct pci_dev *pdev;
 	int rc = 0;
 
@@ -1015,6 +1016,10 @@ static int amd_init_dev(struct amd_ntb_dev *ndev)
 
 	ndev->db_valid_mask = BIT_ULL(ndev->db_count) - 1;
 
+	/* Enable Link-Up and Link-Down event interrupts */
+	ndev->int_mask &= ~(AMD_LINK_UP_EVENT | AMD_LINK_DOWN_EVENT);
+	writel(ndev->int_mask, mmio + AMD_INTMASK_OFFSET);
+
 	return 0;
 }
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1fb68eb0ee7ee636ab92bb0b3b7340c56f4a20c3.1580914232.git.arindam.nath%40amd.com.
