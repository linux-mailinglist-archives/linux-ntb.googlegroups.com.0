Return-Path: <linux-ntb+bncBAABBCO3T3TAKGQEGTNFDZY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E556EEAC
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Apr 2019 04:06:02 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id f11sf6806865otl.20
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Apr 2019 19:06:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556589961; cv=pass;
        d=google.com; s=arc-20160816;
        b=I2TZWADrbMMp4cfP91QP9sTo6Nyom7OaP4WkL5qElY1jxnQ79FXUJMojwyOT9W+ZgQ
         BAnduvzRazpeabBb/XfA/kzi8IYoQAPBN/GHVGz4nA7GCOtkj8jtSq+/ACRAJi5vxZaj
         0sEzvW9BhdB7SDcLm+Bae5z0OrSHbsMhyERPfF57xjY57EdoKpcK3wt/22dqZUGD0rvQ
         d3HNLQahgAmE2vTFZPNcL1myvU4+fNI79agtmPsRORPIG2r+YGON5pruzIKlKlZ8z6xO
         yCAud7nvgGGSyY7sTS6caFk4nO7K5WtTM07Xwg3TdYhs44bUfiGztZ4zrD+vjrm8V4Rh
         LzuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=r7DMqaJIwsJplv3RX6zNbWV+KCftLd6Trzi9RFClhTo=;
        b=SC7pZ3j/Iat/8psyYPaYYjy6eZtU2XAy1xxiiN6BeKd++zZWRvDqO8l8nvkuQ/Nc1R
         od8TKMedv4jfdZIOOz3DWKwK1C1Y68eyO1Uvoa3MDTny6x65CY7HMqRHTgdLDv9EvzbZ
         72ue6jZixepA8bpcECj7gSM/QX0zlhESX0Cgg0kk3YAJ4yFgD0ODQIkSKDLBBAe9ZZIf
         woAco7DvUeYvo0j7g8es7phI8kEpVf76TW+4PObdfSuX1WoyM7uBhIWx3kjIsud2zAJ8
         N0RCSuIu+1L4NSMfrGCKqLRO0FpfniGDjtxobGuU0kN+lBJ1qHDi74mdpOUQkHu6fTNu
         1scA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wesley.sheng@microchip.com designates 216.71.150.166 as permitted sender) smtp.mailfrom=wesley.sheng@microchip.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r7DMqaJIwsJplv3RX6zNbWV+KCftLd6Trzi9RFClhTo=;
        b=LuFYs2S0dhP1IymDECjCwwaxUcHLIh60o3AhJku/kJuXPpsaHwrKttFRU4+amHeJMp
         kgTUY1NeWrf8XPxZUEet5WpTLqGSHlyNYvPPlU7rsxh8UwyPmNBdrrtvaE/AVzTu2yYt
         InnAx/9RGBS9yPfuCJ9fb2hONgfQ3bu3S7B5DeoqN3UGkMHfkl2p2x3RQZxI3hVogovS
         5LAz4zhm2G7rvMOuGAj2UtLS5nkPjTJLc9fwMkCNwlKzPRqoomKeq7KXjNAiHQlJ+dko
         eBFWtTWv0Lyrtw9q9Vpx5Zi1hT41gdkSIKaPqunL2dpGX/21O5am4g/TfIe98PFfA1CN
         Eg1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r7DMqaJIwsJplv3RX6zNbWV+KCftLd6Trzi9RFClhTo=;
        b=lb8MRlxXnNVop29exJzFCRgQ32JcA/LPqnixc1JpbHZ5sq9odMo5WbNGrA3jbBu48D
         T83n8Q2L58tnQFAHIC3FwfIhL5OKS2P1oOiNYNiYsAzEtTbUdWNkT2bW6e8Fr0v23Mpf
         cV3rIgoWc74MMSGzm7sF5SRcB4tZnMKxv+0GvsJ+pSv7QTrGjertzlVYZX99IcoXQZQm
         RV66NhsdVrBXxqHe4QXeY9ESYDzKAOqXMdEkQTa+r4Sb9QgS1/QvnKPTIJJGHpUmLqCi
         3xLATZNboxjWfTpjXVvDd/LAqbbiADFcRpXhC/xpmsWUeeZE1o16fWNDv7fRgCegMw1C
         z+sA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV/UzNC0BEty+bjhlBkU16CRXM+tCQRvCrAa7uc9PjxOG5pn1A7
	hC8dggaqaBifpZ1gGd22PVM=
X-Google-Smtp-Source: APXvYqwCeyeVAStPYwZQTyr7rUeXtAyroxDDH5NbVpKjt56trYfev1/VFrYYA6dATUlcITAuNQo22A==
X-Received: by 2002:aca:43d5:: with SMTP id q204mr1526647oia.100.1556589961367;
        Mon, 29 Apr 2019 19:06:01 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:6b08:: with SMTP id g8ls252658otp.16.gmail; Mon, 29 Apr
 2019 19:06:01 -0700 (PDT)
X-Received: by 2002:a05:6830:155a:: with SMTP id l26mr1996062otp.101.1556589961173;
        Mon, 29 Apr 2019 19:06:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556589961; cv=none;
        d=google.com; s=arc-20160816;
        b=A4nXEU0URWdKzkzcr9BEUAhV+6ReqNr/x8uTDtEQ6aJkS2dgTWKA6cyG5F8TDJ2Ew1
         lgf00g/CNTJDt97+esZ5oJ644OHt0mVLV4xRmbGr2uxlX1+GhByNw06cUaQpl+ZWTWnA
         3m4jTWqsfjbcO2jNJQEcVy0Nx0YxYBrID6gxU7WyZ2S5hmfXTVZ9OiQipCgg5xymIwpw
         bc2l7iKuuXmBQUpgWE726ekoAyipjBUPQGM5SGoUK7xY2xe6unK70kN4dkWM63l3ooCy
         IzttVm4I2L90bbdl6onlwcZ/nfcLyttt+svLweOgQ6y23bC+wORid6AWPPqyscWDRLb1
         XuvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=2A40A2wbwKZgxyFxYrxXExELwh1rgnQlLUL11i4MABc=;
        b=cdrR751em3pdmlLqoxkBJQMHTNcx9OeXFI6S7qX7UHVaIbhcFStNmYXpketr+pm7i3
         5r+z+sp6G09DU9jyautMpLInqqUJL1/uh0SKxMimviB7E+P/x0yGKYwa7cAMsnpf63mw
         swC8o6LD0dEBWeSGVkNNMR8Ib1AgoJkR44Ux0rpaDORpyAKFCb2VcKtvcn6HmNasiT0w
         dzrzcibwZb/6Hela9Ycle07L9sUHRoMUaccoUiVuis6ql1dXGb6BPJeHDZt+W7t93No3
         rWEJz3oPB7kgQmsSwtnZue8vZBqKf/DkWcMyZ+E//aMyvjkJ1srrCr6BicnOcowpHOhX
         xsIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wesley.sheng@microchip.com designates 216.71.150.166 as permitted sender) smtp.mailfrom=wesley.sheng@microchip.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=microchip.com
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com. [216.71.150.166])
        by gmr-mx.google.com with ESMTPS id d2si1157383otb.1.2019.04.29.19.06.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Apr 2019 19:06:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of wesley.sheng@microchip.com designates 216.71.150.166 as permitted sender) client-ip=216.71.150.166;
Received-SPF: SoftFail (esa5.microchip.iphmx.com: domain of
  wesley.sheng@microchip.com is inclined to not designate
  208.19.99.222 as permitted sender) identity=mailfrom;
  client-ip=208.19.99.222; receiver=esa5.microchip.iphmx.com;
  envelope-from="wesley.sheng@microchip.com";
  x-sender="wesley.sheng@microchip.com";
  x-conformance=spf_only; x-record-type="v=spf1";
  x-record-text="v=spf1 mx a:ushub1.microchip.com
  a:smtpout.microchip.com a:mx1.microchip.iphmx.com
  a:mx2.microchip.iphmx.com include:servers.mcsv.net
  include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@smtp.microsemi.com) identity=helo;
  client-ip=208.19.99.222; receiver=esa5.microchip.iphmx.com;
  envelope-from="wesley.sheng@microchip.com";
  x-sender="postmaster@smtp.microsemi.com";
  x-conformance=spf_only
X-IronPort-AV: E=Sophos;i="5.60,412,1549954800"; 
   d="scan'208";a="29360171"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.99.222])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 29 Apr 2019 19:05:55 -0700
Received: from AUSMBX3.microsemi.net (10.201.34.33) by AUSMBX2.microsemi.net
 (10.201.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 29 Apr
 2019 21:05:53 -0500
Received: from server1.microsemi.net (10.188.119.166) by ausmbx3.microsemi.net
 (10.201.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 29 Apr 2019 21:05:51 -0500
From: Wesley Sheng <wesley.sheng@microchip.com>
To: <jdmason@kudzu.us>, <dave.jiang@intel.com>, <allenbh@gmail.com>,
	<linux-ntb@googlegroups.com>, <linux-kernel@vger.kernel.org>
CC: <wesleyshenggit@sina.com>, <logang@deltatee.com>, Wesley Sheng
	<wesley.sheng@microchip.com>
Subject: [PATCH] NTB: correct ntb_dev_ops and ntb_dev comment typos
Date: Tue, 30 Apr 2019 18:04:29 +0800
Message-ID: <1556618669-2434-1-git-send-email-wesley.sheng@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: wesley.sheng@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wesley.sheng@microchip.com designates 216.71.150.166
 as permitted sender) smtp.mailfrom=wesley.sheng@microchip.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=microchip.com
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

The comment for ntb_dev_ops and ntb_dev incorrectly referred to
ntb_ctx_ops and ntb_device.

Signed-off-by: Wesley Sheng <wesley.sheng@microchip.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 include/linux/ntb.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/ntb.h b/include/linux/ntb.h
index 56a92e3..604abc8 100644
--- a/include/linux/ntb.h
+++ b/include/linux/ntb.h
@@ -205,7 +205,7 @@ static inline int ntb_ctx_ops_is_valid(const struct ntb_ctx_ops *ops)
 }
 
 /**
- * struct ntb_ctx_ops - ntb device operations
+ * struct ntb_dev_ops - ntb device operations
  * @port_number:	See ntb_port_number().
  * @peer_port_count:	See ntb_peer_port_count().
  * @peer_port_number:	See ntb_peer_port_number().
@@ -404,7 +404,7 @@ struct ntb_client {
 #define drv_ntb_client(__drv) container_of((__drv), struct ntb_client, drv)
 
 /**
- * struct ntb_device - ntb device
+ * struct ntb_dev - ntb device
  * @dev:		Linux device object.
  * @pdev:		PCI device entry of the ntb.
  * @topo:		Detected topology of the ntb.
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1556618669-2434-1-git-send-email-wesley.sheng%40microchip.com.
For more options, visit https://groups.google.com/d/optout.
