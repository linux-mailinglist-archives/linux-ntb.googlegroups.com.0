Return-Path: <linux-ntb+bncBDAMN6NI5EERBQH2SSGQMGQE2T4GQCY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8994946228D
	for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 21:51:13 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id t9-20020a056512068900b00417ba105469sf4292575lfe.4
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 12:51:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638219073; cv=pass;
        d=google.com; s=arc-20160816;
        b=is2Eab1jBUarDdK9Mrk6xuUhZ32xcY23xyPui9fo2tO73aHGPkyIl3uSwT2+lO1qrB
         46drKU/l2LoKX6K5zKwSykJ04HSxLbGEjH5EsNnFx+daTFHTVB0R+Voje4LvkbCd3p7W
         QPmeAKSq6fpEUBpVGbhDYrqMajRamxXuw2z/zI9r+0oiIamZeDhQY67TcB0Mox6BmvZY
         usRMmKJVh5EPaPYi5CfhIcR/nsVljqh8iP8vueaqgnl+k0IDTgQL3bXprQqzlLSpw+id
         B1OyewHfRYH2o7YkDcnNRjmkfdVCGPs6qflThFmb2ppVdkM/0jQz7YbgsN9VLFLRx3RC
         Nx5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=EcoKDzdtR6x+Xju2njAnHhlZUZuOpQ8XK1d4lSr/c6w=;
        b=Jq21OouoV9p0U3JsloLzkrQmZVTH+FcqmZGCTjF0dDLUASfGedEYo4j28pyqmBJPxq
         hxgsaT7RMP4pPJ6tHc+fu6CwbFj9SsOVCRCJWEdJRXT95jpToD3orNVbNEru4QqqRthm
         7leaJTlMIKiKB6tYuL0zALE/pj+ikd4+xbJ4+V4ZrXz4EMMargga8TBPJL2oAJDG2nCN
         LVl6NfH4PT5cxrYl7jxyaM3Px8LhP6Xf4Y8KbEU0U7H+7GYK08Q+ribEXvywjG+IZySG
         U3dei2OG+HUCKZerEu+q/5gB2h0MYsQ4lDBTgmUkA/LxbYkBWXCZH1B0B1WJxOnkWVfM
         ICJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=EJHYdtcQ;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EcoKDzdtR6x+Xju2njAnHhlZUZuOpQ8XK1d4lSr/c6w=;
        b=Yl9tACKl7bn6UDJaDiJOPOpeIAt6TBNob6cN/B6jW7nyghp6MjiDrgD8DAQ7WiwFJk
         V6c6BcIr5aHGy5KIt9qs9mAu5KgzeHY6dpCrz0PiSJglH/1M7+JCawoXD/YPV6rFozY1
         bHnt37As2nfw8aqTc84sJpxSay3xFOhAVW/pWviCUcFo17aqfhAqtl+B2rAxZH62LIj7
         LPYiWnaP87fKoWGkzkYQgKKSoEr55t8+2zeUIywG2YBou5yoORlDmalSrCqEnlRoX01K
         0jSNbJ3C39s4lfeKNGb9HEqP87s7wJZKddx5lXA96uXfjEMGJP3afezZARiUTFjs4aU4
         DSZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EcoKDzdtR6x+Xju2njAnHhlZUZuOpQ8XK1d4lSr/c6w=;
        b=AFbky1b5ixcOK/qryC/5LvgIuSPb2IJyKU8TvnTC994jwGpBgIHB424pPWYYmcpqkx
         hMe+Au1vZ85Y1khZI57z8jw6mW130AduHqL4c5y+iMXMcD+5rUIpK7VaifrPVixa17bX
         lk43anx74NjEBhfDiHwYJIUcjTL2UWpumuxsxHdoA8fI74xQOgp8pKvSBeD6Sy/90MWF
         +tjfjQouvhjgWrpXFnkiBpEibdCBBmGe7/C6VYqRPifI4XV1TKCfmdaMSwgbrBmRYhxg
         FEmn6Ne2dBFFlVqndsZIb7xztCxcaAqQ0tP6qEMdllHT9Ra2EUxuakaWLzVLwo5cl3y8
         B/YQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533t6nCHaPK3JWEUkUAtx9ofu/DGyo98CbLyXEZCFWVXN9/g76Jf
	1CFC5woBMyUZQyjuPh5JMw4=
X-Google-Smtp-Source: ABdhPJxViFsASGC8kcLdJuHFNKWxuSlNh+MfwVb9uPpXSdv0x694umsASpK7/lr0nN1jgZoCT7ie5w==
X-Received: by 2002:a2e:97c5:: with SMTP id m5mr53143230ljj.503.1638219072962;
        Mon, 29 Nov 2021 12:51:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:898c:: with SMTP id c12ls2134243lji.11.gmail; Mon, 29
 Nov 2021 12:51:11 -0800 (PST)
X-Received: by 2002:a05:651c:218:: with SMTP id y24mr50487172ljn.50.1638219071801;
        Mon, 29 Nov 2021 12:51:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638219071; cv=none;
        d=google.com; s=arc-20160816;
        b=XgM8FANSz6beOyVAhVC5eaDcq3IJYYv6ENkl1F2Kd8f5x+Me5LflGhVmgv02jg+Ieo
         3ISLEEEqrY5Co8oRWKq4dYxPOGTcj73KhSY8LtKcmDcRtPYRUBlFIIQFNgHckKcEVgGy
         QJ3pxAfJTlidy23dHn/4bSOCscYwIUp6adVuUI/YPml1GAOuS15tn/EzQxgQo9viXWjN
         R3Q/IceOgDgpB4703w7gFdu1MHsOE1CEqjQG4/VBPKWAVVmbvu8WL/31qGsoIJRlJNxK
         nsfO5quOCmjTRQ/pn4EEtsS+IKK/qmY8Cems0zo8gu+tuvea0A+U6DPL9LCubjBr+Qp+
         +GXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=tz/JDx8g54Ok4OMBliMP1MHdAMZdu38KyT07rgK4kek=;
        b=ngLvnWL6DHP74WTPJ3hHMhGjrHid/q8B3d8f7+Y2wn0S8XEVgXi1n5akfuK33u5NG0
         4UroVWHFXvDSNYILOSFfVij94L4OCbz+ORg+Ahcf6ElPOUUjKixAvac/TbrWUmQVoYcT
         S4d7qnuTIu7RIFPVk9qWMBRuZ0haTK+bQpgFL+hXjVif0me7DVk5L9yiaSS1X9WNdC8j
         LRoM0lJYDh7Q9fCKfPl9fKJSDRv1LQoaW/Af3KBgxqrqLyt0MSwGcVqPkruIGErmAOUo
         rBS9upjM3GRUWGw8uwC//VSxH0407IKHKr+LLZyi9M+xo79zk5pLBYZYMRsCpzmb8n8F
         3Xjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=EJHYdtcQ;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id t71si1338978lff.6.2021.11.29.12.51.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 12:51:11 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Logan Gunthorpe <logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex
 Williamson <alex.williamson@redhat.com>, Kevin Tian
 <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>, Megha Dey
 <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com>
Date: Mon, 29 Nov 2021 21:51:10 +0100
Message-ID: <874k7ueldt.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=EJHYdtcQ;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

Logan,

On Mon, Nov 29 2021 at 11:21, Logan Gunthorpe wrote:
> On 2021-11-26 6:23 p.m., Thomas Gleixner wrote:
>> Replace the about to vanish iterators, make use of the filtering and take
>> the descriptor lock around the iteration.
>
> This patch looks good to me:
>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

thanks for having a look at this. While I have your attention, I have a
question related to NTB.

The switchtec driver is the only one which uses PCI_IRQ_VIRTUAL in order
to allocate non-hardware backed MSI-X descriptors.

AFAIU these descriptors are not MSI-X descriptors in the regular sense
of PCI/MSI-X. They are allocated via the PCI/MSI mechanism but their
usage is somewhere in NTB which has nothing to do with the way how the
real MSI-X interrupts of a device work which explains why we have those
pci.msi_attrib.is_virtual checks all over the place.

I assume that there are other variants feeding into NTB which can handle
that without this PCI_IRQ_VIRTUAL quirk, but TBH, I got completely lost
in that code.

Could you please shed some light on the larger picture of this?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/874k7ueldt.ffs%40tglx.
