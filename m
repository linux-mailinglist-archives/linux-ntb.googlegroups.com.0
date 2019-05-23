Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBLV6TTTQKGQEJ2XYETA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C83928CEF
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 00:31:11 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id 72sf3527061otv.23
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:31:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558650670; cv=pass;
        d=google.com; s=arc-20160816;
        b=iB65+XHA5/m7L2xaYg06LDQRhL8K0oIjZv46Wf49ioiEZMGS35VT4OpgVJ7g6TBl7S
         OrZDpoUx8pT9PnlzvlY4S9+W+R5pvhdBNAtlb5g7K5CW93LtQ/ThQlYGL48enyK1bBXF
         du+QmpvcJgG6mTksyi0l/bu7REor7K0xG0uSX2vV3iOFo7aJN/yluoGPn8HElNMJNli+
         +3wFF1hjPSmgysyWKwu06glUNsC6fRoAhfVvwr+ZTL/j4sZXGN0Bkt8KTiSPYyMOO9m9
         P5stg7Y8RNyETH6niZ+d1+yLGNkc9SRb4Tin8XBMsRkf7csPua6qPiFzQea0zuIB7spV
         PHnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:references
         :in-reply-to:message-id:date:cc:to:from:sender:dkim-signature;
        bh=QpLRNlfeXDqisr08XhxH469HncLvYB7CGO5HNfbA7hI=;
        b=A4vZ9eGhd9DahBDKWjmxFWyYipJi2DMhtP86UTh6s+FSk/jRPEq364nxZNzBPaUWI4
         5O8DjQN6kqyz/bZ5HhtTBsz7ZkjHeCcGtyEe1iwYvVTrWcZ8KZONhWjcmpTXGkeUSetp
         C/g1MnleSf+Xy+V1DwfpeFl/h4FR64VgQKP1v0/GimJ/BDeinu5nRxSSw8VniGd15UTq
         4VDkwnPpUXDv4yBMNa64g7eZt92e7A4OR8mpVi+tLPA54sSl8n/IgC/P83Ou5XA7QarZ
         o/bD1JpLmL5rdt9vnQ1zm2xYGOrbwPobl4oF54avbMxxBAfZlTrBkALBDRV7viLCDRD6
         u3ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:in-reply-to:references
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QpLRNlfeXDqisr08XhxH469HncLvYB7CGO5HNfbA7hI=;
        b=Vok9f7NS5euGlawdGIumcP1SSADmsoJcRliuC26j8mmRAKwp0ZxP+B4EOWaBxltOT6
         uLkvAdZEo4Ewo1qBANN/xq+rFmxWapeMoJHTmlsJ/KmXxYO+YCrFl9GJv/spM0XJBrRH
         LeupTTzDoF4LKMIXv1nuJGHbbSXCxhgB9hdMqmlPcePMgA+FiObN3qPg/+quzJFwyne9
         apFsBrgCQO9wDeUBrnA61lY7LXexX0aPZqC+QzqrLOS0K4+4tSAREUjuBR3Qy+LdmVg6
         D6HCdRCHBzwanI9JI7Ho2ngJbPPInuAJOL9nKeDg3tOYV9p54J29eRLUuXGI5JZBPMch
         SUcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QpLRNlfeXDqisr08XhxH469HncLvYB7CGO5HNfbA7hI=;
        b=D52yZxAJVh1sxfyNv2HwN0anZQs704oKplsW/HlUBVxtQDRq8PJcL2ZbgvYJc7XQjy
         LQ9p9qpDdenwcfQV/xpWctmN86Yynp342AKIdSpckVSHyET1/RMMza54O/uCejWr28vO
         iJ0GFMOyvxUJBDJ+EQcrQvqrmkX5Wz8lKDupo47LVhvAJidwY8JHdJ6ASe263IZ44Myp
         D6sxfQQwfeAvwhCJDLjoQ37UYRlPx+fZ0rF5uB0s9hJn0IyrSAA4kT3xbhu1QMPtzy7H
         7tYwgy385xiBZpm8fE0zVqtC5DijKrqd27aqX8mFVEVQ0DKhaSDUAwXujNTjytO4abiJ
         A9dw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV3Z4lSJ78sXo/iAE/tYraTYtNZ100q7qUZjyNIxfIxBwFqQ1r4
	ktEF3Many/T8jjcx94BSIGA=
X-Google-Smtp-Source: APXvYqy5HYKl5gNywBIivpLulNvM8QjZgP+VU8KTZyhggUJer2bA7X3v9mvKljShtlcmt1JZbDLVOg==
X-Received: by 2002:a9d:400d:: with SMTP id m13mr24886506ote.100.1558650670427;
        Thu, 23 May 2019 15:31:10 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:aa0a:: with SMTP id t10ls1175355oie.3.gmail; Thu, 23 May
 2019 15:31:10 -0700 (PDT)
X-Received: by 2002:aca:aa48:: with SMTP id t69mr4430318oie.114.1558650670081;
        Thu, 23 May 2019 15:31:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558650670; cv=none;
        d=google.com; s=arc-20160816;
        b=LS3huqVpa+SrgW0hWuWN/CdNzd3ZkXXGHTl2w7UKRGN2GAyZXVLIE0ySqKgA2Ax3Vu
         CzmyVtEgLF0wJAka5cjo1Hk1EJZm9bjEYZZSRdzP81S+YmVU/fjlJ2mOd2ct9VhLGFiB
         hZBgO0B6uj5vSd5KPU2XIVxWXQf74N4Q2b+of4MfxPGghAZU5xJLAVCs7VqMZ4xEjZ89
         9ZzFl9l3Y/4Y3ZlVZOAMT5ciQM2NTXZp+bThDG7TDoDmI4aJb53gupbF33K6z1RxAV78
         G6ktssbgHW6urKB6ZrSfBCqg+X3MZG7AQzXXrvNlljQTRc6g6rVmu7pCziu44sOGkjmV
         pbug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:cc:to:from;
        bh=XlhI1rNIjA5uJO3eODwEg7sbGScBX0erlsPhhLUzj9g=;
        b=EN9UYyJo86lMkg2Xh0jfAy7ZVxNoIl7BYlXdtZe8HwN/HAALw9qZ1QCaUiJRqzRTtV
         ONoLjH/l+ZiWkaW1L+HoXKecb785g8IYkAlipXAxYPZyeOJRiVZIDIisLp4sd0/PRp+R
         Rkkz8hBpe1Sl/IammLwFKM99jDTphFoKKfI6TLZ6sdmTVmepAXWOOlEREN/PhW30v9wT
         pMCOEPX5GbVnhCH5Oo6qEAGraQCECw4s2fD+glW4WFWk4NZHfETbopM073WCuGPgBi+P
         /uXtN3DMDUKABdiP2mT+vaRveaEZowGiAcMNqf75UUSMPcn/N+JX0eg2XtPlcVPoROLn
         kdkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id i206si33497oib.1.2019.05.23.15.31.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 15:31:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEs-00062O-Eu; Thu, 23 May 2019 16:31:08 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEp-0001S5-Qq; Thu, 23 May 2019 16:31:03 -0600
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
Date: Thu, 23 May 2019 16:30:52 -0600
Message-Id: <20190523223100.5526-3-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523223100.5526-1-logang@deltatee.com>
References: <20190523223100.5526-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-ntb@googlegroups.com, iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-kselftest@vger.kernel.org, jdmason@kudzu.us, joro@8bytes.org, bhelgaas@google.com, dave.jiang@intel.com, allenbh@gmail.com, fancer.lancer@gmail.com, epilmore@gigaio.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 02/10] PCI/switchtec: Add module parameter to request more interrupts
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

Seeing the we want to use more interrupts in the NTB MSI code
we need to be able allocate more (sometimes virtual) interrupts
in the switchtec driver. Therefore add a module parameter to
request to allocate additional interrupts.

This puts virtually no limit on the number of MSI interrupts available
to NTB clients.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/switch/switchtec.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/switch/switchtec.c b/drivers/pci/switch/switchtec.c
index e22766c79fe9..8b1db78197d9 100644
--- a/drivers/pci/switch/switchtec.c
+++ b/drivers/pci/switch/switchtec.c
@@ -30,6 +30,10 @@ module_param(use_dma_mrpc, bool, 0644);
 MODULE_PARM_DESC(use_dma_mrpc,
 		 "Enable the use of the DMA MRPC feature");
 
+static int nirqs = 32;
+module_param(nirqs, int, 0644);
+MODULE_PARM_DESC(nirqs, "number of interrupts to allocate (more may be useful for NTB applications)");
+
 static dev_t switchtec_devt;
 static DEFINE_IDA(switchtec_minor_ida);
 
@@ -1247,8 +1251,12 @@ static int switchtec_init_isr(struct switchtec_dev *stdev)
 	int dma_mrpc_irq;
 	int rc;
 
-	nvecs = pci_alloc_irq_vectors(stdev->pdev, 1, 4,
-				      PCI_IRQ_MSIX | PCI_IRQ_MSI);
+	if (nirqs < 4)
+		nirqs = 4;
+
+	nvecs = pci_alloc_irq_vectors(stdev->pdev, 1, nirqs,
+				      PCI_IRQ_MSIX | PCI_IRQ_MSI |
+				      PCI_IRQ_VIRTUAL);
 	if (nvecs < 0)
 		return nvecs;
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190523223100.5526-3-logang%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
