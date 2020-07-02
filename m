Return-Path: <linux-ntb+bncBDOJZOXA5ABBBJHF633QKGQECM4OEBA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id B06302120A1
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 12:10:45 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id o9sf13268425pfp.6
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 03:10:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593684644; cv=pass;
        d=google.com; s=arc-20160816;
        b=t3MozqKng2+VRnKN/vsDuYf2w20LNkkO9UlRpsDrgUYI2kD+PeuzlrQQEB6HHguPjx
         UFPfAC8Jk/jJsT9LtvkWy+KLqLOAYGq90cpQtDg39yOTg42Ej+L6fJ2fk7h0lkXKYNG4
         DJcmKRdCXi3hywOTC2oDtaIdze9SxqqnoZNlpRbjhHpR04sdemi7vGEzLRc34YBezy5J
         Gx/sgzKLRFvT8KLXA/E1W2k7W0kzIaT7cGUMUTTSzKYZyRWRUIHbN0Af9smDZRmQ4Y1t
         /5S9T/ZjBzd1EID+p6hdYTTECwYJrIiZwr+RAsEcLBkYiZ0xM+wzS0yojpM2x8qphjLK
         d6Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=nIEDDZuUjhf5yjQA9svA+nXj2Fybvo6gc/ylZAg8QZo=;
        b=vQi3mJOqweH6jPUugSSFBvQD9u1c/QyWUBmUZ4Iq3WjpkFws2qS5UkIkqyG9TXmhMP
         Wt83b8UjfbPB4kpv7temtYPgqJ61ae6vpm7Q0PcFoOeexuFl9p35ydSFc5mXDsoAToBh
         GHOkKx5NmSD4p7Tt5KfDJuXH+dpKdMKaL9ByjY/Or49h2nnwxwhH4dsHNl+jr0OpCNEv
         vZKfPB1lXK+9pwcut4GuLyzHQVm3ccByfEtbZWq+Y4UqkJexAPREzzaRjMOnpZ6WqbmQ
         /u1ZV8rD4Zp5AarJyxuivCx/4jAx+KnrnD9OwUZv1WsN2/RJw0K60oTz+oaTriNf35Zz
         WjjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CalPz573;
       spf=pass (google.com: domain of jasowang@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nIEDDZuUjhf5yjQA9svA+nXj2Fybvo6gc/ylZAg8QZo=;
        b=byMAquaijU1bXkyD51c41NMnaA/DcRsUs7t4s63M4N8DV3ACUHPbnVFcNFSjnrZ1SG
         idADXzvAeqy+PZ1vRQEeXcNBpETgkRPnSncPWpwpm6Gv5M7prxixHb2G5I54t3p8OWiU
         BgyvodI5FFxJIsKO3zQJstTXbPUPm+FiitOLroelodnQqffUwUWhA1bU+x0oXQC6Ldob
         kblZ8Wa2/uSvnaEeaLSUXePgyZq5yJWZ+/2klXJ+JmCnyjnje3KNYj7d8bdyUxJ6Xxx0
         xkYb1f0gjhIEc8MlBCeVAi4GE4u7TArljHrICEo46XsqKiZnRnhwO1SAYLqEyd78PKk+
         IFhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nIEDDZuUjhf5yjQA9svA+nXj2Fybvo6gc/ylZAg8QZo=;
        b=m9XrJ0xTRQLYu8dgC++su2PFwvw2oN3NpeTSuk/PSEZzgfx4l24WNHKZpy8I6HsKMO
         cHD2DSW8KsQPW1Gkckwb8hLhLutYn+IUo2HpSTKLY32Iaf/DxOBz9HKCF4M5JA4po+o2
         1ZqCDcHms6h2kQH896rz3s9k0uTXMCBlmgRBMb15LoHddaxXrFo5joMhO94rOoa9/hL3
         KgyxCJ3eGeGbl59GHvB+QHJJIyhXcjdYn8nY/yTEb88gC0LOw6DvxcdtJU+5ckuYNF/J
         2dVixII8cXysI23R1WI+G9dyimi5cSrzRnPIwB1DudGOpLBY+ke7kSYonRBc78HVB/gR
         YpNg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533nZY9ALT+0ub6o6uV/k6PfxHPup+u+cZSgWFxqgRe4WFw/FFnI
	ebZc9zPZC+ujYdgd8O7pbWk=
X-Google-Smtp-Source: ABdhPJy17R6OhmbkWV2fJioUeki8ZbuAtNo6zGBZeXixl9Tdo/voDN75ZR2dJT+/9Te4m5BfJLpUMg==
X-Received: by 2002:a17:90a:b38b:: with SMTP id e11mr13254600pjr.120.1593684644276;
        Thu, 02 Jul 2020 03:10:44 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:7b91:: with SMTP id w17ls2104946pll.10.gmail; Thu,
 02 Jul 2020 03:10:43 -0700 (PDT)
X-Received: by 2002:a17:902:fe11:: with SMTP id g17mr25945919plj.145.1593684643778;
        Thu, 02 Jul 2020 03:10:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593684643; cv=none;
        d=google.com; s=arc-20160816;
        b=Gie+mI9izfrXlzU07zgk/6zfixgKb+tjLctAEVnmRbYwRoV4BEbSswdqLhKeF6IVAG
         d1pTwd+ZoruzF96S1H/bvm49MAH8SCfXc4WrMrO+EbI7fLmKusPxkAvPLtvtcZZIlO9B
         GOYWkhsBLySghoISHOdE2PTCFbLo4bXP5q/KDRyBFOqpgRIYnZhf9iA8DyLSYkNu7Ras
         u+f59a+jRlb3ugz4abcd6nCFAWLiPRT1UVG8gu3fwfL3Y/76xV3UhzblvsPU9zW/bnwa
         6sMuUIoe0g1E5cTHRhO8L1t2r9SPsiAWtH8Gdy+InfgvKJlnEy/F+KhzEPkGMgrnn/bQ
         0epA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tJJoehAPVq0MNpAHqJyOI9O/jCsKkBOYDcH/+KNJTdA=;
        b=PHAseRlc3+cGA7qtX2uXOMmqUd3MOP9ahTj/3Y0dyhJIiYdCaHORuImBzE3Lu0D36x
         JjPiVJNdAOrzOk0+AfEKsSRPTSjMic+aV7kuYWzDN0qEZ3cjAgjz555Q75Bf6h9xYzwT
         jh9NTe5XHyIo/BpbJoYv50sAfK85ZbZuE2/7auMBRE/dagGYMbYlayrI1DAmrJgCcI9z
         B2qW1PwJvs9DGCOZFPR8YaRE6J9YjupXV+EnDxuMJIPK7+8v34Spl22/AUAbn7O2IqaA
         Jy7VGMWMkSU2r25PR+H7D2oZKBHwo/3Vjq2rmd/zl9BP+nfotwnnVQFt7mG7/a1Xh/tl
         O5yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CalPz573;
       spf=pass (google.com: domain of jasowang@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id m189si73855pfd.3.2020.07.02.03.10.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 03:10:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jasowang@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-Y_nVFT78NCGRdRnvXNiGGQ-1; Thu, 02 Jul 2020 06:10:41 -0400
X-MC-Unique: Y_nVFT78NCGRdRnvXNiGGQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B048800C60;
	Thu,  2 Jul 2020 10:10:38 +0000 (UTC)
Received: from [10.72.13.163] (ovpn-13-163.pek2.redhat.com [10.72.13.163])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2A90B78120;
	Thu,  2 Jul 2020 10:10:23 +0000 (UTC)
Subject: Re: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC
 communication
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: "Michael S. Tsirkin" <mst@redhat.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Stefano Garzarella <sgarzare@redhat.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-ntb@googlegroups.com, linux-pci@vger.kernel.org, kvm@vger.kernel.org,
 virtualization@lists.linux-foundation.org, netdev@vger.kernel.org
References: <20200702082143.25259-1-kishon@ti.com>
 <20200702055026-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <603970f5-3289-cd53-82a9-aa62b292c552@redhat.com>
Date: Thu, 2 Jul 2020 18:10:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200702055026-mutt-send-email-mst@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jasowang@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CalPz573;
       spf=pass (google.com: domain of jasowang@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 2020/7/2 =E4=B8=8B=E5=8D=885:51, Michael S. Tsirkin wrote:
> On Thu, Jul 02, 2020 at 01:51:21PM +0530, Kishon Vijay Abraham I wrote:
>> This series enhances Linux Vhost support to enable SoC-to-SoC
>> communication over MMIO. This series enables rpmsg communication between
>> two SoCs using both PCIe RC<->EP and HOST1-NTB-HOST2
>>
>> 1) Modify vhost to use standard Linux driver model
>> 2) Add support in vring to access virtqueue over MMIO
>> 3) Add vhost client driver for rpmsg
>> 4) Add PCIe RC driver (uses virtio) and PCIe EP driver (uses vhost) for
>>     rpmsg communication between two SoCs connected to each other
>> 5) Add NTB Virtio driver and NTB Vhost driver for rpmsg communication
>>     between two SoCs connected via NTB
>> 6) Add configfs to configure the components
>>
>> UseCase1 :
>>
>>   VHOST RPMSG                     VIRTIO RPMSG
>>        +                               +
>>        |                               |
>>        |                               |
>>        |                               |
>>        |                               |
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
>>       VHOST RPMSG                                      VIRTIO RPMSG
>>            +                                                 +
>>            |                                                 |
>>            |                                                 |
>>            |                                                 |
>>            |                                                 |
>>     +------v------+                                   +------v------+
>>     |             |                                   |             |
>>     |    HOST1    |                                   |    HOST2    |
>>     |             |                                   |             |
>>     +------^------+                                   +------^------+
>>            |                                                 |
>>            |                                                 |
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
>>      +----------------+  +-----------+  +------------+  +----------+
>>      |  RPMSG VHOST   |  | NET VHOST |  | SCSI VHOST |  |    X     |
>>      +-------^--------+  +-----^-----+  +-----^------+  +----^-----+
>>              |                 |              |              |
>>              |                 |              |              |
>>              |                 |              |              |
>> +-----------v-----------------v--------------v--------------v----------+
>> |                            VHOST CORE                                |
>> +--------^---------------^--------------------^------------------^-----+
>>           |               |                    |                  |
>>           |               |                    |                  |
>>           |               |                    |                  |
>> +--------v-------+  +----v------+  +----------v----------+  +----v-----+
>> |  PCI EPF VHOST |  | NTB VHOST |  |PLATFORM DEVICE VHOST|  |    X     |
>> +----------------+  +-----------+  +---------------------+  +----------+
>>
>> This was initially proposed here [1]
>>
>> [1] -> https://lore.kernel.org/r/2cf00ec4-1ed6-f66e-6897-006d1a5b6390@ti=
.com
>
> I find this very interesting. A huge patchset so will take a bit
> to review, but I certainly plan to do that. Thanks!


Yes, it would be better if there's a git branch for us to have a look.

Btw, I'm not sure I get the big picture, but I vaguely feel some of the=20
work is duplicated with vDPA (e.g the epf transport or vhost bus).

Have you considered to implement these through vDPA?

Thanks


>
>> Kishon Vijay Abraham I (22):
>>    vhost: Make _feature_ bits a property of vhost device
>>    vhost: Introduce standard Linux driver model in VHOST
>>    vhost: Add ops for the VHOST driver to configure VHOST device
>>    vringh: Add helpers to access vring in MMIO
>>    vhost: Add MMIO helpers for operations on vhost virtqueue
>>    vhost: Introduce configfs entry for configuring VHOST
>>    virtio_pci: Use request_threaded_irq() instead of request_irq()
>>    rpmsg: virtio_rpmsg_bus: Disable receive virtqueue callback when
>>      reading messages
>>    rpmsg: Introduce configfs entry for configuring rpmsg
>>    rpmsg: virtio_rpmsg_bus: Add Address Service Notification support
>>    rpmsg: virtio_rpmsg_bus: Move generic rpmsg structure to
>>      rpmsg_internal.h
>>    virtio: Add ops to allocate and free buffer
>>    rpmsg: virtio_rpmsg_bus: Use virtio_alloc_buffer() and
>>      virtio_free_buffer()
>>    rpmsg: Add VHOST based remote processor messaging bus
>>    samples/rpmsg: Setup delayed work to send message
>>    samples/rpmsg: Wait for address to be bound to rpdev for sending
>>      message
>>    rpmsg.txt: Add Documentation to configure rpmsg using configfs
>>    virtio_pci: Add VIRTIO driver for VHOST on Configurable PCIe Endpoint
>>      device
>>    PCI: endpoint: Add EP function driver to provide VHOST interface
>>    NTB: Add a new NTB client driver to implement VIRTIO functionality
>>    NTB: Add a new NTB client driver to implement VHOST functionality
>>    NTB: Describe the ntb_virtio and ntb_vhost client in the documentatio=
n
>>
>>   Documentation/driver-api/ntb.rst              |   11 +
>>   Documentation/rpmsg.txt                       |   56 +
>>   drivers/ntb/Kconfig                           |   18 +
>>   drivers/ntb/Makefile                          |    2 +
>>   drivers/ntb/ntb_vhost.c                       |  776 +++++++++++
>>   drivers/ntb/ntb_virtio.c                      |  853 ++++++++++++
>>   drivers/ntb/ntb_virtio.h                      |   56 +
>>   drivers/pci/endpoint/functions/Kconfig        |   11 +
>>   drivers/pci/endpoint/functions/Makefile       |    1 +
>>   .../pci/endpoint/functions/pci-epf-vhost.c    | 1144 ++++++++++++++++
>>   drivers/rpmsg/Kconfig                         |   10 +
>>   drivers/rpmsg/Makefile                        |    3 +-
>>   drivers/rpmsg/rpmsg_cfs.c                     |  394 ++++++
>>   drivers/rpmsg/rpmsg_core.c                    |    7 +
>>   drivers/rpmsg/rpmsg_internal.h                |  136 ++
>>   drivers/rpmsg/vhost_rpmsg_bus.c               | 1151 +++++++++++++++++
>>   drivers/rpmsg/virtio_rpmsg_bus.c              |  184 ++-
>>   drivers/vhost/Kconfig                         |    1 +
>>   drivers/vhost/Makefile                        |    2 +-
>>   drivers/vhost/net.c                           |   10 +-
>>   drivers/vhost/scsi.c                          |   24 +-
>>   drivers/vhost/test.c                          |   17 +-
>>   drivers/vhost/vdpa.c                          |    2 +-
>>   drivers/vhost/vhost.c                         |  730 ++++++++++-
>>   drivers/vhost/vhost_cfs.c                     |  341 +++++
>>   drivers/vhost/vringh.c                        |  332 +++++
>>   drivers/vhost/vsock.c                         |   20 +-
>>   drivers/virtio/Kconfig                        |    9 +
>>   drivers/virtio/Makefile                       |    1 +
>>   drivers/virtio/virtio_pci_common.c            |   25 +-
>>   drivers/virtio/virtio_pci_epf.c               |  670 ++++++++++
>>   include/linux/mod_devicetable.h               |    6 +
>>   include/linux/rpmsg.h                         |    6 +
>>   {drivers/vhost =3D> include/linux}/vhost.h      |  132 +-
>>   include/linux/virtio.h                        |    3 +
>>   include/linux/virtio_config.h                 |   42 +
>>   include/linux/vringh.h                        |   46 +
>>   samples/rpmsg/rpmsg_client_sample.c           |   32 +-
>>   tools/virtio/virtio_test.c                    |    2 +-
>>   39 files changed, 7083 insertions(+), 183 deletions(-)
>>   create mode 100644 drivers/ntb/ntb_vhost.c
>>   create mode 100644 drivers/ntb/ntb_virtio.c
>>   create mode 100644 drivers/ntb/ntb_virtio.h
>>   create mode 100644 drivers/pci/endpoint/functions/pci-epf-vhost.c
>>   create mode 100644 drivers/rpmsg/rpmsg_cfs.c
>>   create mode 100644 drivers/rpmsg/vhost_rpmsg_bus.c
>>   create mode 100644 drivers/vhost/vhost_cfs.c
>>   create mode 100644 drivers/virtio/virtio_pci_epf.c
>>   rename {drivers/vhost =3D> include/linux}/vhost.h (66%)
>>
>> --=20
>> 2.17.1
>>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/603970f5-3289-cd53-82a9-aa62b292c552%40redhat.com.
