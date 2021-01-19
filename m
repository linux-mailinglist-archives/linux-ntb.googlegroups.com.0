Return-Path: <linux-ntb+bncBCXK7HEV3YBRBP4FTOAAMGQEWSKPJIY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9AA2FB5AC
	for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 12:30:09 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id t17sf15383135pgu.1
        for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 03:30:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611055808; cv=pass;
        d=google.com; s=arc-20160816;
        b=pgIkYm/jRRGAPmgPU00cxs++tq7bvd6Ldz7pOJ2ZJjdjk8kvP4CCsaX2e0nyzKVK5D
         qtqjLneH3aae5gZPC9plPriqgQ2WThaNTtES4rsMl9mqea+3rxDrjpos59N2KJ58tmsI
         J137UOxb0PW9UBu1Xl5PQl2lnTJLoyWJmwoL9T2OnzPToYmdV+vm5xFx/4fKr54+5YGe
         dpkSbJcHjt04AF2eWgJXwYXtIjhLNcHlG3hzpSVAPamc3N367ImlBe22hh6eH/4MDtNz
         8qzqEolKOKHeODBLgdP7nBfFnypka9IAK3Aub8+acAGr1Uj6hIktTedY82VN6J4icyDU
         MagQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NGZZDdJ+zUCLkmDxI2grh/c/EKmP1mo2LWsH6a+TIJE=;
        b=SOWoZt0pCzd8iHOWd6ZheAaymHzOpda7SAhrglh00YYraY/NS11c3QBlh0BunAOwlA
         HBHWhMiUrBT+oNEySQmqBhRbvate6iIGD1DgTEisLXDV/3SX1TCR4joKmHXGDTBXgvyu
         8bu7m5GwfNqg9rvZho4haBSiMHToF99rP6SAcAT2ZeOS1+EytC6mRvieny/W+I9WVpaB
         SmzHgdXG8W8MYeiQbkiXKLtFkWd1dJtsFHVgKR5Uk25O9USp1FHxDJsJxO52gcBRZRsP
         7FEcSLNpwZoc/p/UbqThvESRMBATErwWxv4H2DJGHsN0g6v8dre8hbJJtG98px0TVfxJ
         L5SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGZZDdJ+zUCLkmDxI2grh/c/EKmP1mo2LWsH6a+TIJE=;
        b=P7w/th+9nS7Ar98sSbNyKGidF6PYJg1QQcuUzpADd5hfv8pAlN1qUhpqSLD5rIQuFW
         V7ybpJn4DvfWOmYbB9VoejMjOhc/s6c8ddNjFyIDIAqdRYrgoX0L01s8Q1NC5CGSkZP5
         mUANXV40BWtPmH9C945bWQtJQYL9SLpu0B1hRyGU6TeHSbOBlSvz0KkeX2KPh7aVXx0Y
         CgYLZ1rw+LPNPg2XbeHgtcFbOuNl2FEiuPBe4u8yhz98qD3XLrnPtY9luahJfs8eQWq3
         Xy/vBLWWtGSQeVJxYI5J48v99YcEHCU7eskFFiFai5uSUmwFaC5QT2Zpts5F0z+PPD5t
         cmIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGZZDdJ+zUCLkmDxI2grh/c/EKmP1mo2LWsH6a+TIJE=;
        b=ZfP67/BMzaUEgJ9yABzvySBFQAmyi01Snfs6/hhaQkX6hedug4sY9/OCFBrRvRWGS0
         ELIJhwLiNac2C3nqn7KgyJJEzw16XuyEaua7kKrQ3vPGOYVrblYesZe0kAB1Bu+6kWgk
         PNcyAQWV727oi38N8YfsNsCrTw5pFO0enH5tiLrmqziioVsiw3qQr22/U25UYm4no8KH
         YLYuJX+3vq/96FROyajL8Jh5ifANN61jyOMWmEutQik8jX/sGVYclT0LiFgKud/msEa2
         aDgcc58fMBCCnxX+ffFIPIk6bDGbg4gdOd3bgHtnpdPTGE7ViTf7ZSC6vPPj1uXQpnH8
         r1YQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533el1VHpfQkFI0tfPnV8GAJyZ8AMUKmZ1Z5djqItH2mgb8kpxgb
	U1l9j7ZrNFeNIEUxDzXmgkQ=
X-Google-Smtp-Source: ABdhPJxL8/2ZZoAyiGhO0J/kVpzs6w7getb8A1Bd6uejDC+sFI1SPIHq/DxKFlMXHMTCCHZoQV0alA==
X-Received: by 2002:a62:864e:0:b029:1ab:e82c:d724 with SMTP id x75-20020a62864e0000b02901abe82cd724mr3914381pfd.9.1611055807982;
        Tue, 19 Jan 2021 03:30:07 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:c586:: with SMTP id l6ls5240436pjt.3.canary-gmail;
 Tue, 19 Jan 2021 03:30:07 -0800 (PST)
X-Received: by 2002:a17:902:8c85:b029:dc:31af:90a6 with SMTP id t5-20020a1709028c85b02900dc31af90a6mr4297101plo.37.1611055807090;
        Tue, 19 Jan 2021 03:30:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611055807; cv=none;
        d=google.com; s=arc-20160816;
        b=npR8AG4YR6+E/gfOFDgbQA7OgOsVstbLPgy/J78hAqEmClt2UDUIP8MzN/LOm8GcWf
         ksRxPbaX/zMEbrrzB2JUq0rq7tKAk+lXxovghchptH4/7yASPExNhto60Z/GZmIM3+kT
         dBIt3KPnvaCQzHoURBymiWRqhqLuJ25vDDSNTz9/D6oYsMWeVrYRhEzI8szMnU1elgRF
         edvV9clCi8B5Mb54DJL4s2v6xuVHn3/g+jdfFRv7g56j3U4Qe7y/z3oCp+qrp9ks/c16
         mzFtuLDX+lP+Fv6nR1eq8s2xWP56C6fn1ZmWX3oZwvIjrDSXj3G1sZe1Q52Ti6OGrNY2
         g0Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=8EYizLWde5rvwTpltULLzKOnzBp9zPCGiIfxmkjFsb8=;
        b=vg9MJjng39pSwS1tY96s69S9oNcjIlau7Jb5wHIfh0qnM9LbH5jAF555tlWOFQgmYm
         tIVgGKkyx5jHCjP2dXKd0MnI3NmU7bZVCe77/W9iDKJb1B7I1P3aKiHpJr0LzSS4Cd53
         TtDTugf5svHL7no2mCF/SmaM2kTZ4kLbf6I51ayn+GBehu878vh1V6NP9YHlucr9DeTe
         nmXbwLxLQ9DhQ+hRhh/zIU6ctOXo/QC8f7bZI0T4jCh9bDFXsWrt+1gybQOstghGZOQc
         R+ykptTXfoF/hhJJXhteofumV9C4IwjTfTVwo0/dHPDXGT8UcHSh5coZ+o3IJ9Sh8wG3
         U2mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id 13si1428230pgf.0.2021.01.19.03.30.06
        for <linux-ntb@googlegroups.com>;
        Tue, 19 Jan 2021 03:30:07 -0800 (PST)
Received-SPF: pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F01DE1042;
	Tue, 19 Jan 2021 03:30:05 -0800 (PST)
Received: from e123427-lin.arm.com (unknown [10.57.35.195])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E06263F719;
	Tue, 19 Jan 2021 03:30:03 -0800 (PST)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Jon Mason <jdmason@kudzu.us>,
	Jonathan Corbet <corbet@lwn.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Tom Joseph <tjoseph@cadence.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v9 00/17] Implement NTB Controller using multiple PCI EP
Date: Tue, 19 Jan 2021 11:29:55 +0000
Message-Id: <161105563975.29969.4677344444174224884.b4-ty@arm.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
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

On Mon, 4 Jan 2021 20:58:52 +0530, Kishon Vijay Abraham I wrote:
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

Applied to pci/ntb to give it more visibility and testing, aiming
for v5.12.

[01/17] Documentation: PCI: Add specification for the *PCI NTB* function device
        https://git.kernel.org/lpieralisi/pci/c/75e6ac86ca
[02/17] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
        https://git.kernel.org/lpieralisi/pci/c/b6c7a2a2b5
[03/17] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
        https://git.kernel.org/lpieralisi/pci/c/43e293914d
[04/17] PCI: endpoint: Make *_free_bar() to return error codes on failure
        https://git.kernel.org/lpieralisi/pci/c/293e2c258c
[05/17] PCI: endpoint: Remove unused pci_epf_match_device()
        https://git.kernel.org/lpieralisi/pci/c/9a25bdab98
[06/17] PCI: endpoint: Add support to associate secondary EPC with EPF
        https://git.kernel.org/lpieralisi/pci/c/868fe90ea4
[07/17] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
        https://git.kernel.org/lpieralisi/pci/c/632c92ec12
[08/17] PCI: endpoint: Add pci_epc_ops to map MSI irq
        https://git.kernel.org/lpieralisi/pci/c/310511a301
[09/17] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
        https://git.kernel.org/lpieralisi/pci/c/34fb8ab2e3
[10/17] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
        https://git.kernel.org/lpieralisi/pci/c/3a5c112c7a
[11/17] PCI: cadence: Implement ->msi_map_irq() ops
        https://git.kernel.org/lpieralisi/pci/c/d5c3d2ae7c
[12/17] PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
        https://git.kernel.org/lpieralisi/pci/c/d3f4973104
[13/17] PCI: endpoint: Add EP function driver to provide NTB functionality
        https://git.kernel.org/lpieralisi/pci/c/7dc64244f9
[14/17] PCI: Add TI J721E device to pci ids
        https://git.kernel.org/lpieralisi/pci/c/17d49876c3
[15/17] NTB: Add support for EPF PCI-Express Non-Transparent Bridge
        https://git.kernel.org/lpieralisi/pci/c/5d0db3f429
[16/17] Documentation: PCI: Add configfs binding documentation for pci-ntb endpoint function
        https://git.kernel.org/lpieralisi/pci/c/099f07051e
[17/17] Documentation: PCI: Add userguide for PCI endpoint NTB function
        https://git.kernel.org/lpieralisi/pci/c/27f22f76c3

Thanks,
Lorenzo

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/161105563975.29969.4677344444174224884.b4-ty%40arm.com.
