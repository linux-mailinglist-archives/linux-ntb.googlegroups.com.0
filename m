Return-Path: <linux-ntb+bncBAABBC6UZXXAKGQEYE7VJ7A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A6B101254
	for <lists+linux-ntb@lfdr.de>; Tue, 19 Nov 2019 05:05:33 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id k7sf14789050pgq.10
        for <lists+linux-ntb@lfdr.de>; Mon, 18 Nov 2019 20:05:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574136331; cv=pass;
        d=google.com; s=arc-20160816;
        b=dxFOAnnC6HKEfWqBSeeZdjtZc+H8JTsIqO6J5ubP+cnP0PwKw3ia0UzbmpKpKeRcWB
         ooCkeGalpwMrHJ8tDyecIbMaDQ2tosXw3AfEeuJcQWIw5ke+FpxdG3e0EnthS+lkVuit
         qgZao5s4Zs/bKCbWNBGS8IB9BT0Mn7y1dMdlZ+vzisyGH8V4RBBp2zsb4tkr+XFWTEpM
         PYwI+V6Xcbha1dZvNMuDLEmfU+eY6ApRED27NfFT/wnNSRIBLP67HhOPZm8WamM0x/ko
         Z2E5dhqtU89K/N3aWVx5UBENB2RRfyrooq/KdlsMsDyU04TBNgtIOdkjFy/dk7ArfJW0
         263g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ubF9M16l4bTjFegvRXucxpc4+WrD0lraZ63EzTTZ8o8=;
        b=vSGRqj3YStbM2L14d2FW124dK5Xa1f5DBM7b8jQbmvduilq14p83TppTwInbwJ/eot
         yoNJ+Vpu3AE4czIkC1yVtI/KrfqmOC8+GIMs3ygDwVq7JjdaiTJzkt8WuucrNIdYL0mf
         TNIqkPBtILJQPcEiC/mPa1tYYwxTJfE1J+8qQMxwjRGUfHPQvq+i7iaFbK0A9AqCgoF/
         YwFY/ZNbkCVPDj/IFTitmFkEkF9fFl3/UnYC5hF9TllRSDm2fMvV6gcFah4UTlHsB5yj
         jiglPB+oiXCjHE8Y7dSwx54qEOwOJ21UMTLqWA9IXkc5ksLmLYen7b1jYAl4tieHStmm
         JyPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ubF9M16l4bTjFegvRXucxpc4+WrD0lraZ63EzTTZ8o8=;
        b=VMLes631F5U2KT+puf6br3EfbMct9GVw+F5+qw5YICpqWx1rlqEJ5U2b0uTY569Vn4
         pVliMdqE/PX49taYf8pBJ4mtxA3BPGERNOZJFBcNyASSHyVT7U/X5HJlLJQ6mmUzgwzv
         HcfSNa6gDJDO+/yQbMsqBD16J3El410e8ZGYtgRYSZzO9FG3rno0aGeCR2DFHlarrpZS
         TF8NbtFW9dCtS1Cu4UOiDb3oTQXp/AlQ39bfekw1gslYbTsaQrNmxZh4vNGhEVIpvT4D
         OiourJoulHYBEGAV/GG1yWHsk1hxHYBYk3PlIWKu18hegEVPpnB9lMmtdcj9D5ALTDF7
         KD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ubF9M16l4bTjFegvRXucxpc4+WrD0lraZ63EzTTZ8o8=;
        b=pCn53PbAakauV9DMHH4vePsNB1o+CEqW6g0fO6k9qKVK0MCHA2WXWM2AQGyw6ThO7T
         CCVv998uod4VpR4W1p8UOYU0h/4+gNaoNG0gJgWL8h6bb2v8MGBvE4ODZO7JhnGfZxXs
         iMuPr/h4aUJZu95+brS7UTG8mb36GFKlx/KeyrmoDMOupiPc3UjEOmoU0YmsN1gDOyon
         RhMk1v6fn3hzy3KfbsOy3R8736KRfigKgcOrumhmgnUEeihDa4V91vmlyA8HBNw6s4dy
         vHs125CCfn2DnSpP91ZrRLVlKFFYaA86/rzul6RsOMbxClEo7po32+gOgAhMzyDnxW15
         2CRQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXEu2bg5fZ75XZ5e5IKtlpZ+SC9A/CqqNReH/3VbcQb0kWop4Iy
	jP6Xapo4z1bJdRp/hLX26ng=
X-Google-Smtp-Source: APXvYqzrhQcXVucgHsrGOxQzd9qmIrzsNbebC3YwUCMlvK3UiY1X503+bFUPhJVS9vamuHmaiu2/fA==
X-Received: by 2002:a63:25c7:: with SMTP id l190mr3158891pgl.429.1574136331256;
        Mon, 18 Nov 2019 20:05:31 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:1ae6:: with SMTP id p93ls615999pjp.2.canary-gmail;
 Mon, 18 Nov 2019 20:05:30 -0800 (PST)
X-Received: by 2002:a17:90a:bb82:: with SMTP id v2mr3518339pjr.62.1574136330967;
        Mon, 18 Nov 2019 20:05:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574136330; cv=none;
        d=google.com; s=arc-20160816;
        b=MUWwBBlHEgwORiGNugtEC2e+3VcGNMxk8ZRXz9GOpnJIw06Z9u3LD6sobo/Y6VPhaU
         HdvI6wVZTr9QbPttfd8asphZObMPhRCfo0cNSbX7mD7hdCau8ovjklKs2jY2SEkuGgxO
         l+FVv8aCzjaEXyAjqPNiIBRPbkXl3rMwvgoXx+NNQqji8KLSjGBeALeuF4ib+t6SG2YM
         aswoYQL6BL1WKWhjSdqkKX9DGCdeYEdctZS9gfwtKqaNwvBVzAy1DMOutOm7ymVxg2fK
         UlD2Q8x+WFCkVQtH57CZISvUcSq4zHNAkDgr9pPIFg5vrcK6CKtRmbBtoGVArInHeUb8
         q1wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=31mO7+qt9QYjpyYdb+BG89Gla8eTEqENvCGyYxBI8n8=;
        b=OBb/ihF0+4U12+po3z+NfVGYUF/K6aF9IJg2CDiVBr+j6JuPjuZrwFNJPV4MmhHJvq
         ZaXJ3CsPSMWBxBiznKHv2WQhKMwcCohkD5oMi9I1qp69uuthzvNUhmf59WU5qElJQV2M
         NbJVSV6DbtAq2utSEJIBqXnCaolgIHEc9t17fQOMM42Da5B2S38flCX9LGaWErqmlIyX
         FFSSovKQGBk2Nso85MiNdgCVT0glMf3QzgpUL/X9WgDprukeznTnxaozFC0nZw5bbTkf
         XzwebMq0K3ZYsUJfltSkY5EIfMpyUsUdpOE7RHvaUJSkLwkOAM/v4oTdvBm4Y85xGzkV
         yEJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam1.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id 62si355550pld.2.2019.11.18.20.05.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Nov 2019 20:05:30 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-DB.hygon.cn ([172.23.18.60])
	by spam1.hygon.cn with ESMTP id xAJ42Tvq043165;
	Tue, 19 Nov 2019 12:02:29 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-DB.hygon.cn with ESMTP id xAJ42Sc9010582;
	Tue, 19 Nov 2019 12:02:28 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from ubuntu.localdomain (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Tue, 19 Nov
 2019 12:02:28 +0800
From: Jiasen Lin <linjiasen@hygon.cn>
To: <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        <jdmason@kudzu.us>
CC: <allenbh@gmail.com>, <dave.jiang@intel.com>, <logang@deltatee.com>,
        <linjiasen@hygon.cn>
Subject: [PATCH v2] NTB: ntb_perf: Fix address err in perf_copy_chunk
Date: Mon, 18 Nov 2019 20:02:01 -0800
Message-ID: <1574136121-7941-1-git-send-email-linjiasen@hygon.cn>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex02.Hygon.cn (172.23.18.12) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam1.hygon.cn xAJ42Tvq043165
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

peer->outbuf is a virtual address which is get by ioremap, it can not
be converted to a physical address by virt_to_page and page_to_phys.
This conversion will result in DMA error, because the destination address
which is converted by page_to_phys is invalid.

This patch save the MMIO address of NTB BARx in perf_setup_peer_mw,
and map the BAR space to DMA address after we assign the DMA channel.
Then fill the destination address of DMA descriptor with this DMA address
to guarantee that the address of memory write requests fall into
memory window of NBT BARx with IOMMU enabled and disabled.

Changes since v1:
  * Map NTB BARx MMIO address to DMA address after assign the DMA channel,
    to ensure the destination address in valid. (per suggestion from Logan)

Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
---
 drivers/ntb/test/ntb_perf.c | 69 ++++++++++++++++++++++++++++++++++++---------
 1 file changed, 56 insertions(+), 13 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index e9b7c2d..dfca7e1 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -149,7 +149,8 @@ struct perf_peer {
 	u64 outbuf_xlat;
 	resource_size_t outbuf_size;
 	void __iomem *outbuf;
-
+	phys_addr_t out_phys_addr;
+	dma_addr_t dma_dst_addr;
 	/* Inbound MW params */
 	dma_addr_t inbuf_xlat;
 	resource_size_t inbuf_size;
@@ -776,7 +777,8 @@ static void perf_dma_copy_callback(void *data)
 }
 
 static int perf_copy_chunk(struct perf_thread *pthr,
-			   void __iomem *dst, void *src, size_t len)
+			   void __iomem *dst, void *src, size_t len,
+			   dma_addr_t dst_dma_addr)
 {
 	struct dma_async_tx_descriptor *tx;
 	struct dmaengine_unmap_data *unmap;
@@ -807,8 +809,7 @@ static int perf_copy_chunk(struct perf_thread *pthr,
 	}
 	unmap->to_cnt = 1;
 
-	unmap->addr[1] = dma_map_page(dma_dev, virt_to_page(dst),
-		offset_in_page(dst), len, DMA_FROM_DEVICE);
+	unmap->addr[1] = dst_dma_addr;
 	if (dma_mapping_error(dma_dev, unmap->addr[1])) {
 		ret = -EIO;
 		goto err_free_resource;
@@ -865,6 +866,7 @@ static int perf_init_test(struct perf_thread *pthr)
 {
 	struct perf_ctx *perf = pthr->perf;
 	dma_cap_mask_t dma_mask;
+	struct perf_peer *peer = pthr->perf->test_peer;
 
 	pthr->src = kmalloc_node(perf->test_peer->outbuf_size, GFP_KERNEL,
 				 dev_to_node(&perf->ntb->dev));
@@ -882,15 +884,33 @@ static int perf_init_test(struct perf_thread *pthr)
 	if (!pthr->dma_chan) {
 		dev_err(&perf->ntb->dev, "%d: Failed to get DMA channel\n",
 			pthr->tidx);
-		atomic_dec(&perf->tsync);
-		wake_up(&perf->twait);
-		kfree(pthr->src);
-		return -ENODEV;
+		goto err_free;
+	}
+	peer->dma_dst_addr =
+		dma_map_resource(pthr->dma_chan->device->dev,
+				 peer->out_phys_addr, peer->outbuf_size,
+				 DMA_FROM_DEVICE, 0);
+	if (dma_mapping_error(pthr->dma_chan->device->dev,
+			      peer->dma_dst_addr)) {
+		dev_err(pthr->dma_chan->device->dev, "%d: Failed to map DMA addr\n",
+			pthr->tidx);
+		peer->dma_dst_addr = 0;
+		dma_release_channel(pthr->dma_chan);
+		goto err_free;
 	}
+	dev_dbg(pthr->dma_chan->device->dev, "%d: Map MMIO %pa to DMA addr %pad\n",
+			pthr->tidx,
+			&peer->out_phys_addr,
+			&peer->dma_dst_addr);
 
 	atomic_set(&pthr->dma_sync, 0);
-
 	return 0;
+
+err_free:
+	atomic_dec(&perf->tsync);
+	wake_up(&perf->twait);
+	kfree(pthr->src);
+	return -ENODEV;
 }
 
 static int perf_run_test(struct perf_thread *pthr)
@@ -901,6 +921,8 @@ static int perf_run_test(struct perf_thread *pthr)
 	u64 total_size, chunk_size;
 	void *flt_src;
 	int ret = 0;
+	dma_addr_t flt_dma_addr;
+	dma_addr_t bnd_dma_addr;
 
 	total_size = 1ULL << total_order;
 	chunk_size = 1ULL << chunk_order;
@@ -910,11 +932,15 @@ static int perf_run_test(struct perf_thread *pthr)
 	bnd_dst = peer->outbuf + peer->outbuf_size;
 	flt_dst = peer->outbuf;
 
+	flt_dma_addr = peer->dma_dst_addr;
+	bnd_dma_addr = peer->dma_dst_addr + peer->outbuf_size;
+
 	pthr->duration = ktime_get();
 
 	/* Copied field is cleared on test launch stage */
 	while (pthr->copied < total_size) {
-		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size);
+		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size,
+				flt_dma_addr);
 		if (ret) {
 			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
 				pthr->tidx, ret);
@@ -925,8 +951,15 @@ static int perf_run_test(struct perf_thread *pthr)
 
 		flt_dst += chunk_size;
 		flt_src += chunk_size;
-		if (flt_dst >= bnd_dst || flt_dst < peer->outbuf) {
+		flt_dma_addr += chunk_size;
+
+		if (flt_dst >= bnd_dst ||
+		    flt_dst < peer->outbuf ||
+		    flt_dma_addr >= bnd_dma_addr ||
+		    flt_dma_addr < peer->dma_dst_addr) {
+
 			flt_dst = peer->outbuf;
+			flt_dma_addr = peer->dma_dst_addr;
 			flt_src = pthr->src;
 		}
 
@@ -978,8 +1011,13 @@ static void perf_clear_test(struct perf_thread *pthr)
 	 * We call it anyway just to be sure of the transfers completion.
 	 */
 	(void)dmaengine_terminate_sync(pthr->dma_chan);
-
-	dma_release_channel(pthr->dma_chan);
+	if (pthr->perf->test_peer->dma_dst_addr)
+		dma_unmap_resource(pthr->dma_chan->device->dev,
+				   pthr->perf->test_peer->dma_dst_addr,
+				   pthr->perf->test_peer->outbuf_size,
+				   DMA_FROM_DEVICE, 0);
+	if (pthr->dma_chan)
+		dma_release_channel(pthr->dma_chan);
 
 no_dma_notify:
 	atomic_dec(&perf->tsync);
@@ -1195,6 +1233,9 @@ static ssize_t perf_dbgfs_read_info(struct file *filep, char __user *ubuf,
 			"\tOut buffer addr 0x%pK\n", peer->outbuf);
 
 		pos += scnprintf(buf + pos, buf_size - pos,
+			"\tOut buff phys addr %pa[p]\n", &peer->out_phys_addr);
+
+		pos += scnprintf(buf + pos, buf_size - pos,
 			"\tOut buffer size %pa\n", &peer->outbuf_size);
 
 		pos += scnprintf(buf + pos, buf_size - pos,
@@ -1388,6 +1429,8 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
 	if (!peer->outbuf)
 		return -ENOMEM;
 
+	peer->out_phys_addr = phys_addr;
+
 	if (max_mw_size && peer->outbuf_size > max_mw_size) {
 		peer->outbuf_size = max_mw_size;
 		dev_warn(&peer->perf->ntb->dev,
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1574136121-7941-1-git-send-email-linjiasen%40hygon.cn.
