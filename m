Return-Path: <linux-ntb+bncBDAMN6NI5EERBWFHXKGQMGQEOUNL6FA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 963F846AD31
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:04 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id bx28-20020a0564020b5c00b003e7c42443dbsf9588796edb.15
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831064; cv=pass;
        d=google.com; s=arc-20160816;
        b=ppN53JHlw3tUOD5mtft3ZJ/s2dDrICkFE4nCjXpjHsEza27M2RQkkjLuPS52cmr8+8
         rDqNN/OMQeDAwnkHD2Oi9RNt2Qu83Kqre6kbJdey0IRFZuoPd6CpRt9ANPwYLc8YilxB
         8+K3uN63oBpV9FvPndr/b+quwtPG+TaM9hE3uSSscaVK65okknyLfpCnkj5FhmHakvYK
         QkbIug0GkfJ11xduR4N2ymk099PwHpVWrHC67NWesKvznuTMypyGHpzsKTYpvkelMtK4
         PWFL869cHcbMqtd47mwMvF+8nVZqeZv/x7TWjDvPoI8zUYr5MgbxxDvuv6CPsNAhgbeE
         GeFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:subject:cc:to
         :from:message-id:sender:dkim-signature;
        bh=lrS5n5NV/06cUNtquoEgcc3KlVbaK/QaoZ0tvDBqrDY=;
        b=EFgoxKRe4ZfPjTyJXRPxoQbDNHqWKE5zSunZBG6/+uYzWaKxZLS7LHPB5UzJAZt27m
         isLK5LCNRLe6YvXMjeQJHCx2onnJL+5IfPm3+AEdWPRd7dzGrk9mHXXtGZcdEBu5emLZ
         5+J1bIkdo1Qi6WtvXF9PBj2T5MUqAok8423H3lhsf6lJm0DNqHqtIhWBKZq2H+W1uUej
         U14YY4DkKebzb3E8NaEvRaCQ5Y6LGfltmRHAIhTMOQNskfqcDSOB36qd/n7t90DYJzIY
         3bCl9TkRSsOEkItFhDQgNW2dgSkMJQEiaX2BrVK7tLqKPyqbcjjbR3PRv/rm/vKvH+3z
         50Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="g/R4QSH9";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lrS5n5NV/06cUNtquoEgcc3KlVbaK/QaoZ0tvDBqrDY=;
        b=thCJnjPEFKAOwTMMqPOU3vrmcwh2hH3vTn634aO8vAp4DrJ92s7O+gwxMGWl9NbWOj
         Su57bdnJF9lTnZrb51BY38hPjdUXosMqnE1pj9MXWZVy+3luzzW1OJ0Z9Tlz/wwqUQs4
         /TDI25R4S3MTtJJD9YQClcZ2a7k0TIKiqXBTk1OsbX7t+idmCoLZffi15kpyktqpQvNr
         t1/GV+6JyiE6Ju0zOAwC2xFAdEQS84qKFFPO7dAYkjlVAfaP9t6YC1JH/HNPxLSod6E7
         cuGFEqReu3cO3SgHg1Q3oCMYdSWcR+Trc9837HDOvU8pNs+ZQNW0DQKBDjcN8gyt65hn
         xQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lrS5n5NV/06cUNtquoEgcc3KlVbaK/QaoZ0tvDBqrDY=;
        b=G23aeqAG3Bfm4Tuem31DB17eyo1rMCiue6xaCv5hbTBp4pPFRqlgdKEIhyZdehYB9z
         CEQaQgJmDVtabpE29cjVG3FRsKEhu+K/uL7kltIbMGZ75NBD6Yeo8L7S7ned/PtLY6GK
         U3FVA/lHtfy8QsckB6npGrOZKk7NtcIUfrSsWW7MZ+zn+8p71fm+gZITkM3/HNG36Xjt
         tHhImSyZWFX9k87obtpvrA/V9dcX2vCHCdnCopu/BEtX/biQ0/+kFad9sq7Tb8z9qHRx
         y13ezLY2rW28IizRaANaeTF3U1xb0EDcacReoaNTedEG8XQtbUTON3YmY45CdetWWKQr
         +pZQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531nYaKPDIKS1iOQA+ucklJQl2ledcTGpap/NBOIDkdaTvkij1uF
	7Tk+e6QGDOs2UzvmrUrO7SA=
X-Google-Smtp-Source: ABdhPJwxKuLyMxtqXKjNl/p0wzpFRplaRQHeyzZgDYv6436j1S7ZRAu2/VCPum1XaNYlnc1KRhEmGw==
X-Received: by 2002:aa7:cf9a:: with SMTP id z26mr3054950edx.136.1638831064342;
        Mon, 06 Dec 2021 14:51:04 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6402:4246:: with SMTP id g6ls2634163edb.1.gmail; Mon, 06
 Dec 2021 14:51:03 -0800 (PST)
X-Received: by 2002:a05:6402:354e:: with SMTP id f14mr2961503edd.245.1638831063496;
        Mon, 06 Dec 2021 14:51:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831063; cv=none;
        d=google.com; s=arc-20160816;
        b=OzL20C6+dacWAKZdjWDkvpG3IDCizVnDX7O2YDTUlNN3YN2+4lKlAYsIChdCduHK2L
         ulfaHN5ibSKjYe7IYyFUqgA7DE15ziWldl+lSFoupK9Dyz++Pq7SaI81uj8SatlRKHUG
         1OgPWMlgsWLSGiE5UpXzBQRf04QTJLmKu1mTS89HMIByzj5TXB+cAK9FADxGlhDblFjj
         Bz96ZEJakWn+rELahwOZ1ULTq/n9BaMqlr51IpI04TBeFoexoAj7b9w3aa+iS+Cuy28h
         o54/YPleem6nSJgKl3lZhxF6ywjNzfTLANUkX9AEA/SBs+37E9APAGl9Wx7uM+vvTFRF
         T9xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:content-transfer-encoding:mime-version:subject:cc:to:from
         :dkim-signature:dkim-signature:message-id;
        bh=zuaVjYRhYaXSnxhOlTO3/+R1NRokr9z15QjTY7nAlqg=;
        b=IBo4Fjxn2cVG+TRl61UMemQ6hJFzhJtOxYN6hXiO/YCeke64Nt+Wie0JS9p9P+k/df
         3rQU30bvr8xvsOubUdsuf/2/y1aH5bq2GK/gNDvRPOikN4cuzjICuRrJaz1PbJdi7rAC
         /L1VZ6uImPoyhIkTxb1mzjYXdT8Q9iylkjElqm7ZUIAtZhdQhHWVWCkgwwjew8RSK+8b
         WZAizaPj/iMF0UN+GSUW8dYvDr6Xz1B36S/Fu7Nid8HerZ+sjZ5tpK032TtYa+jx1q2F
         3OF3EYyuvEwsuS+zEikyq17dOGlLS9+N7KzriHcASdzBQsSvR/ixF4d1ploEDOw38ry9
         tQ5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="g/R4QSH9";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id e10si970606edz.5.2021.12.06.14.51.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:03 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210600.123171746@linutronix.de>
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
Subject: [patch V2 00/31] genirq/msi, PCI/MSI: Spring cleaning - Part 3
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:02 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="g/R4QSH9";       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

This is the third part of [PCI]MSI refactoring which aims to provide the
ability of expanding MSI-X vectors after enabling MSI-X.

The first two parts of this work can be found here:

    https://lore.kernel.org/r/20211206210147.872865823@linutronix.de
    https://lore.kernel.org/r/20211206210307.625116253@linutronix.de

This third part has the following important changes:

   1) Add locking to protect the MSI descriptor storage

      Right now the MSI descriptor storage (linked list) is not protected
      by anything under the assumption that the list is installed before
      use and destroyed after use. As this is about to change there has to
      be protection

   2) A new set of iterators which allow filtering on the state of the
      descriptors namely whether a descriptor is associated to a Linux
      interrupt or not.

      This cleans up a lot of use cases which have to do this filtering
      manually.

   3) A new set of MSI descriptor allocation functions which make the usage
      sites simpler and confine the storage handling to the core code.

      Trivial MSI descriptors (non PCI) are now allocated by the core code
      automatically when the underlying irq domain requests that.

   4) Rework of sysfs handling to prepare for dynamic extension of MSI-X

      The current mechanism which creates the directory and the attributes
      for all MSI descriptors in one go is obviously not suitable for
      dynamic extension. The rework splits the directory creation out and
      lets the MSI interrupt allocation create the per descriptor
      attributes.

   5) Conversion of the MSI descriptor storage to xarray

      The linked list based storage is suboptimal even without dynamic
      expansion as it requires full list walks to get to a specific
      descriptor. With dynamic expansion this gets even more
      convoluted. Xarray is way more suitable and simplifies the
      final goal of dynamic expansion of the MSI-X space.

This third series is based on:

     git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git msi-v2-part-2

and also available from git:

     git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git msi-v2-part-3

V1 of this series can be found here:

    https://lore.kernel.org/r/20211126224100.303046749@linutronix.de

Changes versus V1:

  - Remove the allocation counter patch as it is not required

  - Fix the powerpc fallout - Cedric

  - Fix the CONFIG typo - Niklas

  - Picked up Reviewed/Tested/Acked-by tags as appropriate

As a consequence of the discussion vs. the general direction of these
patches, part 4 is not going to be updated in it's current form.

The assumption that MSI[X] and IMS are mutually exclusive and that IMS is
basically an extension for finer grained splitup of the PCI device does not
hold.

There is a plan to refactor the code further in order to provide the
desired functionality of MSI[X]/IMS which will also gain the dynamic
extension of MSI-X vectors:

      https://lore.kernel.org/r/87o85v3znb.ffs@tglx

Thanks,

	tglx
---
 .clang-format                          |    1 
 arch/powerpc/platforms/4xx/hsta_msi.c  |    7 
 arch/powerpc/platforms/cell/axon_msi.c |    7 
 arch/powerpc/platforms/pasemi/msi.c    |    9 
 arch/powerpc/sysdev/fsl_msi.c          |    8 
 arch/powerpc/sysdev/mpic_u3msi.c       |    9 
 arch/s390/pci/pci_irq.c                |    6 
 arch/x86/pci/xen.c                     |   14 
 drivers/base/core.c                    |    3 
 drivers/base/platform-msi.c            |  110 -----
 drivers/bus/fsl-mc/fsl-mc-msi.c        |   61 --
 drivers/ntb/msi.c                      |   19 
 drivers/pci/controller/pci-hyperv.c    |   15 
 drivers/pci/msi/irqdomain.c            |   11 
 drivers/pci/msi/legacy.c               |   20 
 drivers/pci/msi/msi.c                  |  258 ++++++------
 drivers/pci/xen-pcifront.c             |    2 
 drivers/soc/ti/ti_sci_inta_msi.c       |   77 +--
 include/linux/device.h                 |    4 
 include/linux/msi.h                    |  107 +++--
 include/linux/soc/ti/ti_sci_inta_msi.h |    1 
 kernel/irq/msi.c                       |  700 ++++++++++++++++++++++-----------
 22 files changed, 794 insertions(+), 655 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210600.123171746%40linutronix.de.
