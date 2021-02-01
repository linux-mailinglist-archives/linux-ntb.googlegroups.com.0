Return-Path: <linux-ntb+bncBCOOP4VF5IDRBJF34GAAMGQE2AAQM5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD6530B104
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:59:33 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id c7sf3922530vkq.18
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:59:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209572; cv=pass;
        d=google.com; s=arc-20160816;
        b=VlQRUNA1fqbDx2zxNRTgH1TpO5u6BIxNaSIs0zPE901s45hbNFrwOejQykH/KmKLuy
         9tFa/MJyl/4gy7K9v4SQ0Eh88qAGjLVM3cqK5VuEzYkpcZK78Qkkkrd07egEBOBX1hvC
         qgNsecZpzxWnu0BbBErvYwjK/sgQen2kSr9XVM0qdbmzB6zYqzHur0pgKdeBAtIlIJld
         qhLqTy7FH5mbOozFchJroquVZd4Mo4Z2I7yNsluaZQYi3mw1nw8IyHyNjIfiXhJay0gY
         iHhADTtUPQcrvR/IHWvs87GnBLXxDOUcg7zjtPalCd+H89ZDjBG0QVupidmi3cXoQE5p
         4V/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=uy3H9ssdND/x8gTt2pVn+g0B1f7iQOHqCmF8AZUubPQ=;
        b=dQo/hSTVTHKgffMJo5FDKbCrHL5WIwYPK3+V+/y7awmwH3b/nB+xSUjwB1u1PVqUlR
         BuvFMrDnF3MQ9v2Ieimy6BHYks0z1ezfy+ZP8TgJzOjrkH08N/Sx85o11tC8+GdcBUCv
         ssdTxe4w38Vstu0BZ6/rynAqSO5mS83TVL/D2+yqkQa3Xxw93Wlr8aJ3CVj31CLF4Hh7
         pdDUEzHk3W64P3bV35G4dBXlx87UNh9YDcAkzOCQg2PieNE2MN8i81Nxdb4n7F2G0iap
         Dnad9+Y2EXM6p/wnMSESF7pvSLmo9/IC8LwzywBm/B8tYVYJLmWT4IRALn7ilm9GMYsL
         Dk9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="V/+1mANR";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uy3H9ssdND/x8gTt2pVn+g0B1f7iQOHqCmF8AZUubPQ=;
        b=p5zKsioBmIUsX5fwjiMtBBN8APraS9UewbbIPnqXLNfE7ypU61/A3Z/zKRvRbb3Pl/
         /w6pTVaY712R9BU78cFZ8zYcdEH5n+geVK0RhjX82Hj5uJptOPTqn5/C2KiBUvGM+viB
         XzVCIoii74HXQFhTdLjogn34n4k4Jq32iygs2PQAF4Oje4dxOHY0lgritBzKsMQzMlez
         r3vlVsI5WsRCTSylK5XdGuIHM/Aab1Z96L/LdLpHLx75or9S2d1Ft0F15p4MK4E6scWy
         iMBrET9tbctCOBVQ9kUZoYU9lJj/CDHf90LIQrvRdmxmOI9LIPL2j8UtDnqV4jknx2Dj
         /4Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uy3H9ssdND/x8gTt2pVn+g0B1f7iQOHqCmF8AZUubPQ=;
        b=lhxZFGGOm1h0vac7glzSCuVgNSwalJlpWjVqlT2JEs0r9kLtphvskqrtw4IteeAkyq
         IvyWtwc2Mq7tMvO1YaFRzBmYw3++BkjjVIt3RhyKcVxLmZcyZj/jfMP01wUjqQcnPw0D
         WQ1JyIxrN6uIPCgVYYAO3KBpAk7frIULnbnQVq5hG7E/Y3XwIht6zbeTXs88BYVYEmc3
         r26GqZhm3Wb5ldOeALcjwxOJF8K3UfaBb1tlcAoL1lRkG1t9xzNjj7kk6/QkhSv93LpK
         AoXUCmUb7cX6VHkp698QVkl0PSjCb42fSfGLG0ig/y/oKMRxBcjiJveMeJzfNJ39GiFr
         C2lw==
X-Gm-Message-State: AOAM533ED54QIi9NIRIKYBCUxj3XBo1xdzBwcg52SxiVNARgFAfFV1bL
	1pFQg4mIANuljWrnVD8BVas=
X-Google-Smtp-Source: ABdhPJxZgTYBaQGjHM3uuj7AB5lhbPQchVoFFsscg69Ol7JYydDi9tVZ7zjvwGL+aVxl2Tq+FsznhA==
X-Received: by 2002:a67:ed41:: with SMTP id m1mr10007029vsp.57.1612209572335;
        Mon, 01 Feb 2021 11:59:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6102:119:: with SMTP id z25ls2106061vsq.6.gmail; Mon, 01
 Feb 2021 11:59:31 -0800 (PST)
X-Received: by 2002:a67:eb08:: with SMTP id a8mr3764040vso.20.1612209571772;
        Mon, 01 Feb 2021 11:59:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209571; cv=none;
        d=google.com; s=arc-20160816;
        b=aP7z0uUUMRsAiWwKsfL+xJS2r8743fMuzSyc+3gunsuoATaBk6vELH9fjjSc+3QEGs
         AaTLiGf/mKhWtfLLQrBG/M9umqN15KyoJhLMelQ92UlCsGe/oFpOTKvxXdIK8MlGvdKw
         jwnDh1Yx+zlpyZUqnc/3ulR6KYHBh4inXUvU5zcydmSkjr3NeDL3OZt1K+EycKPxtY7/
         MDg1kQzfoT9a6pBfiuKtPvXwuBk7s+96hl5/AyoL8mlWgyoB0OeobAJDO7mWq7KkSGgo
         o+t/WFhMlPmLALrJLsbd7jHe+x2qQj15cP1zsY0JPGbzZQSZZdeC3s8XxcRcVyCxVD5b
         fvYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=Hv2Bn0Lk5Are5SnuuKfQMZlyBMtzlQMuYQhqnCaXHzc=;
        b=qkPGeg6MNlaAzQEUaoDW/OgEg1Zoy+escoUZM414LLSHaVFB2oAXpZBDE7sj7UkX3m
         5kersPM3gPcVYvUYbFMdM5RBAYvzM02nxhk/2LJrdsAkxVuNGOy/WiJAIP4qkQ9Nsqt5
         8rKbobhX/xOtcJfkGyks51DG7Ski+we0yXcmzVjqTQ4WR8O+q4PPfy0w+gyYYxPj4XXw
         zJ3nxX69LOiQ0WouJ9poQdRudGEEGll4GpcF0YM4FdoME+Fj+8Abq7gVSDWnpMDq7iAV
         qkybmAcgFLXz8ea79EY71JEIEwpuHJoo/tiNEjujikmvtiJsSBUvH8ystdQVe8W0a4Bp
         VlCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="V/+1mANR";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id y127si812975vsc.0.2021.02.01.11.59.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:59:31 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111JxMfJ024071;
	Mon, 1 Feb 2021 13:59:22 -0600
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111JxMKv101912
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:59:22 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:59:22 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:59:22 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQj085814;
	Mon, 1 Feb 2021 13:59:17 -0600
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
Subject: [PATCH v11 12/17] PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
Date: Tue, 2 Feb 2021 01:28:04 +0530
Message-ID: <20210201195809.7342-13-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="V/+1mANR";       spf=pass
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
Reviewed-by: Tom Joseph <tjoseph@cadence.com>
---
 drivers/pci/controller/cadence/pcie-cadence-ep.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index dc88078194cb..897cdde02bd8 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-13-kishon%40ti.com.
