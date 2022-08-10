Return-Path: <linux-ntb+bncBCS4BDN7YUCRBYVLZ6LQMGQEWJFBQLY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8071458EFE5
	for <lists+linux-ntb@lfdr.de>; Wed, 10 Aug 2022 17:59:31 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id j20-20020adfb314000000b00220d9957623sf2342836wrd.0
        for <lists+linux-ntb@lfdr.de>; Wed, 10 Aug 2022 08:59:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660147171; cv=pass;
        d=google.com; s=arc-20160816;
        b=Na8E0fnDLwWjIlY6O7i4K0L2fMCg+JLNuQOGlSPgg81fz1Pkl6CGU2e3dNLLhLq37/
         aIHE6cqKqUuCiHcxtkb+YRVI92hASASdUVZ6qEW9z3mw0yYvvA0ZycOmIIzYvSkTJh1D
         G2U0tw0MMGj0DZjxUwPAkSJ/xAG/bli8/R0mQ/wC9X9brvZL5hpdoyf2CtdPFm790EzJ
         fbnt3SoxwG2exvwy/bjR6dYK3cD/OHgOU745RVCnMkZ7lBq9Vx7QkFbVMd7kD2F1FVSI
         VjJnh09iz1db0b0tpQoDCwjwS4/TByNd5swLe8nzBBkWyGwbhiFcRECDh8QR9NlRFl6a
         Saow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=6t++hxRBjfRmcLG/NpO6R7N7KWkkAlct189O5lUjSfw=;
        b=RtZCRnonPe0ix7iKfZcdcNF5vlzyZyLX0cvYPLov4u7WHed2yUzWXKcBfWBXjp6VaW
         vxFQRCgzRKtmXydpVuvzGpjaVTFsaKb+GLEkZbW5cfv8LU7THJItmnB29wzoc+sxBuz9
         HxyviLlzgDL/SHW+ErAez42BESTxT1LNGPgDqMqTD1G4MuWkBVp5vczaWRlAs75OVYzB
         t7YK6ZkCw7zqyNhIxJM8SlNoZ2Vma/3DC29M14mBE2jdIRnp263f1qvz0bbwy+FifHTT
         MaGFHX+OUJbj5AzqQODQbyeF8Wp6pYj/mOPpRfYaTP9iqtTQ8oSJ29KuecW8DHwXq1Ai
         FLgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b="Mlt/Mjxf";
       spf=neutral (google.com: 2a00:1450:4864:20::22a is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc;
        bh=6t++hxRBjfRmcLG/NpO6R7N7KWkkAlct189O5lUjSfw=;
        b=H9JbfpoKz3sx3ap6bObevKeCv1BQxHp93nnlb4wH8qsknw12fHjhmvLhL9ro3jxd76
         nEDyIvOvGcwiDMroXMKr8WlbrWc7SKPRjfNDncmWdW7r5ckou1EchmOS4N9fdF63C8SA
         NP9E2t/u7xz5/fUY7Lx48Bt+bAZuX3k6jDgQLlzCkzDA9vEAGAVObgdtUhLby7QE/9nQ
         eg3iRWzLb4dOaSPavpMXgnniSmtybqPlCtcW00ae7UqItnnNDMrLSf2pLjFjo8RHDs3v
         lQv+SwCQ34xd31lswC/vKHEivkBlkzYkdrfUELPt0KgSZyH9nvbm4rYNk6m6Yjkg+VBR
         33pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc;
        bh=6t++hxRBjfRmcLG/NpO6R7N7KWkkAlct189O5lUjSfw=;
        b=CFYsd45NrVhlG9Q+MLfsHJVcRSeEPjkTTDb4utew3hd9CMT2gCCddEQqiTNBLmZ0b/
         ZbhAvY025DiCtZGT3IreGom9caVSsJ9qqxEVVcfAGDYLjfn0166GCi5OHNdMngOCqv6m
         GgOrLXnd9Rmkjeag03QNG+sr7BDyqN5cIvmPFT1S4B/RKcNyB1uUHcWahjsb1Xh1heGl
         kUH2J1PiA4AeNZnIolYxHhN/xnH+leKnxUJOMmLODL7W+oHiJt9H1clkHisErPDVE2Kd
         aeZ1CGBuah3eMMR0FpC54rZVv+NqHeS40ocoUt+ixdZLUUNOT+SGtQBIWpiLo4Q0XbPA
         ypUQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACgBeo3SLwuTFlmupf6u+7Q8SJ8jQ2WHHs9u98joNAp9arJcnyULreZy
	0lLey4xAFPqHb78K0MF6hbY=
X-Google-Smtp-Source: AA6agR5lrwtnry5X4EgAQ0tbZELspmqERAMcqYlGP+KMJdziOtxiip9J13qn8KAeUBWMDiYE6zO/iA==
X-Received: by 2002:a05:6000:1a89:b0:222:c343:dc5b with SMTP id f9-20020a0560001a8900b00222c343dc5bmr11500364wry.348.1660147171103;
        Wed, 10 Aug 2022 08:59:31 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:d236:0:b0:21e:e644:c8 with SMTP id k22-20020adfd236000000b0021ee64400c8ls9760126wrh.3.-pod-prod-gmail;
 Wed, 10 Aug 2022 08:59:30 -0700 (PDT)
X-Received: by 2002:a05:6000:1283:b0:21f:168f:4796 with SMTP id f3-20020a056000128300b0021f168f4796mr18848173wrx.615.1660147170088;
        Wed, 10 Aug 2022 08:59:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660147170; cv=none;
        d=google.com; s=arc-20160816;
        b=BOwevsfeJ60zKWZRxLh7eEDWU7jyJZhPnec14vqgtoWuUcb9Le/SFI1T6yNFtWmJzs
         T0FkXl3Wt7DKtMNFcymBhA9BTgkcFo4AJmdLqIJedIT+2BvewTsAemutK3e3L59V3HaX
         j4X2psZXua/EXvZksn5kcVOK8UhV17ENPRjUL+KLbGJk/RD5gIpRVCyw6cWaaA3r2gGk
         D7ZE741HMHmD1OsO15x9EKQGPVtcFGUFtLAOpB3cFG9my9cIhF4psevhqf+NqDSdKgXY
         sO/zYk0cPBROnKItLFsibpefIuJLnTzGffsETatQOiJVg2oadUUhBWonfHWI+l8ICBW9
         ARQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tGGr2AGZztDX6+tZMGrOYrHeGGoDqGQ1tYNC+VSx13Q=;
        b=NIE0i89IAkQrIsl3zbzn8nZvlrpo9j05031b8pt7w+u22fUK5KAsClpBqcJE8jLXzH
         cNilv4aXXokO4RfamkukKLthW8XMYbyLSHmj87ri2lTsC6st6KilAMvLgfp2tJoYi5Pb
         xhMxhTS7A1ReV/olHAbpRkqADtsp30d6fwJpCh2cUszkUKnXHiEUXM02R7oXkXMxLd/O
         eboOHVy02jMSfKJPmuHVduO7SuxCrDWTmrDlJ9iv/k5Fv4ZFNoINugEOIMIbYiVwfI3s
         0nWCCv3Fhqi7lcISpbgRXxjubm3TeOovKKNYpleLO74XCzLtcZAW1ypgjliQtoWWuFu/
         xmKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b="Mlt/Mjxf";
       spf=neutral (google.com: 2a00:1450:4864:20::22a is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id ay16-20020a5d6f10000000b002236ac50ec6si165588wrb.6.2022.08.10.08.59.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 08:59:30 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::22a is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id w15so16577941ljw.1
        for <linux-ntb@googlegroups.com>; Wed, 10 Aug 2022 08:59:30 -0700 (PDT)
X-Received: by 2002:a2e:9950:0:b0:25e:5777:a17b with SMTP id
 r16-20020a2e9950000000b0025e5777a17bmr8951036ljj.32.1660147169656; Wed, 10
 Aug 2022 08:59:29 -0700 (PDT)
MIME-Version: 1.0
References: <202208102343.yHsh1iyB-lkp@intel.com>
In-Reply-To: <202208102343.yHsh1iyB-lkp@intel.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Wed, 10 Aug 2022 11:59:18 -0400
Message-ID: <CAPoiz9x=Uy0q-Z9hB+xmGMfCvAz=Z1iLvHfRsNe6=Ac37Ui+Wg@mail.gmail.com>
Subject: Re: [jonmason-ntb:ntb-next-hacking 16/18] drivers/irqchip/irq-imx-mu-msi.c:128:
 undefined reference to `pci_msi_unmask_irq'
To: kernel test robot <lkp@intel.com>
Cc: Frank Li <Frank.Li@nxp.com>, kbuild-all@lists.01.org, linux-ntb@googlegroups.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b="Mlt/Mjxf";       spf=neutral (google.com: 2a00:1450:4864:20::22a is
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

On Wed, Aug 10, 2022 at 11:47 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://github.com/jonmason/ntb ntb-next-hacking
> head:   d90921d21692b59734d2452efea346217a526f44
> commit: 1db755129d2544df84dc197095c14170cfa419c7 [16/18] irqchip: imx mu worked as msi controller
> config: arm64-randconfig-r022-20220810 (https://download.01.org/0day-ci/archive/20220810/202208102343.yHsh1iyB-lkp@intel.com/config)
> compiler: aarch64-linux-gcc (GCC) 12.1.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/jonmason/ntb/commit/1db755129d2544df84dc197095c14170cfa419c7
>         git remote add jonmason-ntb https://github.com/jonmason/ntb
>         git fetch --no-tags jonmason-ntb ntb-next-hacking
>         git checkout 1db755129d2544df84dc197095c14170cfa419c7
>         # save the config file
>         mkdir build_dir && cp config build_dir/.config
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash
>
> If you fix the issue, kindly add following tag where applicable
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    aarch64-linux-ld: Unexpected GOT/PLT entries detected!
>    aarch64-linux-ld: Unexpected run-time procedure linkages detected!
>    aarch64-linux-ld: ID map text too big or misaligned
>    aarch64-linux-ld: drivers/irqchip/irq-imx-mu-msi.o: in function `imx_mu_msi_unmask_irq':
> >> drivers/irqchip/irq-imx-mu-msi.c:128: undefined reference to `pci_msi_unmask_irq'
>    aarch64-linux-ld: drivers/irqchip/irq-imx-mu-msi.o: in function `imx_mu_msi_mask_irq':
> >> drivers/irqchip/irq-imx-mu-msi.c:120: undefined reference to `pci_msi_mask_irq'
>
>
> vim +128 drivers/irqchip/irq-imx-mu-msi.c
>
>    115
>    116  static void imx_mu_msi_mask_irq(struct irq_data *data)
>    117  {
>    118          struct imx_mu_msi *msi_data = irq_data_get_irq_chip_data(data->parent_data);
>    119
>  > 120          pci_msi_mask_irq(data);
>    121          imx_mu_xcr_rmw(msi_data, IMX_MU_RCR, 0, IMX_MU_xCR_RIEn(msi_data->cfg->type, data->hwirq));
>    122  }
>    123
>    124  static void imx_mu_msi_unmask_irq(struct irq_data *data)
>    125  {
>    126          struct imx_mu_msi *msi_data = irq_data_get_irq_chip_data(data->parent_data);
>    127
>  > 128          pci_msi_unmask_irq(data);
>    129          imx_mu_xcr_rmw(msi_data, IMX_MU_RCR, IMX_MU_xCR_RIEn(msi_data->cfg->type, data->hwirq), 0);
>    130  }
>    131
>
> --
> 0-DAY CI Kernel Test Service
> https://01.org/lkp

And deleting this branch now.  Never intended this branch to be for
public consumption....

Thanks,
Jon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9x%3DUy0q-Z9hB%2BxmGMfCvAz%3DZ1iLvHfRsNe6%3DAc37Ui%2BWg%40mail.gmail.com.
