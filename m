Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBMV6TTTQKGQEGKWCDFA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id A415228CF7
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 00:31:15 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id 94sf4426084plc.19
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:31:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558650674; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQWiQYJr4vVqL+Lht+Vmx7DvVVJBmbW/neoJd5eJ++Zeyb1yAyklybupOAz0PveYe+
         BpUDTXBc5dVEe3Q+onidMyTA3ngJiV2AJIDzR4wqbHWFvidAJrzAsDlK0o/sBGa4GzT4
         xuB9D2i3rhXbMDKmOz37Uduh1piKxIi1rAMJD04h/3eB2cH5VtFhzeg+RoXs1Wz697tn
         qN6w/azv10VIlMi/BZ17fwnRp1Rl02+WaSr244jheHV/CvVV43BV2pJiOMrbr4ZM/JJB
         5hibjiMo62W/OU0mhK1ydkuZCChpr3JMC9jPIHIsHpkqHiAty3OTGecw15FQG8E/lH0w
         UTkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:references
         :in-reply-to:message-id:date:cc:to:from:sender:dkim-signature;
        bh=jqXyTUaf51WkfgerUx+xfr/92vTIYImFaWe/o85ieLg=;
        b=UYWXlfTz78X9+DD9BMiYiq1FLYkosrZ+aeOrSF3r4urXyMCwIcvwuPDtoQsLkLCYpA
         Db8GdPXjDOzB1hCjEZOZxavkW7+NI8lkTGeSxIA/xyN7amIoxRRxfZAOzv6uypsqmLKj
         2ekzNhEChrpqqVJK1pGUEoaWJKYNLRr/2Sqk2Tk0H/cd/RkeiXfDkp3pwdzwbgYm6Wfp
         69Y4jKdyZ28CZGjgvpdMnVGYQmU01Wqmv+RvUFkxdoCv2d62e+W+7k3I8Wv+Xbs5lFAq
         MFscb+taVqHZr78H12pABQy3zQg7/vVeFhKyWZviJN28qQxs1sdPCIhXOPTwYbJ/dO11
         DZJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:in-reply-to:references
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jqXyTUaf51WkfgerUx+xfr/92vTIYImFaWe/o85ieLg=;
        b=I6quV1+Zb8tsjp5Gzf9bFXdTW49vbuS2mvv/EBNY1N3yNXCViLrqBQ8TgVBi3AqHqn
         /BrRaA7GLvQu15vGwFnPA2BUJm+6S/ZSbjh1UxR/Id1zsSCgGXvpIrfL74KoynduF9uY
         X7Jlj6nLIqkhg7XXaROWcAiSqoddka08+G4m6Ce5hreDsC3n3Qn3dx/h5ESXgljqrNoR
         0oK/jyBDzqivGGAi+tzSt0H0r8aUYnKDXzzEoKCsF1d943uxBS3u82er7yPua/CJQ8st
         OuId/IcIOtr8a1evZK6i5qUq2D1wd8GYmtuS/EU6rmZZKCPOce5uACkyq5ZXrJChtRni
         8bJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jqXyTUaf51WkfgerUx+xfr/92vTIYImFaWe/o85ieLg=;
        b=j30Bot5a07ptSaUggNZw/vaIhX0/kzUvauWoLyBHff/zV6r1Ekxwe+jwQy1uxOEd02
         P86VURAeOMc+OtoR30WAVrHzr4w76MXjPVGfF+cG36e+agFpP5f7DDiGXcgiGzfgHQLM
         G3w/bQjY3/okiZQaO7s12W4dDYvDy1pdpVoAJ6OchMj6+lSOi0qqJX5XTne1P6EVD+SR
         N96HvGUWyHEY7LHoRDSdqBXRoBbc8nU6NIFiY51V+CugG+ukQ9qP+98OGqJy6KRpEkd4
         5EF3JD5HIeaFYTe9RXxo2TBhCeXsE2RDFOkyKlKZleonNlEsqy6Nhr1nunEpnymI51h0
         XekQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUHRK/uz7Y3L0IAqusU9xClQc/S9TaCsbT0HB8cBqMayiR4rgp7
	+q7jkw7q+d9zS7uv/iHD9bM=
X-Google-Smtp-Source: APXvYqzHRaLmCKmHHFam965BN1SR9z4M7tKQfcg/nLAwi4q0C1tgLA9HdIGdXLf7y3+T5jiXyrexHQ==
X-Received: by 2002:a17:902:2983:: with SMTP id h3mr75530670plb.267.1558650674367;
        Thu, 23 May 2019 15:31:14 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:244a:: with SMTP id h68ls321824pje.1.gmail; Thu, 23
 May 2019 15:31:13 -0700 (PDT)
X-Received: by 2002:a17:902:8bc1:: with SMTP id r1mr35302751plo.163.1558650673888;
        Thu, 23 May 2019 15:31:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558650673; cv=none;
        d=google.com; s=arc-20160816;
        b=RjfiNUpUdCZXca8IdJsIVtU0oS+gZk+i+bWcRnhl8lng1dDCcgkQ35NJsXh/Xn4lxf
         +hqg3XFsSePjHSmXCNNhJLkrpnmqyqSlBoEGIn2kJdnF3nwDUGjov2gQJBlB6GROVpZP
         41xAHiUaGG1MGrtMfiGWkqSwH+Li92cMzJJmU+Emq23ggm6Kv2yv2GPO6jDEigHT4GcN
         rMbjcmi7n8g/vbSZ96W1SHOFLHqEiDM1HfKQJC52AwBm4pnwlmLF6SHFsy+EDa0M7SPa
         /QGiETakpmn0oIymhQXCBoO9sdZi0N3rL9mFh4hq++B03pI2S0/U4RHUDMONwbsFAV+F
         QM9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:cc:to:from;
        bh=b4aiwSF87XFaDeotRSjf62zFlBsljvKI+9RFzW+QUVU=;
        b=Xy+NBBfopwr1cK/sB87Ua3J0zjgrBSM9f7ovZ9pZOAOWsJv1acgAgv+v22e2S/F0wT
         +jht56hdqroKdlDNID717BPp5xsnQVN+yFyGcCeuNGhs3E/UFUCrPU+pG9S2derkdiRs
         AGS27OTFDriT7Pgn+sZNJyQIxXTFTa1yKRyXJ04qwfe0dWoaXKmBY44fmbO/p2/xTmob
         m3IhW802e/Y+icv8x4DMaf2vc7Lqld0K2+GNEPjYhMfwHmMNsYK/prQnYbon/n9vGnkp
         YXVcaRBvlip0hLRDaylvAO5q3117ffDwJWRdtIr1FOgPW49GGHeUdRuLernWFv60Zh+d
         06dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id q6si61437pjb.1.2019.05.23.15.31.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 15:31:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEs-00062V-Ex; Thu, 23 May 2019 16:31:12 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEq-0001SQ-IC; Thu, 23 May 2019 16:31:04 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org,
	iommu@lists.linux-foundation.org,
	linux-kselftest@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>,
	Joerg Roedel <joro@8bytes.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Eric Pilmore <epilmore@gigaio.com>,
	Logan Gunthorpe <logang@deltatee.com>
Date: Thu, 23 May 2019 16:30:59 -0600
Message-Id: <20190523223100.5526-10-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523223100.5526-1-logang@deltatee.com>
References: <20190523223100.5526-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-ntb@googlegroups.com, iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-kselftest@vger.kernel.org, jdmason@kudzu.us, joro@8bytes.org, bhelgaas@google.com, dave.jiang@intel.com, allenbh@gmail.com, fancer.lancer@gmail.com, epilmore@gigaio.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 09/10] NTB: Add MSI interrupt support to ntb_transport
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as
 permitted sender) smtp.mailfrom=gunthorp@deltatee.com
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

Introduce the module parameter 'use_msi' which, when set, uses
MSI interrupts instead of doorbells for each queue pair (QP). The
parameter is only available if NTB MSI support is configured into
the kernel. We also require there to be more than one memory window
(MW) so that an extra one is available to forward the APIC region.

To use MSIs, we request one interrupt per QP and forward the MSI address
and data to the peer using scratch pad registers (SPADS) above the MW
SPADS. (If there are not enough SPADS the MSI interrupt will not be used.)

Once registered, we simply use ntb_msi_peer_trigger and the receiving
ISR simply queues up the rxc_db_work for the queue.

This addition can significantly improve performance of ntb_transport.
In a simple, untuned, apples-to-apples comparision using ntb_netdev
and iperf with switchtec hardware, I see 3.88Gb/s without MSI
interrupts and 14.1Gb/s wit MSI, which is a more than 3x improvement.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
---
 drivers/ntb/ntb_transport.c | 169 +++++++++++++++++++++++++++++++++++-
 1 file changed, 168 insertions(+), 1 deletion(-)

diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
index d4f39ba1d976..f1cf0942cb99 100644
--- a/drivers/ntb/ntb_transport.c
+++ b/drivers/ntb/ntb_transport.c
@@ -93,6 +93,12 @@ static bool use_dma;
 module_param(use_dma, bool, 0644);
 MODULE_PARM_DESC(use_dma, "Use DMA engine to perform large data copy");
 
+static bool use_msi;
+#ifdef CONFIG_NTB_MSI
+module_param(use_msi, bool, 0644);
+MODULE_PARM_DESC(use_msi, "Use MSI interrupts instead of doorbells");
+#endif
+
 static struct dentry *nt_debugfs_dir;
 
 /* Only two-ports NTB devices are supported */
@@ -188,6 +194,11 @@ struct ntb_transport_qp {
 	u64 tx_err_no_buf;
 	u64 tx_memcpy;
 	u64 tx_async;
+
+	bool use_msi;
+	int msi_irq;
+	struct ntb_msi_desc msi_desc;
+	struct ntb_msi_desc peer_msi_desc;
 };
 
 struct ntb_transport_mw {
@@ -221,6 +232,10 @@ struct ntb_transport_ctx {
 	u64 qp_bitmap;
 	u64 qp_bitmap_free;
 
+	bool use_msi;
+	unsigned int msi_spad_offset;
+	u64 msi_db_mask;
+
 	bool link_is_up;
 	struct delayed_work link_work;
 	struct work_struct link_cleanup;
@@ -667,6 +682,114 @@ static int ntb_transport_setup_qp_mw(struct ntb_transport_ctx *nt,
 	return 0;
 }
 
+static irqreturn_t ntb_transport_isr(int irq, void *dev)
+{
+	struct ntb_transport_qp *qp = dev;
+
+	tasklet_schedule(&qp->rxc_db_work);
+
+	return IRQ_HANDLED;
+}
+
+static void ntb_transport_setup_qp_peer_msi(struct ntb_transport_ctx *nt,
+					    unsigned int qp_num)
+{
+	struct ntb_transport_qp *qp = &nt->qp_vec[qp_num];
+	int spad = qp_num * 2 + nt->msi_spad_offset;
+
+	if (!nt->use_msi)
+		return;
+
+	if (spad >= ntb_spad_count(nt->ndev))
+		return;
+
+	qp->peer_msi_desc.addr_offset =
+		ntb_peer_spad_read(qp->ndev, PIDX, spad);
+	qp->peer_msi_desc.data =
+		ntb_peer_spad_read(qp->ndev, PIDX, spad + 1);
+
+	dev_dbg(&qp->ndev->pdev->dev, "QP%d Peer MSI addr=%x data=%x\n",
+		qp_num, qp->peer_msi_desc.addr_offset, qp->peer_msi_desc.data);
+
+	if (qp->peer_msi_desc.addr_offset) {
+		qp->use_msi = true;
+		dev_info(&qp->ndev->pdev->dev,
+			 "Using MSI interrupts for QP%d\n", qp_num);
+	}
+}
+
+static void ntb_transport_setup_qp_msi(struct ntb_transport_ctx *nt,
+				       unsigned int qp_num)
+{
+	struct ntb_transport_qp *qp = &nt->qp_vec[qp_num];
+	int spad = qp_num * 2 + nt->msi_spad_offset;
+	int rc;
+
+	if (!nt->use_msi)
+		return;
+
+	if (spad >= ntb_spad_count(nt->ndev)) {
+		dev_warn_once(&qp->ndev->pdev->dev,
+			      "Not enough SPADS to use MSI interrupts\n");
+		return;
+	}
+
+	ntb_spad_write(qp->ndev, spad, 0);
+	ntb_spad_write(qp->ndev, spad + 1, 0);
+
+	if (!qp->msi_irq) {
+		qp->msi_irq = ntbm_msi_request_irq(qp->ndev, ntb_transport_isr,
+						   KBUILD_MODNAME, qp,
+						   &qp->msi_desc);
+		if (qp->msi_irq < 0) {
+			dev_warn(&qp->ndev->pdev->dev,
+				 "Unable to allocate MSI interrupt for qp%d\n",
+				 qp_num);
+			return;
+		}
+	}
+
+	rc = ntb_spad_write(qp->ndev, spad, qp->msi_desc.addr_offset);
+	if (rc)
+		goto err_free_interrupt;
+
+	rc = ntb_spad_write(qp->ndev, spad + 1, qp->msi_desc.data);
+	if (rc)
+		goto err_free_interrupt;
+
+	dev_dbg(&qp->ndev->pdev->dev, "QP%d MSI %d addr=%x data=%x\n",
+		qp_num, qp->msi_irq, qp->msi_desc.addr_offset,
+		qp->msi_desc.data);
+
+	return;
+
+err_free_interrupt:
+	devm_free_irq(&nt->ndev->dev, qp->msi_irq, qp);
+}
+
+static void ntb_transport_msi_peer_desc_changed(struct ntb_transport_ctx *nt)
+{
+	int i;
+
+	dev_dbg(&nt->ndev->pdev->dev, "Peer MSI descriptors changed");
+
+	for (i = 0; i < nt->qp_count; i++)
+		ntb_transport_setup_qp_peer_msi(nt, i);
+}
+
+static void ntb_transport_msi_desc_changed(void *data)
+{
+	struct ntb_transport_ctx *nt = data;
+	int i;
+
+	dev_dbg(&nt->ndev->pdev->dev, "MSI descriptors changed");
+
+	for (i = 0; i < nt->qp_count; i++)
+		ntb_transport_setup_qp_msi(nt, i);
+
+	ntb_peer_db_set(nt->ndev, nt->msi_db_mask);
+}
+
 static void ntb_free_mw(struct ntb_transport_ctx *nt, int num_mw)
 {
 	struct ntb_transport_mw *mw = &nt->mw_vec[num_mw];
@@ -905,6 +1028,20 @@ static void ntb_transport_link_work(struct work_struct *work)
 	int rc = 0, i, spad;
 
 	/* send the local info, in the opposite order of the way we read it */
+
+	if (nt->use_msi) {
+		rc = ntb_msi_setup_mws(ndev);
+		if (rc) {
+			dev_warn(&pdev->dev,
+				 "Failed to register MSI memory window: %d\n",
+				 rc);
+			nt->use_msi = false;
+		}
+	}
+
+	for (i = 0; i < nt->qp_count; i++)
+		ntb_transport_setup_qp_msi(nt, i);
+
 	for (i = 0; i < nt->mw_count; i++) {
 		size = nt->mw_vec[i].phys_size;
 
@@ -962,6 +1099,7 @@ static void ntb_transport_link_work(struct work_struct *work)
 		struct ntb_transport_qp *qp = &nt->qp_vec[i];
 
 		ntb_transport_setup_qp_mw(nt, i);
+		ntb_transport_setup_qp_peer_msi(nt, i);
 
 		if (qp->client_ready)
 			schedule_delayed_work(&qp->link_work, 0);
@@ -1135,6 +1273,19 @@ static int ntb_transport_probe(struct ntb_client *self, struct ntb_dev *ndev)
 		return -ENOMEM;
 
 	nt->ndev = ndev;
+
+	/*
+	 * If we are using MSI, and have at least one extra memory window,
+	 * we will reserve the last MW for the MSI window.
+	 */
+	if (use_msi && mw_count > 1) {
+		rc = ntb_msi_init(ndev, ntb_transport_msi_desc_changed);
+		if (!rc) {
+			mw_count -= 1;
+			nt->use_msi = true;
+		}
+	}
+
 	spad_count = ntb_spad_count(ndev);
 
 	/* Limit the MW's based on the availability of scratchpads */
@@ -1148,6 +1299,8 @@ static int ntb_transport_probe(struct ntb_client *self, struct ntb_dev *ndev)
 	max_mw_count_for_spads = (spad_count - MW0_SZ_HIGH) / 2;
 	nt->mw_count = min(mw_count, max_mw_count_for_spads);
 
+	nt->msi_spad_offset = nt->mw_count * 2 + MW0_SZ_HIGH;
+
 	nt->mw_vec = kcalloc_node(mw_count, sizeof(*nt->mw_vec),
 				  GFP_KERNEL, node);
 	if (!nt->mw_vec) {
@@ -1178,6 +1331,12 @@ static int ntb_transport_probe(struct ntb_client *self, struct ntb_dev *ndev)
 	qp_bitmap = ntb_db_valid_mask(ndev);
 
 	qp_count = ilog2(qp_bitmap);
+	if (nt->use_msi) {
+		qp_count -= 1;
+		nt->msi_db_mask = 1 << qp_count;
+		ntb_db_clear_mask(ndev, nt->msi_db_mask);
+	}
+
 	if (max_num_clients && max_num_clients < qp_count)
 		qp_count = max_num_clients;
 	else if (nt->mw_count < qp_count)
@@ -1601,7 +1760,10 @@ static void ntb_tx_copy_callback(void *data,
 
 	iowrite32(entry->flags | DESC_DONE_FLAG, &hdr->flags);
 
-	ntb_peer_db_set(qp->ndev, BIT_ULL(qp->qp_num));
+	if (qp->use_msi)
+		ntb_msi_peer_trigger(qp->ndev, PIDX, &qp->peer_msi_desc);
+	else
+		ntb_peer_db_set(qp->ndev, BIT_ULL(qp->qp_num));
 
 	/* The entry length can only be zero if the packet is intended to be a
 	 * "link down" or similar.  Since no payload is being sent in these
@@ -2268,6 +2430,11 @@ static void ntb_transport_doorbell_callback(void *data, int vector)
 	u64 db_bits;
 	unsigned int qp_num;
 
+	if (ntb_db_read(nt->ndev) & nt->msi_db_mask) {
+		ntb_transport_msi_peer_desc_changed(nt);
+		ntb_db_clear(nt->ndev, nt->msi_db_mask);
+	}
+
 	db_bits = (nt->qp_bitmap & ~nt->qp_bitmap_free &
 		   ntb_db_vector_mask(nt->ndev, vector));
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190523223100.5526-10-logang%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
