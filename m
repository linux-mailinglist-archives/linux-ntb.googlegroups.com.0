Return-Path: <linux-ntb+bncBDRJHDHGTMIRB4XYTOCQMGQE73N2KKQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD3538BAC1
	for <lists+linux-ntb@lfdr.de>; Fri, 21 May 2021 02:18:59 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id z43-20020a9f372e0000b029020dcb32d820sf6574159uad.2
        for <lists+linux-ntb@lfdr.de>; Thu, 20 May 2021 17:18:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621556338; cv=pass;
        d=google.com; s=arc-20160816;
        b=cwkElU1J/93LBmr79yyhVVjS6RZiB4yKhXHYWpynEA7iueJGK4vXs3/UULzCohklsi
         fjb0N/O8v1Gif8dxb6vDQVchjH4w5KIa5ZdGAAlRge85HqbPC7XxRvCK/yIi1WDZieJk
         crEzT74W0V9JbkvoNEi2X/bdqM26ipQePwwPsVAjBnPM+igJRtGmzdm+vkWnDU9rBEMt
         jVunbYhR/j7sE925VVFIXZ2uec9joWssjdGbkSWRgb0I36u0od1Ab7ebLZhVlrKcCID3
         hegYWcajaeEi1Qn+rma4Y2pB1YnUsmGJMr77nVwXAHPdmLQJnqQVT+4nJnwbVppzV23l
         0f7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:date:mime-version:references:in-reply-to:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=FnmxSHhZ1Ue5Lm+36+wcocxG/Dky6oqCI9ElCMefcHM=;
        b=XNxXVftW7zLIHjptF+ilnvUYYe+/+qVGyCtGXUWFCQVpswfSzsG7mC+kOQByodQ0Zi
         QDHtxEBlV3u0aPvLUKRrB3990xiNe2YgFXTRgM1bOVsD4aGE+qT84J8sBljVY9oeGFqm
         kecsqMBAc5wF3yrqgpQSUm1l/CnpmqQuMoOaLGt8X0BuYd3w+/t1eJ8CK/CUhShOKmQA
         Z6tRxVeeZ8U5wHzNwXnQ4FNRf7xoQoR8P4f6p/fN7KtZqG3B8PON/ROllzvdHU+GFAQU
         +aWpzaMfeVYOSpsPxdIN4nrIBLFKnH4zyOB7X9P6BFEtyZ9x3mlKwGKliCMIXfuRQ2zv
         iJfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ixsystems.com header.s=google header.b=S9Lnwtf+;
       spf=pass (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=jkirsher@ixsystems.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ixsystems.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:in-reply-to:references
         :mime-version:date:user-agent:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FnmxSHhZ1Ue5Lm+36+wcocxG/Dky6oqCI9ElCMefcHM=;
        b=GppOhG4n9Hvq2jqfLl6YlTzHFcX/PM2gq1M28FraBSa29XAESP1zTvXIx0sGGaDpA/
         cSrfbqzbS2pEnkOTql2lnN7YDDpiNrbo6wQGhEJzHlbHnOF77C23hsGt1hH8lfkQGlTX
         nrbpT9l45jZALNUssH0iMO09z2DlZAitZd/SbC9VwbT18Rlo/e+9VxfvULfrJ8zFXIZG
         ISr9oEAVZvUZ92F9yfx0K+Uln9wh4PUr4K++rpFgs23Kaa3jB6evssgvSL8n0gQKX7Ig
         3YnwXzl1/GW1LeKvEd3RFS3p+dFHC669pfH5MIpuHiw5mBOtN5rEDfdeRsXxPghEPP59
         Ncyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:in-reply-to
         :references:mime-version:date:user-agent:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FnmxSHhZ1Ue5Lm+36+wcocxG/Dky6oqCI9ElCMefcHM=;
        b=bcHQxOqqPeDLIa7wItznq71fDK1HgDSkV/FpD7pij0Az2EUvmMrVLqcK6h3ek2W7ce
         Ju2oYzkyFJWaLKkFdhOTK2aA3L7PoExrcskL2e5TaRnmBPO7LTjQvvmVeLuxZckevPsF
         k/j5tU6t9VfIfN+8ZVkvY1XxCIgJzZh/FOZbLylyFeeJyzaTjX2iOF6+JatafSO1ZVWd
         Qd01L6MrLDkA9erZkGFe58qjTuCvWyDn0wrD/+R5HBWDG2Z/CqEDgxTxtaFVD+HmhwWb
         gi2ftIk5Tsn+ULoTf7mqrtRXEL3WP85XOvopYWKMkzL2C8ME4ykgCHPJPJxc5S6A07L+
         x0Kg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532VaXnK88v49WLEIl4ke7CtAA0jEQnIMtpsuwlfjDQLNck+P7aZ
	x+SjXPLJKDSWuLspmBg1DDI=
X-Google-Smtp-Source: ABdhPJzZAEEEj9cPsxN8R6JgBUH9SbsHbaCD5sEscZIQEbQ3PRJUWCFg7Q8dh08jeiSTlT6j9RB+xg==
X-Received: by 2002:a05:6102:238a:: with SMTP id v10mr7141309vsr.5.1621556338255;
        Thu, 20 May 2021 17:18:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:3a83:: with SMTP id h125ls364912vka.3.gmail; Thu, 20 May
 2021 17:18:57 -0700 (PDT)
X-Received: by 2002:a1f:1797:: with SMTP id 145mr7429159vkx.13.1621556337771;
        Thu, 20 May 2021 17:18:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621556337; cv=none;
        d=google.com; s=arc-20160816;
        b=Q/jF22CIbR0d3WFhoQz+zE/aiu04EZVk0kDGWt4ZoPvBpaVT1cuWUk6QjiLFGZVqef
         AFK6H4vEtzvddBwfJhyH0vSp+qZV30dYBsEv2qeDbaZx2POYc2BOW7g6JE8FdifPbrBa
         jeKit5NeFM59wsSiMxj5GpuKFX8/zrT8cCCiouX8zgUr0PRjFXgih5tVje0wMN5ffmDA
         DfibtMhI+vUqRo1x/nKNZJrXcA6qBZPeTmNlQp4fScZbExeLqUoYefV/ruiI/HK7veCb
         VN7W7ZB62HxmfIJ3G4WaD8cx77ueADbeWgAsz/O3oWfj+O1s1ZLe3E/ZdMHYXDWy0bn1
         ma0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:user-agent:date:mime-version:references
         :in-reply-to:cc:to:from:subject:message-id:dkim-signature;
        bh=5ZPnvxgE3bRlcUz3w4M7zQxFr7369HoWmmyKr42x+2g=;
        b=LlPgSbseNSpWescNg3sEG+G/7yd5zKzgYfHkBalan4nYqwpaGuqXAOmq0TUcdEaYac
         YmhRfuKiKcGyR3pTZeS0JmXXilVsf6v2U9EnFkfaxSuFC9Brlr98THfoaDEfwepBmaq9
         xbp5d+ysicxdYmZ4pF+zaoXy5D0KYiHn9IP43LkGOnCnXYV66/GK3yfcAwAFl1I5rZV2
         nPHTKMdCGXS5/satxwb9eAeAs+F+uEtGDvigl5ugUFyCzy47Q0hKUlTFTg71YuVrU1YN
         pPr6Vzlj8ezTP5tb8F00VTDz2MlRtC6z+lt3RP88ZPs6sUqeyFbd02nWlEXMc6hgbIiQ
         hgbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ixsystems.com header.s=google header.b=S9Lnwtf+;
       spf=pass (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=jkirsher@ixsystems.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ixsystems.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id d26si453318vkp.3.2021.05.20.17.18.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 May 2021 17:18:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id e17so3014825pfl.5
        for <linux-ntb@googlegroups.com>; Thu, 20 May 2021 17:18:57 -0700 (PDT)
X-Received: by 2002:a62:1e42:0:b029:2df:dd12:1608 with SMTP id e63-20020a621e420000b02902dfdd121608mr7108074pfe.11.1621556336688;
        Thu, 20 May 2021 17:18:56 -0700 (PDT)
Received: from [192.168.0.10] ([75.164.25.153])
        by smtp.gmail.com with ESMTPSA id e29sm2834068pfm.110.2021.05.20.17.18.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 17:18:56 -0700 (PDT)
Message-ID: <feeea59f0612d257591cd14953d31c5f1482c012.camel@ixsystems.com>
Subject: Re: [RFC] ntb/plx: Add support for PLX hardware
From: Jeff Kirsher <jkirsher@ixsystems.com>
To: Logan Gunthorpe <logang@deltatee.com>, jdmason@kudzu.us, 
	dave.jiang@intel.com, allenbh@gmail.com
Cc: linux-ntb@googlegroups.com, Alexander Motin <mav@ixsystems.com>
In-Reply-To: <ebfdfe78-67f2-2096-5e89-bd1b65fa819c@deltatee.com>
References: <20210520222323.104901-1-jkirsher@ixsystems.com>
	 <ebfdfe78-67f2-2096-5e89-bd1b65fa819c@deltatee.com>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Date: Thu, 20 May 2021 17:17:35 -0700
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34)
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jkirsher@ixsystems.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ixsystems.com header.s=google header.b=S9Lnwtf+;       spf=pass
 (google.com: domain of jkirsher@ixsystems.com designates 2607:f8b0:4864:20::42a
 as permitted sender) smtp.mailfrom=jkirsher@ixsystems.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ixsystems.com
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

On Thu, 2021-05-20 at 17:48 -0600, Logan Gunthorpe wrote:
>=20
> Hi Jeff,
>=20
> I've just done a quick review and found some style issues. Generally
> the
> driver looks pretty good but I didn't dig into too many details.
>=20
> On 2021-05-20 4:23 p.m., Jeff Kirsher wrote:
> > +static const struct file_operations plx_ntb_debugfs_info;
> > +static struct dentry *debugfs_dir;
> > +static int plx_ntb_mw_set_trans_internal(struct ntb_dev *ntb, int
> > idx);
>=20
> Kernel style tries to avoid forward declarations unless they are
> needed
> to avoid a mutual recursion (not here). This means the code will
> always
> be in a specific order where we can read the code before it's used
> and
> it also generally forces initialization functions on the bottom. This
> is
> easier to read.
>=20
>=20
> > +static int plx_ntb_init_pci(struct plx_ntb_dev *ndev, struct
> > pci_dev *pdev)
> > +{
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int rc;
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pci_set_drvdata(pdev, ndev);
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rc =3D pci_enable_device(pde=
v);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (rc)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0goto err_pci_enable;
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rc =3D pci_request_regions(p=
dev, NTB_NAME);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (rc)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0goto err_pci_regions;
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pci_set_master(pdev);
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rc =3D pci_set_dma_mask(pdev=
, DMA_BIT_MASK(64));
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (rc) {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0rc =3D pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0if (rc)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto e=
rr_dma_mask;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0dev_warn(&pdev->dev, "Cannot DMA highmem\n");
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rc =3D pci_set_consistent_dm=
a_mask(pdev, DMA_BIT_MASK(64));
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (rc) {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0rc =3D pci_set_consistent_dma_mask(pdev,
> > DMA_BIT_MASK(32));
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0if (rc)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto e=
rr_dma_mask;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0dev_warn(&pdev->dev, "Cannot DMA consistent
> > highmem\n");
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ndev->self_mmio =3D pci_ioma=
p(pdev, 0, 0);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!ndev->self_mmio) {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0rc =3D -EIO;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0goto err_mmio;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>=20
> I'd recommend using the device managed variants of all of these.
> pcim_enable_device(), pcim_iomap(), devm_request_irq(), etc. It
> really
> simplifies the code as the cleanup paths are much easier.

Is this something new that all NTB drivers are expected to adopt?  Just
asking because I used the Intel and AMD drivers as examples and they
are still using pci_iomap(), etc...

>=20
>=20
> > +module_exit(plx_ntb_pci_driver_exit);
> > diff --git a/drivers/ntb/hw/plx/ntb_hw_plx.h
> > b/drivers/ntb/hw/plx/ntb_hw_plx.h
> > new file mode 100644
> > index 000000000000..4f118432e718
> > --- /dev/null
> > +++ b/drivers/ntb/hw/plx/ntb_hw_plx.h
>=20
> We generally do not add header files unless they are shared by
> multiple
> C files. All this code can and should be placed at the top of the C
> file.

Which I can easily do, if necessary.

> > +#define ntb_ndev(__ntb) container_of(__ntb, struct plx_ntb_dev,
> > ntb)
>=20
> Although you see this a lot (and I've added my fair share) many
> kernel
> devs prefer these to be open coded. It's much clearer. Also, though,
> why
> the double underscore on ntb?
>=20
> > +/* Bases of NTx our/peer interface registers */
> > +#define PLX_NTX_OUR_BASE(sc)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(PLX_NTX_BASE(sc) + ((sc)->l=
ink ? PLX_NTX_LNK_OFFSET : 0))
> > +#define PLX_NTX_PEER_BASE(sc)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(PLX_NTX_BASE(sc) + ((sc)->l=
ink ? 0 : PLX_NTX_LNK_OFFSET))
> > +
> > +/* Read/write NTx our interface registers */
> > +#define NTX_READ(sc, reg)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0readl((sc)->self_mmio + PLX_=
NTX_OUR_BASE(sc) + (reg))
> > +#define NTX_WRITE(val, sc, reg)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0\
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0writel((val), (sc)->self_mmi=
o + PLX_NTX_OUR_BASE(sc) +
> > (reg))>
> > +/* Read/write NTx peer interface registers */
> > +#define PNTX_READ(sc, reg)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0readl((sc)->self_mmio + PLX_=
NTX_PEER_BASE(sc) + (reg))
> > +#define PNTX_WRITE(val, sc, reg)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0\
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0writel((val), (sc)->self_mmi=
o + PLX_NTX_PEER_BASE(sc) +
> > (reg))
> > +
> > +/* Read/write B2B NTx registers */
> > +#define BNTX_READ(sc, reg)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0readl((sc)->mw_info[(sc)->b2=
b_mw].mw_res,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0PLX_NTX_BASE(sc) + (reg))
> > +#define BNTX_WRITE(val, sc, reg)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0\
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0writel((val), (sc)->mw_info[=
(sc)->b2b_mw].mw_res +
> > PLX_NTX_BASE(sc) + (reg))
>=20
> This is quite nasty. I was expecting to just say to open code the
> writel's and not define your own. But they apparently hide a giant
> mess.
> There's got to be a better way than nesting all this hidden logic
> behind
> macros. It'd probably be better to pre-calcualate and store a lot of
> these base pointers. Then just open code the writel and readls.
> > diff --git a/drivers/ntb/ntb_transport.c
> > b/drivers/ntb/ntb_transport.c
> > index 4a02561cfb96..ee39c5e9f274 100644
> > --- a/drivers/ntb/ntb_transport.c
> > +++ b/drivers/ntb/ntb_transport.c
> > @@ -873,6 +873,11 @@ static int ntb_set_mw(struct ntb_transport_ctx
> > *nt, int num_mw,
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0xlat_size =3D round_up(=
size, xlat_align_size);
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0buff_size =3D round_up(=
size, xlat_align);
> > =C2=A0
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* DEBUG code */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_info(&pdev->dev, "xlat_s=
ize is %lu\n", xlat_size);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_info(&pdev->dev, "buff_s=
ize is %lu\n", buff_size);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_info(&pdev->dev, "size i=
s %llu\n", size);
>=20
> Please don't add noisy extra debug prints to every ntb-transport
> user.
> If we want to add some dev_dbg() calls that might be acceptable, but
> please do it in another patch.

Sorry this was just added to do some debugging on what ntb_trasnport
was unable to alloc MW buffers, so this was not meant to be in this
patch. This will be removed.

>=20
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* No need to re-setup =
*/
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (mw->xlat_size =3D=
=3D xlat_size)
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> > @@ -1204,7 +1209,7 @@ static int ntb_transport_init_queue(struct
> > ntb_transport_ctx *nt,
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0tx_size -=3D sizeof(str=
uct ntb_rx_info);
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0qp->rx_info =3D qp->tx_=
mw + tx_size;
> > =C2=A0
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Due to housekeeping, ther=
e must be atleast 2 buffs */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Due to housekeeping, ther=
e must be at least 2 buffs */
>=20
> Please send in separate patch if you want to cleanup other random
> code
> bits. It shouldn't be hidden within a large new driver patch.

Your correct, I did not mean to have this in the patch, it was just a
cleanup I saw when I was reviewing the ntb_transport code to determine
dma_alloc_coherent() failures. This will be a separate patch for sure.

>=20
> Thanks,
>=20
> Logan
>=20



--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/feeea59f0612d257591cd14953d31c5f1482c012.camel%40ixsystems.com.
