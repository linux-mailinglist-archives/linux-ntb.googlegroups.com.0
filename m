Return-Path: <linux-ntb+bncBCOOP4VF5IDRBXGMWH5QKGQEUXUNAKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBEB276D3A
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:26:53 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id z25sf608732vsi.21
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:26:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939613; cv=pass;
        d=google.com; s=arc-20160816;
        b=rU1CGrtdBnKaJypvIJdKhdo+f8LOe0hRb9xhTZvM7zKz/xbvDSVh+7ArL9sFQcB/Bc
         iguLYD6hoXdCLhojp5+RK3LkC3I0VIIfvFd0CLnNSsidJfTz4JRbRuZpJlWBPpjx5HRM
         kokgJ6tfhsDImyZVQd8zf8NI9T8UYgF7Fd3e3WnrZNYv6vnQU8TnK7MEmH09pWTvsxEO
         zoMxQzMCzhpC53+wLnbLdVian5jJQPFHVJGxNNnfMqsg/PKG9R4EiY8ywDvNp75WMxTm
         TY+v4KxUocMTM6K9HFF6QNO+XLW1Ir0T43ufvaFYGWhPVRoPyTfYAoisX56sqAiBkdDd
         znig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=2ipzGDUaw1HPPfm1Z1UBjUQP67vmRLfo5hn7B/tuYRA=;
        b=LSLxlXdphVZ5txA9vjDjKRBENIFqSjETz2d1h242FG/6OKdvYfDbPUhtfFJoMcmIM1
         lMFgqZUKIGj332X8YvOE6bvmbOXCCeoujvgJ0wXe54tqApfbBX/iIuORO/9rV51Y33OP
         06NW07nl747bZO34FUrVd1QLHFriiAyjguo6eoljaQSGExYEzllLQNXJkkn05Ie57UAW
         MxgUz8ON4/p6MwNPWgptCdKFCwrocWzdSCnoebqP1gtlx4JTBBsdwhfQe58Y7SZqSk+D
         6BOA/OJpOF3GPzwzaN+hlQ+8FO5X08KzLkNVDl07csg7Uqb6xOWJ0iVXB6jcnOFYMEio
         IyXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TxiOoLEj;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2ipzGDUaw1HPPfm1Z1UBjUQP67vmRLfo5hn7B/tuYRA=;
        b=Z1JWk4xeOiCgqyixAct4r4PxGxmQi4rLu8K46jg6YBJBZ4ppU7nSLCUscsPZn7+zWD
         uV/44aKhA5od89aFxRgCBXxs7zW6Rp36kT/DoklitMUyykJypNyGfjXDulO2tMW5Gi5H
         KktGX3draVrqYA2+ktqXbnGZppQNwHmhvEc67Ded27M8XBhqaBzAgUxUryNTZjxjkQme
         urYlNPmIbcqiRG4HN7iA79CAJ9DJbihvsTdPaC5yeVdJIhrFZPMC9av9OW6UMv7Q+Sko
         mSyUO2VJGEBYa7hgM+QYnuw7H0pXaXbWmMJfOBBz8BriVdwJBCJrY4AYqYZogBmABQOi
         +I2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ipzGDUaw1HPPfm1Z1UBjUQP67vmRLfo5hn7B/tuYRA=;
        b=ZCj3VGEI/1RYK5Bcv9r/Bu511BTIvz8IoRh0SfD4V2YWU35iBG8ucmJnXHEv1iVbAS
         gKi3SoeqvVUsV4ta2UF5EKhVNVXII3u19nRQpwKszzbYe9xHJrBaQHdpgFZbr97LBXoN
         3CCPPdRn97nJc9AxZeb8i5JG8A2czxq+AmLgZsxmDpDhetdv5OAVGNEDIWM9ulZRXzng
         Gd2ZBFzyqOejk+IDZAC03Jg4i9kXYLHlCU694b+RzwLZpYhiwpnDYuzcnsiwhZf7f4Cv
         TAFIZbVFFe6V75H4cffswrbR9L2zC7rwhaOgY2LBGrySIQnlxY6oyYhOwbtEQk9mMz2v
         YsBQ==
X-Gm-Message-State: AOAM532j2hNO3HVnnfQtoUEuWylN7e85ugxcvGWoycb6X0y+ydMm8SYk
	g24A3cyePm2zo7IgRPtNA10=
X-Google-Smtp-Source: ABdhPJzblNZYKcvL7ExdMn3yimVlU1pB5pIQUCJms8g9K65BxD6ep6Ml3V60wbZu4ZMYTh18l/AD4A==
X-Received: by 2002:a67:e3aa:: with SMTP id j10mr3013346vsm.51.1600939613021;
        Thu, 24 Sep 2020 02:26:53 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6102:831:: with SMTP id k17ls400131vsb.5.gmail; Thu, 24
 Sep 2020 02:26:52 -0700 (PDT)
X-Received: by 2002:a67:6954:: with SMTP id e81mr3149419vsc.0.1600939612502;
        Thu, 24 Sep 2020 02:26:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939612; cv=none;
        d=google.com; s=arc-20160816;
        b=nBrafAoeXdytHgo3l9WjoLaSotKCePUMFjfSpZU0DKrAwhzKuT3jEj33M609YAmYIP
         OvtqepTkK12Fh4RUNvKo2htFtojg6+ITBcvy51+koBgrtT6unCWOLFKNUtkbAzOjVmeT
         +ZEx6RcreFS8xO/UqRMICinJmCS9FP1TvUV+5PD1C8Fp/b8GPtsTwFABGvul5tD6CUUS
         80CGxFsPSz05j68GeTCemKvpYVf8j3F52qNdXsuiiaUUtzYZ+bk5pKQQ+uk4h20sVyNy
         b/irY1kViDTjznOzUKVb66ViDJXLPFcjoOaPp1XVCYAl2xK4XnTUXj9I3m9AS804cbuT
         hdcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=PSR7JL4HaqO9swLj/T2R0uAkZr/feSQH9xlHyklOXq0=;
        b=X9za8Y/tnXDxT45oXcgXIoX7wFCqUgeoMKdyLwaB464zN7T6y58/8FbzwRouApwSly
         3pKLCodRtSCoizKw+fPdDg23VzUPF2yEZNi9jX4lpVhyzKlq1RR/RZ21AZ/eXRLGgUJX
         B4QQByKJKfCK/7cllmKjQ5sp2sKEKvRCCkhZwdbxk+7be+oLbM8rQ6VSwuSZtIyH/8L+
         x0Tz0l/gP+T7Hd431BpbjTBHeMI4UxfDZgvAxIk5eMeqpWkB/E90ddlYnJEKxaSUPgQ6
         EESlf7h3KgzpbzeAv+lxYVfiKAekgMB+cVh/ikoVpxErahkmm2dcyhQxilCfEdc5alSf
         xRoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TxiOoLEj;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id u25si153718vkl.5.2020.09.24.02.26.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9QiQn117626;
	Thu, 24 Sep 2020 04:26:44 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9QidK069720
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:26:44 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:26:44 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:26:44 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POZ4011000;
	Thu, 24 Sep 2020 04:26:40 -0500
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
Subject: [PATCH v6 15/17] NTB: tool: Enable the NTB/PCIe link on the local or remote side of bridge
Date: Thu, 24 Sep 2020 14:55:17 +0530
Message-ID: <20200924092519.17082-16-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=TxiOoLEj;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-16-kishon%40ti.com.
