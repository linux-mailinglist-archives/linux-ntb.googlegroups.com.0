Return-Path: <linux-ntb+bncBDGNZTVZVAFRBZF34P7AKGQEHHTKGJI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C292DB0B8
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Dec 2020 17:01:41 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id g5sf15280417qke.22
        for <lists+linux-ntb@lfdr.de>; Tue, 15 Dec 2020 08:01:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608048100; cv=pass;
        d=google.com; s=arc-20160816;
        b=cznYaVkpuApUSO1ERVwdbPLPZqILxnGWQVXksLWUj+ad4GFg8PLm0YrdFzOEA0ivCB
         szI/tyMBXR5kV5qwAEmlhGD9i+RACdvnf4ZdpdVGiDLRlDOpKxOvj5bNdleMcFwK8xjC
         P1vXxxR1k9z2ZTt2UkyZrzNEtk+Din+747RWFJSDbXB9voPlQdS1ts8yqeTx9JTk+5NY
         huWyEvXGmk1d4OfeDrxXex+9p946IEaJxbOBwLmfDBc5yi1iZuyHsx/Mxwk87PbcoYhz
         l4K5KWGary+2J0+G6o6Ucb5xVKQf4SGZ4xLsApVXLBdxHqO27LqVYMaRvH/vCdMGLTRf
         6BvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9G0utiGT01z5SdLjxuiiWC2d+Ns7gNxsYihV42+Xaec=;
        b=PSFJtmJAtgviJLkMS6T0VQ+y1TPP5A6/9VoE9/yjhvdz7PZ9iNVoJhsQq2Xa+6z7Wt
         vBmQL435fDwtz4fnoJR9gLX6HeTD4u5BNUj0kk3IEUqLjV4aRSbgfI2a0eHmhuqTPRRj
         6hIEAaRddddDuF53LzV8zNiQNmnwdEtPh/GSlPLWru8KsBDFYF9HHBUWxfZOJs4PXWMQ
         TfdNbyr7TPvtXEECGxanMJ7QLqxqSpJ7uRcocv1Gmp0FP5ZqpMU+m/tMpR0efcwnTYvS
         DPFdBR5w2lkj/TnM8qPZEgERHfq+stkmTW+Ntrq5f9Ixr9UZJPxbUuV7fqgMoHESTAte
         OtEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TSkGPz9H;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9G0utiGT01z5SdLjxuiiWC2d+Ns7gNxsYihV42+Xaec=;
        b=M/u7td9ORnVLsknB/BSZ9i64AiK7NCx8LquOBfQafBnA2sGsUs4cfDJUEM9Ex6gC6j
         LrM4s0ov40Wn29HWjIYA8KhZsxyk22N7zRkAw97mHUdq8ikofC2tzAbB/Pj5yO0RzknF
         UEhyTY86Ih9b2zAQx6OTuBXH4Kw8nnWHlSXouSE48NX5AAsVKIg+bmvKaeTcjqVS8zet
         G/VVJctE5JUkQOOnd0gBJBmHfdT231v76Y259u0QMcozdRMOQ+N4g5sf/DsHHAQbfoDc
         PfUs4g9FqU1Q7o6IK13fVXsveJFGiDU6TSweQUQa+Dfne21ACQsDcmYn3xJREhgXFWvX
         nWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9G0utiGT01z5SdLjxuiiWC2d+Ns7gNxsYihV42+Xaec=;
        b=DWDx9e7vvQOlQA/1RPzME6H9+3oyF1HfzW0pLKno08/it3EpjcHz0hzarhQGE2cPpD
         VfhDNQgJaOerQGI6nSSONl+ViDYdf//escnXvYMzxM5TkEc/pAL7G1ipuZiImN4RPIYY
         9iCnnJMZLwGfVce2nuT2aOIXBZaQIT1gXnZS4mYrK8QfQ0NzAf5oEhVCXT7abrIB07zF
         ysnhs+0EnGfIcpWIN/nwS4SiTZD2aazm2EhXmvD8nHtDb5XI9kP15D+ZeqHGYcJ734fJ
         pjbRviQIKFayhrDS90DKWq0pdUCB+5aHvHZm72N045oaE128IeLa4b9YYijZx10B5+mq
         vkrg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5337StXfBuL6/lxt4Q1J4ArrVxfaGLtZgCBhFN8tP3mX2aIrYrWc
	WkEPF/hkVbn0SQE1yRS+i1I=
X-Google-Smtp-Source: ABdhPJxByUHJBEiITXMuqAkBqyj4czUKSunG/nA1BpPHvUh06w1QanmNP9pK4fH9W4spGavFokaf3w==
X-Received: by 2002:a37:a58e:: with SMTP id o136mr40130852qke.437.1608048100659;
        Tue, 15 Dec 2020 08:01:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ad4:4434:: with SMTP id e20ls4806609qvt.3.gmail; Tue, 15 Dec
 2020 08:01:40 -0800 (PST)
X-Received: by 2002:a0c:a544:: with SMTP id y62mr39480005qvy.11.1608048099968;
        Tue, 15 Dec 2020 08:01:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608048099; cv=none;
        d=google.com; s=arc-20160816;
        b=oqIvVWaLoP88sQSRdASWx+C7fnX0hBv2nz91i8988AKD5zPskNDZfkRA0TgcpSPSY+
         CjwFOri05R1muMDlprb5P91gYFwC1MJhoRm0zCscFj48Dg6lI+Qc/kp8W4if+hfRr4Vu
         JwUpEr/OacqucYdn/aRdYkaI3zoTVlL2rgPVY7+AgW+sNr5C+8SHVZ8dT0lcJR2uYcf4
         c19Z1ch8vI16ZU3ELynBJhJH0G2WPQBIUu9s1+RedEOEJnGHA7gGx9ZZGiJbdXz+JamQ
         0Ehu2Bt1ImVcqnDw3mER9VmvGQmqkAfP22OjdILQMf3PiD+aW0nut/lrzN3FTciADkB+
         IWDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CbFieijOVVzhS/wkYRlrvWPH3BZ8ZLQZBDaNZNGRQqM=;
        b=oP5Z6AYOzaX6PkhTNlJU8lYgsC+coWAMyugWS3vq+wVi0SLKJTzJvFLU07sW92br6v
         RZNpyHNV6o7YzrocVDRta1K52nadAz2fTk0rpsgrxdWcGvSuM4G2idx7VOZ7Bovd7Usn
         y4WXGn28agLcYHBsKxzimKak+ewa5VoJFS/rALPMol0J3fkfHq6AU+V9stoEaN4II/ig
         hCpc4N0LkylvFg9Seu8qQdfVxms4C/D3aAr/jzdsjW+muL2kL5Mc92G5IEoUsT58iLCd
         DgXSbVHQe4Z/ax3cu4h1q5++VwsCQj/OlKDCnaaYMOp8JqpGA/zsxrNWtocT/gXT1l2+
         7ymg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TSkGPz9H;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n20si1044439qta.1.2020.12.15.08.01.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 08:01:39 -0800 (PST)
Received-SPF: pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a17:906:d784:: with SMTP id pj4mr26750000ejb.360.1608048097128;
 Tue, 15 Dec 2020 08:01:37 -0800 (PST)
MIME-Version: 1.0
References: <20201111153559.19050-1-kishon@ti.com> <20201111153559.19050-12-kishon@ti.com>
In-Reply-To: <20201111153559.19050-12-kishon@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 15 Dec 2020 10:01:25 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+iUU0aR950fvQ7+uenBT5MVbCEU9cDg+vfyO=VugpTZA@mail.gmail.com>
Message-ID: <CAL_Jsq+iUU0aR950fvQ7+uenBT5MVbCEU9cDg+vfyO=VugpTZA@mail.gmail.com>
Subject: Re: [PATCH v8 11/18] PCI: cadence: Implement ->msi_map_irq() ops
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>, 
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	Tom Joseph <tjoseph@cadence.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	PCI <linux-pci@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-ntb@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TSkGPz9H;       spf=pass
 (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=robh@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Nov 11, 2020 at 9:37 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Implement ->msi_map_irq() ops in order to map physical address to
> MSI address and return MSI data.
>
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../pci/controller/cadence/pcie-cadence-ep.c  | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>
> diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> index 84cc58dc8512..1fe6b8baca97 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
> +++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> @@ -382,6 +382,57 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
>         return 0;
>  }
>
> +static int cdns_pcie_ep_map_msi_irq(struct pci_epc *epc, u8 fn,
> +                                   phys_addr_t addr, u8 interrupt_num,
> +                                   u32 entry_size, u32 *msi_data,
> +                                   u32 *msi_addr_offset)
> +{
> +       struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
> +       u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
> +       struct cdns_pcie *pcie = &ep->pcie;
> +       u64 pci_addr, pci_addr_mask = 0xff;
> +       u16 flags, mme, data, data_mask;
> +       u8 msi_count;
> +       int ret;
> +       int i;
> +


> +       /* Check whether the MSI feature has been enabled by the PCI host. */
> +       flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
> +       if (!(flags & PCI_MSI_FLAGS_ENABLE))
> +               return -EINVAL;
> +
> +       /* Get the number of enabled MSIs */
> +       mme = (flags & PCI_MSI_FLAGS_QSIZE) >> 4;
> +       msi_count = 1 << mme;
> +       if (!interrupt_num || interrupt_num > msi_count)
> +               return -EINVAL;
> +
> +       /* Compute the data value to be written. */
> +       data_mask = msi_count - 1;
> +       data = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_DATA_64);
> +       data = data & ~data_mask;
> +
> +       /* Get the PCI address where to write the data into. */
> +       pci_addr = cdns_pcie_ep_fn_readl(pcie, fn, cap + PCI_MSI_ADDRESS_HI);
> +       pci_addr <<= 32;
> +       pci_addr |= cdns_pcie_ep_fn_readl(pcie, fn, cap + PCI_MSI_ADDRESS_LO);
> +       pci_addr &= GENMASK_ULL(63, 2);

Wouldn't all of the above be the same code for any endpoint driver? We
just need endpoint config space accessors for the same 32-bit only
access issues. Not asking for that in this series, but if that's the
direction we should go.

> +
> +       for (i = 0; i < interrupt_num; i++) {
> +               ret = cdns_pcie_ep_map_addr(epc, fn, addr,
> +                                           pci_addr & ~pci_addr_mask,
> +                                           entry_size);
> +               if (ret)
> +                       return ret;
> +               addr = addr + entry_size;
> +       }
> +
> +       *msi_data = data;
> +       *msi_addr_offset = pci_addr & pci_addr_mask;
> +
> +       return 0;
> +}
> +
>  static int cdns_pcie_ep_send_msix_irq(struct cdns_pcie_ep *ep, u8 fn,
>                                       u16 interrupt_num)
>  {
> @@ -481,6 +532,7 @@ static const struct pci_epc_features cdns_pcie_epc_features = {
>         .linkup_notifier = false,
>         .msi_capable = true,
>         .msix_capable = true,
> +       .align = 256,
>  };
>
>  static const struct pci_epc_features*
> @@ -500,6 +552,7 @@ static const struct pci_epc_ops cdns_pcie_epc_ops = {
>         .set_msix       = cdns_pcie_ep_set_msix,
>         .get_msix       = cdns_pcie_ep_get_msix,
>         .raise_irq      = cdns_pcie_ep_raise_irq,
> +       .map_msi_irq    = cdns_pcie_ep_map_msi_irq,
>         .start          = cdns_pcie_ep_start,
>         .get_features   = cdns_pcie_ep_get_features,
>  };
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAL_Jsq%2BiUU0aR950fvQ7%2BuenBT5MVbCEU9cDg%2BvfyO%3DVugpTZA%40mail.gmail.com.
