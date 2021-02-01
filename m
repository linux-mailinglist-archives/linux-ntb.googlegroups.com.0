Return-Path: <linux-ntb+bncBCXK7HEV3YBRBKHV4GAAMGQEWICVEGI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AE62A30B279
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 23:03:21 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id o2sf495894vsa.16
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 14:03:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612217000; cv=pass;
        d=google.com; s=arc-20160816;
        b=PHpexqxGx1WG1ImrUGrGxj1CfCObGuTqDRNcpJSQN6lPnDKo7CtQGNDUmx2BP0+KbK
         BRm3/tVyUKJefZC5ZgHOcGnmJKJ4L8gGBM7TS/CzCCyahXBhOwwQfm0jHofIPOFVeYSb
         Pw/VvaXz5X/RaFUaPvzP74V7m0L/HVptv/pV/4GEpycyg2wTHZhxQwsahkIlNysF0PlM
         4Ut4R/HvYcSbqVcmThJ2x7SakQAlqY2JgtgMl6g7pbvbiu249pHEC/OTGu7oPXb1POMi
         wBqRoD2Rob6Aw22yFeIHhfbrWqcFi88exB3eoG/7v7hdNErP3OGqSbjmhQpuL0+9l8fW
         uTlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=prvuNiUxf0JsVORZr4QKMd1H8hzJsHNFwDLq2xC1KqI=;
        b=FD0RihPTONygfOD7ufp2qNwyvpwVxH/ZE68mqYSOmIRGzjUf+HKzVU1pxP4yfd6THm
         xlUWfqrkvEqstWkgX8mjhiLUW/UoCZLlPHAWaQ3iBa7ud92TII4R9wHCKDLHSDCTQ9sr
         sZMGH6VLxBt2FCD2qG26yVSF+apzRA59LqnCrnqQiEEtV8RGxVdva16or25AAwYuK0bH
         mgN2cfRaCQ78OEtqqwIMCbHbUoPOv2PLvre9husUttt93Sy+nAtEBhC8Xb0LtP6xGXi5
         SBnPe/vv4w0u37ju2HOo/iXZ5tvwRckXwhFbeZzkD30wY9oRXiIPeVORVSfSX0CFNUC2
         siCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=prvuNiUxf0JsVORZr4QKMd1H8hzJsHNFwDLq2xC1KqI=;
        b=dTMLoEyixMW1bexMwDBHzhGFcb0KqOmGPHSoDTZJA1mxs4ALfGaG48P77UzrtHbeHM
         vzvQqdVL18iCcVYs8eqOH2H3Wl2e8V/NCxwgORLWXU+xZWBwsuYtJpuzq4SWWK34Pnek
         yxYnuvHBeIAaOBFcMkymcPRxJV8C7KcZ5aHRbO06thwKHORAKvZZx+dsFqgajeqBDfW9
         7wCVW2Qa7TO1nviLJFSaBqBppKRsjlc4JDMwCoNaK9EdwbDewpCzJfygyvY0APTrTo0J
         ecgQH2Qx8legpm9LK4yVu9AXTJlHUJJrINfqluJ/3dmwYc46tbjxzWrevYAYK1bLI0WT
         fdoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=prvuNiUxf0JsVORZr4QKMd1H8hzJsHNFwDLq2xC1KqI=;
        b=NgfTjlInY4NZbP6MpZyEeCHht53qMVoqDg7BY/DRf6kVMi2jd9IV+XL0/pAaB0xgep
         tUUps5djNWbi9om6PRYAfSLyI3n/Dg9IgOOfcYHNISuNfaZHxTfaqdwFOV7cmxIeChcY
         +AOuEfV2LYgx2N1dDMkZagMz+xba6gPsaEz4omBA+4aQRIIb5pRejEzImxBHyOWJ0595
         mY/7Hr8NY3NAWO/C47y7kn7u282oSzmLkyFJj4lLfC40Xp6+pORkC3aBWM+oomFSW/cD
         gooSiNZTTutbZR1goik2R0Lski2l13r2f4s9GbYZYrZAsR7scmbr01mQdBo0OqnE08Er
         dOOw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531Pdtg2GuxMdHpZa8UlYArkc3luIULFCzkdHft/zqqKnAr53IE4
	GYW0H1Ld48w2ISVaA0sQ4gI=
X-Google-Smtp-Source: ABdhPJy7npMl8w0g2nZDkWunu3MsVXY2oVPyMO5bKYYtKJy/r379f05VJG34j4BZvb9bDmj7I2DQVg==
X-Received: by 2002:a9f:2666:: with SMTP id 93mr10668344uag.59.1612217000560;
        Mon, 01 Feb 2021 14:03:20 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:20b6:: with SMTP id y22ls1362013ual.9.gmail; Mon, 01 Feb
 2021 14:03:20 -0800 (PST)
X-Received: by 2002:ab0:25:: with SMTP id 34mr5529226uai.112.1612217000194;
        Mon, 01 Feb 2021 14:03:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612217000; cv=none;
        d=google.com; s=arc-20160816;
        b=c9ZmNWATZWM1Yec817Bps7BheBzgMur8vzC7C3J+bwsHJuhV0fVrKKP68TpG+SXGI3
         r3pGXr/SuGF/iKQQV/vNLkcDGaVH81zOaP2e8aP8WkoCJwWweAq+zvd3tWLXg7hsnTSX
         BY5yhbAP2kFQX7si70O7NxdD9LvV8rro7iElFzykVzAVjIXo+1/+7jPTms5MexG08EWS
         tvZzhM/ZLsWkk1vsP5aC6Ptdfmey4layn5uOz4iv4UV7dHeIvbZsGRjdWWJ6NR+totOL
         HCzWT31UWX3KMXZ+IiVoHiI3LvyJCB9JtsTpPXWmWsmDUQDOrS0Td9wPATEOmr3gGAdP
         gSxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=YDqCgRdinMZu7GbWr9vRbTc4foIJMxj+oFSssp+J9nY=;
        b=Jz7ZaOhqy+OIMlfgG9FKo/j1JQpR9M5XgDa/S8cfmujr2pjQxC205GfiF7Hy724K9o
         ph1DMIyMEO4r9W7n2Q3KItZdA1K3wZKP+zoGnGKgW7PBSvRNZFCeZzp2g3xb/zc97UQI
         HbZNWtGJYxGUriFoulXhitpK7C+l+4rOF21/TZnI+aC09NriY6nOmCOGIMRJG0bhTB7F
         cUcT+RqDgIM5yat++LJt5OSf81RJYECNVZdl0WVQt1nEswtRD0FCMD97J5OLirIc7l5S
         tuybJc+uMXdeU15VtQ1W7YSis7iqgx//aYkIpZmMaJANxNn/gHzYfg9InyW6/xBz4N5o
         mPOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e11si1164877vkp.4.2021.02.01.14.03.20
        for <linux-ntb@googlegroups.com>;
        Mon, 01 Feb 2021 14:03:20 -0800 (PST)
Received-SPF: pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B55D1042;
	Mon,  1 Feb 2021 14:03:19 -0800 (PST)
Received: from e123427-lin.arm.com (unknown [10.57.46.207])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 430183F718;
	Mon,  1 Feb 2021 14:03:16 -0800 (PST)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Arnd Bergmann <arnd@arndb.de>,
	Jon Mason <jdmason@kudzu.us>,
	Rob Herring <robh@kernel.org>,
	Dave Jiang <dave.jiang@intel.com>,
	Tom Joseph <tjoseph@cadence.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Jonathan Corbet <corbet@lwn.net>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-ntb@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v11 00/17] Implement NTB Controller using multiple PCI EP
Date: Mon,  1 Feb 2021 22:03:09 +0000
Message-Id: <161221695543.9151.8142592721154575298.b4-ty@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
X-Original-Sender: lorenzo.pieralisi@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Content-Type: text/plain; charset="UTF-8"
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

On Tue, 2 Feb 2021 01:27:52 +0530, Kishon Vijay Abraham I wrote:
> This series is about implementing SW defined Non-Transparent Bridge (NTB)
> using multiple endpoint (EP) instances. This series has been tested using
> 2 endpoint instances in J7 connected to J7 board on one end and DRA7 board
> on the other end. However there is nothing platform specific for the NTB
> functionality.
> 
> This was presented in Linux Plumbers Conference. Link to presentation
> and video can be found @ [1]
> Created a video demo @ [9]
> 
> [...]

Applied to pci/ntb, thanks!

[01/17] Documentation: PCI: Add specification for the *PCI NTB* function device
        https://git.kernel.org/lpieralisi/pci/c/051a6adf6e
[02/17] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
        https://git.kernel.org/lpieralisi/pci/c/c0527dabcc
[03/17] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
        https://git.kernel.org/lpieralisi/pci/c/d91d6ddfd2
[04/17] PCI: endpoint: Make *_free_bar() to return error codes on failure
        https://git.kernel.org/lpieralisi/pci/c/b9bdfa3da3
[05/17] PCI: endpoint: Remove unused pci_epf_match_device()
        https://git.kernel.org/lpieralisi/pci/c/2872f07cb0
[06/17] PCI: endpoint: Add support to associate secondary EPC with EPF
        https://git.kernel.org/lpieralisi/pci/c/6d0b4a7f2c
[07/17] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
        https://git.kernel.org/lpieralisi/pci/c/c8e7d97270
[08/17] PCI: endpoint: Add pci_epc_ops to map MSI irq
        https://git.kernel.org/lpieralisi/pci/c/2bbb192338
[09/17] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
        https://git.kernel.org/lpieralisi/pci/c/cea2edf604
[10/17] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
        https://git.kernel.org/lpieralisi/pci/c/1b0ef1c913
[11/17] PCI: cadence: Implement ->msi_map_irq() ops
        https://git.kernel.org/lpieralisi/pci/c/743a5d6309
[12/17] PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
        https://git.kernel.org/lpieralisi/pci/c/54e9e441b0
[13/17] PCI: endpoint: Add EP function driver to provide NTB functionality
        https://git.kernel.org/lpieralisi/pci/c/e9d7f4603e
[14/17] PCI: Add TI J721E device to pci ids
        https://git.kernel.org/lpieralisi/pci/c/7aac69682e
[15/17] NTB: Add support for EPF PCI-Express Non-Transparent Bridge
        https://git.kernel.org/lpieralisi/pci/c/363baf7d60
[16/17] Documentation: PCI: Add configfs binding documentation for pci-ntb endpoint function
        https://git.kernel.org/lpieralisi/pci/c/0456a9cd0a
[17/17] Documentation: PCI: Add userguide for PCI endpoint NTB function
        https://git.kernel.org/lpieralisi/pci/c/096ce75bf6

Thanks,
Lorenzo

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/161221695543.9151.8142592721154575298.b4-ty%40arm.com.
