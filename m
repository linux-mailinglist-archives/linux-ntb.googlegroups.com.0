Return-Path: <linux-ntb+bncBDAMN6NI5EERBVUQQ2GQMGQEFKZ5JTY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD4045F8CF
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:32 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id f16-20020a170902ce9000b001436ba39b2bsf4711170plg.3
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976151; cv=pass;
        d=google.com; s=arc-20160816;
        b=h/rNEDxtaUUijPZ5+YLpEga20u8yaGfMUN1fpjLTWQ9WcAE4ch/M/YqEygRiCpryf9
         6uYBgouRVM/pXlpdR49Rd2bEapQ52qxZEoXOIcJumNLBEJsAz6B9KQVFRwmIssGuLFUK
         iUyLRt6lXvWIm89i9C6tfms2QQDEkiskjcstgTPNh88fQexxP1Y4121Obliig/RZ94Gp
         /lrU0Xcwhoega4xkZjF36Q15LPyJyW8EHD/gylntD9417lcK6qq+bBBIHUUu2lksable
         dWxmvWAHW3uVO+7atYb7FvvXgHNCe+CMJDcWzqcgY4ITvDOM5Ab+hHzAeWlTxd2JZmJv
         hgDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:subject:cc:to
         :from:message-id:sender:dkim-signature;
        bh=3Aih1KZbJ0oFQzHDSbwtTetkHfoMIv/kC87g3816yJU=;
        b=haUMrrf7UJOGEmcRRJ7NgFzXQndOo7qFJl7YtOeG286+Bc9Zpn+M6JwiDIrI4DdjLK
         5UCVOqjf0S/iw+V+dSas1YxqPENdqEKUaeaZKbeFQ47ZamHF7p0D16lsFjBSpuxCKBQb
         u7dkY8xWHEWlZs3cdf/naSnHMmO0xbBaZp8+TDHZ/JTPgYXlCdfNKTIsnv/wGiVjXC10
         r+j/3EdpTj6FfxiSqdxWlPW8Xp+alwZL8GU86Lm8fCTeUYrNfBHFgfJ5AMlObw4bT7bU
         hkF0Q9Ngu/zjgxgrJulaEB4fmyhCwYUOoRi5cZ+mg3hlCsOuwRczRxP0J8oFolAtHp3K
         FfQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=TEH82iHa;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="6MlFc/aH";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Aih1KZbJ0oFQzHDSbwtTetkHfoMIv/kC87g3816yJU=;
        b=rNPqSeuLPNNn1G+G6Z7dJBOCA0TjCwwbiyh4pQJ7KJnSDvJedNIyFy4xCPFMad1FoB
         lGeIwMgMT9hvAG/+uwaucfKq1zJ+h/fBPJ9VjOiA1F1DqXiPtuoHSD2yRbnV5TqmFRP7
         D4BTf6XyvkZEkvkPDtlOKZqJAANPTZ799P3Mi/7Pk2ubl/kAD/SoyKRojVgQeHfwUwPL
         xAYWjdfAxZYPKywoWGeHzhx8D87nYddJjBEPpVFvlJdhkhMEYvm/cYw1HEik3UHNo+ls
         +TfYx+KzR8uZrG5QTtWjpRgE2zgiwk9NsRW2Kt+NQ/wjkPI9Sl5wQyD/fdTOg3MMxCzK
         SghQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Aih1KZbJ0oFQzHDSbwtTetkHfoMIv/kC87g3816yJU=;
        b=vGb1hDrARXYYamAHmmlSv3WvTaC8V07aPxoS88uAXoIu1fb6O69C0zyJ3qHz5DkJM5
         8ZgadZo63PBJ/P+5WpstKyv0VM718GHgQeQF4Mkm+wv/Co/iAE1rQ6uwID2AuZJEgwY0
         On+qdgiC2taXULydNR5Fk+LRQ+wr4k2qeO+aQBvCWlSRnuihaKugGyK00jLoSFsWIksI
         d96jnInJAyHd5gQ9nwZ6LPWrTpSvZ28mgB99BNini6PgV9JQbvUHEDlLSqsUCKUXtyfC
         IUX0t5KjQG96X++PGFPJWbzOkvB812cwqaEy5DgvLcFwjtOnuHAqR8cWp0GkxBfAzbnQ
         CTkA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530Y9xF8lsnIxRygAW1tYyS9EgHtpZfxIr5q+PD+n36au1vxWpAD
	b/PeZElAnsN+M4q2n2oxK9A=
X-Google-Smtp-Source: ABdhPJyPRoGHHLxRbLUobejLpWPsqzebbL5/zpyJtdi60q3GhBHE4yRzUAtZxuE1ap8EUYEFuGoevA==
X-Received: by 2002:a17:90b:30e:: with SMTP id ay14mr19531918pjb.60.1637976150753;
        Fri, 26 Nov 2021 17:22:30 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:c40d:: with SMTP id k13ls4156901plk.5.gmail; Fri, 26
 Nov 2021 17:22:30 -0800 (PST)
X-Received: by 2002:a17:902:f551:b0:143:759c:6a30 with SMTP id h17-20020a170902f55100b00143759c6a30mr41763286plf.0.1637976150219;
        Fri, 26 Nov 2021 17:22:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976150; cv=none;
        d=google.com; s=arc-20160816;
        b=agwPt4mObu5G7CnWpOLwUxX+7avJBa5zI1UE9wxrLlrCOpZHAu5aLC4SvuH/YitlcE
         GxuwCS1FLYmJuO6ahq775vHUP/ymbGxYdt03XVIo8pSuV7/9d9udEaIHqWaX+Sbpku5m
         khZBP5bYm0H0lCCyfKjl/sH29gv696kqXImyY0UyjkOj86INe9F+vRNILBNMZ/J69sim
         dg93BEIy08VebU6cfyIVIry8ctL+p4q6/QaeQPxwkqwRJxenOmhWwdjywgOGgWYQ7Ew4
         bS/uVDaE9tz/ReeDQq/YViDAAvnX/A2KaW9vNo1n6ABvH4qfGCQlZWs2L02nN6WBMewK
         O/gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:content-transfer-encoding:mime-version:subject:cc:to:from
         :dkim-signature:dkim-signature:message-id;
        bh=D0nbUkdccTCr+2Br2gyXx7cP8vfnCoeXBZSgMbFqpdM=;
        b=l8qTY1IKyVr5xc8kOmVr5LJkzI16Jp+qZpE7CP4llybTMBAnMHvQu5tbvp3G54sJtl
         vdTSe9THS5zhrY1OlV/lo4V64deK045nnplP0tLZVSWYVw9JDv63qBPDG9dDTnkM4f2t
         6bs/D0pkG2xny7aQ8eoq7X/VLA2nStDGlAzE8mLLD3Xun5SdWDmVpQj0ecLhyjIaFP/Z
         QOdbzISORspzRTqDMtip+aIpbQqEB+H2bFVz4V5QiBPTPANjKGjncCKiMof7h27DfRG4
         QkQGtHsy00VDW/7JgyjBiLB1mktVFTsdVDrVkg5jPY57hoFCqnDN1zjr3v+atkdbJt6B
         g/Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=TEH82iHa;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="6MlFc/aH";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id g12si1249935pjp.0.2021.11.26.17.22.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:30 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126230957.239391799@linutronix.de>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch 00/32] genirq/msi, PCI/MSI: Spring cleaning - Part 2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:27 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=TEH82iHa;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b="6MlFc/aH";
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

    https://lore.kernel.org/r/20211126222700.862407977@linutronix.de
    https://lore.kernel.org/r/20211126224100.303046749@linutronix.de

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

     git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git msi-v1-part-2

and also available from git:

     git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git msi-v1-part-3

For the curious who can't wait for the next part to arrive the full series
is available via:

     git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git msi-v1-part-4

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
 drivers/pci/msi/msi.c                  |  255 +++++------
 drivers/pci/xen-pcifront.c             |    2 
 drivers/soc/ti/ti_sci_inta_msi.c       |   77 +--
 include/linux/device.h                 |    4 
 include/linux/msi.h                    |  135 +++++-
 include/linux/soc/ti/ti_sci_inta_msi.h |    1 
 kernel/irq/msi.c                       |  719 ++++++++++++++++++++++-----------
 22 files changed, 841 insertions(+), 652 deletions(-)


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126230957.239391799%40linutronix.de.
