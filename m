Return-Path: <linux-ntb+bncBAABBP6LR7XAKGQECE42IHA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF2BF2AD1
	for <lists+linux-ntb@lfdr.de>; Thu,  7 Nov 2019 10:37:05 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id i11sf1287266pfk.9
        for <lists+linux-ntb@lfdr.de>; Thu, 07 Nov 2019 01:37:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573119423; cv=pass;
        d=google.com; s=arc-20160816;
        b=YBJI0zFIsxUv+YRQw/7sB8Ke1nQ6Hpr+UupUvdE+5wWQ1UcxTGFylysQBB4Ge4/9bt
         A4NF/0RZ2Wn3UPdisFlwycPSlXp06ss0r38gdvm1FrPkKWj0N+FxQDlrkRDHiuEDkIvr
         SDqs9l/qVNCmEqvd34UGhTfK67KoXeC2xW9WXhltaPYMMbJb4mIGCnIDNTeYMmu4Cr4Y
         XcmIKAZJn9JpIPisQAYuolsPDd0HZ2Gi5rQNl+56eJeox2cYCaMdZSwsLfjJaSoG3rhg
         qv7ZJJSMObJ8rGo9Sj+e6svTPuQcOsRS1zEu52uc4CSQP4nTdNfy7eTkLQ/KMbKptkc0
         wiYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=xWLjkqNIiL1zr/d2d+KuNrr0orPQchDA2oyevWDTQqY=;
        b=fW8np85NGCtw8gvzSJrLqzmIqClVyGPN4O8ieXWNrylDRfSww3Av61wGgGTjaMdoqh
         9Beo8HsRPLc60617o7Is5VPYqAGPHK2P8KrODMvlAL8btpmald4TodOjX++UB+MDbnn7
         Od1SOM1cucs60mhjSpy5qgyCIGT/7ktipGZ6tBU79vWiVRovRsbq35uBsHMC3+WKIJaX
         /K2XErj0ADXth11g7RReK5x60LEfOrrwMIznE9sPUJT9CvFJIOZDPUlt/dd0uXkg+Vkp
         9lOkPadof1AQV94CE/UjosMXlWUPY4szZMbzmJ9qE7AKZwYhMbN1nMKvTJXWIgMc3U6N
         qL+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xWLjkqNIiL1zr/d2d+KuNrr0orPQchDA2oyevWDTQqY=;
        b=LVqCuiT6BTCvqhKi+FUhA5FCmUl27bw94/Sk43rdQPEUnWcHiOIL0XROB4lS2FkMft
         ihG0UY44m4+pDQtmP7CQAUBuZo5HlbegAXkOlpuVgliAxnptaV+Ya2G7bCcw0n930sZ6
         NLbxr7FJPNcnl4annAZOHRbsx+1pah7AcMVB0i7v4kxXMOHTUeEVRxKss27nkHZMwcbf
         EA2oUNT/knPpoLR/ltyQo6SChgGbr0j3tZ1lFQWstdRYLzX+e1f/hgu6XlyTik4HljS1
         Ne7RUykItfH/dpT6PLwy822WC7FjFBYy/WnaUpT8UYEtlJoTKUY5vX2hHynNLI6PdAVv
         NQew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xWLjkqNIiL1zr/d2d+KuNrr0orPQchDA2oyevWDTQqY=;
        b=EjJQhZ8MA8ub86ee7N3AjlPK8EZgm6XCM2gd6N6EPjwu/PNCNTkQEC1/ZNfziKx2v3
         zRa9uCUGvfhDcdkFFCxXxAZlbSFLDzLdd5boB6VSVKUa7nhcWrWLwvIKQOOnI3NU1QZc
         joFBFrvbfapqs9bLnEcYTyDb4I4Jg4NWZh17xc+exAmiQ2/Mm11fcgSYYFkdGvXVT56N
         WiLU1qF+2WoW1J3BYmF2Q84oPDsaTz7bS8YIR/3Jg0OJmRBpRS40yI+85NuCZxImh+f7
         PxLg4//+0S6SWZVvCsIlXByjmkOZZ/0P6titbhOpeuL9DeVpMkmFY8ANKtMKxHaWZRiq
         0iWg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUTAX85EiQOcSAkwYCODTh59FbfffHI2uz4Aq7tgQLk4xs0z75t
	frC18FKe9aWugiPIO7ZYXmU=
X-Google-Smtp-Source: APXvYqwlRr9cOukfOkaNRCcSOa0BaOyw50+RgOFmlc9hHhgl2OFt1TfGr+AhLCggWffxc37ZPHdncQ==
X-Received: by 2002:a62:e219:: with SMTP id a25mr2710762pfi.252.1573119423379;
        Thu, 07 Nov 2019 01:37:03 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:5107:: with SMTP id f7ls1366234pfb.2.gmail; Thu, 07 Nov
 2019 01:37:03 -0800 (PST)
X-Received: by 2002:a63:4552:: with SMTP id u18mr3279177pgk.103.1573119423039;
        Thu, 07 Nov 2019 01:37:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573119423; cv=none;
        d=google.com; s=arc-20160816;
        b=B16boiLSZBGkxnUcz8S5KLKczYsCuu455C5wUJp8dbE5xx0oIQlUQY+Ye5SkFqeSOu
         xApNghW8pFygg3OgI1pd9ZtrHPyo0r4DripzmWfh53HHz01ATUytUV7QF/FXYOMMemwm
         N5wQg2M9y5My1kQUTYqkXwSlJXK+ZYS0q+gLkw18PEqm25gVvYIBTRBDSSlSrMsax9n4
         /mIgqdZyZa3ZcOxxRtZ/29n/F8HWV5TgdbZu0+AIP0IpM2dO/+iv52fV7Qr54EDCZneN
         AKxezhhpu31o55cMbm5V7jBqknBcxjJBWeiIechA6vZXG8wrH+nv+UPUQNAMJ+LZaxcy
         FkcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=peVo9nIHie79rfdh6OdEJL8Xohafwz4IGmN2xmyvw0w=;
        b=Y+SRdXSFd15GaDkHLxZ9+RBcEPKmylNE/aIgfXOa3lOZJmBETauWiJLPjXKFcOUaC8
         G3g8nvXHCffcLPNbypL/mj1iBiSOi3s1IokV3+o9/vPnXXCE9M5m8LHzJOriibvlo+y6
         Qcpy1N+xs5U6kSTfvCDI6hKadi88wWNF/ljDEm7ZHWoSkXPez4PRJIIfQ7To2DmD77D/
         H7WxE7FqTafBH8WoxRogKNJ2Tb2A1RYPZ/IJHDA0i7apXWin1k7qSXXHXkV983PkndqE
         n+b9hgfhBNAstP0NqKcsC3gXnFp5/Rcr+9vocRrQOGcO3+drzlYVkomu04L3g4IavIEC
         NcJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam2.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id r20si140658pfc.3.2019.11.07.01.37.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 01:37:02 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-FE.hygon.cn ([172.23.18.61])
	by spam2.hygon.cn with ESMTP id xA79aoag094479;
	Thu, 7 Nov 2019 17:36:51 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-FE.hygon.cn with ESMTP id xA79aiNP024677;
	Thu, 7 Nov 2019 17:36:44 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from ubuntu.localdomain (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Thu, 7 Nov 2019
 17:36:46 +0800
From: Jiasen Lin <linjiasen@hygon.cn>
To: <jdmason@kudzu.us>, <Shyam-sundar.S-k@amd.com>, <dave.jiang@intel.com>,
        <allenbh@gmail.com>
CC: <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        <linjiasen@hygon.cn>, <linjiasen007@gmail.com>
Subject: [PATCH] NTB: Fix an error in get link status
Date: Thu, 7 Nov 2019 01:35:36 -0800
Message-ID: <1573119336-107732-1-git-send-email-linjiasen@hygon.cn>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex01.Hygon.cn (172.23.18.10) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam2.hygon.cn xA79aoag094479
X-DNSRBL: 
X-Original-Sender: linjiasen@hygon.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
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

The offset of PCIe Capability Header for AMD and HYGON NTB is 0x64,
but the macro which named "AMD_LINK_STATUS_OFFSET" is defined as 0x68.
It is offset of Device Capabilities Reg rather than Link Control Reg.

This code trigger an error in get link statsus:

	cat /sys/kernel/debug/ntb_hw_amd/0000:43:00.1/info
		LNK STA -               0x8fa1
		Link Status -           Up
		Link Speed -            PCI-E Gen 0
		Link Width -            x0

This patch use pcie_capability_read_dword to get link status.
After fix this issue, we can get link status accurately:

	cat /sys/kernel/debug/ntb_hw_amd/0000:43:00.1/info
		LNK STA -               0x11030042
		Link Status -           Up
		Link Speed -            PCI-E Gen 3
		Link Width -            x16

Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 5 +++--
 drivers/ntb/hw/amd/ntb_hw_amd.h | 1 -
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 156c2a1..ae91105 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -855,8 +855,8 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
 
 	ndev->cntl_sta = reg;
 
-	rc = pci_read_config_dword(ndev->ntb.pdev,
-				   AMD_LINK_STATUS_OFFSET, &stat);
+	rc = pcie_capability_read_dword(ndev->ntb.pdev,
+				   PCI_EXP_LNKCTL, &stat);
 	if (rc)
 		return 0;
 	ndev->lnk_sta = stat;
@@ -1139,6 +1139,7 @@ static const struct ntb_dev_data dev_data[] = {
 static const struct pci_device_id amd_ntb_pci_tbl[] = {
 	{ PCI_VDEVICE(AMD, 0x145b), (kernel_ulong_t)&dev_data[0] },
 	{ PCI_VDEVICE(AMD, 0x148b), (kernel_ulong_t)&dev_data[1] },
+	{ PCI_VDEVICE(HYGON, 0x145b), (kernel_ulong_t)&dev_data[0] },
 	{ 0, }
 };
 MODULE_DEVICE_TABLE(pci, amd_ntb_pci_tbl);
diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
index 139a307..39e5d18 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.h
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
@@ -53,7 +53,6 @@
 #include <linux/pci.h>
 
 #define AMD_LINK_HB_TIMEOUT	msecs_to_jiffies(1000)
-#define AMD_LINK_STATUS_OFFSET	0x68
 #define NTB_LIN_STA_ACTIVE_BIT	0x00000002
 #define NTB_LNK_STA_SPEED_MASK	0x000F0000
 #define NTB_LNK_STA_WIDTH_MASK	0x03F00000
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1573119336-107732-1-git-send-email-linjiasen%40hygon.cn.
