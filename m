Return-Path: <linux-ntb+bncBCOOP4VF5IDRBXOYRD3QKGQE3QY2QBI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 010F11F68AB
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:06:39 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id 14sf3866551pgm.3
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:06:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880797; cv=pass;
        d=google.com; s=arc-20160816;
        b=G6dh+hcdxy2xsqz4EmrQJ73bZUL46lAfn+/WkHBsI+eaieOF7Yhdo15982Z1EhUdzQ
         RyoNIkhd3/k07PDIF7moRqOvWRAOPgoK4orGq28RMLXRCiG581hide7evw+rC2BCGzbA
         alWtMw2WfvBWZCdPqnVFgCno9lUKrL/vibaoWMeqD3xhUUBpCY5qwj2pWk3OG3uz+Nq9
         yYhbgdGVHWFiKLTLccKd/7twkb1vq/041yCUYoNEvl7RQnsThP2Jbf56p45ZWqA2l6ak
         qhKq3hTg0pDSqmMv5DevF0g2Dd9CqjboTjKGgCTRMM+4jtsT5eKDzhXoWf8Yg3Pi7CoK
         +DwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=C5n8YgQ9RlP3JADnhH2f9HOYHew9eK6U1eRN9MeLWpE=;
        b=oQ2bv8BKVQBe/MviBOLb4fxXcbKB9EpyVgpv2E89MbC35P/brypef5qkyTTg1xxiZE
         gCDe8pFyK9QJ2i5snNKHKZTcdlWNmHykrXeYFGVSOBI5gEdAUklx3Tn9ILW3ARRWBFd4
         utEis4tqEUHpYtxZZCch5wDg/LfayxhkBVmpvJpzbHC1NRPcjwoR9UP5bi0PO5chmJsQ
         MdMTo9IL6rxOWgLA6kNRnYaq5P7n7/ROIjxoybfgvudWtT4G4TvYnyenaDyNljDPntDf
         ESF8NxbNRCrSgWzttMxcSxJG25WHVR8Kd9Ov7wpVq+RlFZB2XpmBwc5GnKHq/NMxuEwp
         aeKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=anBe5naX;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C5n8YgQ9RlP3JADnhH2f9HOYHew9eK6U1eRN9MeLWpE=;
        b=bFbBYxISqCivl5MOXvDKy6GePECVXqUaQoyQEKI3qyciaPBnFoyr6fdDjS5pFZ5tl6
         MS3KZVTznW5UYRxBBATkCdmwIoFWMT20mR+SjG2SFX3aC4Xsl5YLvTQ4ZRxvIPPN4O17
         WGLOH5svJezHkLzsbWMsWMB0fri1CQgChVc61sxH9XHk+1Flb/oJyVuu4uNNlLfHTlww
         OnSNzxk+AHBMohV35CTTCB23AwKF3ZIAVhH0xC5iPUZ3gXFaELP7+/gl4t+NU/nXRsES
         bgnhwJxSFQBFb7whQeokJ4oRSJ7M/OLBKoVRF6GYRu3Vd938WePUc0PYbngIP+e4vMqj
         oVWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C5n8YgQ9RlP3JADnhH2f9HOYHew9eK6U1eRN9MeLWpE=;
        b=hzts9rJHcXpC2FWdca0YovfSLpnR3zSRLEGF6PHESsuW1VPhcT3U/KwdLCZ5ol0zEu
         YUcBXH/y7XFcSVlWdysOjkz+YH0PNSMQMaVd9KLxlJeFfqhJTSoh1rTCXBJNbxBMmScu
         pwnII0nUYDxn1/fU+ARxUJZFA39v1wUE2jY99sVPeVwCxdnox1fB5TUU+gISCCkqMb4C
         +SVkvME9srMTBcaJvcr2TLM5xV+NRTgP+RkJbOMcaQ68Fux5M5Hbi+T1BTNJd1IhCchW
         C+nUeCrug8Z86OTytFD04wpwP/nYOD5GcbJ+d0+KL8R+j682Nk5m8bB4NhRyBHq90gQP
         hOjg==
X-Gm-Message-State: AOAM530SwuNOvKsR6yYmHLb2ZU0tdFJ9FIRLZWZdt4obJ+FDJR4rVc8+
	GBuJ1XtG24xstHNQj0XOCu4=
X-Google-Smtp-Source: ABdhPJxQyIeHjTokP8FM5UGQpQbV9zJ8yXEH8+DrdmaA3Ru4WX71B6drvy/hUmE+vhYQLsbuAqEuAQ==
X-Received: by 2002:a17:90a:3321:: with SMTP id m30mr8005395pjb.20.1591880797761;
        Thu, 11 Jun 2020 06:06:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:3c1:: with SMTP id 184ls640007pgd.11.gmail; Thu, 11 Jun
 2020 06:06:37 -0700 (PDT)
X-Received: by 2002:a63:c142:: with SMTP id p2mr6720434pgi.345.1591880797328;
        Thu, 11 Jun 2020 06:06:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880797; cv=none;
        d=google.com; s=arc-20160816;
        b=aBIPtKY3/ZWa9ugQMjed0rzz2ng1GkQ4+6dcsZN8FTengiLEbEuT7r9QP+KHmfAAV7
         1wIdoPRQQoff++7fk93zzQv1bXg/rIRpeC/q4pHGRVUwieT3Y4V7b8TX2c9aVMqBd6T3
         grH5C+XI97J35xIR2ztuyLFi+6h74wcpy7clEtpjc+9Z4aRg27g23lM89JsMDFDfXThM
         tMWtjJVI2CThdarkFyQIWtCP/HEVLbmFUxhDvnOvIBGYWN/euP1/9EnsPfDaAROXCmf8
         lUyPUEr4tOg+zrmDfP9MCo4BmKDoAaLDqyXn0Oc+Xmd3SaEgc/HMbTOZ5czLn7zCacFN
         ljYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=PSR7JL4HaqO9swLj/T2R0uAkZr/feSQH9xlHyklOXq0=;
        b=M2L4yhb7by/CRcQoT5boLBF9xdZs7lWvzOXD/DMzQGjzUoVvbxl+ELwtIACg4tdPwd
         3I/y6BfUhKAk9uNIRJnEMwc6TNt6R1dWhsvsNO6IooOzA5UMSpCBhxfpafqH/idihlm6
         HpIiKr8mc6TPjp8FMEYZBVw5a25h8afrqY3bMi7CZqqcSQm7IOO2OrnbNzpJbiWRFSoe
         7bmfO3FsQNq7diwL2jCIyCcs1YXXs8a30aqH/I5QJ1crFlmfH0djcnLV5gNtB/e8sPif
         bj4+xo/xwzTJZTy38Jo2QoxsS3xcs3fZYp+9PJufmGSqNakf6EvQNxPJZVi0lxnrLpIy
         FCMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=anBe5naX;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id t23si242234plr.4.2020.06.11.06.06.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:06:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD6Tot107756;
	Thu, 11 Jun 2020 08:06:29 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD6TTi007427;
	Thu, 11 Jun 2020 08:06:29 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:06:29 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:06:29 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZE082585;
	Thu, 11 Jun 2020 08:06:25 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Jon Mason
	<jdmason@kudzu.us>,
        Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
	<allenbh@gmail.com>,
        Tom Joseph <tjoseph@cadence.com>, Rob Herring
	<robh@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>
Subject: [PATCH v2 13/14] NTB: tool: Enable the NTB/PCIe link on the local or remote side of bridge
Date: Thu, 11 Jun 2020 18:35:24 +0530
Message-ID: <20200611130525.22746-14-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=anBe5naX;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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

Invoke ntb_link_enable() to enable the NTB/PCIe link on the local
or remote side of the bridge.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/ntb/test/ntb_tool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index b7bf3f863d79..8230ced503e3 100644
--- a/drivers/ntb/test/ntb_tool.c
+++ b/drivers/ntb/test/ntb_tool.c
@@ -1638,6 +1638,7 @@ static int tool_probe(struct ntb_client *self, struct ntb_dev *ntb)
 
 	tool_setup_dbgfs(tc);
 
+	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
 	return 0;
 
 err_clear_mws:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-14-kishon%40ti.com.
