Return-Path: <linux-ntb+bncBCOOP4VF5IDRBNGYRD3QKGQE4G2YALY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id DED401F6893
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:05:57 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id a5sf4991361qkk.12
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:05:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880757; cv=pass;
        d=google.com; s=arc-20160816;
        b=X7xaKFzJ/UbHXb4lt9s5LPOXo/0twMuHOBCVHtZU2vlizJtlMEiORKTL9T4VKqR0NO
         qzxOyVQuqVSdLrtczM45KyGqdxoav2+hEpdcrpLuDAQv1TseFNqAFgDKAqhVl1t0oVqg
         klDUHm8PC+4nsdyMlqVgY/d4z/btYlW2THurW1qQtOzNRuoUmwd1dZW09ipbixNBNP2h
         R8Eph/xd5Mvy8hza3GYiEAGhNw9XD1xEqVTiEcS96AqHOY4RI8PdA7nDybxJGeLvh0qC
         8DFnnS3hvoobiVKnmWtnxy+YeRqwpH6qgzE86Fn0THNyzoPc6WCGBjZWO8I9jUSu5QWP
         sRbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=RHSUX+1/LUCh4iu3XZ8LJ/D1GvlODWxEaW7CAah2OjU=;
        b=LURZryERjDQ54Js68vCPMmCajTr0LcDbiqK3lt+wAr5p/7qGN2Ii85GbFz4mDckGeI
         eaBsXZmAPgHgZ8W/XixczzfTQKhCKeJBuzuAZsK1qiT9+qZ4MUTjrQCc2xE1oZUG6j4b
         luGRMkLIPbWZGdBhcvwpMM9+3Gxj58Y00UeMNFIuq07xn/B7InQfRQKSJi5QC5rDALqu
         MH5+gKOaaHky1w8M+FzLxzUKd/3sYQLB5N7baEeOl+2oxLne2qZ30YX+tKdaEbJOUHAX
         l0ewhk6ZQOrO0eRgLNog9duMuesRo19TzwBSVvD0i5VyN09kYnZSpsESnDoDM+jmbBJJ
         mGig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=WsjYugpw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RHSUX+1/LUCh4iu3XZ8LJ/D1GvlODWxEaW7CAah2OjU=;
        b=BCPT6YPXPXnnBfZhGLmmEp764BJYUa1L6nPmCdi7uAvDGdkPheHKfP4eoRUaih+sWz
         ZXrSkj9WTtuQl2D9Ob5KO8iyWcV4TNDJN7D9WS9gQb2vUnZFV9Xo+ErnJ+Z2Yx/458BX
         l8Iwi25sLh7kwAuMyETNgQHwadMXvBgbiy8qHoiz0QLCNF4B4thaMbp748Nu0I9fLTip
         1pFOjtuY+X32UpPKJ7WKBmYaraLzLlAZ1tNX3ghUN2xk3y26IdbQaxUv/Zc725rsL1Vx
         N5bwQZDO8NyF01GgWCsjLBiSFKEe/SD32B0L2GUtOzdMnRXOaYbjbFXdZ/kAowDovJAQ
         Z2kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RHSUX+1/LUCh4iu3XZ8LJ/D1GvlODWxEaW7CAah2OjU=;
        b=jJZQjWPV40csaNjbEEnUEOsUJ9PaD0jbFa3JZdfy6Fs2wx+88lk1gQ1MjbNk5+nXMx
         WutD1UoB11tybsFZTS7nS1oj90/VtiotYjz7JiktdDl2SqAQ5+hEwYww1gB1CRG2tCsL
         3OfjSd0EObfS7+nopwq/LakxyTkXwRQYwR9q3whamvNZJIhNXIiojTlaviqjES2vHmlH
         KVrL593kgfDJlZ4SqbY8scP9fr2KflhgYfDcRZorUTbeSAF+zShVzDrKlidHtgCc9yJr
         PtabSeB4cZqB2YYY9eitdwuVqEAaclDXbm67wRXC9zGFL8cGWSfJYKVUNN4I1a1ajODQ
         /HjQ==
X-Gm-Message-State: AOAM531j/m+Et7yRs9eDoX0aFjke/ykqvXMhbKaQb5izKQudJlBiTrrP
	dTzetpq+c4qf9ewZDU68M0o=
X-Google-Smtp-Source: ABdhPJwFxahFip2pSQ5CGW1d3y03cDTrYBonUHGUclE5M+cyicgfooZBnUQenLruv1oYlQ3Nl9OIEQ==
X-Received: by 2002:ad4:46af:: with SMTP id br15mr8062030qvb.178.1591880756809;
        Thu, 11 Jun 2020 06:05:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:4e56:: with SMTP id e22ls887396qtw.3.gmail; Thu, 11 Jun
 2020 06:05:56 -0700 (PDT)
X-Received: by 2002:ac8:3483:: with SMTP id w3mr7765794qtb.330.1591880756469;
        Thu, 11 Jun 2020 06:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880756; cv=none;
        d=google.com; s=arc-20160816;
        b=JwrvIinCknqaVdracsNXjVbbzpczmAV8C9TUKm837Sb6zlK8gPoqbaDbMxICG882vj
         4ZvdtsFNWs/7lsRwu8UKJi53IkR0XgKuo090khYtHy/iShL75cw+fTpkkSW6cS5E161Y
         7TeGnDY74Ek40XsbTHvVpcliTNuENmqiTheWM2OiBO/1CQRYLoIk79AA4j+zpxx4dKyd
         h8alxILZa8AlOzJe8Z9R7UOeVRsAztSXf0LacwXZFesYCBKsCiTPVWKThkrJoCctl5Dn
         E6ncoJrf1EZRoj6P5eUjPWqP6U7icHnN69dLObJWaBnIn43pMrPScibcuLA3tpQTOqjn
         SV7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=gyAi/y1q/HVFnEZ/DxfyY6kKa19doe82dLyhimZ2rxw=;
        b=vdEfBpMj+GNLEZ6rCxXJfczFUt/AE8Kwpqd/ZABGLnOXpAc/PACepqB/dXJzlN2lH9
         WbQWPs9rNBuYijXLr2JVrsrijHoKkkp4+YhEoadS1b//N4KXp1/q0ejOnXQ3WxD2nL97
         5tG9ymkguUWcI6Fm6K3ZlHo0ASWLZm5gaALzVB7i/SpYaKu+InBTpwnTQCmgduzGLmR7
         /RZE49hRtE14EDC/M2VFSHZTAlBB0vPODEa+vAO2P1zKgfvoy3NQgZeSFXXK4anOm4VF
         bMBQzn1E745NmV2yHiIKXDcJjCdWWTkpY0YZVXNq2Vu+EhWXI2TQmZ9get86RSxYzdgu
         D0ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=WsjYugpw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id c67si191823qkb.7.2020.06.11.06.05.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5nps105539;
	Thu, 11 Jun 2020 08:05:49 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05BD5nJp121613
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 08:05:49 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:05:48 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:05:48 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZ5082585;
	Thu, 11 Jun 2020 08:05:44 -0500
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
Subject: [PATCH v2 04/14] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Thu, 11 Jun 2020 18:35:15 +0530
Message-ID: <20200611130525.22746-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=WsjYugpw;       spf=pass
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

Modify pci_epc_get_next_free_bar() and pci_epc_get_first_free_bar() to
return error values if there are no free BARs available.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/functions/pci-epf-test.c |  2 ++
 drivers/pci/endpoint/pci-epc-core.c           | 12 ++++++------
 include/linux/pci-epc.h                       |  8 ++++----
 include/linux/pci-epf.h                       |  1 +
 4 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index c89a9561439f..8065ec289e6a 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -834,6 +834,8 @@ static int pci_epf_test_bind(struct pci_epf *epf)
 		linkup_notifier = epc_features->linkup_notifier;
 		core_init_notifier = epc_features->core_init_notifier;
 		test_reg_bar = pci_epc_get_first_free_bar(epc_features);
+		if (test_reg_bar < 0)
+			return -EINVAL;
 		pci_epf_configure_bar(epf, epc_features);
 	}
 
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index ba05e616a407..840b99213c9d 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -90,8 +90,8 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
  * Invoke to get the first unreserved BAR that can be used by the endpoint
  * function. For any incorrect value in reserved_bar return '0'.
  */
-unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
-					*epc_features)
+enum pci_barno
+pci_epc_get_first_free_bar(const struct pci_epc_features *epc_features)
 {
 	return pci_epc_get_next_free_bar(epc_features, BAR_0);
 }
@@ -105,13 +105,13 @@ EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
  * Invoke to get the next unreserved BAR starting from @bar that can be used
  * for endpoint function. For any incorrect value in reserved_bar return '0'.
  */
-unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
-				       *epc_features, enum pci_barno bar)
+enum pci_barno pci_epc_get_next_free_bar(const struct pci_epc_features
+					 *epc_features, enum pci_barno bar)
 {
 	unsigned long free_bar;
 
 	if (!epc_features)
-		return 0;
+		return BAR_0;
 
 	/* If 'bar - 1' is a 64-bit BAR, move to the next BAR */
 	if ((epc_features->bar_fixed_64bit << 1) & 1 << bar)
@@ -126,7 +126,7 @@ unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
 
 	free_bar = find_next_zero_bit(&free_bar, 6, bar);
 	if (free_bar > 5)
-		return 0;
+		return NO_BAR;
 
 	return free_bar;
 }
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index cfe9b427e6b7..88d311bad984 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -201,10 +201,10 @@ int pci_epc_start(struct pci_epc *epc);
 void pci_epc_stop(struct pci_epc *epc);
 const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 						    u8 func_no);
-unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
-					*epc_features);
-unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
-				       *epc_features, enum pci_barno bar);
+enum pci_barno
+pci_epc_get_first_free_bar(const struct pci_epc_features *epc_features);
+enum pci_barno pci_epc_get_next_free_bar(const struct pci_epc_features
+					 *epc_features, enum pci_barno bar);
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 6644ff3b0702..fa3aca43eb19 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -21,6 +21,7 @@ enum pci_notify_event {
 };
 
 enum pci_barno {
+	NO_BAR = -1,
 	BAR_0,
 	BAR_1,
 	BAR_2,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-5-kishon%40ti.com.
