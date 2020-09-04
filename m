Return-Path: <linux-ntb+bncBCOOP4VF5IDRBQHEY75AKGQEALL6LCY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 377EC25D2DB
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:52:33 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id c78sf5435307ybf.6
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:52:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205952; cv=pass;
        d=google.com; s=arc-20160816;
        b=uO22/Z7w2OuNYEz/W7dclOKVl9dExsf2p5X3t1KPkB2+vE/oqZPusUykuiym0N53sG
         VXE1lzEJKNeXBvcew6fJX3JjVOmA36DziQUrOp7yjqKb6jB6qrLy+i0HYR8gsV0G869S
         bxhqk5dmLHV+sP94+C7h/THgnHuo7aXDxTaT3BbwyAqh1dB3Y8wU71gEeFsmoJqkQG4c
         rFd/URccBTxH/4oqUtmWVgTR0Puy/huuxBezQ+Jqdk7/XaHJgTqU9Ue0XHVOx9bETBkr
         euMnkkrd/O66RhHwunFopfNpU2CSBaHfycskf8voLAEWSQ3Y6QteOFadj27x3MP8xbSE
         jBmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZaZfrniohZNAJJXw4MPQzxTDa+NMW4Skr3T8XPWephM=;
        b=KuIzkp3+gC6n4sCUERVcKSXHt1143/mrAe8dZkm01i5Lr2smOIUrup8nuxUE7emfo4
         jZail0AWREvdJC3P6xd7AkQLOpI7lCBIJFaku4yZLuJj4rYDX/INWUKjiN/UgguInsHY
         SnghVPiZa3dr9JWv5DEZeDM+6ngeNIGihkCtHTPGNQamknHLTD7z/ONpe+0uu/ya0fC7
         U7eMPf4sGnBT+K0GmBIPQAptbc4u4VZ3wdqweY6F3UrVnr2XjZBFk7oQufV0kbLp/scv
         4yh5jqlBN+A9WdTDpRkJehb6aCyl9Fz+QU3MtHAZz+nP8loQhBMwsakNe/5M+B//Da+k
         Ja9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=StrS39YH;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZaZfrniohZNAJJXw4MPQzxTDa+NMW4Skr3T8XPWephM=;
        b=dt0YQoWNCccgy7Bbd7KxUZbk75XNPAX4xTQBv3h1QSaZNcOYpWqlknRhjmFsZFNEAE
         UIpUFb3flZuULo3BsMj4vSpnSxFrZBtlKEHkdBA1p57W97mw7jtcVtRaHlPBRAL9uGUl
         dOFJC5/qUdxJnDjTpRG5VOib7N3VYSccDQX1G+ku9ay0DK6vnGQ1a8LzDiIVsKV/ZRMg
         Tw1cEEaKzpEQTil96RL/hlPsDdcksPAwZns6JfDrtVxHFsEHCSjjCzH1K61pZW5SHnwS
         akMzSuZQzXP7qZ2AZ1vM90CifoNDCTOkE4psizjnhPlC/TSqCLfTsD4mXLyS2iEbykhc
         PfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZaZfrniohZNAJJXw4MPQzxTDa+NMW4Skr3T8XPWephM=;
        b=Yc9Gc4isemIzzRNlc8m6p01vvFAXVHqWdY8ffXPKZ22S8UwWmMYuNYj8jgxEMx3Uxs
         ETMLNjsbSPgIQRS7pP3xNm1QKW7+MZyY0bwkT8H5FVg+uHhWUctjtHRI0UZ642HLFyNu
         sOlepuDzXO3iaMtKDF30RyOlLef+sL5FASTqjG2mPtGzIK1zj2GmKTFbHs05UiEj6KCS
         ecVFi6JGOnKBdeXrCu/RoMIvBct1yG4WlodGqf7xy2XYPdAzEafgfInA1gEUR7U/+XHG
         2a5fGqh5tpwoHRa0eF3160CjdDxDo6eavKe8nk7lVEmaR2s8pwgV8BVJ8zkzSy8Wqob7
         70Jg==
X-Gm-Message-State: AOAM532odELnJDQx42+PS7TmHw2X792BgRKDlyfzaUljwKXlPU3CP5HX
	GfSRzyKvMH/qObdPtFBbRho=
X-Google-Smtp-Source: ABdhPJyith2Cz9WNy8bIk4wzP68u1OEUQ50uYGhpwMSc1jRG1/yDjaTQGDqY7fkWPxVG2uH3er9fAg==
X-Received: by 2002:a25:b443:: with SMTP id c3mr8604854ybg.118.1599205952242;
        Fri, 04 Sep 2020 00:52:32 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:ef05:: with SMTP id g5ls2454776ybd.0.gmail; Fri, 04 Sep
 2020 00:52:31 -0700 (PDT)
X-Received: by 2002:a25:bbcb:: with SMTP id c11mr8687399ybk.213.1599205951894;
        Fri, 04 Sep 2020 00:52:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205951; cv=none;
        d=google.com; s=arc-20160816;
        b=RT+368hjjNkNYM5cNqv+7jVCEsOM9+BrRDef9mKm4waWyz0AOeBkpv3gbKF8ZbD7Di
         pmM9P/ltAbFOReSHEarr2tOBLM4hv9jK5yCgbQoW+xUMMpr2MmJpzH0GbdZlX3o0U9mm
         ZbZVzRqd09ZSRVvgegN437GJ9e9hMkPCfS7adky+vCtWiaUxE8jVJ77GE0dGRFg8a5E5
         Mn7oCMiIhNcP0+zG1J99noa2I1efkbMMKNhwFHrNKKKujjeQZWsyfM1I3vt46AfIk1KO
         ifTUkQ3hxF3g0QgOdrSwm8XUoB6LrMqOzUKhejQjrWWVxr3zFt7XEwTAnLbwgJY9Y846
         GcZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WksIlAP2St63/dYiNF+cCQGpadcOB7vBxhhFZVaW4Fw=;
        b=Qd5fHCCj17dzFpQNftknAOJ1XsdEwahS+FVAo1ACQNFGQe4Z7AUNuA5tVsModB8p49
         +FPl5zLUfwaKKTXneOc3JWYCDK31o9SOhBTivBLcBB5ceJjhGZgUDZ3RwjtRAt5t1iv4
         AaEpoZN/vL0tSAR164ReoKKw6Ju8QYGpG+tYCdMCCgAChsHXjsY2TQqz0zunKHxv6gHW
         lVphApYtPKkpiZrs4/kvyt1ch0LGX/tQH8pfr58kQ3zEKS5Ub1z1DzTQeEae9aAd6nxA
         G+xgwuOLj5PIuLJbtvUT/kqzhKDMw+8wSbCeGP4Hp4zTc5+/+WofCz3UB+QPmPcUOuy+
         8M8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=StrS39YH;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id m193si521460ybf.1.2020.09.04.00.52.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:52:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847qPi7017951;
	Fri, 4 Sep 2020 02:52:25 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847qPpe004819
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:52:25 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:52:25 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:52:25 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osNH058796;
	Fri, 4 Sep 2020 02:52:20 -0500
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
Subject: [PATCH v3 16/17] Documentation: PCI: Add binding documentation for pci-ntb endpoint function
Date: Fri, 4 Sep 2020 13:20:51 +0530
Message-ID: <20200904075052.8911-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=StrS39YH;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-17-kishon%40ti.com.
