Return-Path: <linux-ntb+bncBCXK7HEV3YBRBPGHXP6AKGQERKAVVMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F7B293D31
	for <lists+linux-ntb@lfdr.de>; Tue, 20 Oct 2020 15:18:53 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id b189sf2077369ybh.5
        for <lists+linux-ntb@lfdr.de>; Tue, 20 Oct 2020 06:18:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603199932; cv=pass;
        d=google.com; s=arc-20160816;
        b=C68at3cd+fnHxwFYohb/FEC6KUqp+laQWnCuZ8eOW4+JjPBP+SScrSQbiRYPMl27iO
         1Zsqk86Ir4XkvWqIfKgLLwKGjcYKI3y6FDkjwz/vsnYGoWe0vnebHGk/FCaAZnZcdGIa
         SkQ+/MEedhx3ER5YLKh0DtPDHPpkNzo9YvB6FtkNSQEQx78ARgbm7HK2DiX4gPnRLE62
         2LdteEJAP0eRv6PzJvMelIXu4kRSR+gRIUTyXuhW2c5+aQSnuTqEZ90bXEo69UXE98rH
         aT409qkzc1ikxs7LkDryMV6kXdpeLHAbWJbMeAfMqCRujpA4XQTrBOQarZnZjAjfrVlA
         ui3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2aHw/ukJFOtmxfcQQBcY8tP39nDDIqoAamVQGN3WK74=;
        b=bLFwlQsF17SVnjtxbmM/bHSI3cJRkVJcgb9zooeuPb3rzaKP2/kAZNJ3WibgjE9jBw
         cMxfosCx7lrRU2T82+tkHfceeEhcnTxNHAhvoIz3ZFBGYBeU4YdB54UGVYQiChWAQZgr
         cDF727JwvQUqzer9DdQV+SYVEH94XGDltNMBRQnL5bfkyK7pfLFpcTobrjq4cB73Fd8l
         BUNQuaQa7he25WIPmxQ3A28AYtRv2GTTpUjZP/5qsU3FbxwLjuGvqtoxudDw8Hvdk7tO
         R2dDvJjJLW4xJYSAWt0Sf1RsVXrTOTU7sQHwuBHo0nULst0OaMJVe/v1klfj3D67qlEN
         qYXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2aHw/ukJFOtmxfcQQBcY8tP39nDDIqoAamVQGN3WK74=;
        b=kmzyxV5QJ9YRsGLUr3Cucgvoe2qazvtbukmzvjsfNhInKjU6b/e1sJGAstehFpSs6R
         dks3i4B+JbhmLC06Zi8qn2TSWpQOq48S7VDDS5p+ZaQiprklTVDTS1nCg2WfMB7usdxb
         jBqSkBo4Ti4JV1sgphHfODIPnEVeG6lnwHvYzzYqUzFaaEos4zZw1x1XsApbOAi/Qr2N
         n5T6x8puDS4SUJmJAVW8C56CW7v5E7QzBI2VVhVvL4vc7m8pZHDprq6MCb0Iy2MM9vZn
         zGedO1AE5KcO8thHfW24wYz1yLrX4ZHK4dnfkbqOornqka65Sbz/cFmCXxPCrPLkVWhy
         1KtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2aHw/ukJFOtmxfcQQBcY8tP39nDDIqoAamVQGN3WK74=;
        b=HJ0dDcT0GfLbKm4qY5kISGT8c3BT96pG8pLloH7kHPBr7+gAsKYsYkz2b78dnU3VBi
         tZEPs1qx0inWrUUE0lcWXF9l9KltR3EXCNe7IkbMlujYfqgTxMHRbspYjI2ygPZr5Rii
         Cc+m5OT+eKNt5D+Z/FYPh3H8VksjDscoia7acpKKfTsR75N1dII5vAZisZgHFJzeewKV
         QpUcMVnN22cHo0X5fN9blN2Jk1nSR2eMVCIXFISRW6RVYcuGxWHgtqrAbp8JFhYH1KxV
         /1J6E7yCQ5uFd6HEYmcIvmyx3cg03fzCkEKAmsgmQbU2H0bHdJ1cYth9jyW+6oEHQJUS
         52Tg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532H8Nx/uHM+Mql6xzhtV7PG82O3mR+OE+qU2W9Iu6po+mexPZcC
	zRmcMC4lVJZRIplv0bsN5+8=
X-Google-Smtp-Source: ABdhPJz9RYwHpM3y2JEMRHjwcDWJXBz4jqItY+n4bu6maZ/O19d600C0/urud8kmERhqREY9V5Zy9w==
X-Received: by 2002:a25:2a8a:: with SMTP id q132mr4334069ybq.445.1603199932350;
        Tue, 20 Oct 2020 06:18:52 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:2c04:: with SMTP id s4ls992980ybs.0.gmail; Tue, 20 Oct
 2020 06:18:51 -0700 (PDT)
X-Received: by 2002:a25:bc09:: with SMTP id i9mr4216796ybh.237.1603199931621;
        Tue, 20 Oct 2020 06:18:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603199931; cv=none;
        d=google.com; s=arc-20160816;
        b=jhCtvfSZq/yIRmwU56rM13YfSZVKYHZWIdp63FkRCvhLOhYTur7nEthx8BBA0g+Eht
         17JYI8MDocMgiKDCDwGUCkmfHQo2hWSPRKsEQUsTCydhkLhXEdHsOPl3MwAxUi5ZDbOk
         ycOwHEao5M9/wmpNaF/gGzkRF//00CbodZhjbXShkLXq2BeolLBnUSAh0zDPe9XFIGq0
         jhfFCxLCXsKeb1RuJkejB9vkkK525jxgNfR4wSCtl+eqSxkbIAX6N17zvEH8vvWaNEtJ
         ZmziZIfYl8ZEXcubc+QB7yrEJOWfDWRHE5VUQTVLiAy64UpmEflNv6V6ZPMNHehn+pCy
         OKTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=zAFLSOo4PufMNlUBVM41zlLao1VrM6y6knYHyChMTKs=;
        b=OVs1dcNdPVykxzNfWPp8cWX0bX7QTh4dIXiP+4NFksorGyD8YwCI7xw1LgqP+6yxI/
         DaXwQhjFGijv7Gl0ba1QQftjU3PbFTmfVFimcQ2V/2vGT3qa1scZRqqA5EHiZXfCnu1+
         CpaiNUdHr3NsQIRrtUPuS5DF3+e1YM5jkZJwyJ4fUk4WL+giP41Tlzf6wjQHufCQA+4t
         8zX7OQ/PQdxK1eXgx063do7Y50WVjdG/p2PN1Slvrb/knWR6Dw31gVst6RRlRIgK5Jxq
         83L0hL4vOuTit5RVx29OOCCLkgbOOgLRllRm3vHeLwOCBRuzzHn4IifeKvOXBRbj796F
         Zc7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t12si131562ybp.2.2020.10.20.06.18.51
        for <linux-ntb@googlegroups.com>;
        Tue, 20 Oct 2020 06:18:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEBA230E;
	Tue, 20 Oct 2020 06:18:50 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com [10.1.196.255])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5FC33F719;
	Tue, 20 Oct 2020 06:18:48 -0700 (PDT)
Date: Tue, 20 Oct 2020 14:18:43 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jonathan Corbet <corbet@lwn.net>, Arnd Bergmann <arnd@arndb.de>,
	Tom Joseph <tjoseph@cadence.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: Re: [PATCH v7 00/18] Implement NTB Controller using multiple PCI EP
Message-ID: <20201020131843.GA25784@e121166-lin.cambridge.arm.com>
References: <20200930153519.7282-1-kishon@ti.com>
 <fe2db298-2116-7f52-80bd-a3d01a9a1521@ti.com>
 <72ebe7db-86cd-6827-03ff-bde32c10dc7e@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <72ebe7db-86cd-6827-03ff-bde32c10dc7e@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: lorenzo.pieralisi@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Tue, Oct 20, 2020 at 01:45:45PM +0530, Kishon Vijay Abraham I wrote:
> Hi,
> 
> On 05/10/20 11:27 am, Kishon Vijay Abraham I wrote:
> > Hi Jon Mason, Allen Hubbe, Dave Jiang,
> > 
> > On 30/09/20 9:05 pm, Kishon Vijay Abraham I wrote:
> >> This series is about implementing SW defined Non-Transparent Bridge (NTB)
> >> using multiple endpoint (EP) instances. This series has been tested using
> >> 2 endpoint instances in J7 connected to J7 board on one end and DRA7 board
> >> on the other end. However there is nothing platform specific for the NTB
> >> functionality.
> > 
> > This series has two patches that adds to drivers/ntb/ directory.
> > [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-Transparent
> > Bridge and [PATCH v7 16/18] NTB: tool: Enable the NTB/PCIe link on the
> > local or remote side of bridge.
> > 
> > If you can review and Ack the above patches, Lorenzo can queue it along
> > with the rest of the series.
> > 
> > Thanks for your help in advance.
> 
> Gentle ping on this series.

I am not queueing any more patches for this merge window - we postpone
this series to v5.11 and in the interim it would be good to define some
possible users.

Thanks,
Lorenzo

> Thanks
> Kishon
> > 
> > Best Regards,
> > Kishon
> > 
> >>
> >> This was presented in Linux Plumbers Conference. Link to presentation
> >> and video can be found @ [1]
> >>
> >> RFC patch series can be found @ [2]
> >> v1 patch series can be found @ [3]
> >> v2 patch series can be found @ [4]
> >> v3 patch series can be found @ [5]
> >> v4 patch series can be found @ [6]
> >> v5 patch series can be found @ [7]
> >> v6 patch series can be found @ [8]
> >>
> >> Changes from v6:
> >> 1) Fixed issues when multiple NTB devices are creating using multiple
> >>    functions
> >> 2) Fixed issue with writing scratchpad register
> >> 3) Created a video demo @ [9]
> >>
> >> Changes from v5:
> >> 1) Fixed a formatting issue in Kconfig pointed out by Randy
> >> 2) Checked for Error or Null in pci_epc_add_epf()
> >>
> >> Changes from v4:
> >> 1) Fixed error condition checks in pci_epc_add_epf()
> >>
> >> Changes from v3:
> >> 1) Fixed Documentation edits suggested by Randy Dunlap <rdunlap@infradead.org>
> >>
> >> Changes from v2:
> >> 1) Add support for the user to create sub-directory of 'EPF Device'
> >>    directory (for endpoint function specific configuration using
> >>    configfs).
> >> 2) Add documentation for NTB specific attributes in configfs
> >> 3) Check for PCI_CLASS_MEMORY_RAM (PCIe class) before binding ntb_hw_epf
> >>    driver
> >> 4) Other documentation fixes
> >>
> >> Changes from v1:
> >> 1) As per Rob's comment, removed support for creating NTB function
> >>    device from DT
> >> 2) Add support to create NTB EPF device using configfs (added support in
> >>    configfs to associate primary and secondary EPC with EPF.
> >>
> >> Changes from RFC:
> >> 1) Converted the DT binding patches to YAML schema and merged the
> >>    DT binding patches together
> >> 2) NTB documentation is converted to .rst
> >> 3) One HOST can now interrupt the other HOST using MSI-X interrupts
> >> 4) Added support for teardown of memory window and doorbell
> >>    configuration
> >> 5) Add support to provide support 64-bit memory window size from
> >>    DT
> >>
> >> [1] -> https://linuxplumbersconf.org/event/4/contributions/395/
> >> [2] -> http://lore.kernel.org/r/20190926112933.8922-1-kishon@ti.com
> >> [3] -> http://lore.kernel.org/r/20200514145927.17555-1-kishon@ti.com
> >> [4] -> http://lore.kernel.org/r/20200611130525.22746-1-kishon@ti.com
> >> [5] -> http://lore.kernel.org/r/20200904075052.8911-1-kishon@ti.com
> >> [6] -> http://lore.kernel.org/r/20200915042110.3015-1-kishon@ti.com
> >> [7] -> http://lore.kernel.org/r/20200918064227.1463-1-kishon@ti.com
> >> [8] -> http://lore.kernel.org/r/20200924092519.17082-1-kishon@ti.com
> >> [9] -> https://youtu.be/dLKKxrg5-rY
> >>
> >> Kishon Vijay Abraham I (18):
> >>   Documentation: PCI: Add specification for the *PCI NTB* function
> >>     device
> >>   PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit
> >>     BAR
> >>   PCI: endpoint: Add helper API to get the 'next' unreserved BAR
> >>   PCI: endpoint: Make *_free_bar() to return error codes on failure
> >>   PCI: endpoint: Remove unused pci_epf_match_device()
> >>   PCI: endpoint: Add support to associate secondary EPC with EPF
> >>   PCI: endpoint: Add support in configfs to associate two EPCs with EPF
> >>   PCI: endpoint: Add pci_epc_ops to map MSI irq
> >>   PCI: endpoint: Add pci_epf_ops for epf drivers to expose function
> >>     specific attrs
> >>   PCI: endpoint: Allow user to create sub-directory of 'EPF Device'
> >>     directory
> >>   PCI: cadence: Implement ->msi_map_irq() ops
> >>   PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
> >>   PCI: endpoint: Add EP function driver to provide NTB functionality
> >>   PCI: Add TI J721E device to pci ids
> >>   NTB: Add support for EPF PCI-Express Non-Transparent Bridge
> >>   NTB: tool: Enable the NTB/PCIe link on the local or remote side of
> >>     bridge
> >>   Documentation: PCI: Add configfs binding documentation for pci-ntb
> >>     endpoint function
> >>   Documentation: PCI: Add userguide for PCI endpoint NTB function
> >>
> >>  .../PCI/endpoint/function/binding/pci-ntb.rst |   38 +
> >>  Documentation/PCI/endpoint/index.rst          |    3 +
> >>  .../PCI/endpoint/pci-endpoint-cfs.rst         |   10 +
> >>  .../PCI/endpoint/pci-ntb-function.rst         |  351 +++
> >>  Documentation/PCI/endpoint/pci-ntb-howto.rst  |  160 ++
> >>  drivers/misc/pci_endpoint_test.c              |    1 -
> >>  drivers/ntb/hw/Kconfig                        |    1 +
> >>  drivers/ntb/hw/Makefile                       |    1 +
> >>  drivers/ntb/hw/epf/Kconfig                    |    6 +
> >>  drivers/ntb/hw/epf/Makefile                   |    1 +
> >>  drivers/ntb/hw/epf/ntb_hw_epf.c               |  755 ++++++
> >>  drivers/ntb/test/ntb_tool.c                   |    1 +
> >>  .../pci/controller/cadence/pcie-cadence-ep.c  |   60 +-
> >>  drivers/pci/endpoint/functions/Kconfig        |   12 +
> >>  drivers/pci/endpoint/functions/Makefile       |    1 +
> >>  drivers/pci/endpoint/functions/pci-epf-ntb.c  | 2114 +++++++++++++++++
> >>  drivers/pci/endpoint/functions/pci-epf-test.c |   13 +-
> >>  drivers/pci/endpoint/pci-ep-cfs.c             |  176 +-
> >>  drivers/pci/endpoint/pci-epc-core.c           |  130 +-
> >>  drivers/pci/endpoint/pci-epf-core.c           |  105 +-
> >>  include/linux/pci-epc.h                       |   39 +-
> >>  include/linux/pci-epf.h                       |   28 +-
> >>  include/linux/pci_ids.h                       |    1 +
> >>  23 files changed, 3934 insertions(+), 73 deletions(-)
> >>  create mode 100644 Documentation/PCI/endpoint/function/binding/pci-ntb.rst
> >>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
> >>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst
> >>  create mode 100644 drivers/ntb/hw/epf/Kconfig
> >>  create mode 100644 drivers/ntb/hw/epf/Makefile
> >>  create mode 100644 drivers/ntb/hw/epf/ntb_hw_epf.c
> >>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-ntb.c
> >>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201020131843.GA25784%40e121166-lin.cambridge.arm.com.
