Return-Path: <linux-ntb+bncBCOOP4VF5IDRBFNPSH5QKGQEBH6UUSY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDD426F63A
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:45:42 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id t201sf3069539pfc.13
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:45:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411541; cv=pass;
        d=google.com; s=arc-20160816;
        b=LXRbkR0pyF97NJpvdK8zvtwg9pAMZeDfX/BmwdwZORpX/mCz/I6BXFQ3dCKkPOnxo+
         wmSfRVEVwnBikTv75N4Bkb9OTY3VUZ2zP3E0ceZOmMnM3FcVWsn6QqdFirckvaDAlEGr
         9eHTYcprAPkLcfyJfKlB21YqvdK8tbXN6miPTrBIC4i2ROlLgW5qdQKQQ9kjB8tQ6dk6
         6qDs3lKHd2lSShLIaQahJVFVB43rlESr84faXR6m8fBed/B0tpCsIWXN6XsisD1s5fUQ
         dOuO/xo6NOmYMcA/UuyRNMFZ80XAY1hsZhxTklaGALx9pQxEIbncrBx8EWy1yeD42mRC
         dTQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=fnDsr9A2o53B0bnVqrG1OrzFic2rSvExAeS1x19YB9s=;
        b=Fqmnux4w1JMQsYxsGkL+hdA1kPU/yNEiFFmN0fLIMDQ12w3foc2ldlf0PdAOd2vVAv
         BPlUPUhUaeizII+R7jVvaN4Mi6NxARD59hkG8QPYgz4N+zuaPT9BBmLjMgBSNEwLrgYE
         H+coXK4Wr7HBDb4LXC6Fwscr9ny8ic0RYXFNo5wtmLLb9qrC74EBxR2rGRSaU3sFXg+t
         y1GjDn+4Jpm+KV1/DsmfX4Q/2nszAY7Gk9qwu6Iz2Y0uG9pJVJOCu+lVnfHwnjs+bsvW
         q/I6r4pkqE4RXq9tubYpqoNFsiMoileGfBhUkQCGLH9nXZjbih60g87MRDCQX4BrXZ3a
         s7Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=m+AN5sDI;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fnDsr9A2o53B0bnVqrG1OrzFic2rSvExAeS1x19YB9s=;
        b=TZQtiK8Q/SsriWI0uKunqP4gzPkc0svAcswHq2iyGQ55c+IWndjpgi4gphsAgw7/r5
         /PWq1N4ewuABg6B6s89KPUG9nJecHYLS0JzjvFeSUQbWoThqr7cMn7M4WSXwWdKA6XY8
         GBZXsAcqmgtV3jYdgvk7IVMBSkaeTlbVIm6P0l1Oux0O0PNffel0QrRU1KXf3okpjwA3
         4Kp4i/SQnwAvzqRHIXNOMDfWQpUgAHR6vDNqxz+pssFG8izaFvolydC4SwsdkiGCLFQU
         8vzn/sWklOUUPpmPLk12aWoN51J+xYLBbBP49xDQqbYSlNGfvX5/vDTbAmzpged1dvqu
         JYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fnDsr9A2o53B0bnVqrG1OrzFic2rSvExAeS1x19YB9s=;
        b=f0CuJZS59TITx/qcjaUwD5A7Y+ikl1+xVV6JPFTXcq0oVbj1htJb/+WCdbJxPBuoAy
         6glN9KZPsj/yYVYT9nb4r8n/HBW+NIGgv5Bc8q6qi1ry1cBRO2p5uj80NEr9P1J1omfM
         A0hGKD80y2EYfBG4Lq8jWGLNub/ftP+poJjadBBsJD4CqTJ6I1s01vPQ+wfcW62uvNYl
         8Sf8P619uXIBTbA1SOD1S1Y5yyIM6Xera8TKOSy3CkY0kdne3NXxH9aaRkeTQc/JZtyb
         HOsDF7M718prII7xBTjTsF+spBNsCD8DL7tXf2SoaX+EL8JdLYN1A/FnhNCK50/yMBJC
         a9vA==
X-Gm-Message-State: AOAM533VurDIWCh3Gxbj1BqF3KEPJ96BEbqdJz+X2Xp2XVxAh2wFSgqk
	m0vutiIVZw6Q5g1g4Mwr/7s=
X-Google-Smtp-Source: ABdhPJzwqQxCwm6heQdjDmMpYKc9BxhBgre2sJZ3Ncb1QG4RHtW9YKoAtVG5H3/za9TOiKdIVExpUw==
X-Received: by 2002:a65:4987:: with SMTP id r7mr20831274pgs.228.1600411541107;
        Thu, 17 Sep 2020 23:45:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:504e:: with SMTP id q14ls776784pgl.11.gmail; Thu, 17 Sep
 2020 23:45:40 -0700 (PDT)
X-Received: by 2002:a63:231a:: with SMTP id j26mr6494214pgj.268.1600411540565;
        Thu, 17 Sep 2020 23:45:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411540; cv=none;
        d=google.com; s=arc-20160816;
        b=wWjLXIYdMaiSSlAD8FRVhBkqzv3ioBdS8/HGMp4MViEjKkTefQjNXFQR/pLOzNh2f4
         0gZjRaYH2kiXcx+nkZAgCaGLeIO5vnoLFwUk0EQDlRsUYHg1B8SNYAsxnmMJWcVlK0rI
         au7aCs9VL2QnY4UH7ckHoklQ7rMz8pFZrMPMKlmxO+Ar1Q8ci0i7t8xpEE8IKGfXSoWe
         bCjn8W0rlcOx3urqu6cC0ZtUI+t4Ge0QXghxty+/QpobsVLJKyEyZIY5Cc6FnU/rB0u0
         Y0Xll8c2itPmLEak98S6zLRGUV2ohrRgVb2a33bIjuzrVEQlmoN1cnndnVrkT1F7rZb8
         +a8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=PSR7JL4HaqO9swLj/T2R0uAkZr/feSQH9xlHyklOXq0=;
        b=P36d54tiOVLtgsjPcu8HVrxVcBSiKzpgJBbuIwP/fzbw5rvrSclBbNSWdj71SGGXI/
         xeJG5uShNZLeiBtWcXwws6y+iYw0OqsFRZTs1WbIiz+CcUfTTDXttddCM4vKkwAguMrg
         9KeJM9Alhz/CON9EmuWGjpTXAErsm3z1XV8Vj3uDhmIy2VzaRFyvkngskyvRUxTr+/ao
         gLdgt7xfjE4b8K0rIAmyM0GRIesUgDwgOAQvcbDYVG4arJntBcG2neU0DnqXgiDqqW9o
         gL4/WMI7KcQmJu1Q8Mt3JTnTEeZ+E2DShhRFS1enDSAoHREOwIvtASy7V5q3iyt4g6EW
         ErTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=m+AN5sDI;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d60si719420pjk.0.2020.09.17.23.45.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:45:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6jSej015984;
	Fri, 18 Sep 2020 01:45:28 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6jRAY086464
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:45:27 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:45:27 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:45:27 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCZ094595;
	Fri, 18 Sep 2020 01:45:21 -0500
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
Subject: [PATCH v5 15/17] NTB: tool: Enable the NTB/PCIe link on the local or remote side of bridge
Date: Fri, 18 Sep 2020 12:12:25 +0530
Message-ID: <20200918064227.1463-16-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=m+AN5sDI;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-16-kishon%40ti.com.
