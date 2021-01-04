Return-Path: <linux-ntb+bncBDGNZTVZVAFRBA7CZT7QKGQEE2AJBRA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AB32E982A
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:15:17 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id 18sf22017574pgf.19
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:15:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609773316; cv=pass;
        d=google.com; s=arc-20160816;
        b=sgJDddCnqfAzJttonaToCDecd00YAnubNSAzOnFJEBbiJNmufeYUzv61c1CN1TpuFG
         UKPl7E406EJ3OrrZTQ2MXoJCdnaZU1F8RhchSEIzf2aCGsGFlUz0aWP9pwsVP7fRAcTV
         jYofSXcwL3Juzj2+ir/VG5rvLJqwZai1RX9qoHOaBXhTq2Bhu8dY1mU8wNGpZcFnZDan
         0KUJ57s1CUhxm35tDUcMXwAoKKkmTKEAAcTLWINUHcuIX9wscWyT9Vrw8Rfd5Px/2m1Y
         BQZfpayiNM3uQbIyqmVkHx4LCAnAzJVL45nL3zeBmAaAWEuLKPDpOQ9ACrgmCh2eSToQ
         VrEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=BB0uVzxTbCb271JYQBt+NneEJLEiBYYkJAQ0u2xRTRU=;
        b=gMXl2bMLoHmYKT3u+yADENo0V3ebsXbfc1HLXoDjcA4F3xeRp8G1MEgOuTWngyq2Xv
         xOOjrREPDNPanpLw3e6os1E6JoJ2PqsBWGnbTceo2HooWtyDrOtXyR2kodTf7438phAN
         C9Uf9Pkj4IDEspw4TiZUMwtwzpSh3XI5U08hTMQFRJljrQJ5zyuqxER/Th/qX5gFTS04
         y5c79tegPrQ5CvofJ5hOUpr9OwbSmmSiiz0GufNL3tDB0Zfha8bOPQO2/RFUOLBRyDXy
         LZ0/OnNyrogjjGq4M0Vbm7qIx8HIHFFqjq9J965IVKkw+dZUSNJJrklN/OlkMccFYDK9
         TGOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KCalrsAu;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BB0uVzxTbCb271JYQBt+NneEJLEiBYYkJAQ0u2xRTRU=;
        b=ijuntCDIwARzbrTt7j8WKre2d6amZSw8AkEA+G3O1FXEc7MHeztAcgv1E2uSh5Jm+p
         arDUy+nI4SkYgKcjZBJ4KVSwSa/j38JvvaVt4lqB3E+PRrnw93jknGxhP8LfSwodzjfa
         +jSHyxtrBfhEvbYAx+eQwArtRejYDx4F9pSnHouZwve0hchqRg1KnmePwoP0Txqfm2D5
         BEemfbU7aL9sh+76Gx3Mwij0YPVwcycknLydZ4Lw6dbImSz56CTv3wT00ISlRTRA12fB
         8xCGtbCwo+AzujLXwtY/iAQ3bnWIQdNG4q3Lec0bJqnQV0qSu/Wjij5GF9rw2JimadKC
         l3zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BB0uVzxTbCb271JYQBt+NneEJLEiBYYkJAQ0u2xRTRU=;
        b=JcB9tmICrq93ee7/cExY2Zo7J8OTMcZiUGINcsrQhyC+BACF9d/JGIjo04law4nTrO
         0l5A159AfGKRM86AyUtOaU7SvEI513CRKWMOxspJC/JOirgUt5DIxnNAGXbT/8Ak7yWw
         7lqgEalRSfFq5NrG0Bs0BV1RNabyWk4WxZUATS2k2yj7tylrkf7xADGDvLlEF5SeKADa
         S2Y+o5hYNNoR/FbgK0NDDC9qtYoGtV6IwwF49YUAe940Rupi/YI7x/4O92a92mRq2Cq0
         /6aYxsoVTlbtobstt2yj+ycEWzl74z2evX2pDqZI8wKLHFTqBIlf4Xu+xC4lk2IxzEJA
         LrvA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533PWp3r+h1PGGznWlFMPSv8BSQnvgzAkYBKpwOBibSRVgb0N/W4
	6JjSuLYZruEIuN49RlgnL3c=
X-Google-Smtp-Source: ABdhPJxI5q+syE2DvuABtP0CMbaJdpsJbQZtcbkeHwiIKbxKmnIv55Bj4VAAc2YSjN1XgdpDAs2xpA==
X-Received: by 2002:a63:c908:: with SMTP id o8mr70267779pgg.124.1609773316077;
        Mon, 04 Jan 2021 07:15:16 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:4881:: with SMTP id b1ls9714283pjh.1.gmail; Mon, 04
 Jan 2021 07:15:15 -0800 (PST)
X-Received: by 2002:a17:90a:4dcd:: with SMTP id r13mr30267493pjl.74.1609773315411;
        Mon, 04 Jan 2021 07:15:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609773315; cv=none;
        d=google.com; s=arc-20160816;
        b=nnNl4suMDue4w6n6sKQBdcZX6ZFAzShzTddvikiC+Yq4LIT0R2TOWU+q1+7kCsBuyz
         slnDtU+yUGtMWpMcQk6ZVTkeGIsNqcbNsdLDHn2L8yil60li3gAYMhTIclUisFFFU1MV
         RYgowlyTXrZSbNX2xyp6PEoH8a5XQZVeXSJRIfNGDkAFjmVWKTv1VrkDevPmbd8Icnzg
         GBX3G3QluRjbflzjzxwmSl/fzLYtE0Rjlw6Thd073oud0p1jax32CxMw8AFHsbH5NBfN
         giG0cGqMLQ0d3jev/aKO1yNOlLnaHkjPvB/PSFCv5fVrcP49gn4r6/uBM2DbJs7oCdAI
         CDWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=57ORE63vwf0Jpvf+ty1gHj4IpaCqEoubJqvF2si21p0=;
        b=BN8ypAsM7AqL1JXd7DwymOw+Mw9vetj9GtGIewklOwbQsxei8R4O1y997VKDOs6Exx
         XBSaQ89w5sobkR1zmzhlAQy2ynxTRoNetdBIVFc5nI41LC+mwU5RCm6mdQhY2T+Vr0I0
         f+z2SLbiai9J+5oOpZQE+aIrAKiMBb44XW34LLXkiK65giKfcKq5L/WNcr/Ky17x5UMQ
         wnHOuQs3AWJriwA7742/21pgIA8E0Rm/APOo6xglfACA/ES6R3hW4sRm+2boYTT/tg9d
         eH987Vh2kiPcfTJxmOAgdZum7Y7WpssI/bqVb5EjbWK8XycfibRR0mxTktwnoAA6ioTO
         vEKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KCalrsAu;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b19si1746531pgh.3.2021.01.04.07.15.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:15:15 -0800 (PST)
Received-SPF: pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D840B2242A
	for <linux-ntb@googlegroups.com>; Mon,  4 Jan 2021 15:15:14 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id ga15so5105554ejb.4
        for <linux-ntb@googlegroups.com>; Mon, 04 Jan 2021 07:15:14 -0800 (PST)
X-Received: by 2002:a17:906:31cb:: with SMTP id f11mr28583308ejf.468.1609773313402;
 Mon, 04 Jan 2021 07:15:13 -0800 (PST)
MIME-Version: 1.0
References: <20201111153559.19050-1-kishon@ti.com> <20201111153559.19050-12-kishon@ti.com>
 <CAL_Jsq+iUU0aR950fvQ7+uenBT5MVbCEU9cDg+vfyO=VugpTZA@mail.gmail.com> <992b5423-89a2-a03b-539d-a9b2822f598a@ti.com>
In-Reply-To: <992b5423-89a2-a03b-539d-a9b2822f598a@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 4 Jan 2021 08:15:00 -0700
X-Gmail-Original-Message-ID: <CAL_JsqKT8WUVy4qhQkRuYLuqkQa11=7JzXcVxvNRsB0KFj+qVQ@mail.gmail.com>
Message-ID: <CAL_JsqKT8WUVy4qhQkRuYLuqkQa11=7JzXcVxvNRsB0KFj+qVQ@mail.gmail.com>
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
 header.i=@kernel.org header.s=k20201202 header.b=KCalrsAu;       spf=pass
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

On Mon, Jan 4, 2021 at 6:13 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi Rob,
>
> On 15/12/20 9:31 pm, Rob Herring wrote:
> > On Wed, Nov 11, 2020 at 9:37 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> >>
> >> Implement ->msi_map_irq() ops in order to map physical address to
> >> MSI address and return MSI data.
> >>
> >> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> >> ---
> >>  .../pci/controller/cadence/pcie-cadence-ep.c  | 53 +++++++++++++++++++
> >>  1 file changed, 53 insertions(+)
> >>
> >> diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> >> index 84cc58dc8512..1fe6b8baca97 100644
> >> --- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
> >> +++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> >> @@ -382,6 +382,57 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
> >>         return 0;
> >>  }
> >>
> >> +static int cdns_pcie_ep_map_msi_irq(struct pci_epc *epc, u8 fn,
> >> +                                   phys_addr_t addr, u8 interrupt_num,
> >> +                                   u32 entry_size, u32 *msi_data,
> >> +                                   u32 *msi_addr_offset)
> >> +{
> >> +       struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
> >> +       u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
> >> +       struct cdns_pcie *pcie = &ep->pcie;
> >> +       u64 pci_addr, pci_addr_mask = 0xff;
> >> +       u16 flags, mme, data, data_mask;
> >> +       u8 msi_count;
> >> +       int ret;
> >> +       int i;
> >> +
> >
> >
> >> +       /* Check whether the MSI feature has been enabled by the PCI host. */
> >> +       flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
> >> +       if (!(flags & PCI_MSI_FLAGS_ENABLE))
> >> +               return -EINVAL;
> >> +
> >> +       /* Get the number of enabled MSIs */
> >> +       mme = (flags & PCI_MSI_FLAGS_QSIZE) >> 4;
> >> +       msi_count = 1 << mme;
> >> +       if (!interrupt_num || interrupt_num > msi_count)
> >> +               return -EINVAL;
> >> +
> >> +       /* Compute the data value to be written. */
> >> +       data_mask = msi_count - 1;
> >> +       data = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_DATA_64);
> >> +       data = data & ~data_mask;
> >> +
> >> +       /* Get the PCI address where to write the data into. */
> >> +       pci_addr = cdns_pcie_ep_fn_readl(pcie, fn, cap + PCI_MSI_ADDRESS_HI);
> >> +       pci_addr <<= 32;
> >> +       pci_addr |= cdns_pcie_ep_fn_readl(pcie, fn, cap + PCI_MSI_ADDRESS_LO);
> >> +       pci_addr &= GENMASK_ULL(63, 2);
> >
> > Wouldn't all of the above be the same code for any endpoint driver? We
> > just need endpoint config space accessors for the same 32-bit only
> > access issues. Not asking for that in this series, but if that's the
> > direction we should go.
>
> Do you mean "endpoint" variant of pci_generic_config_read() which takes
> function number and capability offset? That could be done but we have to
> add support to traverse the linked list of capabilities though the
> capabilities are going to be at a fixed location for a given IP.

Well, the above code would call the equivalent of
pci_bus_read_config_*() functions which then calls driver specific
read/write ops like pci_generic_config_read().

Once we have common accessors, then functions to get the capability
offsets would be common too. It shouldn't matter that they happen to
be fixed, walking the linked list should work either way. Getting rid
of fixed offsets for the host side drivers is something I've been
doing too.

> Also in some cases, the writes are to a different register than the
> configuration space registers like vendor_id in Cadence EP should be
> written to Local Management register instead of the configuration space
> register.

We have the same issue on the host side as well. That just means we
need to wrap the generic ops functions.

Rob

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAL_JsqKT8WUVy4qhQkRuYLuqkQa11%3D7JzXcVxvNRsB0KFj%2BqVQ%40mail.gmail.com.
