Return-Path: <linux-ntb+bncBAABBRUWXP2AKGQEDT7QRJA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6631A2FD3
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Apr 2020 09:14:15 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id 61sf7467625otw.19
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Apr 2020 00:14:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586416454; cv=pass;
        d=google.com; s=arc-20160816;
        b=X1ob+mMQUrZWM6NP2iydjASUOpnkJT+FadhtqOSC07D4MfU9LKu7sMo6R04BbGlpQx
         0DFiQGxVdOdkIkllaABELhWFYV0dDI/SkQj6kpQSOI9OeO89D7MezJCv0jCmGZItj5yD
         fNpSfct7NRwIgV3/LJosr0E/MUhIaDdc+CMLCKGRG81+vpwgVHXx7+vZHiqmxD9VCh52
         SVEtC1rpv7a8U+QP7q621uwNFQLmNEeQnS9KPejnaA4WbLgVtdOffEzRZAsFiaPZLrO0
         SdzBNk6LSbIUlwsDniwiTZwPO/Q/mLpLR8AmEL2ZwbLRpPfHI2IDV19RLGcqDEPSzbkS
         LucA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=zszjKoRRa+i25qqa3Mks7aLmGZcUCB/M4yJfGJjjzVI=;
        b=1H5UEVxpeLcASHKz18VdXmSFcIPKF8l75andtJ7A/+tS5+FkWEiY0sXHlj5sqfrsro
         iNWrYXFuGnrubkNXfJhTzZ+NAsWetDVimnq/JvOwtm+CbBdNdqd7jTp1m9UvIwX4bPmO
         US2/yVdCUwDg+c75KoDr5cvD0Go2rERe/VX5lL5MObc8Cm0UeuVNULsJvI/71J0AYKcB
         qyhJ0nsIYvpeHkOF7cktKxHFNjJfDLOq/1WcFooEd5MZEsjsvXE72plKzzofOR/kmqV4
         oY1XKjkbsbxbql/6xlu/zjWnV6avKayz6TN3J4PToB3Gax21sndKIXBIiyjMmXWgg4FA
         gXaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zszjKoRRa+i25qqa3Mks7aLmGZcUCB/M4yJfGJjjzVI=;
        b=Ca5nHUCXsn5hbaPykcdYiRUFMj3g1qJ4Enk69maZR43so6gzgOyFtQnNU3/voCtOqS
         ZEWzkaINrGMxuufY5LYDaEbkAC5BgJNd5tNVIz1c+KjTmvOOXT9eF2+vdlyvafbMNaFO
         vPdc6P93waNZ+xFpGTzBWywReXcCPblbRsXqVRmWOKFHNBbG6TQ1Gkryo+NmtlU/UvXT
         ZX0vDVVRaZzKuTQkhE004nP/qxhtwZk3reWPLl9qjb5Q6OLouHV6pBYOJ2eLJfpQn2sj
         mcXA4pdy6j1tw/s8LEvqx0/+xA2rxcqIkyNVJSEQLA743I00Si+PXKtcfkFq2YSt0Rn/
         TOgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zszjKoRRa+i25qqa3Mks7aLmGZcUCB/M4yJfGJjjzVI=;
        b=Nw3bYoK0pL6qhl7Nnt/PitkcqAlpHq2UucEHX5YfPK7BuoU2LVOLYyVeEjPB8KfbAU
         wJXT/bNAPNb/7oBnKX9dpHodhtimWbFWEAhc052q2NrbRwSxQh8o97KcD2sR7JYaacDQ
         OVkT+ShVqrkDCOjOhehuqTDcSKUMNkrhf29g+oUwQ+ENAmUWevRxE00hfBc9xbkE/e1g
         g/2kvQPlyLtgmrcXnq/fJBDkbq15iXmm2rKmbFYNnVgglIKUEXlXotNMx20d2IvkBQwR
         bV2n5U/y5TYmpOXK06AKB/u18GYJauYYJQOi/Z1SPjPyjdvF1sdAS+Gh1T2sebvB6pZc
         M/Mg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0Pub75XxeJgeuMBR6NRxapP5jNKn4jDKc7XeDzqmsLIe3JMiZfnzf
	icS48CZlwXgjKsmGXNDwnd8=
X-Google-Smtp-Source: APiQypJSakglfumwWcOBHK24CuJzvKVHCzm5veQdX7XrZC4Z4I7bKOzeCXtODIOEHkv2wcUmTAv4gw==
X-Received: by 2002:aca:b308:: with SMTP id c8mr2567879oif.106.1586416454479;
        Thu, 09 Apr 2020 00:14:14 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:30c4:: with SMTP id r4ls3668988otg.9.gmail; Thu, 09 Apr
 2020 00:14:14 -0700 (PDT)
X-Received: by 2002:a9d:1a3:: with SMTP id e32mr8919192ote.206.1586416454209;
        Thu, 09 Apr 2020 00:14:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586416454; cv=none;
        d=google.com; s=arc-20160816;
        b=m81bcGOWKg2EgcNKbIfZxDI29vLsYwi3/s9cX3Vh0dvnZeM1I2+skhB3uIKyIwcgR3
         nNjzhAA7SZfNBmLtg+G3+zRlTBewLUIdp2uFkbmYexOwp+j8FsUfas6ahJnQ1epRzP+R
         xnaDOt//ymqlb5KPiW0hTflLW3TINR8JXnyTiwz4YtJPE88YxZQeJ8NZqikH0rdx4jJP
         Y2Wbt0uzvNCdYF/u5fe06jJ5cX4NOFe/8A3K6+fcUfVTamexQ+VZ1BXv05W7oE3t1Epz
         sZu4D4i7T7k+W82ecDW6wseS+xRKtxylFvMffMriPqSzs/Rl8bBc0r7hpWGNim7j9zon
         2NuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=jJhcvrbFk7xXiZPIk829fBi9xzbRLr8a72c1UEpJsNY=;
        b=y3Ojz+nZuzMRceQCAx2T/kuotbFZWxuNRKJVhi77/5FCVrPjndTYNbjXYoShONWp0Q
         7q7k2PmdrMFyrIQTVMAPC0LWXqhZLupUnA93Wks/3GwJ9pV0og78PJgHPjeCKYIfUag8
         g1hY+cKhcHxlt0TOOCUdw3pZJExxFcbhn9RbZValI5AKOIPTvdTHGnk5BJKmFl4KYChJ
         uRsvuZhpdrbWYIw+MSb6WU6sUFX8rwWnsw688ltPKxYPEIpCL25w41kJeTrOg5ySvaTZ
         IcOTrqpn20M8d2ObLEfghIzWxhQAHEgOMoIPNlWf4SBLpieCW1GHd83LAPkWat4RwB6U
         SMJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam2.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id v1si38117oia.0.2020.04.09.00.14.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Apr 2020 00:14:13 -0700 (PDT)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-FE.hygon.cn ([172.23.18.61])
	by spam2.hygon.cn with ESMTP id 0397CWCm024636;
	Thu, 9 Apr 2020 15:12:32 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-FE.hygon.cn with ESMTP id 0397Ccjr052279;
	Thu, 9 Apr 2020 15:12:38 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from ubuntu.localdomain (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Thu, 9 Apr 2020
 15:12:16 +0800
From: Jiasen Lin <linjiasen@hygon.cn>
To: <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        <jdmason@kudzu.us>, <dan.carpenter@oracle.com>
CC: <allenbh@gmail.com>, <dave.jiang@intel.com>, <zhangpanyong@hygon.cn>,
        <linjiasen@hygon.cn>
Subject: [PATCH] NTB: Fix static check warning in perf_clear_test
Date: Thu, 9 Apr 2020 00:11:24 -0700
Message-ID: <1586416284-3246-1-git-send-email-linjiasen@hygon.cn>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex02.Hygon.cn (172.23.18.12) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam2.hygon.cn 0397CWCm024636
X-DNSRBL: 
X-Original-Sender: linjiasen@hygon.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
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

As pthr->dma_chan can't be NULL in this context, so there is
no need to check pthr->dma_chan.

Fixes: 99a06056124d ("NTB: ntb_perf: Fix address err in perf_copy_chunk")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
---
 drivers/ntb/test/ntb_perf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 972f6d9..f73b126 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -1010,8 +1010,8 @@ static void perf_clear_test(struct perf_thread *pthr)
 				   pthr->perf->test_peer->dma_dst_addr,
 				   pthr->perf->test_peer->outbuf_size,
 				   DMA_FROM_DEVICE, 0);
-	if (pthr->dma_chan)
-		dma_release_channel(pthr->dma_chan);
+
+	dma_release_channel(pthr->dma_chan);
 
 no_dma_notify:
 	atomic_dec(&perf->tsync);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1586416284-3246-1-git-send-email-linjiasen%40hygon.cn.
