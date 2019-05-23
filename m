Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBM56TTTQKGQEBO53QBA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AC828CF9
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 00:31:16 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id y14sf1880042uac.9
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:31:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558650675; cv=pass;
        d=google.com; s=arc-20160816;
        b=GSsVsDDJwJkuMat2pzqOCfFBlEHWH8fQnUlhZI2aoG4tyG+q/HByHYXe9fh7hs2k91
         y7ukhlg3UBgjeVXsanqsWbWvycBTLLIB8OHqBHjGNNBo7PfDtUO0P3Kh5s8OaTATCud7
         ihI0YS62lfIHD1DCCQ3LUx0EfUdVqRnDbj4wq86wo+pDlIcT0ZIczlCC/nC8h9i8afgy
         geK3s0bcHXPZXAIwVhn9zPwf47wvJbx8VvrsC60gRQPRjEELTFY0ao9ZhujYWZwXHz2K
         4d+wDUWmkDhYUmaaYZrxazjyOLDlGk8qcQfJ4ZzqWN7HEAZryuNos20nD/iWixny9L77
         mbAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:message-id
         :date:cc:to:from:sender:dkim-signature;
        bh=B9P8DIZY2SJOYPyZ2Upq5GH3OYrrQAKfYlwPVGbCYCI=;
        b=XMdZQsahfwD1fOY0sdHVGqI+SvBSEo2pR87iOjNfTDIQzsd+dD3ynB4Gpev7vmfyP6
         c3NwHsT7yTJpiozPo+dgNW8ceg6+Zlmrthmmg+3K6K6U4RWQKbKyoJ1QyoOHOHoK2bE1
         QSqkpQQkF6sm/i/3ai+M06FZb7nL/NPzqakbeevBVUXInM7jsemUrg1urKMk627yT59X
         L5zCI+R8S8wK9wqEZkmsKs64nQGmi9JyUFQpAVcMk9iEj7uq5dcJyHASqGCWNQ4PIg/y
         S0UhRlhqQQEJfMc/k7zc/gPCGUS+w0fARATn5V3TAHDmOk7Yd0QgjiORrUq4zkqv5O7m
         HvdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:mime-version:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B9P8DIZY2SJOYPyZ2Upq5GH3OYrrQAKfYlwPVGbCYCI=;
        b=YP9RSIwtGb2iJxojh9EgKleNN1nBIMPbRYMTjYA213v8au2Va7UcTf4zmqCQeAsiz6
         V+yq6jB762VW5ilw/qUEWmQpk9cCEjiUDuGHv/qSFMz1DVwnozWxWMSnx0rpYL+VSXht
         I4itpWJzzl4o4OP+0hoBKByF5yFWidNZbtYir6cRiCpQptasED7Cd89RrKMNEJC8tmoh
         FOyyFLkSRODyY2F7rpdKJmYyhhIFVOq2poJcBgB/TB0QjXdUWVkOo5KglhECUKVt3hwp
         Ze+sjAlWjQ6Oo+q7a3a04MQii7UvCrmlkuA7YAo3Ib9ns5g+e42kxoeZKYLEH/hEuuie
         c7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:mime-version
         :subject:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B9P8DIZY2SJOYPyZ2Upq5GH3OYrrQAKfYlwPVGbCYCI=;
        b=Dzh1UU3eiZKlyukurTX9tr6syjrmmOCN7Qi4Uy4/SbmCZnr9lmVgzP96Kh+8lv04fz
         LP+7SEPZ0HGb78h/S+MYDB8jgnqnIJzlw/oEKd/PGAAv434TDxk0Gt/8X9BAKepQ3xfb
         btc56RGA36wfGd1Oj9JvfnpGlF3X6MzFEvL5FFJ5+P+rDftxkEm7qMXDv8Eg9MKivTs3
         fYGUhq++/aNWdfywxja7LVL0qCHJpJPAMooq7UN4Z0nvdzAJHviACeDY869VQnoPaTmH
         4boY9+swtcnfHfaUEAvT8JB70O8HU/d/hvjRKJTty8TC9uwrIvSgHqky0tgNn1XePO6J
         tEHw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVEL3hZ4YNH4ADigUOqIy70tf8PhOWtPTDWNpmgnirj6eBm+LzU
	zpOS8X8/70fApziTascslvo=
X-Google-Smtp-Source: APXvYqwhc5i1hEGCsP2QgnMT3oQQ5ja5RAUxw+vX8xGtZ/HFSGmILLSJ9ZmM1cP57J1b6A+ctzYgpA==
X-Received: by 2002:a67:ff08:: with SMTP id v8mr32971580vsp.81.1558650675604;
        Thu, 23 May 2019 15:31:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9f:3ecf:: with SMTP id n15ls446668uaj.6.gmail; Thu, 23 May
 2019 15:31:15 -0700 (PDT)
X-Received: by 2002:a9f:376e:: with SMTP id a43mr10210140uae.57.1558650675309;
        Thu, 23 May 2019 15:31:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558650675; cv=none;
        d=google.com; s=arc-20160816;
        b=iomD/jd9CYns1fRONTCAcYXmi4JREap/3noONz5uTgSJrSK7XIlIGdB573hYS4BAIe
         6lBU0d/ireFclCQ0GAKIk3wzcmWz4zYkttwAtwzhjtftVbdlAyISDyAJJYRd+f0F/opt
         GroJ5+JqGqGgbOVw2obvXVhTJ5OSkgTzoQTBiITXgbbSeHxZnRVWqdHhRtOHAHNyv4Gp
         9Ic3T26/1jvDD8nIQrdWwrrwxARPGIPuPKwMLOwYckoltSZ/a5td4mzMogwP2D1Wl/80
         HB3e0JrmJ06vPpNBsxSPSxN7UG8Tyec66N8U2Z22QRO78qYoJEXFGTw08qU/Wea+qMxz
         7H+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:message-id:date:cc
         :to:from;
        bh=X3gVgMjfrTg8QTfok0vfV8DCH9B/NK8jQyuFz/+oZ9s=;
        b=ZANTv6PbC4NwdZMgkt/qAOJ9DOqSVLT97bqZWhI+qoXYpxWPCMTgx4FZk1BjnZoH1m
         cvs57WvLCV7k/XqNMhJOzveS3kXvQTNCfo6Hgic1fkrDNQ0xUfDiEEnMx8WlAKQek0qD
         AuVAK8S3af/EaNIQAvU1H9JvpTsycGMD5rz8UVhilovZe1qhXbDrKPJQk4bRz9iWLhBj
         nanlc08MEap2DEr0URUg6xKkdNXsrZIdozMpyUAamMSuGA36Jc4cKqwcfF6wWXMqbcWk
         E2LnS+mgyZZw91lqevP3BgQkGMDup+F3R/utFX5ygY0W4bMvKrBzk9Ps5ZAMdkrvLA8b
         MgsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id r5si10871vsi.2.2019.05.23.15.31.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 15:31:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEs-00062L-Eu; Thu, 23 May 2019 16:31:13 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEp-0001S0-GI; Thu, 23 May 2019 16:31:03 -0600
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
Date: Thu, 23 May 2019 16:30:50 -0600
Message-Id: <20190523223100.5526-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-ntb@googlegroups.com, iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-kselftest@vger.kernel.org, jdmason@kudzu.us, joro@8bytes.org, bhelgaas@google.com, dave.jiang@intel.com, allenbh@gmail.com, fancer.lancer@gmail.com, epilmore@gigaio.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 00/10]  Support using MSI interrupts in ntb_transport
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

This is another resend as there has been no feedback since v4.
Seems Jon has been MIA this past cycle so hopefully he appears on the
list soon.

I've addressed the feedback so far and rebased on the latest kernel
and would like this to be considered for merging this cycle.

The only outstanding issue I know of is that it still will not work
with IDT hardware, but ntb_transport doesn't work with IDT hardware
and there is still no sensible common infrastructure to support
ntb_peer_mw_set_trans(). Thus, I decline to consider that complication
in this patchset. However, I'll be happy to review work that adds this
feature in the future.

Also, as the port number and resource index stuff is a bit complicated,
I made a quick out of tree test fixture to ensure it's correct[1]. As
an excerise I also wrote some test code[2] using the upcomming KUnit
feature.

Logan

[1] https://repl.it/repls/ExcitingPresentFile
[2] https://github.com/sbates130272/linux-p2pmem/commits/ntb_kunit

--

Changes in v5:

* Rebased onto v5.2-rc1 (plus the patches in ntb-next)

--

Changes in v4:

* Rebased onto v5.1-rc6 (No changes)

* Numerous grammar and spelling mistakes spotted by Bjorn

--

Changes in v3:

* Rebased onto v5.1-rc1 (Dropped the first two patches as they have
  been merged, and cleaned up some minor conflicts in the PCI tree)

* Added a new patch (#3) to calculate logical port numbers that
  are port numbers from 0 to (number of ports - 1). This is
  then used in ntb_peer_resource_idx() to fix the issues brought
  up by Serge.

* Fixed missing __iomem and iowrite calls (as noticed by Serge)

* Added patch 10 which describes ntb_msi_test in the documentation
  file (as requested by Serge)

* A couple other minor nits and documentation fixes

--

Changes in v2:

* Cleaned up the changes in intel_irq_remapping.c to make them
  less confusing and add a comment. (Per discussion with Jacob and
  Joerg)

* Fixed a nit from Bjorn and collected his Ack

* Added a Kconfig dependancy on CONFIG_PCI_MSI for CONFIG_NTB_MSI
  as the Kbuild robot hit a random config that didn't build
  without it.

* Worked in a callback for when the MSI descriptor changes so that
  the clients can resend the new address and data values to the peer.
  On my test system this was never necessary, but there may be
  other platforms where this can occur. I tested this by hacking
  in a path to rewrite the MSI descriptor when I change the cpu
  affinity of an IRQ. There's a bit of uncertainty over the latency
  of the change, but without hardware this can acctually occur on
  we can't test this. This was the result of a discussion with Dave.

--

This patch series adds optional support for using MSI interrupts instead
of NTB doorbells in ntb_transport. This is desirable seeing doorbells on
current hardware are quite slow and therefore switching to MSI interrupts
provides a significant performance gain. On switchtec hardware, a simple
apples-to-apples comparison shows ntb_netdev/iperf numbers going from
3.88Gb/s to 14.1Gb/s when switching to MSI interrupts.

To do this, a couple changes are required outside of the NTB tree:

1) The IOMMU must know to accept MSI requests from aliased bused numbers
seeing NTB hardware typically sends proxied request IDs through
additional requester IDs. The first patch in this series adds support
for the Intel IOMMU. A quirk to add these aliases for switchtec hardware
was already accepted. See commit ad281ecf1c7d ("PCI: Add DMA alias quirk
for Microsemi Switchtec NTB") for a description of NTB proxy IDs and why
this is necessary.

2) NTB transport (and other clients) may often need more MSI interrupts
than the NTB hardware actually advertises support for. However, seeing
these interrupts will not be triggered by the hardware but through an
NTB memory window, the hardware does not actually need support or need
to know about them. Therefore we add the concept of Virtual MSI
interrupts which are allocated just like any other MSI interrupt but
are not programmed into the hardware's MSI table. This is done in
Patch 2 and then made use of in Patch 3.

The remaining patches in this series add a library for dealing with MSI
interrupts, a test client and finally support in ntb_transport.

The series is based off of v5.1-rc6 plus the patches in ntb-next.
A git repo is available here:

https://github.com/sbates130272/linux-p2pmem/ ntb_transport_msi_v4

Thanks,

Logan

--

Logan Gunthorpe (10):
  PCI/MSI: Support allocating virtual MSI interrupts
  PCI/switchtec: Add module parameter to request more interrupts
  NTB: Introduce helper functions to calculate logical port number
  NTB: Introduce functions to calculate multi-port resource index
  NTB: Rename ntb.c to support multiple source files in the module
  NTB: Introduce MSI library
  NTB: Introduce NTB MSI Test Client
  NTB: Add ntb_msi_test support to ntb_test
  NTB: Add MSI interrupt support to ntb_transport
  NTB: Describe the ntb_msi_test client in the documentation.

 Documentation/ntb.txt                   |  27 ++
 drivers/ntb/Kconfig                     |  11 +
 drivers/ntb/Makefile                    |   3 +
 drivers/ntb/{ntb.c => core.c}           |   0
 drivers/ntb/msi.c                       | 415 +++++++++++++++++++++++
 drivers/ntb/ntb_transport.c             | 169 ++++++++-
 drivers/ntb/test/Kconfig                |   9 +
 drivers/ntb/test/Makefile               |   1 +
 drivers/ntb/test/ntb_msi_test.c         | 433 ++++++++++++++++++++++++
 drivers/pci/msi.c                       |  54 ++-
 drivers/pci/switch/switchtec.c          |  12 +-
 include/linux/msi.h                     |   8 +
 include/linux/ntb.h                     | 196 ++++++++++-
 include/linux/pci.h                     |   9 +
 tools/testing/selftests/ntb/ntb_test.sh |  54 ++-
 15 files changed, 1386 insertions(+), 15 deletions(-)
 rename drivers/ntb/{ntb.c => core.c} (100%)
 create mode 100644 drivers/ntb/msi.c
 create mode 100644 drivers/ntb/test/ntb_msi_test.c

--
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190523223100.5526-1-logang%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
