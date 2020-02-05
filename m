Return-Path: <linux-ntb+bncBCHK3VHCYUIBBNXR5PYQKGQET2O2CZA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EAF15362D
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 18:17:44 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id f22sf1734219qka.10
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 09:17:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580923063; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ukx7zi+fWsNpagB6vFk2eUugtTk5osLXfk1TBSRfUJEnQPC/ToBSBAAdOuLEDlWWb9
         o4fL+hFX+IoyNWafJUhTHwM9cl+WHVwwoGuAUQwDdvy9BnzT71N+cXCys809I7+9SuYU
         oMXcJTHGf7odMlwormS/JLwYQBhgS2045tLBnYC4mbndidDqz2eMM/gdM7MclAZQbIFW
         zP3o9eZjVfKEg8/7RSLEqWD58kt0DMbVZ+GMOM8RqJR4/cvshhj4VKMJpWYxYOcvUmlb
         K2POAnWOHMDB+2POYrb0gD9vH9TamHMtw8hDHUM9qXpw78fL+0xee/BFQZ8alqWKwAvZ
         p2Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=12hHl5F95X83Tj0ui17CYkycoxfPsLJPh38Z3zDj6F0=;
        b=eGQGPN9qCwor14Y8BH/l+cFR5a7ew7UiBgP5vlHiA/aOXbEIT597qcBxHulcUzMAXw
         7288wJ0bGmTNTL3uKqU9kV3GEZAQ7MXyo4Iy16JktViVuzHl5tmb1Vc+r9sYjzaRvura
         GNQnql8EaHvqB0JUzuoyxAWB+nEraxTnotF6w6bI9dP260gArH4aH0FA/eQ97Ck2THT+
         wOJ+pdvvyqScylqzK3m0t4jxct6e9xNfHz/JW/bhXCvMHVJjyR8vO5VsIzSH7ZudOX5H
         R+pjctNhws7yGGKfnSpYQZJTPwAPP6bxNpsSZjBlmDqUOOzYOpz5QRLkKcF2jC+NbRPE
         oUdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NehaB4Fk;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=12hHl5F95X83Tj0ui17CYkycoxfPsLJPh38Z3zDj6F0=;
        b=IUL/awAGhF0Gvn6nUcPKFykYKMH7Ut7G2y/JJfz+IuEuscGytawBdlKNAK8c5Kd6VD
         P4r4FxN7ILOXLhk4XO/WzS3Bwfbfyk+gQGRsXtMe0TbcQNejWdfAT98IedynxUWROQqB
         bJbFyQ9jk4hKtb1Z/SnZTZiwZi7fLgOKjqL+SVSs9dU0Q7D0Z1hZYBYNFHJrmHHYLLJk
         +ekrD0kA2RcEdHe2RPc6M7jvpbu2OsFBx3Y6K1ESvgfieuKG40lHg8NDnHkIMIvNUH6r
         KPlu9gKkGEcYqk/3HPq54se3qI/Tnc2dmQrdXZghMzgMcejcpftdxtgYQghcytLJQqEY
         hABA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=12hHl5F95X83Tj0ui17CYkycoxfPsLJPh38Z3zDj6F0=;
        b=a3RElfYrDmY0E3wCmOfbFXAVLZBInHuPlNjbqU5uyoMRnSeQaNuslRAZTqbQmz4EvD
         S/+WeYYeSCsjCI+W/bmVARW0wJZhsfzxBSPvkXxDs8YsF433z3qg+Da2lPfrAZO2viss
         pPcqgNOEX8QE1lEVV5cIsui7Z96JDgM6Vl6fIhv+372vcGhOorlngYuM/ju7CgJtt0GI
         3F2gK5PMvKk02DotW77klG2j/OEy8iAnWPbTHR2j8EaBK2zS1yKXD0Lpv+mJOs7utHJk
         YBpmfECkVcxNEh6BV2cM2mDc8zmfEfBiWvidP3daz5V8b7ZQhd301DIGKLa2DY7x0HG/
         Rghw==
X-Gm-Message-State: APjAAAWFLAFgVIIYe8bHbc/DUqYvNU1tG7bbkXaSYV2PyG19ODLlPRlW
	7x84DHHyjPbX9uC1fkeijOw=
X-Google-Smtp-Source: APXvYqzWt6rdPeT3lL16KBLVxs1e4roApGGO+zpcMBBiLE0kNCJhbg3gDNIujgC8ELlL0P4pVUmwIg==
X-Received: by 2002:a37:5fc2:: with SMTP id t185mr33500419qkb.271.1580923063007;
        Wed, 05 Feb 2020 09:17:43 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:6550:: with SMTP id z77ls1286018qkb.10.gmail; Wed, 05
 Feb 2020 09:17:42 -0800 (PST)
X-Received: by 2002:a37:801:: with SMTP id 1mr35472449qki.326.1580923062631;
        Wed, 05 Feb 2020 09:17:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580923062; cv=none;
        d=google.com; s=arc-20160816;
        b=Mv4saD6di2p8UqQWAfRsW9BnFu0si14uI9eP20dUtD7OTMy5NIt+gmSiL0dA/Iuj5E
         jsQ3+LJr+sB7nDMCl5Gtie1T3mT0gNh74x0tYDcBEdgMCrvR+RdIXafYMsV3d++QMQ0o
         WzDFNWLw08OFjkZq86dJ+Yb+cb3ldPlDvw8sb+8Ll63CJ9BaSeBQkE+ocuXCp0oV2Ksu
         lX8IIc1lA05PE75828tjIqciDjRc4zj01P6IqpWuccTYVwb3xPj4vqoZrv0E0aJVAuJN
         MgtNlL/Z0HFxD33U2tsVUpdzQxyNyedvEy9jeREpNg3+/Yer+vvD4fd+mVooAY9RWWZC
         s3Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=XPGso/ZAKLC4MqsABJuAPwcPuQWv0VhrryHLJIxVO2Y=;
        b=HuORGj416mxOeSj3/HSCEiRyCcdGFSYuoDcyvocOfAODTndhATOnoa7D/tHbcVW3b9
         qAa94U/36kkyCID3dstGgTKbZc7PS76hsmw+A4h6W67kqGcbJjVPO6TPWeHrHg2WNK+s
         rokkWVrbrU/efwuoiUUDthXOnHtYrC5rmRvkOz+UKzYjIdOBpsXke9PYBW1JuuIvAQy5
         vp35sxrPboj/sVHkOn8Cf57pD7USpfQsqnQ0g6FM/z77GVlHE35iS7oVTVrLMyXGjs0d
         +oopGmAgUiO3iPGL5/0mGmaQjIBtDPeP4VSOvogFtUVX7MnjzSdcCgUopkRETplnRJ2e
         lH+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NehaB4Fk;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id l9si25102qkg.5.2020.02.05.09.17.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 09:17:42 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id 12so1263428pjb.5
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 09:17:42 -0800 (PST)
X-Received: by 2002:a17:90a:fb4f:: with SMTP id iq15mr6814778pjb.86.1580923061293;
        Wed, 05 Feb 2020 09:17:41 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id l8sm357945pjy.24.2020.02.05.09.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 09:17:40 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 1/4] ntb_perf: refactor code for CPU and DMA transfers
Date: Wed,  5 Feb 2020 22:46:55 +0530
Message-Id: <698cd5b0fd615600d0d01e8f5e4c1715c9f06a15.1580921119.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580921119.git.arindam.nath@amd.com>
References: <cover.1580921119.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580921119.git.arindam.nath@amd.com>
References: <cover.1580921119.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NehaB4Fk;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Content-Type: text/plain; charset="UTF-8"
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

This patch creates separate function to handle CPU
and DMA transfers. Since CPU transfers use memcopy
and DMA transfers use dmaengine APIs, these changes
not only allow logical separation between the two,
but also allows someone to clearly see the difference
in the way the two are handled.

In the case of DMA, we DMA from system memory to the
memory window(MW) of NTB, which is a MMIO region, we
should not use dma_map_page() for mapping MW. The
correct way to map a MMIO region is to use
dma_map_resource(), so the code is modified
accordingly.

dma_map_resource() expects physical address of the
region to be mapped for DMA, we add a new field,
outbuf_phys_addr, to struct perf_peer, and also
another field, outbuf_dma_addr, to store the
corresponding mapped address returned by the API.

Since the MW is contiguous, rather than mapping
chunk-by-chunk, we map the entire MW before the
actual DMA transfer happens. Then for each chunk,
we simply pass offset into the mapped region and
DMA to that region. Then later, we unmap the MW
during perf_clear_test().

The above means that now we need to have different
function parameters to deal with in the case of
CPU and DMA transfers. In the case of CPU transfers,
we simply need the CPU virtual addresses for memcopy,
but in the case of DMA, we need dma_addr_t, which
will be different from CPU physical address depending
on whether IOMMU is enabled or not. Thus we now
have two separate functions, perf_copy_chunk_cpu(),
and perf_copy_chunk_dma() to take care of above
consideration.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/test/ntb_perf.c | 143 ++++++++++++++++++++++++++----------
 1 file changed, 105 insertions(+), 38 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index e9b7c2dfc730..0e9b9efe74a4 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -149,6 +149,8 @@ struct perf_peer {
 	u64 outbuf_xlat;
 	resource_size_t outbuf_size;
 	void __iomem *outbuf;
+	phys_addr_t outbuf_phys_addr;
+	dma_addr_t outbuf_dma_addr;
 
 	/* Inbound MW params */
 	dma_addr_t inbuf_xlat;
@@ -775,49 +777,41 @@ static void perf_dma_copy_callback(void *data)
 	wake_up(&pthr->dma_wait);
 }
 
-static int perf_copy_chunk(struct perf_thread *pthr,
-			   void __iomem *dst, void *src, size_t len)
+static int perf_copy_chunk_cpu(struct perf_thread *pthr,
+			       void __iomem *dst, void *src, size_t len)
+{
+	memcpy_toio(dst, src, len);
+
+	return likely(atomic_read(&pthr->perf->tsync) > 0) ? 0 : -EINTR;
+}
+
+static int perf_copy_chunk_dma(struct perf_thread *pthr,
+			       dma_addr_t dst, void *src, size_t len)
 {
 	struct dma_async_tx_descriptor *tx;
 	struct dmaengine_unmap_data *unmap;
 	struct device *dma_dev;
 	int try = 0, ret = 0;
 
-	if (!use_dma) {
-		memcpy_toio(dst, src, len);
-		goto ret_check_tsync;
-	}
-
 	dma_dev = pthr->dma_chan->device->dev;
-
-	if (!is_dma_copy_aligned(pthr->dma_chan->device, offset_in_page(src),
-				 offset_in_page(dst), len))
-		return -EIO;
-
-	unmap = dmaengine_get_unmap_data(dma_dev, 2, GFP_NOWAIT);
+	unmap = dmaengine_get_unmap_data(dma_dev, 1, GFP_NOWAIT);
 	if (!unmap)
 		return -ENOMEM;
 
 	unmap->len = len;
 	unmap->addr[0] = dma_map_page(dma_dev, virt_to_page(src),
-		offset_in_page(src), len, DMA_TO_DEVICE);
+				offset_in_page(src), len, DMA_TO_DEVICE);
 	if (dma_mapping_error(dma_dev, unmap->addr[0])) {
 		ret = -EIO;
 		goto err_free_resource;
 	}
 	unmap->to_cnt = 1;
 
-	unmap->addr[1] = dma_map_page(dma_dev, virt_to_page(dst),
-		offset_in_page(dst), len, DMA_FROM_DEVICE);
-	if (dma_mapping_error(dma_dev, unmap->addr[1])) {
-		ret = -EIO;
-		goto err_free_resource;
-	}
-	unmap->from_cnt = 1;
-
 	do {
-		tx = dmaengine_prep_dma_memcpy(pthr->dma_chan, unmap->addr[1],
-			unmap->addr[0], len, DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+		tx = dmaengine_prep_dma_memcpy(pthr->dma_chan, dst,
+					       unmap->addr[0], len,
+					       DMA_PREP_INTERRUPT |
+					       DMA_CTRL_ACK);
 		if (!tx)
 			msleep(DMA_MDELAY);
 	} while (!tx && (try++ < DMA_TRIES));
@@ -833,22 +827,16 @@ static int perf_copy_chunk(struct perf_thread *pthr,
 
 	ret = dma_submit_error(dmaengine_submit(tx));
 	if (ret) {
-		dmaengine_unmap_put(unmap);
 		goto err_free_resource;
 	}
 
-	dmaengine_unmap_put(unmap);
-
 	atomic_inc(&pthr->dma_sync);
 	dma_async_issue_pending(pthr->dma_chan);
 
-ret_check_tsync:
-	return likely(atomic_read(&pthr->perf->tsync) > 0) ? 0 : -EINTR;
-
 err_free_resource:
 	dmaengine_unmap_put(unmap);
 
-	return ret;
+	return likely(atomic_read(&pthr->perf->tsync) > 0) ? ret : -EINTR;
 }
 
 static bool perf_dma_filter(struct dma_chan *chan, void *data)
@@ -893,7 +881,7 @@ static int perf_init_test(struct perf_thread *pthr)
 	return 0;
 }
 
-static int perf_run_test(struct perf_thread *pthr)
+static int perf_run_test_cpu(struct perf_thread *pthr)
 {
 	struct perf_peer *peer = pthr->perf->test_peer;
 	struct perf_ctx *perf = pthr->perf;
@@ -911,10 +899,9 @@ static int perf_run_test(struct perf_thread *pthr)
 	flt_dst = peer->outbuf;
 
 	pthr->duration = ktime_get();
-
 	/* Copied field is cleared on test launch stage */
 	while (pthr->copied < total_size) {
-		ret = perf_copy_chunk(pthr, flt_dst, flt_src, chunk_size);
+		ret = perf_copy_chunk_cpu(pthr, flt_dst, flt_src, chunk_size);
 		if (ret) {
 			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
 				pthr->tidx, ret);
@@ -937,6 +924,74 @@ static int perf_run_test(struct perf_thread *pthr)
 	return 0;
 }
 
+static int perf_run_test_dma(struct perf_thread *pthr)
+{
+	struct perf_peer *peer = pthr->perf->test_peer;
+	struct perf_ctx *perf = pthr->perf;
+	struct device *dma_dev;
+	dma_addr_t flt_dst, bnd_dst;
+	u64 total_size, chunk_size;
+	void *flt_src;
+	int ret = 0;
+
+	total_size = 1ULL << total_order;
+	chunk_size = 1ULL << chunk_order;
+	chunk_size = min_t(u64, peer->outbuf_size, chunk_size);
+
+	/* Map MW for DMA */
+	dma_dev = pthr->dma_chan->device->dev;
+	peer->outbuf_dma_addr = dma_map_resource(dma_dev,
+						 peer->outbuf_phys_addr,
+						 peer->outbuf_size,
+						 DMA_FROM_DEVICE, 0);
+	if (dma_mapping_error(dma_dev, peer->outbuf_dma_addr)) {
+		dma_unmap_resource(dma_dev, peer->outbuf_dma_addr,
+				   peer->outbuf_size, DMA_FROM_DEVICE, 0);
+		return -EIO;
+	}
+
+	flt_src = pthr->src;
+	bnd_dst = peer->outbuf_dma_addr + peer->outbuf_size;
+	flt_dst = peer->outbuf_dma_addr;
+
+	pthr->duration = ktime_get();
+	/* Copied field is cleared on test launch stage */
+	while (pthr->copied < total_size) {
+		ret = perf_copy_chunk_dma(pthr, flt_dst, flt_src, chunk_size);
+		if (ret) {
+			dev_err(&perf->ntb->dev, "%d: Got error %d on test\n",
+				pthr->tidx, ret);
+			return ret;
+		}
+
+		pthr->copied += chunk_size;
+
+		flt_dst += chunk_size;
+		flt_src += chunk_size;
+		if (flt_dst >= bnd_dst || flt_dst < peer->outbuf_dma_addr) {
+			flt_dst = peer->outbuf_dma_addr;
+			flt_src = pthr->src;
+		}
+
+		/* Give up CPU to give a chance for other threads to use it */
+		schedule();
+	}
+
+	return 0;
+}
+
+static int perf_run_test(struct perf_thread *pthr)
+{
+	int ret = 0;
+
+	if (!use_dma)
+		ret = perf_run_test_cpu(pthr);
+	else
+		ret = perf_run_test_dma(pthr);
+
+	return ret;
+}
+
 static int perf_sync_test(struct perf_thread *pthr)
 {
 	struct perf_ctx *perf = pthr->perf;
@@ -969,6 +1024,8 @@ static int perf_sync_test(struct perf_thread *pthr)
 static void perf_clear_test(struct perf_thread *pthr)
 {
 	struct perf_ctx *perf = pthr->perf;
+	struct perf_peer *peer = pthr->perf->test_peer;
+	struct device *dma_dev;
 
 	if (!use_dma)
 		goto no_dma_notify;
@@ -978,6 +1035,10 @@ static void perf_clear_test(struct perf_thread *pthr)
 	 * We call it anyway just to be sure of the transfers completion.
 	 */
 	(void)dmaengine_terminate_sync(pthr->dma_chan);
+	/* Un-map MW */
+	dma_dev = pthr->dma_chan->device->dev;
+	dma_unmap_resource(dma_dev, peer->outbuf_dma_addr, peer->outbuf_size,
+			   DMA_FROM_DEVICE, 0);
 
 	dma_release_channel(pthr->dma_chan);
 
@@ -1383,10 +1444,16 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
 	if (ret)
 		return ret;
 
-	peer->outbuf = devm_ioremap_wc(&perf->ntb->dev, phys_addr,
-					peer->outbuf_size);
-	if (!peer->outbuf)
-		return -ENOMEM;
+	if (use_dma) {
+		/* For DMA to/from MW */
+		peer->outbuf_phys_addr = phys_addr;
+	} else {
+		/* For CPU read(from)/write(to) MW */
+		peer->outbuf = devm_ioremap_wc(&perf->ntb->dev, phys_addr,
+					       peer->outbuf_size);
+		if (!peer->outbuf)
+			return -ENOMEM;
+	}
 
 	if (max_mw_size && peer->outbuf_size > max_mw_size) {
 		peer->outbuf_size = max_mw_size;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/698cd5b0fd615600d0d01e8f5e4c1715c9f06a15.1580921119.git.arindam.nath%40amd.com.
