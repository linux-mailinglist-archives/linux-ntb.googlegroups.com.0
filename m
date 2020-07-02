Return-Path: <linux-ntb+bncBCQYDA7264GRBKW4633QKGQEANWDFAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4BE212057
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 11:51:39 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id a205sf19080399qkc.16
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 02:51:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593683499; cv=pass;
        d=google.com; s=arc-20160816;
        b=B6HR9bGZLJyxY+/yA2WxlIPH/Qq59GyiYE755UykUdeVKTdW3ihVxvQXushEB5QCYB
         7l+jVXw3ys0fQIl8Dd8nJLfn4TBkZFRiBNCXyxfThLkFFigR9k1CgOidJ9tj1Adci9T7
         5huIQBrKo8Q3Ygb0CXm9xEteVuq2BUTTQ9AEkLR9vlifDBRjdCzJot9P8FrvUgw8+r9Z
         lmyIJWlyYYN7YkBmnXklQZSE2Iytr69t7ChI2U3PDRGwDRBg7Mnct8/TQ3OXXr+TC9wb
         GHA9F+fhOlhaOFt5WbYisrEwT29TvdN4br0E8tvb+kRewIj3LaBpqq+FnU4xi+CVwG93
         8zAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Tn+H6RUcd96NYZfqX7O5e5tNLFbSkUCtsxaq5j+HsLc=;
        b=lV7a8W0eLLJTZpYvZCHxEcsjlbU/zfl7SpdRbVgQX/mbtzwwRIX21uOpl8Qf4Hh4rx
         CT7gKfTEZoKh4WQu0B14yMznw+6T710rzyxm+llCH5Wzca19sI4vj3oT61zSsUi7Wgzg
         vAhw3soqb95FOrJFWux6522/JDYmzMZmM+C8c0/ab4tHZeGW1hOKAEiXHSX8MwYubZ/o
         YisUIbaQCyIYqOCkK4tGtC5nWtqBMWh0mET4k0wOoopgaLvY6v0Os6rHx4hC5TwRJio0
         Abbovyp2Qy7ZbrlfOjrTuPSl90O73+g7XUSxRIFkMu469xPSP2LlBJQBIJ7fuLCG8o6k
         62lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hJZ6Gs8v;
       spf=pass (google.com: domain of mst@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Tn+H6RUcd96NYZfqX7O5e5tNLFbSkUCtsxaq5j+HsLc=;
        b=V3b1431x5p/XMRReS9hisuNPZ+Vf3Z279CeYI0x93+jxOIOxwiht3bZER8rCu2oA1I
         +R3aabRipssN7mJIf2Oyev3oEquS+SY5xKqxjZST6Pu2bhMUQZ0kNW/WeGcRyO29+DhE
         8NZ8BKDs0kVs4rdMlMcUommVtYtmda4X/Cko2KbNY0/r4uisdHMjiun+FNSbORKqMBkT
         UDJxDDbcP6+vSbj0kiWi251pqr5VJvMNa7AVcbFDNorU6RD5ftFn9HHNmo+pVkhpCkGp
         WTXgMfe2ogxZIQwwrlrcQJ6fA/zSa0z0w/fxtCOheirVXaeJUwl1KxI5T1e+CIcxVxSu
         oLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Tn+H6RUcd96NYZfqX7O5e5tNLFbSkUCtsxaq5j+HsLc=;
        b=lHg8nZkvqPD1Jrvse+uQXTLKZ16cmt1m5B/EChSqwxUT8fArjZACRfru/B+YyuCZ6j
         iV+Wohn8Thsiku4CdN0EShic0J3zg6y/EMExYP277eYXASNexxNa4m0ZotkvZNrFKtlX
         i5YqNR3vbZGmGZfd8nvi68+kMmuBQZJHHrJH8Sv2KAieXFQj0EhejJHV0/Sg3mWfqiXD
         7exE8erqSCMjC2bohV0H9h9pg7VBkbky6aBy2nQbFnuvDEqcnA1x4f+yD1dsQEz/zO8b
         s+MOroHnODs422ueM8ljm9PkWYQzI7SaAvOyoCaLTSA8Y29fV05ScNtwyCmz4L7ftMqG
         0ICg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533ZDHRnuni9DgaO2Eio3l40wQJksCNSyFJ4pzMiUiAMHhD7pxzP
	3VcKnkJiVgkvgg/vOVHUiQI=
X-Google-Smtp-Source: ABdhPJwmLmeIdjfi68Dwf7H57LpPWJXnjvmgxCFGmeQd9lQKrHH4p7Ovf0YxTJwCFEt3HOC+TDXvBA==
X-Received: by 2002:a0c:d7c9:: with SMTP id g9mr15760983qvj.83.1593683498744;
        Thu, 02 Jul 2020 02:51:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:507:: with SMTP id u7ls2119952qtg.10.gmail; Thu, 02 Jul
 2020 02:51:38 -0700 (PDT)
X-Received: by 2002:ac8:f6f:: with SMTP id l44mr29146774qtk.4.1593683498405;
        Thu, 02 Jul 2020 02:51:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593683498; cv=none;
        d=google.com; s=arc-20160816;
        b=Xgw8Ay11Wr60liVvayJrbfSaCv1FlPOHqV6kytlHwbsMZmulzbQieCNT3r2FAdk5iu
         6jjJLkTaZivuzB0ZtJYp5t4Z848JGqfJ1XIgBCzRQbGWRGhSnLP2exSwZTlaSgJ5Rxzv
         eHxuRSszUhEp3vzEDIV+m0G2kGGi8hZyT1AsSptleCn6ZXf+LjYztD92DnyDTxXtHK7L
         TLMizibsXeN6Fk59ZOLrtpRIrv+5dHt6aUQm7XN1t3SKr8TzHWPuMrtFVKpWeCZQDGF6
         9DjYw2B3OWc/dF6BOs9J/0UJjPsXAjKaTDTve02qk2gMXVF/8hbo7dOY7tKFOxxsQKgA
         Kh7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bHogEYB9LdYLmlRRtpVvkwg/X8GA9U3ZCoLaT+Iq1ZM=;
        b=IIHJ2SSK8RrmQJsi3rSkul6cGFCJE5FC69qHHpkHkB9NLKKMaEigM0LCPX5fw7ptO6
         V8KoSeN6OLsDvsW07/LxS4l82418H7fVdHOJCWybqb13N703XPrYBiQiBe3o8CU6jZM+
         t/eOa3SOe1agkGJoPyWBXW73Sk9+kSTO2A9kSTqaWc4JYdGkfcIyQkRn5FJO0BM4NQFo
         sWdxdA6OIgZ81npzDfXXmYBIkDNPUZPUn4glj9TFD1ORRcKPOWMWbb/z2+byZmClkKzn
         dUmtNpqmiyTqVt8KiQH6a/n5Ys35i+e825qujFomkHwJHgrLOB3WzvpIZVjqgMa2X7Fr
         91Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hJZ6Gs8v;
       spf=pass (google.com: domain of mst@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id y21si470058qka.2.2020.07.02.02.51.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 02:51:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of mst@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-176-KobuPRtxPZmMkzSRlxWF9w-1; Thu, 02 Jul 2020 05:51:36 -0400
X-MC-Unique: KobuPRtxPZmMkzSRlxWF9w-1
Received: by mail-wm1-f71.google.com with SMTP id q20so17877157wme.3
        for <linux-ntb@googlegroups.com>; Thu, 02 Jul 2020 02:51:36 -0700 (PDT)
X-Received: by 2002:a5d:6a01:: with SMTP id m1mr32647448wru.115.1593683494974;
        Thu, 02 Jul 2020 02:51:34 -0700 (PDT)
X-Received: by 2002:a5d:6a01:: with SMTP id m1mr32647426wru.115.1593683494694;
        Thu, 02 Jul 2020 02:51:34 -0700 (PDT)
Received: from redhat.com ([93.157.82.4])
        by smtp.gmail.com with ESMTPSA id 138sm4695866wmb.1.2020.07.02.02.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 02:51:33 -0700 (PDT)
Date: Thu, 2 Jul 2020 05:51:29 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jason Wang <jasowang@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Stefan Hajnoczi <stefanha@redhat.com>,
	Stefano Garzarella <sgarzare@redhat.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	linux-ntb@googlegroups.com, linux-pci@vger.kernel.org,
	kvm@vger.kernel.org, virtualization@lists.linux-foundation.org,
	netdev@vger.kernel.org
Subject: Re: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC
 communication
Message-ID: <20200702055026-mutt-send-email-mst@kernel.org>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: mst@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hJZ6Gs8v;
       spf=pass (google.com: domain of mst@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=mst@redhat.com;
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

On Thu, Jul 02, 2020 at 01:51:21PM +0530, Kishon Vijay Abraham I wrote:
> This series enhances Linux Vhost support to enable SoC-to-SoC
> communication over MMIO. This series enables rpmsg communication between
> two SoCs using both PCIe RC<->EP and HOST1-NTB-HOST2
> 
> 1) Modify vhost to use standard Linux driver model
> 2) Add support in vring to access virtqueue over MMIO
> 3) Add vhost client driver for rpmsg
> 4) Add PCIe RC driver (uses virtio) and PCIe EP driver (uses vhost) for
>    rpmsg communication between two SoCs connected to each other
> 5) Add NTB Virtio driver and NTB Vhost driver for rpmsg communication
>    between two SoCs connected via NTB
> 6) Add configfs to configure the components
> 
> UseCase1 :
> 
>  VHOST RPMSG                     VIRTIO RPMSG
>       +                               +
>       |                               |
>       |                               |
>       |                               |
>       |                               |
> +-----v------+                 +------v-------+
> |   Linux    |                 |     Linux    |
> |  Endpoint  |                 | Root Complex |
> |            <----------------->              |
> |            |                 |              |
> |    SOC1    |                 |     SOC2     |
> +------------+                 +--------------+
> 
> UseCase 2:
> 
>      VHOST RPMSG                                      VIRTIO RPMSG
>           +                                                 +
>           |                                                 |
>           |                                                 |
>           |                                                 |
>           |                                                 |
>    +------v------+                                   +------v------+
>    |             |                                   |             |
>    |    HOST1    |                                   |    HOST2    |
>    |             |                                   |             |
>    +------^------+                                   +------^------+
>           |                                                 |
>           |                                                 |
> +---------------------------------------------------------------------+
> |  +------v------+                                   +------v------+  |
> |  |             |                                   |             |  |
> |  |     EP      |                                   |     EP      |  |
> |  | CONTROLLER1 |                                   | CONTROLLER2 |  |
> |  |             <----------------------------------->             |  |
> |  |             |                                   |             |  |
> |  |             |                                   |             |  |
> |  |             |  SoC With Multiple EP Instances   |             |  |
> |  |             |  (Configured using NTB Function)  |             |  |
> |  +-------------+                                   +-------------+  |
> +---------------------------------------------------------------------+
> 
> Software Layering:
> 
> The high-level SW layering should look something like below. This series
> adds support only for RPMSG VHOST, however something similar should be
> done for net and scsi. With that any vhost device (PCI, NTB, Platform
> device, user) can use any of the vhost client driver.
> 
> 
>     +----------------+  +-----------+  +------------+  +----------+
>     |  RPMSG VHOST   |  | NET VHOST |  | SCSI VHOST |  |    X     |
>     +-------^--------+  +-----^-----+  +-----^------+  +----^-----+
>             |                 |              |              |
>             |                 |              |              |
>             |                 |              |              |
> +-----------v-----------------v--------------v--------------v----------+
> |                            VHOST CORE                                |
> +--------^---------------^--------------------^------------------^-----+
>          |               |                    |                  |
>          |               |                    |                  |
>          |               |                    |                  |
> +--------v-------+  +----v------+  +----------v----------+  +----v-----+
> |  PCI EPF VHOST |  | NTB VHOST |  |PLATFORM DEVICE VHOST|  |    X     |
> +----------------+  +-----------+  +---------------------+  +----------+
> 
> This was initially proposed here [1]
> 
> [1] -> https://lore.kernel.org/r/2cf00ec4-1ed6-f66e-6897-006d1a5b6390@ti.com


I find this very interesting. A huge patchset so will take a bit
to review, but I certainly plan to do that. Thanks!

> 
> Kishon Vijay Abraham I (22):
>   vhost: Make _feature_ bits a property of vhost device
>   vhost: Introduce standard Linux driver model in VHOST
>   vhost: Add ops for the VHOST driver to configure VHOST device
>   vringh: Add helpers to access vring in MMIO
>   vhost: Add MMIO helpers for operations on vhost virtqueue
>   vhost: Introduce configfs entry for configuring VHOST
>   virtio_pci: Use request_threaded_irq() instead of request_irq()
>   rpmsg: virtio_rpmsg_bus: Disable receive virtqueue callback when
>     reading messages
>   rpmsg: Introduce configfs entry for configuring rpmsg
>   rpmsg: virtio_rpmsg_bus: Add Address Service Notification support
>   rpmsg: virtio_rpmsg_bus: Move generic rpmsg structure to
>     rpmsg_internal.h
>   virtio: Add ops to allocate and free buffer
>   rpmsg: virtio_rpmsg_bus: Use virtio_alloc_buffer() and
>     virtio_free_buffer()
>   rpmsg: Add VHOST based remote processor messaging bus
>   samples/rpmsg: Setup delayed work to send message
>   samples/rpmsg: Wait for address to be bound to rpdev for sending
>     message
>   rpmsg.txt: Add Documentation to configure rpmsg using configfs
>   virtio_pci: Add VIRTIO driver for VHOST on Configurable PCIe Endpoint
>     device
>   PCI: endpoint: Add EP function driver to provide VHOST interface
>   NTB: Add a new NTB client driver to implement VIRTIO functionality
>   NTB: Add a new NTB client driver to implement VHOST functionality
>   NTB: Describe the ntb_virtio and ntb_vhost client in the documentation
> 
>  Documentation/driver-api/ntb.rst              |   11 +
>  Documentation/rpmsg.txt                       |   56 +
>  drivers/ntb/Kconfig                           |   18 +
>  drivers/ntb/Makefile                          |    2 +
>  drivers/ntb/ntb_vhost.c                       |  776 +++++++++++
>  drivers/ntb/ntb_virtio.c                      |  853 ++++++++++++
>  drivers/ntb/ntb_virtio.h                      |   56 +
>  drivers/pci/endpoint/functions/Kconfig        |   11 +
>  drivers/pci/endpoint/functions/Makefile       |    1 +
>  .../pci/endpoint/functions/pci-epf-vhost.c    | 1144 ++++++++++++++++
>  drivers/rpmsg/Kconfig                         |   10 +
>  drivers/rpmsg/Makefile                        |    3 +-
>  drivers/rpmsg/rpmsg_cfs.c                     |  394 ++++++
>  drivers/rpmsg/rpmsg_core.c                    |    7 +
>  drivers/rpmsg/rpmsg_internal.h                |  136 ++
>  drivers/rpmsg/vhost_rpmsg_bus.c               | 1151 +++++++++++++++++
>  drivers/rpmsg/virtio_rpmsg_bus.c              |  184 ++-
>  drivers/vhost/Kconfig                         |    1 +
>  drivers/vhost/Makefile                        |    2 +-
>  drivers/vhost/net.c                           |   10 +-
>  drivers/vhost/scsi.c                          |   24 +-
>  drivers/vhost/test.c                          |   17 +-
>  drivers/vhost/vdpa.c                          |    2 +-
>  drivers/vhost/vhost.c                         |  730 ++++++++++-
>  drivers/vhost/vhost_cfs.c                     |  341 +++++
>  drivers/vhost/vringh.c                        |  332 +++++
>  drivers/vhost/vsock.c                         |   20 +-
>  drivers/virtio/Kconfig                        |    9 +
>  drivers/virtio/Makefile                       |    1 +
>  drivers/virtio/virtio_pci_common.c            |   25 +-
>  drivers/virtio/virtio_pci_epf.c               |  670 ++++++++++
>  include/linux/mod_devicetable.h               |    6 +
>  include/linux/rpmsg.h                         |    6 +
>  {drivers/vhost => include/linux}/vhost.h      |  132 +-
>  include/linux/virtio.h                        |    3 +
>  include/linux/virtio_config.h                 |   42 +
>  include/linux/vringh.h                        |   46 +
>  samples/rpmsg/rpmsg_client_sample.c           |   32 +-
>  tools/virtio/virtio_test.c                    |    2 +-
>  39 files changed, 7083 insertions(+), 183 deletions(-)
>  create mode 100644 drivers/ntb/ntb_vhost.c
>  create mode 100644 drivers/ntb/ntb_virtio.c
>  create mode 100644 drivers/ntb/ntb_virtio.h
>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-vhost.c
>  create mode 100644 drivers/rpmsg/rpmsg_cfs.c
>  create mode 100644 drivers/rpmsg/vhost_rpmsg_bus.c
>  create mode 100644 drivers/vhost/vhost_cfs.c
>  create mode 100644 drivers/virtio/virtio_pci_epf.c
>  rename {drivers/vhost => include/linux}/vhost.h (66%)
> 
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702055026-mutt-send-email-mst%40kernel.org.
