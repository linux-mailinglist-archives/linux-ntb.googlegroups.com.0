Return-Path: <linux-ntb+bncBCOOP4VF5IDRBOMDQH5QKGQE57RQT7Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 094BB269D20
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:23:23 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id j12sf574943otn.19
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:23:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143802; cv=pass;
        d=google.com; s=arc-20160816;
        b=XI+s5b4O1BM6Y4unKXOTJjsf3F9tuS9ZF+jo5FrU99G6mrhgzmqR338QnQd11jcu6g
         z7+JKWAhOXYHq6MGmPAsez1mToXdvM78Bi3Eyq6v4gtccf2AIgbefeTbzHqfWwZZb+XS
         +5HU8DAs3IpwuaoquFIBAV0oh+ecJFzt6GKo2qFdnOHX9sj8Jeg+0eLtsSACc4ZmTnGp
         5DqQZnU43xYbMtKXY8RbCu0OYnugcFc4U5DN8MAE98wMPx5ibxWFl++42TXn6LQyBS5A
         7pfjcxeVYlnVzqgKGq5gJFbwDHzM2+HVhRcrNwGyB6Ke29DkimxJ4MJnSVXeUgGREk+S
         91lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=7ng5z961i5BwBkxmSkYdFQn+vbpRo3SfeOKogW53biQ=;
        b=Z8AiM7j5thDKLTmNpoa58XYk2wUwbngSPT2Qxsqsb7Vf3j110pa5kQj/RPEHybL60y
         MuEji1+8GRM719A7ZyOtZU4Ct5G9zpQ3A1NYHY86neaG/0UGVlZrCHX4rM/Ac7IWAEce
         D4HnvcaYXWLZItwg/VSqOig7gQH6+EigLoyjOCI9ZpTBDKywXqipAZUN+qXYIJWP/ySG
         2C1ItaFdv9130VeMvJ8wkEpiBpzI1n7EoZiluvBkx9aNYxTduEeFrqlPXHC8CW+i/rpg
         aE3OhG1br31LTxBSGO9+vT4luzlruWUvno0uKnedDcVljG97+d1V19XazaFqPb1Ee7zp
         PYVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=O7bKMY2m;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7ng5z961i5BwBkxmSkYdFQn+vbpRo3SfeOKogW53biQ=;
        b=idtLSpLnc7aBtFjb1ZDOT3XPLTLOSd/ovSFp9cG5hzyRIMN+7G/nJjaFzHvrTNGkOk
         ykwws1RFUdo/dJorWR9gzKFsyz0vS4HSa097KKYGCtYgVjvnGshmR5lc9Ug7qAoP/e4D
         p0z0xyS4e1eotd3LeTPSipqd9txRFx3w+l4Mq68MgNMeJNW9daP5fsOeWVeJXus3nv/9
         Gx+4gLlFBxJCslgjtq/DB+pJTCfWfZbfZOeiFGzgkCzBOav7/iRciGEviJZgs1cgYlhB
         e9nlYZ58TEch4g+7BvTyG9iCiEkT1jivEbOxHQe3fWF8qHWY9+NW6BXifcqXLgq0v7Sk
         QiOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ng5z961i5BwBkxmSkYdFQn+vbpRo3SfeOKogW53biQ=;
        b=f90xX41Arx/8PmrcfOwh4yAhWPFXuDKY53fgqGWBpv1u2NGVktU1iGMOW+V/pygU+O
         Jxu5fCsQ+oZ5qqkp+0KZxivMwSh5gmB9lTKFE7r4sDmazj8MCJsLVmNodrErkzuYoeCE
         DDnx9Bn9Lb1kGM8EsuVy7y2uxo48D+HPGMe2qjyxol+7WWFhRM443LSH/tllNmbxHS6F
         JaS0DQxcw4z8sL7h8c+FfXxFcKp9ls0RoAhg1RW1KEER5kEenMHrztJsMvPN9DFHud4v
         XiPJXM3Vzua1pldxXQWyqEviDFoPFiSOoy6+gU/zSPqK2cfSBkpDFMLOyXRGS1RFKjOj
         JOFw==
X-Gm-Message-State: AOAM533rvQuuiHe6rWHt9hZ4V+qoRASlIFu/1duN4dOvkynlfRmQIqtq
	7P85OB9CI6MmwPJuQ+3FQdE=
X-Google-Smtp-Source: ABdhPJwRhJ5SNPHacv8GHBRsW7zdLQ4RZC380re4EYq6LJ24ARGLaogTNLzirZ1/wkK19GtkEZcqdQ==
X-Received: by 2002:a05:6830:154a:: with SMTP id l10mr10999673otp.56.1600143802018;
        Mon, 14 Sep 2020 21:23:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:85:: with SMTP id a5ls2529301oto.10.gmail; Mon, 14
 Sep 2020 21:23:21 -0700 (PDT)
X-Received: by 2002:a9d:491:: with SMTP id 17mr8505764otm.338.1600143801701;
        Mon, 14 Sep 2020 21:23:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143801; cv=none;
        d=google.com; s=arc-20160816;
        b=W0YRm4O00alwbZM9aTWK0NVKQe06RBdLaocfnfTASqISKQ41KBFzw2tEVzHjUV/g7n
         CBKyljpf8baKBHisSlDNSzMh7AupTDB4+7EWjnPsqfN+lVA01PjcsFUjFnPe4nwVEqJC
         qDWIeAdboUBiBa7So3WO4kpD9DbVL4TizD6sgEPG3v6ImvK8KKRzhyRyktNCMmA7SqcE
         pCKwgpx6ZbI4/rOQEo56/Rc3h61FvlUU4eRvl4JdYvNcl1Iy3HVELPr/LFufx9opv6To
         SDaeq39t1Eyc6gy5mMS33GxdO0+Bi9mFULpTEfpuIfmyO0EmIU3O9Okf0geEGyWZQxjR
         ONZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WksIlAP2St63/dYiNF+cCQGpadcOB7vBxhhFZVaW4Fw=;
        b=pimsVEgs/Gyxz11Qv3b6J9J5Dar2zLi2UDmpkJGgOj5gCSb+ohsxkuEy/Vx5fyNW3P
         rwsM07Kcj1j1Yk8wgsDMQzKpb8Tl0hgdBoT90Qlv7GXRoexuJ1rRocsuBWGkv9GqFED9
         BRssWTCjZ/fSIPmfE8y5eWATnImnI8Ng/AkILSqrGvKvrx+45hIrTWPHlNSWX5N9n5cT
         7c5P4bUKVKGeeam0KPeRMCqbCOxTCCrrbDkWIiDzDljzJJnXxZ3qcvUstp7hoV79H9PY
         qkB1WidmswqEMr0PxTpSIm6egdPOhsl1Gz4obu3/dWscwJgnO896ia+Hyyv9OdjpTT7D
         Qg+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=O7bKMY2m;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id m3si1119838otk.4.2020.09.14.21.23.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:23:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4N7FX017544;
	Mon, 14 Sep 2020 23:23:07 -0500
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4N7RE045318
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:23:07 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:23:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:23:06 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMw028615;
	Mon, 14 Sep 2020 23:23:01 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>, Rob
 Herring <robh@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Tom Joseph <tjoseph@cadence.com>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, Kishon Vijay
 Abraham I <kishon@ti.com>
Subject: [PATCH v4 16/17] Documentation: PCI: Add binding documentation for pci-ntb endpoint function
Date: Tue, 15 Sep 2020 09:51:09 +0530
Message-ID: <20200915042110.3015-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=O7bKMY2m;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-17-kishon%40ti.com.
