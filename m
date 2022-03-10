Return-Path: <linux-ntb+bncBCHOPY7NVYCRB3PNVGIQMGQE4XBP6TQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 074574D542A
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Mar 2022 23:08:46 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id h21-20020a056512221500b0044859ece797sf1676641lfu.15
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Mar 2022 14:08:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646950125; cv=pass;
        d=google.com; s=arc-20160816;
        b=EgeTApIextdc5q9s6tZmbM+5jQSOR4ca8QC9ckFfKabtlTj4D/XpJ2lUoUvT2W36s1
         /3y0Y3HZGDvSl7CfGLpHfZxpArbSUBAN3PW/3PvngqzoTBV/TDw+udlfkSch6HupeGEc
         GrXzFh2kNmPCqWQst+Nb7pcu6CpVVSGgmbZbY1PnKLNapWfAJBswdL0tJNEod8Nnesm/
         eitpEuxyE50BMJ/JBO3lTAz52DDstk5/Wli/NnoP+XTQEXRIcUOuw4IBmS3CDBZMmVgp
         k/eDtp1AwDeWv0CFc8W4gJqPMz35SdlQTbUPauCrKbqhasnAXUIP9n5LyTLO8czEchnP
         dETA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wTndMFg47yLLDZGy7sf/pvuxDg6POHkclRIP9VFPyCg=;
        b=0rShftEDyGdW2AWpKN/bSr8+fnwxVnw1mJ7QXWPHFPi5u5kDWvnU42XZSE2P8LK06/
         Za9D8mWjH1r+lTPYtAFd8oGsPYsGO4gzhjq1NgI9WqDRiMH6dhH/rtJR6cLb+iWpjpM0
         naCRv/sYx0eRlY0PRZA7FKYG0nFp12iBfO2ruJvGFZ0nXc1Z2/wiYDGmQIX3jACE/q/m
         uDEc9RQkSNxMzUb8XSCGy9nGEUfthO+KFGL3G7P+2uIq35PiuqZPX9T4LKjU5HbDkwXm
         zNN9nU3MiYNC1lsKXQnVp56+u5TqOFZW5fk1SuakrnOKZfRv+ZuB1iYmRzAkIEPATgU+
         anFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lxOlvZfn;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wTndMFg47yLLDZGy7sf/pvuxDg6POHkclRIP9VFPyCg=;
        b=ZE+3wgrGjKRYzmXE2m9Krjf9gjOcUYDC1Po9WmfKLSgikGzaWKH9Hd5as0Dv7O0lpV
         3J2VmIJYg1QlSmgParsz+iLgY7C7sqVes4Zv5yGtgkqjoIgvSmnq4rm/+BgKJUJXTfkx
         jxIz5EBCxjFvPg5nnBeDgwv1Yx0ApR2SaQN1IzIUVolnVsqNhqLY3aX2u1ItmoA6X02l
         DRk3Lg4SYzBVWQvaXo1wwaMX+PD9HL0ybz3WoxWGV6CuHbq4brHz2YqiZpiqhPbSh6Qp
         sgZY+TBclrlOFOMrmbj/tV923bUuuVGZxPZ4FabU9sJg4EQzAn8vZwm/PVyhVbewfguI
         6+4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wTndMFg47yLLDZGy7sf/pvuxDg6POHkclRIP9VFPyCg=;
        b=pVGQwCpf0A+sS7Xx7SpxmRYBEZXnnPX0yKW/1pdEhpZUa1JrITA0U4nwMLq8V0yRP4
         b6YNslk2Y7YIrpNjVIU6uiXZQ8DX9fzxYzP3cJrxc3Pt7cn0pwkBPaQSi+h4ujGfINuW
         Y/RxGs7q3THJQpbDg9ez0oWq2COwrL169Tu/+Z2XwjILGOBxqha+SwxYuoN9W83F6xfg
         FQXYMibbWNtItWkiVQL2YPi2EcrlqWzfWOD+ocUooL7G37PdH4p2z1G6l/d2i4CYq3CC
         iWBC01CRlKjHkAgUzy6aw7QSDaBQdt7T6lWQ0sZwZmDhRfUd4pM3UgVBVM9oLxsCFqCx
         VLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wTndMFg47yLLDZGy7sf/pvuxDg6POHkclRIP9VFPyCg=;
        b=K1GQ7PEFheXeUfsR89TxNQBLCW+nE+ZdYcdwdq6rQr9fN2930gSBpv4WrRptmSzzSj
         Eb5IeDtOOtLXA6JVJpaA4a9pTfh1UOtl4Vc3hZCmrK6nowf1BovqMYmXjs/cGr1PJ2UP
         Kfy0HUnEjB/qR7KX4MyG4KdDNv6yOKSZ5+871wIUVws/vDHxMv3svIN5LiuN3orOIm9X
         Vd+gsIg3FmkBoGJftpQJJOLXRXlPeDBwvmniiRp9NdN4STRuIy1s/F843yISCIWSV2i+
         dGw+EdtE/f/aAsV+nBsmfmE+qmGjXwVLSnKvuRse2XbOS6AA7ukVaqD5+BvnBRDZhl4O
         33oA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532h6uC8AijvIusBzSb0nKZiR4BnYHqFtTr3QCPujYIF4tNqDFqu
	OhiPOR0F57EnLEPlVuSSvSU=
X-Google-Smtp-Source: ABdhPJxzwqLsKtazNveCbbuRMuhr01EuwRTfqTL9Ed4xeQO7fq039Qt7CVubjnbOmFS0f2dvFf70aw==
X-Received: by 2002:a05:651c:1542:b0:246:36c:8d1f with SMTP id y2-20020a05651c154200b00246036c8d1fmr4286262ljp.311.1646950125306;
        Thu, 10 Mar 2022 14:08:45 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:b710:0:b0:249:1800:6d81 with SMTP id j16-20020a2eb710000000b0024918006d81ls280334ljo.0.gmail;
 Thu, 10 Mar 2022 14:08:44 -0800 (PST)
X-Received: by 2002:a05:651c:19a2:b0:247:c14d:e3ac with SMTP id bx34-20020a05651c19a200b00247c14de3acmr4202983ljb.336.1646950124268;
        Thu, 10 Mar 2022 14:08:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646950124; cv=none;
        d=google.com; s=arc-20160816;
        b=nX6/dtbe+Gf4Kw50g+w75TACf/01ra8/HFypLSyA6Xd4/kDYlU+D/2kOEl72mlWnRa
         Am44e+MHNUKpeOCoUl/lYIErBq5Dbu9l+RHsr8Vs/ClbRPSbIKsz5ILz+3yiJA2LaCU0
         Dmlbi69R6xJZSPRFUmLKRpUpwwpRrZYp9FXLoC0tk2eojsVSgSUgTFZOKbRWLcy39hv/
         b/7SUbrXjgcQlUXvbsqz4XRE7wjiIk+XwOWVrBNrUlQjhM8qYjYkL9hE5sWCNHw+KNvy
         OoDifulhCu0qPjhkdJa8Nq/m+vF+/prWvUncnLBMEp/1TdDTcofTx9A9mdhqhfZ5LL9G
         OwcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TZhkoXzG05knp5CmHxpjlTRvvih1FMi7P6N0g3c2w9w=;
        b=QGUd7kaimEWPcemHiI1ysfEV2BRdX0fwOaxr9cudw9F0dJD1fggCpxUHIyI3UGmv6m
         8c8lVdzVA1aSzq85etls+khp65ulceUpWo7mJRtmqIWEeInA+SoU5ldz/868FMAZCL6u
         1Wn8+BFQ8b0p1q7ahHh/ORIw1qfkSg10spYVOefRteXlFTlk9hnk5j402U5qE62tj1nJ
         BL7En9ljUZDROoaENowhAynyDeKlEApwmm7ztqMRdGZxJR16vKZTT13nDkf+62rZKbqy
         TRx1webC1TiqZKvKnRAVptuSh9g897llq7dmr5VgYdQH0wBV0imCSuhaci6KGLQpvQIL
         y6FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lxOlvZfn;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id z17-20020a0565120c1100b004486a0bda66si117505lfu.5.2022.03.10.14.08.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 14:08:44 -0800 (PST)
Received-SPF: pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Received: by mail-ej1-x62a.google.com with SMTP id bg10so15185080ejb.4
        for <linux-ntb@googlegroups.com>; Thu, 10 Mar 2022 14:08:44 -0800 (PST)
X-Received: by 2002:a17:906:dc90:b0:6da:a5b1:7879 with SMTP id
 cs16-20020a170906dc9000b006daa5b17879mr5984486ejc.433.1646950123840; Thu, 10
 Mar 2022 14:08:43 -0800 (PST)
MIME-Version: 1.0
References: <20220222162355.32369-1-Frank.Li@nxp.com> <20220222162355.32369-3-Frank.Li@nxp.com>
In-Reply-To: <20220222162355.32369-3-Frank.Li@nxp.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Thu, 10 Mar 2022 16:08:32 -0600
Message-ID: <CAHrpEqRhq7U-2dxSHp=nhE22WEwweryA+TNnz-t1n0FaoGC_fA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] NTB: epf: Allow more flexibility in the memory BAR
 map method
To: Frank Li <Frank.Li@nxp.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, kishon@ti.com, lorenzo.pieralisi@arm.com, 
	kw@linux.com, Jingoo Han <jingoohan1@gmail.com>, gustavo.pimentel@synopsys.com, 
	hongxing.zhu@nxp.com, Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, 
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com, linux-pci@vger.kernel.org, 
	ntb@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lznuaa@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=lxOlvZfn;       spf=pass
 (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62a as
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

On Tue, Feb 22, 2022 at 10:24 AM Frank Li <Frank.Li@nxp.com> wrote:
>
> Support the below BAR configuration methods for epf NTB.
>
> BAR 0: config and scratchpad
> BAR 2: doorbell
> BAR 4: memory map windows
>
> Set difference BAR number information into struct ntb_epf_data. So difference
> VID/PID can choose different BAR configurations. There are difference
> BAR map method between epf NTB and epf vNTB Endpoint function.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---

Update ntb mail list.

>
> Change from v1:
>  - Improve commit message
>
>  drivers/ntb/hw/epf/ntb_hw_epf.c | 48 ++++++++++++++++++++++++---------
>  1 file changed, 35 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c b/drivers/ntb/hw/epf/ntb_hw_epf.c
> index b019755e4e21b..3ece49cb18ffa 100644
> --- a/drivers/ntb/hw/epf/ntb_hw_epf.c
> +++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
> @@ -45,7 +45,6 @@
>
>  #define NTB_EPF_MIN_DB_COUNT   3
>  #define NTB_EPF_MAX_DB_COUNT   31
> -#define NTB_EPF_MW_OFFSET      2
>
>  #define NTB_EPF_COMMAND_TIMEOUT        1000 /* 1 Sec */
>
> @@ -67,6 +66,7 @@ struct ntb_epf_dev {
>         enum pci_barno ctrl_reg_bar;
>         enum pci_barno peer_spad_reg_bar;
>         enum pci_barno db_reg_bar;
> +       enum pci_barno mw_bar;
>
>         unsigned int mw_count;
>         unsigned int spad_count;
> @@ -92,6 +92,8 @@ struct ntb_epf_data {
>         enum pci_barno peer_spad_reg_bar;
>         /* BAR that contains Doorbell region and Memory window '1' */
>         enum pci_barno db_reg_bar;
> +       /* BAR that contains memory windows*/
> +       enum pci_barno mw_bar;
>  };
>
>  static int ntb_epf_send_command(struct ntb_epf_dev *ndev, u32 command,
> @@ -411,7 +413,7 @@ static int ntb_epf_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
>                 return -EINVAL;
>         }
>
> -       bar = idx + NTB_EPF_MW_OFFSET;
> +       bar = idx + ndev->mw_bar;
>
>         mw_size = pci_resource_len(ntb->pdev, bar);
>
> @@ -453,7 +455,7 @@ static int ntb_epf_peer_mw_get_addr(struct ntb_dev *ntb, int idx,
>         if (idx == 0)
>                 offset = readl(ndev->ctrl_reg + NTB_EPF_MW1_OFFSET);
>
> -       bar = idx + NTB_EPF_MW_OFFSET;
> +       bar = idx + ndev->mw_bar;
>
>         if (base)
>                 *base = pci_resource_start(ndev->ntb.pdev, bar) + offset;
> @@ -565,6 +567,7 @@ static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
>                             struct pci_dev *pdev)
>  {
>         struct device *dev = ndev->dev;
> +       size_t spad_sz, spad_off;
>         int ret;
>
>         pci_set_drvdata(pdev, ndev);
> @@ -599,10 +602,16 @@ static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
>                 goto err_dma_mask;
>         }
>
> -       ndev->peer_spad_reg = pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
> -       if (!ndev->peer_spad_reg) {
> -               ret = -EIO;
> -               goto err_dma_mask;
> +       if (ndev->peer_spad_reg_bar) {
> +               ndev->peer_spad_reg = pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
> +               if (!ndev->peer_spad_reg) {
> +                       ret = -EIO;
> +                       goto err_dma_mask;
> +               }
> +       } else {
> +               spad_sz = 4 * readl(ndev->ctrl_reg + NTB_EPF_SPAD_COUNT);
> +               spad_off = readl(ndev->ctrl_reg + NTB_EPF_SPAD_OFFSET);
> +               ndev->peer_spad_reg = ndev->ctrl_reg + spad_off  + spad_sz;
>         }
>
>         ndev->db_reg = pci_iomap(pdev, ndev->db_reg_bar, 0);
> @@ -657,6 +666,7 @@ static int ntb_epf_pci_probe(struct pci_dev *pdev,
>         enum pci_barno peer_spad_reg_bar = BAR_1;
>         enum pci_barno ctrl_reg_bar = BAR_0;
>         enum pci_barno db_reg_bar = BAR_2;
> +       enum pci_barno mw_bar = BAR_2;
>         struct device *dev = &pdev->dev;
>         struct ntb_epf_data *data;
>         struct ntb_epf_dev *ndev;
> @@ -671,17 +681,16 @@ static int ntb_epf_pci_probe(struct pci_dev *pdev,
>
>         data = (struct ntb_epf_data *)id->driver_data;
>         if (data) {
> -               if (data->peer_spad_reg_bar)
> -                       peer_spad_reg_bar = data->peer_spad_reg_bar;
> -               if (data->ctrl_reg_bar)
> -                       ctrl_reg_bar = data->ctrl_reg_bar;
> -               if (data->db_reg_bar)
> -                       db_reg_bar = data->db_reg_bar;
> +               peer_spad_reg_bar = data->peer_spad_reg_bar;
> +               ctrl_reg_bar = data->ctrl_reg_bar;
> +               db_reg_bar = data->db_reg_bar;
> +               mw_bar = data->mw_bar;
>         }
>
>         ndev->peer_spad_reg_bar = peer_spad_reg_bar;
>         ndev->ctrl_reg_bar = ctrl_reg_bar;
>         ndev->db_reg_bar = db_reg_bar;
> +       ndev->mw_bar = mw_bar;
>         ndev->dev = dev;
>
>         ntb_epf_init_struct(ndev, pdev);
> @@ -729,6 +738,14 @@ static const struct ntb_epf_data j721e_data = {
>         .ctrl_reg_bar = BAR_0,
>         .peer_spad_reg_bar = BAR_1,
>         .db_reg_bar = BAR_2,
> +       .mw_bar = BAR_2,
> +};
> +
> +static const struct ntb_epf_data mx8_data = {
> +       .ctrl_reg_bar = BAR_0,
> +       .peer_spad_reg_bar = BAR_0,
> +       .db_reg_bar = BAR_2,
> +       .mw_bar = BAR_4,
>  };
>
>  static const struct pci_device_id ntb_epf_pci_tbl[] = {
> @@ -737,6 +754,11 @@ static const struct pci_device_id ntb_epf_pci_tbl[] = {
>                 .class = PCI_CLASS_MEMORY_RAM << 8, .class_mask = 0xffff00,
>                 .driver_data = (kernel_ulong_t)&j721e_data,
>         },
> +       {
> +               PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, 0x0809),
> +               .class = PCI_CLASS_MEMORY_RAM << 8, .class_mask = 0xffff00,
> +               .driver_data = (kernel_ulong_t)&mx8_data,
> +       },
>         { },
>  };
>
> --
> 2.24.0.rc1
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAHrpEqRhq7U-2dxSHp%3DnhE22WEwweryA%2BTNnz-t1n0FaoGC_fA%40mail.gmail.com.
