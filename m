Return-Path: <linux-ntb+bncBCOOP4VF5IDRBZVIZT7QKGQERLCFZ4I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B00F2E95A2
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 14:13:13 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 67sf20939056otg.15
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 05:13:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609765992; cv=pass;
        d=google.com; s=arc-20160816;
        b=ahIiXpvG0B/F4uPSHV380oJJpq7nfHDx+Qmk1fKUeP1860/ejxyMs2RhH0YV9mMslt
         rv+SeVt0s9fEbZ9nvieQkD9Kkuf+mI0dhCIFMVxYVvwM1TrCvnr7vfu1ZCNDtX1KQ+Hj
         +11RXWjWqgcc94eVF8cc5/IDhBVaw4LhR3qx1PmuUge897B+RDBtyc4qa1SLvLp9qIqE
         8UiEn/C+Tm2NlI6mVwe0w9szXkIO1fj5umCMP8bnYiaUi3Ym0CRuzunPqex5YES8j9Rc
         4mH2wI/28iRGHgmo8OiGbKqjspicq4oAwmEADlN91A72+8Y8xN/UvfXLigOPRq9jM0NK
         7PFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:references:cc
         :to:subject:from:dkim-signature;
        bh=cB77G+s3trlCaWKHkUGbPLcNE83XCmQydNQdjNnP64E=;
        b=gZBUXsl1plRWz3vLnu4vmhqspVHoP3s0GRAJOwFw1O2xJXzTIH70vjO0pPVp4ODguu
         jelcb8Yg0aV26NAaSVrb2IXVj+zWjK4U+s5FFj6yjg4Oxrb5j4plrW6Yc7iLKUvEhCPY
         yFjqFuMdHTuyH1AW/yYhmCgTU2gInGxZKnFU3GIrAR47cIUz1CofcUFlcJ1P+cH1HtWy
         ChJzxHtwOeTb4VZ1ximI1toGc/VWtZuLFmqqOTjsnvMNehpKtEcfJB/0Nc/5Blzja3eK
         cH7N6WNGaVNh70AIbtiHilONXzrDpxEZRlDfXDtliCRH+jX4EiZjKjgrsjc/7h1Nzyio
         bnwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=AeSxBlvH;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cB77G+s3trlCaWKHkUGbPLcNE83XCmQydNQdjNnP64E=;
        b=CjRPrFADczLjqNFXMsl5qvQmGZq+YaWMVGZy3rsr4/awv9wCLIwoCM2oWm/LW274U0
         aSodRYsvYmP0z16wcyEkcvSxdL/0rwu3lx0YaG7FieScim+Owai+A9CluW4Gic0Qj1dg
         EC3jmgzSk83Qzpo55hFFaS2xbuVltC/y9xKF7ShbLjkFTdJSfvMckddjbqr4RjjRc8C0
         4tBNvl0fWtMbeUilJoD0c317oN1xjZgCiXLj588ocUzgxKOQny4yR9qnGHqWTFNrUqcV
         dKDCUpoRAPnHBQRf1NIbcvZ7K/qMjo/cO0ReMd0dLZim5drzLCkaRG6DqCH7dRvBCp+a
         Fa7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cB77G+s3trlCaWKHkUGbPLcNE83XCmQydNQdjNnP64E=;
        b=L3eBQ/ToGmBKOlXf7FLeKCTRMO1IjkKd3t7i9DnQGszw+NBug+0BJLIb4iUFMe/hLF
         UgojnwQ6uFdTCZzZO7D3KyNpkHYm8B03D5BnR9P7W0D5nDTClPM180abbq7HPlWtOp91
         Trq9Ph4TipWO2fi6lKt/5FPxaMfgpXs5BMddzsZrMjSClJY+3lTYaw6S6xNkyRMAVc7a
         4TxRgfoq3UuTUGVNIUEXJ2DoDMib8m6lKr/5lszbCVVUCnC1qgCEpZhGFiEFqbBBEohV
         G5/5Pre+kBVUjcVPlfSfFpcKGkzGXYD2+rHjyqHLzodtGC4ZWg3yT41LUPnz9i7ycw7S
         OlkQ==
X-Gm-Message-State: AOAM530ozRz51uy499Vc4QTyIFv9xZVyvdPZuP7X3fPebl3T0jAwaUzj
	VOSI843McU7wvVZrzaVGSio=
X-Google-Smtp-Source: ABdhPJzdFxOFIY5JOnyNbCGrYoHQwXBQ71n6TcNuhfQLZAdWaqCwPRcbyxUAyONMH8DQHWmQsrdbvg==
X-Received: by 2002:a05:6830:15c1:: with SMTP id j1mr52383267otr.211.1609765990480;
        Mon, 04 Jan 2021 05:13:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:155:: with SMTP id 79ls19989395otu.11.gmail; Mon, 04 Jan
 2021 05:13:10 -0800 (PST)
X-Received: by 2002:a9d:7548:: with SMTP id b8mr50645073otl.142.1609765990083;
        Mon, 04 Jan 2021 05:13:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609765990; cv=none;
        d=google.com; s=arc-20160816;
        b=Hpyc2a/2WS8pM5I8oUWTVclF+LycCqU6MI2F38bIBWqGtsLIPHuNPVIQAKCqcBsSHg
         4RSNEXzWlrwxdcpSwQGdagQPuCA4QdQcPfCFk9Iae73rogHpWbpC4XH5vKEz+TjitRIx
         7mZPx/7beE7k8UDmHUUKy5Tz8u8QCNFnm5wUBdH70hyx3ZBng+Et5YlDQ5BBEHqxb7oE
         IZIqaxRDV44N/ZQAQkAplZ7+FujtWNlQoVnCLWE2a5cLipwBLWwSDAWisr/BeAEq+l9u
         8n7tBCORJvVSGWdSKiuRvPmHDwm/b4dAMVHKrpuhq0B2h+LH1tCyK/OTUkM8eX+k7RXn
         KSEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from
         :dkim-signature;
        bh=PniDc9QWWr+VJ0de9ADs3ktmUYpcGrHXEordESznxd8=;
        b=PaTESFXKjNz1zT0eX05kcvAHofiXij7tfrBHJDRhoJPQViZsyWYbiP/ZKVAh34uh78
         8uj1pjPBG6Hm9ePYxefjAifIJUeCT/VjIuQhkeHu9tE2oUjQX+jJrAUrIczFrDaW5GXy
         0Fj6Hp11IWLZM84DhIwon0bI6lF6SLsvJfw74N2zfiqOpwokJCw0PPyzo9+g7fw5S4cN
         vmxe9+C8qIE1/0mEFWY383LZNYQCRo1/YfQKYPZVu3kotGStR8haPsA7zAUsmz1UgN0T
         +guIa+Mt1pmcnm/l5bXaCk44Mp6sy/1r/fVykMf/UYCd9LwTaBOwY/F+kJVAW1gaR4Fq
         /syg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=AeSxBlvH;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id u2si5940216otg.1.2021.01.04.05.13.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 05:13:10 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104DD2hh108940;
	Mon, 4 Jan 2021 07:13:02 -0600
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104DD2Gd042173
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 07:13:02 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 07:13:01 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 07:13:01 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104DCuxB085196;
	Mon, 4 Jan 2021 07:12:57 -0600
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Subject: Re: [PATCH v8 11/18] PCI: cadence: Implement ->msi_map_irq() ops
To: Rob Herring <robh@kernel.org>
CC: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
	<allenbh@gmail.com>,
        Tom Joseph <tjoseph@cadence.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        PCI <linux-pci@vger.kernel.org>,
        Linux Doc
 Mailing List <linux-doc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>
References: <20201111153559.19050-1-kishon@ti.com>
 <20201111153559.19050-12-kishon@ti.com>
 <CAL_Jsq+iUU0aR950fvQ7+uenBT5MVbCEU9cDg+vfyO=VugpTZA@mail.gmail.com>
Message-ID: <992b5423-89a2-a03b-539d-a9b2822f598a@ti.com>
Date: Mon, 4 Jan 2021 18:42:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+iUU0aR950fvQ7+uenBT5MVbCEU9cDg+vfyO=VugpTZA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=AeSxBlvH;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted
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

Hi Rob,

On 15/12/20 9:31 pm, Rob Herring wrote:
> On Wed, Nov 11, 2020 at 9:37 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>
>> Implement ->msi_map_irq() ops in order to map physical address to
>> MSI address and return MSI data.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  .../pci/controller/cadence/pcie-cadence-ep.c  | 53 +++++++++++++++++++
>>  1 file changed, 53 insertions(+)
>>
>> diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
>> index 84cc58dc8512..1fe6b8baca97 100644
>> --- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
>> +++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
>> @@ -382,6 +382,57 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
>>         return 0;
>>  }
>>
>> +static int cdns_pcie_ep_map_msi_irq(struct pci_epc *epc, u8 fn,
>> +                                   phys_addr_t addr, u8 interrupt_num,
>> +                                   u32 entry_size, u32 *msi_data,
>> +                                   u32 *msi_addr_offset)
>> +{
>> +       struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
>> +       u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
>> +       struct cdns_pcie *pcie = &ep->pcie;
>> +       u64 pci_addr, pci_addr_mask = 0xff;
>> +       u16 flags, mme, data, data_mask;
>> +       u8 msi_count;
>> +       int ret;
>> +       int i;
>> +
> 
> 
>> +       /* Check whether the MSI feature has been enabled by the PCI host. */
>> +       flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
>> +       if (!(flags & PCI_MSI_FLAGS_ENABLE))
>> +               return -EINVAL;
>> +
>> +       /* Get the number of enabled MSIs */
>> +       mme = (flags & PCI_MSI_FLAGS_QSIZE) >> 4;
>> +       msi_count = 1 << mme;
>> +       if (!interrupt_num || interrupt_num > msi_count)
>> +               return -EINVAL;
>> +
>> +       /* Compute the data value to be written. */
>> +       data_mask = msi_count - 1;
>> +       data = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_DATA_64);
>> +       data = data & ~data_mask;
>> +
>> +       /* Get the PCI address where to write the data into. */
>> +       pci_addr = cdns_pcie_ep_fn_readl(pcie, fn, cap + PCI_MSI_ADDRESS_HI);
>> +       pci_addr <<= 32;
>> +       pci_addr |= cdns_pcie_ep_fn_readl(pcie, fn, cap + PCI_MSI_ADDRESS_LO);
>> +       pci_addr &= GENMASK_ULL(63, 2);
> 
> Wouldn't all of the above be the same code for any endpoint driver? We
> just need endpoint config space accessors for the same 32-bit only
> access issues. Not asking for that in this series, but if that's the
> direction we should go.

Do you mean "endpoint" variant of pci_generic_config_read() which takes
function number and capability offset? That could be done but we have to
add support to traverse the linked list of capabilities though the
capabilities are going to be at a fixed location for a given IP.

Also in some cases, the writes are to a different register than the
configuration space registers like vendor_id in Cadence EP should be
written to Local Management register instead of the configuration space
register.

Thank You,
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/992b5423-89a2-a03b-539d-a9b2822f598a%40ti.com.
