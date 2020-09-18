Return-Path: <linux-ntb+bncBCOOP4VF5IDRB45NSH5QKGQE555BHUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id AB91726F60B
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:43:00 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id a2sf3808600qkg.19
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:43:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411379; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZJ4ZTUPHJul7/5EvW2VrBo/il7/1gspd9CAB8TR8eqkDxsBJukAgDjbahdfduwQ1j
         LKBzYYpsyfbw8S7q2Mx5Fv/N/nU6kZRQwIFNYCyoq4Qc4kKd2XyoXfHa7W4p7cG4Wrtr
         FqkXJ4W/xPv0WIaZsy2CCUut2dZ8zryswyM0bVaGNf9NryfVGNML5ijPX2nT5TI+osWO
         30zuaoBXYabYTlIv9HZGhuig/b8E9SwsTgXXPVwd2oyCRkg4v7wpoZ57uTwMlAAA4PiS
         8FdqYI5GMcmmxK9Q/8CnmReL/5kZD68k7KoITLgidMEW/FP/VdegdsKcUD+z/l9ssJfE
         oliA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=3zz6i3zpBVj8OQ0eKwoAM32iYl05HmiOe7avw2k55wg=;
        b=Ls2C9qJdD1tL+ueRMIXXCRccnb6LSLUe9dWl65QRAsuzmRF5mJep8GgcX4gNPp2rjv
         wp0FGzAxKYzG0QIplWSp3x4ADWoZiZdyB6RrrqvrqLPXkteMc1At0f2AE27JqkjfYjB4
         qv9Z6gqNKMcD8SRbIZHLX/Le8ULBU1b2FdgTqKi9N+AtjVfyDKYRPJJNBT2jF2sku4nT
         9cJKpqdBv13kmqdrEMCPL9ZN8kobbMckTrdNVnWDq1t95myigUDn5CHCAwOG/aPvNgQW
         wpyGtlreDr5KSLc8TwOmOCWrADMZWfo7g7JjGAwcxKynX4UWMIkUtRaENYC4I2vdpUYg
         H9UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ER97wC+o;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3zz6i3zpBVj8OQ0eKwoAM32iYl05HmiOe7avw2k55wg=;
        b=c/nMstwH2LA30Op9zHFGwZ00p+rh1Ajm0Pl5blrGaFpHfRx3RpnpbFEf4gfVSYuA0H
         8OPG/NCp0RLO9Ow/TP5UA9Zsva4oM2GKwO1sn03KT8AYAz8NNxpy9fSzhsZhsZLn+m/Q
         qrSF7yJoqaFHNsgX94kMVE5EZSC5o2cPYTC/8MSHSIhJBgbrGIzaWwRwPekIFOF+8kRc
         RE2h1BShUzWbch168ANtv5e16/KzoE+E7s3UPoLuXnron0sN/tMvvuQuK7KEwriCO84b
         i3tl0HAVrLq53ZOWzhur4ht0K1mn3D3uBHXU/F17U6GMRDu1gz5FzDGaJrj3BcnvY08G
         gx4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3zz6i3zpBVj8OQ0eKwoAM32iYl05HmiOe7avw2k55wg=;
        b=kaBIKV3W7bbkSnS3HtIMX4jmIgeB2vqGi/Czye4Vz69gw0O+UntAsMjUjfshHodVSz
         9sVByQNNnIsAjtRgV2TzUBrIsNoCO/ifFOLUjfMIkPXQw2GN/jxfSXnONS8oedoY494a
         wLZlaX5gURzAUuHsZ9oy+H+eWy4j5UdneyFfsbLz/JxtB1ZO4fZvRu7mPFXTYMCEzfJP
         Nd1C/5vJlEJNmXZMG+pRD/Wf1kcS+LI9Q6ItnsBZ+DeDWny+dpQqs5uW2qC207mu9xua
         QciZYkMKm+06efbJ/5qlQIp0NXqdKFCa4FchnIGLtsjaXc2hmGrbuOFfCZT+fp0rKadk
         OKXw==
X-Gm-Message-State: AOAM532f1unNKbKZ9UnEPy0VHBP5f3ZepO7PuWlTJYAPd8gE3Fe0q5gM
	vuZeLqpgOZkKyf9dGRIn9/E=
X-Google-Smtp-Source: ABdhPJy6K29m+xJsVtV+YZyRCAqLQYmV25MYSum3m2TGc/7wNm/0CZQ7vDKyGUFvuUSPbYEnBztDAA==
X-Received: by 2002:aed:3e2e:: with SMTP id l43mr32837701qtf.392.1600411379451;
        Thu, 17 Sep 2020 23:42:59 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:b987:: with SMTP id j129ls2377217qkf.5.gmail; Thu, 17
 Sep 2020 23:42:59 -0700 (PDT)
X-Received: by 2002:a05:620a:2055:: with SMTP id d21mr33259595qka.202.1600411378976;
        Thu, 17 Sep 2020 23:42:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411378; cv=none;
        d=google.com; s=arc-20160816;
        b=DxcTJerXFmjVFOf1T3SdMTMBSxwMLSFJszMEv96z96MDBUZB4cfCMCMB1eJTbg2WOm
         Q8ws8TLOTJHscIt4PR6F3WkvyUBBf1KUcPx4RxyExPnNU+nHK0ZYSVeHGdg8B/qm5i7u
         B3QTUhZsOT7gFKYKCqiVRUpOGkyDKO9aU7Yx91R1Q21kyY5zQ7iEzAq4umiDfFo+WqFT
         BcMxq6/QV1VQXqBSvrIbqu0mdAiOOLYyPapryF2COClAajP9kAMoVz3ko3vHjm0ZM1Lr
         iufWS2RpZ19I0GXlfEa3aASQTidKJR6pBstnxlZfn/B7n5DpJY+u8D8GmEivnDME2R/B
         Z7DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=re6MIOXxybv+Yv493YnPwG3dJx5wl6L6fPllpFd+bzs=;
        b=dspAtVsaj6t3syh2eNSamIPhiJa2E9uR+cQQjSZ4yWQPuFGxsZO/28bDCuEBjmEpHO
         zCwoXBrmU64BFwO1EyHyqUD5x3oJFc+t7jGtGeoOfyOBsM8NSTOofYA9WMQlD9lsJUvb
         CdLlnwRRp5Z+9LBqFzUklC7vuicHJgNfuoRTLDiMIeB6g1P5GkxzTcehQTKgKBke3ttp
         OXcwlOLCGoGZE4qwqMr8/RqqCkHOYv5CPcn7hPdi0F6pvLEisPN336Z/H0Bsh1UcCAy6
         sUNEnYa0bEht5I8ie6sTObgdITHmofccq3g5yk/vMLSGyqWgX3J4G7jh2EK+sKCxZej7
         nwog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ER97wC+o;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id h18si115067qkg.3.2020.09.17.23.42.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:42:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6goJM107085;
	Fri, 18 Sep 2020 01:42:50 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6goNt107846
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:42:50 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:42:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:42:49 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCM094595;
	Fri, 18 Sep 2020 01:42:42 -0500
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
Subject: [PATCH v5 02/17] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Fri, 18 Sep 2020 12:12:12 +0530
Message-ID: <20200918064227.1463-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ER97wC+o;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-3-kishon%40ti.com.
