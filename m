Return-Path: <linux-ntb+bncBCHOPY7NVYCRBQ4WXOIAMGQEI3BT7YQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 836434BAC8B
	for <lists+linux-ntb@lfdr.de>; Thu, 17 Feb 2022 23:25:08 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id m13-20020a19520d000000b00443423ff116sf198447lfb.11
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Feb 2022 14:25:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645136708; cv=pass;
        d=google.com; s=arc-20160816;
        b=iW0/J1b+iFIT85kGgCo6xzBadWHqHm5B0DxFN/csbptiGtmFieouPnFU73DOyi1sBN
         EsaaOz82XB9IIWgHefJ+rIToY0xAUNPja+ah9j3UaXTeJviQvOPUyRO8Io/YqyEKtR2F
         LBaQ3J4vKTwRkl9MXLY0st7lRj5Z74xcbykrBxfihgmwc9ELgxPxIxbzTOeDm7vDhInA
         Bde2tzR5tJhJMzXD3AsvKM0mMRHTxDq08FTsfPYZbmVB88eoV0Yt4DBrUK0r68W9N/IS
         sVyL3K7udBGPHh6MAOGw4a4Pf2ibaZPGKprLiCoWL1YjCKDMeMk6d/nNppOenwiRGcMW
         KOmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=5dfYzvRYhjTLp4iwBIHGKgJLPNX0NU3gSoE8/hioLTA=;
        b=UxGfVbiG6/qm4ZkYETd+DJjZApTA2TZb16SyNe/vmtgATWawDjnP3+k80/JTmeT9bv
         XFf9Qf2kq0xDrKXFT37BDIwgdRUfJh8R31LPtAPse8uRcBWpWYEVWITbPvrNbTOVpRs9
         hKvi4QoZ814IAZuswUzrA8gKhm78MvZO/MIq0/YDy3dFj8C58bUSWvemGoFGy0O4rccY
         Lr5AJkFHtLUBmz6xZ5x1pnLPiQ32mNfkUyI/exqoI8GW+kko5Gm9Gsu3PM+i7fv9cU3g
         pot5PIqo0wH/DOAllOaI98ljBahwwb0HIVbOOvNxSU+U+CHA9Jd+FgZD5StAUVBQBdHe
         KPGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=GGIJlrjF;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5dfYzvRYhjTLp4iwBIHGKgJLPNX0NU3gSoE8/hioLTA=;
        b=pwMVPW0O2INwmCKRT5OhWu2HAPLKogUKLCaAct12FyN65p8HgGGsj3KyRTLwh+hvnt
         MY4AAWUTQIAwYyekt2Lrh/Cv8d04ZVfKKrkvkdGxZGM+569P0nL8UUooBchGYSEYn7Ku
         XUSnCNJ1bXS91Ycqezq/ymYRosFtNcDu9Xj6xhUfaY9MxwPlEV8XeVEPG3bKT5NcAdum
         b6cu0qNhGVE37Y8aNL3CFr0YzfXDCIOHiBur6bS6eCRICI31vKi2Jc/L3Bcidw5ZhizG
         tsErQi4Yr6x2lu2vRS/sgizENnYQBvI5Z1jABY4XzNTgHD6x5lXuC1Wcye64xp9geUGP
         Il0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5dfYzvRYhjTLp4iwBIHGKgJLPNX0NU3gSoE8/hioLTA=;
        b=QK5nIsbUXcbNObAxnPLTZYSsJ3rIRqeQfOggHCinQpW+7NjPtaDaexkSCi75tWTLLS
         mybHi/9Y4ddkTG2NxWtbmuZ6X/Bsemz1UNuRDnswo212f7tj48AtyAs5dOtzH5c16til
         azpaBdcAQlr0jv/8Py8ALJuKFd8LALRLqUOruqPl70WtknBn1RopnDOmBESHAYAaUetK
         iW48ihTUEOAKpcLx0RWvqgu8+PcH3lzx9avQmEBaL/jqq7eRwaMy/8J0aLfDVJUpIkk2
         4vsEtsL/rP5mMf37DXYYo5+hcvLZzQjcjCOMFwvZOYi4HQNClDN/YZ4ZSDCVgFtzif82
         uAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5dfYzvRYhjTLp4iwBIHGKgJLPNX0NU3gSoE8/hioLTA=;
        b=0TT0nzshZ0rkh8tThADhy2pqBUXx6vMlflxaJEuSJAcVFmufRTlnCwPG8ZX8px9+sV
         d9f2l6t1QBPieExRyGX4rZ/hE2VDA6mm9r8h84QTedv6jNlqFR0fKfai5v3r1FBWo5lq
         jzcRIdRugni0VkoNcLXsYvaaFvd4U44JbjRZzpSTNqeEGqjFEdZ6KdHAm1xZhAGT1dlD
         /k6XyeKQgKlTWcXrsCJqWvg509DWoD1sOSPZpbZAK88XaPn3RkVXAUflMewgvIlrxEu4
         vjzh1bzgrE0/EHUURni6a0ev3sCDYI45aQdWLeRf44ZuJOu0ZAzxrewGR7TBRJ4v91c0
         rlmQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530v1IF2sP34Bh0MIlnncqPbET+qlckWivm0yXwya0KZDcabxC/M
	7HKy/zRcTFiNCh2qE2vTz3E=
X-Google-Smtp-Source: ABdhPJz+/TcFgyMSqsntN5Z+X3W+zeKkLMl5/ZYkN+zEtNgi/i+nRCqyrhkJNJcDxX+E7b34jZFKcg==
X-Received: by 2002:a2e:960e:0:b0:239:3f3b:8bd3 with SMTP id v14-20020a2e960e000000b002393f3b8bd3mr3774940ljh.258.1645136707814;
        Thu, 17 Feb 2022 14:25:07 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3b8e:b0:443:9610:6a0c with SMTP id
 g14-20020a0565123b8e00b0044396106a0cls3488003lfv.1.gmail; Thu, 17 Feb 2022
 14:25:06 -0800 (PST)
X-Received: by 2002:ac2:50ca:0:b0:443:8233:61b5 with SMTP id h10-20020ac250ca000000b00443823361b5mr3516423lfm.672.1645136706731;
        Thu, 17 Feb 2022 14:25:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1645136706; cv=none;
        d=google.com; s=arc-20160816;
        b=CdxATWXguWaSXvOca/Y67g9vQGcviEOni8Qf6vj1Fn1K9gs1sm74sxtye15HcPaIq/
         aDMi/TBoUv4URKh42gZJfNtW6h0thWM5nUguDn5Mo3b7wajze0z0bzRndowtFbgBGADR
         DIrr0bZiILBz5gaRMwEOZXmfsCzPZlC0ECn9n0ZglO/HAtViRWrn/5TqrfnN+zRKz0Vx
         gBrlNqw1yIWLZcad/63nNwvKCKV2f80yWowcM6lqnf96rEx01YCDe2iZUEaR4sE49P3F
         IW/vjQGBckqvoO1pmTjVbfLETop0/U6d1KSadnZDuY39bZMKhcGxWAxdTEwhA6fqVMfY
         NRyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ihEy6KzCD7QFWOSwee9URJOiYpehf+0hjI95FoZ8vTo=;
        b=wN5cxbJKGSz7uWJhwAUzm45FlnY5M6VDvhjl41guj4SubMF9JxRc5uE1oLdD+Uzbl1
         oqdBdnQt9tDDXrkmfmXrEhIb9ZSsXxrCnD08E5AnWdwSHhIZqBgQn+zKGydgJ1xQIJyJ
         k0LG+XraUaP0OqAJPs5OoLk3xNdBOnQ2oe6NdccexCRA6gz8B6rfjVLUX5YJMz1U78kW
         eLduZCHCBCkfUD6czsMGtD5aTVf5Me30nkW0FxZ0THHaimKr5ndP735n0TfjPr1Xdnkk
         HeNxQ9NelSfHk8/fYnwj2vByknEq3XqVyTp6+c8F0cwfWlPMpHWAk9B7GxhVJBvShRWW
         rPcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=GGIJlrjF;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id c24si46719lfc.0.2022.02.17.14.25.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Feb 2022 14:25:06 -0800 (PST)
Received-SPF: pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Received: by mail-ed1-x532.google.com with SMTP id cm8so2549812edb.3
        for <linux-ntb@googlegroups.com>; Thu, 17 Feb 2022 14:25:06 -0800 (PST)
X-Received: by 2002:a50:9d06:0:b0:410:befc:dda7 with SMTP id
 v6-20020a509d06000000b00410befcdda7mr4979715ede.443.1645136706021; Thu, 17
 Feb 2022 14:25:06 -0800 (PST)
MIME-Version: 1.0
References: <20220215053844.7119-3-Frank.Li@nxp.com> <20220217215942.GA308686@bhelgaas>
In-Reply-To: <20220217215942.GA308686@bhelgaas>
From: Zhi Li <lznuaa@gmail.com>
Date: Thu, 17 Feb 2022 16:24:56 -0600
Message-ID: <CAHrpEqSWZaLan18+s_h2fLeKxqOv3yM2Zo7hr_P03bBBKvMYVA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/4] NTB: epf: Added more flexible memory map method
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, linux-pci@vger.kernel.org, kishon@ti.com, 
	lorenzo.pieralisi@arm.com, kw@linux.com, jingoohan1@gmail.com, 
	gustavo.pimentel@synopsys.com, hongxing.zhu@nxp.com, 
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	linux-ntb@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lznuaa@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=GGIJlrjF;       spf=pass
 (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::532 as
 permitted sender) smtp.mailfrom=lznuaa@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 17, 2022 at 3:59 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> [+cc Jon, Dave, Allen, linux-ntb, since you need at least an ack from
> the NTB folks; beginning of thread:
> https://lore.kernel.org/r/20220215053844.7119-1-Frank.Li@nxp.com]
>
> In subject, s/Added/Add/.
>
> But I don't think it's quite right yet, because this doesn't actually add
> any functions.

How about "Allow more flexibility in the memory bar map method"?

>
> On Mon, Feb 14, 2022 at 11:38:42PM -0600, Frank Li wrote:
> > Supported below memory map method
> >
> > bar 0: config and spad data
> > bar 2: door bell
> > bar 4: memory map windows
>
> s/bar/BAR/
> s/spad/?/ (I don't know what this is)

SCRATCHPAD REGION
https://www.kernel.org/doc/html/latest/driver-api/ntb.html

>
> Presumably these BAR numbers apply to some specific hardware?  This
> probably should specify *which* hardware.

Yes, BAR number on the EP side is configurable, which is controlled in
the 3/4 patch.
The Original BAR memory method can't be used in the new RC->EP NTB usage mode.
Most Other code can be reused, so I enhanced the bar number config part.

>
> Please make the commit log say what this patch does.

Does it help if attach ASCII diagram in patch 3/4 or cover letter one

>
> > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > ---
> >  drivers/ntb/hw/epf/ntb_hw_epf.c | 48 ++++++++++++++++++++++++---------
> >  1 file changed, 35 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c b/drivers/ntb/hw/epf/ntb_hw_epf.c
> > index b019755e4e21b..3ece49cb18ffa 100644
> > --- a/drivers/ntb/hw/epf/ntb_hw_epf.c
> > +++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
> > @@ -45,7 +45,6 @@
> >
> >  #define NTB_EPF_MIN_DB_COUNT 3
> >  #define NTB_EPF_MAX_DB_COUNT 31
> > -#define NTB_EPF_MW_OFFSET    2
> >
> >  #define NTB_EPF_COMMAND_TIMEOUT      1000 /* 1 Sec */
> >
> > @@ -67,6 +66,7 @@ struct ntb_epf_dev {
> >       enum pci_barno ctrl_reg_bar;
> >       enum pci_barno peer_spad_reg_bar;
> >       enum pci_barno db_reg_bar;
> > +     enum pci_barno mw_bar;
> >
> >       unsigned int mw_count;
> >       unsigned int spad_count;
> > @@ -92,6 +92,8 @@ struct ntb_epf_data {
> >       enum pci_barno peer_spad_reg_bar;
> >       /* BAR that contains Doorbell region and Memory window '1' */
> >       enum pci_barno db_reg_bar;
> > +     /* BAR that contains memory windows*/
> > +     enum pci_barno mw_bar;
> >  };
> >
> >  static int ntb_epf_send_command(struct ntb_epf_dev *ndev, u32 command,
> > @@ -411,7 +413,7 @@ static int ntb_epf_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
> >               return -EINVAL;
> >       }
> >
> > -     bar = idx + NTB_EPF_MW_OFFSET;
> > +     bar = idx + ndev->mw_bar;
> >
> >       mw_size = pci_resource_len(ntb->pdev, bar);
> >
> > @@ -453,7 +455,7 @@ static int ntb_epf_peer_mw_get_addr(struct ntb_dev *ntb, int idx,
> >       if (idx == 0)
> >               offset = readl(ndev->ctrl_reg + NTB_EPF_MW1_OFFSET);
> >
> > -     bar = idx + NTB_EPF_MW_OFFSET;
> > +     bar = idx + ndev->mw_bar;
> >
> >       if (base)
> >               *base = pci_resource_start(ndev->ntb.pdev, bar) + offset;
> > @@ -565,6 +567,7 @@ static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
> >                           struct pci_dev *pdev)
> >  {
> >       struct device *dev = ndev->dev;
> > +     size_t spad_sz, spad_off;
> >       int ret;
> >
> >       pci_set_drvdata(pdev, ndev);
> > @@ -599,10 +602,16 @@ static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
> >               goto err_dma_mask;
> >       }
> >
> > -     ndev->peer_spad_reg = pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
> > -     if (!ndev->peer_spad_reg) {
> > -             ret = -EIO;
> > -             goto err_dma_mask;
> > +     if (ndev->peer_spad_reg_bar) {
> > +             ndev->peer_spad_reg = pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
> > +             if (!ndev->peer_spad_reg) {
> > +                     ret = -EIO;
> > +                     goto err_dma_mask;
> > +             }
> > +     } else {
> > +             spad_sz = 4 * readl(ndev->ctrl_reg + NTB_EPF_SPAD_COUNT);
> > +             spad_off = readl(ndev->ctrl_reg + NTB_EPF_SPAD_OFFSET);
> > +             ndev->peer_spad_reg = ndev->ctrl_reg + spad_off  + spad_sz;
> >       }
> >
> >       ndev->db_reg = pci_iomap(pdev, ndev->db_reg_bar, 0);
> > @@ -657,6 +666,7 @@ static int ntb_epf_pci_probe(struct pci_dev *pdev,
> >       enum pci_barno peer_spad_reg_bar = BAR_1;
> >       enum pci_barno ctrl_reg_bar = BAR_0;
> >       enum pci_barno db_reg_bar = BAR_2;
> > +     enum pci_barno mw_bar = BAR_2;
> >       struct device *dev = &pdev->dev;
> >       struct ntb_epf_data *data;
> >       struct ntb_epf_dev *ndev;
> > @@ -671,17 +681,16 @@ static int ntb_epf_pci_probe(struct pci_dev *pdev,
> >
> >       data = (struct ntb_epf_data *)id->driver_data;
> >       if (data) {
> > -             if (data->peer_spad_reg_bar)
> > -                     peer_spad_reg_bar = data->peer_spad_reg_bar;
> > -             if (data->ctrl_reg_bar)
> > -                     ctrl_reg_bar = data->ctrl_reg_bar;
> > -             if (data->db_reg_bar)
> > -                     db_reg_bar = data->db_reg_bar;
> > +             peer_spad_reg_bar = data->peer_spad_reg_bar;
> > +             ctrl_reg_bar = data->ctrl_reg_bar;
> > +             db_reg_bar = data->db_reg_bar;
> > +             mw_bar = data->mw_bar;
> >       }
> >
> >       ndev->peer_spad_reg_bar = peer_spad_reg_bar;
> >       ndev->ctrl_reg_bar = ctrl_reg_bar;
> >       ndev->db_reg_bar = db_reg_bar;
> > +     ndev->mw_bar = mw_bar;
> >       ndev->dev = dev;
> >
> >       ntb_epf_init_struct(ndev, pdev);
> > @@ -729,6 +738,14 @@ static const struct ntb_epf_data j721e_data = {
> >       .ctrl_reg_bar = BAR_0,
> >       .peer_spad_reg_bar = BAR_1,
> >       .db_reg_bar = BAR_2,
> > +     .mw_bar = BAR_2,
> > +};
> > +
> > +static const struct ntb_epf_data mx8_data = {
> > +     .ctrl_reg_bar = BAR_0,
> > +     .peer_spad_reg_bar = BAR_0,
> > +     .db_reg_bar = BAR_2,
> > +     .mw_bar = BAR_4,
> >  };
> >
> >  static const struct pci_device_id ntb_epf_pci_tbl[] = {
> > @@ -737,6 +754,11 @@ static const struct pci_device_id ntb_epf_pci_tbl[] = {
> >               .class = PCI_CLASS_MEMORY_RAM << 8, .class_mask = 0xffff00,
> >               .driver_data = (kernel_ulong_t)&j721e_data,
> >       },
> > +     {
> > +             PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, 0x0809),
> > +             .class = PCI_CLASS_MEMORY_RAM << 8, .class_mask = 0xffff00,
> > +             .driver_data = (kernel_ulong_t)&mx8_data,
> > +     },
> >       { },
> >  };
> >
> > --
> > 2.24.0.rc1
> >

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAHrpEqSWZaLan18%2Bs_h2fLeKxqOv3yM2Zo7hr_P03bBBKvMYVA%40mail.gmail.com.
