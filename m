Return-Path: <linux-ntb+bncBDXJDZXNUMORBKWMTSAAMGQECRX4BGQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D4F2FBF10
	for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 19:34:19 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id l21sf8671848otj.12
        for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 10:34:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611081258; cv=pass;
        d=google.com; s=arc-20160816;
        b=NX8hAqI1onQgHrW/fimRIxyoIa8WIKammsOVDMpvzFhW24yGNxou6B66MU7Sei8V/L
         WveLd/mqbT/+QTfcmtG2STuuUeql25E4CPJ1HNUJ77lq8I/6gZ1aZl2ivlXvGA1xWXNn
         eCsRHOfAN1CoV4w215ZtGHRCtRyNGJ8KfDld9YaN4aaDD9B0HyJgpdf4+JZauVjes9rp
         qKn7Ry6XrmKPX1q/oHDsRydizj/cu/9+J1oR47LVl0J/mBlKSmtv7yLGP/v/adwhqJ5b
         gP9ADf9MQl8qpfLRKc2tgw1VKiQe28T44k1DZD7RTIFLWJhK/mnyEASRdDMyYW+dBj5o
         Cx6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uST2aoxFz/3g4DcF3mDyUcneNq1v9MZbwN4h8FUqO4Y=;
        b=0uyT7eRblFxfh+rUDPoGEtOZs1WJyuukmxrVE25d1xI/TcCQnMIpn2w0PMH+d5BRY0
         fQh8M6d0T6NDElsYeHHa0IGwVmR/qjN0raTm3C7zaCUmwutS/nYp3FHMBOO7bia69e4/
         mVa+GfW9irsX+fuJwEkwjajsdvLF2AVTGwGQ9rfsm3qb8FftvphZNqQi7Xjc6gANVkXh
         KlyjHgp1pkinkuPCZCxdsa+dh93vKtle8mJY/SvNb06/EF/PxKstE5AKfPegTtQr6gKK
         Hq30SEfFMMsns5Y1pyHF0XTycLdDtqpKaMfd3pWK/6JqQHsTZ1o3oEPOTtOmIrzp7MDg
         AGvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ab2U1vrn;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uST2aoxFz/3g4DcF3mDyUcneNq1v9MZbwN4h8FUqO4Y=;
        b=Lrbit/itOTA72zdfLPg9vLeytKYEQMwZRxKKmtLSOr3bnZ0ltvqOihmY6M4P5Oi5Av
         tm6x/gEOdULF8pWy4fUdHzxYNYMyVK8wmV5S6SK91RYW3bpw7cAyuVXU3ISKi/GqZHiY
         l4ZPXc1UFrBKVocRDVOg4ZxjE6XVt2oMXtUrbAQ5JS7UWh5GgWQSrc3a9hdHjxoNtgP/
         pSzd/9T+qYChPtvC8iL/pEeMXJJ8+AfwnjMrtQD44DB+CAUrkRdPmHUoJ8YTRH0pq16a
         sA/S5YweuPLfcG8T+x3PKegrUK+twU+3c6hG1K4KbWme3spkjPUIoG2mux1gcnKUsx1x
         enSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uST2aoxFz/3g4DcF3mDyUcneNq1v9MZbwN4h8FUqO4Y=;
        b=iGzaCTL9PAnzJHrmi0xTLJWvlcnZHN+/hvUc6Mjno/tOcOHK6yoQmklq9+k8TEQrVb
         XbJsUnen9hBrzacfGPuk55sSVQ503ieMn8rRwIz+G2wzMw1KdQxJI0mdMM0uwBUAq/WE
         YlQYUEn8WBO9swHNkW3sUWq5Nc2tFdAtx5x5Wg2lSW5gSjG2DxYqkGkW6L4ToUN3wDW0
         buOEAya+rXtE7f+248uZHMe7ezcWlcUtsDA1rg8kBU5pbJIht35h82ATOKKuZGWq/mzZ
         N7sofYzQz4/Juorae6nPW/og2VQCZa7nfDpW5VTQ/1MGDsiH7OaAfD+iT7pVJDJh7DHO
         XplA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530R+FFJyK6YsJMG8g7HEOiiPdNOWLkhDnE8BqtswXkg7fXJdsli
	8duIT67qa0FyRoz+6Qc3WZ8=
X-Google-Smtp-Source: ABdhPJwMl9vuBzqJ70A2vesPPZtyNyQDIvUTvrYxZ4oRaKVfFq052XjpbpE1QQTmJX0lDQ/6f9+zlQ==
X-Received: by 2002:a05:6830:1d52:: with SMTP id p18mr4527208oth.27.1611081258420;
        Tue, 19 Jan 2021 10:34:18 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:9c05:: with SMTP id y5ls1464671ooj.0.gmail; Tue, 19 Jan
 2021 10:34:18 -0800 (PST)
X-Received: by 2002:a4a:c503:: with SMTP id i3mr3765021ooq.6.1611081257931;
        Tue, 19 Jan 2021 10:34:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611081257; cv=none;
        d=google.com; s=arc-20160816;
        b=HXHyqAriusfB1KxYlv1DdLVVYH3IX1gYp4didatHCPLACPBg38yCZCDd6oV1OkAjHc
         q/cDM+l1uAIVFE7QWix7Kajt6zzzLcN6ImhVy6HLNpg+Z5pI73LUXjrv0wIDsW+7j7CE
         CZk/klZEl9nMNK6oCWTb3KEz91XYLhwvpqEJPDkZmGjc2RgMukfMJiWpWGe5cRUhHfGO
         AXzCyI5++btuFLcXBRnW+PjPMeOA2LkRtNebmuj56Xa3XWrV5WW0Q8ylbz4K5xXkjewh
         LR23a6vr1upesbKYgDJ92ierw8S9Mm45aTYmcwBFYBydLIg7XNvHlp+BueLiDWfj42j+
         TaKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=dVYjnXPZNvn30Ia+w5sx8boYqxSdkzPOCKQSL2H4Ayo=;
        b=jymT96kIDjaR00NaHZ7IJJnB4sdwqAERMDCc5ZUXwrjLsQL0w+Q1Tr/lrmyUgFSFxB
         ygqkcDsw+q5qOEje9o3QFjCAXjdx5KEGy5pp+r01cpcnNBSCnY8zhi6PYYnojrFDzIAT
         dsiYNZ2YFT6W7emYapchduM0zWqoo5ibBIUzNnoYElragBWknB4VeQrejb113Cj9RuK8
         gKU2tcBH5ice2a/D+boxOgmQK0Ja+A70t+DJQfpcvVDlLPxDlOEyYgExln3cwa/lkvaP
         oI2qAKRvfsBEmFxVFUffmlDodbCjT3dZfLSZpM0HWzwrZj7Q8VRJy9LvrDhwwwZ0OC+7
         I01g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ab2U1vrn;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si220718oib.1.2021.01.19.10.34.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 10:34:17 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CF15B22CAD;
	Tue, 19 Jan 2021 18:34:16 +0000 (UTC)
Date: Tue, 19 Jan 2021 12:34:15 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Arnd Bergmann <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: Re: [PATCH v9 17/17] Documentation: PCI: Add userguide for PCI
 endpoint NTB function
Message-ID: <20210119181852.GA2495234@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210104152909.22038-18-kishon@ti.com>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ab2U1vrn;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jan 04, 2021 at 08:59:09PM +0530, Kishon Vijay Abraham I wrote:
> Add documentation to help users use pci-epf-ntb function driver and
> existing host side NTB infrastructure for NTB functionality.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
> ---
>  Documentation/PCI/endpoint/index.rst         |   1 +
>  Documentation/PCI/endpoint/pci-ntb-howto.rst | 160 +++++++++++++++++++
>  2 files changed, 161 insertions(+)
>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst
> 
> diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
> index 9cb6e5f3c4d5..38ea1f604b6d 100644
> --- a/Documentation/PCI/endpoint/index.rst
> +++ b/Documentation/PCI/endpoint/index.rst
> @@ -12,6 +12,7 @@ PCI Endpoint Framework
>     pci-test-function
>     pci-test-howto
>     pci-ntb-function
> +   pci-ntb-howto
>  
>     function/binding/pci-test
>     function/binding/pci-ntb
> diff --git a/Documentation/PCI/endpoint/pci-ntb-howto.rst b/Documentation/PCI/endpoint/pci-ntb-howto.rst
> new file mode 100644
> index 000000000000..b6e1073c9a39
> --- /dev/null
> +++ b/Documentation/PCI/endpoint/pci-ntb-howto.rst
> @@ -0,0 +1,160 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +===================================================================
> +PCI Non-Transparent Bridge (NTB) Endpoint Function (EPF) User Guide
> +===================================================================
> +
> +:Author: Kishon Vijay Abraham I <kishon@ti.com>
> +
> +This document is a guide to help users use pci-epf-ntb function driver
> +and ntb_hw_epf host driver for NTB functionality. The list of steps to
> +be followed in the host side and EP side is given below. For the hardware
> +configuration and internals of NTB using configurable endpoints see
> +Documentation/PCI/endpoint/pci-ntb-function.rst
> +
> +Endpoint Device
> +===============
> +
> +Endpoint Controller Devices
> +---------------------------
> +
> +For implementing NTB functionality at least two endpoint controller devices
> +are required.
> +To find the list of endpoint controller devices in the system::

Is the above one paragraph or two?  Reflow or add blank line as
appropriate.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210119181852.GA2495234%40bjorn-Precision-5520.
