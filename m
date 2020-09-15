Return-Path: <linux-ntb+bncBCOOP4VF5IDRBLUDQH5QKGQEPZPSNQQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED9C269D1C
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:23:11 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id d123sf743856vsd.18
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:23:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143790; cv=pass;
        d=google.com; s=arc-20160816;
        b=CcZ/0ZwTNxNg86UQMan4IaZQMxgiZsUhkjx1x/garWSrpsjvJ3GlvIJn+B2N+df4FV
         8TKPTeYP7mfD0W9j6vo28D/Hc6xo9k+cowkZjJhvHQvTnCx2cjwBiruJjBMspYxx/Czg
         ZUCrXx8eImGS9zWv3aXgrOID2XTsfqWwjg7A7m+EwGanYWfcJz6G5rdqjk00GbP/phvl
         QMhcNVcQfiOrkWk7qqKsd53fMn4nBKWtHZFxnjFiMzWy0SDbb65yEuvoGmfow28rghJg
         Ge8Adn1DgImJ/3l1IMgv8D7k2ZvYrO3t/Xa/It4INrdXdd0bED4ZZTu9Isd/SDAXmeMb
         YHPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=yjehzoGwxGJr6QHFEXw8E50RdLvlR2B7EGh7Kmr2WOM=;
        b=Xu9mRWNk/CNNm+/j1pIiwhKSMtvCwC8kaMqAdZEwMMGDlSylazwBUPJXznCz2j80ub
         cIqf0lWbzqrq5CyTzXAa6B+F39gYneD6B5Zm9Y213WvHzqhRdYAX6cB9gRozYRsX+MtN
         jb6rb4FSVu193KbuA/qXcfowG244YKPuskRfUn/v561tseUc6kMlZtHoli2pKo+lEgdN
         Ta9QxOQAFRhVVzxUQa1UjmQgU0KtNVz3Z5iYTP288LCTbrbWG6eub3Q70NLnTkuREIul
         CPKSXZ9UacCfp2GPvjgKgeVa6srtDkPivtVZd+9f6Y8XAhsZTp6wU6Xacfa8bW1I2FNA
         rbLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=lLXbbciY;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yjehzoGwxGJr6QHFEXw8E50RdLvlR2B7EGh7Kmr2WOM=;
        b=DmGEhyVLK9e7rYv7EWUB+u+aK0DopycwEdV5/G14JNbTn086PdCXRbLhgeNAhOnYxk
         aJ65OaGlLBm0d6oeH0kuTk3bXnwCD+pUEX2+DjDvWHDEFscm+wSyIX6CXSmVXJz3c6tj
         GjBSQd23+cIqlvBXdHOqHq/k7i7EZ9tjCHGKBrbYn8f/WshKRw59e4CMW00mdRa7AsQx
         SoWdhbUXNi//7sUOj0QUhtNAtoYOL1rhBFSpXP5b3wRIkK10CpLJGi9+wLQQ26F3wCtS
         r1mjyKSsvO57N62rcDVB5uYS+w9IBT0yWBPvYeXLD/rFVS3zhf+LZjiOBca6m2dNnM/D
         o3/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yjehzoGwxGJr6QHFEXw8E50RdLvlR2B7EGh7Kmr2WOM=;
        b=lBj80sQsPxcaHN3csdoeISVzbITnqFXRfoGHJoH+mufJdf3Yp9En4Wx2XE5Oo/a88x
         5nPy0f6jjnAbZBDWk8SI30FEGLD43jDYPRpZcZWYNb52DE6BeQ56WkSDnNFXfMaagrpD
         urBDEtHX0ZmLrYzOmjhw7riWO5Ysgv+3oL84qWlKRBX7FUkSPeTnYGo+HvwmepqB0CGM
         3UyU64pbqUVXloQkvOrXm3Z0oc2JjTZmR9G6HllFz8MNKbrqqkjfyTxsJMvLIVnBpPpG
         UXhKyrx/9Z/pm7D2UsA/4lDkgYOKvY1MioOGI1wmdYpcPCVXj/OLQKMADBooOHEZppjp
         lbmg==
X-Gm-Message-State: AOAM5323PMBfV6uRjrM06lJ0F/OtoEmRDBT0vicTf2c+dg+X+rZQ2ZzY
	sF9Vu0TfkXWKtLmNLLciscc=
X-Google-Smtp-Source: ABdhPJyK05iOhl30KNtakRFVjb9oEDz2L8jQRUmP8IVqaiWpesmJ59b+0PnGDOw7EHekB5s8aGIgKg==
X-Received: by 2002:a05:6102:36d:: with SMTP id f13mr8711668vsa.20.1600143790579;
        Mon, 14 Sep 2020 21:23:10 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:874b:: with SMTP id j72ls1447557vsd.9.gmail; Mon, 14 Sep
 2020 21:23:10 -0700 (PDT)
X-Received: by 2002:a67:6954:: with SMTP id e81mr9153731vsc.0.1600143790066;
        Mon, 14 Sep 2020 21:23:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143790; cv=none;
        d=google.com; s=arc-20160816;
        b=GDf5lCkRPPTN8U85pVCi+y+++3yBs4dQJw6p4LWQetQHG7QOTLlQ56qt9mwbycbm+n
         RXOjMcd2Ozcr0v7HufUGDM3OYKzb9UqYq6Di6BrDNvQ4/iSV2+5Agm4aAsWsthLkldnJ
         2AbsR3bMPBNISfPFv8Rux/j9MGIMrTU6pWGnY2dqsWZfAR0/KBSyN7rirIfqW7V4xYjX
         EXuxmVv3BAqkI/NnIG/J+jScmBp2qu8LsDAW+s6VnL27nHg437QpRMAo8zaoIdG/bD+/
         Ess1+0CBuO7+vcae9r2VpgieOr6QnHg6kYpfIO33eNObtYMV85U0dYSNugP596NX9/Tb
         JHQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=PSR7JL4HaqO9swLj/T2R0uAkZr/feSQH9xlHyklOXq0=;
        b=VALIClUo+x3+sCj6FFJYt/Sc5OR/GJMBnimhJvqYJDKYCX8+py0quMWUn52qH+1KrN
         UMZBex/A+l9rA7Zq/bJ+bgNLIgks1R72s9DlPqg41pdCvahmQNy/zE2VRTf4zEFynyI3
         hkOnDKdL8KDuC9Jldl+r+0rxKMsgU3Yr77hZOGLNIoXSd97fVaDMsSiv9OkfGlDlkmqU
         yET8iq2yDnqOzgRTwxIj4E6sgU1friZC4X60ZBPWI0WZaDbmvW2wqb9KTCWRza7eP/t7
         yDvL7QrBGjRdyXR2sUNOUGNX+oGHDtDOCHxIo3/MXtMjQCA8OtoCFUa/53MX3HRc0ES6
         9EGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=lLXbbciY;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id u25si995710vkl.5.2020.09.14.21.23.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:23:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4N14l027130;
	Mon, 14 Sep 2020 23:23:01 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4N1sa058916
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:23:01 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:23:01 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:23:01 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMv028615;
	Mon, 14 Sep 2020 23:22:56 -0500
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
Subject: [PATCH v4 15/17] NTB: tool: Enable the NTB/PCIe link on the local or remote side of bridge
Date: Tue, 15 Sep 2020 09:51:08 +0530
Message-ID: <20200915042110.3015-16-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=lLXbbciY;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-16-kishon%40ti.com.
