Return-Path: <linux-ntb+bncBCOOP4VF5IDRB26M2L5QKGQEOG4TAGI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF0927ED55
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:38:20 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id p196sf248240vkp.22
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:38:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480299; cv=pass;
        d=google.com; s=arc-20160816;
        b=gnK+thmuumeoUJdFXtWoumzbgwAQS5+jyGRUUgHWTlH0omUWOMOKgWPUVhmYUjOf/m
         8RkPxwSQU1CvF10zPUIUyG8mrJK9NgB7smLq1e91PZeDtbQHBJEGyDUziIXkHBq9ot4S
         ikmpjmLqGhCEfwE0bBhEOX1RKyPT2mlNQhyn2Dy/Sg+PXfwzPxff5uIt2PHX78NoZZQq
         /p3coRiGKXXk15hX+j2dDTlFNMQBrltnCabc04BASCOeG2UMpekTzbgxvO8fPNsbLIo5
         xw+4IFnrVuz2BQVctREsVAj5vJAhUgXeDspoX83JlZq8nCMPjJXbWEbSBs1xaqwYwf7w
         Lmgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ESNGaG0vsHYin5egR8u5asZqjHGf4tQzEm1T1em58uI=;
        b=rci/bUCwBZKPhTt8hw9WEaL2SG5x30lxN6l2YO7vS1h0mh4WB5U39Xb7bfrKKufFXY
         4r1mCS00zKWBXYj5F2xxCyoM7h1feCQtkPdmwFTo+WCLeZYel+A28HNn/DpyHctfVZcY
         X86dPUO6SzZmHIjsaBMfoGOLF0l9PjwQoKGKkcL7nyqNYuP6EwrqEicSle85DLMF0KEJ
         z+uaBqjqs/AwKeGExEITzRV0/jmrlTQYXYMB94X94iXwzCSHmZFZL6knTNyuF9gllSPv
         GFpjHVN+GVqyAGuqF04HrrJyvCiJ/8hJ/7sbXnb1AifTbofrFNb56tki4+wxRDwzNTCC
         U93g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=v6H4Mqgp;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ESNGaG0vsHYin5egR8u5asZqjHGf4tQzEm1T1em58uI=;
        b=YbMcdAr/aa/0LTpg3KoNzX8lEguWfZPx9KjEdxeZoFKrTcrArEpF+4kqFv2Z9v8JK9
         0Lj0wVHV/WuTbfwPefuhHJXFuxp/fg0h19KO/NNVsnRA2QKf7XVoM2Q3XnV1GoCLkR42
         4vJ3k30QLeHHq8T2Hu/K7WXYExwLUkTWTPwCbQnnoo59QMICocIgsyTmSsS8f5pjQqIy
         e9RxLu48ek/BmjY3Pb1L0BLYY8h9RzPyyl1AkAPuGjw+VbSSQsmCwbbVpDHHsqg6wJaj
         jYJ+wqHTUfYDv6RP8AgVyrxQAu366rSnqvPMkJZX0RJJ/rNJe/BQwmmL7TMxz8fyQ7kE
         u0Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ESNGaG0vsHYin5egR8u5asZqjHGf4tQzEm1T1em58uI=;
        b=n9qWILXQOGUkv3VqKc0sM6DGXj4dzsgq+4Qx1vv8+zWQuMR5VjXeoeflK05qQfLbgD
         yVcL+uiznQq4OYVXtMi8tJ63lEbY/ooqaE+Z0AbaFd98lfxLrc0D8e9fjtsm7IocA1Ob
         ZH+rQPmriVdoXV5DH10LHGg6Cx+V23ebE2ymk36G7HyMm0Rv5crV1L1rwWuoHggVauFk
         GUJPrnyPGfLdqoRiWK3zZ8g1tm3s68iq27zogJs+imVtgHJnoyHSDmFJblgr/lniYxcM
         m3hnFCewdCj51V9VreRttSc+hyAgKiRdxrxZ6R2qlqN34RC2l2SMj6J2e0U2rwHo9hAI
         5lSA==
X-Gm-Message-State: AOAM532isBe/Gys+zQ6ZgLlFq1ZrC53aORqRCltQ8hdc/qMpYqU856lD
	jxV4VD9CH/mAjCnrfdwiecs=
X-Google-Smtp-Source: ABdhPJwF/QHqK2fj9p0a7FBah06zuX6w6BkrP6uVZLlx7Cuq9FUBMnq2r3wuSrupuRiZ1sUfl3oLzQ==
X-Received: by 2002:a9f:21b4:: with SMTP id 49mr2103480uac.46.1601480299503;
        Wed, 30 Sep 2020 08:38:19 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6102:2e6:: with SMTP id j6ls276219vsj.1.gmail; Wed, 30
 Sep 2020 08:38:19 -0700 (PDT)
X-Received: by 2002:a67:ce81:: with SMTP id c1mr1841998vse.1.1601480298964;
        Wed, 30 Sep 2020 08:38:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480298; cv=none;
        d=google.com; s=arc-20160816;
        b=a4PVKMfqYjYdqIlxvqhKZvvC84D6+a5ZnHwx/KD1b/hLzel+3Dz9MIVFQsr/knnv32
         2DIitQ9GCkc9eIIivMSFYlLNrY7uB0K8+aTtun2gh0qObt8zltPu7v9ZvvVJqyL+140a
         kStNnNeL+7ier/EDPbnGdOj+nsyL0MOlvpHfCQ5hasgCnv/7zo3wKJf3bHlSc3K7oBWb
         HJwVadS34iAD9O18x6xJlLkRlJIdwqkOo6Je5g9OXJQ59SWNB8K/BKM8H2mh6Hi0oEtd
         jFqYCWOQFFlXHiF56hBkKUSW/osNQPJhHNHMxtw/Z/kuuTWFxP8II3FgHMnMsBP9Xdd/
         uRWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=PSR7JL4HaqO9swLj/T2R0uAkZr/feSQH9xlHyklOXq0=;
        b=y0TlDA0QG4eK9uqHAU8QNy5kFfSOCf6jGN/ZWmupqw8B3DGvjGy69HuGp+2uPgfD4t
         VUmKCqbqJcufdUGxWzLFcdLLl/WVECVtx4WQZBN1xDnNxxoewZukrymZrzraLeYekYOR
         8OQWmveYYFI2UDTE1leCb+eSRethciAmA1WxaWaGDBh4H3vVSEGiR8VhK/7/RTVEjT8D
         GPGoN7wqmJvOZyL9dY4rJ2JqkW9Nr3GB/Sfuc7gOjsdALSpvcGilG0AnJU51UNSvDOmZ
         ipf0Rmaxq2JvgbOxXNntICTH04bOE0bCGjy1E9ZwFMm1EYk060vw/H4J7Mm2xn/JGBZG
         owZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=v6H4Mqgp;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id u25si159664vkl.5.2020.09.30.08.38.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:38:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFcBCJ044316;
	Wed, 30 Sep 2020 10:38:11 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFcBcj028621
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:38:11 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:38:10 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:38:10 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZf033254;
	Wed, 30 Sep 2020 10:38:06 -0500
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
Subject: [PATCH v7 16/18] NTB: tool: Enable the NTB/PCIe link on the local or remote side of bridge
Date: Wed, 30 Sep 2020 21:05:17 +0530
Message-ID: <20200930153519.7282-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=v6H4Mqgp;       spf=pass
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

Invoke ntb_link_enable() to enable the NTB/PCIe link on the local
or remote side of the bridge.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/ntb/test/ntb_tool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index b7bf3f863d79..8230ced503e3 100644
--- a/drivers/ntb/test/ntb_tool.c
+++ b/drivers/ntb/test/ntb_tool.c
@@ -1638,6 +1638,7 @@ static int tool_probe(struct ntb_client *self, struct ntb_dev *ntb)
 
 	tool_setup_dbgfs(tc);
 
+	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
 	return 0;
 
 err_clear_mws:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-17-kishon%40ti.com.
