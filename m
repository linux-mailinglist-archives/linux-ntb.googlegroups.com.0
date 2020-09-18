Return-Path: <linux-ntb+bncBCOOP4VF5IDRBHNPSH5QKGQEKDJJY2Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B61C26F643
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:45:50 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id d128sf1011189vke.23
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:45:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411549; cv=pass;
        d=google.com; s=arc-20160816;
        b=EWnz+6oqSlWLe6fs84SIvs+fNk1ogqG1LES9cdk5RzSrqPnCM56c+YA4Ci8dR3hbfg
         fCvpZ7po9e1WjN4GBELxeDrTmjt4LSm9tihgx99RPoGy7LQYSBRMQy5l8zIae0WIlljJ
         HIisNZF59dOnp1cffL+D8nvKOeKmX9TbVygUZmuNyImQITJbxq4EruuIqT/HNle2aI1c
         qCs5JWxVlYYzrYxHGzWcNlLUIFY635kRigVWDhWBTnnrh6Fty2diLbcBOjdMbAbKfVpD
         DNXJ3a13IDTQBko5gLactJWIHw6w5y0vFyoCi9517Prrix85LgOzGOfib45+piPYGxna
         YZQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Krh/cFKsiF3lojgiMa0X+CaTWt1xSSgbHCNAroqrtiY=;
        b=yUAG2j5MEfi/T9agqHV75Q5CA6h4zm1rRYW0OSUa4JGks3LYdx2fJMTi2HlDypBdh0
         DVe3bKj5J9FpIZb+4lNsQfDzGdVWOJ4/5A2oxct4mP//WAcQTlxYuZ3i2qWGYDVm5u19
         PcH6wovmzy+LpYimHOetBuyuB8e1AxTHveYiK6RdlX1Z1/9hHTC5fxdcrE+KOZmekoUR
         l8wPRhOaJZkmTq6obnzOOoMK8R58jFHVmAzOEnRXXpLzY/bWUmruOtmyUkyzL2pHncRG
         mmIaC9Ew/aRvJCrSrlHkIMz18z5fobKiLJdmNrPSi0bZ6D8cf8qLMNxtPns2F5Wx6EEi
         jDtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Ra/Qg17z";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Krh/cFKsiF3lojgiMa0X+CaTWt1xSSgbHCNAroqrtiY=;
        b=L/A+XBFJCkkkVaVM95f98e8GJLvN2eNjR9v+APD9m5rRJ673bNUqcax060+19UBthd
         MNq2lxg9//qEt4F+azRv2KXSQA0yu6qROC4IaGJIFRkXyPENYFcO61dKSWNzwuFaB1GB
         8iv7UunzbJieCw1RAg/LIPcVKiccXOX3Ef9CEchJLhx9XV9xpZyHLeEAlUIWlvYR5a/B
         KrM5RgdNyl/fD9aDCsj8HXx5BV9v3smKdelVV1STApojcfdct9Qf97zOJ9mLIYQwAkKI
         VReLHaAq6oaa9YqDiVrYFXa3gHzLCTe1SuDn2TjekZ2tswJqaSpkywvyVBcAn5dNgWfQ
         FO7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Krh/cFKsiF3lojgiMa0X+CaTWt1xSSgbHCNAroqrtiY=;
        b=ZXxUOez5PyQ122p+qCjaaBatyN5bWgkBRRoaCEVrOKkaIpIfdZWxQPklINFMIvPf3e
         p2sEIA3UlVjXEfRwZV0OQarbjxgMyELrgW8TE9C2TzJtlZ2wIjA2cIJc82QaIIwR2tUb
         hV3pidCGEWBdvlcquu+1ETOmPnwu+W8d8vlnq4BA2qjgt7y9vMxKclA0NxHsWCb0RfTw
         E1axfRZ0AXPgeQ7zO8p7/kc+3sxMlP2kQQLytWTWSt7R0x3m26xx5lbBrBLos02rI5/L
         p/eedky6/+XC9dnonx9+kX0nVQzQc65IOL1YHER70Ag9qndZxJYSAcWj8rERh7iD5PyX
         IDjA==
X-Gm-Message-State: AOAM533qg8sGOcxrLLsWcAaJWaklVOq5LGUc1/bNN2WtZV+rQ8og9qNp
	GyLUQfY9+7yzFA1fHjjqubY=
X-Google-Smtp-Source: ABdhPJzvwLtYQXiKTDr/6gU5Bjsf0ELBfCVSKCCWGtw3cNu8DiR/rVCbne7EdZN01PkZcsc6nRBKDA==
X-Received: by 2002:a67:f803:: with SMTP id l3mr6284414vso.45.1600411549183;
        Thu, 17 Sep 2020 23:45:49 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:5752:: with SMTP id t18ls281586uac.7.gmail; Thu, 17 Sep
 2020 23:45:48 -0700 (PDT)
X-Received: by 2002:a9f:3491:: with SMTP id r17mr17375839uab.113.1600411548732;
        Thu, 17 Sep 2020 23:45:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411548; cv=none;
        d=google.com; s=arc-20160816;
        b=tT/Dju1TJ39aP+7rxHwQlVT1rnHz8PTU9dJcpL34EPA3c5HGoUoWlGHx4BKbo9Nms8
         S12XHF5i8kyPT/IZJox8ZKbrpA7ZVAicsdfKFR7vvOEohXn7EICj2Y98lsEcpI4jmwdM
         xeDwDiKao42GHoJhVJOtyUCS21fjXddRu0zehydwaQnED5R1oplQ0YSmOUCjAHujMdjY
         duRy+esCQ0uetTQeWrHWSRUDqhnkXnll3GSU4XnIMJVj79GeM2Ho/l5N8KnHKpt2kj+5
         oqugM4zQf4Wvd2dtdikM+sWNaeQkcKaA4m+84zha9r/Oe2qbsjvQNHb1i8C1i8qfTeD4
         VeGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WksIlAP2St63/dYiNF+cCQGpadcOB7vBxhhFZVaW4Fw=;
        b=jfYAdtzySfpASZ8YmHF/YEhdB6utu422HboCvH0HOdDvt/WWwX+PlBG/kahBFGrZk7
         KyFOP4PkE6JZamSijaMtlrms2gXeADK1eKDmA6ubyzfRRknSK3V0Y8q3ESC8mzp2IjVt
         WZzUm21cuLr/8TJ4YPxGNSKN56b6rCr94z/1+VP5bARVrYtxtB3CuB01kq79m2WwaQdj
         iFwhsGtONS/27XHir/mFVRCDvtonVNGvw6wCxYo8lCxYGrgwPPtCgRMpt4c1JOcbJ7l4
         YZZQC7EZCM2hp3nzqwAEMDpVd2llAWWXd3q4DZfgY6JGDctcHoh41XD0n5UUfkZFrchF
         iXxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Ra/Qg17z";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id q10si112872uas.1.2020.09.17.23.45.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:45:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6jXED128437;
	Fri, 18 Sep 2020 01:45:33 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6jXCb126707
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:45:33 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:45:33 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:45:33 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCa094595;
	Fri, 18 Sep 2020 01:45:28 -0500
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
Subject: [PATCH v5 16/17] Documentation: PCI: Add configfs binding documentation for pci-ntb endpoint function
Date: Fri, 18 Sep 2020 12:12:26 +0530
Message-ID: <20200918064227.1463-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="Ra/Qg17z";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-17-kishon%40ti.com.
