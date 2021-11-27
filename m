Return-Path: <linux-ntb+bncBDAMN6NI5EERBE4RQ2GQMGQENWIUYQA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DC045F924
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:32 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id s18-20020a63ff52000000b00320f169c0aasf4348027pgk.18
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976211; cv=pass;
        d=google.com; s=arc-20160816;
        b=l2JvEQ0lG5pGajKVd34LNx7zEWd3sI7+22IHsQdYey+Seew1z9ylvm8HaHGzQXHnoC
         taBZI0VRCErIIm+kcKLxEad7ReP8N4WMOAlGp/sBTxPxxVnUJYSpWa9z9ujYLidwdvB/
         SgKTsRLjvxZ/1ZMKtR6RA9EamqBn30HVh9ddIGcPt9/Xj1ISsvYhmCtDN3YCMVoIyT1F
         OqpQ6WrQpUafVWmhKImh+yWPPh515xavpaF4mjVx8+8m2fxH3812X7Po7cirO9Zvffmu
         RqbrgI+xgTStvD00GDoQTC3AAF8eNm2hIq6WhpCabswkP4kIpdNvngKgx8zBHDgInA9j
         bgKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:subject:cc:to
         :from:message-id:sender:dkim-signature;
        bh=l/du0gY6HH3fQaLhVYQpSv/Y+ru1tR8LRXAF/pb2000=;
        b=V3Ntpm48SckhEEZcSGL1zblSuu2K4ho6EORYiRwgDjqoQ2xF8I4mPkDLFzLe48P4qD
         8jlRVOFJr+dDQ3wu/PVmn1YfZ2obsf86bN2lV9zR9ewpaeXfv45BHaInaIrfbwcQwe0c
         fbyqAVW8HhnojXXTXYEN940yBig1iKe/jFGq3fWUVfDFKfH5ad8f7QU/Td+Q0K5a1YSv
         Lc0B7jQfGBvy8PiJzum02rOvF0+3TLQxmoX2cVQcc7ZuMixMZVZqcU35d1GiZAKEmYnv
         ou/J9XOm8q/1vK4OAw8szBxBndtw6e0mYNfKpcXAwSz7ife5BM9VsqXROmWkxRNMOeW4
         UhXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="L/+m4IsL";
       dkim=neutral (no key) header.i=@linutronix.de header.b=XxQa74S1;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l/du0gY6HH3fQaLhVYQpSv/Y+ru1tR8LRXAF/pb2000=;
        b=PO2e5Lf2jHig30ARsbAQChKJr59s/QjarJPXt08ypXLk9z6qz3X05U8bUNmH2tkxwl
         0LyJnddXfAsqzyQqB3O+cMgmG53pCoZmX/63VLCdjF8+g+Y3niYuhBvY919+PVDBC5/b
         8LZXNy6wl5uiJZRvfONk7OxaiEXTJoXWFtEmYcPk9ueScyjRDOU6rMAydkasv4rURpVh
         BnGH4URmh00dLhlXnZzbvGoVZNfDHnCe2Nmt6g6AZp2xKwT22+qD7I3oyzugXnR3hPQU
         RCDgmB/JrRzm9WOUdg4Sei7HQNMxczcH7uBrDnYPYrvoVA/GJkMJDrhVqCbH2IZEL57I
         bg0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l/du0gY6HH3fQaLhVYQpSv/Y+ru1tR8LRXAF/pb2000=;
        b=cJGCMl5I4LE1pMnPXW6lA4rt4PkUIh9cG7pobLOqAwaWnkqnQC78JCQLjLx6lAJimf
         c49JJzhq3Vj9RIT33Y+BYfa7vtcfCRLkVkO1+kCRJRdY1wl+VQFzhF3yBWvkAikqrlV2
         KWZRoPvXdKBRdszAWRT2jW4Tm687IAHBjXQCqP3ecfJf6vADc/B1JRteH9o/O2reLpU5
         PGE623Idu3SHMhne6tq/16s2Ou+cnqaCD3TY30QETrJ3MIYImot8RWH1HrnZ+FDPzRXz
         pE+E6NN2GakexAR/IblaWr7RiDqlwCHXnXJpdn0YaaiFoowEayevfTj9/xuS69I2zJuS
         UzXw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5326ZWmPjbCGdHfqlc42BIX8oieyKM2IzsIg4wH7YIH2Cagkj9z0
	nDhmvkcFfSDTYKEPuKXhVxM=
X-Google-Smtp-Source: ABdhPJym7P9SddmXhwUeQi+71lkpBgPcZ9544GFqdCYN0OTKIP4170z8v2HwDCxVyDK9qMfUrw6GRw==
X-Received: by 2002:a17:903:1c7:b0:141:e630:130c with SMTP id e7-20020a17090301c700b00141e630130cmr42523547plh.80.1637976211479;
        Fri, 26 Nov 2021 17:23:31 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:1694:: with SMTP id k20ls2979092pfc.1.gmail; Fri,
 26 Nov 2021 17:23:31 -0800 (PST)
X-Received: by 2002:a05:6a00:882:b0:4a8:342:659c with SMTP id q2-20020a056a00088200b004a80342659cmr9428238pfj.79.1637976210996;
        Fri, 26 Nov 2021 17:23:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976210; cv=none;
        d=google.com; s=arc-20160816;
        b=vsU35MPrNrFAsey4L3cgWva6wwlIHN/gw4FZXXSUE91jgtKBk1wqk/kT5Fr0Gw2Rae
         9OKuapc5TDCbjfXZlMDqzl/kBM4zA4Ba2XcrHHCL5hy4FaqI3odwlSTd8zujw0Guml4Z
         o37Wu03gpL9dT3X0SIY92S8u0UeRO+IC5FgFZYNGAvLevKlDIHcsSo+V8JSYFpr6/tG1
         kfyrn35AJTxDe88tvnV/73ibC25TR8FGlUYk6vUFf7jjTOgb18Ju7G2fDNfYLyMCKiVg
         HQeG1aH+tkcFixLdZWQbiYAuZy/do/jy47cCF1In1nFb1HxXmGYhPLhH1tJyMKGzJM5Y
         bIsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:content-transfer-encoding:mime-version:subject:cc:to:from
         :dkim-signature:dkim-signature:message-id;
        bh=vhZzYjX7UMFE1bgre/8Ck07JyEROLh/fen+p3wWukPU=;
        b=zV4UEZ0C3V1XGr8b6jqmKWpdM6W1QKXo3tv/D3Dybi9ahWutAQMVuRuorJGDDr0pDT
         KfnhBuPJS8SuM1UTD0xmqkhh/G+wwbmHXHGhcTe8In7tPbJH8n5T58f6/lXuKAqrmASC
         HU/knwU0W3BTbOgb+78eiZEmk3VfJGsaKh7xjVxHpRyEZAL1rNLY37v47a92JHGstHsS
         1eKbjkPlUtl+74vMiTlsYrshzuREplb+UCCKt/HztjQrwFGTuSxeRviv6je5MzIBKFid
         5Z3tlcBh6yAid7KFjYzCXdi+Vwb0BXuhIIPNLLJ6Zw4vsjC65wXPfhSfLcOdF7ig7jp4
         Grwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="L/+m4IsL";
       dkim=neutral (no key) header.i=@linutronix.de header.b=XxQa74S1;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id w4si1899873pjr.3.2021.11.26.17.23.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:30 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
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
Date: Sat, 27 Nov 2021 02:23:28 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="L/+m4IsL";       dkim=neutral
 (no key) header.i=@linutronix.de header.b=XxQa74S1;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

The series is based on:

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
