Return-Path: <linux-ntb+bncBCOOP4VF5IDRB2XJZT7QKGQEEF6AR2Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C55A2E98C0
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:31:56 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id e2sf16204582pgg.10
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:31:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774315; cv=pass;
        d=google.com; s=arc-20160816;
        b=mBibXLRBBAtUFr6qjdnVt+FD3eGg01nG+4QidP7uiQ9CkhTuKDhjdKiTgX1cKtvvsE
         2VIicBI+A1RHs5VYehYVb2DPt09IIZrddXvEGhBA/yiTAYljgq/rmHP6oUAHxS81sjpN
         Jv/AnSpzgVmQFuiDRjpDA63VbknV91pG3QoVrrlYXX9Glz6oPE87XxZKoKc12bzfu8bt
         8NncTSJ2WVRILmQBx9MH2jPKdSBFm88NExw4nVfmShuoAz81NXJsc+ufimzAPcKNJ3bG
         2ATF8Cb+npcuQCL/zfJoIzAH3cd4B4IlgS+Wp79Uf3sUUKRXwT968GuM0W5fxUxSf+qf
         wDWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=2gFYgYEfnl+OMeY5ahn01+RG5co02MmAw6EajuMPFak=;
        b=YeT/t/jVglrANXn7v3r+Vh68UkJKNBYmbjl2hNo9SL6egmcjDChzRGwVORQFjuPtVX
         E+AJgvBtukJWzExK4mOgQPojEfPbu8QNJUSAMecjav6D1wl0Y2n6efq4Lf7aMHgQ5Nh7
         RjhhVsuSFXbzS18LjqFcFNS4eNhAisAVVtQUfFRqBytjuSFxvetoLziNZAQMzPhYPdqZ
         9tJBSFxRWwepLOlGLe7P1pVWK/AzNGe11treisFNgFIxdXRiCHvqZoouldbCNBKxHBxB
         kIaYuzxEf5Q7qMKxYZt8Nuy8AAzG+mURdYoL/91tvq/559U3GaBoTAaNdk0jIH6v/Hba
         D/Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=cU8LKVpN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2gFYgYEfnl+OMeY5ahn01+RG5co02MmAw6EajuMPFak=;
        b=MqWMUayM2qcDlqAXIQEydqey+AAHL4U4D55gRiRknJ2qSl3pccKsWceegXZc6YY0ED
         U7cmNooE5Xv58QEzSfr1laSUCHW3jANgLA1r0FgP0PKmYYW94FeGwNK8u0ITkHwRnD0i
         yMsWMocFiVGB9x+G56S8ahBTPDmPoGY6Gfsc5oSWRxHPN3kfMnNPqVsMjushIBssZoAE
         YWECA0HZM9rPioIALiQGZz2LlKubbkydO8jl/BfnUAXHR4tcnO4ttFb7YhKGOAZL+nRb
         fW7LMwHZ5x98sb5uoZVkJY4cTANGhUHnNP95bxbYkfQVrV+HG+JqfD8hKUWpmAi0nQqD
         XN2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2gFYgYEfnl+OMeY5ahn01+RG5co02MmAw6EajuMPFak=;
        b=t78VZ35IHY2RMkfOL2tOMq9dYafmhFbo7NfkEdehCwIDvDA+ihKCEqfZzg6sdcDK9F
         ZagiWBzU8l+Bl46OcwiaiJ83CdD160qCLQwet+BwLlUOcckIQO844yiZ8XanpT/pfD+N
         kStWsY0XDXj9kMBzIM0rqIenfML4irk4Y9p5nzgtzOKGGQaV+ed/bjBqdGaaCMe4xzO0
         anp2jeCjqZtRxoFv9PvfO9vzQvUu3HYISDkteuk8Udiw9yKUR9E9DfmOCVwjkB3iH4gn
         vpPLDddliGSBSDhbtQJrvggtW8+FiSS4nXlJdYuEX9Q7rjLR4Mdnqs54WiV8RGQeuYPP
         UdOw==
X-Gm-Message-State: AOAM5305FjPCZPVa95kiKFJxpw3Ar5G+gLda9RNPmwXB+hTS30qfkIUJ
	e1dzOM4cWym1u0KbTPdghF8=
X-Google-Smtp-Source: ABdhPJwC9cq9O77o3Wk/OYiKmGgK1neEnBHyUX57seuByx9gF1vJmxEIOC4JzMBaysz5UMan0wGpsQ==
X-Received: by 2002:a17:90a:eb01:: with SMTP id j1mr29664587pjz.219.1609774315036;
        Mon, 04 Jan 2021 07:31:55 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:6d0e:: with SMTP id i14ls18368895pgc.8.gmail; Mon, 04
 Jan 2021 07:31:54 -0800 (PST)
X-Received: by 2002:a63:5a08:: with SMTP id o8mr29410756pgb.118.1609774314453;
        Mon, 04 Jan 2021 07:31:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774314; cv=none;
        d=google.com; s=arc-20160816;
        b=G7LpMRyzTYPJuMoPiMsfwFLTDAfo/Gt1ICAAKK72tPwX37E1RYe4FKL8IrstN+TYi3
         gYwfxhFVBZyMxy4cycTbqdfWSdUOWeyAi/nxQe+qk23emXlvRDbHcUO/lGcyvN2SIRg+
         nrI4lKiBBLbmEiEKeGSbNdxoMUHUkfXU/0pMA+B7rr+uo+hZ/fI40jPdKmcw+yErD/KV
         FkJ5r5zRoipoumzzms8rMuWhBRIJoDHjHh/ioKRNSvthLdfrM58Xkdv2RoF7PfFGvnY4
         LCPNcY8MbDvzgmKEfYdaiYKZjmjp1wcXgXVPTD90f4KCP1CSPvCU1vX0A3BLGra2Cbal
         Miyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WksIlAP2St63/dYiNF+cCQGpadcOB7vBxhhFZVaW4Fw=;
        b=fImEhrXfAnrmnyPo2J92UkY1hy7tsFXbQXWF3JWJDkdksySQtGb5vQsv+t+hqa0qSB
         wOQLkZUA8qYY5q9FTrerzlv+uBeQM3NkOHn1pu2ovSnHzMng0R3tt0O8g2IXMPN9uLVq
         /M10GgvG3RJZqlmNVFYG2Lj/BLhtMkIQjbEq/a3/EVbtFpi1yKslrekfdh9GEXaTAjY1
         6xOUzXMyy/KCl29CdniMWLimql8WN8PKclrgakfIP8gqmqaEHI+KBQeOYNx9hdiQjh35
         mOtBqMMi1tTIl6NaBQhkPmEa+j4bJv1u0uV7eG2yyLwLvz2gnhdcwcNPBVfcPnI5+nrB
         KPwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=cU8LKVpN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id z9si3865323pgv.2.2021.01.04.07.31.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:31:54 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FVkXd077083;
	Mon, 4 Jan 2021 09:31:46 -0600
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FVk0R081685
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:31:46 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:30:51 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:30:50 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZM093710;
	Mon, 4 Jan 2021 09:30:45 -0600
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
Subject: [PATCH v9 16/17] Documentation: PCI: Add configfs binding documentation for pci-ntb endpoint function
Date: Mon, 4 Jan 2021 20:59:08 +0530
Message-ID: <20210104152909.22038-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=cU8LKVpN;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-17-kishon%40ti.com.
