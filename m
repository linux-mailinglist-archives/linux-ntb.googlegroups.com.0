Return-Path: <linux-ntb+bncBDXJDZXNUMORBOM2X6GQMGQEJHPA5UY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2133D46C63F
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Dec 2021 22:08:11 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id h8-20020ab07c68000000b002d147c67fabsf257125uax.20
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Dec 2021 13:08:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638911290; cv=pass;
        d=google.com; s=arc-20160816;
        b=qn/sDexd93IqBB9BpC4VAJl1zpc2EioHri8hoe81mNBEJxnKlrLJ5gEysRjtKJH9T0
         gQ0ywSFDlSPUC4brTVYRIunBl7yygV1LsCdMZAgm46+mQP28jLuhTN34SOPy1keZ5MZ6
         f18cS+4OqY3eFAc3vN6sWWnyrK+h3m1q5dNZTvaX9KZGM9RGkhEiok1M2KEQWKe4v5Uv
         D1xf+dmvgY7r6TCfZSDvMjDuOPcbqPnxjShJbBalQlp6c19Sok3PH4L9+7+x5KPQydNW
         6RXXJ8H/l3gl6OobNj6ByEQOpZAwtU+45e1NHiDpgDB9RQq0lDyj9J4YLySf7U2zm3tM
         AR8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gHQolFP4QqdqkN3613M66VR6l1p6G/rHqp05cq5R1Ow=;
        b=RZWgwHo1Ydt6bbpJ0OEkWloJTA+yCZ2BHjBuvGAWqLSzTOPBasqT+erZdd76cWH48Y
         NsBKk2PFFuz3FzI/aoG+hYS+sC1kgJQ5O+9UGdKqMl57OtaEgtcTjQJVYsmVUvGHA4si
         pgr/Yfk+Iim+MVvCfxhKaLIW3SUhW8l69Xr4CThU/eL8+XMHr+ofQAdLe1JttKtwV+C+
         7D+T7Vbsie0BIywJ29gwa1s+/u7act2eQ7obbwQdREqBdxR6GWVtAVZSH3HYa6eArLGV
         PU/nnXus3FpZmZDfaK+IE2IMrjeBJxiUaSpsdSu9EXFRslCtMrCfN9ckCJnvsvaVwubs
         autw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aCbzd0NE;
       spf=pass (google.com: domain of helgaas@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gHQolFP4QqdqkN3613M66VR6l1p6G/rHqp05cq5R1Ow=;
        b=MBF0576oUADTgpQo5on1N/dwVc7mvXcbSFYhBFE3yO0c1Y1VDuXcg/h5o2TK521cd3
         4uMWTyhxoHJbSeBH8yAY4Fe+E919UDLmxWk3Ny08evUX1Yp8xFkuS9nMwE8+WejoXx9l
         L74N17Lp61hTIuvp0VL5Jw0S1A3C3H54G4//hpi1f49gT/SHOonwQAvSlTDk9OZcNj7f
         uAJxKTCejkCjFeIEaUl5t4VdqBf9qVRfZ9lrQn3VnvnHIW7ZmhCrKR8ilhb6HyZ5WbtO
         SxDkJ9rjheEKBXLVMs1XJEYTlXCRFxkp9aXCMCvz2PMu/GbVtR8gskN+i0fwBSlUWdUN
         PxHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gHQolFP4QqdqkN3613M66VR6l1p6G/rHqp05cq5R1Ow=;
        b=6X8DaQcZg/+LOmSUeganAag5f5zvLSoM+9ZsHeaTlBkmeJ+8wlZSa+T6OZ1SrIC8Ae
         BT09SCUPQS445Dte5tV/AaptiWDbvcb8WTyBKXyo4849yIgr7pzxslsUcK2hxmQ5B61n
         /QYK0mqEKfjKvfqqyoMaFFTvIROXzbzHZGzkLDYN5mWk858nu4V3RpsBrBVKdygMCOll
         9BZAE6r8LX441h99aBT7UZSy58zoVj6yc4Bk5ItKbckSaZNBDYFaJ/ExmY+VcSKYArZO
         DXPMNUyfE593SzH8nubnAATsY9BLstzjLpRumAdayJuDgzEQrqEM9hXzYu8CJq/hjZL/
         53fQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530fDUbtCUMZc5nuJ7mBufH7fIdzlIQvFRumQAOkwrP/ceFH9rxX
	0ujkbZ61lBVczdlyy/mc+NM=
X-Google-Smtp-Source: ABdhPJweFl/Ryyc5h2BQngiMwKBYQzhVZXwtnpXPY4a9rsKcHh7YCzjiqMl32YeE1ywSDgDed10lYA==
X-Received: by 2002:a05:6122:988:: with SMTP id g8mr56516935vkd.2.1638911290068;
        Tue, 07 Dec 2021 13:08:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:e443:: with SMTP id n3ls2823vsm.3.gmail; Tue, 07 Dec
 2021 13:08:09 -0800 (PST)
X-Received: by 2002:a05:6102:3708:: with SMTP id s8mr47055339vst.45.1638911289602;
        Tue, 07 Dec 2021 13:08:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638911289; cv=none;
        d=google.com; s=arc-20160816;
        b=vIgykLCqbv2oKiR6Vu1+6J7teQPbstEsr2pmq+YOR3CLK5lMIKEEfBn1W2fSTvWuos
         uX2G16Vc37bqnO2o+in80ujtRPTViMPYirJP2o/t03AEVommHQQFy5T2USlmum0RN1PH
         /AqwW+Hbuo7kMpoHQq9M73fAGTNNklQPkd+kajX6Hn5mREE+m8lVbxyVaULLQcKH8iyr
         SWnPYr2bKVRIARWN9m6hEVhndJ/bTHzY37MPSWUPDu/7sOIMqHrCOqy1tuScrClHjpCu
         ltyensSsA/n+TOmW6vGBxYiUk/1QHXquCf/BE88pmJGfMLQKiYBV+EN8JcaPnppPCLS+
         yxcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+WiYqQoKKUu8ztYR4CIpqbQ5Vs5kRMrII1VVHkJgj5M=;
        b=z27/sf6fpULPihw6nUK3kNey04vqJGIDKWQ0VnpLPWvUgKWAkAvCN1pO5VitE26BKD
         T4JFvNmlvUev0zIhoWMQ5ykyBqlOb1lUYqET7kBB75CbRpH+0x5847r96rcaCiX+Xbf0
         91SNIDb5XzeC9ymxEnNW9LL1B0EKaz1P6kL8eAciYOsKVx7zA2TSmt/ZTvt4dchrNLti
         /0yzoLqk85crRhU1vUk22X+Qk/Yu2sfDjrQ5picPFFu+j2yA22s3UFWzUA0VIjZYkHtx
         sTHdWa7K0idnC9smkduei1mVTTSyg+KDfAlX64GNrGyOyyJL+kcgy5TAEC8UzFb7BmrV
         MBGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aCbzd0NE;
       spf=pass (google.com: domain of helgaas@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id r20si137639vsn.2.2021.12.07.13.08.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Dec 2021 13:08:09 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id DC252CE1E22;
	Tue,  7 Dec 2021 21:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8250C341C1;
	Tue,  7 Dec 2021 21:08:04 +0000 (UTC)
Date: Tue, 7 Dec 2021 15:08:03 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
	linux-pci@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
	xen-devel@lists.xenproject.org, Juergen Gross <jgross@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Logan Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com
Subject: Re: [patch V2 19/31] PCI: hv: Rework MSI handling
Message-ID: <20211207210803.GA78366@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211206210748.629363944@linutronix.de>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aCbzd0NE;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 2604:1380:40e1:4800::1
 as permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Dec 06, 2021 at 11:51:33PM +0100, Thomas Gleixner wrote:
> Replace the about to vanish iterators and make use of the filtering. Take
> the descriptor lock around the iterators.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/controller/pci-hyperv.c |   15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 
> --- a/drivers/pci/controller/pci-hyperv.c
> +++ b/drivers/pci/controller/pci-hyperv.c
> @@ -3445,18 +3445,23 @@ static int hv_pci_suspend(struct hv_devi
>  
>  static int hv_pci_restore_msi_msg(struct pci_dev *pdev, void *arg)
>  {
> -	struct msi_desc *entry;
>  	struct irq_data *irq_data;
> +	struct msi_desc *entry;
> +	int ret = 0;
>  
> -	for_each_pci_msi_entry(entry, pdev) {
> +	msi_lock_descs(&pdev->dev);
> +	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_ASSOCIATED) {
>  		irq_data = irq_get_irq_data(entry->irq);
> -		if (WARN_ON_ONCE(!irq_data))
> -			return -EINVAL;
> +		if (WARN_ON_ONCE(!irq_data)) {
> +			ret = -EINVAL;
> +			break;
> +		}
>  
>  		hv_compose_msi_msg(irq_data, &entry->msg);
>  	}
> +	msi_unlock_descs(&pdev->dev);
>  
> -	return 0;
> +	return ret;
>  }
>  
>  /*
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211207210803.GA78366%40bhelgaas.
