Return-Path: <linux-ntb+bncBCOOP4VF5IDRBYECQH5QKGQEASJUJKQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E568269CF5
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:21:53 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id q6sf1341653iod.21
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:21:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143712; cv=pass;
        d=google.com; s=arc-20160816;
        b=wifX3CA/InyflHHG8JIYSDeRAnYH9InM5WZ9OCEkiHDYnl+GYBDlqT8TxJ/PMEh3Ec
         dbafM6wi+uiJWXsRPpwqXyUTcJ6ecU7UVjtMOa/yMqS60TZoKg6ttRnEGEoXYBZat/QJ
         CKw3GU4lP7nDhjBymu2xmuxJys2neXTj248R+t3o6JxpEhpwryCES0kgFcnTGcGAyBja
         5+aceoBlU/xbDn71ekMN5louv1j6diPNXGjWXsAdZuYSjY3iTn343uwZTk5BBs+23LuV
         Rfczuysv1duT2gKklVdBpfV3TPAAFVLo25TGX/+ZEN4Tc97MoNCHbkkwt4Se3H//yGR0
         EKCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=4X1XL9jkOZ8CgD9bfJzFv8f1XNSF/Kf7ScdqnTzVMrk=;
        b=JXM9krsuaxXY+yOomybwM8h/zQnn9FkGdOk09y24ruCJ781QsAwunQ7eTzLuzsSF3P
         6N3N6GpszPa4JoVckvWdIz1+4jMuf42VYK6Ti+wvDNyyfQbHwt2hgxtnvayZ4zVlBDvm
         7NVt3GHUaNEzw7tXHk2v6uQGAb4zYHieVCG9MI9X5b2ymGE46S3rrJ6lbXFxWBlZer5h
         xld0XuQpnCnc7bp1cpSBPPP+QIPBMH09QFMH1Rzn1eFOxgBw466/Tc/XhwC4xK5QAC7j
         d51Dy0Ptb7wPWuswm4PAv2+l7DbKCt+/S53LP/0avpW89B811B9rfBid1uaT1pH4MGXE
         cBiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=McGGtBrR;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4X1XL9jkOZ8CgD9bfJzFv8f1XNSF/Kf7ScdqnTzVMrk=;
        b=ScBk+ytWUCqLimLlyF7yyIb91Htagw8beLWYZeAL8c5qE1hOhNxwLuvlhnmdZiYveR
         ZBAJ3z+is6q3gykjog6uyWeQHPteuhDVTudRm+ps/uWtPQZblZa+CHxMDcsS3Ct/cNy7
         iDPu/Lb07uNrf37posG50OM25IGSL3Qn9z/umSbc9Hr1FtQGtWqrpk77VhlLYhqx8Q3i
         s9I7VnAszfY88nROLyaHXVUuf7kyEJpg1/09KQCrdC3LFZeVGxXXRGnzOQwhEAxZUdH5
         CuuO7URB4aGHsCEnm8JUzZJR01j8KCmAbEOITp06zpUvruXeDRnI4kUCAWnr60Wg+c8k
         ObxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4X1XL9jkOZ8CgD9bfJzFv8f1XNSF/Kf7ScdqnTzVMrk=;
        b=DIDiM7H5mcUwDPX25Af7AwGPPTYchvRRrITy5p+M8hkbJL2VbTB4c3+Efi6iSNTgth
         8tZ3+899PFS7Y3rWBwv2enVhKr428kIUGDQE2+XnKPFa8v9STcbXuFK72rpmY2eJLYaZ
         5kp1HIvnsHJc4+g7ucet+lZ9HzF2gcaSpJ7s18qULTprt/gdpsYTgnXQokuTn8D52/RQ
         e89M6Im7TlMbgRg0oTcoODvDU0cJ1ZMiIMr3nfvNwn2g7zH/p0EvqTXFRklTGtsc3oKF
         +Qc4JU4Pq5+E5nwl8m5qQ4wzU3vToNzu1piLbOZfwgKz6dSSsR6tid5Hu1rrwcg90Uf1
         Kdnw==
X-Gm-Message-State: AOAM5300zg0ERzwdLQqwYMNBmgEOW7BKaAr2zvGUW3A9szuFCVO1NNDF
	ZyhxcvBThj9fe3J4vNyBg0w=
X-Google-Smtp-Source: ABdhPJyIk3xPI+l/tnEnT5XsPkbh3vKoGTCkbL0YQRtTslG9QzD21DThKNr88g0iOVQgYB7ah9JkFg==
X-Received: by 2002:a6b:4f13:: with SMTP id d19mr13318734iob.90.1600143712510;
        Mon, 14 Sep 2020 21:21:52 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:290a:: with SMTP id l10ls2920762ilg.6.gmail; Mon, 14 Sep
 2020 21:21:52 -0700 (PDT)
X-Received: by 2002:a92:d843:: with SMTP id h3mr15714940ilq.286.1600143712042;
        Mon, 14 Sep 2020 21:21:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143712; cv=none;
        d=google.com; s=arc-20160816;
        b=Fe3SG/XnNF8fKsnxFOdcnDGAyNj4+dWvFo/xadbX026feWU2BraMy+gvDOJf1+fQ1C
         KkUK0G5nUXb/uRegN87rwnxDWitRZPn8RCfpoJb4X+JTO3bG636N5ei8IrqG7lpc+qpo
         pd6qNzrVNlm4o199E/IKG0hV0kD1qES7HQPe3sSf4aB4u/DUO2JsPrQfpotT9l5Pm4q7
         hlGGh+CaFn83sssXUzfgVKSyrMu02Dz6R/S1SP2PTF9mvQzGsMLPBLiLEmab+94lyhCN
         B1c1X67p+QEGLD8X9hxiUQE2aVmlKHn9Q3ktFczkrYhWmqgyUYyyVMRRZdhHrY7ZX10r
         4Wdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=re6MIOXxybv+Yv493YnPwG3dJx5wl6L6fPllpFd+bzs=;
        b=FW31Gva40sEmhycofeDtVnk52Ikai7DtTkwxVsMq/T+94jkaaiwKsfp2mkt4nNZznE
         3QCZIWp/VmroXZSqNCbnl1BxNjVElraMoblnWLd4PFD/H7VaniXjXrELUMiSXI91Bpco
         iXjzHtBxHxtMiKwrntWg/wMR8YSYakUQIJQd7DUtNUYgjXjNsxIO5la7iIOFehTwe2vc
         gv65K6JWBeV3cYqYnEg7mKaqidcr+ZaoLtujLRZ1dlKKUXowtIQ2Llu4VbiJmKvzgnXM
         wLbftxx0+fGrD3hl7vXgq+ZPhEJtpnKEu2r6EQW+h0BexH0JWy7347abjWfFmbhy07LN
         JM+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=McGGtBrR;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id k18si783780ion.4.2020.09.14.21.21.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:21:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4Lc31005437;
	Mon, 14 Sep 2020 23:21:38 -0500
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4Lcra008101;
	Mon, 14 Sep 2020 23:21:38 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:21:38 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:21:38 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMi028615;
	Mon, 14 Sep 2020 23:21:25 -0500
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
Subject: [PATCH v4 02/17] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Tue, 15 Sep 2020 09:50:55 +0530
Message-ID: <20200915042110.3015-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=McGGtBrR;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-3-kishon%40ti.com.
