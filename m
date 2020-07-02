Return-Path: <linux-ntb+bncBCOOP4VF5IDRBJ7M633QKGQEA7AISLQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEA621211C
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 12:25:44 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id i9sf4506413oom.6
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 03:25:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593685543; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bc0SytYvE86xhV9phDgXSs4R0AmJprbF7hSCcP+3LNBzfT+St+82BYp54EYfrfgnfX
         91ImtPMiwGARHQx/sJnEIgciw3MIux9YAaJ+cKB1aGGHx2Y7+9gDbUEUuegX8M/ChHQb
         CyVpxXz01B6Fwx9G1Jp19mYjMXecJUS7MmYirgIJZ8Lxb+ypCYI/TJNZy4jGJvQV6c/j
         +3wKvEkjWCb17ZayXWZZOKonwIpklKf8FPSSekEYv4iqnd8ECqS7/+ewRxQdTmNr/RDX
         oMjkeBkuvOhWblkd18eZhSEc3IIFo5+A7zZfgLAlw539nj/kSTd/bkTDwVjxP5lMZC5/
         bPnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=z29rgOup0zD9Rk2UnbB8yb1ByfKq08eExtU53jaJoqg=;
        b=zIeT6tUJ9X5ACdeIqBSnJiCJj8uIcssGk539Xf7R6tj98WNTfRi2G4OaO4ubZcwxPk
         HUr1aAEj6ajI0DKZuIBddKW/2UU4l2eRU9Ma1b02s1rt7LpjmNdI3IrUx9+QG9GJGcmo
         hWX3lTVgVTRGfVyAr7jjiQaq20Jxc9UrOVcGd2e2Mkdpg5Nc6nbo+BA5cTwkWC2tks70
         ABaSLELw4RUtzIpW6izWLNbu/dxxZ2s8dER8/EJNrgLyuMED9QQMkDZsTDPROmZgHTAy
         CAo0CehlStSXy8Z+yENpX8IRXCgHNX5rRzM0japbfdXZtS0KeYRpksByNmk0Irp7Np8D
         f8gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TsmRNSiu;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=z29rgOup0zD9Rk2UnbB8yb1ByfKq08eExtU53jaJoqg=;
        b=prHSAGIHKTCJm3Jo30qr8Y9suwCTUP9/l/X8VvJf984BGI7HmpLscOyHlOIqzIlwoe
         jieAq+exTLciFuye2WxJcc91ZPfinvrRI/uiHMBm3ZW01FGRJoEcerxNHlFyoEZqnBzp
         nsqntIBbETEOmxqHW8S9sW86jtXM+HYSs+IvWYzxYIp+IrDGDHq2C2vkePfTy7m8PSRB
         PabZBn2G3Zsd60CGRHk64mqQwS71dWvczUWDoFy+dryPeVPmRsgZ+IMK2Fp+tTjaiON1
         EPukdHCPoWAqHGIykCalRtvDBwBjmLbq35nPsw4NSouEDKAf18NOOxhdoujFw27FtpUa
         CNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z29rgOup0zD9Rk2UnbB8yb1ByfKq08eExtU53jaJoqg=;
        b=b8J2Xcjh9FSk/5GjG+XzI1KnJYLcFbN0KrC8yVJryaZlQ95cVpw4F70mt7CMuG++qb
         4u4QYqWsaGEgLaPmDEG2RbnQlmcd4gfulq1G3miFsjpr7uHYlty5kh+8RjISPKEJ+Z3E
         4YeXsVyrioR9MVyH+aZPvx3JlQRmqubrZYXdwoHHvdLFJ7z8oOY9Ov+4Iw4NS55Dy28U
         T72HFhMMOccp1yzKkYBjFZLU+d/UwA6xKbgTSAqB0+Ulc7H2/qeAvmn5GsGuKwv9JPY4
         XPKpMWY+BGBLwIEI6FrbatSTa18bq5rr78BzE0igh8TjjrqRj93OQL96x4jXHDjMKCEv
         cvlQ==
X-Gm-Message-State: AOAM530I8zvHQyPBixVE9TkSEBHJQf9gKXVF7RtcDXoPsLmvnzMC8//d
	YqMc6iIziZXHiMK2MREG/BU=
X-Google-Smtp-Source: ABdhPJztpKmDbFoGxem7K2PDyhwCTlX2fEM4yDYmcngEZEWoeZltkp11NW9Y1lB/R4pZTHh4t8Gp3w==
X-Received: by 2002:a4a:e64a:: with SMTP id q10mr3696502oot.37.1593685543318;
        Thu, 02 Jul 2020 03:25:43 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:520f:: with SMTP id g15ls1170492oib.7.gmail; Thu, 02 Jul
 2020 03:25:43 -0700 (PDT)
X-Received: by 2002:aca:cf13:: with SMTP id f19mr18692884oig.108.1593685543061;
        Thu, 02 Jul 2020 03:25:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593685543; cv=none;
        d=google.com; s=arc-20160816;
        b=MflfUsVIbU7/F+ptOBSS7n7Imaqy6q3uIPMPxcAt/cpBJPWhB8DsW+KtixwluiYXcB
         LpCBifEmHB8/JPFmhjDld7rMlcA9jyJlILcEaEQar0jVS2ZddSrfgHV9JcxZd7QB17HM
         zu3d/4LJex5qMQBXn94ViGGZMEToVqAEt8jdin4JEmaDODhvZaW1B8x9zjv8BVxI+HOo
         aNZ/n+9EFGFn3YSnawo1sZh4K5t2RYvTlRQyiZxtSwPjBLT5FJ1Vw1y/pds3gm+vXQXL
         Coc3l/f1TwSP9dYGCKlho6JLDXrxWdnWFXIRYrpr6ZD20qVymXXy+Ox7NxA4ELYTChgR
         tIhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gBYdU800xh6dQKjBPuvfkzBmCflHN8ls1rX5bKT5/kw=;
        b=bEOv2WIa63CsIiuQZ+4T40MGs6hAcjK+TV913qE87fJp1BljRl94gM3TNhb1zLhZ6C
         xsJJ1tOIIjWOuWJKHEHv8rutrNxFK4YZBlw12tyfdBlrPaxKazSH4LlYPjnePNgeN23n
         RiYKImR+o9VilLhBQ6EFC5+2EKIhK7XkYFbXmfPjxVc7BBdA1KZcYinHgA5xCe8/UhzY
         eN1zeW5MzRkJj48lUGl3TUp9XI8cRSKjsg93RF9a+92eNl86KUSzChTgxRbwP5h0Psr2
         Ta3RlRH+JzmS6iDMbiRfSg9kuJD0IbOiZXmhJtZFApg8o7PmLtun4ugl3nhuz+TdAJk4
         QOxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TsmRNSiu;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id l131si574638oif.4.2020.07.02.03.25.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 03:25:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 062APcbX118477;
	Thu, 2 Jul 2020 05:25:38 -0500
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 062APcgA000760;
	Thu, 2 Jul 2020 05:25:38 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 05:25:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 05:25:38 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 062APW9v117767;
	Thu, 2 Jul 2020 05:25:32 -0500
Subject: Re: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC
 communication
To: "Michael S. Tsirkin" <mst@redhat.com>
CC: Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson
	<bjorn.andersson@linaro.org>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>, Jason Wang
	<jasowang@redhat.com>,
        Paolo Bonzini <pbonzini@redhat.com>,
        Stefan Hajnoczi
	<stefanha@redhat.com>,
        Stefano Garzarella <sgarzare@redhat.com>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-remoteproc@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, <linux-pci@vger.kernel.org>,
        <kvm@vger.kernel.org>, <virtualization@lists.linux-foundation.org>,
        <netdev@vger.kernel.org>
References: <20200702082143.25259-1-kishon@ti.com>
 <20200702055026-mutt-send-email-mst@kernel.org>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <cfe992c7-a968-d26c-0a34-96ceff7d02cd@ti.com>
Date: Thu, 2 Jul 2020 15:55:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200702055026-mutt-send-email-mst@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=TsmRNSiu;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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

Hi Michael,

On 7/2/2020 3:21 PM, Michael S. Tsirkin wrote:
> On Thu, Jul 02, 2020 at 01:51:21PM +0530, Kishon Vijay Abraham I wrote:
>> This series enhances Linux Vhost support to enable SoC-to-SoC
>> communication over MMIO. This series enables rpmsg communication between
>> two SoCs using both PCIe RC<->EP and HOST1-NTB-HOST2
>>
>> 1) Modify vhost to use standard Linux driver model
>> 2) Add support in vring to access virtqueue over MMIO
>> 3) Add vhost client driver for rpmsg
>> 4) Add PCIe RC driver (uses virtio) and PCIe EP driver (uses vhost) for
>>    rpmsg communication between two SoCs connected to each other
>> 5) Add NTB Virtio driver and NTB Vhost driver for rpmsg communication
>>    between two SoCs connected via NTB
>> 6) Add configfs to configure the components
>>
>> UseCase1 :
>>
>>  VHOST RPMSG                     VIRTIO RPMSG
>>       +                               +
>>       |                               |
>>       |                               |
>>       |                               |
>>       |                               |
>> +-----v------+                 +------v-------+
>> |   Linux    |                 |     Linux    |
>> |  Endpoint  |                 | Root Complex |
>> |            <----------------->              |
>> |            |                 |              |
>> |    SOC1    |                 |     SOC2     |
>> +------------+                 +--------------+
>>
>> UseCase 2:
>>
>>      VHOST RPMSG                                      VIRTIO RPMSG
>>           +                                                 +
>>           |                                                 |
>>           |                                                 |
>>           |                                                 |
>>           |                                                 |
>>    +------v------+                                   +------v------+
>>    |             |                                   |             |
>>    |    HOST1    |                                   |    HOST2    |
>>    |             |                                   |             |
>>    +------^------+                                   +------^------+
>>           |                                                 |
>>           |                                                 |
>> +---------------------------------------------------------------------+
>> |  +------v------+                                   +------v------+  |
>> |  |             |                                   |             |  |
>> |  |     EP      |                                   |     EP      |  |
>> |  | CONTROLLER1 |                                   | CONTROLLER2 |  |
>> |  |             <----------------------------------->             |  |
>> |  |             |                                   |             |  |
>> |  |             |                                   |             |  |
>> |  |             |  SoC With Multiple EP Instances   |             |  |
>> |  |             |  (Configured using NTB Function)  |             |  |
>> |  +-------------+                                   +-------------+  |
>> +---------------------------------------------------------------------+
>>
>> Software Layering:
>>
>> The high-level SW layering should look something like below. This series
>> adds support only for RPMSG VHOST, however something similar should be
>> done for net and scsi. With that any vhost device (PCI, NTB, Platform
>> device, user) can use any of the vhost client driver.
>>
>>
>>     +----------------+  +-----------+  +------------+  +----------+
>>     |  RPMSG VHOST   |  | NET VHOST |  | SCSI VHOST |  |    X     |
>>     +-------^--------+  +-----^-----+  +-----^------+  +----^-----+
>>             |                 |              |              |
>>             |                 |              |              |
>>             |                 |              |              |
>> +-----------v-----------------v--------------v--------------v----------+
>> |                            VHOST CORE                                |
>> +--------^---------------^--------------------^------------------^-----+
>>          |               |                    |                  |
>>          |               |                    |                  |
>>          |               |                    |                  |
>> +--------v-------+  +----v------+  +----------v----------+  +----v-----+
>> |  PCI EPF VHOST |  | NTB VHOST |  |PLATFORM DEVICE VHOST|  |    X     |
>> +----------------+  +-----------+  +---------------------+  +----------+
>>
>> This was initially proposed here [1]
>>
>> [1] -> https://lore.kernel.org/r/2cf00ec4-1ed6-f66e-6897-006d1a5b6390@ti.com
> 
> 
> I find this very interesting. A huge patchset so will take a bit
> to review, but I certainly plan to do that. Thanks!

Great to hear! Thanks in advance for reviewing!

Regards
Kishon

> 
>>
>> Kishon Vijay Abraham I (22):
>>   vhost: Make _feature_ bits a property of vhost device
>>   vhost: Introduce standard Linux driver model in VHOST
>>   vhost: Add ops for the VHOST driver to configure VHOST device
>>   vringh: Add helpers to access vring in MMIO
>>   vhost: Add MMIO helpers for operations on vhost virtqueue
>>   vhost: Introduce configfs entry for configuring VHOST
>>   virtio_pci: Use request_threaded_irq() instead of request_irq()
>>   rpmsg: virtio_rpmsg_bus: Disable receive virtqueue callback when
>>     reading messages
>>   rpmsg: Introduce configfs entry for configuring rpmsg
>>   rpmsg: virtio_rpmsg_bus: Add Address Service Notification support
>>   rpmsg: virtio_rpmsg_bus: Move generic rpmsg structure to
>>     rpmsg_internal.h
>>   virtio: Add ops to allocate and free buffer
>>   rpmsg: virtio_rpmsg_bus: Use virtio_alloc_buffer() and
>>     virtio_free_buffer()
>>   rpmsg: Add VHOST based remote processor messaging bus
>>   samples/rpmsg: Setup delayed work to send message
>>   samples/rpmsg: Wait for address to be bound to rpdev for sending
>>     message
>>   rpmsg.txt: Add Documentation to configure rpmsg using configfs
>>   virtio_pci: Add VIRTIO driver for VHOST on Configurable PCIe Endpoint
>>     device
>>   PCI: endpoint: Add EP function driver to provide VHOST interface
>>   NTB: Add a new NTB client driver to implement VIRTIO functionality
>>   NTB: Add a new NTB client driver to implement VHOST functionality
>>   NTB: Describe the ntb_virtio and ntb_vhost client in the documentation
>>
>>  Documentation/driver-api/ntb.rst              |   11 +
>>  Documentation/rpmsg.txt                       |   56 +
>>  drivers/ntb/Kconfig                           |   18 +
>>  drivers/ntb/Makefile                          |    2 +
>>  drivers/ntb/ntb_vhost.c                       |  776 +++++++++++
>>  drivers/ntb/ntb_virtio.c                      |  853 ++++++++++++
>>  drivers/ntb/ntb_virtio.h                      |   56 +
>>  drivers/pci/endpoint/functions/Kconfig        |   11 +
>>  drivers/pci/endpoint/functions/Makefile       |    1 +
>>  .../pci/endpoint/functions/pci-epf-vhost.c    | 1144 ++++++++++++++++
>>  drivers/rpmsg/Kconfig                         |   10 +
>>  drivers/rpmsg/Makefile                        |    3 +-
>>  drivers/rpmsg/rpmsg_cfs.c                     |  394 ++++++
>>  drivers/rpmsg/rpmsg_core.c                    |    7 +
>>  drivers/rpmsg/rpmsg_internal.h                |  136 ++
>>  drivers/rpmsg/vhost_rpmsg_bus.c               | 1151 +++++++++++++++++
>>  drivers/rpmsg/virtio_rpmsg_bus.c              |  184 ++-
>>  drivers/vhost/Kconfig                         |    1 +
>>  drivers/vhost/Makefile                        |    2 +-
>>  drivers/vhost/net.c                           |   10 +-
>>  drivers/vhost/scsi.c                          |   24 +-
>>  drivers/vhost/test.c                          |   17 +-
>>  drivers/vhost/vdpa.c                          |    2 +-
>>  drivers/vhost/vhost.c                         |  730 ++++++++++-
>>  drivers/vhost/vhost_cfs.c                     |  341 +++++
>>  drivers/vhost/vringh.c                        |  332 +++++
>>  drivers/vhost/vsock.c                         |   20 +-
>>  drivers/virtio/Kconfig                        |    9 +
>>  drivers/virtio/Makefile                       |    1 +
>>  drivers/virtio/virtio_pci_common.c            |   25 +-
>>  drivers/virtio/virtio_pci_epf.c               |  670 ++++++++++
>>  include/linux/mod_devicetable.h               |    6 +
>>  include/linux/rpmsg.h                         |    6 +
>>  {drivers/vhost => include/linux}/vhost.h      |  132 +-
>>  include/linux/virtio.h                        |    3 +
>>  include/linux/virtio_config.h                 |   42 +
>>  include/linux/vringh.h                        |   46 +
>>  samples/rpmsg/rpmsg_client_sample.c           |   32 +-
>>  tools/virtio/virtio_test.c                    |    2 +-
>>  39 files changed, 7083 insertions(+), 183 deletions(-)
>>  create mode 100644 drivers/ntb/ntb_vhost.c
>>  create mode 100644 drivers/ntb/ntb_virtio.c
>>  create mode 100644 drivers/ntb/ntb_virtio.h
>>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-vhost.c
>>  create mode 100644 drivers/rpmsg/rpmsg_cfs.c
>>  create mode 100644 drivers/rpmsg/vhost_rpmsg_bus.c
>>  create mode 100644 drivers/vhost/vhost_cfs.c
>>  create mode 100644 drivers/virtio/virtio_pci_epf.c
>>  rename {drivers/vhost => include/linux}/vhost.h (66%)
>>
>> -- 
>> 2.17.1
>>
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/cfe992c7-a968-d26c-0a34-96ceff7d02cd%40ti.com.
