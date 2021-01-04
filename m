Return-Path: <linux-ntb+bncBCOOP4VF5IDRBZ7IZT7QKGQEULM43QI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5D62E987F
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:29:44 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id j5sf25456919qvu.22
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:29:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774183; cv=pass;
        d=google.com; s=arc-20160816;
        b=bRGZX4ISFl3WOubHk/fh3i5jatPbDkDRuqIHY63niQrU7s4i84fjxu0OXlj+VAxHZa
         VqCjzcooj36QOJEoDJ1eRqxx4Stnd5rjpnGB6jgtQoRRiv7RqdBaJFJOS0+zXHWd9iwr
         ZIRxTIibMsG0RWC2tlJQOxzYMIt1EAjTFNbc/zAoPG3K2mUVeSIgyLJeHA4l2jsC6srU
         ZbXKPNaEDSURRxv0ojK/0yqYUC6mxuzBPUwlwPALimKzOv/MQpiTmiWTD1Im0m0mvNT+
         BxvFwOrjTypemgTaot1Dwfa0Wgca/zG/mcNWAP9oHY5Gkvn34xxBB7/+CYPoiqSBc2If
         MvfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=zWZeCud/QX/Gs8MsdkgdR0iXnl0rDrIwDWAwohQsFvE=;
        b=TjzMzULoxce5EuF1sAmefC1D5/rV/gendy4svHfAQsy1dFUWBfU2iWTg+8F52jf2L/
         3tzezl+qgYf2f94ycUlaLqM7SA4TETCggXc0zjgcLhDiRYe/3KTZLpvXz83C7njKuHTY
         QCv5m/bdWXbwX8K4mjsAPpPQbSRIE2bcs3L4lzzspcRXlBZv4RjNzBu+Uq00BrurRJ2z
         YT1VslZI94qSDLrvozJCrJlT4qhalJoQJX9FUK4ced6A+lPCIIiN+PYKaF3WpCpM6uJ2
         Vdgr6GPRrxiOk23liStoyJItZR+smKDioD+s8pENBkN4fgr3i4KI2lZVERwqUDDXwjuZ
         vOrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=onSE1HMw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zWZeCud/QX/Gs8MsdkgdR0iXnl0rDrIwDWAwohQsFvE=;
        b=tSHDqpeNYsG/xdhFPHuxCprrQCxrZlj61WinLn+kKCBRH3l8+oBXkIs+fPdbODlag2
         u8nO0qbwwIO99ncQzp2643ayxOPd1dxut5nePd/1ivzXJpRbFtHEZuj8RELhbGmqHpO8
         4cc48I3Q1lWfHDKZwD1xW3eentn4skXq27R4EiRAsRBqhfN83H/aeKkoNgAzJidpe8bJ
         vpIATp/ZBn2GF7GW7gn0inkECjJPx/gCgbuUsu/nuH5QE8QSS/AcZVxXyhzBFE/NcLj0
         eqdFdLDByOm6p+xt58Uwa6gzObMWV7mUURFZL7Fxw2SgHncpwWJHrjw8afMVSNfUhNM6
         0oAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zWZeCud/QX/Gs8MsdkgdR0iXnl0rDrIwDWAwohQsFvE=;
        b=R3WFVIPBE36duw0Gk7MLfHkiaS7m/Yv6Yk2ia6s8D+leQVbXrW2l4G9wIOQHLxXUdo
         x2Pb/MWUj3RKB7yty6YeFckVGfhfiuN74zbL/FBFnLyjjA7Ytu3e5yVzAhlynj9Pms2U
         SYa+T1M4CWOPYje60nPl6JBgUn9NzvSGMRtCymsK/o8T/TlJyZiuRl1zD0nP56bYcnAD
         nGW8f0sFUt4cuv122ubNhl80goqqViJtn3SjILfwb07oS2aMq8K7ZweyoygBBeij/xF8
         p+iIBmyNsG8WCYBLPjG0Kd02OBiEZaIqfuIPTUnYsbkcjmBSsZsjc9ckqhfm+5b2Dg+V
         Fm2g==
X-Gm-Message-State: AOAM531+oVwpwV4DiLxdmhUl52582PjFkeXjgqkeEJsFG8UT5GST/AS4
	nBl6ubGC9nD7+n0dKMPKXbU=
X-Google-Smtp-Source: ABdhPJykUhzS++NvO6JyfGE2xx+hy12wWTWJEU+mGxyn8w2X6sP9C4T52eUuJO4UuvOxJOtcNNOLCw==
X-Received: by 2002:ae9:eb10:: with SMTP id b16mr71576032qkg.29.1609774183268;
        Mon, 04 Jan 2021 07:29:43 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ae9:c001:: with SMTP id u1ls37700342qkk.1.gmail; Mon, 04 Jan
 2021 07:29:43 -0800 (PST)
X-Received: by 2002:a37:a342:: with SMTP id m63mr73044012qke.120.1609774182943;
        Mon, 04 Jan 2021 07:29:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774182; cv=none;
        d=google.com; s=arc-20160816;
        b=R/SQAGanGOe60rm+e53ap+Dfhmy9Mmgn6tpMmTfaQeTF5Iv+6mWBrtWX1WPONFFREU
         +IsYIYLsfDat/Aio1oNuO3fnsGgcBxCeOEtBFpMjscff/pta7INDuyAlYEss88evbRZk
         kFFUAJZRpiR3Fps4LD6yrZBim/Yc764gITyQkMmEXQgKMiyrBnr3KpZd+vHpstIb/eVE
         iUO0D9K0JRYENZ/kyUmoWvQ6Kck7nwbYiBgM1JkdQyXTzXLP0yO1AEAEx1hpFWImXILz
         +ljA3IyT0kPFrQCkQApXylJmkHflWNFHNYOYhGeHHyqYaF3+E+nuPc8hNWOpdZeO4Niu
         MU2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=re6MIOXxybv+Yv493YnPwG3dJx5wl6L6fPllpFd+bzs=;
        b=xMwnrO296Sdl4zR2PVsKR5GlstrmI9hINI65SgtMpqMLmHNA+WlDLS5viH8pxIXffR
         YLbx3QlAGDcp63b5/mlGfA8YAcVNPdLJbftVsx1cL5ZEf6OwXSsGsWsmoD0moLuB0qgQ
         Os1ul7W8VLb/aX4PR8u6LuruC4wNariNOSz460wK2J+RBTyTHEKDRdf4mhj3QdbXTH9R
         cjW3MGI171aHStUQmtd5Iyij55H+Xw64aizwl8dG0KETpJJe2KXGZrKi4yowf5BEBZMJ
         bKwB4VAseqWO0mC+eN9I41sOBxBibEi2DkIuMZMWbc+jnRBdQmSbfLBX7QL6Z6eL28q3
         b7rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=onSE1HMw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id m11si3074328qkn.1.2021.01.04.07.29.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:29:42 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FTXb1029095;
	Mon, 4 Jan 2021 09:29:33 -0600
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FTXa1078475
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:29:33 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:29:33 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:29:32 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZ8093710;
	Mon, 4 Jan 2021 09:29:27 -0600
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
Subject: [PATCH v9 02/17] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Mon, 4 Jan 2021 20:58:54 +0530
Message-ID: <20210104152909.22038-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=onSE1HMw;       spf=pass
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

pci_epc_get_first_free_bar() uses only "reserved_bar" member in
epc_features to get the first unreserved BAR. However if the
reserved BAR is also a 64-bit BAR, then the next BAR shouldn't be
returned (since 64-bit BAR uses two BARs).

Make pci_epc_get_first_free_bar() take into account 64 bit BAR while
returning the first free unreserved BAR.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index cadd3db0cbb0..25e57672e1a1 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -93,12 +93,20 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features)
 {
-	int free_bar;
+	unsigned long free_bar;
 
 	if (!epc_features)
 		return 0;
 
-	free_bar = ffz(epc_features->reserved_bar);
+	/* Find if the reserved BAR is also a 64-bit BAR */
+	free_bar = epc_features->reserved_bar & epc_features->bar_fixed_64bit;
+
+	/* Set the adjacent bit if the reserved BAR is also a 64-bit BAR */
+	free_bar <<= 1;
+	free_bar |= epc_features->reserved_bar;
+
+	/* Now find the free BAR */
+	free_bar = ffz(free_bar);
 	if (free_bar > 5)
 		return 0;
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-3-kishon%40ti.com.
