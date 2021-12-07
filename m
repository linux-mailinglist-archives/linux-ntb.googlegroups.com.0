Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBFFTXSGQMGQEQKR5AMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F9A46B59B
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Dec 2021 09:21:43 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id v18-20020a5d5912000000b001815910d2c0sf2671093wrd.1
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Dec 2021 00:21:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638865302; cv=pass;
        d=google.com; s=arc-20160816;
        b=p6//yrKDqE/GvtNG/BEV3fK15ClVcLzjQ8h0aTjuAArVSMI7Eu26EvmIWtlTY2WGeT
         QgRU+eM1KGt1pAh7hCTfeINK8pY+mhoX3rtH6YRtVj3kZmqd4KaB/+TH515XWY7LjN6B
         qCE3jhEP95UQuHaQfL+cZaNLOYj3Jozn06+N/4z6RG5CWsLmyJIoQ+CM+t7l5BKaD2Ay
         v4woCbQxQjweRNPfTghmbH0Zc5UCC5s9oOsBxWmtUx3FdYozFSfv+Q2XWEx4GrOrOLyI
         Nu0eilPYjgDkzmQ0we7crWMBenhYFJUCt4hC1U4gREzUxudxIZy97I9KZ4dqMUoZja0r
         /P/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7h1Z+3+y//BfIDcxv5Hb4r9662QHdU1CTlmnNW3xBWg=;
        b=vOWiJOGQXtDcqqDaiXqORw1QC9YZjGx2EjRdZcGmOv5VDU0nDXilScmCW76IRr+ocE
         5G+kweqJiIAkb2g0vCzqXTyJ2BxYOctpvZ2jFbCqDPHCHN1mm8QO9FULjU0tk/L2f5hf
         7q+27LGDcW2tAMatOei2LJdAFkHucQg/8yHORTFwcKEmQobPXMIlzT0HEwLF9fokAgaI
         cRty6A+axXYzh2lcOXaT36tkvEKLBmutRs994t4xubb/57ajuNDnl3E+qhr3rfOkEbvS
         CjRcvrM3+ikw8BNibWY0tnOWw9LkINDenbXo27E8TnvrgRC43Y08XJr3NVbk2K18hu6s
         2isw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="TH/YlLoo";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7h1Z+3+y//BfIDcxv5Hb4r9662QHdU1CTlmnNW3xBWg=;
        b=J2hgsfoFgpq/ZSZBndnFmLf6CbxVe8QS2WaH27Xlzu+jvPibBSjSrkoF0bGYqqftrq
         q1M7s17ORKS0pZQ8/BhW5ccNRC2b5OcTEt2TDzGwX0BwmVDcM1sPaj06UtrNrc5gRPV2
         zCFTLcIkkVYDol/Rr0FNUzdri9cSsa+ElhpqXmEPp8BI4TXmNzL1h3qsCLOKv3901Vnu
         9E4AVGfDmzC3/K+EbRFrcXajWh4JU4sRcqlYbpUvXdlEACL8dYXjV26cpEV7pXZk3cQE
         dhVf6gsfQbPjInEBncaBFucVWSmh+o6jikj7telokgarzQMJcgs2tMFdBe+tS3trl8ek
         FdGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7h1Z+3+y//BfIDcxv5Hb4r9662QHdU1CTlmnNW3xBWg=;
        b=ovVGLlyMah5qwYcgyUbEafbkBU4AkfTfwHHEcKTuO3X3C390YMdVyElPvVpgjmDq40
         rCxs2BQhFLzYdYUsvfc8seCJW++BJ3x/lAWKo+ET7sKot1Tzwe2HnIpejECL0ucW5uZv
         5R0ezWx08scrhBXVV5APf3lk8nFKQC4BB3INjT+LjDOnRyOqwAdfnKTNblEgrOsCoR0c
         dwOClDnyYck8ISSS0dcCfvTNtQEd8H5TrZzM00bKEwJ2YFaJI/iz8BakEWgOig8RDlus
         QmUCAsEWukVIK0ic2mz8AfN4ngLy6BZE0D2TXj5QUtDhv2nuvzSN5SvXMKVcXzLVPnwB
         oqUw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530XcuvL0OWvt3WkZbN5daigKCD7S0XKieMjfQRuEMG1aic8X1ie
	B/7R8b3KD8bVAMqMTuYoiXw=
X-Google-Smtp-Source: ABdhPJzmQW+Gzunh4jSMn97fYlPMXL+nbfaZk7vL9d3S/hRgKZMLfeNa8VWLUVwVGoHhggQdx0RSjQ==
X-Received: by 2002:a1c:7ed3:: with SMTP id z202mr5078892wmc.110.1638865300838;
        Tue, 07 Dec 2021 00:21:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:fe0b:: with SMTP id n11ls2548314wrr.0.gmail; Tue, 07 Dec
 2021 00:21:39 -0800 (PST)
X-Received: by 2002:adf:9e4b:: with SMTP id v11mr50555658wre.531.1638865299902;
        Tue, 07 Dec 2021 00:21:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638865299; cv=none;
        d=google.com; s=arc-20160816;
        b=miUP0HvvR3Wlv0J6cxALivc5fzGXv9XMqgnn1gB2Xkrqj2YUT50rysLWMuCTwSwKiW
         VJV8vr097DUOK4gedsvh5pK8xRH1tdKVoxgc1Pz3UUbwYtHVQoynA0vqsij9UP9ILeRS
         pP2f+peZDYtXkZk8/+sq9dsKio0/UEAZc8JGYQFTpfFBPInhXHh1WqogMO7IM9ta8Fzz
         vVJFKJogJIwCxFa1X20aricMaJLQpWI9zQ/XeLyw44T2RAcv2U/EtzuwPEX/26qk4AmK
         wvrtJTiNgiHeM4A/ON/PETUWgVDM40PJUnZZIF1EO9wjfLFbzG7Rm0f3mfpes5FuCP2P
         0BBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ikaNWKvCmqlMpU6E12eonkGFQg1RdL0Ju0hEVD5dOm8=;
        b=Q6kz+AL/cE2aaq4oOvRXuBqfFTIPjn4nsEDHmSDzFOBd0p0VMOYiDAdDaZltJwMGkK
         ehO+WdyUNJeWssgMK7DQvAQkK5zbgjnbDhGQJCdBvFCYg48zOmY1y6JnjZIagBS/QvVV
         bHsPwoj3da3yuq4tVLbdHDvdB6IiBQYROrVELx2xQ4/pK8s25Se5BMhUuVOfIcw6hPC8
         bzTeTeEfpTeaAVCefyjixHKNAGSYLQHgGH0yGpDFgxxQ6JRRGnH2FrI7wK7GnNni6Q6f
         4daXMuvupmUZblwvzUgse3l/ULc2AsW8PnSEED1s6nviD3KNlWHfs/c2dJDVK/Oc0e2M
         oMNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="TH/YlLoo";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id o29si320474wms.1.2021.12.07.00.21.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Dec 2021 00:21:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 68F12B816BC;
	Tue,  7 Dec 2021 08:21:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81803C341C1;
	Tue,  7 Dec 2021 08:21:37 +0000 (UTC)
Date: Tue, 7 Dec 2021 09:21:35 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
	linux-pci@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
	xen-devel@lists.xenproject.org, Juergen Gross <jgross@suse.com>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Logan Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com
Subject: Re: [patch V2 29/31] genirq/msi: Add abuse prevention comment to msi
 header
Message-ID: <Ya8Zj+bADtKEISSP@kroah.com>
References: <20211206210600.123171746@linutronix.de>
 <20211206210749.170847844@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211206210749.170847844@linutronix.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="TH/YlLoo";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Dec 06, 2021 at 11:51:49PM +0100, Thomas Gleixner wrote:
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>  include/linux/msi.h |   14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> --- a/include/linux/msi.h
> +++ b/include/linux/msi.h
> @@ -2,6 +2,20 @@
>  #ifndef LINUX_MSI_H
>  #define LINUX_MSI_H
>  
> +/*
> + * This header file contains MSI data structures and functions which are
> + * only relevant for:
> + *	- Interrupt core code
> + *	- PCI/MSI core code
> + *	- MSI interrupt domain implementations
> + *	- IOMMU, low level VFIO, NTB and other justified exceptions
> + *	  dealing with low level MSI details.
> + *
> + * Regular device drivers have no business with any of these functions and
> + * especially storing MSI descriptor pointers in random code is considered
> + * abuse. The only function which is relevant for drivers is msi_get_virq().
> + */
> +
>  #include <linux/cpumask.h>
>  #include <linux/mutex.h>
>  #include <linux/list.h>
> 

Ah, to be young and idealistic and hope that kernel developers read
comments in header files :)

You might want to add this to the driver-api kernel doc build?

Anyway, looks good to me:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/Ya8Zj%2BbADtKEISSP%40kroah.com.
