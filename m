Return-Path: <linux-ntb+bncBCOOP4VF5IDRBYOMWH5QKGQEJLI55VY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CAB276D3B
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:26:58 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id j35sf1976147qtk.14
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:26:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939617; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ty/i+v/ag/iracAd5MPDSQncBmttN6dQAsSzABh3NurCr/k9s7KsRRodHzFDW3gHwz
         oRHw07J+PTFXGOXrdC7zhOs6WSd3ogrE/hikjWwf1st8AjwZRbYHuslQx94wIBwaGg6V
         uw8Njt4/f032kB35KkLZ10Uh2zTfLJZ3JpJJrLzOuStt7CAss6RGDKyTTYvRsbq7lNkv
         tE7tf1QM9GeEjqWCwUPrBkV97A+U7FHNK4PFgrVUnDk4n6rg5Vj/o3tEbbUhqnRr5shZ
         kQ+kCTOMQ6ScL3XZ7XGHQqV+3Rk6PCg3rzXKxyPKv3z2fC4vrkvAokwTf3vKa7wAeSQ0
         Ou4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=0QTF0/2aeWArnjVjOlW66cZD0VnvGJTVBV8LBpJRPyU=;
        b=bSZux+qiKuPmuEfeSAM/P1PDCWJW0G2vpGB76gel2I3n+UnnoFKAsk8A390hzEoadg
         mCmzr3Nzs+4pX/6UCjfT/Ul0ZUSmglwHpXDSihzDMfK4apxZ5HUHSpaLnDeXoAVH4ZU4
         ogybYyZ0KpK/O/24VcZ948Fy5jAQbcikoT5IQKHnxppwq9rvquk7TuZlTxZeRTqi9/PG
         e06bywGrFEfWQ4nzZg2I1aJKpo7zLYXVDA+jL8UzIQsVelgbZRn38pkt2dav05iJkOmJ
         4JhX2JgO8HKY8iUVZ14oqCcQzgiFVlUPjR/fwWCFbZfw3SrFepDejZup3dbC4Eg1UZEp
         EnvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=RqPl4vzz;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0QTF0/2aeWArnjVjOlW66cZD0VnvGJTVBV8LBpJRPyU=;
        b=dNt9xqPHBKN2wRi2XhwYHo37qLQvwXZccPm4u2uKoxjiBV7exg97idmPsYE0Cbxv5T
         yYRXAGR1kJ1Gg+07GYFhBct06qwjv7GoRaRZyVlNHGcUCUCLOvGpvoyk6nUuAvRnP9fj
         itFvgEYnP6xtA1lkMHs1nGBGh86xUP2GRLPxAZ/ImHyPNGekdA59qReelPFY1LG1pBk3
         mic/Jk6YBMvvY/VEdYNHK5kDQWjWCpbSRxVdP39u6QhTtdGY5b5c096Tjt3I0uawszaO
         i+euxbNcQlt/Q3/g64LnSaZ6FANCC8UyFvXSBHCEHrt2ThEjG6kePm7bLtZxY/b4TG4f
         M9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0QTF0/2aeWArnjVjOlW66cZD0VnvGJTVBV8LBpJRPyU=;
        b=g7+0Mn/EQLoIQ+lcKoDQoypeoQ96Y1ogTZQrZbcOtFK0quIaBBG3qNsNp3PQABk160
         JwUackBi4lv+Irb2EIyYZLJdFsLF9GNATkMp54GBg7HdoTeTbzfWLQuyjZGhV+ljjxjG
         rNZrc3rrw6rFAtXV3aTtrqqVIcx7m8uNLdcflnPBmHeTdygFny69RkHdvwMJPTEKZDyI
         +Zw2DeHSp/kKCESh9QVhhmH6L09/hMAauslSkt72ATBuB4DeVg73nKKnG29IO9wW//4v
         8F5uEnQhs5PiFGo3sGnaLDuvrNqK9z4TuA+7QZy+ZFdsVzncC4SUewBmK/Nl6KOeMoa+
         5Tcg==
X-Gm-Message-State: AOAM530Fxnj80GYl8Lx0OtZMM+4VwsbRIK/9i4se1L/DlJ+zAKPS0qHN
	cqEH6N4AMlS3vz5bLE4Jvps=
X-Google-Smtp-Source: ABdhPJy8C/kZ7qxxpblA4wqVk6mooR5yInyElvWjUTNNIuwjM/uiamBFTVvTjwFGhGIB3evwDc/U1Q==
X-Received: by 2002:a37:6481:: with SMTP id y123mr3815248qkb.464.1600939617180;
        Thu, 24 Sep 2020 02:26:57 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:dca:: with SMTP id t10ls1120779qti.9.gmail; Thu, 24 Sep
 2020 02:26:56 -0700 (PDT)
X-Received: by 2002:ac8:7b3d:: with SMTP id l29mr4639762qtu.366.1600939616735;
        Thu, 24 Sep 2020 02:26:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939616; cv=none;
        d=google.com; s=arc-20160816;
        b=BRg5hPlEJJIJvoWJzF3Zc0TnlCLHMiDMk2hOz7t1L9M3B21cbEKg4sfqMF0Hg7yz+6
         1A/aSt/QdKsyq5KOEEVG6sARgJ5SZ/oM6IyZW/heWMpNq6Z+POXSBjRyLXPNynId2ThV
         RhY0r4syzcot+FRFdWwdcQqEEhaDivXS4uLE7B7514tvh0wHZwHOsIuUCmd7kd04BKej
         L44WoCr7ch5VWmTbSH7C1RCCPG7YKW1nUgtBSR5/D2xhFrXFRfbMX3/VdVFkQUejhdf6
         AQOz6TqDOPOFyGHocsEIVAzivFu/NRnqJqS1cRge/vRFbqKwXFQ/LD8ARBxg89Gm15PC
         sTsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WksIlAP2St63/dYiNF+cCQGpadcOB7vBxhhFZVaW4Fw=;
        b=f2SrzMI2ylpzUA0DljZ7TmPjMiok+xw1ZR7sSCavLD+xlpse04oPZsELLqiI552+ml
         AhMeqA9wamSD8YCRKZxHWH5F36eY/rtPyYfIB4avThhU1YdtG5afmxH4OHQ95KqaTV4H
         ozJCyVpMXRfZoktCUyJfX0iNnGRvE0UZ0WZCLJXrWLKO9z9ebVSUTpxs9rk4Mb9STFMV
         uFlPpZbYWGd7Q4JEMwXRU2+P+qsg7W9UKl1zELvgHZGHJmr+a2Z4zEQkkDN4yytqz1YT
         0ZJrLITUqQH5zqI8CARLJNOt0+TbSyFNx6VDydC0COv/C7GhnselzgibLW3XBjotK1gn
         NppA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=RqPl4vzz;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id h17si132481qtu.2.2020.09.24.02.26.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:26:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9Qnki117742;
	Thu, 24 Sep 2020 04:26:49 -0500
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9Qn9X036918
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:26:49 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:26:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:26:49 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POZ5011000;
	Thu, 24 Sep 2020 04:26:44 -0500
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
Subject: [PATCH v6 16/17] Documentation: PCI: Add configfs binding documentation for pci-ntb endpoint function
Date: Thu, 24 Sep 2020 14:55:18 +0530
Message-ID: <20200924092519.17082-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=RqPl4vzz;       spf=pass
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

Add binding documentation for pci-ntb endpoint function that helps in
adding and configuring pci-ntb endpoint function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../PCI/endpoint/function/binding/pci-ntb.rst | 38 +++++++++++++++++++
 Documentation/PCI/endpoint/index.rst          |  1 +
 2 files changed, 39 insertions(+)
 create mode 100644 Documentation/PCI/endpoint/function/binding/pci-ntb.rst

diff --git a/Documentation/PCI/endpoint/function/binding/pci-ntb.rst b/Documentation/PCI/endpoint/function/binding/pci-ntb.rst
new file mode 100644
index 000000000000..40253d3d5163
--- /dev/null
+++ b/Documentation/PCI/endpoint/function/binding/pci-ntb.rst
@@ -0,0 +1,38 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+==========================
+PCI NTB Endpoint Function
+==========================
+
+1) Create a subdirectory to pci_epf_ntb directory in configfs.
+
+Standard EPF Configurable Fields:
+
+================   ===========================================================
+vendorid	   should be 0x104c
+deviceid	   should be 0xb00d for TI's J721E SoC
+revid		   don't care
+progif_code	   don't care
+subclass_code	   should be 0x00
+baseclass_code	   should be 0x5
+cache_line_size	   don't care
+subsys_vendor_id   don't care
+subsys_id	   don't care
+interrupt_pin	   don't care
+msi_interrupts	   don't care
+msix_interrupts	   don't care
+================   ===========================================================
+
+2) Create a subdirectory to directory created in 1
+
+NTB EPF specific configurable fields:
+
+================   ===========================================================
+db_count	   Number of doorbells; default = 4
+mw1     	   size of memory window1
+mw2     	   size of memory window2
+mw3     	   size of memory window3
+mw4     	   size of memory window4
+num_mws     	   Number of memory windows; max = 4
+spad_count     	   Number of scratchpad registers; default = 64
+================   ===========================================================
diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
index ef6861128506..9cb6e5f3c4d5 100644
--- a/Documentation/PCI/endpoint/index.rst
+++ b/Documentation/PCI/endpoint/index.rst
@@ -14,3 +14,4 @@ PCI Endpoint Framework
    pci-ntb-function
 
    function/binding/pci-test
+   function/binding/pci-ntb
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-17-kishon%40ti.com.
