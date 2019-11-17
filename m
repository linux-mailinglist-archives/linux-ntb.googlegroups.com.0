Return-Path: <linux-ntb+bncBCS4BDN7YUCRBF5WY7XAKGQEC74HRHY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD63FFC51
	for <lists+linux-ntb@lfdr.de>; Mon, 18 Nov 2019 00:43:21 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id c198sf3247808oig.2
        for <lists+linux-ntb@lfdr.de>; Sun, 17 Nov 2019 15:43:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574034199; cv=pass;
        d=google.com; s=arc-20160816;
        b=ukCJFmxhwQS9gb+rhy9ooSWOzP7d+m4I4XeZr9V9vlErd6m2Wkgdxzub3QoRn7WoSD
         TmY9eMIVheYqmp+6i90wfmS2N80/78o2SV1SA0d2YOUgc+ewuY7MUwLd2T/zNccxgs0B
         lOdgiEglOup3Cggw/Am/flOTMdrPnGTAvCXqN09GZPnbEUxTEvTXI7l+pl0R+C8K5iOQ
         KpLbH3Yx1Co0SLKjxEaoUgjkT1Q/8DpKqK9+8JQW38AsNZ5jZg1cjjV/3yxAXvZgkNEX
         P/V/fqaNd/5IYxszWaIE7MQxbDsFE6ygbAZ2noPuKReR+Z8k4oCmxkmpuJsw/qUVk5YJ
         Xu5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=1bxlAlA89SdgOkioz63xfli594NBYnwvTdVvrpf3mXA=;
        b=l1cB6T+B67izRCyUsnfzgzlWXzm6qDm1MuUyr+m3jmwcvV8RBowd93TWyZj1dJdzJq
         R4sFp/t0BSuteQ/Hi3cPwJDOk3xrE1FCQqyPjoCYU0Bc1tFxD1Mo7XSCt0gGp2NBzRgq
         5lgQ2SglqbBpmIs9dBIaJRsLXqvEUosXcU3lr3icvVGVwks9JdrdDkXC9SQDeUDUgRAE
         OrLVj0MdRdORtw6sSmPxTgpZo6JNqiH5coNamG6mxWTQBorM/Si24DW1b6XbRM0wAZAy
         nRiBybDM1MLHlHcY2rLMKtbwdYFe7tjc1lNcTGF9Rl9qcHcmUTtYU5P9p21BJxGjxN0v
         ruAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="Az+/I7lH";
       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1bxlAlA89SdgOkioz63xfli594NBYnwvTdVvrpf3mXA=;
        b=sLUlsFe0jO1ac/9UANCFgBWdUyabo5iWvJ15Tv5sPZyOyaY9xTTLWQp3uBK1ZjNSAn
         GNzKJgGiDnoR9ZRw9MeD08H3lmHSM93tTNnCcXVKTazu+NLM+uBloyIc+s465hOrRFtg
         pA7u5Hne9+kWTdVkfjUI6kp+VQwub+crFxg4JGc0PbgE+9G06/ScqLz0W/3n9lnNsKgG
         klp9SS5r5zrZITqC1c87Rb52lBt7v5r2sRkxZ0CL+NKuMCjizJlAbCsDhve3mC82Spib
         xVU4hwnFmHzdgAfwBTdycXBJ4y6j7uI0UC8xpwt0KyRChucX54GQBqlK4RF2/JRymi6Y
         Frgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1bxlAlA89SdgOkioz63xfli594NBYnwvTdVvrpf3mXA=;
        b=PjCdjUGH94o36jEnHoiPruhVjjPfrFk/avThwXSby+dQhPflSGYb/oZOx9/rdSBEBj
         BPMMH+NnqR6/Z10JWR61u0GgkKREmgU+9r1Onojdegh/zvIZhd4roUwcvrdagySY9Ar1
         9Zn1Txh7EcjAtX4KRCJFOHgOQ5qUDhH3oNrz2DRZEq/SAe4l5phv42BLxE/Vsi0RX1wO
         yoDUkIRaWaqjfUoXAUE4vArKyNUNBEyX11iyArp2+r//HBRW5sno0mz43pbPd+sw7qHi
         sUPWNsVAj8KPyzeW+nYnZHQ6FB83K8iqB9yyRpKPsqFVPwszkZzwlhr9VgYt4iCk6P9e
         20Cw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWiYp45CV1WCKzlD8yApgS5KSaxo9Huzs98VeqeKhYnu1PpnWol
	N6owaaEgNQO3q3Luk2JB9HY=
X-Google-Smtp-Source: APXvYqw7JbA/Z5xl2T+wrrQwahKoFA1l3c4EusqwfrTqM6FrajwTVxmfBUdNLQOJi4QBoVGQVsEtNw==
X-Received: by 2002:aca:4d05:: with SMTP id a5mr18108857oib.170.1574034199604;
        Sun, 17 Nov 2019 15:43:19 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:7e8f:: with SMTP id m15ls236863otp.13.gmail; Sun, 17 Nov
 2019 15:43:19 -0800 (PST)
X-Received: by 2002:a9d:7094:: with SMTP id l20mr20247886otj.275.1574034199227;
        Sun, 17 Nov 2019 15:43:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574034199; cv=none;
        d=google.com; s=arc-20160816;
        b=By5LobIJTq/SbN2fkCdul2Xg7na7sHt8XhaQATWgrxer3IVNWaxQUWKx1mUI4jvt/Y
         QB7SQL56acRmlk/i0Mpqw+5RadLB9RF8l4F/hy+HP1kkMsWe1Sxzdo/qJsvdwKQy1m8U
         GMQncIGs9tdhcZp2vDAFLXlivTItW2au3prOFrdETwVrLaNlZ3QNHDnp0wXItf5Zfr8o
         h4peYExn7ZX50F/tY4MYkK5kLrA2J/NOufvHx93Dsw/qKoo2LH+WIP6VLke2WK/lznU6
         nFOf1f9L6Xc6wvHfkbNqVCMsxhz/NlvIHaW5EGfMaL9sNA+th9aOUY4IWTFLtz1NeSeK
         NvKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gO7JzUs1xTIM39SPuA1vE59ZvFKWnOGozjWoKCw6sXM=;
        b=B5S/aNuhxBDdnDMKC2fjWKkbKmsORhAe6Xq8pYtz7JLSXUoPl4VYPpfuD8EbsZ/QZW
         GO6XHFB6xQBMEVNs1c2tF8Dfy1rAm/t99YhRDQ6bwiFHDn8/h53lNra833+a+BAKwXjs
         LlxxWKOy9L4TgMyy6oEYmge8+Z32ZGOr5ddfeZ1wOk/MAOtPubDpPsO9w6AcHH+5i5Db
         D1mbxXqPwyXWy954UH9KGH6DcZlpvFV8xRyYLbjwzU3wezd+1p59ktgqlVwd/yw6LY8p
         yYQaukhxiRnj6Voi/pvTd9iXJv2kxITiHgcFYHp22cG8MBoHU6xJ3L1gQ7dhWCvgZXU1
         Jl8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="Az+/I7lH";
       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id x65si781911oig.5.2019.11.17.15.43.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Nov 2019 15:43:19 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id i13so16686773ioj.5
        for <linux-ntb@googlegroups.com>; Sun, 17 Nov 2019 15:43:19 -0800 (PST)
X-Received: by 2002:a5d:938d:: with SMTP id c13mr5053836iol.159.1574034198746;
 Sun, 17 Nov 2019 15:43:18 -0800 (PST)
MIME-Version: 1.0
References: <20190926112933.8922-1-kishon@ti.com>
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Sun, 17 Nov 2019 18:43:08 -0500
Message-ID: <CAPoiz9x1LsXEeK2n98+4Rm9oTCiowrMUO5d6PPtc4SQG3mP9uA@mail.gmail.com>
Subject: Re: [RFC PATCH 00/21] Implement NTB Controller using multiple PCI
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Rob Herring <robh+dt@kernel.org>, Dave Jiang <dave.jiang@intel.com>, 
	Allen Hubbe <allenbh@gmail.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, linux-pci@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org, 
	linux-ntb <linux-ntb@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b="Az+/I7lH";       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

On Thu, Sep 26, 2019 at 7:30 AM 'Kishon Vijay Abraham I' via linux-ntb
<linux-ntb@googlegroups.com> wrote:
>
> This series is sent as RFC since this series is dependent on
> [1] (cannot be merged before that series) and to get early review
> comments.
>
> I'll also split this series into smaller chunk when I post the
> next revision.
>
> This series is about implementing SW defined NTB using
> multiple endpoint instances. This series has been tested using
> 2 endpoint instances in J7 connected to two DRA7 boards.
>
> This was presented in Linux Plumbers Conference. The presentation
> can be found @ [2]
>
> This series:
>   *) Add support to define endpoint function using device tree
>   *) Add a specification for implementing NTB controller using
>      multiple endpoint instances.
>   *) Add a NTB endpoint function driver and a NTB host side PCI
>      driver that follows the specification.
>   *) Add support in PCIe endpoint core to support secondary
>      interface.
>   *) Add a device tree overlay file to configure J7 as NTB
>
> The test setup is something like below
>    +-------------+                                   +-------------+
>    |             |                                   |             |
>    |    DRA72    |                                   |    DRA76    |
>    |             |                                   |             |
>    +------^------+                                   +------^------+
>           |                                                 |
>           |                                                 |
> +---------|-------------------------------------------------|---------+
> |  +------v------+                                   +------v------+  |
> |  |             |                                   |             |  |
> |  |     EP      |                                   |     EP      |  |
> |  | CONTROLLER1 |                                   | CONTROLLER2 |  |
> |  |             <----------------------------------->             |  |
> |  |             |                                   |             |  |
> |  |             |                                   |             |  |
> |  |             |                 J7                |             |  |
> |  |             |  (Configured using NTB Function)  |             |  |
> |  +-------------+                                   +-------------+  |
> +---------------------------------------------------------------------+
>
> Here DRA72 and DRA76 could be replaced with *any* PCI host.
>
> EP side (J7):
> =============
>
> In the kernel:
>         cd /sys/kernel/config/pci_ep/
>         echo 1 > controllers/d800000.pcie-ep/start
>         echo 1 > controllers/d000000.pcie-ep/start
>
> RC side (DRA7):
> ===============
>         echo 0000:01:00.0 > /sys/bus/pci/devices/0000\:01\:00.0/driver/unbind
>         echo 0000:01:00.0 > /sys/bus/pci/drivers/ntb_hw_epf/bind
>         modprobe ntb_transport
>         modprobe ntb_netdev
>
> On each of the hosts Ethernet Interface will be created.
>
> Provide an IP address to each of the hosts:
> HOST1 (dra72):
> ifconfig eth2 192.168.1.2 up
>
> HOST2 (dra76):
> ifconfig eth2 192.168.1.1 up
>
> Once this is done standard network utilities like ping or iperf can be
> used.
>
> root@dra7xx-evm:~# iperf -c 192.168.1.2
> ------------------------------------------------------------
> Client connecting to 192.168.1.2, TCP port 5001
> TCP window size: 2.50 MByte (default)
> ------------------------------------------------------------
> [  3] local 192.168.1.1 port 60814 connected with 192.168.1.2 port 5001
> [ ID] Interval       Transfer     Bandwidth
> [  3]  0.0-10.0 sec   705 MBytes   591 Mbits/sec
>
> [1] -> http://lore.kernel.org/r/20190604131516.13596-1-kishon@ti.com
> [2] -> https://www.linuxplumbersconf.org/event/4/contributions/395/attachments/284/481/Implementing_NTB_Controller_Using_PCIe_Endpoint_-_final.pdf


I had a few nits, but I think this series looks good enough to be sent
out for inclusion.

Thanks,
Jon

> Kishon Vijay Abraham I (21):
>   dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF Bus
>   dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF Device
>   dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF NTB Device
>   Documentation: PCI: Add specification for the *PCI NTB* function
>     device
>   PCI: endpoint: Add API to get reference to EPC from device-tree
>   PCI: endpoint: Add API to create EPF device from device tree
>   PCI: endpoint: Add "pci-epf-bus" driver
>   PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit
>     BAR
>   PCI: endpoint: Add helper API to get the 'next' unreserved BAR
>   PCI: endpoint: Make pci_epf_driver ops optional
>   PCI: endpoint: Add helper API to populate header with values from DT
>   PCI: endpoint: Add support to associate secondary EPC with EPF
>   PCI: endpoint: Add pci_epc_ops to map MSI irq
>   PCI: cadence: Implement ->msi_map_irq() ops
>   PCI: endpoint: Remove unused pci_epf_match_device()
>   PCI: endpoint: Fix missing mutex_unlock in error case
>   PCI: endpoint: *_free_bar() to return error codes on failure
>   PCI: endpoint: Add EP function driver to provide NTB functionality
>   PCI: Add TI J721E device to pci ids
>   NTB: Add support for EPF PCI-Express Non-Transparent Bridge
>   NTB: tool: Enable the NTB/PCIe link on the local or remote side of
>     bridge
>
>  Documentation/PCI/endpoint/pci-test-ntb.txt   |  315 +++++
>  .../bindings/pci/endpoint/pci-epf-bus.txt     |   27 +
>  .../bindings/pci/endpoint/pci-epf-ntb.txt     |   31 +
>  .../bindings/pci/endpoint/pci-epf.txt         |   28 +
>  drivers/ntb/hw/Kconfig                        |    1 +
>  drivers/ntb/hw/Makefile                       |    1 +
>  drivers/ntb/hw/epf/Kconfig                    |    5 +
>  drivers/ntb/hw/epf/Makefile                   |    1 +
>  drivers/ntb/hw/epf/ntb_hw_epf.c               |  648 ++++++++++
>  drivers/ntb/test/ntb_tool.c                   |    1 +
>  drivers/pci/controller/pcie-cadence-ep.c      |   59 +
>  drivers/pci/endpoint/Makefile                 |    3 +-
>  drivers/pci/endpoint/functions/Kconfig        |   12 +
>  drivers/pci/endpoint/functions/Makefile       |    1 +
>  drivers/pci/endpoint/functions/pci-epf-ntb.c  | 1143 +++++++++++++++++
>  drivers/pci/endpoint/functions/pci-epf-test.c |   12 +-
>  drivers/pci/endpoint/pci-ep-cfs.c             |    6 +-
>  drivers/pci/endpoint/pci-epc-core.c           |  221 +++-
>  drivers/pci/endpoint/pci-epf-bus.c            |   54 +
>  drivers/pci/endpoint/pci-epf-core.c           |  133 +-
>  include/linux/pci-epc.h                       |   42 +-
>  include/linux/pci-epf.h                       |   35 +-
>  include/linux/pci_ids.h                       |    1 +
>  23 files changed, 2715 insertions(+), 65 deletions(-)
>  create mode 100644 Documentation/PCI/endpoint/pci-test-ntb.txt
>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.txt
>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.txt
>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt
>  create mode 100644 drivers/ntb/hw/epf/Kconfig
>  create mode 100644 drivers/ntb/hw/epf/Makefile
>  create mode 100644 drivers/ntb/hw/epf/ntb_hw_epf.c
>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-ntb.c
>  create mode 100644 drivers/pci/endpoint/pci-epf-bus.c
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-1-kishon%40ti.com.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9x1LsXEeK2n98%2B4Rm9oTCiowrMUO5d6PPtc4SQG3mP9uA%40mail.gmail.com.
