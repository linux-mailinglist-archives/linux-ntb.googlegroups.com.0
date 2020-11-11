Return-Path: <linux-ntb+bncBCOOP4VF5IDRB4EKWD6QKGQEF2BK75Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 397972AF519
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:38:26 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id b6sf1610026ilm.6
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:38:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109105; cv=pass;
        d=google.com; s=arc-20160816;
        b=JwuXbQ0XG+6jghWbebLG1Ryg98l2Ml0dij+1jGh67jhDOH+62vJ/sE8PpZLJQYRK3f
         y0wQXjFHtPoDh6ZTiB+CjbuGGnC6dNbAJb4LX/8Fdkvf3e+08msLHY+GWIGUxW2kuuw/
         2N3pximT3Squp+QPsot9Vlgs1+2XlEaj0wC0If1r3xqPXNaH/g8ceX+0BeBMHjRraCCe
         XaI7Y1qiGxHLzKopcNJ2cZA2C0Z6ExWrqkLDJKD3Zea6YtuImBfSWCzc2fLBogJTcVFr
         hrZTZOM5wyzn8bItw/gwrW5smMMncg5tAlgtNfxQgcdJOkvQiWplkqrdMrJ+NMJC2bsb
         ypkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=/YNJHrtnL5Mlf5aPdi17YEgwBwPPAuEO05aTmJ6FQ5o=;
        b=gxfqwTEHZiYvRLl50kBixnF9d4/U1AZVAG5m05BH15mQCHfijENR7Kdsjl+gWf68Qz
         FI+QlQcWutjHne0ByaBUDeqj9eZ5MiHeAuMXveaHZlb49/hfUdGuCJpO2F5KkBvE8k5U
         njboyt9u7UcrMdROiSnFz5AGhf/cQy1PxybUD5tKpCWwqQuqkmdx+FEmmN9zQ/Wt+FyS
         ljPQlZeS2gqRw/tQ7lHVHzUyAogYHythD91ME5IZgFKkozkjPrbsDLpe1HDKeBhLaV/8
         dNoVmEsUeKFrKxwjBuDYm7Asr2wCCI8NAXcjWq9IK5baXrctgwD/2arRRFIw/5HXsSIt
         OxPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=SB9xCMEv;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/YNJHrtnL5Mlf5aPdi17YEgwBwPPAuEO05aTmJ6FQ5o=;
        b=NVkJk35sDYH74/orGnjoJ2a9LYG/sDT8u8sAEJvk0zY33SUt/PEwdO3lqYEPSGj2jo
         dyAvFD4a5Otn0kPhlthMtFcikp4Ewq5W8OrXtQ6EdyuKQXCKhgcH8es73Jbjw1iu/bud
         s/1Ubi0MzV1zY6J8y1RHOn1sNejkd4pr+GYo9kRKrVuFkMAwuXj9Yw0dtKoYzoYI2QXQ
         J862W0WZLwpQ3QeMSXwrrgknij44exeEUuDTAZAT1ykf/LUiOyPamZ7d1biPIpZ0/atv
         qMHlJ1Dn1bu1EVDxXK+fy1pzqSLh29TWBT0nx5Yr+O8ZqJcVvm91P3NfUErQ+Lg1yijh
         0fOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/YNJHrtnL5Mlf5aPdi17YEgwBwPPAuEO05aTmJ6FQ5o=;
        b=cxAsPoQvP50/cnZMcTuL9Xy6YkAc+9ZFrBP+icieW2BxrAbhY33l6gzSFRRWOgLgE9
         /Owq2/qJ65ScPqOjSywqIp8lVqDxhHdm6nk3MwnOpuB90gV6R+xfB8uYXSsvbh5P86Pz
         8Ow8edHEl7KNyfmCdcQ4uhpKONKDxSdCPli+RQ36xiGygNiYYVTUGOXMBxEXNBj92ofb
         lYTmdMlfo/skC4uau805Z8vcshB+SqyETuLnSgvb015U4NEdyZEjn3bWn4TZUBv/Yg7Z
         2jJZdyhvwOzxZA/e3ssSiZ80YpuE8ZPmR4CImgFHZELRrK6Tn7bRsg9Vsu139Hz66U3r
         HvlQ==
X-Gm-Message-State: AOAM533rskrhxeWORE8pgVsxiAJZkw+3nH3lcCcR27TasjIZUCj7ui4h
	RO0hEuQ4ehLqUb4z9RoJUfM=
X-Google-Smtp-Source: ABdhPJzX2YZpUIv7igAowH1qjGPp3BI9QUak9rAJkbVROfrR8jhei4gR1wnV0/FiXw3ihUomXcAYZA==
X-Received: by 2002:a6b:8b0d:: with SMTP id n13mr19368908iod.111.1605109104990;
        Wed, 11 Nov 2020 07:38:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5e:8408:: with SMTP id h8ls2278320ioj.3.gmail; Wed, 11 Nov
 2020 07:38:24 -0800 (PST)
X-Received: by 2002:a5e:820d:: with SMTP id l13mr10546042iom.102.1605109104675;
        Wed, 11 Nov 2020 07:38:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109104; cv=none;
        d=google.com; s=arc-20160816;
        b=u9LtsXl9vva+HsB/7Hz7X3PeUlJ2MSjbXJwWxFN3tTrX2T6iMKhwFCGckHel7Qz/6y
         pRPBBuYyiShMBMFN7J5V1F4UJ+wZwdq+5LeABcjdqKw6GS4dTv0+OcMOm6eKsCnE6Jpu
         nxTQ2dM2JJhg4ybMnxBy1g7q6FAVpwUoegEZlwu6JeMxn8SSIy3/e+y3mZDfpRiyvl2F
         sttenGvB2mkU1Fk3UGErejtT1NeeCA/ql0ulJbkECFiBFLeCu4Ksmh+AOF3Z7JfbdoEn
         z5a4g12QO9SKmGn14rLnIt2VTy5bniI8nWxBZH5AKrP2FUvYh6yvIaJh6LZy+tBFL16l
         nTfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WksIlAP2St63/dYiNF+cCQGpadcOB7vBxhhFZVaW4Fw=;
        b=aVG4iz1x4Qdf6Nl0GmyfwtxWKoypGNrYYdOjM5CIQeNMuHfpZTaixDRJcD4j6j0ZK8
         ypFBpAybGFPwnP3Xg1jer7luA1sFbbiT4DLPQ85s91CU0qRGDDRoGVS6iweeeaTF+dUV
         lbDkmKytXTFXaCKA23eBnyeM16rM46NcwABsL8jy1TNHEMljpVUXjHRWUtjSZEvFZTwg
         +ZH6lLyD6DgUWOFf4Q+YJC7c0zJwOykJu83Z//xzbDOB0IStF2aayDvEG2n3Ma5j0gZf
         AGXsFq6BGEUqSqkO7DVGRDaHh46r9lARPjslP5ygdFZFCLbFmWH9tE+GToLyogc2z3rq
         18oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=SB9xCMEv;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id i18si133067ils.5.2020.11.11.07.38.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:38:24 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFcHx7125355;
	Wed, 11 Nov 2020 09:38:17 -0600
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFcHwv097085
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:38:17 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:38:16 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:38:16 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa048042109;
	Wed, 11 Nov 2020 09:38:12 -0600
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
Subject: [PATCH v8 17/18] Documentation: PCI: Add configfs binding documentation for pci-ntb endpoint function
Date: Wed, 11 Nov 2020 21:05:58 +0530
Message-ID: <20201111153559.19050-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=SB9xCMEv;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-18-kishon%40ti.com.
