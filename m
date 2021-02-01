Return-Path: <linux-ntb+bncBCOOP4VF5IDRBOF34GAAMGQEQ53GOFY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B81C430B10E
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:59:53 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id c37sf7878679otu.0
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:59:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209592; cv=pass;
        d=google.com; s=arc-20160816;
        b=sxARt3QOryb3yDgnFLLvVFp4q058rTluoLCq+ZSgItUz/NnXFxg9xJ9+CiZDD7q3iU
         0WbjHX/4A+T1wpvZlCJkUwtilF/X3u8POfRUj/qDj1Iz5imZ3TrVnLIomltA3ycmvHSQ
         bIeplk+1Ph6GZ7iZNM6jBa/KQGEBVHK+ZtXeLWAJwFBQnyLoZYN+74G0eVRWwSdKtWOf
         empkmksBuO1QZs8X2q5753E/ARYiNeACVjseJAe00hmMjHoay7L+0QpAT/85GHSEt3aH
         eQQlvmo4bi93WKXY70ImGb9JJIqL82lUeUJMgtodMRasw79YIfTnciwc7+REEFYNam8A
         mU2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=zn5CTySnwHdyWuQuIQswNvp7wxdd1wQpCdPFnORGMhE=;
        b=A2qQRtSZIofIGHUPhzxviB0bthdORQP4kr64NQ6eWgHYZLWlx2ruGLZpZLpAT1TisW
         wEy8prIa6dpn7Vf07jZ9/jN+pipq6QmTAGdWWU0NlOz/21FQLGX4pPLfQOp6cK3hyvLr
         xhPxKnG6A22qSUAPT5gmUZ+yp7g5f6cnX76H5XxEHrxzUyGFO2AQbEKHuwECaSxyNPI8
         0Mrg13TXHvGhSJUo0p8U3TJZtIePyFNv03TUumuxz1USl6w/GKuLB/9rXJiYEbiGrN2b
         nmN9sPOfLzm2TChK7hlGt5pQ2LbcrCsJsfvijQo+CkZ7/iTRuNycCrEzuYCfKlp4F9ok
         xx0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TwZFmTrf;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zn5CTySnwHdyWuQuIQswNvp7wxdd1wQpCdPFnORGMhE=;
        b=KvMU4b4SqdCjBjRro9Z8DwJ8rdTGQXeQgZEMgTfYf1ZV5fh9hO1h174GdApC003DyW
         Cb4YoimPNNtGSES13t0Y0XO5RvnTqiAqzsCI3PxlLj94XqcUmZnKXBhi/wN7P7CQN4Qt
         heLnpHYayg3GL8i1rEsneRRObMcl/iS/EI+armhQqabF3yyr9qyISryQi9mrBQxFSaBF
         H+Wyw/D+O+zvg0/k6Tb0b3lXLHdetGXZmsEn/79SXaBL63h92rdHZly5pxQqQj3UHq03
         4oo9szAtShVTLqfdi8V1eqrc96Je6GX1OzlarUFPaXIDScDnKW6vo9pgs3YyqiuvXgNK
         MtIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zn5CTySnwHdyWuQuIQswNvp7wxdd1wQpCdPFnORGMhE=;
        b=nWRqGul8YbAD35w+nvPJpIY17y6OvUMaccxLhWMSNVo0v0lWCOCstUk8CuR+s04P3F
         O5ErM31wkjg1E6AoIn/pTMuuU5qZwZ3YDc7SIQE1T4GvYsZMG6gATTQwY+QJhnXG6/yP
         hWQJiwrmsRG1Q1Zw3ukX53BCv0E9ny6CAya0AU6+mcNw7ZcZf69OrwWsaWlzXxdFwyjL
         NlLGDTjVOWJCPcC68O3t3KOWzy4XmHHVARNFEeKLV+lbNRgtMAB1dnYG4jQi5yCJzrik
         oDET4pRUoO9amhNuHR40HlX1L9ehmcDO6b5l4QOH7krFmz4iUwfArR8A6mxDKYUwkZV2
         Xdtw==
X-Gm-Message-State: AOAM530GZ7CyjBx3JwQlDTul2gRoPaERNxv3nFPHzhMHbdOHWHnT+ml6
	fpBZRxGWzYpT89Ed6pg2y6I=
X-Google-Smtp-Source: ABdhPJzuwuFmiEShcfLzEwp9efI7B2YIYbO+/4GoCsdCoHZnyRbF5q5FqvnyygTVYsDwwDFA5S7L0Q==
X-Received: by 2002:a9d:65:: with SMTP id 92mr12574793ota.207.1612209592746;
        Mon, 01 Feb 2021 11:59:52 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:1105:: with SMTP id 5ls4305138oir.7.gmail; Mon, 01 Feb
 2021 11:59:52 -0800 (PST)
X-Received: by 2002:aca:5e46:: with SMTP id s67mr388370oib.8.1612209592418;
        Mon, 01 Feb 2021 11:59:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209592; cv=none;
        d=google.com; s=arc-20160816;
        b=oQF30lrY6wxwPvh9dpNvQASXrGkbyCIpbuwffCyu4VHpVvb8ycQJopkPtBL94eWIWY
         HIG6AYkadFBzhRJ3MaQp8FNwM4j4DROmhvuE2yeHswaGR4RPY1ngmw5lvXsxfMcaY3WH
         VuTn7gUj+6RLPq5bqPy6vlXJJhBuR+qfleukILpcv3hoctqbOLYykn8DJNmpS1boGcDj
         Sc3CKUJjP4hAbXUjSKX5TVFPTU7v6WvjQ3TNwL6BUsm1EwODmbr9RykyVxCO2BO061Ic
         9TDgtf1rTg927IooBLDezYu3H4P/N/cZ4DkFjQiql9ZK4OQzPH2NiZMkTZ18yH9Ai8TF
         1ECg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WksIlAP2St63/dYiNF+cCQGpadcOB7vBxhhFZVaW4Fw=;
        b=JpotiCEOpytGjrvUBQm1p21PMwUMy2JFPCoS8YRN9jAZocQcOVomCz41YOwRbSlkga
         K4OLhSZGDMvXqS7xZQ6WDtXVBYV5q7+CYz7a9QB4K2Um+Eq84EtN044VUV9nLHHjrIEx
         4SfB8QPIFbW8vZXORVDPn+6a0r8SkwEgPIFvqZxQo+kS6EAX0k/gTvGjcONRbWa4Ammb
         prQzYXmkkzpARYb0QaHt2z/PxgUmF/SxkPtvaoaY4kx9HHqyZxTcpLyn+gBjg2frHWE9
         GyZIqgK/Zw+Ya8Y0P2mcBZa1NuxraJW88g+YoTDU7pcnWfbRh9BkQAZOAEOyw0IhB/9F
         ljCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TwZFmTrf;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id r13si870771otd.3.2021.02.01.11.59.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:59:52 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111JxjVk024236;
	Mon, 1 Feb 2021 13:59:45 -0600
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111Jxjrw074258
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:59:45 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:59:44 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:59:44 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQn085814;
	Mon, 1 Feb 2021 13:59:40 -0600
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
Subject: [PATCH v11 16/17] Documentation: PCI: Add configfs binding documentation for pci-ntb endpoint function
Date: Tue, 2 Feb 2021 01:28:08 +0530
Message-ID: <20210201195809.7342-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=TwZFmTrf;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-17-kishon%40ti.com.
