Return-Path: <linux-ntb+bncBDAMN6NI5EERB2NHXKGQMGQE3NCCVBI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id F413846AD48
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:21 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id h7-20020adfaa87000000b001885269a937sf2414550wrc.17
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831081; cv=pass;
        d=google.com; s=arc-20160816;
        b=rFH1zgY+gR+aK6QGpT6oNUt03BorBVzspz+g9n2g9SuNNgnPVcj4Sg8r5r5jh6uMza
         nO1GzAANJCXIRI/NTR3V+wNddPZJwpYWELuFcBkn79wgc1bwpncUnSErV4r3W4CePqib
         F4z1h+aiovdur4fKUYd0Gg4TXrrq60A0UdvzxID1zoyNtKCJGocms6g34mwL9+U5vGgX
         SsVtAh4+/4Mk4Fv9+iVzJdSSqpjin114h1dfyAWV+c13u/N98iCSCGJa9rvpuErRf/W3
         BmfUn5yeKmd/W+GoRPnxVwS4ArtWjCSYHoCFp3UNvPWU2ttx1mc/i+D5TFQc2IWeeGwy
         3PIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=zFhYo8d+SALNTaa/QNMtt3MH3BGjGDJfmpMZO4tZLsg=;
        b=JTN8bHcdi0zWRcG4KwBT3fozzQMFoZE+WuYwS/52odpwRdH7wvzWF0WqcTOnRHLJ4c
         QnecchL9ofntSlfev+Ks/ydODnjvk38RwgZR9JiUjz+JwegYkUJPl9VxUCiYqELp6yoO
         BE2Em1sdD6oh5rZQumEaLGJL6UngB9NFjPYWNX3lUzNxPO/cpr1UaLqQRbpLtkypOz8j
         sxCr0nnXbiRsyS9AFCQExgVZP8ayVz/8Oiu4gOMGWatlkkY+cNxBSrYuKPlcJMQj8zSu
         TunS5MJmHvQ0hkZn0f7ehxc9NZOhWdBv4Wv0NgVfPntdYmoV5baM/QBTD3BLGeeIqmom
         p8Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=BKB85X+Y;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zFhYo8d+SALNTaa/QNMtt3MH3BGjGDJfmpMZO4tZLsg=;
        b=ek98eFVruu8ascSXiS87JwmcTKjmK8SsK2YuR0GAEA8eW4a/PM27ND6PC4eMLGjs6r
         1D0BJ7Ea0jLOaE5uwF7wuy7JrIfgf6OHB/pmVa7MOTx5nV0IHHgsOMleP/oyCabdK2Yq
         PSX1+YlgXnpyCu+3El/gWtxX2j93gf3xAqTRszqbs/Mj4a/FSGrO6cMX2o4YbN8lZvPl
         P9ibxa0mFp9pliwWYHzRf8LwG7dze9Tta7OppAdJxGlwIWlv1T3A2Q/OCuuKZo8KGJPz
         PHSQb19G6jcI9OWVnux9vLV8kJ3sb9i3AikCFIuEX8n4SphoheNTAvgk+4OlwiPglt7z
         tsCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zFhYo8d+SALNTaa/QNMtt3MH3BGjGDJfmpMZO4tZLsg=;
        b=DOZ/IchhXjlln/cVKHVW1+pHHIvmAiAKjNN1THRpCFPEE3fZZVKpqPQE2pXuAkYA0U
         Ym+TWpJQ6FR3Pn5EO/6J4DSN9njcx7fDylOEBJoxe9ZblckDbvVfZdssvJvcr26cvyPh
         mNsZZdh9DidMLKmHR3mdXJtBolzS9DCFwl8lRYC9tlAiQScDg2rs5dOk9+Bqk0sUtVd5
         Nhffg+7iTJfUSpo2siSdNNIVlp+jsb72Kizl1EUlRpij2Hu9g1OKcKGxEtkk/G3IMzXS
         orx2YZ/i4eUHCvz/VT7hbOjKSe3EXmbiM0zhv613UEB0YB3tZTmjuGAYkURuxHSXcwZ4
         BjJg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5301JCFCmRd+Qbe1zRUrnxVNHrDqj5eIh9yv5uMX2Pqgo695M79U
	R3Ae3j6wtoS9Z1upQ92KnQ4=
X-Google-Smtp-Source: ABdhPJzBqDcCRIciF0QtLz6ewuYNOXtkxo5Z+3wx8NiGPh2YdEsC0Mg9JXdC/86qHDmFWDrZ85aALA==
X-Received: by 2002:a1c:1906:: with SMTP id 6mr1966842wmz.19.1638831081795;
        Mon, 06 Dec 2021 14:51:21 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:7e16:: with SMTP id z22ls264488wmc.2.canary-gmail; Mon,
 06 Dec 2021 14:51:21 -0800 (PST)
X-Received: by 2002:a05:600c:a55:: with SMTP id c21mr1875734wmq.191.1638831081006;
        Mon, 06 Dec 2021 14:51:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831081; cv=none;
        d=google.com; s=arc-20160816;
        b=avajepZSsRUxhtDfT0/QaJOb/qcYujS8G2kcyzADqP7KF5vmCANTFIrynqdBRM36IY
         PT1+ceAcxawRO/enNIuh4+46zfk7/Rbe0XDLpQYoR/vd52Jx+aPoE4qK134kn2kd331S
         +dcBkU9IbzApji4tV5AtVqx+4II+FnQSmCpSWwcQNT17upxOxng5KlQWJhzZy+yzMbVS
         789T0qzU4VT2hZ4y8LuE50d0GYM+UyPVuhERmHtZcaMPAwWqTZu8LRHWIg5+1ytW6HuE
         jkrnhaV5JSXaChMrKJgo3OoEpVV7lf7fqQBIfLkKgG9AiTZJwEP+R1cOThbIX1NW6RtW
         TO7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=mHgTxiBl9Pg381SuWjuguHHZxZ6bDXurYM8uLZLwzPA=;
        b=joM+/n4yskECj+JCFtuMzNe2CCSVfAg96RDM+nYAcLpJFTvRs/BsbUxCAH+iEekkQz
         +Fzd1OqkKWMVPoyNdSrKZ1nJt2jWEeqqMqv+w2VcX2TW9oYdlDvBO4vNVfvujKLIL8FB
         ZGhoKGTdBhmnPpn3NtAIidCnR+Z8O9J4KbdizrswjRn4aiF/AVPTE+9YJ86SeFmpV0IC
         o/MvYX4PU72FWMsa3M2kMdKohCKv8IUfeSaahxt/sxt/u5Vgoh8JyiRBgfWzycSpJttV
         PRriyTTyJID9QWKECZhZr/gNQZ9heZkJbcy2MLRfwrtYyrb3qozAsN4p+L4GmR5TzIXG
         4EIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=BKB85X+Y;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id e2si768282wre.5.2021.12.06.14.51.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:20 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210748.198359105@linutronix.de>
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org,
 Cedric Le Goater <clg@kaod.org>,
 xen-devel@lists.xenproject.org,
 Juergen Gross <jgross@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch V2 11/31] x86/pci/xen: Use msi_for_each_desc()
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:20 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=BKB85X+Y;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

Replace the about to vanish iterators.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 arch/x86/pci/xen.c |   14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

--- a/arch/x86/pci/xen.c
+++ b/arch/x86/pci/xen.c
@@ -184,7 +184,7 @@ static int xen_setup_msi_irqs(struct pci
 	if (ret)
 		goto error;
 	i = 0;
-	for_each_pci_msi_entry(msidesc, dev) {
+	msi_for_each_desc(msidesc, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		irq = xen_bind_pirq_msi_to_irq(dev, msidesc, v[i],
 					       (type == PCI_CAP_ID_MSI) ? nvec : 1,
 					       (type == PCI_CAP_ID_MSIX) ?
@@ -235,7 +235,7 @@ static int xen_hvm_setup_msi_irqs(struct
 	if (type == PCI_CAP_ID_MSI && nvec > 1)
 		return 1;
 
-	for_each_pci_msi_entry(msidesc, dev) {
+	msi_for_each_desc(msidesc, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		pirq = xen_allocate_pirq_msi(dev, msidesc);
 		if (pirq < 0) {
 			irq = -ENODEV;
@@ -270,7 +270,7 @@ static int xen_initdom_setup_msi_irqs(st
 	int ret = 0;
 	struct msi_desc *msidesc;
 
-	for_each_pci_msi_entry(msidesc, dev) {
+	msi_for_each_desc(msidesc, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		struct physdev_map_pirq map_irq;
 		domid_t domid;
 
@@ -389,11 +389,9 @@ static void xen_teardown_msi_irqs(struct
 	struct msi_desc *msidesc;
 	int i;
 
-	for_each_pci_msi_entry(msidesc, dev) {
-		if (msidesc->irq) {
-			for (i = 0; i < msidesc->nvec_used; i++)
-				xen_destroy_irq(msidesc->irq + i);
-		}
+	msi_for_each_desc(msidesc, &dev->dev, MSI_DESC_ASSOCIATED) {
+		for (i = 0; i < msidesc->nvec_used; i++)
+			xen_destroy_irq(msidesc->irq + i);
 	}
 }
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.198359105%40linutronix.de.
