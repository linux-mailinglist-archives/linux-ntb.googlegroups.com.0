Return-Path: <linux-ntb+bncBAABBOFER3XAKGQER5UYPSY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B03CF2614
	for <lists+linux-ntb@lfdr.de>; Thu,  7 Nov 2019 04:40:42 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id x8sf686460plo.17
        for <lists+linux-ntb@lfdr.de>; Wed, 06 Nov 2019 19:40:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573098040; cv=pass;
        d=google.com; s=arc-20160816;
        b=CfBtJyxk49u6MhXtDUv21++pCQwNUwxGxMfTxUQyGjT4L6dVHJxtaX8xggyIAhUTq1
         M+vSBXLzPY9BocpGdsRJTlYBH8M86JVUDlLfRNQpHtRTe4tfpJJlMNyJPz3UQgSSrAmq
         tUgQHI6v2Ws6LOG33QOFxPCnNQbtwmjWpHZwXb5iF/Xo6hGq9JnA6R4I889T9sey1U7u
         SGVjtgePI7rlTqxgLz7cARz0EwJJOomHjevk8rW5ucFVY9LCmf1jtbU/gpbVnDStksNX
         OXYr16Bxr+X3AFr5AlhqvEMnZg25FPYUEdI7XvH0KxKjE7X67Rgc5zwR/pFpGzPov5oZ
         fm8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=kkZ0M/vDr7p3S4y0v5lXBV7MHoGY+by8npxa9A5CRSI=;
        b=XXqqsfMYi5KREqI5yzLMyZTPW2Yx5UNoYwNXzjrTBpowGDPoX66l/OQSGVLN30BarP
         4+4w4mjTW8gskbXn4ldGEfP/T4KWiwqB7pUw+MXK3dmVfCp2FEe6veE3B8pz+sQDq67l
         mF7Hn62uPzOnyyA0/DXPfTTX3o6xdiSSM0tNWAsSNVYKHu259ihbDEI/R/QjhyrNlTE4
         l+cbxC0cpDVWM0ia+2bSEM6szzJgbjP8jBdya1fBskZlwnNOTCxMYWX588vRxqHOC5Fk
         tCBRUcyE5/ZNelJVjX0kgUrjWANB+LsofwsDej2jGUJLwM0Sg81zIqWzlT26FDx+S+2z
         MelA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kkZ0M/vDr7p3S4y0v5lXBV7MHoGY+by8npxa9A5CRSI=;
        b=qMtd63Ki1ShJ51FCFTQPmSfX29/LrRS48i3CtrCpH0j9lcX0OfBofVG7tMKDJVQHzW
         wuTM39xPi9p0in2Vd6mn2eLGdyvnuSoRr+I+f22zb4pDG2eGfiwzU6mZZu+SuI8b5c0v
         4RFv3pR7DYrNhCichCANB5OSirahAIvdDREgtmsXu0GuswM0yUlSNZO0WtxOCg3/BQIN
         lz/Ag5IUjCGVV2/13/bd3gg/dSiGXt5whloWZ5hruBgzOqwjwRu5qx/Tq2OM3lCsYlAX
         h2UgtUZRnJW7IUpPLqkJvpUOeGYpL/jOBn0SsNtZT6BbvMv9krqq4+rwHb49PdfsxdNj
         cNFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kkZ0M/vDr7p3S4y0v5lXBV7MHoGY+by8npxa9A5CRSI=;
        b=FkgWRL/Pj2S59GfyEUxXBI+alH6nn/ix02dUeupU3U5YSHN9I1YgltHb0gqsbeTGKg
         DccaIrSRkZTkEm78Zz82wHmgTec0dsT+v1/uzTS6Dlf4IkjFwTyns1FqnjZi0rqKAyhw
         0Zp1bDIeCbojvsmBzc0DRRahuvuj7X4KrRXOu0uDmQg9nySqU96sTVGOcLJxS8PMvs0W
         Gs28nQWLEwzXI2LeIaf1x9CkCutwF04XmsTZ5iTQXgBJXGitJnFLCKRBP1/DfAjfHC+b
         yjMYtrr0FxyuwA/uVkfNB2oYmDTHzTKZWLbbOCwLKQM0HfLa++lI/FNfsJM2mykFAi/I
         5Usg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVy6/W0TFarg+ysAIcMDXFy4v3/Z8IgGkiuq+if1oMWO2Xg6oRW
	pgpH1+ur16xKF1IrfrZKhg4=
X-Google-Smtp-Source: APXvYqxO7ePFmrhXoQURDDpPVdkp00Al/KG9lF0BE0hICWKhZgsKCbxbwM3ivkD2C3fm5HxF9m7uQg==
X-Received: by 2002:a17:902:b612:: with SMTP id b18mr1289393pls.309.1573098040209;
        Wed, 06 Nov 2019 19:40:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:5302:: with SMTP id h2ls1116345pfb.12.gmail; Wed, 06 Nov
 2019 19:40:39 -0800 (PST)
X-Received: by 2002:a62:e219:: with SMTP id a25mr1126121pfi.252.1573098039831;
        Wed, 06 Nov 2019 19:40:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573098039; cv=none;
        d=google.com; s=arc-20160816;
        b=zToEZ+pr6J10qu/cRQomXytlQH54xYn75DmHWdytr5piHVA4w1Suvub/sY1SX3hetJ
         9o73azXbdU0cAkzxGbaSg83LxTiDcn2O8F8YnuBagcJTtGoBqm3OH70WHiK6j+QatkMO
         nRBj4/vt4Lc7BGSsyrk++HuvUf71GfSX3JB8kM4wNvroh2rbNGom145suuMIU7+oFXnD
         LYJ9Gs1uM9RD94OPfjCsSbKUVrSo4gI736lF8QGExP8LyiMpvsfpxb1Rop85xQBF82Ts
         fvm6Q9HW00ZmqbFaOGRz8hrWZsdKxR6yn9NJprVUO4F242XjAQnzdaMsii2kCSSpuV60
         y9ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=qcEqP9UgxXW3W/lnjNyN5Phe4Kb9+fHQeZNpj2muaZ4=;
        b=j+gdXyNu03HRm14Fy6HFLVT9LB3Bsu+X2gMUv6RZA/nC1dR72LtNqgB4e3+vNVMq5G
         5nCaxCT0nVzfggg0/dQbg9nh6KMRP7ODbwDYj+q50I1ptODj8RPkJ8AQP6dG154WZGX/
         OKU+f0pJDrFUXZzDOKa/kXbgK4ryFOD0m+AtJWD9053YkF0ojhf8GZbEy63Fqj/soGzl
         uoMBVv4jaexYvaKKp0MvddO7kmKN8xGoNvzbD+FNk2B+l8cwoSkyUW8RZxLl68yQJcsS
         PjjxNg4PESrxLvzyp4s44VosX5cpFmUT6taF/o/pBlRQqL1VzDh6fpvShgIyftgXa5bG
         FfRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam1.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id i1si60159pfr.2.2019.11.06.19.40.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 19:40:39 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-FE.hygon.cn ([172.23.18.61])
	by spam1.hygon.cn with ESMTP id xA73ckpw000963;
	Thu, 7 Nov 2019 11:38:46 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-FE.hygon.cn with ESMTP id xA73cf1v094565;
	Thu, 7 Nov 2019 11:38:41 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from ubuntu.localdomain (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Thu, 7 Nov 2019
 11:38:42 +0800
From: Jiasen Lin <linjiasen@hygon.cn>
To: <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        <jdmason@kudzu.us>
CC: <allenbh@gmail.com>, <dave.jiang@intel.com>, <linjiasen@hygon.cn>
Subject: [PATCH] NTB: ntb_perf: Fix address err in perf_copy_chunk
Date: Wed, 6 Nov 2019 19:38:33 -0800
Message-ID: <1573097913-104555-1-git-send-email-linjiasen@hygon.cn>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex01.Hygon.cn (172.23.18.10) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam1.hygon.cn xA73ckpw000963
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

We Save the physical address in perf_setup_peer_mw, it is MMIO address
of NTB BARx. Then fill the destination address of DMA descriptor with
this physical address to guarantee that the address of memory write
requests fall in memory window of NBT BARx.

Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
---
 drivers/ntb/test/ntb_perf.c | 28 +++++++++++++++++++++++-----
 1 file changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index e9b7c2d..1c2fd1a 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -149,6 +149,7 @@ struct perf_peer {
 	u64 outbuf_xlat;
 	resource_size_t outbuf_size;
 	void __iomem *outbuf;
+	phys_addr_t out_phys_addr;
 
 	/* Inbound MW params */
 	dma_addr_t inbuf_xlat;
@@ -776,7 +777,8 @@ static void perf_dma_copy_callback(void *data)
 }
 
 static int perf_copy_chunk(struct perf_thread *pthr,
-			   void __iomem *dst, void *src, size_t len)
+			   void __iomem *dst, void *src, size_t len,
+			   phys_addr_t dst_phys_addr)
 {
 	struct dma_async_tx_descriptor *tx;
 	struct dmaengine_unmap_data *unmap;
@@ -807,8 +809,7 @@ static int perf_copy_chunk(struct perf_thread *pthr,
 	}
 	unmap->to_cnt = 1;
 
-	unmap->addr[1] = dma_map_page(dma_dev, virt_to_page(dst),
-		offset_in_page(dst), len, DMA_FROM_DEVICE);
+	unmap->addr[1] = dst_phys_addr;
 	if (dma_mapping_error(dma_dev, unmap->addr[1])) {
 		ret = -EIO;
 		goto err_free_resource;
@@ -901,6 +902,8 @@ static int perf_run_test(struct perf_thread *pthr)
 	u64 total_size, chunk_size;
 	void *flt_src;
 	int ret = 0;
+	phys_addr_t flt_phys_addr;
+	phys_addr_t bnd_phys_addr;
 
 	total_size = 1ULL << total_order;
 	chunk_size = 1ULL << chunk_order;
@@ -909,12 +912,15 @@ static int perf_run_test(struct perf_thread *pthr)
 	flt_src = pthr->src;
 	bnd_dst = peer->outbuf + peer->outbuf_size;
 	flt_dst = peer->outbuf;
+	bnd_phys_addr = peer->out_phys_addr + peer->outbuf_size;
+	flt_phys_addr = peer->out_phys_addr;
 
 	pthr->duration = ktime_get();
 
 	/* Copied field is cleared on test launch stage */
 	while (pthr->copied < total_size) {
-		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size);
+		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size,
+				flt_phys_addr);
 		if (ret) {
 			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
 				pthr->tidx, ret);
@@ -925,8 +931,15 @@ static int perf_run_test(struct perf_thread *pthr)
 
 		flt_dst += chunk_size;
 		flt_src += chunk_size;
-		if (flt_dst >= bnd_dst || flt_dst < peer->outbuf) {
+		flt_phys_addr += chunk_size;
+
+		if (flt_dst >= bnd_dst ||
+		    flt_dst < peer->outbuf ||
+		    flt_phys_addr >= bnd_phys_addr ||
+		    flt_phys_addr < peer->out_phys_addr) {
+
 			flt_dst = peer->outbuf;
+			flt_phys_addr = peer->out_phys_addr;
 			flt_src = pthr->src;
 		}
 
@@ -1195,6 +1208,9 @@ static ssize_t perf_dbgfs_read_info(struct file *filep, char __user *ubuf,
 			"\tOut buffer addr 0x%pK\n", peer->outbuf);
 
 		pos += scnprintf(buf + pos, buf_size - pos,
+			"\tOut buff phys addr %pa[p]\n", &peer->out_phys_addr);
+
+		pos += scnprintf(buf + pos, buf_size - pos,
 			"\tOut buffer size %pa\n", &peer->outbuf_size);
 
 		pos += scnprintf(buf + pos, buf_size - pos,
@@ -1388,6 +1404,8 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1573097913-104555-1-git-send-email-linjiasen%40hygon.cn.
