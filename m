Return-Path: <linux-ntb+bncBDAMN6NI5EERB3U7SOGQMGQEP2V2JXI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 3761E4615C5
	for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 14:04:47 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id h20-20020ac85e14000000b002b2e9555bb1sf23289622qtx.3
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 05:04:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638191086; cv=pass;
        d=google.com; s=arc-20160816;
        b=k8rpLMaI5i6jBNEFGSWWIThW1IHjFK/fF+ETQk5ZTg4n46BZH3g89J6gHrgL7sZmC1
         35cFT+i7dt5OFuM6zxZPDtZZ+x/SMOLO+QoSGNyvQOHYciC+Ai384U9E/Lupl3Drcxjm
         zHG8xBuGabDy6jEilXRX5F3lzleEkdagzS1YqhkYgyqzrueaQnmVD5VPc/8dzkrAhAQ1
         6LPqLk/AgXxl4LVXANJsOwzSh0LNao//BKElZLXy4/69ypxbKww6U6Ys7zUiApEICQYr
         Eemu3D+xD0OI3IYGAukNSEJ2yMAe+fh00zjTbkxQ1WcU3xZaQlcTf8qW+ZNjPEKjUAuI
         M2Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=3ajiY8SY/h74HA0abiN6YPKm2OfSg8hAhEyekirNjlk=;
        b=tvrZtGd5/ZQSx8+KQ7a1sCoeLGAnSVE775Ks4Rv2wR88tiQuc/d6U2/eo5EunoJBnm
         9SDOj72PhrnkilImGqiQBBQqHLwM0KZho3IXsTLlRB3GYoRsMoZgNaKiD/cm6N3vgMQY
         uKagjWgfP22lXanOVWDWEe/GQJPlXQ0rNmdWvzFrCnGpOoyG79/iPb7y9W5uAckADgDR
         p4VamhFOunH54dqOg3d48OlB4GwVRZJ4rVYXvkpXXLogIlxRYW0iIjD2CHD8avZL7iQs
         m+gaq8PT9ibWFeG0x2JWFfIuy48yT3SmiYAnS1Sj5OBa7Acy87mGGXXCCIc5vHxzKyfN
         AVOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="Z5w7/Wyf";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=uFEsq4VQ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ajiY8SY/h74HA0abiN6YPKm2OfSg8hAhEyekirNjlk=;
        b=jwzglUh9FdDh/BLKfqDye0iqQ+ZjFZxZQ0gJKFpr7LAiwpdz9fxuwOKiFGUJxLPYFj
         3pl3yiy6GGXeMV9S7oPfgZxce1q9jVM0lchv3EnaopUEvZolRpQnlTrpS4gBbZTghUjb
         OxvqADHn3uieIZyN1vp5/6Z3miyLpyCHTFetBzg/WZ3baS+y42qgXCyC+F6SzdKCfvYm
         5iml0to0Y3xBeY7yOby6ayhzmgwhORt4VdHwG9k2EJzsioe8+dcGpMs5UizBm3EcFL/h
         PBcHTI3amYy4I3V4iSRN1Exqw6SlA4cNI0RmHg8OHc9iCQiMeWvPqAJUsTVTgtTLYoNG
         qiyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ajiY8SY/h74HA0abiN6YPKm2OfSg8hAhEyekirNjlk=;
        b=cRN8OBRW7/4EFQp4Xqurv+w2seWm8b/km78jsUInJwSDGnlLH1ER/d3PK7cDpNFhBq
         hIpUTN0VfH6uWvsU61QSJf2AXATWXvQH7AsFDueEiHDkyrUKKFQ7sC8ZtDvambzCrkdH
         QCBa2FFT+tc4yMP/u1GgWFrI9HpPWXDgl3CTYpMT6BuFi7lHFI2RiaQLPN+CCKFrBxgf
         rXFevQO73xleafDFG3HD1qq63VFBPpYAeExYsgiTj+96uAS9pHjMgCjKlPc8MHZMx7c3
         k0x0DtiylqrwMEs2JoMnuh5TfFHVs4qeK8eH+yXRa/hydcYbqI+PeXYnEW3iVPwJI/gS
         7X4w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530wFhDPsPNfJQwx6Ix+ydti9EwhKvJ8JnQCI5/OcaIwin5W+YQh
	VSG8xxhV4x8iirlAWWvECvo=
X-Google-Smtp-Source: ABdhPJxAuvqs+Tnh7ean1njQX7qluSD5AM3ggjTrhYY45C576zXQS1pqfKUGA79x0bBaFmnv3aHi5g==
X-Received: by 2002:a05:622a:216:: with SMTP id b22mr45084697qtx.148.1638191086180;
        Mon, 29 Nov 2021 05:04:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:7e88:: with SMTP id w8ls8131898qtj.3.gmail; Mon, 29 Nov
 2021 05:04:45 -0800 (PST)
X-Received: by 2002:a05:622a:5cf:: with SMTP id d15mr43921597qtb.388.1638191085681;
        Mon, 29 Nov 2021 05:04:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638191085; cv=none;
        d=google.com; s=arc-20160816;
        b=CGd1EaeJRRruhFKh/SlAn/K95qLH8vR5+Al8Ryn9U0FOZUWUnP8BIahyMcRcI5MVPS
         3k/6aVxALMA0+dbeY/IpkqmEMbgOs+9Ak/xX/DBx9yKXeVkduTXF0s+mSFuL2CP/6lq+
         PCO3SKGTS4i0Kj31O/NPjUXRyV9DpUdoFv5bJz8D44G7ANwTRpBILVGY7WjLIviFHAoP
         xwWpC2yj6MuuYRPAnVlgElpV9aUdUdKUwcoFbtxDy52be3DREesI1t1LAF9E1d7boL/8
         uwKqUbh/lCsiVrvrlZTFJvJnvVEhHKtipVRuzMbOSItGOX1W0dAksZcNtiZFIQ5kQcbz
         HgDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=SrMx0EikLor0m9R8RMLCsVyJFUvZ7DWG9Nt3FfGUjHw=;
        b=BJ9jp/TCMk/C/Fr97RzmCzNlCAgV7A89viiXq1A22YhL3111rTvJb+JbEOSueaa2xM
         CB5HzQfahFfAjPHdFl2auq3zi+WesNYxuFMhvr880Xrm6b3THULFB5TZBDui2YErg6Ys
         BOYkWv2GXpPP8qi+W00K9NSKSohFUWwcSqlDyKGx7J2Q0NfdKMJOVQU0ceclKTge49jP
         7cQt1PK/uQax7smLWZqEjeAEYinNtNN5NM+9SEWuvviD7wdrG5FrQPvCP/qnFcySQxHt
         D0JIZgYx4NjK0e6j1uuQrpNs3FCW7E190NzWPtuYfSc3G1a2mNXulGpiXW3Px0KTLF16
         1Nmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="Z5w7/Wyf";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=uFEsq4VQ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id u2si809252qkp.6.2021.11.29.05.04.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 05:04:45 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Niklas Schnelle <schnelle@linux.ibm.com>, LKML
 <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex
 Williamson <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>, Megha Dey <megha.dey@intel.com>, Ashok
 Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, Jon
 Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
 <allenbh@gmail.com>, linux-ntb@googlegroups.com
Subject: Re: [patch 14/32] s390/pci: Rework MSI descriptor walk
In-Reply-To: <22589eefb62ac6f99f576082a65e7987a6761329.camel@linux.ibm.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.130164978@linutronix.de>
 <22589eefb62ac6f99f576082a65e7987a6761329.camel@linux.ibm.com>
Date: Mon, 29 Nov 2021 14:04:43 +0100
Message-ID: <87fsrfdses.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="Z5w7/Wyf";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=uFEsq4VQ;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Niklas,

On Mon, Nov 29 2021 at 11:31, Niklas Schnelle wrote:
> On Sat, 2021-11-27 at 02:23 +0100, Thomas Gleixner wrote:
>
> while the change looks good to me I ran into some trouble trying to
> test it. I tried with the git repository you linked in the cover
> letter:
> git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git msi-v1-part-3
>
> But with that I get the following linker error on s390:
>
> s390x-11.2.0-ld: drivers/pci/msi/legacy.o: in function `pci_msi_legacy_setup_msi_irqs':
> /home/nschnelle/mainline/drivers/pci/msi/legacy.c:72: undefined reference to `msi_device_populate_sysfs'
> s390x-11.2.0-ld: drivers/pci/msi/legacy.o: in function `pci_msi_legacy_teardown_msi_irqs':
> /home/nschnelle/mainline/drivers/pci/msi/legacy.c:78: undefined reference to `msi_device_destroy_sysfs'
> make: *** [Makefile:1161: vmlinux] Error 1

Yes, that got reported before and I fixed it locally already.

> This is caused by a misspelling of CONFIG_PCI_MSI_ARCH_FALLBACKS
> (missing the final S) in kernel/irq/msi.c. With that fixed everything
> builds and MSI IRQs work fine. So with that fixed you have my
>
> Acked-by: Niklas Schnelle <schnelle@linux.ibm.com>
> Tested-by: Niklas Schnelle <schnelle@linux.ibm.com>

Thanks for testing and dealing with my ineptness.

       tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87fsrfdses.ffs%40tglx.
