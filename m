Return-Path: <linux-ntb+bncBAABB64B4HXQKGQEROSPIFY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBF6122213
	for <lists+linux-ntb@lfdr.de>; Tue, 17 Dec 2019 03:44:13 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id r127sf260850pfc.11
        for <lists+linux-ntb@lfdr.de>; Mon, 16 Dec 2019 18:44:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576550651; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bjm85N+EeV2S9zOQKv8dzFz11ligMOxyx5Tm15nCyx3Ig9SKrLEBdAm2koQPHFoH8u
         XoRzVKy9fCL7FpA7ctjlQ8Cqj3QnrcoQoFB/CZn/7MeiA9frh83c5UX6m5YAKVENdFRt
         WvpJd7nOByJsKrOAQtLDNE3PeKAP71v1xNMu3L2WORZGStaB+tNbp/gyuMWQ3yrsMps/
         YSPmCfdIoduYJICb00Y7rCOYmSsaMCoEpYDjwBe02zE/AkYzQn3kcVGxPp+OQTcH1FAv
         Z46F4mGL7WKENORExbit+ymWhoHp5nFQExH6854t9KN9/HnMn0040/3COMIhIr3IknoO
         nfag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=65Olz9qzDeCvJGrsyAvbd1dQF22lJxIXMOL+InLD9eQ=;
        b=pKpG+SxdOzJzG9PrmfVudFXCGYTjobkN+IuTwOYcDmGuGOjemWWf7xoG5b7yM2KcVl
         2rMsCTZ78E4sZrCsbzeRMjKr+eqRPn4wHGCnHFjJHM2fuNJCghbo9oN9kmrmUhrkqsps
         sPjy7aoRqqnTjPovlfzzQhx3+U893ID5GOqiyOSs4oi9oFNiETFYzXuRTcebHBh0u7WI
         qYHblOrLy2cW0Rcv5acqDNeSXHr01aMVnP09FW1Zo5wBPJv5dtWTEUHaeRmGx+HAlMCS
         Vu9COnKX1BBwvxZPQ5KEX8Drg7P6GtXJ3SSBPKdmT1cx7eZrQ99rRMpsOWA8wJ1Mi1zl
         RyRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=65Olz9qzDeCvJGrsyAvbd1dQF22lJxIXMOL+InLD9eQ=;
        b=JnV7ytjr3+ncoQwGKw1xrDd7qPaD6W8vMf4GCPqoES25unpfHk73gcpX7fXJW0XCdu
         4HyzbHr7H75iAHo0zYd99s40/D02AA+iwTZwW8ZYeGJdMvha7pnKtPdYxSOcOurA0Cqu
         NMoBk/mKX9xK/Si3RltPk0gAuidyw8SjI7/RGh1yPZOkNL7f57hHo9GPQdYzRbpG32E3
         /4pkGCcV4c9K632MlyAOD8vGOGf+ECEIub8FinkBrwshKBk5KeBBSbKwqNg0Mo4uYpWZ
         cBVC1SrAC2OgW9fjibyklaV7VLs4VSEzuaGEuB729lYyvT8UaC/IURsBemE66skpOKoR
         jiBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=65Olz9qzDeCvJGrsyAvbd1dQF22lJxIXMOL+InLD9eQ=;
        b=P8p7xIM+YRyUhq3aG/IKSJv14LptWfTxRzChbq7bPD4gXZUULNk8hVRfbF6M6ilysr
         O76rPpYTTuZ3tsQDYyZ9t4McYkk5y5tvllE56CIkJ0ZqPe0xVfuaaDsnwFPXClPiyQUX
         IVaYb924Nht+77R+uwAYSpJU2IBjb8VX+ozCAqgzlt1c1/xaNaWTf3ivMSz/J0GJP3OZ
         LD92atfcR+Nd3lOXlVy3L0xvOe5I0BoxWolrLa7X9TkervCE4SFhezhHya7uwjM5bhew
         AtdP3+KXMTQo86jk3LkpQi0Kk8ml/8Er/G59DM5/lE6URL1cR3nmjr7Fs1WFw5Imw7AS
         mWfw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWYCgXxkOPgBhRE7icq8yUPh4UCBi/dGRDfTjNQL3kwozi0DHJ3
	DltTZwpxJHhya9FiiDJRwRw=
X-Google-Smtp-Source: APXvYqxUZTgxdCmXCfGAB81sxMQEwfMr0lqT3ZpQo25WixvMWt+Kn+ZLEwc7jF/mtIr9ZwQVDkh7PA==
X-Received: by 2002:a17:902:7787:: with SMTP id o7mr4210128pll.328.1576550651430;
        Mon, 16 Dec 2019 18:44:11 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:d207:: with SMTP id a7ls4822973pgg.1.gmail; Mon, 16 Dec
 2019 18:44:11 -0800 (PST)
X-Received: by 2002:a63:2808:: with SMTP id o8mr22059615pgo.39.1576550650985;
        Mon, 16 Dec 2019 18:44:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576550650; cv=none;
        d=google.com; s=arc-20160816;
        b=VNz0IZzECVh563aSexP7Pp8Bg9J9UtmHKrrUFFiVXTxx4RmobyVidCBWysjks7q/Ef
         XW+tvnKBBcEHGHZoKmN7rPk7Tizbx2fV/6HkntbwCvo0919W9+PZcu+xuW2d8Nv92Tew
         KgJTzj+Pj9hutKva4ZTgTqqwp5yX20bsAVJhN3SXpmdbwtwR1apDTtpC+r4ZrbYnkzSL
         nxFJELKYORnS5HYO/EeEwRTm3D533jf5pbiycmQefqMWQ2BkaRK9tG6Ibk54B2flX33E
         hxcK2IIjvSxbEVpDtG3udQq2ayF/r58RTeUXSRtRId6bwLXUi9RlWPbBhfd1MUalQ62e
         HBpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=O2ug/gJRH/ErhrIAOAIUZj8cAaGTOyUOQFTt0hhGA4U=;
        b=MaBKqrWmIcbIyamJwNANeuVs7NE2bBi7CVYDxhrXvKAgveydE5tbhwXk8xOcrLcdUq
         G582eauf8N+IYHSqe6b7s8MusfhSBJH0KHEYeuxahQgsE6++AASpzeJrCBbtMNSGt+xQ
         x5KZBGZl461AeoISHDEhzuhE/oBqq2Cps6x90NxygZPEjCIgyDFvQbCgb+6DJ6TrPSY5
         jhhwoe+2MO+dfaQuihVnF6ekW1mXCTrlWWywbnjwgGPCuzvogaXcWb77hzofPxlyug3T
         uW7Ut6RNztsq1z8wL9Z+IkhRw0ubkps/SnNdJ8jT3yCpk54tacUg07aNpJ/jIQoobdWF
         X8sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam1.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id x13si1146548pgt.3.2019.12.16.18.44.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Dec 2019 18:44:10 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-DB.hygon.cn ([172.23.18.60])
	by spam1.hygon.cn with ESMTP id xBH2geS6075240;
	Tue, 17 Dec 2019 10:42:40 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-DB.hygon.cn with ESMTP id xBH2gQSk004059;
	Tue, 17 Dec 2019 10:42:26 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from ubuntu.localdomain (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Tue, 17 Dec
 2019 10:42:32 +0800
From: Jiasen Lin <linjiasen@hygon.cn>
To: <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        <jdmason@kudzu.us>, <logang@deltatee.com>
CC: <allenbh@gmail.com>, <dave.jiang@intel.com>, <linjiasen@hygon.cn>,
        <sanju.mehta@amd.com>
Subject: [PATCH] NTB: ntb_perf: Add more debugfs entries for ntb_perf
Date: Mon, 16 Dec 2019 18:42:16 -0800
Message-ID: <1576550536-84697-1-git-send-email-linjiasen@hygon.cn>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex01.Hygon.cn (172.23.18.10) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam1.hygon.cn xBH2geS6075240
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

Currently, read input and output buffer is not supported yet in
debugfs of ntb_perf. We can not confirm whether the output data is
transmitted to the input buffer at peer memory through NTB.

This patch add new entries in debugfs which implement interface to read
a part of input and out buffer. User can dump output and input data at
local and peer system by hexdump command, and then compare them manually.

Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
---
 drivers/ntb/test/ntb_perf.c | 59 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index e9b7c2d..338c3ec 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -106,6 +106,8 @@ MODULE_DESCRIPTION("PCIe NTB Performance Measurement Tool");
 
 #define PERF_BUF_LEN 1024
 
+#define MAX_STR_LENGTH		16
+
 static unsigned long max_mw_size;
 module_param(max_mw_size, ulong, 0644);
 MODULE_PARM_DESC(max_mw_size, "Upper limit of memory window size");
@@ -1227,6 +1229,46 @@ static const struct file_operations perf_dbgfs_info = {
 	.read = perf_dbgfs_read_info
 };
 
+static ssize_t perf_dbgfs_read_inbuf(struct file *filep,
+				    char __user *ubuf,
+				    size_t size, loff_t *offp)
+{
+	struct perf_peer *peer = filep->private_data;
+	size_t buf_size;
+
+	if (!peer->inbuf)
+		return -ENXIO;
+
+	buf_size = min_t(size_t, size, peer->inbuf_size);
+	return simple_read_from_buffer(ubuf, size, offp,
+					peer->inbuf, buf_size);
+}
+
+static const struct file_operations perf_dbgfs_inbuf = {
+	.open = simple_open,
+	.read = perf_dbgfs_read_inbuf,
+};
+
+static ssize_t perf_dbgfs_read_outbuf(struct file *filep,
+				    char __user *ubuf,
+				    size_t size, loff_t *offp)
+{
+	struct perf_peer *peer = filep->private_data;
+	size_t buf_size;
+
+	if (!peer->outbuf)
+		return -ENXIO;
+
+	buf_size = min_t(size_t, size, peer->outbuf_size);
+	return simple_read_from_buffer(ubuf, size, offp,
+					peer->outbuf, buf_size);
+}
+
+static const struct file_operations perf_dbgfs_outbuf = {
+	.open = simple_open,
+	.read = perf_dbgfs_read_outbuf,
+};
+
 static ssize_t perf_dbgfs_read_run(struct file *filep, char __user *ubuf,
 				   size_t size, loff_t *offp)
 {
@@ -1318,6 +1360,9 @@ static const struct file_operations perf_dbgfs_tcnt = {
 static void perf_setup_dbgfs(struct perf_ctx *perf)
 {
 	struct pci_dev *pdev = perf->ntb->pdev;
+	struct perf_peer *peer;
+	int pidx;
+	char name[MAX_STR_LENGTH];
 
 	perf->dbgfs_dir = debugfs_create_dir(pci_name(pdev), perf_dbgfs_topdir);
 	if (!perf->dbgfs_dir) {
@@ -1334,6 +1379,20 @@ static void perf_setup_dbgfs(struct perf_ctx *perf)
 	debugfs_create_file("threads_count", 0600, perf->dbgfs_dir, perf,
 			    &perf_dbgfs_tcnt);
 
+	for (pidx = 0; pidx < perf->pcnt; pidx++) {
+		peer = &perf->peers[pidx];
+		if (!peer)
+			continue;
+		memset(name, 0, sizeof(name));
+		snprintf(name, sizeof(name), "%s_%u", "inbuf_info", pidx);
+		debugfs_create_file(name, 0600, perf->dbgfs_dir, peer,
+					&perf_dbgfs_inbuf);
+
+		memset(name, 0, sizeof(name));
+		snprintf(name, sizeof(name), "%s_%u", "outbuf_info", pidx);
+		debugfs_create_file(name, 0600, perf->dbgfs_dir, peer,
+					&perf_dbgfs_outbuf);
+	}
 	/* They are made read-only for test exec safety and integrity */
 	debugfs_create_u8("chunk_order", 0500, perf->dbgfs_dir, &chunk_order);
 
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1576550536-84697-1-git-send-email-linjiasen%40hygon.cn.
