Return-Path: <linux-ntb+bncBCOOP4VF5IDRBVEKWD6QKGQE6OF6FKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 337582AF50A
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:37:57 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id r13sf1153023ooi.3
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:37:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109076; cv=pass;
        d=google.com; s=arc-20160816;
        b=u5weeaM9jmfmm3MitzWTjK8OKVpYF1k14UZezBs7BzIqDeCvdQ93avnBZgEh4HwW+e
         hX26pVCF/hmsqaR/OKzazC8jM4L+T70K5/xJg3tHj8FK7wOIGle7A4lKUCya/F+jc9zy
         jZJoG6PEm6SteTObS3TmIBG+eHO8jv0AgxwFawUK5iwx6xD4nJFhabW7EuLcrOv2V41M
         FCH6OgVAF1wQwRdaWqEkQi8uxxrNb5kLHva4Jx+7B5FZaGnlkzRmO5CgAo7PsbcWnK+7
         uto4aDzGPw2FPxcUPN88cJSE3lxK+k5XqlLpAV0TP3JmOCOa6sWT+aUJtkUyK4l5iWfs
         qw/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=aK/4vJtWh9a9rhUHp9V6E32DFqKLNGyXuts7OlZ4o64=;
        b=1H5yvLuJNPHorBJ0R3IZLn7fNyxcJ/MTZYUrG/tDvf2rJ2yigIOA91F8w7QKbwD+7a
         t4lY1SS52wPkc2GoF9v7OUOg+3+gkU2d4mR+v0DjMnvsGGeD+creaBbNL1HI9qD9Oi2F
         uLF1imslp0S+g/nhWoLUKhNzSXwbRglg2tcW7VlKiCvLFz0FoZL8oqoa7dWcIJzJX/Ya
         XvywKtuT/FgwhABqdw0qjug2MDTMftOx+rd1Ko4F+EkUN8aem7QtwOQEIt8k41TPCS1M
         fMccOAKIudjnVpl0EFcAdMb8KLQR4+kw7vlS3lxbTKYu1afv4+Hvkd9WbZz4VDmsqGVS
         xF8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=V6EnZkss;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aK/4vJtWh9a9rhUHp9V6E32DFqKLNGyXuts7OlZ4o64=;
        b=mB0p9HP3Sqka7O1My2KL1rs9pbKWXs+MV4WDiVEuJmGtlMBVh455YGtu6YxqDVJQje
         7I5H2i7MgA9p1ovkB7yFLmoKBNkOH+Z6Rz18mS6MZ4LetZ9hEXoaB7Z1hmUBwrxQ58zE
         FURjYfvxTX2a9obQCPeNAYWPY2w8PY7BpWyqKChzEKxrzL92TCUKwLEQTAtPlmhsnuEr
         nUvuvqOUaJ/RoaB3XNkDPhlFIQ3pTvsA/u38H+23ru6ZQttWmbdqhfwNJYAj6xTA7d22
         +bScxT6htVjFCIKshSwRtcsV3SwPo5ufnhoAnI7uc9gfYCPFzhCsbQxqlR+GFHQs5UxL
         croQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aK/4vJtWh9a9rhUHp9V6E32DFqKLNGyXuts7OlZ4o64=;
        b=Ny/CiU3BE64jnypfi58a2kjtQmYGeyVcI5YIMnYtP0OAlRqResT4rJas0bATmskXoH
         Upk7KhXgh0W7n4+CvnbcXX6wRN79u+HrjRPKgCG6c1mqd4J2n0ezmV19YgqbP2lmj3+H
         XIYeZpoMHv7cDYTgE/75mu83daVs2id1AFccwB4dxUVjM5vo87I0aPoajcH29hdJwOXg
         nNYgOjXL+SeewW4MvWZ1MEmYlzjaJOENd92ToTBSW35yUP91m1nENGyFglMjXfZFRqgq
         oY29r6cw/roVeGApetqJ6IdypHKeEcp9/rS+Q0XIRnC+1NZ58cjToUsZzXjuPbrGSsDo
         Af5w==
X-Gm-Message-State: AOAM530udSk+OuSVYKRWcfTa2YqrPu650kqlgmvmTpcnBI2vHL5LL6ri
	PNpxyRzMx+nPVcaMtw3fi5s=
X-Google-Smtp-Source: ABdhPJzt8u8+mYFiHIKHdun0ZmW24qYOqPGn2YpajJITwoSD93nM0g3opM6j60wPoyln4PjvS67EIw==
X-Received: by 2002:a4a:9607:: with SMTP id q7mr17613475ooi.79.1605109076152;
        Wed, 11 Nov 2020 07:37:56 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:6b0f:: with SMTP id g15ls4017728otp.0.gmail; Wed, 11 Nov
 2020 07:37:55 -0800 (PST)
X-Received: by 2002:a9d:7a59:: with SMTP id z25mr18696600otm.267.1605109075834;
        Wed, 11 Nov 2020 07:37:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109075; cv=none;
        d=google.com; s=arc-20160816;
        b=kIPQjdgOSYh6FCJlnw2A915fHNHxG9G0Aw+HTb/wE1zyJYxw6AYzf6hy5O2rbZVxgV
         NAu3egrp7FvroeShYDEgKven47he1C+1WqhQOAIqh23gPR4RZuFg31pSOLmwbcSscq6t
         h8rD7yAZkHPMjGdRwwrWXpSflXz/Z6BLChYBazAZbMUkJUULmG3hIe2hMRzMvRmdO31O
         5cjj/a8938/qyD6bUApfcMkoep94rXi1yXugJpIO+N5MHqIoL0l8czUxRfbY9jMUKoDW
         /Ld0AjvhYQJi+40AZBS+KAPrncpz6K2wlvEC9xqZKbCBH+B6y2d8WcNZ/t3YWOTTTLek
         3DFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=ccIYM3BWSztQJNWt3tuc6dHrpKFHfV4QEGAhdlAGYe0=;
        b=rCx8cCRA+3aAJuQuof0Yt6pOt3X8GOAVElcZvrBLN9XJ8Ubsu2icJP981iXhHlwRuv
         yyimbRP8n2fDxuX4XXMoPEAyWJOslxFdhgT69I8OknENaeb8f8p4ihDFq+sArrFvddHN
         7tSolp+xDEnkJvSsqBKeWcV/1GdoaktFxD/no12nwzalUGDFs3sKdeccb1/gsGwd9eYq
         9oz3jx0pU7OtT8K+DLSJyNpCc0Kz/h8NrRGCmlHIh85uV+JStI7XNTUPXg+z2tV7Fx/J
         GfcG/Po5wYpPHxvWErEEDgCUVU6UY/qseNDscxvCvs8DTaRIDmNIs/QJohBQydLBdoeI
         NtKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=V6EnZkss;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id d20si264519oti.1.2020.11.11.07.37.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:37:55 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFbnvO097943;
	Wed, 11 Nov 2020 09:37:49 -0600
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFbnCq095792
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:37:49 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:37:48 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:37:48 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa043042109;
	Wed, 11 Nov 2020 09:37:44 -0600
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
Subject: [PATCH v8 12/18] PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
Date: Wed, 11 Nov 2020 21:05:53 +0530
Message-ID: <20201111153559.19050-13-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=V6EnZkss;       spf=pass
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

The number of functions supported by the endpoint controller is
configured in LM_EP_FUNC_CFG based on func_no member of struct pci_epf.
Now that an endpoint function can be associated with two endpoint
controllers (primary and secondary), just using func_no will
not suffice as that will take into account only if the endpoint
controller is associated with the primary interface of endpoint
function. Instead use epc->function_num_map which will already have the
configured functions information (irrespective of whether the endpoint
controller is associated with primary or secondary interface).

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/cadence/pcie-cadence-ep.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 1fe6b8baca97..4e4eb30cd1a2 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -506,18 +506,13 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
 	struct cdns_pcie *pcie = &ep->pcie;
 	struct device *dev = pcie->dev;
-	struct pci_epf *epf;
-	u32 cfg;
 	int ret;
 
 	/*
 	 * BIT(0) is hardwired to 1, hence function 0 is always enabled
 	 * and can't be disabled anyway.
 	 */
-	cfg = BIT(0);
-	list_for_each_entry(epf, &epc->pci_epf, list)
-		cfg |= BIT(epf->func_no);
-	cdns_pcie_writel(pcie, CDNS_PCIE_LM_EP_FUNC_CFG, cfg);
+	cdns_pcie_writel(pcie, CDNS_PCIE_LM_EP_FUNC_CFG, epc->function_num_map);
 
 	ret = cdns_pcie_start_link(pcie);
 	if (ret) {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-13-kishon%40ti.com.
