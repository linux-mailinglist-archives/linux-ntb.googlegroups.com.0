Return-Path: <linux-ntb+bncBCOOP4VF5IDRBJE37P3QKGQEWX2DQYY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DA12133FD
	for <lists+linux-ntb@lfdr.de>; Fri,  3 Jul 2020 08:18:14 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id w24sf17679014ply.10
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 23:18:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593757093; cv=pass;
        d=google.com; s=arc-20160816;
        b=VSNlo6rj+Ge5qCUFVnJrOKdvg4cGW3CmXhowM2FqELm6JLaCyZq9yzRVOGFZC+O/WJ
         3+0ZSiby2Ed8qFPNPCw1H7Aq4KbMZXptsbXiQ4EPGdZEDh0ZujGBZMI+oJpcdDKIf9JI
         8GyisVQ6ky6JX8Uzvd3TaKFTqRw4fBAmAu5V3lPOnAkzS/WOS+ZL293+u9N0P+Ey2jSl
         EaQRv3CebImOJ7kT3UcNfB0appFzXZLHhJNqUCBLVMdhGHm8kcN/wZeM+2vU1d4vF7+I
         7kyAwKHhvn5U7xJn2D8N5aX3BddNRpwqbni43sDPL69dujkvfARNvFBJ/wFcWdCw3MqI
         4RSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=DRSvsUfMlno3u9w/+dES5JrQ6aMCo/Egzein/wXznLc=;
        b=tciOoubzAkw2YLYgNIhOld2qN/wqWNvA8v7FM4y5ZI2wzqZ5Nctg2AjuE9mW8XaDzk
         ySbfAX0817EtpqEMZ0/8yuUXZFMpJ7yvD8zvrjGxSagbZwy9A8fiZEaq48AGJw066nEG
         4B58pm755DSKez6wPPg+vWN3dkhpHH8sbrFo1c9g1WSH7UZagi9Axz22RepRFdOzgm4I
         HMbhucOywrOcOeFL2q3DQrzdX5RcqQYqHkXtas7t8EvCBgYe3tKoCz5z1ykLdXt2odGD
         wSyT7SyChbtVz8JPIjBwAxhvTDFkNZzVLsk69NfiATLPVMN0GfIaux0sKymMk9BNzt05
         dvQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=DuLrf10h;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DRSvsUfMlno3u9w/+dES5JrQ6aMCo/Egzein/wXznLc=;
        b=NyQRWP1iGeDo3PjMQguAaUlkTkUpTu4dIwqy9JfXK3lo7LMlTlNkSw+HNv77YGf6ba
         l+P/g6yElT9VmUqHYvFBy5eq76bdidZCDrIKlDZnWkZyZ2DXaTA28ixG39H2XAjtZ4Cf
         MS62e35agWcf1WDh2xkNLPYmuMNs5pm3EyH2l55LVLc+RwY28vp4vqavoz0359XRxvTN
         tVD+/YzsPY+LdNiy+1qHUgXN44qKB3KIOE/DZ9Hz0jwvjR3nddiWcZlBXfPZ+YvdRiFz
         bU7p/nZFnGcmzgkZrA+rayYS8HWj0yp8zlSF+RXrmzXHK5TafSErzVyvRDpfdvhNHShJ
         eTnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DRSvsUfMlno3u9w/+dES5JrQ6aMCo/Egzein/wXznLc=;
        b=cLTJ3vgQDUbdN+exWztElKdxjCX1fIO313CEzfxtze8urbconKVaeBhiEWmbfiiN6f
         M4Ge+iDCz4E8xtiuRdTvXd2n2CAgqn4e8shSNQTiFokTXQP5Jp64t6MBvXBOmR9T7NR6
         yfYkNq74uB7asdXqgEkc7JjJnGva5rQWz4/h/9d4q5kK/umejVPz/77HafsXC6vfPK3V
         ccJklE0SPNeoWGgHsv9V7fY9WhgQIns+buHU79ytYj7MOlDk61XalHHZ4UPab9F6lCk6
         uZu2gQuEllq9NBWPxgYxN9N+MIZb4Wiamm/IPbqvM1E+H5+nz408W/NLQSHxBKUjorwY
         jRrQ==
X-Gm-Message-State: AOAM532QZydFc6+Ow+yBL04OM49UNrfuRScBnxjHmJu8UquSYAudmxGd
	xeBihlU6Uy0uehTKu5Na6fY=
X-Google-Smtp-Source: ABdhPJzgFk2neUorUOU/wfrcZzhVOxBDEasoP0Z3V95uk7nqQ8hJj9cIAuywbvHQLSaxOzNfvvhZIQ==
X-Received: by 2002:a62:7a07:: with SMTP id v7mr26518374pfc.76.1593757092833;
        Thu, 02 Jul 2020 23:18:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:46cd:: with SMTP id n13ls2787217pgr.2.gmail; Thu, 02 Jul
 2020 23:18:12 -0700 (PDT)
X-Received: by 2002:a05:6a00:807:: with SMTP id m7mr32689437pfk.246.1593757092409;
        Thu, 02 Jul 2020 23:18:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593757092; cv=none;
        d=google.com; s=arc-20160816;
        b=KPoSKKWtSMIIYZVsHxGOdaLxQNVWIC0s30GoITcHJHQjjKznDwPcQ3QoTPAoRgGT7k
         jn28fCkXb2kckhfLfFvQ+JUDrGV2H9C++HVOOSnjBOfG2JpxZridhMExirjA2jWWWIbM
         jSuEB10j7WkWpFhFr3COQ6bV0owxLYqscN5VysQd6KNmyAvEOqcqKzjC/qXAOGBZF6d3
         0EYX504Cd/OwfCRSFQYRG8X78FOAPQb1MbktC+gej4p3NlMXPaAPxixYB0iAZ8p9sw5M
         QrAxn91I0K8pGgFJGWv4s7f0abVqtpR8wV7Rs303+QbW3y5CWZM/Hv4cGy1GWMi/D2kb
         GnLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=s4klUDGcTWMMsrpvyz765ijFqipLqcgpGqgz49/FpbA=;
        b=mjATs+F5SlT2eqs6sdaaKI8kqC2H5kuZresniCTS3TC+AinPHio4fCmdsWunvLPH3F
         idPYMk95aLumo2hiWqphxdZc4U8mwfYla6nSRRvLPPIh54fksX+zTr0HyyXtPQtRya+r
         gV0qMESfmGiad0nnGJeANiLKt13dq7PDxAVIxLJZF5qxe8+mQgUVnvd7QbPmEqc7j30a
         2Cq2eTgjGycGMZqi68ZhG+9CBxCxGHWqsO+1LEOP/VUHCGncu01tA3vyOl34iBdGDvSH
         r/v/tX8DhIQIEEBQZNTGUBDxd/0GIaJ8IgHimifUxTpWJFERM56ojy18EpPsttbmhcs8
         Jj8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=DuLrf10h;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id w2si521546plq.3.2020.07.02.23.18.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 23:18:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0636I5RQ038190;
	Fri, 3 Jul 2020 01:18:05 -0500
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0636I453100383;
	Fri, 3 Jul 2020 01:18:05 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 3 Jul
 2020 01:18:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 3 Jul 2020 01:18:04 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0636Hv4i079350;
	Fri, 3 Jul 2020 01:17:58 -0500
Subject: Re: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC
 communication
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
        "Michael S. Tsirkin"
	<mst@redhat.com>
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
        Stefano Garzarella <sgarzare@redhat.com>,
        "open
 list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>,
        linux-remoteproc
	<linux-remoteproc@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, <linux-pci@vger.kernel.org>,
        <kvm@vger.kernel.org>, <virtualization@lists.linux-foundation.org>,
        <netdev@vger.kernel.org>, Alan
 Mikhak <alanmikhak@gmail.com>,
        <haotian.wang@duke.edu>
References: <20200702082143.25259-1-kishon@ti.com>
 <20200702055026-mutt-send-email-mst@kernel.org>
 <CANLsYky4ZrgYGZUyg4iVwbM3TQk5dvOSBwPFER8qofixjn4vyA@mail.gmail.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <9e4703f9-cf02-7aa1-1785-8cbd6ca4b26d@ti.com>
Date: Fri, 3 Jul 2020 11:47:57 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CANLsYky4ZrgYGZUyg4iVwbM3TQk5dvOSBwPFER8qofixjn4vyA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=DuLrf10h;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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

+Alan, Haotian

On 7/2/2020 11:01 PM, Mathieu Poirier wrote:
> On Thu, 2 Jul 2020 at 03:51, Michael S. Tsirkin <mst@redhat.com> wrote:
>>
>> On Thu, Jul 02, 2020 at 01:51:21PM +0530, Kishon Vijay Abraham I wrote:
>>> This series enhances Linux Vhost support to enable SoC-to-SoC
>>> communication over MMIO. This series enables rpmsg communication between
>>> two SoCs using both PCIe RC<->EP and HOST1-NTB-HOST2
>>>
>>> 1) Modify vhost to use standard Linux driver model
>>> 2) Add support in vring to access virtqueue over MMIO
>>> 3) Add vhost client driver for rpmsg
>>> 4) Add PCIe RC driver (uses virtio) and PCIe EP driver (uses vhost) for
>>>    rpmsg communication between two SoCs connected to each other
>>> 5) Add NTB Virtio driver and NTB Vhost driver for rpmsg communication
>>>    between two SoCs connected via NTB
>>> 6) Add configfs to configure the components
>>>
>>> UseCase1 :
>>>
>>>  VHOST RPMSG                     VIRTIO RPMSG
>>>       +                               +
>>>       |                               |
>>>       |                               |
>>>       |                               |
>>>       |                               |
>>> +-----v------+                 +------v-------+
>>> |   Linux    |                 |     Linux    |
>>> |  Endpoint  |                 | Root Complex |
>>> |            <----------------->              |
>>> |            |                 |              |
>>> |    SOC1    |                 |     SOC2     |
>>> +------------+                 +--------------+
>>>
>>> UseCase 2:
>>>
>>>      VHOST RPMSG                                      VIRTIO RPMSG
>>>           +                                                 +
>>>           |                                                 |
>>>           |                                                 |
>>>           |                                                 |
>>>           |                                                 |
>>>    +------v------+                                   +------v------+
>>>    |             |                                   |             |
>>>    |    HOST1    |                                   |    HOST2    |
>>>    |             |                                   |             |
>>>    +------^------+                                   +------^------+
>>>           |                                                 |
>>>           |                                                 |
>>> +---------------------------------------------------------------------+
>>> |  +------v------+                                   +------v------+  |
>>> |  |             |                                   |             |  |
>>> |  |     EP      |                                   |     EP      |  |
>>> |  | CONTROLLER1 |                                   | CONTROLLER2 |  |
>>> |  |             <----------------------------------->             |  |
>>> |  |             |                                   |             |  |
>>> |  |             |                                   |             |  |
>>> |  |             |  SoC With Multiple EP Instances   |             |  |
>>> |  |             |  (Configured using NTB Function)  |             |  |
>>> |  +-------------+                                   +-------------+  |
>>> +---------------------------------------------------------------------+
>>>
>>> Software Layering:
>>>
>>> The high-level SW layering should look something like below. This series
>>> adds support only for RPMSG VHOST, however something similar should be
>>> done for net and scsi. With that any vhost device (PCI, NTB, Platform
>>> device, user) can use any of the vhost client driver.
>>>
>>>
>>>     +----------------+  +-----------+  +------------+  +----------+
>>>     |  RPMSG VHOST   |  | NET VHOST |  | SCSI VHOST |  |    X     |
>>>     +-------^--------+  +-----^-----+  +-----^------+  +----^-----+
>>>             |                 |              |              |
>>>             |                 |              |              |
>>>             |                 |              |              |
>>> +-----------v-----------------v--------------v--------------v----------+
>>> |                            VHOST CORE                                |
>>> +--------^---------------^--------------------^------------------^-----+
>>>          |               |                    |                  |
>>>          |               |                    |                  |
>>>          |               |                    |                  |
>>> +--------v-------+  +----v------+  +----------v----------+  +----v-----+
>>> |  PCI EPF VHOST |  | NTB VHOST |  |PLATFORM DEVICE VHOST|  |    X     |
>>> +----------------+  +-----------+  +---------------------+  +----------+
>>>
>>> This was initially proposed here [1]
>>>
>>> [1] -> https://lore.kernel.org/r/2cf00ec4-1ed6-f66e-6897-006d1a5b6390@ti.com
>>
>>
>> I find this very interesting. A huge patchset so will take a bit
>> to review, but I certainly plan to do that. Thanks!
> 
> Same here - it will take time.  This patchset is sizable and sits
> behind a few others that are equally big.
> 
>>
>>>
>>> Kishon Vijay Abraham I (22):
>>>   vhost: Make _feature_ bits a property of vhost device
>>>   vhost: Introduce standard Linux driver model in VHOST
>>>   vhost: Add ops for the VHOST driver to configure VHOST device
>>>   vringh: Add helpers to access vring in MMIO
>>>   vhost: Add MMIO helpers for operations on vhost virtqueue
>>>   vhost: Introduce configfs entry for configuring VHOST
>>>   virtio_pci: Use request_threaded_irq() instead of request_irq()
>>>   rpmsg: virtio_rpmsg_bus: Disable receive virtqueue callback when
>>>     reading messages
>>>   rpmsg: Introduce configfs entry for configuring rpmsg
>>>   rpmsg: virtio_rpmsg_bus: Add Address Service Notification support
>>>   rpmsg: virtio_rpmsg_bus: Move generic rpmsg structure to
>>>     rpmsg_internal.h
>>>   virtio: Add ops to allocate and free buffer
>>>   rpmsg: virtio_rpmsg_bus: Use virtio_alloc_buffer() and
>>>     virtio_free_buffer()
>>>   rpmsg: Add VHOST based remote processor messaging bus
>>>   samples/rpmsg: Setup delayed work to send message
>>>   samples/rpmsg: Wait for address to be bound to rpdev for sending
>>>     message
>>>   rpmsg.txt: Add Documentation to configure rpmsg using configfs
>>>   virtio_pci: Add VIRTIO driver for VHOST on Configurable PCIe Endpoint
>>>     device
>>>   PCI: endpoint: Add EP function driver to provide VHOST interface
>>>   NTB: Add a new NTB client driver to implement VIRTIO functionality
>>>   NTB: Add a new NTB client driver to implement VHOST functionality
>>>   NTB: Describe the ntb_virtio and ntb_vhost client in the documentation
>>>
>>>  Documentation/driver-api/ntb.rst              |   11 +
>>>  Documentation/rpmsg.txt                       |   56 +
>>>  drivers/ntb/Kconfig                           |   18 +
>>>  drivers/ntb/Makefile                          |    2 +
>>>  drivers/ntb/ntb_vhost.c                       |  776 +++++++++++
>>>  drivers/ntb/ntb_virtio.c                      |  853 ++++++++++++
>>>  drivers/ntb/ntb_virtio.h                      |   56 +
>>>  drivers/pci/endpoint/functions/Kconfig        |   11 +
>>>  drivers/pci/endpoint/functions/Makefile       |    1 +
>>>  .../pci/endpoint/functions/pci-epf-vhost.c    | 1144 ++++++++++++++++
>>>  drivers/rpmsg/Kconfig                         |   10 +
>>>  drivers/rpmsg/Makefile                        |    3 +-
>>>  drivers/rpmsg/rpmsg_cfs.c                     |  394 ++++++
>>>  drivers/rpmsg/rpmsg_core.c                    |    7 +
>>>  drivers/rpmsg/rpmsg_internal.h                |  136 ++
>>>  drivers/rpmsg/vhost_rpmsg_bus.c               | 1151 +++++++++++++++++
>>>  drivers/rpmsg/virtio_rpmsg_bus.c              |  184 ++-
>>>  drivers/vhost/Kconfig                         |    1 +
>>>  drivers/vhost/Makefile                        |    2 +-
>>>  drivers/vhost/net.c                           |   10 +-
>>>  drivers/vhost/scsi.c                          |   24 +-
>>>  drivers/vhost/test.c                          |   17 +-
>>>  drivers/vhost/vdpa.c                          |    2 +-
>>>  drivers/vhost/vhost.c                         |  730 ++++++++++-
>>>  drivers/vhost/vhost_cfs.c                     |  341 +++++
>>>  drivers/vhost/vringh.c                        |  332 +++++
>>>  drivers/vhost/vsock.c                         |   20 +-
>>>  drivers/virtio/Kconfig                        |    9 +
>>>  drivers/virtio/Makefile                       |    1 +
>>>  drivers/virtio/virtio_pci_common.c            |   25 +-
>>>  drivers/virtio/virtio_pci_epf.c               |  670 ++++++++++
>>>  include/linux/mod_devicetable.h               |    6 +
>>>  include/linux/rpmsg.h                         |    6 +
>>>  {drivers/vhost => include/linux}/vhost.h      |  132 +-
>>>  include/linux/virtio.h                        |    3 +
>>>  include/linux/virtio_config.h                 |   42 +
>>>  include/linux/vringh.h                        |   46 +
>>>  samples/rpmsg/rpmsg_client_sample.c           |   32 +-
>>>  tools/virtio/virtio_test.c                    |    2 +-
>>>  39 files changed, 7083 insertions(+), 183 deletions(-)
>>>  create mode 100644 drivers/ntb/ntb_vhost.c
>>>  create mode 100644 drivers/ntb/ntb_virtio.c
>>>  create mode 100644 drivers/ntb/ntb_virtio.h
>>>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-vhost.c
>>>  create mode 100644 drivers/rpmsg/rpmsg_cfs.c
>>>  create mode 100644 drivers/rpmsg/vhost_rpmsg_bus.c
>>>  create mode 100644 drivers/vhost/vhost_cfs.c
>>>  create mode 100644 drivers/virtio/virtio_pci_epf.c
>>>  rename {drivers/vhost => include/linux}/vhost.h (66%)
>>>
>>> --
>>> 2.17.1
>>>
>>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/9e4703f9-cf02-7aa1-1785-8cbd6ca4b26d%40ti.com.
