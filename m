Return-Path: <linux-ntb+bncBCOOP4VF5IDRBNWDWLWAKGQEWTTIWWY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 245F0BF199
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:32:08 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id y2sf1314947plk.19
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:32:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497526; cv=pass;
        d=google.com; s=arc-20160816;
        b=kcRrE0jY13QoLyLcY3eGA5/2ZwxUku+sD8ZOrEZEpHSSq47eiLBoPorqR1uvSVLlLg
         WDt4TrKepXth+qnj0I3qOx+HbO7OQISWTQMEqzAQHiipIyf/T+dIEdLWQGTf4oqXub+j
         jL1uQQoow5pavsDwcU1BiJ226XXq0SENmMfV+JhpZa3g7Ti1YwzX4pcXiVpm5zCwHJy2
         //T3RGbeXOS1eg00yLhGpw40e0J+z6Vbv2371pXyRryPybXv5+iyVOc3K8ZtAjpeE4AU
         y9M8XQEPUxUOCu3irM07erDFTLu8JaMvhbbDFxMApz5+s+WRDyJql7ptqENT58t+O0AU
         rMwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=JPob8VyqNkY3wxyrYA8ieGO9YY9bgT4B4+Doj9q1pdo=;
        b=IKz7o7KmrvJDL3TFKKzd+BtSUvpKdZmpipNIA2BbH3lXPOn7UR7kE3jwsapATC4+2+
         PbTdcGbjaG0kPaa5blc6NsND/caID75pH6QWhzrWpQ+055z7R+gNKBu0ZC+zwB4fgXnc
         AY276ZWKdlNKZPLKXAGiYRgpIN43vFGOtC4vlO+bIq98N8mLKzaca9poYSYNq5ZBjJHG
         U+IINQnE6JK6M4IPLAO6m3MKtayySSUvnmitcehrGFwdcR7OPzk7LQoWn4gzSwGn0scN
         X95SjbHI+OB6STVZ0+CVov4m29Sud9KX2hbxy/jJWZxQtBez7PbbmT9KvxrjJspimK2W
         HrRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=eyZNqkD+;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JPob8VyqNkY3wxyrYA8ieGO9YY9bgT4B4+Doj9q1pdo=;
        b=Au5IubK4m0KGtKGfJz+/BXh78SO9fJ5J+ohz/B0+t0i8O5MYZ9xPf6IYCez9Jo2HFq
         gGzZyr7VoYZKaJ4l4utAdHZXm2+aWhtZxvMEeUc6IP2Pt4HRIPWs3COOjZ2/Sq0QmpRR
         QBhUV14134RxM/PCqYd79oDHr549CqubrSJbngi/DA8v5zqGyZRvbhjItqDzb+5MgeVT
         NwG8LvNHSuDv6RQld0jbWUo1Eybn6CLS5QTBf36eamDBI90E5ireFhLp4SvlEGjvoKQU
         6iq+aODOA1QFYK0vCGMqtdsSn3dNVwQECJ4eRRTdE7FDdVLGcC4YwZIgB2Mnn0lfxqEf
         A1PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JPob8VyqNkY3wxyrYA8ieGO9YY9bgT4B4+Doj9q1pdo=;
        b=qnFwBUasY16UpoiGGckDWGnIbN3KYf3Nd8jgXaNCLSvQdO6CoYO34kJ2xD/tfLM4uj
         vWvQJDIt2KdVRJIV05LGY/7AOQ5p5PDJuRFv+cGD+tqIpR1BYqd49RGU3s6DiQWh4bkk
         Twjtb73ksB+ih+b2MfukDzaxwV354JPwGF7Gikzu+9Jf/6+lFhDVpDnpuqRSXdFrDjm1
         x475ChxxLIny3Y8QM6JW9dTol7A2GX/Y0jiwPBmisXveyN4ali2rNs5eWBkxq5yatigU
         q5NP6IQyQJWmyQyuwjNiaeWJDw3yJt8ceCaHRfckc3i8f2wcp3wvsZMRTAbwuc0tnDeb
         HoaA==
X-Gm-Message-State: APjAAAU3W692wl6+2lDHXlSkYHkAECa5YL6HLxQfU6WXjgm9Doi3+kbl
	YfbAbIGubxuo5jwQUa+/vSk=
X-Google-Smtp-Source: APXvYqwovr89cjz9FZMfEkVdcNb+3WZ96UbLm9onDAwH2AZHKxICwQnW+/ou9iYj4hiQvXkbNzJnXg==
X-Received: by 2002:a65:404b:: with SMTP id h11mr2920384pgp.237.1569497526726;
        Thu, 26 Sep 2019 04:32:06 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:4301:: with SMTP id j1ls94424pgq.14.gmail; Thu, 26 Sep
 2019 04:32:06 -0700 (PDT)
X-Received: by 2002:a62:1402:: with SMTP id 2mr3199136pfu.226.1569497526465;
        Thu, 26 Sep 2019 04:32:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497526; cv=none;
        d=google.com; s=arc-20160816;
        b=pNTgyRVhBstiJsFDvlg96oJCsu4m1S/0bwVRR8Csy/p1evmx9Fi00TOpQexnNXJ3nU
         Cck8lHanfJiUEVIm1de3a6O3YV7dVTqKIfWXIZz9Xpv9UVDhKYn1ypuqduMfK+nKBxGs
         Iakfr1jCtYCD6KIBEzg0RThLKGb7Yh8xQrPEpPL+vjcWFGRd5Gq3CeEBuSD46RGvrgZ3
         gi4kBGaYgDmvis50hOIzoTKdD9A9qN9dVD2WnYv3fFXe4o8Qs7+aUPq16oyQpn5UKY0D
         NKx9XH/Bb/18f4Tg4hjMpyVifnY93LKJ0kEcudFTi10SPf/KELR1sGYlmZWgEaQr5Lzy
         Eihg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=88Xv9IRV7+oNSxAgr2jq3XB2+SHFQvDvj39xR9Z58mQ=;
        b=eHYQYK7agTinwn7GSgk7tQO75FJOTgwk3LbnV1+AVYK0jK/rxl/9ZhtHqiVjlknT46
         WQSS32ZDkhAvKqV8lQ/9di0SdOT1i5tQpzHeFZ5Ic1SCdzECy0MPB5rQjgPrcJ0w+i0u
         EZqZhHM6I2KkHcrHaR1hwOSZpzEbLJGyCjG1y0cLOREGKEoc/CWXTeBYGlok0uGvHLRt
         HCNhPluoFKl3YFWcgCWs61eA6MYVkMgcTzbYM8GtF6pXQwOcImPhcxaXy55Bp6Bz+uAl
         lc5KFLoXWzRzm4g4SzGGQOHpuJA+nYV57avEeXXGxzIX1OzSOsOT9kB3HGwAPqU1xebL
         Ix1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=eyZNqkD+;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id 91si129737plf.0.2019.09.26.04.32.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:32:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBW1d1026527;
	Thu, 26 Sep 2019 06:32:01 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBW1NA032455
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:32:01 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:32:01 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:54 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTkE069017;
	Thu, 26 Sep 2019 06:31:57 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Rob
 Herring <robh+dt@kernel.org>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>
CC: Mark Rutland <mark.rutland@arm.com>, <kishon@ti.com>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-ntb@googlegroups.com>
Subject: [RFC PATCH 21/21] NTB: tool: Enable the NTB/PCIe link on the local or remote side of bridge
Date: Thu, 26 Sep 2019 16:59:33 +0530
Message-ID: <20190926112933.8922-22-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=eyZNqkD+;       spf=pass
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
index d592c0ffbd19..04138e6a371b 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-22-kishon%40ti.com.
