Return-Path: <linux-ntb+bncBCOOP4VF5IDRBW526X2QKGQE5VEGIIQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FF51D33E7
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:49 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id mt16sf5189534pjb.5
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468508; cv=pass;
        d=google.com; s=arc-20160816;
        b=NoQRgzamAd7SN+UuBkkfHQZVgfc/tCAyUgur07tiG9E3okqM4nQFYHXY6gVIG6LvKJ
         r9wekfGTng8E6rttd8oYfSZmuEODRu0RSxehPd6ERNhg9x+nnagGK/7tXs7i3C0+8jg2
         LB8zCvmwrT41DAr8ny64i7wLwTTd+IlwJmc48KnHjVnWvZlfBqsw41tQTPB4xm13UrDM
         6/e6IaOLM1C830CEPHiBGa46skuX99IhYe461Av1s+/BL2XnBSh99RhV1F3TdLISWC+0
         Fs9rS6QaYVIAghMTYO9+NXlAYjRpv+jmASz/YaFHFSfzPR4MzgtUTDgg1h1GHoEILQDP
         6e+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=klcgpDEEa/sa4lAyr911N7t6zZoXS1Hk7Zxlx771eeo=;
        b=yx2KlV6RVpwXMW3KvCWo24RDAx+JaATHODGoqspZCaS70piPGkZRQhw73x7kYj6qtu
         3HbZ3R4Q2GIEWO0ACUcgwGBqvpoDANG/intfD2az791vCBkJl0dwPxypH3zln2s/qxwU
         /dGxTD/fP4eu8Z8OwJ7xGvQ5RsZ/75YII4o9slf8I+8bG9jI5nAViv8q7Q8p6w1IWKDV
         p9ItVgj7h3qiGLKSY1uPpW0hBVg8if7UyggMdVF1325DEM9Rpy5tLswn7wYiFqDXpM6+
         fnetNNHgmzyKyZ3km4vddVRQPd5pEHDXgg+IQPuYl0WNce7Ky4ZaH+eZJdVeoVXAXoRh
         TOBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TIlTUjBn;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=klcgpDEEa/sa4lAyr911N7t6zZoXS1Hk7Zxlx771eeo=;
        b=RdMeL3TQVYIqzzwWeNBiie/OdL9YHA1oIPQsSnNgKOBRk0rRYjOjd1J3tLJP8AFb37
         C5CWZE2KloXJv46llaJh3WNtK3kVzxlo3foTz1nLPwfeDDN1Df5oIa5fewgddS3Ub8yN
         y+7Wgi7+iRDmbKhMJDobVxCBUirY4JBCYJfNQN6JO7+V5EJxxH02vHzWX+OOcUkx5xUW
         rpuoqea+UQ5/SF2+vXxSJl1cNQO88jHEs2KOVNxnMLK0vITJNiVcs97C1Nv4ElTXns4/
         lHV6jId8IARGeOkokob2UpwYtg6C9qWWXiqueNdctiKLn0ZY9eZgj59eqNXIhW0YBt9m
         dJ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=klcgpDEEa/sa4lAyr911N7t6zZoXS1Hk7Zxlx771eeo=;
        b=Dtzi7yTR27ZqIE553WMLWcfblnfkJ2NlGxlGxeIl4RxjGe4iErRAyj3fUdOFTqplcr
         yGfOcX3QbLtI+H9PAi3q0Np9pgdrw/TUB/+yJbzjCFJJjtFZ8dg28kUmb2ToVmKG2qKr
         FURMW9Dt/ilT9SpL2ESrXN2a80w2GAUN3bd5rYBVnJ8oP+jWiaJF6u4ojXyvLzXrHsra
         X7u/nRD1HDmM1fv6uza6Y8bLeNTwzSXX436jtbRr4x4Twjo2LRpAgOOVITIVCiYCqrma
         176oa6S9ylvT/mGq++YW7uewaNIZfzkIYOS+CQvhHmHYx2bK+e3u8SPcAC0bHBCAH/ev
         vdvw==
X-Gm-Message-State: AOAM53240RINpz0ShhhbofeqkIhOrFSh67oQV5bzG51xs/VQzVzIdII9
	ikiUCf1zCj0nrfzb81XlzOQ=
X-Google-Smtp-Source: ABdhPJwJpm6hm2tRZ2DipU71yy/B3g89eaif6Le+XzKngX8QvZ7X1Xa5/1yoLEtuDrifDZJ5AxNzYQ==
X-Received: by 2002:aa7:9575:: with SMTP id x21mr4869670pfq.324.1589468507832;
        Thu, 14 May 2020 08:01:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:9117:: with SMTP id 23ls1063613pfh.0.gmail; Thu, 14 May
 2020 08:01:47 -0700 (PDT)
X-Received: by 2002:aa7:9e92:: with SMTP id p18mr4768191pfq.195.1589468507316;
        Thu, 14 May 2020 08:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468507; cv=none;
        d=google.com; s=arc-20160816;
        b=iSiNbeO0AXaPsgnAJmO4WItDsWl1dxAgLhxtqkximWP0CVkgMWe/Tp67w6zpq2UiMn
         84lP5p37Si5wrC6GeoE0laR5hproXGVDASyuun0ywnIfpxDG8Ouk1KQHH+ACbTfcupyq
         y//3dmFqVhjiS2EpNpAGRgna/ITrYt/EHTEOWgtZojQdU2aI/nEOtg6RrQgTqZ/kmBjC
         oyEELeOjb+uJO+rryNibL5ZVBFnqjoITYJdLAbAkFY/Gd3r7ynnBmqVbjc01ij0oPzFV
         HxT5xGA0GYUcFVvsby38jPOaKidCzqlhC2Hn1WMN+vbi07zh0VofHieOIKILD9bykCpn
         gs3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=bjbvpTmM1atFHxC1fMsegIPQSlgplEAZfEUWKWe5dgA=;
        b=l9MEIcX8RN0gzz0LGJ1F1ig5FWf3ptvlYbleuDggfcaV2a1TcISUOZG0DGWyrXFpYh
         rc0k7SXjAXnSmuku3RDCIoyTzlImtvNN58A/LKfaRCxtZ8XkTKzuTnIZ8sp1LSJkyFXC
         cRWNKfooXDBV0R4lbbm/AXzwcp3isSaI5K88noGUooMvK/BzW1MAvHfyAyQ2OexvMpb5
         W+oycLUscOPY4Q6i/0JzUm+MZoALghaU9dxXvNK/e0aoeswy9ZTHDEgpMJ4pVBJHtaAB
         e1K2us7zqpkh4UYrLb2hYMOqkHuukcJtIYexow5JALTmgvlC16drO6GyBlaBSn7hhMC/
         +z4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TIlTUjBn;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id ft5si361786pjb.3.2020.05.14.08.01.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF1Dfd000684;
	Thu, 14 May 2020 10:01:13 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF1DJ2104448
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:01:13 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:01:12 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:01:13 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgB2019279;
	Thu, 14 May 2020 10:01:08 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann
	<arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Tom Joseph
	<tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring
	<robh+dt@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet
	<corbet@lwn.net>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 18/19] NTB: tool: Enable the NTB/PCIe link on the local or remote side of bridge
Date: Thu, 14 May 2020 20:29:26 +0530
Message-ID: <20200514145927.17555-19-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=TIlTUjBn;       spf=pass
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

Invoke ntb_link_enable() to enable the NTB/PCIe link on the local
or remote side of the bridge.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/ntb/test/ntb_tool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index 69da758fe64c..4b4f9e2a2c43 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-19-kishon%40ti.com.
