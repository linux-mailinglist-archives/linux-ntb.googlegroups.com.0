Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBL56TTTQKGQERBBXBOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE2028CF0
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 00:31:13 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id z6sf2920392vkd.12
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:31:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558650672; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mq3eMKdZ1U2VXEME9LocZK+mvKKzMJwuk9NzX4OsLtS0mGcukOVm3RcGsrN3GeuYHY
         09yPOcCTw/syu8r6w/dMgOPLFISqGFLHbRLddzMpLhM4MevQE9yATFRblkDXVY4HAxqv
         Z5ypBWZeA+VkkuH7A89tOlsCB5ymkNbm9w5cQ5fLIM/4qHr2NHaCKJBBm6lCHPF0zzgz
         uRHmZf/SZyaoTtLAkQwwWHZfAMcd6LWm6rCu01T6BIlDYkCZTIr++GJqK1f6kY/vOI6y
         b8ypP86kGbr4Y8e3d6l9cstR/EqyfO0mpHCQFXsrBhpRlV/M1W1l4XFT8tB92H1+XO5A
         PzNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:references
         :in-reply-to:message-id:date:cc:to:from:sender:dkim-signature;
        bh=XeR1Ub3s5TDom3GAQOpfSjWUxRRqoHkwV4wEZx6Lw7k=;
        b=SWrtzzcQeULnJj+lGqV8dw9Jsq3AHFvjk0b2NyqxhxzgEQDa4hZIEVDsWoerb5EXQi
         YuHcpTDxE3ZQCxohzDa6OPVvapjjnExuE+daH07E2F77pL4ZWKHLxrftdwLVzY37Vanh
         cOyGeeBBOeFhGvPxjuXfkU+OWUau3LB5sl0c2E9exElvkAVWcJHPUS0i4WAeoQUiWiMt
         CUJ8NsKtmR1VmuAuKsIqkM0aYc2dUK1EA5jGOojhPZW/TGJtU8netG0DH6FHf+yhboUB
         amUNROjfBv9NXKTsCHBNuJfPg0w1g1ltu37Agc5+8EolTchtIx1Kwr/lSBiTs+x2N/hG
         O9XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:in-reply-to:references
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XeR1Ub3s5TDom3GAQOpfSjWUxRRqoHkwV4wEZx6Lw7k=;
        b=Xb/pSUTMdadsfej6oYpfXPkm5NE79FOwfzhkI3Pq0dFAaM7SNKrQA4yDHGPrWsutrY
         BZtWBkd6KUqTVq5oQGZQpnC6i7pX2Eltfm8kEsGTVrNBBELZg4xcrw33M4BlB09XTmoD
         XaY43QSDxGvCbXkK6vzYaCFHHeb5u4nwOq9aG2lnOhNmte2gtwElDk6Z5JahDP2sxsy/
         1qTaEWhcd6aeQrEwAVnfBEvpd2d7U3aUDrXroklvUnBlplEiTHFaV2e5mcxOE18CsQsT
         Fg56kYk6ZNYkkMaRXMK1XCMoq/3MMlghdpy/ueJS0Rg+f1Q1gf0SJsDD1ffZ9oxhefJ9
         IKDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XeR1Ub3s5TDom3GAQOpfSjWUxRRqoHkwV4wEZx6Lw7k=;
        b=cnazx+PNDFxQjzXyTlSDlfGYfBk8G+4rf8+p5Mg5bx35A8shOwWNjHof2UsWeCz5Iz
         wcCBQAdiJhYeSRLNMhhagRjy9j/9saLwoXzrP3Bsx1uhppvFXuWYxzDNMk35KI7fuYMb
         qV09I2nlv+dI4EQz1bMmxTbyltrjiBWmJNYMcehSZu6EC1RzQ+rCxIkINbsN1mfzl2Dx
         2UDolRW2+sSVshPstpORhi2ROqXQ7/VBgJQvZdoDnWJUM/ItdLJ4vVDwRHNrc8LFMnZ6
         CdF1F3CBJf0LoEHhoVPtG8EVbermUgZ+YDGHAVtHsemdQaQ91SWGRKwh4zcDx/QjMvih
         fP4w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAW4FXP2T3CW+tNW09lRPxkeylgRNf+2NY1+gnCjUcQn9L1tPPF7
	qVbGe8TnqOfINcljtqUVVg0=
X-Google-Smtp-Source: APXvYqwoRvhCxUeM2/9JPy+Z54sUcu5uVlwri0l2iIHkY7Ldo0XOBsBO23zinzt6nf6w4qUFy5+vEg==
X-Received: by 2002:a05:6102:105:: with SMTP id z5mr25432893vsq.127.1558650671949;
        Thu, 23 May 2019 15:31:11 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:8dc9:: with SMTP id p192ls714813vsd.10.gmail; Thu, 23
 May 2019 15:31:11 -0700 (PDT)
X-Received: by 2002:a67:dc98:: with SMTP id g24mr38062487vsk.27.1558650671576;
        Thu, 23 May 2019 15:31:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558650671; cv=none;
        d=google.com; s=arc-20160816;
        b=N+6nA4WgsAShw+Lnfung2O/UEvI8+tbF8D4Zu4aBfwviG5U130lSGncOwhoCzNcw8z
         MmzjZ4h+571zG0Y0qscVOp7o0F7MekbiN8L+unQcz2Jucjxwmdg9HgfFkF+5T8yZyKdv
         X8XifV6J0JNBZ5l3qCmjW0Bc6OLY+TK4uFcNlxvQv/Jw1efSWud+cBxWHTr76aSlU/Zg
         AKlibymSqOWAWr4DpgKG2vXHwiMYg5azVf3CZMpo5T3gFF/fCZ+4FW3ksHSC3zU/7b3p
         WfSeIZnspkDyzL/FXAuM1/ar4/AZZhh6rV3+DZIJp4aetsgqO82h5Qd84wjmJkPeS086
         NGrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:cc:to:from;
        bh=ObzSqaO+p8A+z3JUMUNbqyi0bivfnnDy+/B3T5dGFEE=;
        b=FPQ7tFgPd7BIg1TUJDVvpW0nLQa/vTgde7UpJwhjsOu5/y727gyoDTFjjLiVKkkpkx
         VvRXbECt8c3TJsO0exII3SiF7v2+agHVNEr/xCIDUBcypR54djB5uid8+wTE5dmINF/i
         HbWIQW4FrgWS2Tf+JK6+Fx3oE6cOvvoZEOSx/iDyVMhV8PDG+ZvbCnT/7oUraucgfPsE
         lkM//Nw6fm8QMS5CbFuIixgu1zOIlf4CuwSvWJf96MLLuluU4ukTV9LUdz50Nj55ehxe
         pE0ZZSlzyaZguOaDwVeq+Rq3imCXXKArD+j88Usy8En4Ow0CL6eczxtWDIyKoeW71OWS
         wWhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id m21si29058vsj.0.2019.05.23.15.31.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 15:31:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEs-00062N-Eu; Thu, 23 May 2019 16:31:08 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEp-0001S2-Nu; Thu, 23 May 2019 16:31:03 -0600
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
Date: Thu, 23 May 2019 16:30:51 -0600
Message-Id: <20190523223100.5526-2-logang@deltatee.com>
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
Subject: [PATCH v5 01/10] PCI/MSI: Support allocating virtual MSI interrupts
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

For NTB devices, we want to be able to trigger MSI interrupts
through a memory window. In these cases we may want to use
more interrupts than the NTB PCI device has available in its MSI-X
table.

We allow for this by creating a new 'virtual' interrupt. These
interrupts are allocated as usual but are not programmed into the
MSI-X table (as there may not be space for them).

The MSI address and data will then handled through an NTB MSI library
introduced later in this series.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/msi.c   | 54 +++++++++++++++++++++++++++++++++++++--------
 include/linux/msi.h |  8 +++++++
 include/linux/pci.h |  9 ++++++++
 3 files changed, 62 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
index 73986825d221..668bc16ef4d1 100644
--- a/drivers/pci/msi.c
+++ b/drivers/pci/msi.c
@@ -192,6 +192,9 @@ static void msi_mask_irq(struct msi_desc *desc, u32 mask, u32 flag)
 
 static void __iomem *pci_msix_desc_addr(struct msi_desc *desc)
 {
+	if (desc->msi_attrib.is_virtual)
+		return NULL;
+
 	return desc->mask_base +
 		desc->msi_attrib.entry_nr * PCI_MSIX_ENTRY_SIZE;
 }
@@ -206,14 +209,19 @@ static void __iomem *pci_msix_desc_addr(struct msi_desc *desc)
 u32 __pci_msix_desc_mask_irq(struct msi_desc *desc, u32 flag)
 {
 	u32 mask_bits = desc->masked;
+	void __iomem *desc_addr;
 
 	if (pci_msi_ignore_mask)
 		return 0;
+	desc_addr = pci_msix_desc_addr(desc);
+	if (!desc_addr)
+		return 0;
 
 	mask_bits &= ~PCI_MSIX_ENTRY_CTRL_MASKBIT;
 	if (flag)
 		mask_bits |= PCI_MSIX_ENTRY_CTRL_MASKBIT;
-	writel(mask_bits, pci_msix_desc_addr(desc) + PCI_MSIX_ENTRY_VECTOR_CTRL);
+
+	writel(mask_bits, desc_addr + PCI_MSIX_ENTRY_VECTOR_CTRL);
 
 	return mask_bits;
 }
@@ -273,6 +281,11 @@ void __pci_read_msi_msg(struct msi_desc *entry, struct msi_msg *msg)
 	if (entry->msi_attrib.is_msix) {
 		void __iomem *base = pci_msix_desc_addr(entry);
 
+		if (!base) {
+			WARN_ON(1);
+			return;
+		}
+
 		msg->address_lo = readl(base + PCI_MSIX_ENTRY_LOWER_ADDR);
 		msg->address_hi = readl(base + PCI_MSIX_ENTRY_UPPER_ADDR);
 		msg->data = readl(base + PCI_MSIX_ENTRY_DATA);
@@ -303,6 +316,9 @@ void __pci_write_msi_msg(struct msi_desc *entry, struct msi_msg *msg)
 	} else if (entry->msi_attrib.is_msix) {
 		void __iomem *base = pci_msix_desc_addr(entry);
 
+		if (!base)
+			goto skip;
+
 		writel(msg->address_lo, base + PCI_MSIX_ENTRY_LOWER_ADDR);
 		writel(msg->address_hi, base + PCI_MSIX_ENTRY_UPPER_ADDR);
 		writel(msg->data, base + PCI_MSIX_ENTRY_DATA);
@@ -327,7 +343,13 @@ void __pci_write_msi_msg(struct msi_desc *entry, struct msi_msg *msg)
 					      msg->data);
 		}
 	}
+
+skip:
 	entry->msg = *msg;
+
+	if (entry->write_msi_msg)
+		entry->write_msi_msg(entry, entry->write_msi_msg_data);
+
 }
 
 void pci_write_msi_msg(unsigned int irq, struct msi_msg *msg)
@@ -550,6 +572,7 @@ msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity *affd)
 
 	entry->msi_attrib.is_msix	= 0;
 	entry->msi_attrib.is_64		= !!(control & PCI_MSI_FLAGS_64BIT);
+	entry->msi_attrib.is_virtual    = 0;
 	entry->msi_attrib.entry_nr	= 0;
 	entry->msi_attrib.maskbit	= !!(control & PCI_MSI_FLAGS_MASKBIT);
 	entry->msi_attrib.default_irq	= dev->irq;	/* Save IOAPIC IRQ */
@@ -674,6 +697,7 @@ static int msix_setup_entries(struct pci_dev *dev, void __iomem *base,
 	struct irq_affinity_desc *curmsk, *masks = NULL;
 	struct msi_desc *entry;
 	int ret, i;
+	int vec_count = pci_msix_vec_count(dev);
 
 	if (affd)
 		masks = irq_create_affinity_masks(nvec, affd);
@@ -696,6 +720,10 @@ static int msix_setup_entries(struct pci_dev *dev, void __iomem *base,
 			entry->msi_attrib.entry_nr = entries[i].entry;
 		else
 			entry->msi_attrib.entry_nr = i;
+
+		entry->msi_attrib.is_virtual =
+			entry->msi_attrib.entry_nr >= vec_count;
+
 		entry->msi_attrib.default_irq	= dev->irq;
 		entry->mask_base		= base;
 
@@ -714,12 +742,19 @@ static void msix_program_entries(struct pci_dev *dev,
 {
 	struct msi_desc *entry;
 	int i = 0;
+	void __iomem *desc_addr;
 
 	for_each_pci_msi_entry(entry, dev) {
 		if (entries)
 			entries[i++].vector = entry->irq;
-		entry->masked = readl(pci_msix_desc_addr(entry) +
-				PCI_MSIX_ENTRY_VECTOR_CTRL);
+
+		desc_addr = pci_msix_desc_addr(entry);
+		if (desc_addr)
+			entry->masked = readl(desc_addr +
+					      PCI_MSIX_ENTRY_VECTOR_CTRL);
+		else
+			entry->masked = 0;
+
 		msix_mask_irq(entry, 1);
 	}
 }
@@ -932,7 +967,7 @@ int pci_msix_vec_count(struct pci_dev *dev)
 EXPORT_SYMBOL(pci_msix_vec_count);
 
 static int __pci_enable_msix(struct pci_dev *dev, struct msix_entry *entries,
-			     int nvec, struct irq_affinity *affd)
+			     int nvec, struct irq_affinity *affd, int flags)
 {
 	int nr_entries;
 	int i, j;
@@ -943,7 +978,7 @@ static int __pci_enable_msix(struct pci_dev *dev, struct msix_entry *entries,
 	nr_entries = pci_msix_vec_count(dev);
 	if (nr_entries < 0)
 		return nr_entries;
-	if (nvec > nr_entries)
+	if (nvec > nr_entries && !(flags & PCI_IRQ_VIRTUAL))
 		return nr_entries;
 
 	if (entries) {
@@ -1079,7 +1114,8 @@ EXPORT_SYMBOL(pci_enable_msi);
 
 static int __pci_enable_msix_range(struct pci_dev *dev,
 				   struct msix_entry *entries, int minvec,
-				   int maxvec, struct irq_affinity *affd)
+				   int maxvec, struct irq_affinity *affd,
+				   int flags)
 {
 	int rc, nvec = maxvec;
 
@@ -1096,7 +1132,7 @@ static int __pci_enable_msix_range(struct pci_dev *dev,
 				return -ENOSPC;
 		}
 
-		rc = __pci_enable_msix(dev, entries, nvec, affd);
+		rc = __pci_enable_msix(dev, entries, nvec, affd, flags);
 		if (rc == 0)
 			return nvec;
 
@@ -1127,7 +1163,7 @@ static int __pci_enable_msix_range(struct pci_dev *dev,
 int pci_enable_msix_range(struct pci_dev *dev, struct msix_entry *entries,
 		int minvec, int maxvec)
 {
-	return __pci_enable_msix_range(dev, entries, minvec, maxvec, NULL);
+	return __pci_enable_msix_range(dev, entries, minvec, maxvec, NULL, 0);
 }
 EXPORT_SYMBOL(pci_enable_msix_range);
 
@@ -1167,7 +1203,7 @@ int pci_alloc_irq_vectors_affinity(struct pci_dev *dev, unsigned int min_vecs,
 
 	if (flags & PCI_IRQ_MSIX) {
 		msix_vecs = __pci_enable_msix_range(dev, NULL, min_vecs,
-						    max_vecs, affd);
+						    max_vecs, affd, flags);
 		if (msix_vecs > 0)
 			return msix_vecs;
 	}
diff --git a/include/linux/msi.h b/include/linux/msi.h
index 7e9b81c3b50d..c278ae8760df 100644
--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -56,6 +56,10 @@ struct fsl_mc_msi_desc {
  * @msg:	The last set MSI message cached for reuse
  * @affinity:	Optional pointer to a cpu affinity mask for this descriptor
  *
+ * @write_msi_msg:	Callback that may be called when the MSI message
+ *			address or data changes
+ * @write_msi_msg_data:	Data parameter for the callback.
+ *
  * @masked:	[PCI MSI/X] Mask bits
  * @is_msix:	[PCI MSI/X] True if MSI-X
  * @multiple:	[PCI MSI/X] log2 num of messages allocated
@@ -78,6 +82,9 @@ struct msi_desc {
 	struct msi_msg			msg;
 	struct irq_affinity_desc	*affinity;
 
+	void (*write_msi_msg)(struct msi_desc *entry, void *data);
+	void *write_msi_msg_data;
+
 	union {
 		/* PCI MSI/X specific data */
 		struct {
@@ -88,6 +95,7 @@ struct msi_desc {
 				u8	multi_cap	: 3;
 				u8	maskbit		: 1;
 				u8	is_64		: 1;
+				u8	is_virtual	: 1;
 				u16	entry_nr;
 				unsigned default_irq;
 			} msi_attrib;
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 77448215ef5b..c482aaa8e970 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1355,6 +1355,15 @@ int pci_set_vga_state(struct pci_dev *pdev, bool decode,
 #define PCI_IRQ_MSI		(1 << 1) /* Allow MSI interrupts */
 #define PCI_IRQ_MSIX		(1 << 2) /* Allow MSI-X interrupts */
 #define PCI_IRQ_AFFINITY	(1 << 3) /* Auto-assign affinity */
+
+/*
+ * Virtual interrupts allow for more interrupts to be allocated
+ * than the device has interrupts for. These are not programmed
+ * into the device's MSI-X table and must be handled by some
+ * other driver means.
+ */
+#define PCI_IRQ_VIRTUAL		(1 << 4)
+
 #define PCI_IRQ_ALL_TYPES \
 	(PCI_IRQ_LEGACY | PCI_IRQ_MSI | PCI_IRQ_MSIX)
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190523223100.5526-2-logang%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
