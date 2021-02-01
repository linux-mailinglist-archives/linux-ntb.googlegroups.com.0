Return-Path: <linux-ntb+bncBCXK7HEV3YBRBAUV4GAAMGQEU3E2NPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A5030AF83
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 19:37:55 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id p8sf121739pjg.1
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 10:37:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612204674; cv=pass;
        d=google.com; s=arc-20160816;
        b=xZxHX610J/KX9yX5URS3ns2vLq6CqvlRPwGzliYXJ0E2pnJNKqM/c81f3lgY7BBrcY
         9KLJgW7l4QMyFKBPjGHMcJoA/6z0ixrgnB4UF0n9NQm6c82lJ97Y8HxB84xigKlw54bb
         PMntXl75e/e/twS1KT9yl9n8q9UZAThvJf1WkphCk9FioUFi4EBs+tg7V0qsWPSOuKis
         cvDjGVnw3kGkm99I/3pnYZmqFda+2MiQT87q8kU+SFuGy5cFUU+10AD7HVd5ddl5xiRx
         pAmrPQF7J6VTtBiGbByj2igLGdscskO0yt3rvkgKyj4JlsNpjygapMWh6qkz3/uOS7ja
         PTgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=3AvfZZPP6sc/XN2RmNFtHJMN9L1c+fbFpvOClWPN53A=;
        b=NS0gyyqXQzPMaa3jj7e079YelAHHHiHlEwMVTq+kR9lHU+ukrIkMgeJhw9cFevvV18
         X3r1ThSUweb+1HMnE1gHKXhQ5qcUkApyusgtKWHO3/DyZuPfyyCpJJXFoaM4nq0T6rST
         GdqT0qCKs/4MDER7cNqsC/AGnL+47T6ozu9+ZtwlHcU/70bAB2eBZ/iEy19iyB2TOdSR
         dVTVftsLCEbGcLo9pndsWVp0oHnMILMsfmjp615cv7IbWvrwgEJX07ZHjH8ZSNDrextz
         4ydiIitDh6ZqH7bfokmYE9UshsNC2YrYsx/A/Gurb+Wk1xLVupOA+7RIzbbPiI086EUy
         p5Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3AvfZZPP6sc/XN2RmNFtHJMN9L1c+fbFpvOClWPN53A=;
        b=C6TroQi7OQjumTv78foJJCH0SIqjdpZvKDX8pwRwH/QaBlogli96VM0/3e3n0CxR1g
         erqtDxrEfI6OeHHb/4zUge9NztaQjY2JtT73ygS/g9gpSy1HUFWdmGNcnRi9SILgVFg/
         aiaYJVHsblbn3iRdKkFmSA09SSlSCiz2c0Pkrht/cX4yw9rJwfxMMOqK7xivToRRSGyl
         RYN1h4ZXwDTDKurzc5mjDXBDQfqjjMEf+XPlGPVJFQi+YmDPTkwnLB7qDrlXRLCd1GAu
         EUKA6Z8nuKuZrKTh3PaycbtFxwJL6kRSIB1wlXSwJhDLB2ZrErqJgIeYmC95RGc2/1wn
         DgeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3AvfZZPP6sc/XN2RmNFtHJMN9L1c+fbFpvOClWPN53A=;
        b=YndtP/1AYsdxGkPlXAib8QOV8F21Jqs9gqhhBNWCvwLEkUMz3AKM1tURxz6N10uPev
         iRH5NWFWHiRh53Z6c2CCDNcDuTsRp6uj8N0bwl5HBRFkU79YO6Oj2QvMcrYNKtf4yav5
         TB5IIenM8Q7SMq7jeaJRFs0Wf4+fr40dSNV9JeYYKiGEJDdVrAlymJOYIzsyui0NnOnH
         nMZyKspETzvfqL4V8rXyYPJ5YaYjijCeRw+GTnCcyu5yj7MW5Cw5tG7JwGzq8YqqA8m5
         lqCY2jp4GkGhCLFdtVrNorzJJE/o7aaD4+uI/ZWhcaglUGmz+naDD8ui7ZYgFwXL/5wq
         YS9A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533H9IM+rcDn9sDnS9rnH/AMxhnL1P4T5MlUgBneTBrAnindsCi1
	v4mSb2W3j/ALar0aCZ23NO8=
X-Google-Smtp-Source: ABdhPJyp0ZiUHx/JpqEwlriML0wFdH3CjwG7UTw8puZfDg3+cxG8VhqfIcOv4Sm9ZmXazo+zm1NNnQ==
X-Received: by 2002:a17:902:16b:b029:dc:4ca1:f5fc with SMTP id 98-20020a170902016bb02900dc4ca1f5fcmr18439481plb.26.1612204674260;
        Mon, 01 Feb 2021 10:37:54 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:9386:: with SMTP id t6ls6992177pfe.1.gmail; Mon, 01 Feb
 2021 10:37:53 -0800 (PST)
X-Received: by 2002:aa7:9ac8:0:b029:1c1:4472:c63 with SMTP id x8-20020aa79ac80000b02901c144720c63mr17350988pfp.1.1612204673669;
        Mon, 01 Feb 2021 10:37:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612204673; cv=none;
        d=google.com; s=arc-20160816;
        b=zS0EtM8QLMuH/4brNFUeIL03vbVCQar2nAwr+Eg1AO1Jjg7VPHMdkkFNVcIRD2HTMe
         1cl/kueM/4aDGIaakErXvGeCL7QLE2KFVN+07i4zl1QaczF4PjVmb17DJC29/irEWXyV
         Nqtp9lSh3drywWBw8lseKn00x5n5KZIQzNbzSnPbl/m5jK+Nfy4lq9aPk0tAdkVpBTQO
         DR3yZ0rQ2PZ978AoLostXF1AJ2NsNuTW0zQnYwefcGpLHNHrI+t3QdNdAzRlRsNsRvUd
         B61Q2gaIp6MQbFBAtyozn4ilLxLf3JOXyzyuArM9/TcAn7AHQTi/jLAsP5F2cYybWsIa
         Sccg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=1586XwgFRXCKR8V7cuc1++MrnVezjh2lyan1IS88J8U=;
        b=ZikfP/HKjhN73ZAWe6Cs/P6Mx86jaO563gv+JyWcq911eLWLabVWZXlq0bXeQVlRxj
         xKi+Pjec8wqKmAkLeKldsM0JHnUZHDaYziZ25TUcM9CEqE28UfyACciBoFJbDjXVH+SR
         7+otW7zsaC89f3Hs65Zai+808XSLBwryLcyTgM2B1Qqi7+ucjVuFzGMsxPlOsW4d/+Wn
         +i1F5vWuqtWvody6RCGjG1/NJkWPkuk0LIoX1CstBWWIFObJuNqB10zEqbSvpWtSk5d1
         +ZxXNOiFY+J39utrZW5nt9VFa9aJvXu2NVGXAW3IHJFr81tahghUuAbWQVKJKRb4cAhz
         pIXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i10si126043pfa.6.2021.02.01.10.37.53
        for <linux-ntb@googlegroups.com>;
        Mon, 01 Feb 2021 10:37:53 -0800 (PST)
Received-SPF: pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD29A1477;
	Mon,  1 Feb 2021 10:37:52 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com [10.1.196.255])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E59FD3F718;
	Mon,  1 Feb 2021 10:37:50 -0800 (PST)
Date: Mon, 1 Feb 2021 18:37:45 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Arnd Bergmann <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: Re: [PATCH v10 00/17] Implement NTB Controller using multiple PCI EP
Message-ID: <20210201183745.GA5152@e121166-lin.cambridge.arm.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
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

On Fri, Jan 29, 2021 at 06:12:56PM +0530, Kishon Vijay Abraham I wrote:
> This series is about implementing SW defined Non-Transparent Bridge (NTB)
> using multiple endpoint (EP) instances. This series has been tested using
> 2 endpoint instances in J7 connected to J7 board on one end and DRA7 board
> on the other end. However there is nothing platform specific for the NTB
> functionality.
> 
> This was presented in Linux Plumbers Conference. Link to presentation
> and video can be found @ [1]
> Created a video demo @ [9]
> 
> RFC patch series can be found @ [2]
> v1 patch series can be found @ [3]
> v2 patch series can be found @ [4]
> v3 patch series can be found @ [5]
> v4 patch series can be found @ [6]
> v5 patch series can be found @ [7]
> v6 patch series can be found @ [8]
> v7 patch series can be found @ [10]
> v8 patch series can be found @ [11]
> v9 patch series can be found @ [12]
> 
> Changes from v9:
> 1) Fix the typos pointed out Bjorn Helgaas
> 2) Added the received Reviewed-by tags.
> 
> Changes from v8:
> 1) Do not use devm_request_irq/devm_free_irq as pci_free_irq_vectors()
> has to be used after free_irq
> 2) Drop "NTB: tool: Enable the NTB/PCIe link on the local or remote side
> of bridge" as there is a debugfs entry to enable the link
>  
> Changes from v7:
> 1) Used values stored in ctrl_reg_bar, peer_spad_reg_bar and db_reg_bar
>    instead of hardcoded values in pci_iomap of ntb_hw_epf.c driver
> 
> Changes from v6:
> 1) Fixed issues when multiple NTB devices are creating using multiple
>    functions
> 2) Fixed issue with writing scratchpad register
> 3) Created a video demo @ [9]
> 
> Changes from v5:
> 1) Fixed a formatting issue in Kconfig pointed out by Randy
> 2) Checked for Error or Null in pci_epc_add_epf()
> 
> Changes from v4:
> 1) Fixed error condition checks in pci_epc_add_epf()
> 
> Changes from v3:
> 1) Fixed Documentation edits suggested by Randy Dunlap <rdunlap@infradead.org>
> 
> Changes from v2:
> 1) Add support for the user to create sub-directory of 'EPF Device'
>    directory (for endpoint function specific configuration using
>    configfs).
> 2) Add documentation for NTB specific attributes in configfs
> 3) Check for PCI_CLASS_MEMORY_RAM (PCIe class) before binding ntb_hw_epf
>    driver
> 4) Other documentation fixes
> 
> Changes from v1:
> 1) As per Rob's comment, removed support for creating NTB function
>    device from DT
> 2) Add support to create NTB EPF device using configfs (added support in
>    configfs to associate primary and secondary EPC with EPF.
> 
> Changes from RFC:
> 1) Converted the DT binding patches to YAML schema and merged the
>    DT binding patches together
> 2) NTB documentation is converted to .rst
> 3) One HOST can now interrupt the other HOST using MSI-X interrupts
> 4) Added support for teardown of memory window and doorbell
>    configuration
> 5) Add support to provide support 64-bit memory window size from
>    DT
> 
> [1] -> https://linuxplumbersconf.org/event/4/contributions/395/
> [2] -> http://lore.kernel.org/r/20190926112933.8922-1-kishon@ti.com
> [3] -> http://lore.kernel.org/r/20200514145927.17555-1-kishon@ti.com
> [4] -> http://lore.kernel.org/r/20200611130525.22746-1-kishon@ti.com
> [5] -> http://lore.kernel.org/r/20200904075052.8911-1-kishon@ti.com
> [6] -> http://lore.kernel.org/r/20200915042110.3015-1-kishon@ti.com
> [7] -> http://lore.kernel.org/r/20200918064227.1463-1-kishon@ti.com
> [8] -> http://lore.kernel.org/r/20200924092519.17082-1-kishon@ti.com
> [9] -> https://youtu.be/dLKKxrg5-rY
> [10] -> http://lore.kernel.org/r/20200930153519.7282-1-kishon@ti.com 
> [11] -> http://lore.kernel.org/r/20201111153559.19050-1-kishon@ti.com
> [12] -> http://lore.kernel.org/r/20210104152909.22038-1-kishon@ti.com
> 
> Kishon Vijay Abraham I (17):
>   Documentation: PCI: Add specification for the *PCI NTB* function
>     device
>   PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit
>     BAR
>   PCI: endpoint: Add helper API to get the 'next' unreserved BAR
>   PCI: endpoint: Make *_free_bar() to return error codes on failure
>   PCI: endpoint: Remove unused pci_epf_match_device()
>   PCI: endpoint: Add support to associate secondary EPC with EPF
>   PCI: endpoint: Add support in configfs to associate two EPCs with EPF
>   PCI: endpoint: Add pci_epc_ops to map MSI irq
>   PCI: endpoint: Add pci_epf_ops for epf drivers to expose function
>     specific attrs
>   PCI: endpoint: Allow user to create sub-directory of 'EPF Device'
>     directory
>   PCI: cadence: Implement ->msi_map_irq() ops
>   PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
>   PCI: endpoint: Add EP function driver to provide NTB functionality
>   PCI: Add TI J721E device to pci ids
>   NTB: Add support for EPF PCI-Express Non-Transparent Bridge
>   Documentation: PCI: Add configfs binding documentation for pci-ntb
>     endpoint function
>   Documentation: PCI: Add userguide for PCI endpoint NTB function
> 
>  .../PCI/endpoint/function/binding/pci-ntb.rst |   38 +
>  Documentation/PCI/endpoint/index.rst          |    3 +
>  .../PCI/endpoint/pci-endpoint-cfs.rst         |   10 +
>  .../PCI/endpoint/pci-ntb-function.rst         |  348 +++
>  Documentation/PCI/endpoint/pci-ntb-howto.rst  |  161 ++
>  drivers/misc/pci_endpoint_test.c              |    1 -
>  drivers/ntb/hw/Kconfig                        |    1 +
>  drivers/ntb/hw/Makefile                       |    1 +
>  drivers/ntb/hw/epf/Kconfig                    |    6 +
>  drivers/ntb/hw/epf/Makefile                   |    1 +
>  drivers/ntb/hw/epf/ntb_hw_epf.c               |  754 ++++++
>  .../pci/controller/cadence/pcie-cadence-ep.c  |   60 +-
>  drivers/pci/endpoint/functions/Kconfig        |   13 +
>  drivers/pci/endpoint/functions/Makefile       |    1 +
>  drivers/pci/endpoint/functions/pci-epf-ntb.c  | 2128 +++++++++++++++++
>  drivers/pci/endpoint/functions/pci-epf-test.c |   13 +-
>  drivers/pci/endpoint/pci-ep-cfs.c             |  176 +-
>  drivers/pci/endpoint/pci-epc-core.c           |  130 +-
>  drivers/pci/endpoint/pci-epf-core.c           |  105 +-
>  include/linux/pci-epc.h                       |   39 +-
>  include/linux/pci-epf.h                       |   28 +-
>  include/linux/pci_ids.h                       |    1 +
>  22 files changed, 3945 insertions(+), 73 deletions(-)
>  create mode 100644 Documentation/PCI/endpoint/function/binding/pci-ntb.rst
>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst
>  create mode 100644 drivers/ntb/hw/epf/Kconfig
>  create mode 100644 drivers/ntb/hw/epf/Makefile
>  create mode 100644 drivers/ntb/hw/epf/ntb_hw_epf.c
>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-ntb.c

Hi Kishon,

it looks like this series did not make it to linux-pci therefore
I can't apply it, not sure what happened, I need to check.

Lorenzo

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201183745.GA5152%40e121166-lin.cambridge.arm.com.
