Return-Path: <linux-ntb+bncBD3OB6FQZIKBBF5IQT6QKGQEN6FGOFI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5727E2A3ED5
	for <lists+linux-ntb@lfdr.de>; Tue,  3 Nov 2020 09:26:00 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id o12sf2648760qvw.1
        for <lists+linux-ntb@lfdr.de>; Tue, 03 Nov 2020 00:26:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604391959; cv=pass;
        d=google.com; s=arc-20160816;
        b=f0UryUyWRGLTCGSqbmZkn7w8GlN7GD9DkUIgv8NZPpiJd7nSBN7vvU6OAa8qYz1NhC
         HxU61NqchfgTxfn3sVpYPFYSTIpXNpB3t/F9uaruoUnJ+z/qvKgO5UqmL0/hr7iSP/2Y
         I+cJrWRTT4Ze56oUJjhEovGuHcEL7WjWKhBAK6+JE4InqmhRIQAQ5WkktaRWktThyYN6
         LyHximd9WZcxPAWUkPTEdOG2tYGRZyWbp7xRxOVyhynLV8KVG2Y2nBsdUV28xROACzj3
         LQWrHqrvmLR6TxNq21lIZNoB/K0AArpEwDjOHFV+0toLewqN1AQm2VAaqiA7j8qbaz3V
         qXAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jRJx9aXRNIB/OBVwg1XGbaFo1yBh5Bd0B2jrahmhWTY=;
        b=rkoDk91tvlTGD6vDED2GC+pDNyoCqWhKeiFGNmYJG4m5xFTXeCVpprIhabJN7AFks4
         UgSvuUpL2nKUUbm4MTiEzn5g+VWIkW441IDPRX0J6sLB7VzTvQ20G0u6lkWDl9sxqgeG
         co1T2OJ47IDh0D/zGef6zp7vbU4lKwL6UxwJrAWoCZRUpELKrly9R7qAnXd6Iq6d8LVB
         dKrHkA3u+uhc2PSudAu3/GO1kTPbOoZtG01ZN+tVy/7xc+laIlP+CTyYiQMMAePv5oWz
         b1f9LlpvpyXdZrKDkfbrlYVCzdERNyDHz/jdhB9Qqbdmi57IC4D3TRCl/ChtIKY8waL8
         WiDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RqMfZIG2;
       spf=pass (google.com: domain of alanmikhak@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=alanmikhak@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jRJx9aXRNIB/OBVwg1XGbaFo1yBh5Bd0B2jrahmhWTY=;
        b=FU1ncpu7k5WD77y9Mj2iMOp77GPraosw1fLkSlqEYtn29f7MagIqMcGLKmXi3u3cSM
         1Z8JTXt8Qo6BikfCnxmXc28RtImKWFESoOxorS6+NfPnDmiaQGbhnWfzSgI8fUt8l43L
         4CXw/rnhAKwSYZIsOb7gNSz1nRSLKjfoCM/UpSEpOGl8hEOgS8sdkw/1S3Ld0KsmLNjW
         uol8CJqZ5SgwAviuOFXJu8zrVlwoe+48VhPyaJpjpdpGASuqNsxuN3sTHO3E6wdmvn1K
         tjPxReXhUEBkDbgEeFm1vbCA47C9/ISSgflMJASB/flZX90ycqQgWvucYaGtbxldpjEB
         FjCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jRJx9aXRNIB/OBVwg1XGbaFo1yBh5Bd0B2jrahmhWTY=;
        b=i4zmaX1P+wnkj9kTBvVOAeLa9hcYXApJ4aFszqwTp9RCl6QreDXbxuJuH+k8omT53L
         0jIDyBtMH5xLfo/2HsMnIZt/3i6qD1q3+zzQwZyl+HvEXLyitOGGsHVkJIjkE/AT0Jbn
         53BtXtNHUCs/vF370CKvbYh6hiCdZrRf02Mkdsgrpq/2y48MZcjntRjKwFm30mtK+R6z
         Lub1koLdZgem3QV24K3Rdtx0xugUEfOyIuL57yWuM1OgJtzaSkTwR6Kf2jc8pI36o13E
         S7p+/Dt6um0LJyeKkl42IQzprVlNaxLt78OEcSsjT6urgzTY1VeUgJ9OlKr9AkwMrJyY
         Wv9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jRJx9aXRNIB/OBVwg1XGbaFo1yBh5Bd0B2jrahmhWTY=;
        b=UDd19KPpMxIFFwugbEHbErZ6zMIW7HB1uT6EE7uVNiv9hhfvHpO71LnhVAbiKd8XsY
         2nWe2mFDDht6ai6vUjfiK464yOqflhPsOF12/N3Ktlm0vfWf2Bi5T5Asw81UMr9a6oNU
         cdibgfknh4mXY0RMbpYoD9BiGfGYOPJ4dMLwiUqAyqMHrd59/7Q/2Vlypo6WOtJakGJA
         etDzgTrh8zCHMK915Ujx3TF+7tgHy11h66xDizTovAiNL7lYNQLdAX5jYjtG7xDFFUBH
         M5jxkr8KkaUCFAUhHRMct7Z+BTSxSWoi7zDZeC1nA/XRlUHcR47Mr1tuLDUwmPquT4Xa
         aQCw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530OpSni1Bqcb3uklEXuDSHAGYLLGIPNAh0V42TOpHhl8nHk0sBU
	TFNlLhHDFqHbNWRbXpB97kM=
X-Google-Smtp-Source: ABdhPJyCQO3XkxnsuEsWcVd8NNEZtQ5jeThLlGw9imRd7OJW0577HSRZ7nYZ3FSyiN53fFNv+9pp3Q==
X-Received: by 2002:a0c:b48d:: with SMTP id c13mr25736189qve.13.1604391959226;
        Tue, 03 Nov 2020 00:25:59 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:454a:: with SMTP id z10ls387812qtn.10.gmail; Tue, 03 Nov
 2020 00:25:58 -0800 (PST)
X-Received: by 2002:ac8:5854:: with SMTP id h20mr17920362qth.176.1604391958723;
        Tue, 03 Nov 2020 00:25:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604391958; cv=none;
        d=google.com; s=arc-20160816;
        b=cKajVyCF/Efyh7vj2dZM5rZg1aaujbfgGrJkXKy/BDL77RP4eHseQhfOuYqlsJE0Ut
         ioyO0HYb/TS722O2L1oDR1hmE+h3QsBHb0qmOYZUM39JQjWN//yPxl6sDZwhf4QBMc1P
         k+JJ7lkTx3SVcX5oPiHSbXvzUiGhRzMSkz8MOUPlpMs5JLjjWJ6tMXkhkZw/rF7pDT2v
         7fFt9hIow+XDrsHKqVpOgYCpZZCiuCUEWeFzeR+F0XgHl07xAGS3aWYN5vqm9uzZKeOV
         gbaQbKSgIDaAc84OwZTenhix3U5SP96kpIGZ1C/2Uxq4WLfZ6dBwYiay+/jSgHy/ud0v
         sVDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0lYDJpbZlFCa55EByZtSkRyaR296+UnnRnkneeNbEdQ=;
        b=uMfJfJN1uWzUUTRnqzLYcwAW8JkvClQiacIbat5qgpS2mnjNC+n7UtnREZlW3VZZzz
         W/59JbhfhboEdEXnGt0JhXFlnnLcaHOi2owyGCSzYHS9CzRSY6k3x7T6KRzD/T5ORzMV
         pB7DgEz6zjsJ+DofG/U4Lc6vaIsT7fXE+2tMQVAPRfidXp5I5o5VPvoN/fashBVy6BnY
         PqlHC42AFJDd9gk4Xd9ctDnAQhyhgUhgiECSuzo5bPWzX66/+xlWzpojlRMWGY/d21AA
         jsJEGRAabWEDmQInedvkBLyLX3bpTMl5up68ewhcVdLSklVtqzqmYSrOyF11BLrh9QNZ
         SxHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RqMfZIG2;
       spf=pass (google.com: domain of alanmikhak@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=alanmikhak@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id x13si778910qka.3.2020.11.03.00.25.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 00:25:58 -0800 (PST)
Received-SPF: pass (google.com: domain of alanmikhak@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id t8so6191665vsr.2
        for <linux-ntb@googlegroups.com>; Tue, 03 Nov 2020 00:25:58 -0800 (PST)
X-Received: by 2002:a67:798d:: with SMTP id u135mr16178406vsc.49.1604391958258;
 Tue, 03 Nov 2020 00:25:58 -0800 (PST)
MIME-Version: 1.0
References: <20200930153519.7282-1-kishon@ti.com> <fe2db298-2116-7f52-80bd-a3d01a9a1521@ti.com>
 <72ebe7db-86cd-6827-03ff-bde32c10dc7e@ti.com> <20201020131843.GA25784@e121166-lin.cambridge.arm.com>
 <27b4ae15-03ce-e2f1-a0b5-65db7c7dd71e@ti.com>
In-Reply-To: <27b4ae15-03ce-e2f1-a0b5-65db7c7dd71e@ti.com>
From: Alan Mikhak <alanmikhak@gmail.com>
Date: Tue, 3 Nov 2020 00:25:46 -0800
Message-ID: <CAOY98NcccMN=QPNv1Nt2HXMeDo1R+f8oQK6V663a30sdKpPy9Q@mail.gmail.com>
Subject: Re: [PATCH v7 00/18] Implement NTB Controller using multiple PCI EP
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jon Mason <jdmason@kudzu.us>, 
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>, Arnd Bergmann <arnd@arndb.de>, 
	Tom Joseph <tjoseph@cadence.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-pci@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, 
	alan.mikhak@sifive.com
Content-Type: multipart/alternative; boundary="000000000000c0a88805b32f9c05"
X-Original-Sender: alanmikhak@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RqMfZIG2;       spf=pass
 (google.com: domain of alanmikhak@gmail.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=alanmikhak@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000c0a88805b32f9c05
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 2, 2020, 11:58 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:

> +Alan
>
> Hi Jon Mason, Allen Hubbe, Dave Jiang,
>
> On 20/10/20 6:48 pm, Lorenzo Pieralisi wrote:
> > On Tue, Oct 20, 2020 at 01:45:45PM +0530, Kishon Vijay Abraham I wrote:
> >> Hi,
> >>
> >> On 05/10/20 11:27 am, Kishon Vijay Abraham I wrote:
> >>> Hi Jon Mason, Allen Hubbe, Dave Jiang,
> >>>
> >>> On 30/09/20 9:05 pm, Kishon Vijay Abraham I wrote:
> >>>> This series is about implementing SW defined Non-Transparent Bridge
> (NTB)
> >>>> using multiple endpoint (EP) instances. This series has been tested
> using
> >>>> 2 endpoint instances in J7 connected to J7 board on one end and DRA7
> board
> >>>> on the other end. However there is nothing platform specific for the
> NTB
> >>>> functionality.
> >>>
> >>> This series has two patches that adds to drivers/ntb/ directory.
> >>> [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-Transparent
> >>> Bridge and [PATCH v7 16/18] NTB: tool: Enable the NTB/PCIe link on the
> >>> local or remote side of bridge.
> >>>
> >>> If you can review and Ack the above patches, Lorenzo can queue it along
> >>> with the rest of the series.
>
> Would you be able to review and Ack the NTB parts of this series?
> >>>
> >>> Thanks for your help in advance.
> >>
> >> Gentle ping on this series.
> >
> > I am not queueing any more patches for this merge window - we postpone
> > this series to v5.11 and in the interim it would be good to define some
> > possible users.
>
> Alan, Do you have a system where you can test this series? It only needs
> two endpoint instances on a single system.
>
> Thanks
> Kishon
>

Kishon, I have no suitable systems. I wonder if two Nvidia Jetson Xavier NX
boards can be connected back to back by ethernet and plugged into x86
system pcie slots for this. I believe they have the dwc pcie controller
with driver support for endpoint mode but I personally don't have any. The
FriendlyElec NanoPi M4 boards also supports endpoint mode with the Rockchip
RK3399 pcie controller but I have not found the endpoint driver suppor for
that.

Regards, Alan

>
> > Thanks,
> > Lorenzo
> >
> >> Thanks
> >> Kishon
> >>>
> >>> Best Regards,
> >>> Kishon
> >>>
> >>>>
> >>>> This was presented in Linux Plumbers Conference. Link to presentation
> >>>> and video can be found @ [1]
> >>>>
> >>>> RFC patch series can be found @ [2]
> >>>> v1 patch series can be found @ [3]
> >>>> v2 patch series can be found @ [4]
> >>>> v3 patch series can be found @ [5]
> >>>> v4 patch series can be found @ [6]
> >>>> v5 patch series can be found @ [7]
> >>>> v6 patch series can be found @ [8]
> >>>>
> >>>> Changes from v6:
> >>>> 1) Fixed issues when multiple NTB devices are creating using multiple
> >>>>    functions
> >>>> 2) Fixed issue with writing scratchpad register
> >>>> 3) Created a video demo @ [9]
> >>>>
> >>>> Changes from v5:
> >>>> 1) Fixed a formatting issue in Kconfig pointed out by Randy
> >>>> 2) Checked for Error or Null in pci_epc_add_epf()
> >>>>
> >>>> Changes from v4:
> >>>> 1) Fixed error condition checks in pci_epc_add_epf()
> >>>>
> >>>> Changes from v3:
> >>>> 1) Fixed Documentation edits suggested by Randy Dunlap <
> rdunlap@infradead.org>
> >>>>
> >>>> Changes from v2:
> >>>> 1) Add support for the user to create sub-directory of 'EPF Device'
> >>>>    directory (for endpoint function specific configuration using
> >>>>    configfs).
> >>>> 2) Add documentation for NTB specific attributes in configfs
> >>>> 3) Check for PCI_CLASS_MEMORY_RAM (PCIe class) before binding
> ntb_hw_epf
> >>>>    driver
> >>>> 4) Other documentation fixes
> >>>>
> >>>> Changes from v1:
> >>>> 1) As per Rob's comment, removed support for creating NTB function
> >>>>    device from DT
> >>>> 2) Add support to create NTB EPF device using configfs (added support
> in
> >>>>    configfs to associate primary and secondary EPC with EPF.
> >>>>
> >>>> Changes from RFC:
> >>>> 1) Converted the DT binding patches to YAML schema and merged the
> >>>>    DT binding patches together
> >>>> 2) NTB documentation is converted to .rst
> >>>> 3) One HOST can now interrupt the other HOST using MSI-X interrupts
> >>>> 4) Added support for teardown of memory window and doorbell
> >>>>    configuration
> >>>> 5) Add support to provide support 64-bit memory window size from
> >>>>    DT
> >>>>
> >>>> [1] -> https://linuxplumbersconf.org/event/4/contributions/395/
> >>>> [2] -> http://lore.kernel.org/r/20190926112933.8922-1-kishon@ti.com
> >>>> [3] -> http://lore.kernel.org/r/20200514145927.17555-1-kishon@ti.com
> >>>> [4] -> http://lore.kernel.org/r/20200611130525.22746-1-kishon@ti.com
> >>>> [5] -> http://lore.kernel.org/r/20200904075052.8911-1-kishon@ti.com
> >>>> [6] -> http://lore.kernel.org/r/20200915042110.3015-1-kishon@ti.com
> >>>> [7] -> http://lore.kernel.org/r/20200918064227.1463-1-kishon@ti.com
> >>>> [8] -> http://lore.kernel.org/r/20200924092519.17082-1-kishon@ti.com
> >>>> [9] -> https://youtu.be/dLKKxrg5-rY
> >>>>
> >>>> Kishon Vijay Abraham I (18):
> >>>>   Documentation: PCI: Add specification for the *PCI NTB* function
> >>>>     device
> >>>>   PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit
> >>>>     BAR
> >>>>   PCI: endpoint: Add helper API to get the 'next' unreserved BAR
> >>>>   PCI: endpoint: Make *_free_bar() to return error codes on failure
> >>>>   PCI: endpoint: Remove unused pci_epf_match_device()
> >>>>   PCI: endpoint: Add support to associate secondary EPC with EPF
> >>>>   PCI: endpoint: Add support in configfs to associate two EPCs with
> EPF
> >>>>   PCI: endpoint: Add pci_epc_ops to map MSI irq
> >>>>   PCI: endpoint: Add pci_epf_ops for epf drivers to expose function
> >>>>     specific attrs
> >>>>   PCI: endpoint: Allow user to create sub-directory of 'EPF Device'
> >>>>     directory
> >>>>   PCI: cadence: Implement ->msi_map_irq() ops
> >>>>   PCI: cadence: Configure LM_EP_FUNC_CFG based on
> epc->function_num_map
> >>>>   PCI: endpoint: Add EP function driver to provide NTB functionality
> >>>>   PCI: Add TI J721E device to pci ids
> >>>>   NTB: Add support for EPF PCI-Express Non-Transparent Bridge
> >>>>   NTB: tool: Enable the NTB/PCIe link on the local or remote side of
> >>>>     bridge
> >>>>   Documentation: PCI: Add configfs binding documentation for pci-ntb
> >>>>     endpoint function
> >>>>   Documentation: PCI: Add userguide for PCI endpoint NTB function
> >>>>
> >>>>  .../PCI/endpoint/function/binding/pci-ntb.rst |   38 +
> >>>>  Documentation/PCI/endpoint/index.rst          |    3 +
> >>>>  .../PCI/endpoint/pci-endpoint-cfs.rst         |   10 +
> >>>>  .../PCI/endpoint/pci-ntb-function.rst         |  351 +++
> >>>>  Documentation/PCI/endpoint/pci-ntb-howto.rst  |  160 ++
> >>>>  drivers/misc/pci_endpoint_test.c              |    1 -
> >>>>  drivers/ntb/hw/Kconfig                        |    1 +
> >>>>  drivers/ntb/hw/Makefile                       |    1 +
> >>>>  drivers/ntb/hw/epf/Kconfig                    |    6 +
> >>>>  drivers/ntb/hw/epf/Makefile                   |    1 +
> >>>>  drivers/ntb/hw/epf/ntb_hw_epf.c               |  755 ++++++
> >>>>  drivers/ntb/test/ntb_tool.c                   |    1 +
> >>>>  .../pci/controller/cadence/pcie-cadence-ep.c  |   60 +-
> >>>>  drivers/pci/endpoint/functions/Kconfig        |   12 +
> >>>>  drivers/pci/endpoint/functions/Makefile       |    1 +
> >>>>  drivers/pci/endpoint/functions/pci-epf-ntb.c  | 2114
> +++++++++++++++++
> >>>>  drivers/pci/endpoint/functions/pci-epf-test.c |   13 +-
> >>>>  drivers/pci/endpoint/pci-ep-cfs.c             |  176 +-
> >>>>  drivers/pci/endpoint/pci-epc-core.c           |  130 +-
> >>>>  drivers/pci/endpoint/pci-epf-core.c           |  105 +-
> >>>>  include/linux/pci-epc.h                       |   39 +-
> >>>>  include/linux/pci-epf.h                       |   28 +-
> >>>>  include/linux/pci_ids.h                       |    1 +
> >>>>  23 files changed, 3934 insertions(+), 73 deletions(-)
> >>>>  create mode 100644
> Documentation/PCI/endpoint/function/binding/pci-ntb.rst
> >>>>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
> >>>>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst
> >>>>  create mode 100644 drivers/ntb/hw/epf/Kconfig
> >>>>  create mode 100644 drivers/ntb/hw/epf/Makefile
> >>>>  create mode 100644 drivers/ntb/hw/epf/ntb_hw_epf.c
> >>>>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-ntb.c
> >>>>
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAOY98NcccMN%3DQPNv1Nt2HXMeDo1R%2Bf8oQK6V663a30sdKpPy9Q%40mail.gmail.com.

--000000000000c0a88805b32f9c05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, Nov 2, 2020, 11:58 PM Kishon Vijay Abraham I &lt;<a hr=
ef=3D"mailto:kishon@ti.com">kishon@ti.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">+Alan<br>
<br>
Hi Jon Mason, Allen Hubbe, Dave Jiang,<br>
<br>
On 20/10/20 6:48 pm, Lorenzo Pieralisi wrote:<br>
&gt; On Tue, Oct 20, 2020 at 01:45:45PM +0530, Kishon Vijay Abraham I wrote=
:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; On 05/10/20 11:27 am, Kishon Vijay Abraham I wrote:<br>
&gt;&gt;&gt; Hi Jon Mason, Allen Hubbe, Dave Jiang,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 30/09/20 9:05 pm, Kishon Vijay Abraham I wrote:<br>
&gt;&gt;&gt;&gt; This series is about implementing SW defined Non-Transpare=
nt Bridge (NTB)<br>
&gt;&gt;&gt;&gt; using multiple endpoint (EP) instances. This series has be=
en tested using<br>
&gt;&gt;&gt;&gt; 2 endpoint instances in J7 connected to J7 board on one en=
d and DRA7 board<br>
&gt;&gt;&gt;&gt; on the other end. However there is nothing platform specif=
ic for the NTB<br>
&gt;&gt;&gt;&gt; functionality.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; This series has two patches that adds to drivers/ntb/ director=
y.<br>
&gt;&gt;&gt; [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-Tran=
sparent<br>
&gt;&gt;&gt; Bridge and [PATCH v7 16/18] NTB: tool: Enable the NTB/PCIe lin=
k on the<br>
&gt;&gt;&gt; local or remote side of bridge.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; If you can review and Ack the above patches, Lorenzo can queue=
 it along<br>
&gt;&gt;&gt; with the rest of the series.<br>
<br>
Would you be able to review and Ack the NTB parts of this series?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks for your help in advance.<br>
&gt;&gt;<br>
&gt;&gt; Gentle ping on this series.<br>
&gt; <br>
&gt; I am not queueing any more patches for this merge window - we postpone=
<br>
&gt; this series to v5.11 and in the interim it would be good to define som=
e<br>
&gt; possible users.<br>
<br>
Alan, Do you have a system where you can test this series? It only needs<br=
>
two endpoint instances on a single system.<br>
<br>
Thanks<br>
Kishon<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Kishon, I have no suitable systems. I wonder if two Nvidia Jetson Xav=
ier NX boards can be connected back to back by ethernet and plugged into x8=
6 system pcie slots for this. I believe they have the dwc pcie controller w=
ith driver support for endpoint mode but I personally don&#39;t have any. T=
he FriendlyElec NanoPi M4 boards also supports endpoint mode with the Rockc=
hip RK3399 pcie controller but I have not found the endpoint driver suppor =
for that.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards, Alan<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
&gt; <br>
&gt; Thanks,<br>
&gt; Lorenzo<br>
&gt; <br>
&gt;&gt; Thanks<br>
&gt;&gt; Kishon<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Best Regards,<br>
&gt;&gt;&gt; Kishon<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; This was presented in Linux Plumbers Conference. Link to p=
resentation<br>
&gt;&gt;&gt;&gt; and video can be found @ [1]<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; RFC patch series can be found @ [2]<br>
&gt;&gt;&gt;&gt; v1 patch series can be found @ [3]<br>
&gt;&gt;&gt;&gt; v2 patch series can be found @ [4]<br>
&gt;&gt;&gt;&gt; v3 patch series can be found @ [5]<br>
&gt;&gt;&gt;&gt; v4 patch series can be found @ [6]<br>
&gt;&gt;&gt;&gt; v5 patch series can be found @ [7]<br>
&gt;&gt;&gt;&gt; v6 patch series can be found @ [8]<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Changes from v6:<br>
&gt;&gt;&gt;&gt; 1) Fixed issues when multiple NTB devices are creating usi=
ng multiple<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 functions<br>
&gt;&gt;&gt;&gt; 2) Fixed issue with writing scratchpad register<br>
&gt;&gt;&gt;&gt; 3) Created a video demo @ [9]<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Changes from v5:<br>
&gt;&gt;&gt;&gt; 1) Fixed a formatting issue in Kconfig pointed out by Rand=
y<br>
&gt;&gt;&gt;&gt; 2) Checked for Error or Null in pci_epc_add_epf()<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Changes from v4:<br>
&gt;&gt;&gt;&gt; 1) Fixed error condition checks in pci_epc_add_epf()<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Changes from v3:<br>
&gt;&gt;&gt;&gt; 1) Fixed Documentation edits suggested by Randy Dunlap &lt=
;<a href=3D"mailto:rdunlap@infradead.org" target=3D"_blank" rel=3D"noreferr=
er">rdunlap@infradead.org</a>&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Changes from v2:<br>
&gt;&gt;&gt;&gt; 1) Add support for the user to create sub-directory of &#3=
9;EPF Device&#39;<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 directory (for endpoint function specific con=
figuration using<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 configfs).<br>
&gt;&gt;&gt;&gt; 2) Add documentation for NTB specific attributes in config=
fs<br>
&gt;&gt;&gt;&gt; 3) Check for PCI_CLASS_MEMORY_RAM (PCIe class) before bind=
ing ntb_hw_epf<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 driver<br>
&gt;&gt;&gt;&gt; 4) Other documentation fixes<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Changes from v1:<br>
&gt;&gt;&gt;&gt; 1) As per Rob&#39;s comment, removed support for creating =
NTB function<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 device from DT<br>
&gt;&gt;&gt;&gt; 2) Add support to create NTB EPF device using configfs (ad=
ded support in<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 configfs to associate primary and secondary E=
PC with EPF.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Changes from RFC:<br>
&gt;&gt;&gt;&gt; 1) Converted the DT binding patches to YAML schema and mer=
ged the<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 DT binding patches together<br>
&gt;&gt;&gt;&gt; 2) NTB documentation is converted to .rst<br>
&gt;&gt;&gt;&gt; 3) One HOST can now interrupt the other HOST using MSI-X i=
nterrupts<br>
&gt;&gt;&gt;&gt; 4) Added support for teardown of memory window and doorbel=
l<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 configuration<br>
&gt;&gt;&gt;&gt; 5) Add support to provide support 64-bit memory window siz=
e from<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 DT<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; [1] -&gt; <a href=3D"https://linuxplumbersconf.org/event/4=
/contributions/395/" rel=3D"noreferrer noreferrer" target=3D"_blank">https:=
//linuxplumbersconf.org/event/4/contributions/395/</a><br>
&gt;&gt;&gt;&gt; [2] -&gt; <a href=3D"http://lore.kernel.org/r/201909261129=
33.8922-1-kishon@ti.com" rel=3D"noreferrer noreferrer" target=3D"_blank">ht=
tp://lore.kernel.org/r/20190926112933.8922-1-kishon@ti.com</a><br>
&gt;&gt;&gt;&gt; [3] -&gt; <a href=3D"http://lore.kernel.org/r/202005141459=
27.17555-1-kishon@ti.com" rel=3D"noreferrer noreferrer" target=3D"_blank">h=
ttp://lore.kernel.org/r/20200514145927.17555-1-kishon@ti.com</a><br>
&gt;&gt;&gt;&gt; [4] -&gt; <a href=3D"http://lore.kernel.org/r/202006111305=
25.22746-1-kishon@ti.com" rel=3D"noreferrer noreferrer" target=3D"_blank">h=
ttp://lore.kernel.org/r/20200611130525.22746-1-kishon@ti.com</a><br>
&gt;&gt;&gt;&gt; [5] -&gt; <a href=3D"http://lore.kernel.org/r/202009040750=
52.8911-1-kishon@ti.com" rel=3D"noreferrer noreferrer" target=3D"_blank">ht=
tp://lore.kernel.org/r/20200904075052.8911-1-kishon@ti.com</a><br>
&gt;&gt;&gt;&gt; [6] -&gt; <a href=3D"http://lore.kernel.org/r/202009150421=
10.3015-1-kishon@ti.com" rel=3D"noreferrer noreferrer" target=3D"_blank">ht=
tp://lore.kernel.org/r/20200915042110.3015-1-kishon@ti.com</a><br>
&gt;&gt;&gt;&gt; [7] -&gt; <a href=3D"http://lore.kernel.org/r/202009180642=
27.1463-1-kishon@ti.com" rel=3D"noreferrer noreferrer" target=3D"_blank">ht=
tp://lore.kernel.org/r/20200918064227.1463-1-kishon@ti.com</a><br>
&gt;&gt;&gt;&gt; [8] -&gt; <a href=3D"http://lore.kernel.org/r/202009240925=
19.17082-1-kishon@ti.com" rel=3D"noreferrer noreferrer" target=3D"_blank">h=
ttp://lore.kernel.org/r/20200924092519.17082-1-kishon@ti.com</a><br>
&gt;&gt;&gt;&gt; [9] -&gt; <a href=3D"https://youtu.be/dLKKxrg5-rY" rel=3D"=
noreferrer noreferrer" target=3D"_blank">https://youtu.be/dLKKxrg5-rY</a><b=
r>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Kishon Vijay Abraham I (18):<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0Documentation: PCI: Add specification for the =
*PCI NTB* function<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0device<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: endpoint: Make *_get_first_free_bar() tak=
e into account 64 bit<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0BAR<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: endpoint: Add helper API to get the &#39;=
next&#39; unreserved BAR<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: endpoint: Make *_free_bar() to return err=
or codes on failure<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: endpoint: Remove unused pci_epf_match_dev=
ice()<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: endpoint: Add support to associate second=
ary EPC with EPF<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: endpoint: Add support in configfs to asso=
ciate two EPCs with EPF<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: endpoint: Add pci_epc_ops to map MSI irq<=
br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: endpoint: Add pci_epf_ops for epf drivers=
 to expose function<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0specific attrs<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: endpoint: Allow user to create sub-direct=
ory of &#39;EPF Device&#39;<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0directory<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: cadence: Implement -&gt;msi_map_irq() ops=
<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: cadence: Configure LM_EP_FUNC_CFG based o=
n epc-&gt;function_num_map<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: endpoint: Add EP function driver to provi=
de NTB functionality<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0PCI: Add TI J721E device to pci ids<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0NTB: Add support for EPF PCI-Express Non-Trans=
parent Bridge<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0NTB: tool: Enable the NTB/PCIe link on the loc=
al or remote side of<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0bridge<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0Documentation: PCI: Add configfs binding docum=
entation for pci-ntb<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0endpoint function<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0Documentation: PCI: Add userguide for PCI endp=
oint NTB function<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;=C2=A0 .../PCI/endpoint/function/binding/pci-ntb.rst |=C2=
=A0 =C2=A038 +<br>
&gt;&gt;&gt;&gt;=C2=A0 Documentation/PCI/endpoint/index.rst=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 3 +<br>
&gt;&gt;&gt;&gt;=C2=A0 .../PCI/endpoint/pci-endpoint-cfs.rst=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A010 +<br>
&gt;&gt;&gt;&gt;=C2=A0 .../PCI/endpoint/pci-ntb-function.rst=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 351 +++<br>
&gt;&gt;&gt;&gt;=C2=A0 Documentation/PCI/endpoint/pci-ntb-howto.rst=C2=A0 |=
=C2=A0 160 ++<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/misc/pci_endpoint_test.c=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 1 -<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/ntb/hw/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 1 +<=
br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/ntb/hw/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 1 +<b=
r>
&gt;&gt;&gt;&gt;=C2=A0 drivers/ntb/hw/epf/Kconfig=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 6 +<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/ntb/hw/epf/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 1 +<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/ntb/hw/epf/ntb_hw_epf.c=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 755 ++++++<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/ntb/test/ntb_tool.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 1 +<br>
&gt;&gt;&gt;&gt;=C2=A0 .../pci/controller/cadence/pcie-cadence-ep.c=C2=A0 |=
=C2=A0 =C2=A060 +-<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/pci/endpoint/functions/Kconfig=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A012 +<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/pci/endpoint/functions/Makefile=C2=A0 =C2=A0=
 =C2=A0 =C2=A0|=C2=A0 =C2=A0 1 +<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/pci/endpoint/functions/pci-epf-ntb.c=C2=A0 |=
 2114 +++++++++++++++++<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/pci/endpoint/functions/pci-epf-test.c |=C2=
=A0 =C2=A013 +-<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/pci/endpoint/pci-ep-cfs.c=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 176 +-<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/pci/endpoint/pci-epc-core.c=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 130 +-<br>
&gt;&gt;&gt;&gt;=C2=A0 drivers/pci/endpoint/pci-epf-core.c=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 105 +-<br>
&gt;&gt;&gt;&gt;=C2=A0 include/linux/pci-epc.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A039 +-<=
br>
&gt;&gt;&gt;&gt;=C2=A0 include/linux/pci-epf.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A028 +-<=
br>
&gt;&gt;&gt;&gt;=C2=A0 include/linux/pci_ids.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 1 +<b=
r>
&gt;&gt;&gt;&gt;=C2=A0 23 files changed, 3934 insertions(+), 73 deletions(-=
)<br>
&gt;&gt;&gt;&gt;=C2=A0 create mode 100644 Documentation/PCI/endpoint/functi=
on/binding/pci-ntb.rst<br>
&gt;&gt;&gt;&gt;=C2=A0 create mode 100644 Documentation/PCI/endpoint/pci-nt=
b-function.rst<br>
&gt;&gt;&gt;&gt;=C2=A0 create mode 100644 Documentation/PCI/endpoint/pci-nt=
b-howto.rst<br>
&gt;&gt;&gt;&gt;=C2=A0 create mode 100644 drivers/ntb/hw/epf/Kconfig<br>
&gt;&gt;&gt;&gt;=C2=A0 create mode 100644 drivers/ntb/hw/epf/Makefile<br>
&gt;&gt;&gt;&gt;=C2=A0 create mode 100644 drivers/ntb/hw/epf/ntb_hw_epf.c<b=
r>
&gt;&gt;&gt;&gt;=C2=A0 create mode 100644 drivers/pci/endpoint/functions/pc=
i-epf-ntb.c<br>
&gt;&gt;&gt;&gt;<br>
</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAOY98NcccMN%3DQPNv1Nt2HXMeDo1R%2Bf8oQK6V663a30sdKpPy9=
Q%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CAOY98NcccMN%3DQPNv1Nt2HXMeDo1R%2Bf8oQK6V663a30=
sdKpPy9Q%40mail.gmail.com</a>.<br />

--000000000000c0a88805b32f9c05--
