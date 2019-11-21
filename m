Return-Path: <linux-ntb+bncBAABBHPO27XAKGQEY4WKOWY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D66D10488F
	for <lists+linux-ntb@lfdr.de>; Thu, 21 Nov 2019 03:31:58 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id o5sf1064091qko.12
        for <lists+linux-ntb@lfdr.de>; Wed, 20 Nov 2019 18:31:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574303517; cv=pass;
        d=google.com; s=arc-20160816;
        b=NXihK5d9toLzGXehaMnxWQD3lPtgDxDo+5xuIEL8VDyduwK7K9Uj/pzTlbK+oR6aoA
         3pVvw1Rr4Gs/r+sF3hMFQuXlAHTLmTLjs7knSTFsWOCyY3awzaKe7lE9tLqaJBge/Bwj
         QMBslBxXoCwtdMCPRUlsWBT1o2nICoy7QE1BOrEE9tE1CGRL0W9+/6uc5YAEFKiLguYn
         KJTIH5TAtTJSaXDc39LvN3ER4Yi3MPdgP+WJd7OXvHbKPmsRQaKI4Xgo8RJ6MMlD7Bjw
         eFw/oBeLRd8/8QmAwgLOAt0vxKPUl8L8r6QzF1AxRYFMJjpwzYZ+W1QoM6HszD1k420s
         S04Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=caZEIQq7uoXK5s8U6SsGganxFVvRilkYR9aIio/kM4w=;
        b=XZMM//fEvixNzKZfti+Xh+xHYp0RZSwEsZX0vOTThtfTDxdDamLT4Rr2UzmYdkV9Yi
         EBlJ9Z+HUWfCA1WuvoUX4zQJ20QKciSxx+m/TEQFAEhVfpEJABxM4zRRd5Sy7HQx8PYM
         DTz/GQ/JU5v89hLEdsrwsoHbA/qiToKHWLoJ0cxdKWrypm3B1lpOZjkaKBsIqhf1eBiJ
         qETtldjgclj/ZEkCS2ZShinSDMeqaF09BhBtd2vw5rZjyIVu1XP35v99cEs8NkFj/RdS
         Wb0N9G/v7SMcfJduZ/rXY7sWjsZXe3yPS/l0GDWbsJKAGLhnVjJfAE616oeE/c4nTcpn
         VNUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=caZEIQq7uoXK5s8U6SsGganxFVvRilkYR9aIio/kM4w=;
        b=qE6wmKLOs/1V58y5KKy1ZHtDnyo6BLo3nvpnDGUVUQfY0WG5GO222ZQftm8WSBgCWL
         apUYfCGIpqlCMxYfqa7LqcnYntOnJIlhHu8hyr1pybwpDP2oeHSEe14LXW2AHyTUHQkb
         SIBK4qq3U52tM2fVhixtLcOIn2lrwr7TKJzwNf2CGNeaHG3XULRcjxWtmq7cH1lzPxrC
         50tFArRCeMhSQD9rQ6ylaAOtdmgBribeDZ6gjycw8M+608z6QrEytefbuOVojNgTC8CL
         pyIT07x16H26Cx/q7QOhP/dw/r7sF7uwE5TeIMabd/J7zR9gYeTJqem+0/Rn0s++TdCi
         3SZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=caZEIQq7uoXK5s8U6SsGganxFVvRilkYR9aIio/kM4w=;
        b=dsgMjnCbmd/IofUnhsXWzyx3JPDs77nicfP9Gd18chMMz9mPsTWYYSddPPYI5buhC+
         EY6ON/3k/REbIXbsEPA56/G+dSEQU/r7zSeOzMv8mVgZdT4hzCwQx3hPSXlHJZZA8yQ0
         mfzoAhN8RnpxV94qMSiwvXiyMU4k4/06ERlyaZcrPbr5gfb+zWy4TCLhWMAcM5vUIX8z
         n3AfWfrJdS1L5Wy11Pepbt8XGQ2AgKzTtVR+Cs41B9AlN0rIEni1AD0GDWpTSF24dcQB
         zZ8tYq0TouFfQg1SbxJw9y0vn9jNoZU8afJn65PkkrPyQGLFfh7F6ek3SuEceo5D+fxG
         2mOg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWREHSTT9u7AZXdvwN0kwBeF4kq2wnCeO2fHo+Z6Ckp8e7BNGyk
	OsHeCwrHRvfKNqC8DAB1G2I=
X-Google-Smtp-Source: APXvYqyAfMmWuYr57eNEaudd46ryJHQb+rSfY7G5BKZcJxjHRSZ/lMyDLM7wSOWqQA6cd4zkvYs8sw==
X-Received: by 2002:a05:620a:1645:: with SMTP id c5mr5770297qko.22.1574303517171;
        Wed, 20 Nov 2019 18:31:57 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:9e0e:: with SMTP id h14ls1503568qke.7.gmail; Wed, 20 Nov
 2019 18:31:56 -0800 (PST)
X-Received: by 2002:ae9:ef0a:: with SMTP id d10mr5444153qkg.262.1574303516835;
        Wed, 20 Nov 2019 18:31:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574303516; cv=none;
        d=google.com; s=arc-20160816;
        b=YU/KoZPHIMj7hZsHNInPZ0X2+8nQUYqwiBwBGYacj6o8NPByQA4R/LShGKZ/KCPErY
         /HH12dPhNB5UDHGHLAuv30T6WBTuq8Gqgi6e9vxDV8kjx6Yn/vhejY8lq2DzVHR7D1yw
         ua+USiFBVSi3ZO9JM2wofomr4b59IDrxBRO6zb6Wr9mc93TYhVocTUmuBBm8qSz7K9JZ
         M6z8KwNfttQYcrf8pfVz0xBxn7dsxGeoGGoERCN85CoC1vP9aCtUrjjL4jH+K7/ZAbAP
         DYa/4SARG2RWLUIoin7ClG8X6rOsa0kl8j9laa1NpQoCSis/S3U6kspV5LOE4XBza30S
         7Xzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=/nCILB/Wa0xWEx0eK/jMEN0pY88yND7zxa5lfvqhfjc=;
        b=MMUSCjHBnZrrR3akno/BQR5gXX9R/8k7CKRtWfurMLKrmGdTqf2rDcUJxslAin7kFo
         pxOzEE4zSS9RJ4kZh4EpjnRF0KxrvIDruzMA31ezPxToXy1oTD11THoDR1izKZ3d489I
         6uFpN3BQVQmNct+nrXT5XeD1HLSWxlhYCiwuDTM4VOLLV/aZ0D56tjnDGzbaJCIHsf3P
         YSIL1zk/lFLOvzvH61Dr4GdPMqmxMWXFxfQ4LcH0OGO/X3NvPt475DdK4Y+63AJgGlky
         asvVgqNv0DIz25wtFSSxqvwRXqx85EOYJROqBp3QUO/ScgBUNXhLVdbRaSTsot7dnYra
         QOTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam2.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id w140si65288qka.6.2019.11.20.18.31.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Nov 2019 18:31:56 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-DB.hygon.cn ([172.23.18.60])
	by spam2.hygon.cn with ESMTP id xAL2SwVD032826;
	Thu, 21 Nov 2019 10:28:58 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-DB.hygon.cn with ESMTP id xAL2SroJ088303;
	Thu, 21 Nov 2019 10:28:53 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from ubuntu.localdomain (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Thu, 21 Nov
 2019 10:28:56 +0800
From: Jiasen Lin <linjiasen@hygon.cn>
To: <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        <jdmason@kudzu.us>
CC: <allenbh@gmail.com>, <dave.jiang@intel.com>, <logang@deltatee.com>,
        <linjiasen@hygon.cn>
Subject: [PATCH v3] NTB: ntb_perf: Fix address err in perf_copy_chunk
Date: Wed, 20 Nov 2019 18:28:44 -0800
Message-ID: <1574303324-4763-1-git-send-email-linjiasen@hygon.cn>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex01.Hygon.cn (172.23.18.10) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam2.hygon.cn xAL2SwVD032826
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

Changes on v3:
  * Remove the redundant check for bnd_dma_addr.
  * Reduce an input argument for perf_copy_chunk, calculate the
    destination address by the offset and dma base address.
  * Add Reviewed-by: Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Changes on v2:
  * Map NTB BARx MMIO address to DMA address after assign the DMA channel,
    to ensure the destination address in valid. (per suggestion from Logan)

Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/ntb/test/ntb_perf.c | 57 +++++++++++++++++++++++++++++++++++++--------
 1 file changed, 47 insertions(+), 10 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index e9b7c2d..972f6d9 100644
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
@@ -782,6 +783,10 @@ static int perf_copy_chunk(struct perf_thread *pthr,
 	struct dmaengine_unmap_data *unmap;
 	struct device *dma_dev;
 	int try = 0, ret = 0;
+	struct perf_peer *peer = pthr->perf->test_peer;
+	void __iomem *vbase;
+	void __iomem *dst_vaddr;
+	dma_addr_t dst_dma_addr;
 
 	if (!use_dma) {
 		memcpy_toio(dst, src, len);
@@ -794,6 +799,10 @@ static int perf_copy_chunk(struct perf_thread *pthr,
 				 offset_in_page(dst), len))
 		return -EIO;
 
+	vbase = peer->outbuf;
+	dst_vaddr = dst;
+	dst_dma_addr = peer->dma_dst_addr + (dst_vaddr - vbase);
+
 	unmap = dmaengine_get_unmap_data(dma_dev, 2, GFP_NOWAIT);
 	if (!unmap)
 		return -ENOMEM;
@@ -807,8 +816,7 @@ static int perf_copy_chunk(struct perf_thread *pthr,
 	}
 	unmap->to_cnt = 1;
 
-	unmap->addr[1] = dma_map_page(dma_dev, virt_to_page(dst),
-		offset_in_page(dst), len, DMA_FROM_DEVICE);
+	unmap->addr[1] = dst_dma_addr;
 	if (dma_mapping_error(dma_dev, unmap->addr[1])) {
 		ret = -EIO;
 		goto err_free_resource;
@@ -865,6 +873,7 @@ static int perf_init_test(struct perf_thread *pthr)
 {
 	struct perf_ctx *perf = pthr->perf;
 	dma_cap_mask_t dma_mask;
+	struct perf_peer *peer = pthr->perf->test_peer;
 
 	pthr->src = kmalloc_node(perf->test_peer->outbuf_size, GFP_KERNEL,
 				 dev_to_node(&perf->ntb->dev));
@@ -882,15 +891,33 @@ static int perf_init_test(struct perf_thread *pthr)
 	if (!pthr->dma_chan) {
 		dev_err(&perf->ntb->dev, "%d: Failed to get DMA channel\n",
 			pthr->tidx);
-		atomic_dec(&perf->tsync);
-		wake_up(&perf->twait);
-		kfree(pthr->src);
-		return -ENODEV;
+		goto err_free;
 	}
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
+	}
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
@@ -978,8 +1005,13 @@ static void perf_clear_test(struct perf_thread *pthr)
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
@@ -1195,6 +1227,9 @@ static ssize_t perf_dbgfs_read_info(struct file *filep, char __user *ubuf,
 			"\tOut buffer addr 0x%pK\n", peer->outbuf);
 
 		pos += scnprintf(buf + pos, buf_size - pos,
+			"\tOut buff phys addr %pa[p]\n", &peer->out_phys_addr);
+
+		pos += scnprintf(buf + pos, buf_size - pos,
 			"\tOut buffer size %pa\n", &peer->outbuf_size);
 
 		pos += scnprintf(buf + pos, buf_size - pos,
@@ -1388,6 +1423,8 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1574303324-4763-1-git-send-email-linjiasen%40hygon.cn.
