Return-Path: <linux-ntb+bncBCOOP4VF5IDRB3EKWD6QKGQED7HBZJQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0F02AF518
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:38:22 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id v2sf1547594pgv.2
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:38:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109101; cv=pass;
        d=google.com; s=arc-20160816;
        b=LulNwD1W0LM3r3cUgcgkYtcjtJsDqlBUzPRCKTwZ0X+mSCCNB3i1PpZtbUs1bdUl1E
         AQ2qsem7UjSZXQGtmtM/x+GoJHeYo+J/Bs6YenI+sNKM58TL3RprNEZqbkIeUPzt6rqU
         6qq1yawPZwDCLlg2wWG5KsISIf+vammE1LTjvCouzM0zAEEmLI/ZHfVoBwQPo95C2ksV
         do20PoSDZvGtgrd06Ev0x/3398NE4fsGusVp690Ysx6In/7NSmzsJhDhzyPTpVpLu5Vm
         qnaoRhBZAURUfZpLL5KNTxnf6//WvmIZMg/UUbbIXu3fzFoouURhMvt+1yY2ZZK9SoEG
         3dGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=GF/FralinrGJNtsd1bT/vac8HGYfIoxtwGLSlq0LlcQ=;
        b=eNyEkO44MOwhS+4916nn35N/eWenTDuCkSfJIQdbOjE9C+DvC8GOhoVODiA24mCVxa
         8+lRGZ/g6VaAcbZjMqRGDmXS9wg3EMTaHFeVGKoI9XSRcg8KH/DHrFJ8RH7qPmfmY1id
         UYo7KCvbw3Sbvv27RdJOByfsMYRb98wDVN2NFj2qZ2hK/jjFAymAT7pl7w77+o90pp5d
         TtWtVVOTro8KzscmBaPsG603rxAYfceMRWv9IYCtLhmgMvWvodkj8qxAGSxCCJfRP3NK
         fORvOL7W8J0uGnWnBTCg0PKuH/5TgVckgkA5gBtW5zsQ9FFErdOdbBieSS8oGz2FFkZt
         Eb3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="s/aHCj9o";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GF/FralinrGJNtsd1bT/vac8HGYfIoxtwGLSlq0LlcQ=;
        b=IzB0PnWtDjNG4qJ6R1fBzUonwGPmhXlCefoAu98j3q7B6InTaN9vR3NhLwyB3+jkD3
         kbNiI5JrKYEKxBtEoz95MWbvgSUKTeUkLp0RihGeUNA11CwxYLijXKgrWziXbnXGH2Dx
         N9MLAHKBPc3rnn7PWVX4mgxHzhScKbVQ7AzmnIcwwcaluSyuczFgPHzGaxWH6ozOOIam
         h7aj351bRniobioXOQsGeQwj55VQiEPLDiIZh5VVE5SWErIqjESzpt5bA81+Y2w6dzSO
         maZJICd6TxtdHLNfqI39b0Yj9Ggyp7rQyYuyL88m1GfRclrOwJ0Pv9p3Q+tIDpNUMGCy
         /2Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GF/FralinrGJNtsd1bT/vac8HGYfIoxtwGLSlq0LlcQ=;
        b=J5U31eO89JVrEYhSOLvLf/sI6eibyf11qgPCWyk/696ZSXt0wHZBEt2THN1kQyaBM8
         LUlQ9MqXBoYgFpqw/4Q204FFdxtYvPtFcWogSgXMlJ9qCYko0w6LFZ8Zz2Vl0w7dy0iC
         srFt0WmBHcWwQiWyhEUYa3+Twye+s3lp3o8koooyWRuNTHm/c1YzHkZ4r1DRcuNaRL5N
         u/fpEI8cwTrThKxys/DyoIW+wP4kuk2cdl/e50z7lhyMbsu+mGSGOg2b0FARwwElWXMB
         bc3x/Ym6317Cras0N7qeGew05ExbEuoGrduoSdCYVrhPVg+19NgMTG1dqo1uUAS7914D
         KE0Q==
X-Gm-Message-State: AOAM532ghD8vVhsAfyaOvoxGdNp0mV8FOzCQyhRyw4OEK1xITZxvwio0
	b8JAepO3wm9BvsHDwTvUuZQ=
X-Google-Smtp-Source: ABdhPJz5MPVdhOJtlqsEqaWxpwVhgb7crMuQ9QzwzGtN4opfBcApDg2tu2iz6QPld+yoR6FnRO3Qfw==
X-Received: by 2002:a65:50c9:: with SMTP id s9mr22407936pgp.20.1605109100911;
        Wed, 11 Nov 2020 07:38:20 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:7d6:: with SMTP id 205ls32590pgh.8.gmail; Wed, 11 Nov
 2020 07:38:20 -0800 (PST)
X-Received: by 2002:a63:d512:: with SMTP id c18mr4701547pgg.35.1605109100382;
        Wed, 11 Nov 2020 07:38:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109100; cv=none;
        d=google.com; s=arc-20160816;
        b=RsBFUJxF6MomJ4BJvxl6Pt7SV92LQ/K6lLdrbdJj7OG4sVbnBiSkgke5476tmIMg+P
         KhAjOrCjSz9oKhMydp3LMWza2zegbX5JD8q3dI+Q2ioGBbG11RQ6NbcoJQGF01R6h+4R
         xj6xOuJWeT0xtHwCZsc8iFReKj3FZ0l0Awg2GGm0bRg7MS8oTgAvfrVKg0Un6hSynCBd
         M47xuFpZMAue1MkoH0nbwlAqG7zyx8RC+/9U3QEmRE83UkkS3ZEC8wx0S/GdLMk/0pYK
         1Irc2AYchMsS2LhyFv3nixDmbxzzgHO72a9MzaHQ62rTZdpA1e+kUr1VB15LsmvBpyGI
         +VFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=PSR7JL4HaqO9swLj/T2R0uAkZr/feSQH9xlHyklOXq0=;
        b=Do2cwm8dQ5YYZtUCmQ/zAGCuglpXauMbdIzvWrJt31hNszupRYD0+kuPe4TsfzzhqB
         Dvwm00/eNBDS9zaEcraIIDK1oR4FLyka/YVW457Yv+poUEZTNo71V2CNBcWs+AmmLujY
         RpWnOdxnY3bYWSQqcJ5O48y9WSAaB2HrCileErcDurpFWULX+UsEuE4dhpoc3YoFklhF
         tAePyhMX7+WMmxl1Is1IKg0J2wtC7KiXti5yJHR+XYNIVqSyrkZuqGjmjSoLhFcwPKVY
         0FVBaNTIPJvVmXihYej6Bo9ijf2lgMuIs/YdNb5uCfzCGkYomn2uvCwS3XjWm8Si2sCF
         FC0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="s/aHCj9o";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id mu3si363253pjb.3.2020.11.11.07.38.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:38:20 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFcC5g125330;
	Wed, 11 Nov 2020 09:38:12 -0600
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFcCF4023014
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:38:12 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:38:11 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:38:11 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa047042109;
	Wed, 11 Nov 2020 09:38:06 -0600
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
Subject: [PATCH v8 16/18] NTB: tool: Enable the NTB/PCIe link on the local or remote side of bridge
Date: Wed, 11 Nov 2020 21:05:57 +0530
Message-ID: <20201111153559.19050-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="s/aHCj9o";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-17-kishon%40ti.com.
