Return-Path: <linux-ntb+bncBDXYVT6AR4MRBIGC5H3AKGQEQEOHNUI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4E11EFC45
	for <lists+linux-ntb@lfdr.de>; Fri,  5 Jun 2020 17:13:37 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id a16sf1040941iow.9
        for <lists+linux-ntb@lfdr.de>; Fri, 05 Jun 2020 08:13:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591370017; cv=pass;
        d=google.com; s=arc-20160816;
        b=mSuFCK4Nlf+BFePYm3FVzn3jD7YBS5bGZYO9wXxJNM8jAMr0PVbpmpGnoZ7SjohDUu
         30gvdgmo8V/bXuV3g2Xij91+D5CL2rr/wYXD+eLcmXb+tPyeCv6nLO+YYxdQyrc+uvpW
         lFKK3BOG4az4Jf5WIDRk89P1GgOqMdmEGCnLqMnKu4IVstdVRukIZ0QqzPDDhuz+cgLT
         2QDGPoX28bPVPlxV/E49maguGca+v5YNm17jmAT3DGSZfDDf0YPMYYGNckaKYvezWyYF
         7t6F6WHrRFNZeB6K/rTIv0qfKBF6lZvWjuEgYMYuEo5QlUVRInTjmEpaiqTi3UvOOrOj
         6Pcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :date:cc:to:from:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=M93kt0nFZqnYUkVOBQ51vffbHfT3wBdCF/+cgmVlt58=;
        b=EE93Pc4LGOV00bHeiV0dJsbNEAKnhIQXjmfZa/3jDIZunkaMVOuk7+L5dlhMDhZjJo
         yGIYU/zQqAmvh+4gRR80QKVUj3NHRAMa8+XIcd2M7rHYF2IWf7wwjt9Jqi1BlAF3EtQ/
         SYbfYURjxVK9Gh6J4KX5klaQuD20f2XEgqR2VsmvCzk0zW3t2l+u6NYjXbuvcNdVh7WW
         I9E/Zac/+FSyCPB1AhKafPAfQnE1onFwUwnVBUPx5VwNzBiaMz8xr+5cYzbypP93og36
         jcz+SjhH7NEwwd087nc/AkxRUVe8lBfWqDfAQ8VzjVurKbYH2ljhHZy5VYcRfTtbBUB5
         npFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:from:to:cc:date:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M93kt0nFZqnYUkVOBQ51vffbHfT3wBdCF/+cgmVlt58=;
        b=jbtzoGImmwev87Sgen/Tx9tJrV291y+SVMTQtfahPEYWbHWgYrL61XIIOAq5XOoQtj
         fGrV4jRuYRY3uLS8rWAuWPZEQPGl+TRaN78xWw6GGCe7Dac02GsQdo0hZPwk0947N4/y
         eMm0+icbVqT8Y0ek4V5ClEEYdPyQvDwWqvhRNP5ozbrIzAQwuaKomdyCTlNVagIDF6H7
         MMKaK5wH77r5wMAeIAN62WObQ8LcrO61nldO6TrzZrTBxfdShc+jtJGQ1LP6TucXUDc0
         0PS54ir7IQQFVSGdP1M/k1lPVQIWw1+SJkn9B++1WjUmH9lAR0nK1Zg0ffIeLFsGMgFM
         9rJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:from:to
         :cc:date:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M93kt0nFZqnYUkVOBQ51vffbHfT3wBdCF/+cgmVlt58=;
        b=KrCUqCbDNzPcKkoyzLbNhyDLyD19bTWLdbZe+rGSCsuMGbl51IIEmY+a3qZYIE6e+2
         jLKECMGciEOawPtYeCV8Oqcz1v8jF6LU7/Rzb5GpErJ79kxOymEamETkpYGgn2gQ7wDD
         AZw8HDr4T5Qt+0HisHvt8CEdLh0o6t9Rp9gFuRCW0ap8+o1taFZE5YRdDroOGBlxBdiw
         gDjudCbxXcYQQlML0JyJzqi/LeX8Fb2zqAAfmerXvWtXwP+Ov7sBEnHv0A6Ql5z60wJz
         w4DF+i1TVjJLjDsvKW9vqrdL2QV39GepGLyuR+a5UMpI+Hh8G21J+6eby/dO63IlKpxj
         vTsQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533Jn/rgXXWyRDLue5+fk37YS6ZSVN9NrDUGKVbfBGeBIRfrq2i3
	4QkJjHBmSb/B3Len+Dnn9aI=
X-Google-Smtp-Source: ABdhPJyBY76NHt+m3K5EeCWHBys8T3XITtFzTSfwrVc9gCFV2ZRiz6O2lt/NMNrfDqaooP45NKduuA==
X-Received: by 2002:a92:b111:: with SMTP id t17mr9014357ilh.241.1591370016865;
        Fri, 05 Jun 2020 08:13:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:2b81:: with SMTP id r1ls1592738iov.11.gmail; Fri,
 05 Jun 2020 08:13:36 -0700 (PDT)
X-Received: by 2002:a6b:d617:: with SMTP id w23mr8755681ioa.188.1591370016485;
        Fri, 05 Jun 2020 08:13:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591370016; cv=none;
        d=google.com; s=arc-20160816;
        b=YtwdMVe1RseQG4aXc/Zp/eTeoCr7/v7v2CMaB7+bBDxOfcaTCMNHl/e1nOCw1wlMP7
         /EgMuawNUEXYMvqjeMVHm7y1pTiBkaMeW3aR6XBwLppg9zQdXG+IQpOx8hciY4bZDhC5
         ojHL0zLQoeuyswtvn9vIsk3x2KfMgC87pBhfs2H6lqUDVlp3PuYDQdOCIODRYQuJv/yF
         Vg5yiPb6irBoGeIYWq6fBzqxYlvwTzAccdFnpWyTzqvOi6zCd80ablkN9SfHHjyG09tw
         EY5LfXKOzeESebuZKOkvFWjILoDtV0RzlS31gk5LQySyoe9kn0tOQ4MHLtkzgz5yPCFC
         kFNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:ironport-sdr:ironport-sdr;
        bh=kPpbfNCvJ0YAL/aAUeL21kpb+kwbWhpLLvFnsy3eyfQ=;
        b=TviG6HOintz1RPx06aHrhzq5eO52HXldQ7cw9gOwlFPYbHOmxAcsWlDB51QcL846kI
         VQDUFv4d+nH2FnhuhY/B9btovArokVafx1a2Gk1t3doYKufhkkThIps0CPDnPYjFrCPC
         LwsAiPnJUrlCyj08KR7L9z0mizZX8IpTQifpk2XPsdEVuZrsg/tRkH6zmPQ30zcSSqdh
         tmrdpyAmxv8z7Hqtn3xwFC0540ueTPyu4OTR6TMd75065o364GAeqWFZymvoV1xIZkj5
         GAbZl/Sd9nelO46YJuzUmQPaZQjFNNC+7/5482YYp6y9Dxfxz3LqMRFZs6aI5ym8GAMi
         dARw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id i13si319034ilj.2.2020.06.05.08.13.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2020 08:13:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: mo2AMyhzZIHITK1DvckeVT/QhE+qck9czcAcBu3sMe++UwwnwBIwcUcnxGnEKvlh8Qo2FPovp0
 NdY3ATTJQfUg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2020 08:13:34 -0700
IronPort-SDR: LMVwcgJhyFkYAwt5Ndbs52HTR5erDbw5n7ECBJk416N48vwnoToacVG16NpMZh9rezcW4e4xOe
 8KwggLXKeV+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; 
   d="scan'208";a="471823049"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by fmsmga006.fm.intel.com with ESMTP; 05 Jun 2020 08:13:34 -0700
Subject: [PATCH] ntb: intel: add hw workaround for NTB BAR alignment
From: Dave Jiang <dave.jiang@intel.com>
To: jdmason@kudzu.us
Cc: allenbh@gmail.com, linux-ntb@googlegroups.com
Date: Fri, 05 Jun 2020 08:13:34 -0700
Message-ID: <159136975973.3747.12027781316842006922.stgit@djiang5-desk3.ch.intel.com>
User-Agent: StGit/unknown-version
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Add NTB_HWERR_BAR_ALIGN hw errata flag to work around issue where the
aligment for the XLAT base must be BAR size aligned rather than 4k page
aligned. On ICX platform, the XLAT base can be 4k page size aligned
rather than BAR size aligned unlike the previous gen Intel NTB. However,
a silicon errata prevented this from working as expected and a workaround
is introduced to resolve the issue.

Signed-off-by: Dave Jiang <dave.jiang@intel.com>
---

Jon,
Please replace the submiitted patch ("ntb: intel: add revision lockdown for
Icelake NTB driver") with this one. Thanks!

 drivers/ntb/hw/intel/ntb_hw_gen1.h |    1 
 drivers/ntb/hw/intel/ntb_hw_gen4.c |   78 ++++++++++++++++++++++++++++++------
 drivers/ntb/hw/intel/ntb_hw_gen4.h |   13 ++++++
 3 files changed, 79 insertions(+), 13 deletions(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.h b/drivers/ntb/hw/intel/ntb_hw_gen1.h
index 544cf5c06f4d..1b759942d8af 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen1.h
+++ b/drivers/ntb/hw/intel/ntb_hw_gen1.h
@@ -140,6 +140,7 @@
 #define NTB_HWERR_SB01BASE_LOCKUP	BIT_ULL(1)
 #define NTB_HWERR_B2BDOORBELL_BIT14	BIT_ULL(2)
 #define NTB_HWERR_MSIX_VECTOR32_BAD	BIT_ULL(3)
+#define NTB_HWERR_BAR_ALIGN		BIT_ULL(4)
 
 extern struct intel_b2b_addr xeon_b2b_usd_addr;
 extern struct intel_b2b_addr xeon_b2b_dsd_addr;
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.c b/drivers/ntb/hw/intel/ntb_hw_gen4.c
index 77001ffe4efa..7e3cdccfec7e 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen4.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.c
@@ -223,6 +223,9 @@ int gen4_init_dev(struct intel_ntb_dev *ndev)
 
 	ndev->reg = &gen4_reg;
 
+	if (pdev_is_ICX(pdev))
+		ndev->hwerr_flags |= NTB_HWERR_BAR_ALIGN;
+
 	ppd1 = ioread32(ndev->self_mmio + GEN4_PPD1_OFFSET);
 	ndev->ntb.topo = gen4_ppd_topo(ndev, ppd1);
 	dev_dbg(&pdev->dev, "ppd %#x topo %s\n", ppd1,
@@ -388,9 +391,14 @@ static int intel_ntb4_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
 	else
 		mw_size = bar_size;
 
-	/* hardware requires that addr is aligned to bar size */
-	if (addr & (bar_size - 1))
-		return -EINVAL;
+	if (ndev->hwerr_flags & NTB_HWERR_BAR_ALIGN) {
+		/* hardware requires that addr is aligned to bar size */
+		if (addr & (bar_size - 1))
+			return -EINVAL;
+	} else {
+		if (addr & (PAGE_SIZE - 1))
+			return -EINVAL;
+	}
 
 	/* make sure the range fits in the usable mw size */
 	if (size > mw_size)
@@ -399,7 +407,6 @@ static int intel_ntb4_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
 	mmio = ndev->self_mmio;
 	xlat_reg = ndev->xlat_reg->bar2_xlat + (idx * 0x10);
 	limit_reg = ndev->xlat_reg->bar2_limit + (idx * 0x10);
-	idx_reg = ndev->xlat_reg->bar2_idx + (idx * 0x2);
 	base = pci_resource_start(ndev->ntb.pdev, bar);
 
 	/* Set the limit if supported, if size is not mw_size */
@@ -433,16 +440,19 @@ static int intel_ntb4_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
 
 	dev_dbg(&ntb->pdev->dev, "BAR %d IMXLMT: %#Lx\n", bar, reg_val);
 
-	iowrite16(base_idx, mmio + idx_reg);
-	reg_val16 = ioread16(mmio + idx_reg);
-	if (reg_val16 != base_idx) {
-		iowrite64(base, mmio + limit_reg);
-		iowrite64(0, mmio + xlat_reg);
-		iowrite16(0, mmio + idx_reg);
-		return -EIO;
+	if (ndev->hwerr_flags & NTB_HWERR_BAR_ALIGN) {
+		idx_reg = ndev->xlat_reg->bar2_idx + (idx * 0x2);
+		iowrite16(base_idx, mmio + idx_reg);
+		reg_val16 = ioread16(mmio + idx_reg);
+		if (reg_val16 != base_idx) {
+			iowrite64(base, mmio + limit_reg);
+			iowrite64(0, mmio + xlat_reg);
+			iowrite16(0, mmio + idx_reg);
+			return -EIO;
+		}
+		dev_dbg(&ntb->pdev->dev, "BAR %d IMBASEIDX: %#x\n", bar, reg_val16);
 	}
 
-	dev_dbg(&ntb->pdev->dev, "BAR %d IMBASEIDX: %#x\n", bar, reg_val16);
 
 	return 0;
 }
@@ -517,9 +527,51 @@ static int intel_ntb4_link_disable(struct ntb_dev *ntb)
 	return 0;
 }
 
+int intel_ntb4_mw_get_align(struct ntb_dev *ntb, int pidx, int idx,
+			    resource_size_t *addr_align,
+			    resource_size_t *size_align,
+			    resource_size_t *size_max)
+{
+	struct intel_ntb_dev *ndev = ntb_ndev(ntb);
+	resource_size_t bar_size, mw_size;
+	int bar;
+
+	if (pidx != NTB_DEF_PEER_IDX)
+		return -EINVAL;
+
+	if (idx >= ndev->b2b_idx && !ndev->b2b_off)
+		idx += 1;
+
+	bar = ndev_mw_to_bar(ndev, idx);
+	if (bar < 0)
+		return bar;
+
+	bar_size = pci_resource_len(ndev->ntb.pdev, bar);
+
+	if (idx == ndev->b2b_idx)
+		mw_size = bar_size - ndev->b2b_off;
+	else
+		mw_size = bar_size;
+
+	if (addr_align) {
+		if (ndev->hwerr_flags & NTB_HWERR_BAR_ALIGN)
+			*addr_align = pci_resource_len(ndev->ntb.pdev, bar);
+		else
+			*addr_align = PAGE_SIZE;
+	}
+
+	if (size_align)
+		*size_align = 1;
+
+	if (size_max)
+		*size_max = mw_size;
+
+	return 0;
+}
+
 const struct ntb_dev_ops intel_ntb4_ops = {
 	.mw_count		= intel_ntb_mw_count,
-	.mw_get_align		= intel_ntb_mw_get_align,
+	.mw_get_align		= intel_ntb4_mw_get_align,
 	.mw_set_trans		= intel_ntb4_mw_set_trans,
 	.peer_mw_count		= intel_ntb_peer_mw_count,
 	.peer_mw_get_addr	= intel_ntb_peer_mw_get_addr,
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.h b/drivers/ntb/hw/intel/ntb_hw_gen4.h
index 10f3ddf2ad30..83cd9349cf83 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen4.h
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.h
@@ -46,6 +46,10 @@
 
 #include "ntb_hw_intel.h"
 
+/* Supported PCI device revision range for ICX */
+#define PCI_DEVICE_REVISION_ICX_MIN	0x2
+#define PCI_DEVICE_REVISION_ICX_MAX	0xF
+
 /* Intel Gen4 NTB hardware */
 /* PCIe config space */
 #define GEN4_IMBAR23SZ_OFFSET		0x00c4
@@ -125,4 +129,13 @@ ssize_t ndev_ntb4_debugfs_read(struct file *filp, char __user *ubuf,
 
 extern const struct ntb_dev_ops intel_ntb4_ops;
 
+static inline int pdev_is_ICX(struct pci_dev *pdev)
+{
+	if (pdev_is_gen4(pdev) &&
+	    pdev->revision >= PCI_DEVICE_REVISION_ICX_MIN &&
+	    pdev->revision <= PCI_DEVICE_REVISION_ICX_MAX)
+		return 1;
+	return 0;
+}
+
 #endif

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/159136975973.3747.12027781316842006922.stgit%40djiang5-desk3.ch.intel.com.
