Return-Path: <linux-ntb+bncBCOOP4VF5IDRB6HDY75AKGQEJHSCQJY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id F04F725D2B4
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:51:21 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id bz14sf830292qvb.3
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:51:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205880; cv=pass;
        d=google.com; s=arc-20160816;
        b=cGk+0FBPEhqvdXf4zpe+70+UYx4u5O40Lcp9/57ediIlfxwhLI1kb7/POVAHO7FQ0O
         K4Zc/gyzzKhvTGkofGZs6QGHHyeV0Vc2+1/3FZC+RmuIHPoxpXkx5/2F11kSj6OjUlHB
         wl0fXRj9XbaKbr7aN4xwLnUHAycFWZ19HU6Z/dguGXmdMzdYMpbTL8rIdUsDQD8HrQBU
         O4u8DGR9dYej7aKvER2n5Zo5xfuU0qvgSPeX1z0OpeOCCjLXEZl9WhX1VRQLBe+kNAoz
         GR9cU+KIwfJxEFMciXQjP+spFTlv2duoNAXIPZlDvuSkVmLPlcRSnua7oI0rJWw+ypsF
         GgIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=+z5tjV+UiNzBizTYRSkecMU3SvMhc7O6EQH6gv4ZSig=;
        b=hYMLTFjRC8Sck5vx06rC9qX3VCzthesRc5yfGvOO9QSnmbBlDGZjyPu1LlzKcrB8iD
         jYhWIe6dRHECvd7nTF77dHk0HDB8He93LaQCgzZxerahpVx4VEwBKRsAxQxgYIf8T0Vo
         Z0u3DbDMSRzm5QBKnWOfIpifD6xqWs/rlQHNZf/3Wt9UJob0QZdTd0Dc52ZvGtQdRS0h
         WvDd2pTUMYgiX4aoJhvpnhbUNu7fMoQvfuGisMPHUWr0ndGK33M7K58WM0TPZr3NpE00
         NQvDVckqtCrge1FX0Lvf7ecFAY6upRzJGSy0A2xMhTlKNncT4B5KAbYQmclIaXDgwOhQ
         aQwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uEjEIzZU;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+z5tjV+UiNzBizTYRSkecMU3SvMhc7O6EQH6gv4ZSig=;
        b=n9zvNH/rfizOo5Z7nueZauhIHYVJK8fObs4rNbQ2CxLV78JcbCagQT3j7gmbviCf5i
         ZM+++YR3MnsYmHnLPTg3TtMcnxMg/SDHq8qmdYscW2z0EaCSkZqIcy6Ui054pZ3NDq3E
         +3w2iqVfG0KhD0YmJN716Zw0rJFGZds3FH52CpxdeAhwpdJI2E04rLVx6+TIaZikiRNZ
         83sgZ8ZJXoCyaoGwHrYzc0FCO/ODa1t76OBQ9OoOyMw8fqLTUeHTztEZrwjVZJtSNjCg
         fT1wP93tiJJ8t7QQBgeOiHKywu3N6Y81Beoxqiz6emY0emmFrzcoYvsVoLurbwHb7y2v
         qkiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+z5tjV+UiNzBizTYRSkecMU3SvMhc7O6EQH6gv4ZSig=;
        b=d7V/qHpb4PkqKxURLoIyc/f3wWnvNMVOli/J4BM2nPmVivLPELEN3U/3Iw/WEC4Y6f
         g4kffM5yblGThaFoJDrDLxOFFzs6/nYYpv24fLFzpH3yyRgpcsr8XQfNBfTB82pqmNI8
         Noi/TKqGAk0XpWSCikrhGakIGqvTwKPzrhULh8Ie1JBcBuAJaUm0dzg+YmewE/j01b+g
         V6AIBJAESkze/y6N3ZLaUPJFRNJsKSYg5KG2DR4BH7Xln8nvev/Oxk/gaGpMfuk6qF45
         g4XqqL55cUd4u4eS8WabpLpOl1dAXCddMsCEtHXfV34cQONwY6pZjNrX81UyAjkfj/86
         NYdQ==
X-Gm-Message-State: AOAM533iR8OfFDxZ1ADjBDkiVdo6swx3qZ3eRwpm9pUlwq4zHWcjJ1Gi
	ICH6Cgj7f0wDQ8kw22Pd3kg=
X-Google-Smtp-Source: ABdhPJzl4sXnPA3ZAhy8A7ExUpjFMFvab9mCCQXVe1i4C08BvzcZFOT5kVbat3LNfB6i6FldHFak/g==
X-Received: by 2002:ac8:748c:: with SMTP id v12mr7293873qtq.200.1599205880502;
        Fri, 04 Sep 2020 00:51:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aed:21a8:: with SMTP id l37ls3352502qtc.7.gmail; Fri, 04 Sep
 2020 00:51:20 -0700 (PDT)
X-Received: by 2002:ac8:86b:: with SMTP id x40mr7208712qth.75.1599205880142;
        Fri, 04 Sep 2020 00:51:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205880; cv=none;
        d=google.com; s=arc-20160816;
        b=CyGFt0resw6wsnvwwvjXdQbCYL32KFSL22rsQ0PNCZOMrMA+KG5TzRs8hg8DEFdext
         nFw/JaL56W3Vzfb6sFcbQmupfCultq9kec7kGQB3QmVbLDqhFy7vnLDYkQv1c7UIWdbr
         xSgINwcl9cuHXDf5dT6pDrms3erpoNL4H0O5rhO1MecTYTo4RuF+KRuitpJQVm5OuBPh
         QBffxly/ka/Vt3IKmLVeJ/m9pWoASJnPX3QW6n3lZf/WO2aEf2KzqB9s0CVxuaw8kgsJ
         0VNpxU6L6jwqHfcQWPAAX5UlcWuX0fwLpMZ04uljC2eYo0Ao+33TmlyoNzpW++BiGdwV
         4Bvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=re6MIOXxybv+Yv493YnPwG3dJx5wl6L6fPllpFd+bzs=;
        b=xauU2laXCtfVL1+cb0UItBFzOSz2tUEUNy5q6tswFnwSCtDypmHLglZs25uLvKOYSv
         Y/yxA8KhukQsZBk5/BgzuRvlQBngVpWxmCYeMh98nZLc1fSRvawUHKLr7z6fVcSXxCIq
         iWNgZOopiuJIa0Icpno1JGp4ECfiEEmwNq9z5dLnhz1aIVqiYmYUiZpzhEISC1m0m58Z
         b/cVwfB6FS4Uq73T+lN5g2pHGmfwgV4RcCLA6oTeHPVKFu3ZleSSSFFVO/eLyMWklkFI
         BE154ErQXRV9LbOSI5IbdU5fT/2mRjrAHe+KYVpydlK4XADWzM68Wy3ZqfIpuan6q1Ks
         PFRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uEjEIzZU;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id i9si342151qkg.0.2020.09.04.00.51.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:51:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847pBCq017857;
	Fri, 4 Sep 2020 02:51:11 -0500
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847pBO8002872
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:51:11 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:51:10 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:51:10 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osN3058796;
	Fri, 4 Sep 2020 02:51:06 -0500
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
Subject: [PATCH v3 02/17] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Fri, 4 Sep 2020 13:20:37 +0530
Message-ID: <20200904075052.8911-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=uEjEIzZU;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted
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

pci_epc_get_first_free_bar() uses only "reserved_bar" member in
epc_features to get the first unreserved BAR. However if the
reserved BAR is also a 64-bit BAR, then the next BAR shouldn't be
returned (since 64-bit BAR uses two BARs).

Make pci_epc_get_first_free_bar() take into account 64 bit BAR while
returning the first free unreserved BAR.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index cadd3db0cbb0..25e57672e1a1 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -93,12 +93,20 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features)
 {
-	int free_bar;
+	unsigned long free_bar;
 
 	if (!epc_features)
 		return 0;
 
-	free_bar = ffz(epc_features->reserved_bar);
+	/* Find if the reserved BAR is also a 64-bit BAR */
+	free_bar = epc_features->reserved_bar & epc_features->bar_fixed_64bit;
+
+	/* Set the adjacent bit if the reserved BAR is also a 64-bit BAR */
+	free_bar <<= 1;
+	free_bar |= epc_features->reserved_bar;
+
+	/* Now find the free BAR */
+	free_bar = ffz(free_bar);
 	if (free_bar > 5)
 		return 0;
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-3-kishon%40ti.com.
