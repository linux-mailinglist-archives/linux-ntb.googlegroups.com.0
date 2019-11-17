Return-Path: <linux-ntb+bncBCS4BDN7YUCRBL5PY7XAKGQE2ODXH4Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D45FFC41
	for <lists+linux-ntb@lfdr.de>; Mon, 18 Nov 2019 00:28:49 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id n34sf11118444qta.12
        for <lists+linux-ntb@lfdr.de>; Sun, 17 Nov 2019 15:28:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574033328; cv=pass;
        d=google.com; s=arc-20160816;
        b=sx7/kGKbgW72F0UpXlA8YltYaymKlTXKBE9IjWjFs9/fyLRv/Q8vEjEF4HW/kMav9F
         gKiblRNSWw6GS4EeenVzTdWuONC4ebjDxHf+6jSZllh8hYB2jboz1iMTL3X9TpIWonMx
         k8h6gZ4HHYBzUxd60iRB1yCA4oc00Ubn7+TlqnxdnkQI12EWQr4hXqAl5NDkOj8FkpvM
         MovZWidXwxp7tOt6J48rFPRjUBsthD4Gkij7atxA8AFbz166aXKNcbV+8HP8Zu3TRRkS
         pV3A05y12gn+x9w9YoArsJ459x/XXhmMwY1pyRz71yVttNT3Q3wJmQIY6NaZAC/Ka1td
         81/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=njphE4/h3wPEjrgjz6za2HbIPsa4BZNzUJu9v85blZs=;
        b=WEoxLpHHTzrTk2mbsH5rFY09Uary6Hl1IEw1WVM3tyTTUlJs60CVvB/YIb3j10nD3Q
         IBFH4rf1os1Fm0boHhIZoQipOP40WQnuyvY7mDYlRfarxYB3l5noDWWKES21isi+XxG+
         YsUHieX9mYlZBSVYedyDPZzUboIPRGvxxTAm/TO28RpybMnuz3Lblkk0qDTRB5+uLcko
         xGUg/plqsr9AjWVaw8yNdGC1WffzUpqShltHgUaFrB5W08W/CDRCWmmH4Kh0TQ5i/poL
         dczRYpsnuCfgrnAUQVPZq0PJeshqc0Cba599jUafbOusI+Z+PEzWhsdEGguIXqb7K9Qt
         TOYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=gYh+9VSU;
       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=njphE4/h3wPEjrgjz6za2HbIPsa4BZNzUJu9v85blZs=;
        b=Ob0vQlnRF8gdl/PQK5YuL7m2OWIIJ3g4v7aoWLSaRyvFvB5/FRXCRW4pFQsrues9rE
         dYd+puLy/bg6x/oUE76d0pUiEFo4h4HvzPBZhiL2EpMyIcy8tC4SeQdAc+ixyYl+SVG4
         j1m5fhDx9daT5CwefURsDgbOOyscHgrwJHj3+VyEwp+civf9U8eF0XgAz5vsfe9qcHAo
         hbLsSTwKkNdkUpABA/+Qz4YJdYvkmuG61sfopGzJ56FlYtZbN+z50CGNYoIsiERSTD74
         6v7IeErff8vsgBspfpjTVr1tro66qde60Z4qxiYgos1qWhLgh+U1SngNfC+PFrlKaSpT
         7YaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=njphE4/h3wPEjrgjz6za2HbIPsa4BZNzUJu9v85blZs=;
        b=Ya1fKCNApXm4KpBQvHiKCv0EFcuo6Pt6dQ0HqmSfx6h6Yow9P3+FWOhj5SdamtcrMR
         reAwdxSsBY21gctObzf0DTrz8FlBXPUB2v4iewpK0ciGRdYjNpjgb3Cl15CMkfOL/DLf
         AMRAEJPfxjCHgQITwlExUgndPYaCC8+RCa/Jh+dARQeogNZ9Jb8YJInbL0PQH3EGevIt
         J5j2HFKIx28LOpVJgplGUepMr0hWjoslP1NSHEgCEW6pc6V50E0OD3A9ylwx7A1FXyM8
         b5Vu58Pe22X2LZeNbFAiIJ/+odiudKK0dGomLTBGlr/OSLClfW+KbF+A/T/wfT8mFhMC
         bK5g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVECK58YXi4hsbodk/ZQ8bIbZN2fF63VfioSHHTppwwNMejJ4hf
	ZT63InJCTzotIO42MvTo7Ow=
X-Google-Smtp-Source: APXvYqyblchrxDLsuEJ1VXGW2/M1pd2oklkKjVk5oZ+xwQJsj6BVjhMf2PPum+LFiZHKKYTLlyMJJA==
X-Received: by 2002:a37:7705:: with SMTP id s5mr22454773qkc.145.1574033327972;
        Sun, 17 Nov 2019 15:28:47 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:13c7:: with SMTP id g7ls4218286qkl.11.gmail; Sun,
 17 Nov 2019 15:28:47 -0800 (PST)
X-Received: by 2002:ae9:e906:: with SMTP id x6mr23388443qkf.475.1574033327587;
        Sun, 17 Nov 2019 15:28:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574033327; cv=none;
        d=google.com; s=arc-20160816;
        b=no9geC7PiOKC9br53TB/OFMIUadaN/FPJjTF4K0Pwzbw+kpcmZXHwGA2vmP+DTkQrR
         IF46Q7kz6+FzSs0kSH/qSI2MzXWlIgRD7d8gIrWdH06xsCMtQY7fmbYfFDO6jtphkzXf
         hEumSraaqVOZ1qewKOCI0VkshRWPiw9BHkK/rhvGOW+Y75gWt6A5bR0IqBNQJYyaO9f1
         bsZChO6eprci64V4gdfb332hY0DSZnAfpZ95hlduI9wq7DFxM7xBXLfifdzGYdpDvORf
         ac8uaqtL4rJVHqWsLPk6mqSN/SgYPEARsgi+pP95OOyfEMKb3E2UWkZ/jsw77nM2TFFT
         ZDLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dLrDRkj2zG6C0Hi1gLXOXE5rXliBuMxaQzf1Hg9z/Qg=;
        b=SyiRyxTBw6iTZ/rfx3raVolo5VQ64FHRcwuGTpnF+p32Sci3Bn6EGNHg1gbUndhJa4
         q9FpZ7OIV/cRsbJf5GAf1xkrFSw+EO4KTHLjIkh3S2FseTXWzLOxtTIDJa8n2QJ0y0Og
         GXA3svL1yENAUXnps+ItUImouypnuFj9qPrgq3D2w+Inzq5eM+TWYCENg4Sr3vohFGzI
         whFSqj5ZF730JEB5JBNMyMhjnYPxAZ8LLBIDTBFIFMiP4iu5I+rVAHi74e0fUHt6+6b/
         iQqjNO0G3usasKWii2pTATVL0y0z2zk2n+DH4qRGRXjsmdlt/9dIPGuBwy6egI77u55m
         1mGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=gYh+9VSU;
       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id v189si930801qka.2.2019.11.17.15.28.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Nov 2019 15:28:47 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id p6so16636270iod.7
        for <linux-ntb@googlegroups.com>; Sun, 17 Nov 2019 15:28:47 -0800 (PST)
X-Received: by 2002:a02:a38f:: with SMTP id y15mr10835809jak.101.1574033326865;
 Sun, 17 Nov 2019 15:28:46 -0800 (PST)
MIME-Version: 1.0
References: <20190926112933.8922-1-kishon@ti.com> <20190926112933.8922-6-kishon@ti.com>
In-Reply-To: <20190926112933.8922-6-kishon@ti.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Sun, 17 Nov 2019 18:28:36 -0500
Message-ID: <CAPoiz9yRemT5Q4FYCgx-mmkhywG2TP_OUU_tfLGWJXfO6KRwDA@mail.gmail.com>
Subject: Re: [RFC PATCH 05/21] PCI: endpoint: Add API to get reference to EPC
 from device-tree
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
 header.b=gYh+9VSU;       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is
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

On Thu, Sep 26, 2019 at 7:31 AM 'Kishon Vijay Abraham I' via linux-ntb
<linux-ntb@googlegroups.com> wrote:
>
> Add of_pci_epc_get() and of_pci_epc_get_by_name() to get reference
> to EPC from device-tree. This is added in preparation to define
> an endpoint function from device tree.

I can't get this patch to apply cleanly to my git tree (for the
current or any of the previous kernels I tried).  Please rebase this
series when you send it out as a patch.

Thanks,
Jon


> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/pci/endpoint/pci-epc-core.c | 61 +++++++++++++++++++++++++++++
>  include/linux/pci-epc.h             |  4 +-
>  2 files changed, 64 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> index 5bc094093a47..0c2fdd39090c 100644
> --- a/drivers/pci/endpoint/pci-epc-core.c
> +++ b/drivers/pci/endpoint/pci-epc-core.c
> @@ -83,6 +83,66 @@ struct pci_epc *pci_epc_get(const char *epc_name)
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_get);
>
> +/**
> + * of_pci_epc_get() - get PCI endpoint controller from device node and index
> + * @node: device node which contains the phandle to endpoint controller
> + * @index: index of the endpoint controller in "epcs" property
> + *
> + * Returns the EPC corresponding to the _index_ entry in "epcs" property
> + * present in device node, after getting a refcount  to it or -ENODEV if
> + * there is no such EPC or -EPROBE_DEFER if there is a phandle to the phy,
> + * but the device is not yet loaded.
> + */
> +struct pci_epc *of_pci_epc_get(struct device_node *node, int index)
> +{
> +       struct device_node *epc_node;
> +       struct class_dev_iter iter;
> +       struct pci_epc *epc;
> +       struct device *dev;
> +
> +       epc_node = of_parse_phandle(node, "epcs", index);
> +       if (!epc_node)
> +               return ERR_PTR(-ENODEV);
> +
> +       class_dev_iter_init(&iter, pci_epc_class, NULL, NULL);
> +       while ((dev = class_dev_iter_next(&iter))) {
> +               epc = to_pci_epc(dev);
> +               if (epc_node != epc->dev.of_node)
> +                       continue;
> +
> +               of_node_put(epc_node);
> +               class_dev_iter_exit(&iter);
> +               get_device(&epc->dev);
> +               return epc;
> +       }
> +
> +       of_node_put(node);
> +       class_dev_iter_exit(&iter);
> +       return ERR_PTR(-EPROBE_DEFER);
> +}
> +EXPORT_SYMBOL_GPL(of_pci_epc_get);
> +
> +/**
> + * of_pci_epc_get_by_name() - get PCI endpoint controller from device node
> + *                            and string
> + * @node: device node which contains the phandle to endpoint controller
> + * @epc_name: name of endpoint controller as present in "epc-names" property
> + *
> + * Returns the EPC corresponding to the epc_name in "epc-names" property
> + * present in device node.
> + */
> +struct pci_epc *of_pci_epc_get_by_name(struct device_node *node,
> +                                      const char *epc_name)
> +{
> +       int index = 0;
> +
> +       if (epc_name)
> +               index = of_property_match_string(node, "epc-names", epc_name);
> +
> +       return of_pci_epc_get(node, index);
> +}
> +EXPORT_SYMBOL_GPL(of_pci_epc_get_by_name);
> +
>  /**
>   * pci_epc_get_first_free_bar() - helper to get first unreserved BAR
>   * @epc_features: pci_epc_features structure that holds the reserved bar bitmap
> @@ -661,6 +721,7 @@ __pci_epc_create(struct device *dev, const struct pci_epc_ops *ops,
>         device_initialize(&epc->dev);
>         epc->dev.class = pci_epc_class;
>         epc->dev.parent = dev;
> +       epc->dev.of_node = dev->of_node;
>         epc->ops = ops;
>
>         ret = dev_set_name(&epc->dev, "%s", dev_name(dev));
> diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> index 0fff52675a6b..ef6531af6ed2 100644
> --- a/include/linux/pci-epc.h
> +++ b/include/linux/pci-epc.h
> @@ -202,7 +202,9 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
>                                         *epc_features);
>  struct pci_epc *pci_epc_get(const char *epc_name);
>  void pci_epc_put(struct pci_epc *epc);
> -
> +struct pci_epc *of_pci_epc_get(struct device_node *node, int index);
> +struct pci_epc *of_pci_epc_get_by_name(struct device_node *node,
> +                                      const char *epc_name);
>  int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_addr, size_t size,
>                        size_t page_size);
>  void pci_epc_mem_exit(struct pci_epc *epc);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-6-kishon%40ti.com.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9yRemT5Q4FYCgx-mmkhywG2TP_OUU_tfLGWJXfO6KRwDA%40mail.gmail.com.
