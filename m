Return-Path: <linux-ntb+bncBDLPBG4DUEARB55T7D3QKGQELXSB3HQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id E9533212B45
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 19:31:36 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id x2sf18001817iof.0
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 10:31:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593711096; cv=pass;
        d=google.com; s=arc-20160816;
        b=YjHoBRCeXLpsWhRsU7Hp/S4dEEPI/5qDSl8JfGgoceL0KtudOiXYh8uSPWzCb9rq6h
         6co8z3Owb15WZbKDrPO9EBgZzKQ4FN5TOtch41bBZQT4ZEJSg0/S4QFV/lN6YBOKKciR
         lcgWBjLGD71TOG6dlL3FKEmajdQ1aWnGkemfXfBRQq6WAd/1Hb1P/86TxLmA8huPMCPt
         OnAIQfxbHkkqkc8d6Rq0wSjH5gep6F95KBQYQ/tH7fYXIYMmCak8V2fUBKNu5X6CIDUJ
         qFg3Dwt+cGkOYyXyQJH1Mz87zw6vPtERHPrDBzgBJzmIohYFb4IkMSjNsLsh4YbzpYbP
         xD+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=RV+9CEQCF5880JnqMMoJ/cSZQhBr/SqZhEYEUdEQMGY=;
        b=lsLr6TqZpDdx2UtJzjLGc7jsWY56TeWF4HK3aQF2eziB1OBUiVJfBedvul4j/vtCA2
         z2z6/znTUdf1PnCbxjHihro+TmrTtWQRvqMu6rPQiqM78ND4Lq9bR4Qy/dQiaTLuVfUh
         JC/TA0XSCJqD/KcJ7KnlmJ5aYeYZrQDYrdb+AFd5X+/AYX2PnCWsADjukqB871wGi/oL
         u6lfoCuUevqRmeC+6tpCXPAEEoh277i3lHXVluMFrHpOeX2ga7I3Mupc7sqHAKzPAD+M
         xX/h2rxyBIgfYd+oL9u9gNtKg3zbPrAEvYhU7Xv+MFyashG9iAwwz7MBKNZl7FmAjm/I
         r3TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dlardQB2;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RV+9CEQCF5880JnqMMoJ/cSZQhBr/SqZhEYEUdEQMGY=;
        b=A6DHA95UG+/m9lVEl+AA/2ezK5P1YlaFn3YqzcxumhggOQ2ham8zo8CNMzt0h1Ogj4
         1jd8AwRYFF4TJiUrhoP37r9sYRPXCVHdQ4H1+ZVurJ3CnnLyOM3GAqUvsuZi9tHzrwDR
         8ytobzIPkprwFswNim/dphVYLE3HaZu0xmptPsaqNPFUqJnAoSZ2gS7tkGYMMR02INIK
         dCy3sM6HhVVB1Co8lyZqDMVNAxJojMGhSVWuF1F8hNJn8haTIpmCksQbDCl+F87bNJPR
         wj1ua5UXfseiJ5dCA2Oj9cVoty84A1rEo/PcDUqV8UWMFKSiMtXByxLYbIaQXA6TciSB
         DxKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RV+9CEQCF5880JnqMMoJ/cSZQhBr/SqZhEYEUdEQMGY=;
        b=P3CMImkhoMc96kNXQe78uw0fEbhpFtk7f2QhrI0mqJvBaYwgJJo0WBNujBZH2n/nku
         aueuRFKXqGTZk9PwrW7bPuBXxZXOViWerAvYKNUo/CH96rdURLwB0AJto9nIWZDxTATt
         /PwZ+BkY8+UkpevL0emT0xxGO0PGX/91vbzfEYRiV0+gnWEmxDFrX1mXi2zUpcVDRkOU
         cyALDUGzHlpf/iZ/mXn50d4FE6d7p0Rc51Lhcu1QL7/DZ7UkVRd7lt7N6KXDrF8BaxpU
         tgRpRariDv+Kk0ZPGkoBicBqiZVzMV37h8q5nKAsqZxA42C5nqMhsGVCEDRl5NLWRsZQ
         2bcQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531rFVVdiIkOrswo8adDiXppBNp3LBokPXdGM4Ao+le7ksaqbJM7
	+nVt/Qc8v5SRQi5VkdWuFmc=
X-Google-Smtp-Source: ABdhPJxv4YOi/10W9sNHbnFyqyg1bTWwviH9dEeHtfgyvuvEQb730YdY3vUB9yaZV9rw3ozsIxW6vA==
X-Received: by 2002:a5e:cb42:: with SMTP id h2mr8344548iok.43.1593711095883;
        Thu, 02 Jul 2020 10:31:35 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:c61a:: with SMTP id i26ls973000jan.11.gmail; Thu, 02 Jul
 2020 10:31:35 -0700 (PDT)
X-Received: by 2002:a05:6638:601:: with SMTP id g1mr35674935jar.137.1593711095485;
        Thu, 02 Jul 2020 10:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593711095; cv=none;
        d=google.com; s=arc-20160816;
        b=Q8rbJeL0rn0HIEBwGkB18ypdXsnZ3bsuyK9F26JmJLXb8kK2A//KsgpsJPkkotLUC6
         wK/u7fCaJDDnEC+nVNZCJmBV8EQg1b7UnTQB0CQOySHkMiyMnXGwMOa1lRkpGkVpI7wi
         3Ijtrh46oqfOkbUv0skuu7WhOi82/37BKvFDef+fbqvjrKwHBulhhHKL1N61zVNJvvs8
         WglCV9jj2Q5HOh23ygFzUbbmWprbXaOhEHKrKAdfojQyecoGeBpSM+hLtAtdeS0ZG7ka
         hn6H62YiYhsrbw+27UFTqJzBepuh3LUFTFS5MeGyhZ4ugPIOkzXXyQjLWISXfmq3Ek/K
         0n0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qS9aKixWg8M2HwkRwLxIhre1iwIBiL08luFNH178zko=;
        b=KFj5dORpEJvCAjDuHgr01HrVfe52jUroVhNub7Al4K7DXCO3ZeUWw8slyoAAppxFvf
         +Jm+/1GWYpB3h02d3INtEUiJB9M93ErLF0id3gmqsZft99BruT+z1mxKeGp2AIRbc52I
         FAEK0wB/jZrx4del8B8Z1IB4Gg9sjKr4GA1hLqT6L20/iDvzNmUv8P8QglNYY2FNbZKJ
         MP+B5UhuWCbglPWjdcM/U3putn5jJAerIf+I3sooAKirUb76GsGHGJSRdNLoWVjA2oZw
         RGGrSSm3SZhYukSydq4zerOVc+Dnj6wvvxgkGvrzm2sBpGU1rQ6qZiZt9hSDShjqlA8k
         e1sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dlardQB2;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id q80si611838iod.0.2020.07.02.10.31.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 10:31:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id a12so29761838ion.13
        for <linux-ntb@googlegroups.com>; Thu, 02 Jul 2020 10:31:34 -0700 (PDT)
X-Received: by 2002:a02:7f89:: with SMTP id r131mr34382094jac.98.1593711094007;
 Thu, 02 Jul 2020 10:31:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200702082143.25259-1-kishon@ti.com> <20200702055026-mutt-send-email-mst@kernel.org>
In-Reply-To: <20200702055026-mutt-send-email-mst@kernel.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 2 Jul 2020 11:31:23 -0600
Message-ID: <CANLsYky4ZrgYGZUyg4iVwbM3TQk5dvOSBwPFER8qofixjn4vyA@mail.gmail.com>
Subject: Re: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC communication
To: "Michael S. Tsirkin" <mst@redhat.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Ohad Ben-Cohen <ohad@wizery.com>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Jon Mason <jdmason@kudzu.us>, 
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Jason Wang <jasowang@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>, 
	Stefan Hajnoczi <stefanha@redhat.com>, Stefano Garzarella <sgarzare@redhat.com>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	linux-remoteproc <linux-remoteproc@vger.kernel.org>, linux-ntb@googlegroups.com, 
	linux-pci@vger.kernel.org, kvm@vger.kernel.org, 
	virtualization@lists.linux-foundation.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mathieu.poirier@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=dlardQB2;       spf=pass
 (google.com: domain of mathieu.poirier@linaro.org designates
 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, 2 Jul 2020 at 03:51, Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Thu, Jul 02, 2020 at 01:51:21PM +0530, Kishon Vijay Abraham I wrote:
> > This series enhances Linux Vhost support to enable SoC-to-SoC
> > communication over MMIO. This series enables rpmsg communication between
> > two SoCs using both PCIe RC<->EP and HOST1-NTB-HOST2
> >
> > 1) Modify vhost to use standard Linux driver model
> > 2) Add support in vring to access virtqueue over MMIO
> > 3) Add vhost client driver for rpmsg
> > 4) Add PCIe RC driver (uses virtio) and PCIe EP driver (uses vhost) for
> >    rpmsg communication between two SoCs connected to each other
> > 5) Add NTB Virtio driver and NTB Vhost driver for rpmsg communication
> >    between two SoCs connected via NTB
> > 6) Add configfs to configure the components
> >
> > UseCase1 :
> >
> >  VHOST RPMSG                     VIRTIO RPMSG
> >       +                               +
> >       |                               |
> >       |                               |
> >       |                               |
> >       |                               |
> > +-----v------+                 +------v-------+
> > |   Linux    |                 |     Linux    |
> > |  Endpoint  |                 | Root Complex |
> > |            <----------------->              |
> > |            |                 |              |
> > |    SOC1    |                 |     SOC2     |
> > +------------+                 +--------------+
> >
> > UseCase 2:
> >
> >      VHOST RPMSG                                      VIRTIO RPMSG
> >           +                                                 +
> >           |                                                 |
> >           |                                                 |
> >           |                                                 |
> >           |                                                 |
> >    +------v------+                                   +------v------+
> >    |             |                                   |             |
> >    |    HOST1    |                                   |    HOST2    |
> >    |             |                                   |             |
> >    +------^------+                                   +------^------+
> >           |                                                 |
> >           |                                                 |
> > +---------------------------------------------------------------------+
> > |  +------v------+                                   +------v------+  |
> > |  |             |                                   |             |  |
> > |  |     EP      |                                   |     EP      |  |
> > |  | CONTROLLER1 |                                   | CONTROLLER2 |  |
> > |  |             <----------------------------------->             |  |
> > |  |             |                                   |             |  |
> > |  |             |                                   |             |  |
> > |  |             |  SoC With Multiple EP Instances   |             |  |
> > |  |             |  (Configured using NTB Function)  |             |  |
> > |  +-------------+                                   +-------------+  |
> > +---------------------------------------------------------------------+
> >
> > Software Layering:
> >
> > The high-level SW layering should look something like below. This series
> > adds support only for RPMSG VHOST, however something similar should be
> > done for net and scsi. With that any vhost device (PCI, NTB, Platform
> > device, user) can use any of the vhost client driver.
> >
> >
> >     +----------------+  +-----------+  +------------+  +----------+
> >     |  RPMSG VHOST   |  | NET VHOST |  | SCSI VHOST |  |    X     |
> >     +-------^--------+  +-----^-----+  +-----^------+  +----^-----+
> >             |                 |              |              |
> >             |                 |              |              |
> >             |                 |              |              |
> > +-----------v-----------------v--------------v--------------v----------+
> > |                            VHOST CORE                                |
> > +--------^---------------^--------------------^------------------^-----+
> >          |               |                    |                  |
> >          |               |                    |                  |
> >          |               |                    |                  |
> > +--------v-------+  +----v------+  +----------v----------+  +----v-----+
> > |  PCI EPF VHOST |  | NTB VHOST |  |PLATFORM DEVICE VHOST|  |    X     |
> > +----------------+  +-----------+  +---------------------+  +----------+
> >
> > This was initially proposed here [1]
> >
> > [1] -> https://lore.kernel.org/r/2cf00ec4-1ed6-f66e-6897-006d1a5b6390@ti.com
>
>
> I find this very interesting. A huge patchset so will take a bit
> to review, but I certainly plan to do that. Thanks!

Same here - it will take time.  This patchset is sizable and sits
behind a few others that are equally big.

>
> >
> > Kishon Vijay Abraham I (22):
> >   vhost: Make _feature_ bits a property of vhost device
> >   vhost: Introduce standard Linux driver model in VHOST
> >   vhost: Add ops for the VHOST driver to configure VHOST device
> >   vringh: Add helpers to access vring in MMIO
> >   vhost: Add MMIO helpers for operations on vhost virtqueue
> >   vhost: Introduce configfs entry for configuring VHOST
> >   virtio_pci: Use request_threaded_irq() instead of request_irq()
> >   rpmsg: virtio_rpmsg_bus: Disable receive virtqueue callback when
> >     reading messages
> >   rpmsg: Introduce configfs entry for configuring rpmsg
> >   rpmsg: virtio_rpmsg_bus: Add Address Service Notification support
> >   rpmsg: virtio_rpmsg_bus: Move generic rpmsg structure to
> >     rpmsg_internal.h
> >   virtio: Add ops to allocate and free buffer
> >   rpmsg: virtio_rpmsg_bus: Use virtio_alloc_buffer() and
> >     virtio_free_buffer()
> >   rpmsg: Add VHOST based remote processor messaging bus
> >   samples/rpmsg: Setup delayed work to send message
> >   samples/rpmsg: Wait for address to be bound to rpdev for sending
> >     message
> >   rpmsg.txt: Add Documentation to configure rpmsg using configfs
> >   virtio_pci: Add VIRTIO driver for VHOST on Configurable PCIe Endpoint
> >     device
> >   PCI: endpoint: Add EP function driver to provide VHOST interface
> >   NTB: Add a new NTB client driver to implement VIRTIO functionality
> >   NTB: Add a new NTB client driver to implement VHOST functionality
> >   NTB: Describe the ntb_virtio and ntb_vhost client in the documentation
> >
> >  Documentation/driver-api/ntb.rst              |   11 +
> >  Documentation/rpmsg.txt                       |   56 +
> >  drivers/ntb/Kconfig                           |   18 +
> >  drivers/ntb/Makefile                          |    2 +
> >  drivers/ntb/ntb_vhost.c                       |  776 +++++++++++
> >  drivers/ntb/ntb_virtio.c                      |  853 ++++++++++++
> >  drivers/ntb/ntb_virtio.h                      |   56 +
> >  drivers/pci/endpoint/functions/Kconfig        |   11 +
> >  drivers/pci/endpoint/functions/Makefile       |    1 +
> >  .../pci/endpoint/functions/pci-epf-vhost.c    | 1144 ++++++++++++++++
> >  drivers/rpmsg/Kconfig                         |   10 +
> >  drivers/rpmsg/Makefile                        |    3 +-
> >  drivers/rpmsg/rpmsg_cfs.c                     |  394 ++++++
> >  drivers/rpmsg/rpmsg_core.c                    |    7 +
> >  drivers/rpmsg/rpmsg_internal.h                |  136 ++
> >  drivers/rpmsg/vhost_rpmsg_bus.c               | 1151 +++++++++++++++++
> >  drivers/rpmsg/virtio_rpmsg_bus.c              |  184 ++-
> >  drivers/vhost/Kconfig                         |    1 +
> >  drivers/vhost/Makefile                        |    2 +-
> >  drivers/vhost/net.c                           |   10 +-
> >  drivers/vhost/scsi.c                          |   24 +-
> >  drivers/vhost/test.c                          |   17 +-
> >  drivers/vhost/vdpa.c                          |    2 +-
> >  drivers/vhost/vhost.c                         |  730 ++++++++++-
> >  drivers/vhost/vhost_cfs.c                     |  341 +++++
> >  drivers/vhost/vringh.c                        |  332 +++++
> >  drivers/vhost/vsock.c                         |   20 +-
> >  drivers/virtio/Kconfig                        |    9 +
> >  drivers/virtio/Makefile                       |    1 +
> >  drivers/virtio/virtio_pci_common.c            |   25 +-
> >  drivers/virtio/virtio_pci_epf.c               |  670 ++++++++++
> >  include/linux/mod_devicetable.h               |    6 +
> >  include/linux/rpmsg.h                         |    6 +
> >  {drivers/vhost => include/linux}/vhost.h      |  132 +-
> >  include/linux/virtio.h                        |    3 +
> >  include/linux/virtio_config.h                 |   42 +
> >  include/linux/vringh.h                        |   46 +
> >  samples/rpmsg/rpmsg_client_sample.c           |   32 +-
> >  tools/virtio/virtio_test.c                    |    2 +-
> >  39 files changed, 7083 insertions(+), 183 deletions(-)
> >  create mode 100644 drivers/ntb/ntb_vhost.c
> >  create mode 100644 drivers/ntb/ntb_virtio.c
> >  create mode 100644 drivers/ntb/ntb_virtio.h
> >  create mode 100644 drivers/pci/endpoint/functions/pci-epf-vhost.c
> >  create mode 100644 drivers/rpmsg/rpmsg_cfs.c
> >  create mode 100644 drivers/rpmsg/vhost_rpmsg_bus.c
> >  create mode 100644 drivers/vhost/vhost_cfs.c
> >  create mode 100644 drivers/virtio/virtio_pci_epf.c
> >  rename {drivers/vhost => include/linux}/vhost.h (66%)
> >
> > --
> > 2.17.1
> >
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CANLsYky4ZrgYGZUyg4iVwbM3TQk5dvOSBwPFER8qofixjn4vyA%40mail.gmail.com.
