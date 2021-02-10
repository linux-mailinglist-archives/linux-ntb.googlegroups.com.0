Return-Path: <linux-ntb+bncBAABBMU6R2AQMGQE3AFKRTY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 0833231603A
	for <lists+linux-ntb@lfdr.de>; Wed, 10 Feb 2021 08:45:56 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id z2sf1145119pln.18
        for <lists+linux-ntb@lfdr.de>; Tue, 09 Feb 2021 23:45:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612943154; cv=pass;
        d=google.com; s=arc-20160816;
        b=D1FxyGHsqMwLETVaay5/oHN/rE3RmasH2p7921ODMa5gYITyVke3mubEY8sPVC/9+V
         IbVDUW6INiU1JY0Vwt056AI43XAckbg5daK6PxHP8lMBuBYDYbkko9PbVXZ66DN4MJlZ
         agJTbWzVr7M7O4bNQm8VeXHkuUqv/ZMrwIsxp/6DV3qRZYJJkELGKbp9vQsbGUFcoEvs
         FuGBPulA0XUSz+KjQTojh6Ey0FEgzmIT5iveokTAeqtrFV85gozcbgINRK6XZJ6Mownf
         VMPWf2wLRUUIVsb7QToGo0fty4SIbYFq+x4i6/dHxoVOi6dE1wGasizi+jpbZEY9lPl5
         v11g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=QXlcWIUfJDrS7qMk/S1SZceOl3+0WwJVrSZTZrlmQfg=;
        b=BI3EkyAJi91EmerrPvNKEm2O9/AI/XUEKS0OOu/sBdrVhhtL4Xqm3MAMZkSWj5e2A0
         uPRkJACZj5wOBP3ogGcDRqZRF+ri4YrorRnzwFNY191cgwla19lRGSPph0xTdPnttCzt
         mt24+utliOBfbngSjs6Iu+xrH00C3AT/gIDsgvKOfq/eODkh+48eHZ/3duiXGTiETn66
         QCrGk0cW10r3S+sSkpYPss8TXCmM+09tEX8ANuuSX2NAgJPZR5xiNcyJvY2n8avMVPc7
         M7L0lgBkAuYbJ9Pch+zYo55W0SCffHzF8kaYRpUTutw5mn/AIEsJk3C3lvo9EbheS1Iz
         94NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of weiyongjun1@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=weiyongjun1@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QXlcWIUfJDrS7qMk/S1SZceOl3+0WwJVrSZTZrlmQfg=;
        b=DFIVT8bx1tBSktDqjiIcqrsShFJlDlp7wHd71S4+2NmCmi+dSwbzufUEoVJu4c5PKV
         B9R5ojeUDGgGQJLArjTgYNejyKLcsS2Jjj/wCHYGnyYlUfTTeHqeDy89VUPDUnXOpoU5
         W6yBm3GGF3zNSygoJeA37r4IXZU9ZJk7+lwf6QFT3Pefd5LHwo93P7AzONQ9iK4Rhjnj
         MFX8Yq7iwrWzeUl5lSiRggu1qy6hj/PQXXy7+C6ijwkag5iAlXwAeCn+iamWQXZ/HD3Y
         o366RFYEQ0Riqg9LBKjy9GyLpcIzgXCtRNkwDeH3LR0nkyWzrKbMCc4vNrK5ETWXuJ5W
         pbaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QXlcWIUfJDrS7qMk/S1SZceOl3+0WwJVrSZTZrlmQfg=;
        b=CHQyR05HMfUfifHFn+dyHmbww8o1uluEVeln3CQxfVZdIKf/4Bki+90G5SXBmnP7gS
         EddpD2fGpDFFp5rMyarAgXtQaV0PGu7raUX9b3sbf2liuTXJuBaEvGTCR21rXfJbD1Z/
         ZCZ5uYBMCD/9QQQPfHr0qV9tdtX6JLQ1qLZFO6us+HxZPDUxIjqMrdKlPjcGqw0crBHc
         uF2lYwQfkvctNMSztv78zRG5COHn8KU6GeTZBjtbXFDUEMzwLKiViXzuA85V9lEVbL0Y
         N+mZTGU3utN/uEv/nHyZADHgwoDQuz1q5JJnhjFkrPYacZkxtNa9RnvsUkP76CwcaDhO
         aI4A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530lMqXwbnra5kXFX7YEkpK+mu05hI2mIzWfw+C5RrzMIRiQ0jTo
	Yig6eRt0BiTmzn+fL0I2PHU=
X-Google-Smtp-Source: ABdhPJydthW6c7yOx4xh9Q0n4I1yLxB75t+c83vTTTORyVBrwVLaavVK1FPLO8WsEjlEbhqJFkRFaw==
X-Received: by 2002:a63:2009:: with SMTP id g9mr1932206pgg.219.1612943154810;
        Tue, 09 Feb 2021 23:45:54 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:7541:: with SMTP id f1ls20952pgn.10.gmail; Tue, 09 Feb
 2021 23:45:54 -0800 (PST)
X-Received: by 2002:a63:ce58:: with SMTP id r24mr1970200pgi.192.1612943154213;
        Tue, 09 Feb 2021 23:45:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612943154; cv=none;
        d=google.com; s=arc-20160816;
        b=AT14xtSTvDk+XiOdsuJo1pTcqWpQX6zWIcuvQxRioGiRv20FyuA8QelplzLKXdBOap
         XydnP8t94h1x1NNkvPCWp4xQvKWj83seOAElzhW1Hae0pGT5c/LdEqZGrPxzYLvNvD+x
         kjVsR2TzVy52kUW1G2+FTGjXv2mH9IjC2Pjo+ElfIyngIaYzJ2RnzTi+yDP/paF0K02q
         WHMfcLD17wxgJEHFAqAm5KH5CTjCgMUUYdPYt/2D45Md7WfRvCXSawYSqxURef6r/Io2
         EzihB2Rm/AGVyqWDWq2sI0DjUyoRiHesgozOgaa+9TlT0/eQXnSmY59jesz3eDnL+evM
         NEZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=IHZ4xaWcDrZ9p3VRDJldzSVsIy/BU4TMels+REMJIro=;
        b=uZD+PnTuTe8VEOrEQCgi00nA+RZudf0OedSoUAyW/xBmz+GanfWuyEnAuIg2ce31yh
         Dz3K9rbJCafp/kSqAZDNYq7/JM2y5VoA1a8P3lBlOPH4EBZuoA884ksMCSTiU8LRXMKo
         Tfu+yka1pA7ZCktaBNclPTYCmufIqghoqVoDMOt3K4Y1y4B6sSWMDaOrsUL1Yy2SCCd9
         ncF0/OBWeV+rKanWEDtfd0dJtT7VPbewYNRt7LFfoGSXGIOja2T4J8LR17JhVPGytvr0
         A80Zk/XKqOU5IpNXQ/lD1Qm0umC5FI9NfndO8PYzkjvqbA0CzhCoD6eLSHMhVuugnZUn
         bVJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of weiyongjun1@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=weiyongjun1@huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id f24si321770pju.1.2021.02.09.23.45.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 23:45:54 -0800 (PST)
Received-SPF: pass (google.com: domain of weiyongjun1@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DbBbH46dMz165vT;
	Wed, 10 Feb 2021 15:43:55 +0800 (CST)
Received: from localhost.localdomain (10.175.102.38) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.498.0; Wed, 10 Feb 2021 15:45:12 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Hulk Robot <hulkci@huawei.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>, Kishon Vijay Abraham I <kishon@ti.com>
CC: Wei Yongjun <weiyongjun1@huawei.com>, <linux-ntb@googlegroups.com>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH -next] NTB: Drop kfree for memory allocated with devm_kzalloc
Date: Wed, 10 Feb 2021 07:53:45 +0000
Message-ID: <20210210075345.1096001-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.102.38]
X-CFilter-Loop: Reflected
X-Original-Sender: weiyongjun1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of weiyongjun1@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=weiyongjun1@huawei.com
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

It's not necessary to free memory allocated with devm_kzalloc
and using kfree leads to a double free.

Fixes: 363baf7d6051 ("NTB: Add support for EPF PCI-Express Non-Transparent Bridge")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/ntb/hw/epf/ntb_hw_epf.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c b/drivers/ntb/hw/epf/ntb_hw_epf.c
index 2cccb7dff5dd..b019755e4e21 100644
--- a/drivers/ntb/hw/epf/ntb_hw_epf.c
+++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
@@ -723,7 +723,6 @@ static void ntb_epf_pci_remove(struct pci_dev *pdev)
 	ntb_unregister_device(&ndev->ntb);
 	ntb_epf_cleanup_isr(ndev);
 	ntb_epf_deinit_pci(ndev);
-	kfree(ndev);
 }
 
 static const struct ntb_epf_data j721e_data = {

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210210075345.1096001-1-weiyongjun1%40huawei.com.
