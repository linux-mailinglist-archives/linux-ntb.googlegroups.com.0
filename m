Return-Path: <linux-ntb+bncBCS4BDN7YUCRBLOQWX7AKGQEWMMPVZY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 703692D0802
	for <lists+linux-ntb@lfdr.de>; Mon,  7 Dec 2020 00:24:31 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id n12sf9696527qta.9
        for <lists+linux-ntb@lfdr.de>; Sun, 06 Dec 2020 15:24:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607297070; cv=pass;
        d=google.com; s=arc-20160816;
        b=r7W3OWDjxv2vO9L6cOsw+3pVjIwd3i4iG9GTGiFPdJIOdXVJJQ7CkyUxKIJEAi/TeR
         6oWsNmFXAaptnhQuWaLWisK0bbEfWouRvbvG4PWJx0u1UzhCQB4uo3jljip7xKFZKTQn
         lSQjNuDe9ONTfXOYxVXYoIXGHUpW3b+fS+/TndsVSpkjUd+l8ysJSMW0wCSyke5/y2ot
         peOuDlxvsxKwXwqCqu95+k6JSRaMH+pHOEICA2q3Uj+suJNW6/ywbSdy6PQsbuj1/md7
         MFO3PEWjv8SX2MIrhDMUKhCHhVEYrp/d6ahzz11rfbPi34gBbeD1o1uJKP0Vdb5tCwh/
         U4kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=g4dgehJKC4obcl7pmE6ePKVPJ15ZCcFUsLxamY7fvI4=;
        b=dIo1GImmHv8twaII6u4xVnQxSHAZXYbrJyh5vJzGe+avsda7MAN85Morqt5pcDDUfM
         CpUfD592HJun+hPJtqfhX8XcAJyvSqSFHKHIpjZEE54d3e9WHjrDtmABaClulupsipJB
         Dgnb2qjfIWPE/jHtZ6lkKPWZl7cExQgct1uNQJ42bXTqiey1mZ3cHkLNWm8WmsoTlBUz
         PTLbBGH3aJPW0mAtCur/Cs/qz6cYzkboDMIQ8f48Vgq5OPBnWZDgmBn4DBme9LojL/3t
         MWJTQyo+FweR82Z/iPogDZXeVHOYNDxjYEwNqfLpydItRPsUI+uglfWk7X+B9qn6InPm
         j75g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=MAlDM6aQ;
       spf=neutral (google.com: 2607:f8b0:4864:20::f44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g4dgehJKC4obcl7pmE6ePKVPJ15ZCcFUsLxamY7fvI4=;
        b=gmr0MtbWKprjvDbxI1A3cbUvFA/TIPEA34diz4Edt+Ag37OkTFKUmUJdPUg81iInlK
         Lr0ExssKx5rHHkqevTJm4Zi8cLQXznYWaevpG6x6o+aY5ifg3QpYzE4iNGQbt+rV2ljL
         TgrqLd+AXKECplrGJkAYN9BEObLOfLw6iNa9biySQS8oqlof0umbN80WEJD2FBf9S1lC
         dx6SNGnTTH1ZodWjKOP1unTQV7hcikgROcyrcWX1qotIuSXvkgcg2fyPpX9QGHi6624l
         pt6kvltgC/eTsYzERxMDW5jqenD4F03QuS8UGIuKC65tGRQJAenh7smY9ERin4veqEoF
         LJzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g4dgehJKC4obcl7pmE6ePKVPJ15ZCcFUsLxamY7fvI4=;
        b=p/APU1LufXG/jM1TQd94klwtlsE77FSpVoLWiYu0nR0tk6cO8vlg91vHEiMHyIN54T
         WTiBJy0zgX2h4Flq6YvaurwZ5XJSDkK/40dnxtFXGyoNs3cmeYX7spgm5TtJLf8WEu4u
         /a/M657y+O/s28dzmnKngUmiZvu3t8PkEZtjEBG7SmpmCb73sQeV5I3TiKHLTP7BM68a
         VKlnJUpGsH4unXzdgJvg7ZWBZZaHQMiJqqiDNbvT7Ku9vb8a2LM8g9zQUDtZTw+UBe6I
         WNWl/oiIZXexTxmJ8LRG0wQ1aRDMYFV/cK+f0RiVEDID74ZoyoMm7j581GNao5YTDkyw
         Ex5A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532+2Ol9pqCpDVr6wX8WspkZYUS6IISB1WiJtJJBbMkroYA+8/uJ
	vVB4QjVv412MFlrseWEDpjM=
X-Google-Smtp-Source: ABdhPJzRc4+fMyOMlQVTgyewaPCe5t3cugqoq4fhZ+pkI+Fp0mfgEgN5fs84TwQt3aBwJOqxMxdv/A==
X-Received: by 2002:a37:a14a:: with SMTP id k71mr21260991qke.33.1607297069995;
        Sun, 06 Dec 2020 15:24:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:34ca:: with SMTP id x10ls4152756qtb.1.gmail; Sun, 06 Dec
 2020 15:24:29 -0800 (PST)
X-Received: by 2002:ac8:4f13:: with SMTP id b19mr4357595qte.150.1607297069538;
        Sun, 06 Dec 2020 15:24:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607297069; cv=none;
        d=google.com; s=arc-20160816;
        b=bDj8NCFtVxhOdLVsiHW3OUM4EV9BmRPYVAmSUxUHf8SIwOD3nSlu54QslBWFEpugQQ
         pri9T4XkFihxxt5rGSpFINxReu2EnkMmiMkZW9hTPfr7kvPBu/qgFenDWUf0W0jmBnEw
         Rhe8W4bYF5pZYyegGKklLLKgOEYaKUM3ijaT+PEpZoo9wBOAIASEMxBS0Uy5i9Wzq3wu
         Cl9GP7AP8lYCdIIHRO67FWw3PPav8jOdzF+A8dR/4arHjeaaxmptK+g5fpDGhgfz/Gen
         cs4DAJEPQqhNCcyXYvx5MTzTGW7DmWoHhTF4Omx8VFKpn+4UV6dwztKKG4Dr9UfcXxRR
         KvKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Omoz6gnKJBmTEzzYzwu4wtnBOv+Za6eiHOqwZuQTTFE=;
        b=NL6NXUCC8hdKmQJYUAwDV1CoIi2Y87Ohzor1DC9aBazsQb4k0x961nSDyWNO328lc9
         84eo3RibcTmWzznxHNJk4JgMygdYFDq3RNrgL1mbYYSS7pzWdGq/NmK/PsjR6KNG9f6X
         /V67ZF4ifuxEWVaSzVTgh9vGKVVpdBeeBn/bEVayT36Mhbq1riqR1CkxMuEzYNdZkBVf
         v7OBZDDav/68HYgRwyNKahxo6CwYRiVzIBwpezAX+xR14jirRdJQnMeiDMQvgz4CBEpH
         ptcC6huoxgxkNdg7LUvL/8RSgciIV+onfcogaKlKpNcQ+bxoeoz8UGGtUlaw6WIlaSlH
         WPng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=MAlDM6aQ;
       spf=neutral (google.com: 2607:f8b0:4864:20::f44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id c198si144045qkg.2.2020.12.06.15.24.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Dec 2020 15:24:29 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::f44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id bd6so531726qvb.9
        for <linux-ntb@googlegroups.com>; Sun, 06 Dec 2020 15:24:29 -0800 (PST)
X-Received: by 2002:a05:6214:29:: with SMTP id b9mr18055134qvr.18.1607297069220;
        Sun, 06 Dec 2020 15:24:29 -0800 (PST)
Received: from kudzu.us ([2605:a601:a606:1b00:2919:5287:92b6:26db])
        by smtp.gmail.com with ESMTPSA id d82sm10374517qkc.14.2020.12.06.15.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Dec 2020 15:24:28 -0800 (PST)
Date: Sun, 6 Dec 2020 18:24:27 -0500
From: Jon Mason <jdmason@kudzu.us>
To: Dave Jiang <dave.jiang@intel.com>
Cc: allenbh@gmail.com, linux-ntb@googlegroups.com
Subject: Re: [PATCH] ntb: intel: add Intel NTB LTR vendor support for gen4 NTB
Message-ID: <20201206232426.GA11795@kudzu.us>
References: <160614577287.521825.7762300396286632790.stgit@djiang5-desk3.ch.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <160614577287.521825.7762300396286632790.stgit@djiang5-desk3.ch.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=MAlDM6aQ;       spf=neutral (google.com: 2607:f8b0:4864:20::f44 is
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

On Mon, Nov 23, 2020 at 08:36:12AM -0700, Dave Jiang wrote:
> Intel NTB device has custom LTR management that is not compliant with the
> PCIe standard. Add support to set LTR status triggered by link status
> change.
> 
> Signed-off-by: Dave Jiang <dave.jiang@intel.com>

Applied to ntb-next branch.

Thanks,
Jon

> ---
>  drivers/ntb/hw/intel/ntb_hw_gen1.h |    1 +
>  drivers/ntb/hw/intel/ntb_hw_gen4.c |   27 ++++++++++++++++++++++++++-
>  drivers/ntb/hw/intel/ntb_hw_gen4.h |   15 +++++++++++++++
>  3 files changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.h b/drivers/ntb/hw/intel/ntb_hw_gen1.h
> index 1b759942d8af..344249fc18d1 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_gen1.h
> +++ b/drivers/ntb/hw/intel/ntb_hw_gen1.h
> @@ -141,6 +141,7 @@
>  #define NTB_HWERR_B2BDOORBELL_BIT14	BIT_ULL(2)
>  #define NTB_HWERR_MSIX_VECTOR32_BAD	BIT_ULL(3)
>  #define NTB_HWERR_BAR_ALIGN		BIT_ULL(4)
> +#define NTB_HWERR_LTR_BAD		BIT_ULL(5)
>  
>  extern struct intel_b2b_addr xeon_b2b_usd_addr;
>  extern struct intel_b2b_addr xeon_b2b_dsd_addr;
> diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.c b/drivers/ntb/hw/intel/ntb_hw_gen4.c
> index bc4541cbf8c6..fede05151f69 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_gen4.c
> +++ b/drivers/ntb/hw/intel/ntb_hw_gen4.c
> @@ -177,8 +177,10 @@ int gen4_init_dev(struct intel_ntb_dev *ndev)
>  
>  	ndev->reg = &gen4_reg;
>  
> -	if (pdev_is_ICX(pdev))
> +	if (pdev_is_ICX(pdev)) {
>  		ndev->hwerr_flags |= NTB_HWERR_BAR_ALIGN;
> +		ndev->hwerr_flags |= NTB_HWERR_LTR_BAD;
> +	}
>  
>  	ppd1 = ioread32(ndev->self_mmio + GEN4_PPD1_OFFSET);
>  	ndev->ntb.topo = gen4_ppd_topo(ndev, ppd1);
> @@ -431,6 +433,25 @@ static int intel_ntb4_link_enable(struct ntb_dev *ntb,
>  		dev_dbg(&ntb->pdev->dev,
>  				"ignoring max_width %d\n", max_width);
>  
> +	if (!(ndev->hwerr_flags & NTB_HWERR_LTR_BAD)) {
> +		u32 ltr;
> +
> +		/* Setup active snoop LTR values */
> +		ltr = NTB_LTR_ACTIVE_REQMNT | NTB_LTR_ACTIVE_VAL | NTB_LTR_ACTIVE_LATSCALE;
> +		/* Setup active non-snoop values */
> +		ltr = (ltr << NTB_LTR_NS_SHIFT) | ltr;
> +		iowrite32(ltr, ndev->self_mmio + GEN4_LTR_ACTIVE_OFFSET);
> +
> +		/* Setup idle snoop LTR values */
> +		ltr = NTB_LTR_IDLE_VAL | NTB_LTR_IDLE_LATSCALE | NTB_LTR_IDLE_REQMNT;
> +		/* Setup idle non-snoop values */
> +		ltr = (ltr << NTB_LTR_NS_SHIFT) | ltr;
> +		iowrite32(ltr, ndev->self_mmio + GEN4_LTR_IDLE_OFFSET);
> +
> +		/* setup PCIe LTR to active */
> +		iowrite8(NTB_LTR_SWSEL_ACTIVE, ndev->self_mmio + GEN4_LTR_SWSEL_OFFSET);
> +	}
> +
>  	ntb_ctl = NTB_CTL_E2I_BAR23_SNOOP | NTB_CTL_I2E_BAR23_SNOOP;
>  	ntb_ctl |= NTB_CTL_E2I_BAR45_SNOOP | NTB_CTL_I2E_BAR45_SNOOP;
>  	iowrite32(ntb_ctl, ndev->self_mmio + ndev->reg->ntb_ctl);
> @@ -476,6 +497,10 @@ static int intel_ntb4_link_disable(struct ntb_dev *ntb)
>  	lnkctl |= GEN4_LINK_CTRL_LINK_DISABLE;
>  	iowrite16(lnkctl, ndev->self_mmio + GEN4_LINK_CTRL_OFFSET);
>  
> +	/* set LTR to idle */
> +	if (!(ndev->hwerr_flags & NTB_HWERR_LTR_BAD))
> +		iowrite8(NTB_LTR_SWSEL_IDLE, ndev->self_mmio + GEN4_LTR_SWSEL_OFFSET);
> +
>  	ndev->dev_up = 0;
>  
>  	return 0;
> diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.h b/drivers/ntb/hw/intel/ntb_hw_gen4.h
> index a868c788de02..3fcd3fdce9ed 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_gen4.h
> +++ b/drivers/ntb/hw/intel/ntb_hw_gen4.h
> @@ -35,6 +35,9 @@
>  #define GEN4_IM_SPAD_SEM_OFFSET		0x00c0	/* SPAD hw semaphore */
>  #define GEN4_IM_SPAD_STICKY_OFFSET	0x00c4  /* sticky SPAD */
>  #define GEN4_IM_DOORBELL_OFFSET		0x0100  /* 0-31 doorbells */
> +#define GEN4_LTR_SWSEL_OFFSET		0x30ec
> +#define GEN4_LTR_ACTIVE_OFFSET		0x30f0
> +#define GEN4_LTR_IDLE_OFFSET		0x30f4
>  #define GEN4_EM_SPAD_OFFSET		0x8080
>  /* note, link status is now in MMIO and not config space for NTB */
>  #define GEN4_LINK_CTRL_OFFSET		0xb050
> @@ -80,6 +83,18 @@
>  
>  #define NTB_SJC_FORCEDETECT		0x000004
>  
> +#define NTB_LTR_SWSEL_ACTIVE		0x0
> +#define NTB_LTR_SWSEL_IDLE		0x1
> +
> +#define NTB_LTR_NS_SHIFT		16
> +#define NTB_LTR_ACTIVE_VAL		0x0000  /* 0 us */
> +#define NTB_LTR_ACTIVE_LATSCALE		0x0800  /* 1us scale */
> +#define NTB_LTR_ACTIVE_REQMNT		0x8000  /* snoop req enable */
> +
> +#define NTB_LTR_IDLE_VAL		0x0258  /* 600 us */
> +#define NTB_LTR_IDLE_LATSCALE		0x0800  /* 1us scale */
> +#define NTB_LTR_IDLE_REQMNT		0x8000  /* snoop req enable */
> +
>  ssize_t ndev_ntb4_debugfs_read(struct file *filp, char __user *ubuf,
>  				      size_t count, loff_t *offp);
>  int gen4_init_dev(struct intel_ntb_dev *ndev);
> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/160614577287.521825.7762300396286632790.stgit%40djiang5-desk3.ch.intel.com.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201206232426.GA11795%40kudzu.us.
