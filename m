Return-Path: <linux-ntb+bncBCOOP4VF5IDRBYMKWD6QKGQEABXUMWQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A2C2AF50E
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:38:10 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id t77sf623519vkt.18
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:38:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109089; cv=pass;
        d=google.com; s=arc-20160816;
        b=CeE+2d198e5kPizhFPJuQG44x5lq2NcA0leiwxSdWBt0NROdvA7VNsqcQiV/5V82ff
         qfQyc3nUKpGQDbnWetFlH+P81cqqpVDQtQehsTAtaUiym3BCuUdaXZvd30YJoE1h0K1k
         a3doIQ/VBV4b2z4LDldOp96Wmf1ccPWoehro9PbntEaf+o8EvyRK+IB5JEJxuhPdhiHM
         ZeOP+N56SmHO0Y6lANEu2w9/dfZD4YodCvILm0gtdPkF4ihCZn+/l/oaji3Ww8AuXg5z
         Cj86V0jZFs2i6L5rECzeEaIPDQZHGC5hGhVaMYe7etyQjxppsUlD2cAqKfnMvIJyi8c5
         j3Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=inD+joMsB2NyJuTWjEApk4pkblp7vT6FQDHMpiy7dXg=;
        b=oCOAbNgHMtEYPXkexHLg7rCI0CCJRoOw0hijH5GyHRG1Ovtp4AnVFPqUIOA9NLMEoA
         RkpBn/GvexgntXcM3z8rp3LKmioMd81PydAtxTPFRQh0Q28zEaefQvtMKOb/k9HCzXD1
         VGZ0Kqhze2pugElIKSDCvswBaIB6BoKZP9x2SeWvFdAmWNFau5C0eY5BVBX8r9qDJ6rU
         ZsPwkj03iReAUDN/RVqL9FiDnrM4lGGzUSlBK8K/LpLeF0p9D6pH1czBJQ1ctZIK2v/l
         Vz7C7RYypbW90EqRkU2usYFk+D7JAObW8NTrZ2hp52Kd8o2S1mS6mPFFRCNmcWg1jbdL
         FFFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="hPS/8l00";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=inD+joMsB2NyJuTWjEApk4pkblp7vT6FQDHMpiy7dXg=;
        b=dWUTGUQESNiYGcEddVxljljaZ8puRtrTxFJmU9dPu5f35irBRe/JHnBcC2R+u4BgZq
         gQlhbO9pWCDgaBsK+StZm2ka+p30sPB5G2/JpYVRb8gavyRmqrpCrKxo8u7O1DviojrA
         bhi6f99n5CiukwTCN3EBO6Fr3csQkueKxfumVTQGoCl7f53RtqW8923wSBpu+pM2hFZb
         hKW+ItgjfZhmL9IX59NxHVgk7nixMtDy5ZPiwJyQMMSdjHAl5v9AKoEUj2KIaI/mecto
         dWKnk+gVDYe0Pk6KLLyD8kXFlCliOYrg2yeuvEyongO9KCsKFFMm1nqgf0Mwm8DQg+1d
         OXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=inD+joMsB2NyJuTWjEApk4pkblp7vT6FQDHMpiy7dXg=;
        b=O6ZfbsdlRpw8iFWLFyTM7ZnN6prCWmnqfC9xkEUIGCFSPqg89EPxjMab5b86FbVhxu
         2BqOXqAMfgdkncSO3IIOOfhJDaIpYanz1cizcZBvCYkpbyj2hB1Hh30UPPuJMGE9xKQd
         mTmXK5avphx230c/Q/syYiaRi00WR0ZEwPupWIV/vC19k3se4n5tRVFf56r3E7zzeUT6
         ehIVsOjDujp2mep4/R7M0+3F/ql84v1ch9gOTsGZiCC3APn1UfqMxKYE9YmjJNySt4aN
         PvMdiYKJ/ia+4L5nnBhkZIV2Ce222eSm6K4daRjzq3Ek4k0VGmH19iMSq+4M0OFHtcg1
         tqUA==
X-Gm-Message-State: AOAM530V8ioJ/I4nimD2f6P0QXxyM6j2MHqFnIXLuGvgzK1AvMS3xhds
	C699MTXeURfKZXR81PH562g=
X-Google-Smtp-Source: ABdhPJwoWMet2Oghv6dAncQdz9mAjVQHrBhk+fdSi8FhvhewU0bEgQEDmqBwtjSg4LdFeesSAFeF3w==
X-Received: by 2002:a67:69d2:: with SMTP id e201mr14193843vsc.56.1605109089641;
        Wed, 11 Nov 2020 07:38:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:fd11:: with SMTP id f17ls33981vsr.6.gmail; Wed, 11 Nov
 2020 07:38:09 -0800 (PST)
X-Received: by 2002:a67:e210:: with SMTP id g16mr16133304vsa.28.1605109089201;
        Wed, 11 Nov 2020 07:38:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109089; cv=none;
        d=google.com; s=arc-20160816;
        b=hdj2eO7wLeNfYJhHbgzGy8VYIpPx/NAWzDsmXxGa2t2lzh0DianzW+LKaDZSk2DrpL
         TqywRZgctUibezD4OzxfFGzohFhSJjuGXXI9eX7H5UbmKnZeJdym3/Wp5lRn7lQUMbfK
         r3+37jTRcICgcpyD95vT+ay7ESMvErKDIqL9KPZFquPUJEtgJIx72q5uwyLCAlhdROct
         CxxYabAZSD7QhswY5wvD8//zsMYQqSh7puzkq7RsVjD9fkHhx37gIrD39n5ThaWDc+Sp
         rLmW810afErBiXAO+w9JFoLeUZB5CEY0PR+DUuxI3iUFRMN3YNHaF71JKVhRcjOiDhi3
         xnuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=ndxkszrZ9tydF+F8HPtFFndFvAk/rq9oF0I+x3Xb3Nw=;
        b=ptvcpQSl6oBklYRE4vnPiMOPMEL1lExIsXCNUjMAFOESowT2Y7fQT1uc/jjwJ91hM1
         PXpMqtOweciz5JmL41oFhs3HiS6nrwCdoAgME8C5VPxTNX/hUmv8Sj6ps38vOXEjjf55
         hY3XTOMrV85qfHrRcX0w8h0eGFFrMpakj6QmFwdRFPjxIel/OKiQo05Q62xeeRjd+hVI
         lM9PnYxEEh8lIbH/Jx3m9RrN8RjsNCDPXQAuCGqeAY6eozJQCHrrTaKCdXgBrecb02Wk
         xnvVzi7vmhxc9Gsn0topsZU4JgZ0FYnpCPURnZpbZKkoOwfbpYpPXrJjV4t+2GYFbgnL
         8yHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="hPS/8l00";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id v18si151480uat.0.2020.11.11.07.38.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:38:09 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFc1pQ125274;
	Wed, 11 Nov 2020 09:38:01 -0600
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFc1l0096150
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:38:01 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:38:01 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:38:01 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa045042109;
	Wed, 11 Nov 2020 09:37:56 -0600
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
Subject: [PATCH v8 14/18] PCI: Add TI J721E device to pci ids
Date: Wed, 11 Nov 2020 21:05:55 +0530
Message-ID: <20201111153559.19050-15-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="hPS/8l00";       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted
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

Add TI J721E device to the pci id database. Since this device has
a configurable PCIe endpoint, it could be used with different
drivers.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/misc/pci_endpoint_test.c | 1 -
 include/linux/pci_ids.h          | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index 146ca6fb3260..d4bdb937383f 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -68,7 +68,6 @@
 #define PCI_ENDPOINT_TEST_FLAGS			0x2c
 #define FLAG_USE_DMA				BIT(0)
 
-#define PCI_DEVICE_ID_TI_J721E			0xb00d
 #define PCI_DEVICE_ID_TI_AM654			0xb00c
 #define PCI_DEVICE_ID_LS1088A			0x80c0
 
diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index 1ab1e24bcbce..6ddeb64049b5 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -880,6 +880,7 @@
 #define PCI_DEVICE_ID_TI_X620		0xac8d
 #define PCI_DEVICE_ID_TI_X420		0xac8e
 #define PCI_DEVICE_ID_TI_XX20_FM	0xac8f
+#define PCI_DEVICE_ID_TI_J721E		0xb00d
 #define PCI_DEVICE_ID_TI_DRA74x		0xb500
 #define PCI_DEVICE_ID_TI_DRA72x		0xb501
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-15-kishon%40ti.com.
