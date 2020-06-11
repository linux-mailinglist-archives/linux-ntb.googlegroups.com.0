Return-Path: <linux-ntb+bncBCOOP4VF5IDRBVGYRD3QKGQEUXO4BNI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 995981F68A9
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:06:29 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id x123sf4444648pfc.13
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:06:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880788; cv=pass;
        d=google.com; s=arc-20160816;
        b=YzYEeNqO8Wz9/xTJ4fFYAmG7YiatXRUrFVBwbwYNj8NueUYog0pVOFtx92VnniYrbb
         C6IyhLiYWnjwVWzHG0XEyDulO0j9vNvoZOw+p705uwVwCXflESFwXo4iTHQh+x8FhWnR
         19Z/HK109TfngY7NhuchglgyfAaPEHuoa4GzgmWrXWKAaT2b+4eaDcYFwoMDlCoUCqko
         z+HSEvzHHSVM0ygKby1/LlUkOkr2biL2yPkF8/ubsvMMDCfIaEavPRfXM9R08+2aeu2L
         PegcaeFTgKP9rqx7wmB97c6x515CBgcnDkRNzvlD6pLZ8QPf664kiVEmRwlr5D619TdG
         +s3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=rMHq1moAbH+HWh1CEbRHQLTOoCCM6EN/9fP8d0HiwIk=;
        b=yjYU1AaCEgHOjhmqgjpjLwS237mqi+Ul2i7z83MalLvBN2vylJF0Qnu02Z3jQRNBlN
         fE7BR3TlyCYg6joA87XyqgnD2KmT87QNm9Ukvj3+lJbd6znk3yg9x2CH+77sqHwVlsL3
         oRiYxhv01ALCMYKgnX4fFSbI4mPCtI2UIyEeQY7H9BekaXplk4/bzwsFv7YD40/7VHVK
         +WsDdeZk6DSZmntNMCrQAVRJz6F2xruHXpYB/utiSXk8RHZ3uLKNlAV3R3OWIiekagGa
         iXE4TUTHego+DT93ZZjM/oFOJZ+Ulhsub39H4KAz6I/xP+4u2PowkQnKp0N27ZRM9TLE
         Y1Dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Ux6WtxXp;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rMHq1moAbH+HWh1CEbRHQLTOoCCM6EN/9fP8d0HiwIk=;
        b=gM1jAF3GoW/645fzj0f0FwUZD8l1+e/EV4RX9PFFVKkuxDmjNB0N4mDVaLiwHKo/4P
         PQZNqo0NlVSxvjTtPqZBL0HydEGTvcZNp80esdsb8vjNx6MgDAaE4HjXs0F9e4QEzKG9
         N/M+Dl3He1aqoII+u3UzZh/mHYA+n1fiYDJi5jP8LpJGAyhhhWjbpsXbxmlp5wA2tEhe
         ijxdCr49z68LK3PKhMrN/373MhqKWHQ2fP1cn5+Mm/gYy1G8lAspcNg80GkWviER7ODj
         XyszWbwonPsQI2aWSmdRNLrEktDeTFNsuLYHXpiFq0eaP4RhVngGOFJLI/PoG1y+RfdE
         AVBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rMHq1moAbH+HWh1CEbRHQLTOoCCM6EN/9fP8d0HiwIk=;
        b=LqIaICeubCOikBlzFL3osGJlEzjQK/4LK3kGLrkxCCX116wWpeWOFcTPYOfA8sKfsW
         8RJVrUo2ravXPen4mnFjsQWQM8BcJ2MrRjPekRo2OlvLNziqoYINVwnlad2vZi+FipUz
         600RjX7x/ryB+CmsCILBg+uZI+I1dCtAy/nkcZz6q/Dm14zqw6ZftdhsgtQhLAjpraUX
         SZfh73PJV8Z/zn+FpzMYXYrWXuZ8JHTQDvAfr3XGd6NceNBrmPKeP3kQt6HfHvhKEqqi
         o5AbCixICA5x9IbTeRtPsIXUjgM4cP5WmBmXS1nHP59Z0SdhtodQ012Ea+sNPcsCmOPN
         Hzcg==
X-Gm-Message-State: AOAM531Zja210I9+OOaJzCYTMrKWz0zuhfkd+CO7aTvmDrbBBav/j24Z
	i8sd3LUjpB1zfw/MKGVBWWI=
X-Google-Smtp-Source: ABdhPJwrM+Y/ymt/ancW+jA5OVJwR5NuOaFEIO5RNAh5kFk2fnAmPS66rYG1rh1a7jc959kNY4bKVw==
X-Received: by 2002:a17:902:ff06:: with SMTP id f6mr6871044plj.22.1591880788312;
        Thu, 11 Jun 2020 06:06:28 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:c70d:: with SMTP id o13ls1004819pjt.0.gmail; Thu, 11
 Jun 2020 06:06:28 -0700 (PDT)
X-Received: by 2002:a17:90b:11d8:: with SMTP id gv24mr8309103pjb.66.1591880787924;
        Thu, 11 Jun 2020 06:06:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880787; cv=none;
        d=google.com; s=arc-20160816;
        b=b73kc+HvUlf2FlVl9yuM+cr4N7My3PK5k55yXCdmvtpg6CkNVElWwPkGIXnQtC0OOD
         U/ZDd60ZrCkrN2AM6JSEdX+jekbo9Br4hjG20zWRyLEPPNwIuLuL0cKxV/5ySMHFtUGP
         qlY6zH675O7Rb/cDk3dRdJ12W4nwZBU7QyeD8W8to16mFjZKSWci6NXVgNyFCvVC/y9m
         JysDw9pcRrjkE7CUFgXDnoWcr4O7ZkAas/0hRGAdUlNtphC8fbeCBai/JPouMeAhSZ2y
         +luEpk2yEOSCPSPODv2JZYINbCsczwx+MvWIDYdaIRoWUu4NBxDjtRDQxPg3oUizQ/in
         DQXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=hxanI9+6UUvWLr0THdzFbbxn2MMx7gNp0vEtbvEkpeM=;
        b=QkCqU8UTnIuBc9Tv0dMNXjops28lVo+8Yezgakkq6u2rC7bvJ4Ekn8g97FGEkpJ1zV
         nPBpOsONktfDphMcIpXkftZtHQP3FtU5hU+WmBhQZ1ny5u3Hne9lVllftlFn8edioESx
         jLh7CdY4318STmZxrM2JmDp/uHyzvGWi0N1CxmdKxBfDgXh2chmpvolF/uvONPTiNKYb
         fn1679eQqGUK4emapqilr924m5HBhay9WVsYB8KM4LL0Tw5LJunOUuOLlwH0j+h78nXN
         HZESLAWkbIM2Ccj30R2SyofkyjHw3MT33BpmYFzOJqTvZ4jd9bOQzvxB6RPqcddEKAVC
         pG7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Ux6WtxXp;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id x14si217891pjt.2.2020.06.11.06.06.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:06:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD6KQJ105632;
	Thu, 11 Jun 2020 08:06:20 -0500
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05BD6Ktq122902
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 08:06:20 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:06:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:06:20 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZC082585;
	Thu, 11 Jun 2020 08:06:16 -0500
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
Subject: [PATCH v2 11/14] PCI: Add TI J721E device to pci ids
Date: Thu, 11 Jun 2020 18:35:22 +0530
Message-ID: <20200611130525.22746-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Ux6WtxXp;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted
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
index e060796f9caa..03fade34aeac 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -68,7 +68,6 @@
 #define PCI_ENDPOINT_TEST_FLAGS			0x2c
 #define FLAG_USE_DMA				BIT(0)
 
-#define PCI_DEVICE_ID_TI_J721E			0xb00d
 #define PCI_DEVICE_ID_TI_AM654			0xb00c
 
 #define is_am654_pci_dev(pdev)		\
diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index 9a57e6717e5c..269a667a103f 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -879,6 +879,7 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-12-kishon%40ti.com.
