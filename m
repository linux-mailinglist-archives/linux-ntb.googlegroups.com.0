Return-Path: <linux-ntb+bncBCS4BDN7YUCRBFUGUXWAKGQE7O5OYJA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5579EBBE55
	for <lists+linux-ntb@lfdr.de>; Tue, 24 Sep 2019 00:11:36 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id r35sf10138144pgb.2
        for <lists+linux-ntb@lfdr.de>; Mon, 23 Sep 2019 15:11:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569276695; cv=pass;
        d=google.com; s=arc-20160816;
        b=zGUPMqMH8ZZrqbV5+73QqP5mKCw4qIKDSaK0dlDflISk0mNFoGE/vl3Dq4MnYx3X8x
         UQKKVKfBhhxiqRwFNJ/Oony2cHLyBgzs5V2YHQVkb+GXdIMGT9wTTMB8dwTm/WYbhkBU
         kfclH9wEApYZaIUvWxI3GVIsSIFgnQthDLpN62lNiUwXTpu9GpgE169JPl6mMaUtmsPO
         nwT2mN4BCLwQ5UbaLbPfM8y1cG5A/39r5MlQC1AuXjH+4xlziXM4fCneBxnAyl29BGPx
         0a70pajUdtHAodpE/hhmPbcLOD+LRvBR5j+4zBjYh6a2rhHMEDSLWbY0DaaepWbt9xnM
         I9fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=jCjxe4V6rd/sKYw4lXB3pFy/ZiFEnafOEj1WQILZ3pY=;
        b=orCm23joOr2MglbsFin494Xd0Bm//eai2U0wVcY2x2quw4ir4A12RAxZYYXUK1KP53
         bO4FGfmPNcsvoIsQHlJkTLdjC2hSJO/1Rwb6SUeiLPTBOHappRZJ1haxGLbEREpllELY
         LZLjmmXBFTtrAP1iro159ioaeyqYXAEFERmraLKZuYD8i2q0ozPIA4Gh6C4eIHnLWib7
         8jnAVX4TRYEddqNmxrwHh/cprq4xymoD9fK+4i/mO/ilur3FiKGl6CNfUWNTBIvpT9Xj
         urAaVONjDYsD903Dy4Xktd4G+sd6mivaS4h6P1axqXPM6EsTY+J/MOIrfpcbxtoU8UoS
         u9tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=QBNbnv6L;
       spf=neutral (google.com: 2607:f8b0:4864:20::d43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jCjxe4V6rd/sKYw4lXB3pFy/ZiFEnafOEj1WQILZ3pY=;
        b=EzWRQux7movRLdgR5cG3f4ttbU+cY2p92UZPjJ6iocNs5j+WyI1VMg72XYp5ig5N7E
         oKLwpGjl+BcfnO/9Mvq5/BRiUYkudiLpQslghNbFwb4lK0F04cGqaJQxVNG/Bg08xZB5
         C7z+qraVcDbB/9PcqY/oQBpPPqjtTJ+MH61WVIYhcV0ItvsRqBJ2iK2PrY44GP3IWwqo
         IjMD26eEON3UbDxR98pdvo7w6PEcEymWMKm7MKRXF9HGHhbG/a7nUJFrFKgU43MJ5wk4
         zYGVRkm26DKrwWfl4SzbLoYqZt1kc+QInYWmFMu9R7Njut6Iy7xgqWKZMnKCacENFyRA
         MbZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jCjxe4V6rd/sKYw4lXB3pFy/ZiFEnafOEj1WQILZ3pY=;
        b=SpSQqW2ytE1EhrtswflzhEWRXd8KYRdGjTPxywKYVjaF3g1Rfo5lvlr8yRm2iK26By
         ZtgiJK4pGNNLekOmuulnw4Ah3tXrgiCm9R7J4sJ6FD4rLN4vvXL6J0k0fBk0CaKr6+QJ
         6nb6vzagavyEodjOWHGgN1VSToESrhLcJQk+0FY/dwQE8mElYqn/aThKvalu8z+s3jDD
         mQu3122uDc7tGnfnId/Daqen5XAUgpJSzITJLHSo8rmNagdIePxC3/l/KGGeOfh5noDn
         /4uO7NTCdUFrPFvhRKbHmGeI0SAcSoXV7q3r/DZDB0pjt/nQJTLy1uwKlU1bHvwSNOeE
         KnMQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWI073aZjbBI4xu4gaSJ3YE7ZcGAuWgQM0ckWgIYDotDauM2h2O
	Q2kvhj+zfsWSm+x760g4y1A=
X-Google-Smtp-Source: APXvYqzoNtQGhcke7jTrCW36mPxoB+InHok1mCJZytsjDPbV9HpQ/NQ9ZUUaskiKFoQ6Jk0dgW/tXg==
X-Received: by 2002:a17:902:b40b:: with SMTP id x11mr2029057plr.87.1569276694770;
        Mon, 23 Sep 2019 15:11:34 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:6204:: with SMTP id w4ls4285969pfb.6.gmail; Mon, 23 Sep
 2019 15:11:34 -0700 (PDT)
X-Received: by 2002:a62:c141:: with SMTP id i62mr2051262pfg.64.1569276694390;
        Mon, 23 Sep 2019 15:11:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569276694; cv=none;
        d=google.com; s=arc-20160816;
        b=Ox4SBu+XO0z1yL9InO395FYav01DqVs81/6Qx5Ru5rz++ekZ1xGbL71m3QetlO6Sc+
         xsWaL/r+8EBfZkVcR1kXlae8vvxrS/DwJimWpDzXaj+gPw+T31o2euMSU/q8IRLkWu38
         d28aaLur4q3l4/IWC33uUpuPfPXzOeFFQCDxbjKhJXqYUu5f/Rw/oUZf0jn7hJ4S197G
         Pr++oQomzHjh/1HjmXDlEDPf8ESGrJd1VW9exdrI+IOPUSwZ7LYQqypEy780Gmu/Ienp
         UxFjEP/BNSwRtuLntw8IZCk3grSlKD2ZyaQ5U6am87iv8RMhuJ0VGJLJAH5VjBY6m2vE
         eapg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Uqy59dGY4blvVGjglQKtbrenXU/K+5if5eYupyey+8k=;
        b=O2hCZwNtNPtb8waQtE+bSrFUajhZ8REHCGIupPyP2Qts2bgXH034cYiY3jTBSX1Mu1
         X5WkG3pCE7+UkJy3zrDRW+jeYBmuWLT/vmksp9GXOHp89HIPWrHRttMGx4WPidtIYxZf
         6gV7GSj7mBGGwy/c5C9Kzz3d3FVDe8d7WQKK4bfGdx9ieDdz2buneqoav4cu7KPb/KUF
         Gp6dNrrfSMKNrvYqG7pIdMxdrhZg34o/8645vMFjdEP/00SUfHMW/e4ow2l5Ql2nRFtU
         PUkGfUi002m5D+9rFvE7UlDOaTLgTzw/O4S9szwqEdd02Vwpjun+3+6nkxsnufAyMPZB
         eNnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=QBNbnv6L;
       spf=neutral (google.com: 2607:f8b0:4864:20::d43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id q2si696161pgq.3.2019.09.23.15.11.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 15:11:34 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id u8so16115608iom.5
        for <linux-ntb@googlegroups.com>; Mon, 23 Sep 2019 15:11:34 -0700 (PDT)
X-Received: by 2002:a5d:89cb:: with SMTP id a11mr1789115iot.159.1569276693582;
 Mon, 23 Sep 2019 15:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <1568567293-26894-1-git-send-email-Sanju.Mehta@amd.com>
In-Reply-To: <1568567293-26894-1-git-send-email-Sanju.Mehta@amd.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Mon, 23 Sep 2019 15:11:22 -0700
Message-ID: <CAPoiz9w5eFaw42SmMBoyNEACJ10QNdTL=jiduS8UbowrgwcdHg@mail.gmail.com>
Subject: Re: [PATCH 2/2] ntb_hw_amd: Add memory window support for new AMD hardware
To: "Mehta, Sanju" <Sanju.Mehta@amd.com>
Cc: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>, 
	"Shah, Nehal-bakulchandra" <Nehal-bakulchandra.Shah@amd.com>, 
	"dave.jiang@intel.com" <dave.jiang@intel.com>, "allenbh@gmail.com" <allenbh@gmail.com>, 
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=QBNbnv6L;       spf=neutral (google.com: 2607:f8b0:4864:20::d43 is
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

On Sun, Sep 15, 2019 at 10:08 AM Mehta, Sanju <Sanju.Mehta@amd.com> wrote:
>
> From: Sanjay R Mehta <sanju.mehta@amd.com>
>
> The AMD new hardware uses BAR23 and BAR45 as memory windows
> as compared to previos where BAR1, BAR23 and BAR45 is used
> for memory windows.
>
> This patch add support for both AMD hardwares.

I pulled both of these patches into the ntb branch.  I am aiming for a
5.4 pull request this Wednesday.  So, please test if possible.

Thanks,
Jon

>
> Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
> ---
>  drivers/ntb/hw/amd/ntb_hw_amd.c | 23 ++++++++++++++++++-----
>  drivers/ntb/hw/amd/ntb_hw_amd.h |  7 ++++++-
>  2 files changed, 24 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
> index e9286cf..156c2a1 100644
> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
> @@ -78,7 +78,7 @@ static int ndev_mw_to_bar(struct amd_ntb_dev *ndev, int idx)
>         if (idx < 0 || idx > ndev->mw_count)
>                 return -EINVAL;
>
> -       return 1 << idx;
> +       return ndev->dev_data->mw_idx << idx;
>  }
>
>  static int amd_ntb_mw_count(struct ntb_dev *ntb, int pidx)
> @@ -909,7 +909,7 @@ static int amd_init_ntb(struct amd_ntb_dev *ndev)
>  {
>         void __iomem *mmio = ndev->self_mmio;
>
> -       ndev->mw_count = AMD_MW_CNT;
> +       ndev->mw_count = ndev->dev_data->mw_count;
>         ndev->spad_count = AMD_SPADS_CNT;
>         ndev->db_count = AMD_DB_CNT;
>
> @@ -1069,6 +1069,8 @@ static int amd_ntb_pci_probe(struct pci_dev *pdev,
>                 goto err_ndev;
>         }
>
> +       ndev->dev_data = (struct ntb_dev_data *)id->driver_data;
> +
>         ndev_init_struct(ndev, pdev);
>
>         rc = amd_ntb_init_pci(ndev, pdev);
> @@ -1123,10 +1125,21 @@ static const struct file_operations amd_ntb_debugfs_info = {
>         .read = ndev_debugfs_read,
>  };
>
> +static const struct ntb_dev_data dev_data[] = {
> +       { /* for device 145b */
> +               .mw_count = 3,
> +               .mw_idx = 1,
> +       },
> +       { /* for device 148b */
> +               .mw_count = 2,
> +               .mw_idx = 2,
> +       },
> +};
> +
>  static const struct pci_device_id amd_ntb_pci_tbl[] = {
> -       {PCI_VDEVICE(AMD, 0x145b)},
> -       {PCI_VDEVICE(AMD, 0x148b)},
> -       {0}
> +       { PCI_VDEVICE(AMD, 0x145b), (kernel_ulong_t)&dev_data[0] },
> +       { PCI_VDEVICE(AMD, 0x148b), (kernel_ulong_t)&dev_data[1] },
> +       { 0, }
>  };
>  MODULE_DEVICE_TABLE(pci, amd_ntb_pci_tbl);
>
> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
> index 3aac994..139a307 100644
> --- a/drivers/ntb/hw/amd/ntb_hw_amd.h
> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
> @@ -92,7 +92,6 @@ static inline void _write64(u64 val, void __iomem *mmio)
>
>  enum {
>         /* AMD NTB Capability */
> -       AMD_MW_CNT              = 3,
>         AMD_DB_CNT              = 16,
>         AMD_MSIX_VECTOR_CNT     = 24,
>         AMD_SPADS_CNT           = 16,
> @@ -169,6 +168,11 @@ enum {
>         AMD_PEER_OFFSET         = 0x400,
>  };
>
> +struct ntb_dev_data {
> +       const unsigned char mw_count;
> +       const unsigned int mw_idx;
> +};
> +
>  struct amd_ntb_dev;
>
>  struct amd_ntb_vec {
> @@ -184,6 +188,7 @@ struct amd_ntb_dev {
>         u32 cntl_sta;
>         u32 peer_sta;
>
> +       struct ntb_dev_data *dev_data;
>         unsigned char mw_count;
>         unsigned char spad_count;
>         unsigned char db_count;
> --
> 2.7.4
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9w5eFaw42SmMBoyNEACJ10QNdTL%3DjiduS8UbowrgwcdHg%40mail.gmail.com.
