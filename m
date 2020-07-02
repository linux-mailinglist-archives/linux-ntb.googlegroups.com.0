Return-Path: <linux-ntb+bncBCOOP4VF5IDRBKFS633QKGQEBM7FTGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A3A211E04
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:22:01 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id h88sf4904278uah.9
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:22:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678121; cv=pass;
        d=google.com; s=arc-20160816;
        b=vJ58PW1Ua5lqd2Lk7DIEYZPWElZ1fu4zZeZeylxfHhBOV6QCeRLcCQoiPpwV99m3xw
         l0QyDICTXv+Pp8OkJIFSiSPVg/ckqAd3l0B4EtsVLUhRoYpfTnRsHUC0QUe2/EDtUy2i
         BLisiEIWpT3kMIIbk0+xbsbmuhuShCsmL7qhn4SWVTq/jMmKLiUCUsZGCnBW/AhiGG5b
         ePUtuSwJEhiTS9G3IWxyxGYpRnrqqSnY2DtRrHzDtJt8NfuR9Jhwd9Mjkv0RH3NdZP+O
         Kckx9Sdnps2vnFfG5c+DoUsWfD4exnykJuSg8cjKYcIB16SzuirrwmkIf3N3yEBBHRs5
         AHgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=Q1owFIHEboBwZW2bYorEX9qrckZefl/PvEOyJ/etOnc=;
        b=GxtwTnr8/1CmdFA1giRfyqXHLhTf6K8+7ZFmHKVPLaII4Zd+ZNPXT3M5nkgL0ikFOy
         Ass2ZU5d1Cs/Z27OTA2Vz8QVGqHgYkiHEoWaFwuHt0ZxCEps/Yo1TRJPipOF6drP+Sdu
         OZPcx+8IRWMByzIRVOScdqzGsaA3G1gyA2mBuuPXNwyZq/N7gLQuTglO14uRWFhEuok5
         h+nnk/m2qjUaqQqjiCzDf37178byXgLiA0phy2YMcX37yEeXWkExSfh3WVHeWjYJL75t
         c8gEg24P1SBXoH6HV3OrRHca8e7cgrtgg/4jk3jEC4Vg9yMkMP1rVLoj0dSGmcCjtxzs
         fobQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=JYTSz6tC;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Q1owFIHEboBwZW2bYorEX9qrckZefl/PvEOyJ/etOnc=;
        b=HIuAXGxSGBnCFRuWBcPPkFlqxb0Hvs7WHl2ngmZjcpSVnUlmFnqIlzYA8R5vVqqiTK
         hH/T+pZNADgggTKghaDHFrH7u7A15lV1UX6FNQocQmmWrC4X1i/duaXHX7bUFVy1+R6j
         6VauO611Pi5csx7PxeM9d8KG9eRl0+yKI0jc8ZxXqZyYiV6f2L8rbPQoM7vfOeOe2HMh
         cp+vrmbZRPG+cdoZvcxq0qKvsX8BlIElgGnSFINQ7OXHiTNyVRLq86UOhMPurSwt4i+Q
         VSB68NmUgfyCLujv214QKiwHq7qEgEQusGr5Es+qEAIeeCuhxIyzOODsTsE+yyq9UoVI
         5VJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q1owFIHEboBwZW2bYorEX9qrckZefl/PvEOyJ/etOnc=;
        b=FsGhrM0GXQ1Vegmc/LqnYSjGdNYzLdSZZ1rzv7kmb9a8VpzEyx3C7m/pBzpbtHn7qE
         wSPPNVFUeZo5zLud6D/MNc6faz1tFT/rtsmEckIl5z1tOgmgxM64IrDmSHRBF0GYoCW5
         pCdGJg3RrtJDmb7kYNzPDWpR1dL5+LvJ5M9yMebGGq2z+w/o4kpcxyrlC3Z5Jg2yT7dd
         T/qi2+QMu+lkIvWTujE7f6q6rP9LftuRKKwnASFtyWfHuHNAf/5AkyVWQcYITiW7sliB
         RXH1ry1C8AbH86hRbYoaEXKnD6znsUnSTHrfQrdixSLUBpzYBUF5T86zjPdVKZ+9/3QH
         I0OQ==
X-Gm-Message-State: AOAM530/Unvzx6T6qYhrrXmL+8a4U2wHc3sKL4dSbv+NofxznX+l72SK
	jRXVe+lebIFIYWGRp9pKjk0=
X-Google-Smtp-Source: ABdhPJwRtIIeN6fHCZHvrD610xZYg2iw1mqOtRMpaLxtS+YgnJDelh5zQUfXLF1Wgm/Y5rFxTSb2mA==
X-Received: by 2002:a1f:5806:: with SMTP id m6mr598941vkb.88.1593678120967;
        Thu, 02 Jul 2020 01:22:00 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:c58c:: with SMTP id h12ls618847vsk.8.gmail; Thu, 02 Jul
 2020 01:22:00 -0700 (PDT)
X-Received: by 2002:a67:6ac6:: with SMTP id f189mr17325484vsc.146.1593678120514;
        Thu, 02 Jul 2020 01:22:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678120; cv=none;
        d=google.com; s=arc-20160816;
        b=xpp3cn50Oy/FksfcO4dG4Yyg/w9s6R6OhlY7Cd7Ui5B1D7fY8PoGhRZG2gUO4iNZ+0
         6Zz4qpEE/EeF5PlXB5Ny6183cqu9cDn+bAe+8e1OYi2zBUt36qkSBf4MhlsRcewv3wf2
         F7e/HzpqlXt7fgRB4Hi3/Gq8Ho0t0i6ULo9rmEM0qGmToM25xKU0iprRofspSUktac09
         W0Lf2rqoLtm65ss+Nt1qWgmoz2zLOf4dKjASG4OJ1oDhpSzkcF0Jv7920Cn+YbbuDl+N
         LA8ZAQk/wCtjOC4DlJ+Z6Jg36L7XJAh6m+Y0Uvu2Y0sAO1X+5BKEHLtSFAjr5HykNurN
         YfUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=KmDEx84ZylqeHRRIg+ywtR6uqUDz71eDn9DrKmWcHRo=;
        b=jehoZ3WzzHdF1zeprMK7MQVE45Ucc66Z+UgNcnStiSEtWvfD/HE2ujGMDP4dASJL4O
         YnzhFgTR4nbqkvuSPNbeKmoZ3GbGYWlJdlaL2GRuNBlaeHYcs6PDQRGZnF/Sdg5eYu0N
         ep0jX757p7CIKGogFM+jTvxhrfEGLq9mlwNyO9at8irLOX/wQCDEL6j1Pk9Z57UW7Kdm
         pcAPRWKedi0QmSQj7tpvU2gflYVBK2g2pr8vlfYJh0mwTS0n/otxsSmv+cWIaHDDia7x
         pXRgqnedAdc8yBa0Kpbp6rvecjK++YFOojD/8kXJcK5crJ/esm1xuo/wvvk1RaUukOGa
         47/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=JYTSz6tC;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id v13si452570vsk.1.2020.07.02.01.22.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:22:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628LuYq081675;
	Thu, 2 Jul 2020 03:21:56 -0500
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628LoK6065017
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:21:51 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:21:50 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:21:50 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYC006145;
	Thu, 2 Jul 2020 03:21:45 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson
	<bjorn.andersson@linaro.org>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Michael S.
 Tsirkin" <mst@redhat.com>,
        Jason Wang <jasowang@redhat.com>, Paolo Bonzini
	<pbonzini@redhat.com>,
        Stefan Hajnoczi <stefanha@redhat.com>,
        Stefano
 Garzarella <sgarzare@redhat.com>
CC: <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-remoteproc@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        <linux-pci@vger.kernel.org>, <kvm@vger.kernel.org>,
        <virtualization@lists.linux-foundation.org>, <netdev@vger.kernel.org>
Subject: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC communication
Date: Thu, 2 Jul 2020 13:51:21 +0530
Message-ID: <20200702082143.25259-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=JYTSz6tC;       spf=pass
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

This series enhances Linux Vhost support to enable SoC-to-SoC
communication over MMIO. This series enables rpmsg communication between
two SoCs using both PCIe RC<->EP and HOST1-NTB-HOST2

1) Modify vhost to use standard Linux driver model
2) Add support in vring to access virtqueue over MMIO
3) Add vhost client driver for rpmsg
4) Add PCIe RC driver (uses virtio) and PCIe EP driver (uses vhost) for
   rpmsg communication between two SoCs connected to each other
5) Add NTB Virtio driver and NTB Vhost driver for rpmsg communication
   between two SoCs connected via NTB
6) Add configfs to configure the components

UseCase1 :

 VHOST RPMSG                     VIRTIO RPMSG
      +                               +
      |                               |
      |                               |
      |                               |
      |                               |
+-----v------+                 +------v-------+
|   Linux    |                 |     Linux    |
|  Endpoint  |                 | Root Complex |
|            <----------------->              |
|            |                 |              |
|    SOC1    |                 |     SOC2     |
+------------+                 +--------------+

UseCase 2:

     VHOST RPMSG                                      VIRTIO RPMSG
          +                                                 +
          |                                                 |
          |                                                 |
          |                                                 |
          |                                                 |
   +------v------+                                   +------v------+
   |             |                                   |             |
   |    HOST1    |                                   |    HOST2    |
   |             |                                   |             |
   +------^------+                                   +------^------+
          |                                                 |
          |                                                 |
+---------------------------------------------------------------------+
|  +------v------+                                   +------v------+  |
|  |             |                                   |             |  |
|  |     EP      |                                   |     EP      |  |
|  | CONTROLLER1 |                                   | CONTROLLER2 |  |
|  |             <----------------------------------->             |  |
|  |             |                                   |             |  |
|  |             |                                   |             |  |
|  |             |  SoC With Multiple EP Instances   |             |  |
|  |             |  (Configured using NTB Function)  |             |  |
|  +-------------+                                   +-------------+  |
+---------------------------------------------------------------------+

Software Layering:

The high-level SW layering should look something like below. This series
adds support only for RPMSG VHOST, however something similar should be
done for net and scsi. With that any vhost device (PCI, NTB, Platform
device, user) can use any of the vhost client driver.


    +----------------+  +-----------+  +------------+  +----------+
    |  RPMSG VHOST   |  | NET VHOST |  | SCSI VHOST |  |    X     |
    +-------^--------+  +-----^-----+  +-----^------+  +----^-----+
            |                 |              |              |
            |                 |              |              |
            |                 |              |              |
+-----------v-----------------v--------------v--------------v----------+
|                            VHOST CORE                                |
+--------^---------------^--------------------^------------------^-----+
         |               |                    |                  |
         |               |                    |                  |
         |               |                    |                  |
+--------v-------+  +----v------+  +----------v----------+  +----v-----+
|  PCI EPF VHOST |  | NTB VHOST |  |PLATFORM DEVICE VHOST|  |    X     |
+----------------+  +-----------+  +---------------------+  +----------+

This was initially proposed here [1]

[1] -> https://lore.kernel.org/r/2cf00ec4-1ed6-f66e-6897-006d1a5b6390@ti.com


Kishon Vijay Abraham I (22):
  vhost: Make _feature_ bits a property of vhost device
  vhost: Introduce standard Linux driver model in VHOST
  vhost: Add ops for the VHOST driver to configure VHOST device
  vringh: Add helpers to access vring in MMIO
  vhost: Add MMIO helpers for operations on vhost virtqueue
  vhost: Introduce configfs entry for configuring VHOST
  virtio_pci: Use request_threaded_irq() instead of request_irq()
  rpmsg: virtio_rpmsg_bus: Disable receive virtqueue callback when
    reading messages
  rpmsg: Introduce configfs entry for configuring rpmsg
  rpmsg: virtio_rpmsg_bus: Add Address Service Notification support
  rpmsg: virtio_rpmsg_bus: Move generic rpmsg structure to
    rpmsg_internal.h
  virtio: Add ops to allocate and free buffer
  rpmsg: virtio_rpmsg_bus: Use virtio_alloc_buffer() and
    virtio_free_buffer()
  rpmsg: Add VHOST based remote processor messaging bus
  samples/rpmsg: Setup delayed work to send message
  samples/rpmsg: Wait for address to be bound to rpdev for sending
    message
  rpmsg.txt: Add Documentation to configure rpmsg using configfs
  virtio_pci: Add VIRTIO driver for VHOST on Configurable PCIe Endpoint
    device
  PCI: endpoint: Add EP function driver to provide VHOST interface
  NTB: Add a new NTB client driver to implement VIRTIO functionality
  NTB: Add a new NTB client driver to implement VHOST functionality
  NTB: Describe the ntb_virtio and ntb_vhost client in the documentation

 Documentation/driver-api/ntb.rst              |   11 +
 Documentation/rpmsg.txt                       |   56 +
 drivers/ntb/Kconfig                           |   18 +
 drivers/ntb/Makefile                          |    2 +
 drivers/ntb/ntb_vhost.c                       |  776 +++++++++++
 drivers/ntb/ntb_virtio.c                      |  853 ++++++++++++
 drivers/ntb/ntb_virtio.h                      |   56 +
 drivers/pci/endpoint/functions/Kconfig        |   11 +
 drivers/pci/endpoint/functions/Makefile       |    1 +
 .../pci/endpoint/functions/pci-epf-vhost.c    | 1144 ++++++++++++++++
 drivers/rpmsg/Kconfig                         |   10 +
 drivers/rpmsg/Makefile                        |    3 +-
 drivers/rpmsg/rpmsg_cfs.c                     |  394 ++++++
 drivers/rpmsg/rpmsg_core.c                    |    7 +
 drivers/rpmsg/rpmsg_internal.h                |  136 ++
 drivers/rpmsg/vhost_rpmsg_bus.c               | 1151 +++++++++++++++++
 drivers/rpmsg/virtio_rpmsg_bus.c              |  184 ++-
 drivers/vhost/Kconfig                         |    1 +
 drivers/vhost/Makefile                        |    2 +-
 drivers/vhost/net.c                           |   10 +-
 drivers/vhost/scsi.c                          |   24 +-
 drivers/vhost/test.c                          |   17 +-
 drivers/vhost/vdpa.c                          |    2 +-
 drivers/vhost/vhost.c                         |  730 ++++++++++-
 drivers/vhost/vhost_cfs.c                     |  341 +++++
 drivers/vhost/vringh.c                        |  332 +++++
 drivers/vhost/vsock.c                         |   20 +-
 drivers/virtio/Kconfig                        |    9 +
 drivers/virtio/Makefile                       |    1 +
 drivers/virtio/virtio_pci_common.c            |   25 +-
 drivers/virtio/virtio_pci_epf.c               |  670 ++++++++++
 include/linux/mod_devicetable.h               |    6 +
 include/linux/rpmsg.h                         |    6 +
 {drivers/vhost => include/linux}/vhost.h      |  132 +-
 include/linux/virtio.h                        |    3 +
 include/linux/virtio_config.h                 |   42 +
 include/linux/vringh.h                        |   46 +
 samples/rpmsg/rpmsg_client_sample.c           |   32 +-
 tools/virtio/virtio_test.c                    |    2 +-
 39 files changed, 7083 insertions(+), 183 deletions(-)
 create mode 100644 drivers/ntb/ntb_vhost.c
 create mode 100644 drivers/ntb/ntb_virtio.c
 create mode 100644 drivers/ntb/ntb_virtio.h
 create mode 100644 drivers/pci/endpoint/functions/pci-epf-vhost.c
 create mode 100644 drivers/rpmsg/rpmsg_cfs.c
 create mode 100644 drivers/rpmsg/vhost_rpmsg_bus.c
 create mode 100644 drivers/vhost/vhost_cfs.c
 create mode 100644 drivers/virtio/virtio_pci_epf.c
 rename {drivers/vhost => include/linux}/vhost.h (66%)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-1-kishon%40ti.com.
