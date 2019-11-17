Return-Path: <linux-ntb+bncBCS4BDN7YUCRBEFCY7XAKGQE7BG4PII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 240B2FFC1E
	for <lists+linux-ntb@lfdr.de>; Mon, 18 Nov 2019 00:00:34 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id x1sf7530098vkc.19
        for <lists+linux-ntb@lfdr.de>; Sun, 17 Nov 2019 15:00:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574031633; cv=pass;
        d=google.com; s=arc-20160816;
        b=XxE+m9wi4JSCtrz3qGeFZxpoZ+7xOCmQ8A66egB2eXJ4lTB2RJjJxvScQFs264mxVn
         e4HbXNtkpvxwK1yct24e7dmQyXKiLEqnC4OkNLveqJXIl2asN/Nq5RcT2gM00TqpXGK1
         ozLqMdmHSMi7KBojsXjuxgwginR0vIPRlIXogB4KXbsAoRVYjOYzUf3KhfOK1phO3+IC
         Xw4wObGqndrBZ0mkbERDiIsjSViuNPBU+1rpOou7KIqzE6YXH7tYZW12MLOzubMmKTqs
         znnihVnAccq0r3kjUh5gdaBz2wXVTO/v+aC/nmTcwzwA547kiLuudxFMh11ZbOiSzJ3T
         VSyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=SwFoJZf6rgqYnsa+0Of6ZgjbscNLaIcmarnzQmBIWdw=;
        b=CPLUSvfSzDh05iM6KJD+6Q4Ori8dpwRHoDUTQcxVIkWwdwVIjN9boEFmj4efSniY0s
         HoB0wf3hP7ZzP89QUcIJ/w05TP9R6E3StiOo5Yb/Pe56Sy0xnDkd8kqzxj8q146zdGF5
         /KvihzaI7t76RuXGF3NShZWFygQ85CuppGqSqGYHVfqXJ9eq0Zt54H5MEqI9sg9tt4Wt
         WP3Fc+BdstXkWuoVGi2X1a5REg1Eoo6sYLcDV8jjrtL4IU0vfceaWMrxF0NtT7YKw15a
         76+foGFKBp4OGXYsgA7r5hzB94uzhPJvICU7CksyZf1QGHcza/71WHluRYiBU9ybj2fu
         zs8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=0+akr7oq;
       spf=neutral (google.com: 2607:f8b0:4864:20::141 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SwFoJZf6rgqYnsa+0Of6ZgjbscNLaIcmarnzQmBIWdw=;
        b=tKB0hGdshAxbwObXLVq/f25+Io1/8qQmCDjDb7n3X82dnl7PGmbQM6eZkLzEDSwPCt
         N+nnIgqk8sKbMQBjsXMIHuKGGmE4VldcNDyrKT3exK5n8CFpPd2t4vxijpf6kFaHNuZ6
         pMCeJgadVJNZMZYjhc1XJ6C6cRT4bYrCPoAmIVZ0zpgS9hUJrVQYblQjBWf17Qmogn1r
         pgMp5pB0L7808vG4SbHv53Cmq3WDFJUykRlYM3gouVQn7kHhN/CwBEO7nvrHeEQdKuRR
         qxK7jvE0RJNehKB0wxtlwsX+rVXu8Uy3ygRXmoDWGh/7rJTSt/77/Ovffwlr51C1JgOz
         3x/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SwFoJZf6rgqYnsa+0Of6ZgjbscNLaIcmarnzQmBIWdw=;
        b=Phqbbx+oJVWqmLx/LWZvsSTdRpIVUK94W+vg93nE0drApgfWUsbo3QL8TnaXyxyh6s
         jYI3VpFqo5tvyHvXZ5bj08HmeWAYsdV0FujHrxsO5Kjg2JMqm8AVt0MrHusqBko4HAKt
         ShREkg2nVtql9DpCcTV0Hswoewyz+iFUQJQLMtH0Ye9R5qiXXSygILoWxTMqEpoG7lzC
         VCZfb0Zt4/OJkVHcVDcPOXwvcovflYeZeEPeUKUJu5Yyv+zJT2n23rkOCqZcYccxnUv1
         wpd+NigGrxNDwX2sAaSz5ApzievE/01G3MsbdtLySVwoxiZB58mKqpJnoP0Iklp1aisz
         Z1bQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVRxmC0vLEIQwuFWnc50DyMYyyxir913QUbes86P+LBcIzYhcuJ
	R+hf8J9YzBdyTXi1Jes/GoQ=
X-Google-Smtp-Source: APXvYqx9x6dE8VykA6yJIPDh0yQa2uFqzQtLjqkrcBQVaOVaAwnXn984q+9uBzm+65DPkudIWRwnhg==
X-Received: by 2002:ab0:48ab:: with SMTP id x40mr15588589uac.126.1574031632593;
        Sun, 17 Nov 2019 15:00:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:e8ca:: with SMTP id y10ls1669429vsn.7.gmail; Sun, 17 Nov
 2019 15:00:32 -0800 (PST)
X-Received: by 2002:a05:6102:382:: with SMTP id m2mr16409827vsq.204.1574031632075;
        Sun, 17 Nov 2019 15:00:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574031632; cv=none;
        d=google.com; s=arc-20160816;
        b=dvCAqW9yDeTHKHNlYpRsF7mIjxRJnDG6Hr+cpbxCcSzyYSDqSq7y5GRliMzsb+Mt89
         BfnM7wXBupqnKGL8dZcYJqSXRuHrJ90nZ95/ueLC+qVlkjeewct9YJ6g5fiawOJ+uA73
         d6VNlr0JVD4HpIKExDzH9N9Hwnw1IGcZYkOvmpE34Drp00HqpIWBxfw3qBM+ySHSIwrO
         +3U5hGWy8pJG82e4bmekSaxWacakWb7dfYn6Qh2mymuSSelGP0Zzbnuhg+LhpS1MUTkn
         P8GveewhvIPuFeuigsvyqdMiTDTH8hwnZfTYl+RjoHlGHfwayKB/R1O/W9ifJCjO0+I1
         nwgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d/1Y1QsI93gAHAKWqh4KEcte8aqnaRPIZE1b5kmVqj0=;
        b=XwpUoUKlvZBF9egCFXu6DzgMR5PyeFFNOxFnA0t/+jZFE5WJINzGu/QRswNU82kTFw
         quo5bFVFj6uq8Md4V6D6j/arFs+IKlVZB3JsQ9BiqsNk1Tfc0X1UUHUlSTkyUxah7ZiB
         zSk0goH8wdXqQgqonI867456q0o7/go9yNtebhnZNPuwuHkhPEzeQg7pPGx3NAGR+5yZ
         dSo+uSn5wLER+7ejmhZvy+CefPbZD7Vhmb6HBvrf0sGOKcWZVjCo25PLmp1Mzh7tyzAN
         CXqbQWtWmVGzKSALX1r+a2Vc6Kw2WxiZPCfy264DYmTu0Y6N8udndOq53Rv5/rFZZvHs
         b6SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=0+akr7oq;
       spf=neutral (google.com: 2607:f8b0:4864:20::141 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id f22si861157uan.1.2019.11.17.15.00.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Nov 2019 15:00:31 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::141 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id q1so14237190ile.13
        for <linux-ntb@googlegroups.com>; Sun, 17 Nov 2019 15:00:31 -0800 (PST)
X-Received: by 2002:a92:46c9:: with SMTP id d70mr11936574ilk.159.1574031631207;
 Sun, 17 Nov 2019 15:00:31 -0800 (PST)
MIME-Version: 1.0
References: <1573119336-107732-1-git-send-email-linjiasen@hygon.cn>
In-Reply-To: <1573119336-107732-1-git-send-email-linjiasen@hygon.cn>
From: Jon Mason <jdmason@kudzu.us>
Date: Sun, 17 Nov 2019 18:00:17 -0500
Message-ID: <CAPoiz9wAJz=Hqb6Os=9AHHv_NGpZ8uCaAuOC=aUTkASKdfs9WQ@mail.gmail.com>
Subject: Re: [PATCH] NTB: Fix an error in get link status
To: Jiasen Lin <linjiasen@hygon.cn>
Cc: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>, Dave Jiang <dave.jiang@intel.com>, 
	Allen Hubbe <allenbh@gmail.com>, linux-kernel <linux-kernel@vger.kernel.org>, 
	linux-ntb <linux-ntb@googlegroups.com>, linjiasen007@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=0+akr7oq;       spf=neutral (google.com: 2607:f8b0:4864:20::141 is
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

On Thu, Nov 7, 2019 at 4:37 AM Jiasen Lin <linjiasen@hygon.cn> wrote:
>
> The offset of PCIe Capability Header for AMD and HYGON NTB is 0x64,
> but the macro which named "AMD_LINK_STATUS_OFFSET" is defined as 0x68.
> It is offset of Device Capabilities Reg rather than Link Control Reg.
>
> This code trigger an error in get link statsus:
>
>         cat /sys/kernel/debug/ntb_hw_amd/0000:43:00.1/info
>                 LNK STA -               0x8fa1
>                 Link Status -           Up
>                 Link Speed -            PCI-E Gen 0
>                 Link Width -            x0
>
> This patch use pcie_capability_read_dword to get link status.
> After fix this issue, we can get link status accurately:
>
>         cat /sys/kernel/debug/ntb_hw_amd/0000:43:00.1/info
>                 LNK STA -               0x11030042
>                 Link Status -           Up
>                 Link Speed -            PCI-E Gen 3
>                 Link Width -            x16

No response from AMD maintainers, but it looks like you are correct.

This needs a "Fixes:" line here.  I took the liberty of adding one to
this patch.

> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
> ---
>  drivers/ntb/hw/amd/ntb_hw_amd.c | 5 +++--
>  drivers/ntb/hw/amd/ntb_hw_amd.h | 1 -
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
> index 156c2a1..ae91105 100644
> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
> @@ -855,8 +855,8 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
>
>         ndev->cntl_sta = reg;
>
> -       rc = pci_read_config_dword(ndev->ntb.pdev,
> -                                  AMD_LINK_STATUS_OFFSET, &stat);
> +       rc = pcie_capability_read_dword(ndev->ntb.pdev,
> +                                  PCI_EXP_LNKCTL, &stat);
>         if (rc)
>                 return 0;
>         ndev->lnk_sta = stat;
> @@ -1139,6 +1139,7 @@ static const struct ntb_dev_data dev_data[] = {
>  static const struct pci_device_id amd_ntb_pci_tbl[] = {
>         { PCI_VDEVICE(AMD, 0x145b), (kernel_ulong_t)&dev_data[0] },
>         { PCI_VDEVICE(AMD, 0x148b), (kernel_ulong_t)&dev_data[1] },
> +       { PCI_VDEVICE(HYGON, 0x145b), (kernel_ulong_t)&dev_data[0] },

This should be a separate patch.  I took the liberty of splitting it
off into a unique patch and attributing it to you.  I've pushed them
to the ntb-next branch on
https://github.com/jonmason/ntb

Please verify everything looks acceptable to you (given the changes I
did above that are attributed to you).  Also, testing of the latest
code is always appreciated.

Thanks,
Jon


>         { 0, }
>  };
>  MODULE_DEVICE_TABLE(pci, amd_ntb_pci_tbl);
> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
> index 139a307..39e5d18 100644
> --- a/drivers/ntb/hw/amd/ntb_hw_amd.h
> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
> @@ -53,7 +53,6 @@
>  #include <linux/pci.h>
>
>  #define AMD_LINK_HB_TIMEOUT    msecs_to_jiffies(1000)
> -#define AMD_LINK_STATUS_OFFSET 0x68
>  #define NTB_LIN_STA_ACTIVE_BIT 0x00000002
>  #define NTB_LNK_STA_SPEED_MASK 0x000F0000
>  #define NTB_LNK_STA_WIDTH_MASK 0x03F00000
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1573119336-107732-1-git-send-email-linjiasen%40hygon.cn.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9wAJz%3DHqb6Os%3D9AHHv_NGpZ8uCaAuOC%3DaUTkASKdfs9WQ%40mail.gmail.com.
